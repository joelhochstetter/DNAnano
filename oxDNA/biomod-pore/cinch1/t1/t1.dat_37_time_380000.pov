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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.326694, 32.701630, 23.372543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036453, 32.501671, 23.183399>,  <42.862309, 32.381695, 23.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036453, 32.501671, 23.183399>,  <43.326694, 32.701630, 23.372543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036453, 32.501671, 23.183399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635528, 0.223389, 0.739055,
		-0.263821, 0.836778, -0.479793,
		-0.725605, -0.499900, -0.472861,
		42.818771, 32.351700, 23.041540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858723, 33.216465, 23.218504>,  <43.326694, 32.701630, 23.372543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858723, 33.216465, 23.218504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732727, 32.845612, 23.299706>,  <42.657131, 32.623100, 23.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732727, 32.845612, 23.299706>,  <42.858723, 33.216465, 23.218504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732727, 32.845612, 23.299706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474079, 0.338994, 0.812608,
		-0.822211, 0.159724, -0.546313,
		-0.314989, -0.927131, 0.203003,
		42.638229, 32.567471, 23.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159481, 33.269825, 23.385252>,  <42.858723, 33.216465, 23.218504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159481, 33.269825, 23.385252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310326, 32.935032, 23.543869>,  <42.400833, 32.734154, 23.639038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.310326, 32.935032, 23.543869>,  <42.159481, 33.269825, 23.385252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310326, 32.935032, 23.543869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463301, 0.200254, 0.863279,
		-0.801961, -0.509268, -0.312258,
		0.377109, -0.836985, 0.396540,
		42.423458, 32.683937, 23.662830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622753, 32.947277, 23.643934>,  <42.159481, 33.269825, 23.385252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622753, 32.947277, 23.643934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919437, 32.785431, 23.857906>,  <42.097446, 32.688324, 23.986290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919437, 32.785431, 23.857906>,  <41.622753, 32.947277, 23.643934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919437, 32.785431, 23.857906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585281, -0.000912, 0.810830,
		-0.327591, -0.914484, -0.237494,
		0.741707, -0.404622, 0.534931,
		42.141949, 32.664043, 24.018387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196602, 33.071995, 23.122414>,  <41.622753, 32.947277, 23.643934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196602, 33.071995, 23.122414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955196, 33.390343, 23.102989>,  <40.810352, 33.581352, 23.091335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955196, 33.390343, 23.102989>,  <41.196602, 33.071995, 23.122414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955196, 33.390343, 23.102989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756007, 0.590516, 0.282388,
		0.253419, 0.133715, -0.958070,
		-0.603516, 0.795871, -0.048559,
		40.774143, 33.629105, 23.088421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432919, 33.653397, 22.635233>,  <41.196602, 33.071995, 23.122414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432919, 33.653397, 22.635233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205601, 33.814346, 22.922325>,  <41.069210, 33.910915, 23.094582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205601, 33.814346, 22.922325>,  <41.432919, 33.653397, 22.635233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205601, 33.814346, 22.922325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741866, 0.627870, 0.235401,
		-0.355923, 0.666237, -0.655322,
		-0.568290, 0.402376, 0.717732,
		41.035114, 33.935059, 23.137646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405632, 34.374043, 22.466549>,  <41.432919, 33.653397, 22.635233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405632, 34.374043, 22.466549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319889, 34.300735, 22.850311>,  <41.268444, 34.256752, 23.080568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319889, 34.300735, 22.850311>,  <41.405632, 34.374043, 22.466549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319889, 34.300735, 22.850311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614375, 0.738303, 0.278303,
		-0.759338, 0.649092, -0.045664,
		-0.214358, -0.183271, 0.959407,
		41.255581, 34.245754, 23.138134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255707, 35.168694, 22.664328>,  <41.405632, 34.374043, 22.466549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255707, 35.168694, 22.664328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301044, 34.954182, 22.998886>,  <41.328247, 34.825474, 23.199621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301044, 34.954182, 22.998886>,  <41.255707, 35.168694, 22.664328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301044, 34.954182, 22.998886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439324, 0.782103, 0.441938,
		-0.891150, 0.317358, 0.324247,
		0.113342, -0.536282, 0.836394,
		41.335049, 34.793297, 23.249804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009979, 35.515884, 23.240770>,  <41.255707, 35.168694, 22.664328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009979, 35.515884, 23.240770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292324, 35.279003, 23.396233>,  <41.461731, 35.136875, 23.489510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292324, 35.279003, 23.396233>,  <41.009979, 35.515884, 23.240770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292324, 35.279003, 23.396233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438484, 0.796221, 0.416851,
		-0.556315, -0.123821, 0.821694,
		0.705865, -0.592200, 0.388656,
		41.504082, 35.101341, 23.512829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105881, 35.818588, 23.858561>,  <41.009979, 35.515884, 23.240770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105881, 35.818588, 23.858561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408566, 35.580193, 23.751091>,  <41.590176, 35.437157, 23.686609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.408566, 35.580193, 23.751091>,  <41.105881, 35.818588, 23.858561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408566, 35.580193, 23.751091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647740, 0.739113, 0.184786,
		0.088449, -0.313859, 0.945341,
		0.756710, -0.595991, -0.268673,
		41.635578, 35.401394, 23.670488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488052, 35.622631, 24.524281>,  <41.105881, 35.818588, 23.858561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488052, 35.622631, 24.524281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744629, 35.576591, 24.220886>,  <41.898575, 35.548965, 24.038849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744629, 35.576591, 24.220886>,  <41.488052, 35.622631, 24.524281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744629, 35.576591, 24.220886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537013, 0.773433, 0.336778,
		0.547874, -0.623340, 0.557925,
		0.641445, -0.115101, -0.758486,
		41.937061, 35.542061, 23.993340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236217, 35.677948, 24.858829>,  <41.488052, 35.622631, 24.524281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236217, 35.677948, 24.858829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269539, 35.771648, 24.471390>,  <42.289532, 35.827869, 24.238926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269539, 35.771648, 24.471390>,  <42.236217, 35.677948, 24.858829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269539, 35.771648, 24.471390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646991, 0.726550, 0.231361,
		0.757933, -0.645949, -0.091036,
		0.083305, 0.234256, -0.968599,
		42.294529, 35.841927, 24.180809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904839, 35.692223, 24.769550>,  <42.236217, 35.677948, 24.858829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904839, 35.692223, 24.769550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767807, 35.898254, 24.455269>,  <42.685589, 36.021873, 24.266699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767807, 35.898254, 24.455269>,  <42.904839, 35.692223, 24.769550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767807, 35.898254, 24.455269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685959, 0.708583, 0.165439,
		0.641952, -0.482285, -0.596069,
		-0.342576, 0.515083, -0.785705,
		42.665035, 36.052780, 24.219557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395012, 35.785828, 24.395630>,  <42.904839, 35.692223, 24.769550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395012, 35.785828, 24.395630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155121, 36.078304, 24.265594>,  <43.011185, 36.253792, 24.187572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155121, 36.078304, 24.265594>,  <43.395012, 35.785828, 24.395630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155121, 36.078304, 24.265594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759700, 0.647883, 0.055711,
		0.251356, -0.213560, -0.944040,
		-0.599730, 0.731191, -0.325090,
		42.975201, 36.297661, 24.168068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805710, 36.184822, 23.923597>,  <43.395012, 35.785828, 24.395630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805710, 36.184822, 23.923597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522266, 36.454269, 24.007610>,  <43.352200, 36.615936, 24.058018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522266, 36.454269, 24.007610>,  <43.805710, 36.184822, 23.923597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522266, 36.454269, 24.007610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703364, 0.698022, 0.134328,
		-0.056122, 0.242916, -0.968423,
		-0.708611, 0.673615, 0.210033,
		43.309685, 36.656353, 24.070620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003998, 36.914837, 23.535822>,  <43.805710, 36.184822, 23.923597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003998, 36.914837, 23.535822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756725, 36.945824, 23.848705>,  <43.608360, 36.964417, 24.036436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756725, 36.945824, 23.848705>,  <44.003998, 36.914837, 23.535822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756725, 36.945824, 23.848705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489152, 0.816879, 0.305678,
		-0.615290, 0.571583, -0.542872,
		-0.618181, 0.077466, 0.782209,
		43.571270, 36.969063, 24.083368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907921, 37.621368, 23.657223>,  <44.003998, 36.914837, 23.535822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.907921, 37.621368, 23.657223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797718, 37.468338, 24.009979>,  <43.731598, 37.376518, 24.221632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797718, 37.468338, 24.009979>,  <43.907921, 37.621368, 23.657223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797718, 37.468338, 24.009979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558024, 0.683356, 0.470780,
		-0.782755, 0.621819, 0.025218,
		-0.275507, -0.382577, 0.881890,
		43.715065, 37.353565, 24.274546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888767, 38.187607, 24.082193>,  <43.907921, 37.621368, 23.657223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888767, 38.187607, 24.082193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848736, 37.903336, 24.360741>,  <43.824715, 37.732773, 24.527868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848736, 37.903336, 24.360741>,  <43.888767, 38.187607, 24.082193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848736, 37.903336, 24.360741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557933, 0.539406, 0.630676,
		-0.823829, 0.451646, 0.342523,
		-0.100083, -0.710674, 0.696366,
		43.818710, 37.690132, 24.569651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522629, 38.495564, 24.634647>,  <43.888767, 38.187607, 24.082193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522629, 38.495564, 24.634647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727482, 38.187477, 24.786694>,  <43.850391, 38.002625, 24.877920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727482, 38.187477, 24.786694>,  <43.522629, 38.495564, 24.634647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727482, 38.187477, 24.786694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416197, 0.609662, 0.674605,
		-0.751334, -0.187283, 0.632789,
		0.512130, -0.770219, 0.380113,
		43.881123, 37.956413, 24.900728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363609, 38.392075, 25.397758>,  <43.522629, 38.495564, 24.634647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363609, 38.392075, 25.397758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726948, 38.259945, 25.295151>,  <43.944950, 38.180668, 25.233587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726948, 38.259945, 25.295151>,  <43.363609, 38.392075, 25.397758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726948, 38.259945, 25.295151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410824, 0.589810, 0.695232,
		-0.078356, -0.736892, 0.671454,
		0.908342, -0.330325, -0.256517,
		43.999451, 38.160847, 25.218195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715050, 38.382221, 26.075684>,  <43.363609, 38.392075, 25.397758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715050, 38.382221, 26.075684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002670, 38.337780, 25.801277>,  <44.175243, 38.311115, 25.636633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.002670, 38.337780, 25.801277>,  <43.715050, 38.382221, 26.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002670, 38.337780, 25.801277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605784, 0.583962, 0.540383,
		0.340571, -0.804143, 0.487202,
		0.719052, -0.111100, -0.686018,
		44.218388, 38.304451, 25.595472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370419, 38.297878, 26.445658>,  <43.715050, 38.382221, 26.075684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370419, 38.297878, 26.445658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499664, 38.413063, 26.085064>,  <44.577213, 38.482174, 25.868708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.499664, 38.413063, 26.085064>,  <44.370419, 38.297878, 26.445658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499664, 38.413063, 26.085064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626245, 0.649119, 0.431812,
		0.709515, -0.704076, 0.029409,
		0.323119, 0.287960, -0.901484,
		44.596600, 38.499451, 25.814619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006989, 38.379753, 26.581406>,  <44.370419, 38.297878, 26.445658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006989, 38.379753, 26.581406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951355, 38.576946, 26.237865>,  <44.917976, 38.695263, 26.031742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951355, 38.576946, 26.237865>,  <45.006989, 38.379753, 26.581406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951355, 38.576946, 26.237865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744635, 0.623798, 0.237477,
		0.652821, -0.606500, -0.453853,
		-0.139082, 0.492985, -0.858849,
		44.909630, 38.724842, 25.980211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676319, 38.539360, 26.242691>,  <45.006989, 38.379753, 26.581406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676319, 38.539360, 26.242691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429688, 38.812428, 26.085827>,  <45.281708, 38.976269, 25.991709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429688, 38.812428, 26.085827>,  <45.676319, 38.539360, 26.242691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429688, 38.812428, 26.085827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628951, 0.726725, 0.276208,
		0.473553, -0.076347, -0.877450,
		-0.616578, 0.682673, -0.392161,
		45.244713, 39.017231, 25.968178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069759, 38.867996, 25.764599>,  <45.676319, 38.539360, 26.242691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069759, 38.867996, 25.764599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787231, 39.128170, 25.876343>,  <45.617714, 39.284275, 25.943388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787231, 39.128170, 25.876343>,  <46.069759, 38.867996, 25.764599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787231, 39.128170, 25.876343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701598, 0.590715, 0.398518,
		0.094191, 0.477479, -0.873580,
		-0.706321, 0.650438, 0.279358,
		45.575336, 39.323303, 25.960150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306633, 39.531467, 25.649801>,  <46.069759, 38.867996, 25.764599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306633, 39.531467, 25.649801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008526, 39.597416, 25.908226>,  <45.829662, 39.636986, 26.063280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008526, 39.597416, 25.908226>,  <46.306633, 39.531467, 25.649801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008526, 39.597416, 25.908226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572827, 0.654211, 0.493839,
		-0.341240, 0.738123, -0.582004,
		-0.745268, 0.164870, 0.646060,
		45.784946, 39.646877, 26.102043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132904, 40.348110, 25.785940>,  <46.306633, 39.531467, 25.649801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132904, 40.348110, 25.785940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052895, 40.103676, 26.092289>,  <46.004890, 39.957016, 26.276098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052895, 40.103676, 26.092289>,  <46.132904, 40.348110, 25.785940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052895, 40.103676, 26.092289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694552, 0.462901, 0.550745,
		-0.691078, 0.642100, 0.331842,
		-0.200024, -0.611089, 0.765873,
		45.992889, 39.920349, 26.322050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897827, 40.689083, 26.410912>,  <46.132904, 40.348110, 25.785940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897827, 40.689083, 26.410912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104946, 40.356388, 26.491005>,  <46.229218, 40.156773, 26.539061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104946, 40.356388, 26.491005>,  <45.897827, 40.689083, 26.410912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104946, 40.356388, 26.491005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749000, 0.553843, 0.363672,
		-0.413378, -0.038334, 0.909752,
		0.517801, -0.831738, 0.200234,
		46.260288, 40.106865, 26.551075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208878, 40.831539, 27.091259>,  <45.897827, 40.689083, 26.410912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208878, 40.831539, 27.091259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408863, 40.533596, 26.914520>,  <46.528854, 40.354832, 26.808477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408863, 40.533596, 26.914520>,  <46.208878, 40.831539, 27.091259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408863, 40.533596, 26.914520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865872, 0.440157, 0.237757,
		0.017388, -0.501453, 0.865010,
		0.499964, -0.744854, -0.441847,
		46.558853, 40.310139, 26.781965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725864, 40.620937, 27.646051>,  <46.208878, 40.831539, 27.091259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725864, 40.620937, 27.646051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806492, 40.534195, 27.263985>,  <46.854866, 40.482151, 27.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806492, 40.534195, 27.263985>,  <46.725864, 40.620937, 27.646051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806492, 40.534195, 27.263985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926253, 0.359281, 0.113894,
		0.318475, -0.907685, 0.273280,
		0.201564, -0.216854, -0.955168,
		46.866962, 40.469139, 26.977434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422169, 40.850010, 28.388437>,  <46.725864, 40.620937, 27.646051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422169, 40.850010, 28.388437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173553, 41.022438, 28.650085>,  <46.024384, 41.125893, 28.807074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.173553, 41.022438, 28.650085>,  <46.422169, 40.850010, 28.388437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173553, 41.022438, 28.650085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490812, -0.865070, 0.103719,
		0.610568, -0.256584, 0.749247,
		-0.621539, 0.431067, 0.654118,
		45.987091, 41.151756, 28.846321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277718, 40.356884, 28.876493>,  <46.422169, 40.850010, 28.388437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277718, 40.356884, 28.876493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960411, 40.600151, 28.888248>,  <45.770027, 40.746113, 28.895302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960411, 40.600151, 28.888248>,  <46.277718, 40.356884, 28.876493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960411, 40.600151, 28.888248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608858, -0.791887, -0.046971,
		-0.005294, -0.055154, 0.998464,
		-0.793261, 0.608171, 0.029389,
		45.722431, 40.782604, 28.897064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908260, 40.165016, 29.422609>,  <46.277718, 40.356884, 28.876493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908260, 40.165016, 29.422609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657333, 40.348179, 29.170643>,  <45.506779, 40.458076, 29.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657333, 40.348179, 29.170643>,  <45.908260, 40.165016, 29.422609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657333, 40.348179, 29.170643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595173, -0.803551, 0.008585,
		-0.502237, 0.380294, 0.776618,
		-0.627317, 0.457910, -0.629914,
		45.469139, 40.485554, 28.981668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362198, 39.755203, 29.575825>,  <45.908260, 40.165016, 29.422609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362198, 39.755203, 29.575825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285816, 39.955097, 29.237877>,  <45.239986, 40.075031, 29.035109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285816, 39.955097, 29.237877>,  <45.362198, 39.755203, 29.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285816, 39.955097, 29.237877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735025, -0.643263, -0.214359,
		-0.650596, 0.580070, 0.490146,
		-0.190949, 0.499731, -0.844871,
		45.228531, 40.105019, 28.984417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704506, 39.662521, 29.586548>,  <45.362198, 39.755203, 29.575825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704506, 39.662521, 29.586548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759499, 39.820412, 29.223167>,  <44.792496, 39.915146, 29.005138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.759499, 39.820412, 29.223167>,  <44.704506, 39.662521, 29.586548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759499, 39.820412, 29.223167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743086, -0.565324, -0.358096,
		-0.654921, 0.724291, 0.215594,
		0.137485, 0.394729, -0.908453,
		44.800743, 39.938831, 28.950632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989052, 39.873859, 29.377357>,  <44.704506, 39.662521, 29.586548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989052, 39.873859, 29.377357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258846, 39.795853, 29.092533>,  <44.420723, 39.749050, 28.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258846, 39.795853, 29.092533>,  <43.989052, 39.873859, 29.377357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258846, 39.795853, 29.092533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653342, -0.606819, -0.452675,
		-0.343814, 0.770545, -0.536705,
		0.674489, -0.195016, -0.712062,
		44.461193, 39.737347, 28.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681320, 40.069054, 28.736525>,  <43.989052, 39.873859, 29.377357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681320, 40.069054, 28.736525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957100, 39.779606, 28.749432>,  <44.122566, 39.605938, 28.757175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.957100, 39.779606, 28.749432>,  <43.681320, 40.069054, 28.736525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957100, 39.779606, 28.749432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546730, -0.549101, -0.632119,
		0.475128, 0.418173, -0.774199,
		0.689449, -0.723615, 0.032266,
		44.163933, 39.562523, 28.759111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811569, 39.853760, 27.979998>,  <43.681320, 40.069054, 28.736525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811569, 39.853760, 27.979998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912827, 39.550972, 28.220966>,  <43.973579, 39.369297, 28.365547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912827, 39.550972, 28.220966>,  <43.811569, 39.853760, 27.979998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912827, 39.550972, 28.220966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495863, -0.636210, -0.591064,
		0.830686, -0.149098, -0.536405,
		0.253140, -0.756972, 0.602423,
		43.988770, 39.323879, 28.401693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834400, 39.323093, 27.522167>,  <43.811569, 39.853760, 27.979998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834400, 39.323093, 27.522167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832199, 39.130775, 27.872894>,  <43.830879, 39.015385, 28.083330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832199, 39.130775, 27.872894>,  <43.834400, 39.323093, 27.522167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832199, 39.130775, 27.872894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663927, -0.653928, -0.362738,
		0.747777, -0.584138, -0.315614,
		-0.005500, -0.480792, 0.876818,
		43.830547, 38.986538, 28.135939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932842, 38.652847, 27.347443>,  <43.834400, 39.323093, 27.522167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932842, 38.652847, 27.347443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759693, 38.657951, 27.707989>,  <43.655804, 38.661015, 27.924316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759693, 38.657951, 27.707989>,  <43.932842, 38.652847, 27.347443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759693, 38.657951, 27.707989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672177, -0.670831, -0.313310,
		0.600665, -0.741500, 0.298962,
		-0.432873, 0.012761, 0.901365,
		43.629829, 38.661781, 27.978397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835289, 37.957634, 27.507711>,  <43.932842, 38.652847, 27.347443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835289, 37.957634, 27.507711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594006, 38.142906, 27.767433>,  <43.449234, 38.254070, 27.923265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594006, 38.142906, 27.767433>,  <43.835289, 37.957634, 27.507711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594006, 38.142906, 27.767433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672435, -0.733133, -0.101717,
		0.428912, -0.497972, 0.753696,
		-0.603212, 0.463184, 0.649304,
		43.413040, 38.281860, 27.962225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771591, 37.522930, 28.058674>,  <43.835289, 37.957634, 27.507711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771591, 37.522930, 28.058674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449612, 37.757389, 28.021835>,  <43.256424, 37.898064, 27.999731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449612, 37.757389, 28.021835>,  <43.771591, 37.522930, 28.058674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449612, 37.757389, 28.021835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586870, -0.809385, -0.021884,
		-0.087370, 0.036435, 0.995510,
		-0.804953, 0.586147, -0.092099,
		43.208126, 37.933231, 27.994205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269241, 37.192352, 28.440514>,  <43.771591, 37.522930, 28.058674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269241, 37.192352, 28.440514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053570, 37.435513, 28.207367>,  <42.924164, 37.581409, 28.067478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053570, 37.435513, 28.207367>,  <43.269241, 37.192352, 28.440514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053570, 37.435513, 28.207367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732847, -0.679688, -0.030960,
		-0.414989, 0.410460, 0.811977,
		-0.539184, 0.607903, -0.582868,
		42.891815, 37.617882, 28.032507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529945, 37.108459, 28.788704>,  <43.269241, 37.192352, 28.440514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529945, 37.108459, 28.788704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520523, 37.269741, 28.422783>,  <42.514870, 37.366512, 28.203230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520523, 37.269741, 28.422783>,  <42.529945, 37.108459, 28.788704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520523, 37.269741, 28.422783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818153, -0.533637, -0.214140,
		-0.574517, 0.743407, 0.342456,
		-0.023554, 0.403209, -0.914805,
		42.513458, 37.390705, 28.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864876, 37.408627, 28.713247>,  <42.529945, 37.108459, 28.788704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864876, 37.408627, 28.713247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998882, 37.353138, 28.340469>,  <42.079285, 37.319847, 28.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998882, 37.353138, 28.340469>,  <41.864876, 37.408627, 28.713247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998882, 37.353138, 28.340469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886363, -0.381873, -0.261791,
		-0.319569, 0.913746, -0.250888,
		0.335017, -0.138717, -0.931945,
		42.099388, 37.311523, 28.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228546, 37.566116, 28.290237>,  <41.864876, 37.408627, 28.713247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228546, 37.566116, 28.290237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447765, 37.377155, 28.014130>,  <41.579296, 37.263779, 27.848465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.447765, 37.377155, 28.014130>,  <41.228546, 37.566116, 28.290237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447765, 37.377155, 28.014130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836433, -0.313765, -0.449368,
		-0.004297, 0.823640, -0.567096,
		0.548052, -0.472407, -0.690268,
		41.612183, 37.235432, 27.807049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902245, 37.689064, 27.626823>,  <41.228546, 37.566116, 28.290237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902245, 37.689064, 27.626823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141445, 37.375607, 27.559536>,  <41.284966, 37.187531, 27.519163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141445, 37.375607, 27.559536>,  <40.902245, 37.689064, 27.626823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141445, 37.375607, 27.559536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708918, -0.419222, -0.567176,
		0.373942, 0.458425, -0.806234,
		0.597999, -0.783645, -0.168221,
		41.320847, 37.140514, 27.509069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028122, 37.696442, 26.856777>,  <40.902245, 37.689064, 27.626823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028122, 37.696442, 26.856777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110840, 37.339611, 27.017490>,  <41.160473, 37.125511, 27.113918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110840, 37.339611, 27.017490>,  <41.028122, 37.696442, 26.856777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110840, 37.339611, 27.017490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694328, -0.423136, -0.582121,
		0.689307, -0.158587, -0.706899,
		0.206797, -0.892080, 0.401782,
		41.172878, 37.071987, 27.138025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299519, 37.209965, 26.278902>,  <41.028122, 37.696442, 26.856777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299519, 37.209965, 26.278902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156700, 36.980125, 26.573483>,  <41.071011, 36.842224, 26.750231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156700, 36.980125, 26.573483>,  <41.299519, 37.209965, 26.278902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156700, 36.980125, 26.573483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518167, -0.534149, -0.667973,
		0.777189, -0.620100, -0.107022,
		-0.357044, -0.574596, 0.736449,
		41.049587, 36.807747, 26.794418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387424, 36.623928, 26.054287>,  <41.299519, 37.209965, 26.278902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387424, 36.623928, 26.054287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106655, 36.551006, 26.329697>,  <40.938194, 36.507252, 26.494942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106655, 36.551006, 26.329697>,  <41.387424, 36.623928, 26.054287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106655, 36.551006, 26.329697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448607, -0.637686, -0.626186,
		0.553220, -0.748412, 0.365823,
		-0.701925, -0.182308, 0.688524,
		40.896076, 36.496315, 26.536253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292454, 35.921459, 26.187561>,  <41.387424, 36.623928, 26.054287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292454, 35.921459, 26.187561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944969, 36.065617, 26.323475>,  <40.736477, 36.152111, 26.405024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944969, 36.065617, 26.323475>,  <41.292454, 35.921459, 26.187561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944969, 36.065617, 26.323475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495309, -0.636259, -0.591475,
		0.003025, -0.682120, 0.731234,
		-0.868712, 0.360397, 0.339785,
		40.684357, 36.173737, 26.425411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891006, 35.400116, 26.324997>,  <41.292454, 35.921459, 26.187561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891006, 35.400116, 26.324997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614147, 35.688530, 26.312119>,  <40.448032, 35.861580, 26.304392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614147, 35.688530, 26.312119>,  <40.891006, 35.400116, 26.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614147, 35.688530, 26.312119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646230, -0.638968, -0.417260,
		-0.321434, -0.267998, 0.908216,
		-0.692146, 0.721039, -0.032198,
		40.406502, 35.904842, 26.302460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312824, 35.067364, 26.368046>,  <40.891006, 35.400116, 26.324997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312824, 35.067364, 26.368046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199081, 35.424191, 26.227562>,  <40.130836, 35.638287, 26.143272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199081, 35.424191, 26.227562>,  <40.312824, 35.067364, 26.368046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199081, 35.424191, 26.227562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658087, -0.448020, -0.605144,
		-0.697180, 0.059046, 0.714460,
		-0.284361, 0.892072, -0.351208,
		40.113773, 35.691811, 26.122200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574242, 35.053379, 26.332407>,  <40.312824, 35.067364, 26.368046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574242, 35.053379, 26.332407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714096, 35.327301, 26.076656>,  <39.798008, 35.491653, 25.923206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714096, 35.327301, 26.076656>,  <39.574242, 35.053379, 26.332407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714096, 35.327301, 26.076656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649765, -0.314409, -0.692064,
		-0.674953, 0.657412, 0.335034,
		0.349634, 0.684804, -0.639374,
		39.818985, 35.532742, 25.884844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036201, 35.514847, 26.124256>,  <39.574242, 35.053379, 26.332407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036201, 35.514847, 26.124256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311543, 35.511368, 25.834126>,  <39.476746, 35.509281, 25.660048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311543, 35.511368, 25.834126>,  <39.036201, 35.514847, 26.124256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311543, 35.511368, 25.834126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707302, -0.229879, -0.668490,
		-0.160926, 0.973180, -0.164386,
		0.688350, -0.008693, -0.725326,
		39.518047, 35.508759, 25.616528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665230, 35.720211, 25.562023>,  <39.036201, 35.514847, 26.124256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665230, 35.720211, 25.562023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010269, 35.633457, 25.379211>,  <39.217293, 35.581406, 25.269524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010269, 35.633457, 25.379211>,  <38.665230, 35.720211, 25.562023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010269, 35.633457, 25.379211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502877, -0.269282, -0.821342,
		0.055070, 0.938321, -0.341351,
		0.862602, -0.216889, -0.457031,
		39.269051, 35.568390, 25.242102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661736, 36.199184, 25.025925>,  <38.665230, 35.720211, 25.562023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661736, 36.199184, 25.025925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892460, 35.885468, 24.934555>,  <39.030895, 35.697239, 24.879732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892460, 35.885468, 24.934555>,  <38.661736, 36.199184, 25.025925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892460, 35.885468, 24.934555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633828, -0.253300, -0.730822,
		0.515316, 0.566329, -0.643211,
		0.576811, -0.784290, -0.228426,
		39.065502, 35.650181, 24.866028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849899, 36.220181, 24.257494>,  <38.661736, 36.199184, 25.025925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849899, 36.220181, 24.257494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752129, 35.890587, 24.461967>,  <38.693466, 35.692833, 24.584652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752129, 35.890587, 24.461967>,  <38.849899, 36.220181, 24.257494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752129, 35.890587, 24.461967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735290, -0.186177, -0.651679,
		0.632143, -0.535156, -0.560360,
		-0.244424, -0.823982, 0.511185,
		38.678802, 35.643391, 24.615324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781971, 35.639263, 23.817528>,  <38.849899, 36.220181, 24.257494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781971, 35.639263, 23.817528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541653, 35.560383, 24.127407>,  <38.397461, 35.513054, 24.313334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541653, 35.560383, 24.127407>,  <38.781971, 35.639263, 23.817528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541653, 35.560383, 24.127407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636968, -0.467468, -0.612981,
		0.483028, -0.861733, 0.155241,
		-0.600796, -0.197204, 0.774696,
		38.361412, 35.501221, 24.359816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664616, 34.961166, 23.803774>,  <38.781971, 35.639263, 23.817528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664616, 34.961166, 23.803774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339298, 35.115501, 23.977985>,  <38.144108, 35.208103, 24.082512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339298, 35.115501, 23.977985>,  <38.664616, 34.961166, 23.803774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339298, 35.115501, 23.977985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581239, -0.573173, -0.577611,
		0.026769, -0.722912, 0.690421,
		-0.813293, 0.385837, 0.435528,
		38.095310, 35.231255, 24.108644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253227, 34.498085, 23.583492>,  <38.664616, 34.961166, 23.803774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253227, 34.498085, 23.583492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027935, 34.800442, 23.716999>,  <37.892761, 34.981857, 23.797104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027935, 34.800442, 23.716999>,  <38.253227, 34.498085, 23.583492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027935, 34.800442, 23.716999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748576, -0.295744, -0.593439,
		-0.349871, -0.584086, 0.732417,
		-0.563227, 0.755896, 0.333760,
		37.858967, 35.027210, 23.817129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529514, 34.362011, 23.874395>,  <38.253227, 34.498085, 23.583492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529514, 34.362011, 23.874395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537872, 34.725468, 23.707577>,  <37.542889, 34.943542, 23.607485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537872, 34.725468, 23.707577>,  <37.529514, 34.362011, 23.874395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537872, 34.725468, 23.707577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774641, -0.248996, -0.581320,
		-0.632056, 0.335211, 0.698669,
		0.020899, 0.908644, -0.417048,
		37.544144, 34.998062, 23.582462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852673, 34.647339, 23.981148>,  <37.529514, 34.362011, 23.874395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852673, 34.647339, 23.981148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010227, 34.842045, 23.669273>,  <37.104759, 34.958870, 23.482149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010227, 34.842045, 23.669273>,  <36.852673, 34.647339, 23.981148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010227, 34.842045, 23.669273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856743, -0.112829, -0.503251,
		-0.332938, 0.866214, 0.372593,
		0.393883, 0.486768, -0.779688,
		37.128391, 34.988075, 23.435368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654240, 35.342323, 23.568727>,  <36.852673, 34.647339, 23.981148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654240, 35.342323, 23.568727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009369, 35.382942, 23.748260>,  <37.222446, 35.407314, 23.855980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009369, 35.382942, 23.748260>,  <36.654240, 35.342323, 23.568727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009369, 35.382942, 23.748260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195839, -0.965992, -0.168837,
		0.416426, 0.237797, -0.877520,
		0.887827, 0.101545, 0.448835,
		37.275719, 35.413406, 23.882912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081577, 35.663227, 23.814085>,  <36.654240, 35.342323, 23.568727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081577, 35.663227, 23.814085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 35.724716, 23.950962>,  <35.488316, 35.761612, 24.033089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710789, 35.724716, 23.950962>,  <36.081577, 35.663227, 23.814085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710789, 35.724716, 23.950962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081007, -0.972687, 0.217527,
		0.366286, 0.173921, 0.914104,
		-0.926969, 0.153726, 0.342193,
		35.432697, 35.770832, 24.053619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132725, 35.263840, 24.388502>,  <36.081577, 35.663227, 23.814085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132725, 35.263840, 24.388502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756119, 35.319199, 24.265602>,  <35.530155, 35.352413, 24.191862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756119, 35.319199, 24.265602>,  <36.132725, 35.263840, 24.388502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756119, 35.319199, 24.265602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203474, -0.960274, 0.190977,
		-0.268613, 0.242325, 0.932269,
		-0.941512, 0.138394, -0.307249,
		35.473663, 35.360718, 24.173428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590454, 35.022682, 24.952372>,  <36.132725, 35.263840, 24.388502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590454, 35.022682, 24.952372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432999, 35.000130, 24.585358>,  <35.338524, 34.986599, 24.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432999, 35.000130, 24.585358>,  <35.590454, 35.022682, 24.952372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432999, 35.000130, 24.585358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355354, -0.911194, 0.208446,
		-0.847803, 0.408102, 0.338649,
		-0.393642, -0.056381, -0.917533,
		35.314907, 34.983215, 24.310097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967716, 34.586113, 25.072271>,  <35.590454, 35.022682, 24.952372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967716, 34.586113, 25.072271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007957, 34.619469, 24.675701>,  <35.032101, 34.639481, 24.437759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007957, 34.619469, 24.675701>,  <34.967716, 34.586113, 25.072271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007957, 34.619469, 24.675701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287408, -0.951563, -0.109197,
		-0.952510, 0.295929, -0.071763,
		0.100602, 0.083386, -0.991426,
		35.038139, 34.644485, 24.378273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326298, 34.397255, 24.802031>,  <34.967716, 34.586113, 25.072271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326298, 34.397255, 24.802031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588123, 34.323174, 24.508842>,  <34.745216, 34.278725, 24.332930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588123, 34.323174, 24.508842>,  <34.326298, 34.397255, 24.802031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588123, 34.323174, 24.508842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471282, -0.858053, -0.204056,
		-0.591136, 0.479004, -0.648933,
		0.654562, -0.185206, -0.732971,
		34.784492, 34.267612, 24.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932323, 34.176365, 24.255943>,  <34.326298, 34.397255, 24.802031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932323, 34.176365, 24.255943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304394, 34.050198, 24.180805>,  <34.527634, 33.974495, 24.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304394, 34.050198, 24.180805>,  <33.932323, 34.176365, 24.255943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304394, 34.050198, 24.180805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328261, -0.943703, -0.040863,
		-0.164381, 0.099672, -0.981348,
		0.930174, -0.315422, -0.187845,
		34.583447, 33.955570, 24.124453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848774, 33.678349, 23.832161>,  <33.932323, 34.176365, 24.255943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848774, 33.678349, 23.832161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226688, 33.612129, 23.945278>,  <34.453438, 33.572395, 24.013147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226688, 33.612129, 23.945278>,  <33.848774, 33.678349, 23.832161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226688, 33.612129, 23.945278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165023, -0.985951, -0.025865,
		0.283100, -0.022230, -0.958833,
		0.944787, -0.165552, 0.282791,
		34.510124, 33.562462, 24.030115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053791, 33.101944, 23.540033>,  <33.848774, 33.678349, 23.832161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053791, 33.101944, 23.540033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356071, 33.109436, 23.801895>,  <34.537437, 33.113934, 23.959011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356071, 33.109436, 23.801895>,  <34.053791, 33.101944, 23.540033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356071, 33.109436, 23.801895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025882, -0.997956, 0.058434,
		0.654410, -0.061102, -0.753667,
		0.755697, 0.018734, 0.654654,
		34.582779, 33.115055, 23.998291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469421, 32.509853, 23.357668>,  <34.053791, 33.101944, 23.540033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469421, 32.509853, 23.357668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532478, 32.619946, 23.737015>,  <34.570312, 32.686001, 23.964622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532478, 32.619946, 23.737015>,  <34.469421, 32.509853, 23.357668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532478, 32.619946, 23.737015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013628, -0.959675, 0.280782,
		0.987403, -0.057187, -0.147532,
		0.157640, 0.275234, 0.948365,
		34.579769, 32.702515, 24.021524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960987, 32.014328, 23.511444>,  <34.469421, 32.509853, 23.357668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960987, 32.014328, 23.511444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812160, 32.146622, 23.858356>,  <34.722862, 32.225998, 24.066504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812160, 32.146622, 23.858356>,  <34.960987, 32.014328, 23.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812160, 32.146622, 23.858356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269175, -0.932659, 0.240191,
		0.888318, -0.144083, 0.436039,
		-0.372068, 0.330737, 0.867282,
		34.700539, 32.245842, 24.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225254, 31.547852, 23.987831>,  <34.960987, 32.014328, 23.511444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225254, 31.547852, 23.987831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925583, 31.725403, 24.184483>,  <34.745781, 31.831934, 24.302473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925583, 31.725403, 24.184483>,  <35.225254, 31.547852, 23.987831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925583, 31.725403, 24.184483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250147, -0.876872, 0.410515,
		0.613313, 0.184571, 0.767972,
		-0.749182, 0.443880, 0.491627,
		34.700829, 31.858566, 24.331970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327595, 31.384773, 24.654934>,  <35.225254, 31.547852, 23.987831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327595, 31.384773, 24.654934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940884, 31.486530, 24.644863>,  <34.708858, 31.547585, 24.638821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940884, 31.486530, 24.644863>,  <35.327595, 31.384773, 24.654934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940884, 31.486530, 24.644863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239502, -0.866925, 0.437126,
		0.089373, 0.428632, 0.899048,
		-0.966774, 0.254391, -0.025178,
		34.650852, 31.562847, 24.637310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110237, 31.327454, 25.418030>,  <35.327595, 31.384773, 24.654934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110237, 31.327454, 25.418030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782295, 31.291328, 25.191868>,  <34.585529, 31.269653, 25.056170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782295, 31.291328, 25.191868>,  <35.110237, 31.327454, 25.418030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782295, 31.291328, 25.191868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304347, -0.767693, 0.563933,
		-0.484987, 0.634422, 0.601910,
		-0.819854, -0.090311, -0.565406,
		34.536339, 31.264235, 25.022245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644543, 31.211519, 25.872900>,  <35.110237, 31.327454, 25.418030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644543, 31.211519, 25.872900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479282, 31.084209, 25.531605>,  <34.380127, 31.007824, 25.326828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479282, 31.084209, 25.531605>,  <34.644543, 31.211519, 25.872900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479282, 31.084209, 25.531605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339791, -0.815397, 0.468689,
		-0.844898, 0.483559, 0.228732,
		-0.413146, -0.318273, -0.853236,
		34.355339, 30.988728, 25.275635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999477, 31.049448, 26.084192>,  <34.644543, 31.211519, 25.872900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999477, 31.049448, 26.084192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044773, 30.856586, 25.736698>,  <34.071953, 30.740870, 25.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044773, 30.856586, 25.736698>,  <33.999477, 31.049448, 26.084192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044773, 30.856586, 25.736698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331026, -0.842714, 0.424562,
		-0.936802, 0.239496, -0.255037,
		0.113242, -0.482155, -0.868736,
		34.078747, 30.711941, 25.476078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324463, 30.688587, 25.941010>,  <33.999477, 31.049448, 26.084192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324463, 30.688587, 25.941010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584702, 30.479008, 25.721119>,  <33.740845, 30.353260, 25.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584702, 30.479008, 25.721119>,  <33.324463, 30.688587, 25.941010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584702, 30.479008, 25.721119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295792, -0.841541, 0.452012,
		-0.699449, -0.131473, -0.702485,
		0.650598, -0.523949, -0.549727,
		33.779881, 30.321823, 25.556200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000401, 30.086718, 25.951241>,  <33.324463, 30.688587, 25.941010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000401, 30.086718, 25.951241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369919, 30.009586, 25.818924>,  <33.591629, 29.963308, 25.739534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369919, 30.009586, 25.818924>,  <33.000401, 30.086718, 25.951241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369919, 30.009586, 25.818924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068047, -0.932860, 0.353755,
		-0.376793, -0.304288, -0.874892,
		0.923794, -0.192827, -0.330789,
		33.647057, 29.951738, 25.719687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018703, 29.445660, 25.487947>,  <33.000401, 30.086718, 25.951241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018703, 29.445660, 25.487947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391994, 29.500801, 25.620663>,  <33.615971, 29.533886, 25.700293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391994, 29.500801, 25.620663>,  <33.018703, 29.445660, 25.487947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391994, 29.500801, 25.620663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029875, -0.950039, 0.310699,
		0.358044, -0.280040, -0.890720,
		0.933227, 0.137854, 0.331789,
		33.671963, 29.542158, 25.720200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325775, 28.844673, 25.799383>,  <33.018703, 29.445660, 25.487947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325775, 28.844673, 25.799383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628441, 29.037895, 25.975620>,  <33.810040, 29.153830, 26.081362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628441, 29.037895, 25.975620>,  <33.325775, 28.844673, 25.799383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628441, 29.037895, 25.975620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267831, -0.843762, 0.465116,
		0.596432, -0.233930, -0.767818,
		0.756660, 0.483056, 0.440593,
		33.855438, 29.182812, 26.107798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935040, 28.425211, 25.742571>,  <33.325775, 28.844673, 25.799383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935040, 28.425211, 25.742571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965443, 28.667229, 26.059593>,  <33.983685, 28.812439, 26.249807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965443, 28.667229, 26.059593>,  <33.935040, 28.425211, 25.742571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965443, 28.667229, 26.059593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226831, -0.784507, 0.577145,
		0.970964, 0.135910, -0.196870,
		0.076007, 0.605043, 0.792557,
		33.988243, 28.848742, 26.297359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281498, 28.077957, 26.155720>,  <33.935040, 28.425211, 25.742571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281498, 28.077957, 26.155720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232784, 28.374489, 26.419720>,  <34.203556, 28.552408, 26.578119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232784, 28.374489, 26.419720>,  <34.281498, 28.077957, 26.155720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232784, 28.374489, 26.419720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062945, -0.669379, 0.740250,
		0.990559, 0.048608, 0.128183,
		-0.121785, 0.741330, 0.659999,
		34.196247, 28.596888, 26.617720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831181, 27.978893, 26.657412>,  <34.281498, 28.077957, 26.155720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831181, 27.978893, 26.657412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547081, 28.199856, 26.831947>,  <34.376621, 28.332434, 26.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547081, 28.199856, 26.831947>,  <34.831181, 27.978893, 26.657412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547081, 28.199856, 26.831947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016184, -0.606869, 0.794637,
		0.703763, 0.571452, 0.422089,
		-0.710250, 0.552405, 0.436341,
		34.334007, 28.365578, 26.962849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074680, 27.986593, 27.289568>,  <34.831181, 27.978893, 26.657412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074680, 27.986593, 27.289568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697556, 28.106728, 27.347393>,  <34.471279, 28.178808, 27.382088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697556, 28.106728, 27.347393>,  <35.074680, 27.986593, 27.289568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697556, 28.106728, 27.347393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075512, -0.614893, 0.784987,
		0.324652, 0.729180, 0.602409,
		-0.942814, 0.300337, 0.144565,
		34.414711, 28.196829, 27.390762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039497, 28.145679, 27.975155>,  <35.074680, 27.986593, 27.289568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039497, 28.145679, 27.975155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659657, 28.091175, 27.862240>,  <34.431751, 28.058472, 27.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659657, 28.091175, 27.862240>,  <35.039497, 28.145679, 27.975155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659657, 28.091175, 27.862240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176371, -0.512209, 0.840556,
		-0.259126, 0.847982, 0.462363,
		-0.949604, -0.136263, -0.282286,
		34.374775, 28.050297, 27.777554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687271, 28.255812, 28.557577>,  <35.039497, 28.145679, 27.975155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687271, 28.255812, 28.557577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415264, 28.073002, 28.328243>,  <34.252060, 27.963316, 28.190643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415264, 28.073002, 28.328243>,  <34.687271, 28.255812, 28.557577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415264, 28.073002, 28.328243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255582, -0.585160, 0.769587,
		-0.687212, 0.669863, 0.281110,
		-0.680013, -0.457023, -0.573335,
		34.211262, 27.935894, 28.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994816, 28.235247, 28.915585>,  <34.687271, 28.255812, 28.557577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994816, 28.235247, 28.915585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003735, 27.933048, 28.653675>,  <34.009087, 27.751730, 28.496529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003735, 27.933048, 28.653675>,  <33.994816, 28.235247, 28.915585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003735, 27.933048, 28.653675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247124, -0.638779, 0.728622,
		-0.968727, 0.145564, -0.200945,
		0.022299, -0.755494, -0.654775,
		34.010426, 27.706400, 28.457243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404427, 27.888544, 29.110304>,  <33.994816, 28.235247, 28.915585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404427, 27.888544, 29.110304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643425, 27.641655, 28.905548>,  <33.786823, 27.493521, 28.782694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643425, 27.641655, 28.905548>,  <33.404427, 27.888544, 29.110304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643425, 27.641655, 28.905548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293438, -0.762394, 0.576758,
		-0.746249, -0.194405, -0.636647,
		0.597501, -0.617221, -0.511890,
		33.822674, 27.456488, 28.751980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133751, 27.219715, 29.228773>,  <33.404427, 27.888544, 29.110304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133751, 27.219715, 29.228773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482635, 27.111221, 29.065956>,  <33.691967, 27.046125, 28.968266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482635, 27.111221, 29.065956>,  <33.133751, 27.219715, 29.228773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482635, 27.111221, 29.065956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057442, -0.883212, 0.465442,
		-0.485748, -0.382582, -0.785926,
		0.872209, -0.271233, -0.407043,
		33.744297, 27.029852, 28.943844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092556, 26.553665, 28.820837>,  <33.133751, 27.219715, 29.228773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092556, 26.553665, 28.820837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462658, 26.607903, 28.962547>,  <33.684719, 26.640444, 29.047573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462658, 26.607903, 28.962547>,  <33.092556, 26.553665, 28.820837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462658, 26.607903, 28.962547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066586, -0.861379, 0.503579,
		0.373445, -0.489531, -0.787971,
		0.925260, 0.135591, 0.354274,
		33.740234, 26.648581, 29.068829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411720, 25.996483, 28.532169>,  <33.092556, 26.553665, 28.820837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411720, 25.996483, 28.532169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628769, 26.138371, 28.836731>,  <33.758999, 26.223503, 29.019468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628769, 26.138371, 28.836731>,  <33.411720, 25.996483, 28.532169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628769, 26.138371, 28.836731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241497, -0.802305, 0.545881,
		0.804511, -0.480085, -0.349687,
		0.542625, 0.354719, 0.761402,
		33.791557, 26.244785, 29.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684364, 25.339813, 28.826027>,  <33.411720, 25.996483, 28.532169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684364, 25.339813, 28.826027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756664, 25.606861, 29.114918>,  <33.800045, 25.767090, 29.288252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756664, 25.606861, 29.114918>,  <33.684364, 25.339813, 28.826027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756664, 25.606861, 29.114918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162524, -0.703952, 0.691403,
		0.970008, -0.242351, -0.018736,
		0.180752, 0.667621, 0.722226,
		33.810890, 25.807148, 29.331585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171658, 25.017168, 29.296530>,  <33.684364, 25.339813, 28.826027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171658, 25.017168, 29.296530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998730, 25.315647, 29.499027>,  <33.894974, 25.494736, 29.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998730, 25.315647, 29.499027>,  <34.171658, 25.017168, 29.296530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998730, 25.315647, 29.499027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212464, -0.629912, 0.747041,
		0.876331, 0.215403, 0.430865,
		-0.432322, 0.746199, 0.506246,
		33.869034, 25.539507, 29.650902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479008, 25.012255, 30.020878>,  <34.171658, 25.017168, 29.296530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479008, 25.012255, 30.020878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127594, 25.202560, 30.037952>,  <33.916744, 25.316744, 30.048197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127594, 25.202560, 30.037952>,  <34.479008, 25.012255, 30.020878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127594, 25.202560, 30.037952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246114, -0.527435, 0.813167,
		0.409390, 0.703891, 0.580463,
		-0.878537, 0.475762, 0.042689,
		33.864033, 25.345289, 30.050758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389156, 25.144310, 30.732538>,  <34.479008, 25.012255, 30.020878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389156, 25.144310, 30.732538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021412, 25.192081, 30.582600>,  <33.800766, 25.220745, 30.492638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021412, 25.192081, 30.582600>,  <34.389156, 25.144310, 30.732538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021412, 25.192081, 30.582600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369075, -0.591744, 0.716675,
		-0.136219, 0.797230, 0.588106,
		-0.919363, 0.119430, -0.374844,
		33.745602, 25.227911, 30.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093609, 25.015512, 31.310038>,  <34.389156, 25.144310, 30.732538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093609, 25.015512, 31.310038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781525, 25.051449, 31.062428>,  <33.594273, 25.073009, 30.913860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781525, 25.051449, 31.062428>,  <34.093609, 25.015512, 31.310038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781525, 25.051449, 31.062428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550927, -0.567349, 0.612042,
		-0.296218, 0.818562, 0.492149,
		-0.780215, 0.089840, -0.619027,
		33.547459, 25.078402, 30.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499004, 25.379694, 31.596636>,  <34.093609, 25.015512, 31.310038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499004, 25.379694, 31.596636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359875, 25.120754, 31.325356>,  <33.276398, 24.965391, 31.162588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359875, 25.120754, 31.325356>,  <33.499004, 25.379694, 31.596636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359875, 25.120754, 31.325356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508380, -0.477569, 0.716573,
		-0.787761, 0.594026, -0.162988,
		-0.347825, -0.647349, -0.678201,
		33.255527, 24.926550, 31.121895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820946, 25.461544, 31.623373>,  <33.499004, 25.379694, 31.596636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820946, 25.461544, 31.623373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871284, 25.097134, 31.466301>,  <32.901489, 24.878487, 31.372059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871284, 25.097134, 31.466301>,  <32.820946, 25.461544, 31.623373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871284, 25.097134, 31.466301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577241, -0.389163, 0.717876,
		-0.806818, 0.136328, -0.574855,
		0.125846, -0.911025, -0.392678,
		32.909039, 24.823826, 31.348497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148113, 25.056274, 31.497219>,  <32.820946, 25.461544, 31.623373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148113, 25.056274, 31.497219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438206, 24.784023, 31.538757>,  <32.612263, 24.620672, 31.563681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438206, 24.784023, 31.538757>,  <32.148113, 25.056274, 31.497219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438206, 24.784023, 31.538757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537659, -0.465643, 0.702922,
		-0.430073, -0.565616, -0.703645,
		0.725231, -0.680629, 0.103848,
		32.655773, 24.579834, 31.569910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779770, 24.368189, 31.595978>,  <32.148113, 25.056274, 31.497219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779770, 24.368189, 31.595978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162575, 24.300735, 31.690369>,  <32.392258, 24.260263, 31.747004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162575, 24.300735, 31.690369>,  <31.779770, 24.368189, 31.595978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162575, 24.300735, 31.690369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289935, -0.578147, 0.762682,
		0.007815, -0.798316, -0.602188,
		0.957015, -0.168635, 0.235978,
		32.449680, 24.250145, 31.761162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794931, 23.701574, 31.827614>,  <31.779770, 24.368189, 31.595978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794931, 23.701574, 31.827614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161175, 23.794525, 31.958862>,  <32.380920, 23.850296, 32.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161175, 23.794525, 31.958862>,  <31.794931, 23.701574, 31.827614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161175, 23.794525, 31.958862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087316, -0.681683, 0.726419,
		0.392478, -0.693765, -0.603864,
		0.915608, 0.232377, 0.328122,
		32.435856, 23.864239, 32.057301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140270, 23.040253, 31.906143>,  <31.794931, 23.701574, 31.827614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140270, 23.040253, 31.906143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306755, 23.295952, 32.164795>,  <32.406647, 23.449371, 32.319984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306755, 23.295952, 32.164795>,  <32.140270, 23.040253, 31.906143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306755, 23.295952, 32.164795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158586, -0.649220, 0.743884,
		0.895333, -0.412157, -0.168835,
		0.416209, 0.639249, 0.646631,
		32.431618, 23.487726, 32.358784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616879, 22.646152, 32.240158>,  <32.140270, 23.040253, 31.906143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616879, 22.646152, 32.240158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547684, 22.959011, 32.479599>,  <32.506165, 23.146727, 32.623264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547684, 22.959011, 32.479599>,  <32.616879, 22.646152, 32.240158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547684, 22.959011, 32.479599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308846, -0.620186, 0.721099,
		0.935248, -0.060130, 0.348850,
		-0.172992, 0.782147, 0.598598,
		32.495785, 23.193655, 32.659180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060894, 22.800528, 32.881405>,  <32.616879, 22.646152, 32.240158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060894, 22.800528, 32.881405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679070, 22.911892, 32.923916>,  <32.449974, 22.978710, 32.949421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679070, 22.911892, 32.923916>,  <33.060894, 22.800528, 32.881405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679070, 22.911892, 32.923916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070051, -0.556265, 0.828047,
		0.289656, 0.782979, 0.550494,
		-0.954564, 0.278412, 0.106277,
		32.392700, 22.995415, 32.955799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672329, 23.315435, 33.446201>,  <33.060894, 22.800528, 32.881405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672329, 23.315435, 33.446201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456013, 23.004314, 33.318096>,  <32.326221, 22.817642, 33.241234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456013, 23.004314, 33.318096>,  <32.672329, 23.315435, 33.446201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456013, 23.004314, 33.318096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123173, -0.449863, 0.884563,
		-0.832091, 0.438914, 0.339085,
		-0.540789, -0.777803, -0.320264,
		32.293777, 22.770973, 33.222015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322327, 22.998383, 34.006905>,  <32.672329, 23.315435, 33.446201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322327, 22.998383, 34.006905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315121, 22.701431, 33.739010>,  <32.310799, 22.523260, 33.578274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315121, 22.701431, 33.739010>,  <32.322327, 22.998383, 34.006905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315121, 22.701431, 33.739010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103456, -0.664869, 0.739760,
		-0.994471, 0.082612, -0.064829,
		-0.018011, -0.742377, -0.669740,
		32.309719, 22.478718, 33.538090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921455, 22.519142, 34.287193>,  <32.322327, 22.998383, 34.006905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921455, 22.519142, 34.287193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146843, 22.304211, 34.036186>,  <32.282074, 22.175251, 33.885582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146843, 22.304211, 34.036186>,  <31.921455, 22.519142, 34.287193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146843, 22.304211, 34.036186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116348, -0.700398, 0.704205,
		-0.817904, -0.469808, -0.332135,
		0.563468, -0.537329, -0.627520,
		32.315884, 22.143011, 33.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668091, 23.010475, 33.731052>,  <31.921455, 22.519142, 34.287193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668091, 23.010475, 33.731052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301867, 23.024590, 33.891304>,  <31.082132, 23.033058, 33.987453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301867, 23.024590, 33.891304>,  <31.668091, 23.010475, 33.731052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301867, 23.024590, 33.891304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335097, 0.617757, 0.711398,
		-0.222388, 0.785577, -0.577419,
		-0.915562, 0.035285, 0.400626,
		31.027199, 23.035175, 34.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355585, 23.777874, 33.760456>,  <31.668091, 23.010475, 33.731052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355585, 23.777874, 33.760456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270472, 23.516106, 34.050686>,  <31.219402, 23.359045, 34.224823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270472, 23.516106, 34.050686>,  <31.355585, 23.777874, 33.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270472, 23.516106, 34.050686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337366, 0.647706, 0.683126,
		-0.917010, 0.390143, 0.082957,
		-0.212785, -0.654420, 0.725574,
		31.206636, 23.319780, 34.268356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731482, 23.935167, 34.132416>,  <31.355585, 23.777874, 33.760456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731482, 23.935167, 34.132416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036545, 23.766872, 34.328918>,  <31.219584, 23.665895, 34.446819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036545, 23.766872, 34.328918>,  <30.731482, 23.935167, 34.132416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036545, 23.766872, 34.328918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072629, 0.810420, 0.581330,
		-0.642710, -0.407677, 0.648632,
		0.762659, -0.420736, 0.491256,
		31.265343, 23.640652, 34.476295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627571, 23.768131, 34.874603>,  <30.731482, 23.935167, 34.132416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627571, 23.768131, 34.874603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012892, 23.836849, 34.792107>,  <31.244085, 23.878080, 34.742607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012892, 23.836849, 34.792107>,  <30.627571, 23.768131, 34.874603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012892, 23.836849, 34.792107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025614, 0.823685, 0.566469,
		0.267193, -0.540398, 0.797858,
		0.963302, 0.171793, -0.206241,
		31.301882, 23.888388, 34.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089460, 23.859201, 35.531132>,  <30.627571, 23.768131, 34.874603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089460, 23.859201, 35.531132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207926, 24.071575, 35.213543>,  <31.279005, 24.198999, 35.022987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207926, 24.071575, 35.213543>,  <31.089460, 23.859201, 35.531132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207926, 24.071575, 35.213543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133825, 0.846134, 0.515897,
		0.945716, -0.046537, 0.321646,
		0.296164, 0.530936, -0.793974,
		31.296776, 24.230856, 34.975349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658661, 24.370573, 35.684906>,  <31.089460, 23.859201, 35.531132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658661, 24.370573, 35.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407295, 24.465210, 35.388496>,  <31.256475, 24.521992, 35.210651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407295, 24.465210, 35.388496>,  <31.658661, 24.370573, 35.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407295, 24.465210, 35.388496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130116, 0.907232, 0.399999,
		0.766920, 0.347784, -0.539332,
		-0.628413, 0.236592, -0.741027,
		31.218771, 24.536188, 35.166187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293322, 24.922359, 35.501373>,  <31.658661, 24.370573, 35.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293322, 24.922359, 35.501373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436710, 24.824055, 35.141129>,  <31.522743, 24.765072, 34.924984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436710, 24.824055, 35.141129>,  <31.293322, 24.922359, 35.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436710, 24.824055, 35.141129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046627, 0.968235, -0.245657,
		0.932375, 0.046069, 0.358546,
		0.358474, -0.245762, -0.900610,
		31.544252, 24.750326, 34.870945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781630, 25.433784, 35.493614>,  <31.293322, 24.922359, 35.501373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781630, 25.433784, 35.493614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692947, 25.275833, 35.136982>,  <31.639738, 25.181063, 34.923004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692947, 25.275833, 35.136982>,  <31.781630, 25.433784, 35.493614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692947, 25.275833, 35.136982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058581, 0.907290, -0.416405,
		0.973352, -0.144549, -0.178019,
		-0.221706, -0.394880, -0.891581,
		31.626436, 25.157370, 34.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232208, 25.628513, 35.021679>,  <31.781630, 25.433784, 35.493614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232208, 25.628513, 35.021679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904142, 25.522346, 34.818947>,  <31.707302, 25.458647, 34.697308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904142, 25.522346, 34.818947>,  <32.232208, 25.628513, 35.021679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904142, 25.522346, 34.818947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044956, 0.913038, -0.405389,
		0.570354, -0.309702, -0.760777,
		-0.820168, -0.265417, -0.506832,
		31.658092, 25.442722, 34.666897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329647, 25.865358, 34.430588>,  <32.232208, 25.628513, 35.021679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329647, 25.865358, 34.430588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936758, 25.808632, 34.381401>,  <31.701023, 25.774595, 34.351891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936758, 25.808632, 34.381401>,  <32.329647, 25.865358, 34.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936758, 25.808632, 34.381401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050095, 0.829403, -0.556400,
		0.180895, -0.540351, -0.821765,
		-0.982226, -0.141817, -0.122966,
		31.642090, 25.766087, 34.344513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192116, 26.039747, 33.821587>,  <32.329647, 25.865358, 34.430588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192116, 26.039747, 33.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813692, 26.052158, 33.950584>,  <31.586637, 26.059605, 34.027985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813692, 26.052158, 33.950584>,  <32.192116, 26.039747, 33.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813692, 26.052158, 33.950584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155173, 0.830414, -0.535103,
		-0.284410, -0.556283, -0.780808,
		-0.946062, 0.031029, 0.322498,
		31.529873, 26.061466, 34.047333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816605, 26.200554, 33.188686>,  <32.192116, 26.039747, 33.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816605, 26.200554, 33.188686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581717, 26.287418, 33.500587>,  <31.440783, 26.339537, 33.687729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581717, 26.287418, 33.500587>,  <31.816605, 26.200554, 33.188686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581717, 26.287418, 33.500587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231089, 0.878264, -0.418630,
		-0.775738, -0.426020, -0.465551,
		-0.587221, 0.217164, 0.779751,
		31.405550, 26.352568, 33.734512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193722, 26.356520, 32.905449>,  <31.816605, 26.200554, 33.188686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193722, 26.356520, 32.905449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251240, 26.542568, 33.254845>,  <31.285751, 26.654198, 33.464481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251240, 26.542568, 33.254845>,  <31.193722, 26.356520, 32.905449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251240, 26.542568, 33.254845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315232, 0.858214, -0.405090,
		-0.938057, -0.217102, 0.270029,
		0.143797, 0.465119, 0.873491,
		31.294378, 26.682104, 33.516891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746864, 26.809435, 32.896687>,  <31.193722, 26.356520, 32.905449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746864, 26.809435, 32.896687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986814, 26.957306, 33.180515>,  <31.130785, 27.046028, 33.350811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986814, 26.957306, 33.180515>,  <30.746864, 26.809435, 32.896687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986814, 26.957306, 33.180515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067435, 0.907063, -0.415559,
		-0.797245, 0.201434, 0.569056,
		0.599878, 0.369677, 0.709568,
		31.166779, 27.068209, 33.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460739, 27.545675, 33.117058>,  <30.746864, 26.809435, 32.896687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460739, 27.545675, 33.117058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844231, 27.548122, 33.230759>,  <31.074326, 27.549591, 33.298981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844231, 27.548122, 33.230759>,  <30.460739, 27.545675, 33.117058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844231, 27.548122, 33.230759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174271, 0.777305, -0.604505,
		-0.224651, 0.629094, 0.744159,
		0.958729, 0.006117, 0.284255,
		31.131849, 27.549957, 33.316036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590614, 28.186066, 33.349194>,  <30.460739, 27.545675, 33.117058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590614, 28.186066, 33.349194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937372, 28.018719, 33.240780>,  <31.145428, 27.918310, 33.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937372, 28.018719, 33.240780>,  <30.590614, 28.186066, 33.349194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937372, 28.018719, 33.240780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066991, 0.636553, -0.768318,
		0.493966, 0.647895, 0.579853,
		0.866897, -0.418368, -0.271033,
		31.197441, 27.893208, 33.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001223, 28.707500, 33.184513>,  <30.590614, 28.186066, 33.349194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001223, 28.707500, 33.184513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190168, 28.400814, 33.010605>,  <31.303535, 28.216803, 32.906261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190168, 28.400814, 33.010605>,  <31.001223, 28.707500, 33.184513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190168, 28.400814, 33.010605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088255, 0.531931, -0.842176,
		0.876974, 0.359443, 0.318931,
		0.472364, -0.766714, -0.434767,
		31.331877, 28.170799, 32.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517801, 29.001268, 32.904366>,  <31.001223, 28.707500, 33.184513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517801, 29.001268, 32.904366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514559, 28.656403, 32.701740>,  <31.512613, 28.449484, 32.580166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514559, 28.656403, 32.701740>,  <31.517801, 29.001268, 32.904366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514559, 28.656403, 32.701740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277400, 0.484758, -0.829493,
		0.960720, -0.147245, 0.235235,
		-0.008107, -0.862165, -0.506563,
		31.512127, 28.397753, 32.549770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095379, 28.983107, 32.429924>,  <31.517801, 29.001268, 32.904366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095379, 28.983107, 32.429924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854769, 28.709953, 32.264111>,  <31.710402, 28.546062, 32.164623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854769, 28.709953, 32.264111>,  <32.095379, 28.983107, 32.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854769, 28.709953, 32.264111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269265, 0.315223, -0.910017,
		0.752105, -0.659019, -0.005739,
		-0.601527, -0.682883, -0.414531,
		31.674311, 28.505089, 32.139751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536823, 28.661274, 31.852678>,  <32.095379, 28.983107, 32.429924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536823, 28.661274, 31.852678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154598, 28.564091, 31.785892>,  <31.925264, 28.505781, 31.745821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154598, 28.564091, 31.785892>,  <32.536823, 28.661274, 31.852678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154598, 28.564091, 31.785892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131552, 0.155425, -0.979049,
		0.263820, -0.957504, -0.116556,
		-0.955559, -0.242959, -0.166966,
		31.867931, 28.491203, 31.735804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427761, 28.062763, 31.421297>,  <32.536823, 28.661274, 31.852678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427761, 28.062763, 31.421297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101288, 28.288967, 31.373890>,  <31.905403, 28.424688, 31.345446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101288, 28.288967, 31.373890>,  <32.427761, 28.062763, 31.421297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101288, 28.288967, 31.373890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343505, 0.309978, -0.886520,
		-0.464597, -0.764274, -0.447254,
		-0.816183, 0.565508, -0.118517,
		31.856434, 28.458620, 31.338335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385410, 28.185076, 30.641073>,  <32.427761, 28.062763, 31.421297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385410, 28.185076, 30.641073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130196, 28.452400, 30.794052>,  <31.977066, 28.612795, 30.885839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130196, 28.452400, 30.794052>,  <32.385410, 28.185076, 30.641073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130196, 28.452400, 30.794052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278743, 0.663462, -0.694348,
		-0.717781, -0.336417, -0.609602,
		-0.638039, 0.668312, 0.382447,
		31.938784, 28.652893, 30.908787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047531, 28.431387, 30.123247>,  <32.385410, 28.185076, 30.641073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047531, 28.431387, 30.123247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014317, 28.707603, 30.410652>,  <31.994389, 28.873333, 30.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014317, 28.707603, 30.410652>,  <32.047531, 28.431387, 30.123247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014317, 28.707603, 30.410652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251824, 0.712140, -0.655317,
		-0.964204, 0.126524, -0.233028,
		-0.083035, 0.690542, 0.718511,
		31.989407, 28.914766, 30.626205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858595, 28.974085, 29.715673>,  <32.047531, 28.431387, 30.123247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858595, 28.974085, 29.715673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952948, 29.164211, 30.054714>,  <32.009560, 29.278288, 30.258139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952948, 29.164211, 30.054714>,  <31.858595, 28.974085, 29.715673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952948, 29.164211, 30.054714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162146, 0.840739, -0.516592,
		-0.958159, 0.259290, 0.121245,
		0.235882, 0.475317, 0.847604,
		32.023712, 29.306807, 30.308996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598143, 29.526625, 29.679369>,  <31.858595, 28.974085, 29.715673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598143, 29.526625, 29.679369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863237, 29.640862, 29.956272>,  <32.022293, 29.709404, 30.122414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863237, 29.640862, 29.956272>,  <31.598143, 29.526625, 29.679369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863237, 29.640862, 29.956272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056218, 0.902840, -0.426287,
		-0.746740, 0.321433, 0.582289,
		0.662736, 0.285591, 0.692256,
		32.062057, 29.726540, 30.163950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529518, 30.196207, 29.729700>,  <31.598143, 29.526625, 29.679369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529518, 30.196207, 29.729700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889051, 30.144352, 29.897175>,  <32.104771, 30.113239, 29.997660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889051, 30.144352, 29.897175>,  <31.529518, 30.196207, 29.729700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889051, 30.144352, 29.897175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349397, 0.788667, -0.505892,
		-0.264622, 0.600999, 0.754172,
		0.898831, -0.129636, 0.418686,
		32.158699, 30.105461, 30.022781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677204, 30.763588, 30.137831>,  <31.529518, 30.196207, 29.729700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677204, 30.763588, 30.137831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033028, 30.604259, 30.048367>,  <32.246521, 30.508663, 29.994688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033028, 30.604259, 30.048367>,  <31.677204, 30.763588, 30.137831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033028, 30.604259, 30.048367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254203, 0.838418, -0.482115,
		0.379559, 0.372015, 0.847077,
		0.889559, -0.398321, -0.223662,
		32.299896, 30.484764, 29.981268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159687, 31.311193, 30.285690>,  <31.677204, 30.763588, 30.137831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159687, 31.311193, 30.285690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383354, 31.073727, 30.054211>,  <32.517555, 30.931248, 29.915323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383354, 31.073727, 30.054211>,  <32.159687, 31.311193, 30.285690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383354, 31.073727, 30.054211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403473, 0.804648, -0.435604,
		0.724251, 0.010088, 0.689463,
		0.559170, -0.593666, -0.578697,
		32.551105, 30.895626, 29.880602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820576, 31.592876, 30.310587>,  <32.159687, 31.311193, 30.285690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820576, 31.592876, 30.310587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792763, 31.367958, 29.980984>,  <32.776077, 31.233007, 29.783222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792763, 31.367958, 29.980984>,  <32.820576, 31.592876, 30.310587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792763, 31.367958, 29.980984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403820, 0.739442, -0.538661,
		0.912193, -0.370203, 0.175655,
		-0.069528, -0.562295, -0.824008,
		32.771904, 31.199270, 29.733782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526264, 31.794382, 29.957333>,  <32.820576, 31.592876, 30.310587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526264, 31.794382, 29.957333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314461, 31.620064, 29.666210>,  <33.187378, 31.515472, 29.491537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314461, 31.620064, 29.666210>,  <33.526264, 31.794382, 29.957333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314461, 31.620064, 29.666210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436859, 0.595356, -0.674318,
		0.727169, -0.675006, -0.124866,
		-0.529509, -0.435795, -0.727807,
		33.155609, 31.489325, 29.447868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014736, 31.661247, 29.339970>,  <33.526264, 31.794382, 29.957333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014736, 31.661247, 29.339970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629498, 31.670326, 29.232685>,  <33.398354, 31.675774, 29.168314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629498, 31.670326, 29.232685>,  <34.014736, 31.661247, 29.339970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629498, 31.670326, 29.232685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231182, 0.580115, -0.781039,
		0.137866, -0.814218, -0.563952,
		-0.963093, 0.022696, -0.268210,
		33.340569, 31.677135, 29.152222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958828, 31.735533, 28.606461>,  <34.014736, 31.661247, 29.339970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958828, 31.735533, 28.606461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573681, 31.819305, 28.674599>,  <33.342590, 31.869568, 28.715481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573681, 31.819305, 28.674599>,  <33.958828, 31.735533, 28.606461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573681, 31.819305, 28.674599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028908, 0.547381, -0.836384,
		-0.268406, -0.810255, -0.521004,
		-0.962872, 0.209430, 0.170343,
		33.284821, 31.882133, 28.725702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551716, 31.547165, 28.003817>,  <33.958828, 31.735533, 28.606461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551716, 31.547165, 28.003817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350643, 31.827129, 28.206772>,  <33.230000, 31.995108, 28.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350643, 31.827129, 28.206772>,  <33.551716, 31.547165, 28.003817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350643, 31.827129, 28.206772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005026, 0.589287, -0.807908,
		-0.864459, -0.403567, -0.299739,
		-0.502678, 0.699910, 0.507387,
		33.199841, 32.037102, 28.358988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123825, 31.738070, 27.499552>,  <33.551716, 31.547165, 28.003817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123825, 31.738070, 27.499552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116451, 32.024536, 27.778625>,  <33.112026, 32.196415, 27.946070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116451, 32.024536, 27.778625>,  <33.123825, 31.738070, 27.499552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116451, 32.024536, 27.778625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091075, 0.696106, -0.712139,
		-0.995674, 0.050417, -0.078054,
		-0.018430, 0.716166, 0.697686,
		33.110924, 32.239388, 27.987932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521263, 32.256104, 27.347433>,  <33.123825, 31.738070, 27.499552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521263, 32.256104, 27.347433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816441, 32.420818, 27.561298>,  <32.993549, 32.519646, 27.689617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816441, 32.420818, 27.561298>,  <32.521263, 32.256104, 27.347433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816441, 32.420818, 27.561298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003905, 0.794851, -0.606792,
		-0.674846, 0.445693, 0.588166,
		0.737948, 0.411788, 0.534662,
		33.037827, 32.544353, 27.721697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425644, 32.947670, 27.419085>,  <32.521263, 32.256104, 27.347433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425644, 32.947670, 27.419085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809120, 32.972984, 27.530010>,  <33.039207, 32.988174, 27.596565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809120, 32.972984, 27.530010>,  <32.425644, 32.947670, 27.419085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809120, 32.972984, 27.530010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106521, 0.824108, -0.556326,
		-0.263746, 0.562885, 0.783325,
		0.958692, 0.063288, 0.277314,
		33.096729, 32.991970, 27.613205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556561, 33.570305, 27.703314>,  <32.425644, 32.947670, 27.419085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556561, 33.570305, 27.703314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913395, 33.439953, 27.578102>,  <33.127495, 33.361740, 27.502975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913395, 33.439953, 27.578102>,  <32.556561, 33.570305, 27.703314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913395, 33.439953, 27.578102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166776, 0.881281, -0.442187,
		0.419970, 0.342262, 0.840525,
		0.892083, -0.325885, -0.313030,
		33.181019, 33.342186, 27.484194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059406, 34.149158, 27.849733>,  <32.556561, 33.570305, 27.703314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059406, 34.149158, 27.849733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242142, 33.910198, 27.586094>,  <33.351784, 33.766823, 27.427910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242142, 33.910198, 27.586094>,  <33.059406, 34.149158, 27.849733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242142, 33.910198, 27.586094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100612, 0.770879, -0.628985,
		0.883842, 0.221030, 0.412272,
		0.456837, -0.597403, -0.659097,
		33.379192, 33.730976, 27.388365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812202, 34.493526, 27.678131>,  <33.059406, 34.149158, 27.849733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812202, 34.493526, 27.678131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759010, 34.214714, 27.396290>,  <33.727097, 34.047428, 27.227184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759010, 34.214714, 27.396290>,  <33.812202, 34.493526, 27.678131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759010, 34.214714, 27.396290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296745, 0.650304, -0.699319,
		0.945653, -0.302080, 0.120365,
		-0.132976, -0.697031, -0.704603,
		33.719116, 34.005604, 27.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470928, 34.364231, 27.323891>,  <33.812202, 34.493526, 27.678131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470928, 34.364231, 27.323891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168739, 34.270901, 27.078999>,  <33.987427, 34.214905, 26.932064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168739, 34.270901, 27.078999>,  <34.470928, 34.364231, 27.323891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168739, 34.270901, 27.078999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307257, 0.699146, -0.645591,
		0.578669, -0.675837, -0.456495,
		-0.755471, -0.233322, -0.612229,
		33.942097, 34.200905, 26.895330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676552, 34.587925, 26.686962>,  <34.470928, 34.364231, 27.323891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676552, 34.587925, 26.686962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282066, 34.565853, 26.624561>,  <34.045376, 34.552608, 26.587120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282066, 34.565853, 26.624561>,  <34.676552, 34.587925, 26.686962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282066, 34.565853, 26.624561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055339, 0.778492, -0.625210,
		0.155947, -0.625224, -0.764706,
		-0.986214, -0.055181, -0.156003,
		33.986202, 34.549297, 26.577761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605091, 34.809757, 26.018572>,  <34.676552, 34.587925, 26.686962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605091, 34.809757, 26.018572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222786, 34.855068, 26.127148>,  <33.993401, 34.882256, 26.192293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222786, 34.855068, 26.127148>,  <34.605091, 34.809757, 26.018572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222786, 34.855068, 26.127148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091122, 0.763427, -0.639434,
		-0.279656, -0.635884, -0.719336,
		-0.955767, 0.113274, 0.271440,
		33.936054, 34.889050, 26.208580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238674, 35.029907, 25.457668>,  <34.605091, 34.809757, 26.018572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238674, 35.029907, 25.457668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943611, 35.102829, 25.717709>,  <33.766575, 35.146584, 25.873734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943611, 35.102829, 25.717709>,  <34.238674, 35.029907, 25.457668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943611, 35.102829, 25.717709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234920, 0.833396, -0.500264,
		-0.632992, -0.521743, -0.571931,
		-0.737654, 0.182305, 0.650101,
		33.722313, 35.157520, 25.912739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564865, 35.001076, 25.087530>,  <34.238674, 35.029907, 25.457668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564865, 35.001076, 25.087530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524628, 35.246609, 25.400730>,  <33.500484, 35.393929, 25.588650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524628, 35.246609, 25.400730>,  <33.564865, 35.001076, 25.087530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524628, 35.246609, 25.400730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460548, 0.668873, -0.583528,
		-0.881916, -0.419309, 0.215414,
		-0.100595, 0.613831, 0.783002,
		33.494450, 35.430759, 25.635632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900085, 35.383759, 25.020685>,  <33.564865, 35.001076, 25.087530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900085, 35.383759, 25.020685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113659, 35.612465, 25.269844>,  <33.241802, 35.749687, 25.419340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113659, 35.612465, 25.269844>,  <32.900085, 35.383759, 25.020685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113659, 35.612465, 25.269844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350218, 0.820081, -0.452565,
		-0.769588, 0.023488, 0.638109,
		0.533931, 0.571765, 0.622898,
		33.273838, 35.783993, 25.456713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417641, 36.007084, 25.159389>,  <32.900085, 35.383759, 25.020685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417641, 36.007084, 25.159389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789940, 36.095524, 25.275883>,  <33.013321, 36.148586, 25.345778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789940, 36.095524, 25.275883>,  <32.417641, 36.007084, 25.159389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789940, 36.095524, 25.275883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060578, 0.878708, -0.473500,
		-0.360599, 0.423069, 0.831253,
		0.930752, 0.221099, 0.291232,
		33.069164, 36.161854, 25.363253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013340, 36.088936, 25.764591>,  <32.417641, 36.007084, 25.159389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013340, 36.088936, 25.764591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623632, 36.167633, 25.720619>,  <31.389807, 36.214851, 25.694235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623632, 36.167633, 25.720619>,  <32.013340, 36.088936, 25.764591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623632, 36.167633, 25.720619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213427, -0.962115, 0.169660,
		-0.072388, 0.188758, 0.979352,
		-0.974274, 0.196739, -0.109932,
		31.331350, 36.226654, 25.687639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759876, 35.680595, 26.230118>,  <32.013340, 36.088936, 25.764591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759876, 35.680595, 26.230118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441910, 35.772556, 26.005527>,  <31.251129, 35.827732, 25.870773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441910, 35.772556, 26.005527>,  <31.759876, 35.680595, 26.230118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441910, 35.772556, 26.005527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431216, -0.865083, 0.256290,
		-0.426801, 0.445846, 0.786805,
		-0.794917, 0.229899, -0.561475,
		31.203434, 35.841526, 25.837086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097485, 35.750870, 26.682524>,  <31.759876, 35.680595, 26.230118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097485, 35.750870, 26.682524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938498, 35.672611, 26.323917>,  <30.843105, 35.625656, 26.108753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938498, 35.672611, 26.323917>,  <31.097485, 35.750870, 26.682524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938498, 35.672611, 26.323917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418185, -0.831030, 0.366757,
		-0.816788, 0.520683, 0.248488,
		-0.397466, -0.195649, -0.896517,
		30.819258, 35.613918, 26.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408894, 35.677200, 26.812801>,  <31.097485, 35.750870, 26.682524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408894, 35.677200, 26.812801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472153, 35.468685, 26.477364>,  <30.510107, 35.343575, 26.276100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472153, 35.468685, 26.477364>,  <30.408894, 35.677200, 26.812801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472153, 35.468685, 26.477364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632008, -0.705964, 0.319657,
		-0.758654, 0.479447, -0.441106,
		0.158146, -0.521292, -0.838597,
		30.519596, 35.312298, 26.225784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741810, 35.547455, 26.388365>,  <30.408894, 35.677200, 26.812801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741810, 35.547455, 26.388365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019590, 35.272312, 26.303902>,  <30.186258, 35.107227, 26.253223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019590, 35.272312, 26.303902>,  <29.741810, 35.547455, 26.388365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019590, 35.272312, 26.303902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605185, -0.717107, 0.345703,
		-0.389217, -0.112285, -0.914277,
		0.694451, -0.687860, -0.211157,
		30.227926, 35.065956, 26.240555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276381, 34.936714, 26.199722>,  <29.741810, 35.547455, 26.388365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276381, 34.936714, 26.199722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653519, 34.803513, 26.204628>,  <29.879801, 34.723591, 26.207571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653519, 34.803513, 26.204628>,  <29.276381, 34.936714, 26.199722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653519, 34.803513, 26.204628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321221, -0.898453, 0.299331,
		-0.088661, -0.286162, -0.954071,
		0.942845, -0.333006, 0.012263,
		29.936373, 34.703609, 26.208307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213249, 34.368923, 25.828699>,  <29.276381, 34.936714, 26.199722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213249, 34.368923, 25.828699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529863, 34.301327, 26.063618>,  <29.719831, 34.260769, 26.204569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529863, 34.301327, 26.063618>,  <29.213249, 34.368923, 25.828699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529863, 34.301327, 26.063618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498651, -0.734168, 0.460808,
		0.353302, -0.657601, -0.665386,
		0.791534, -0.168991, 0.587296,
		29.767323, 34.250629, 26.239807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346003, 33.609886, 25.860437>,  <29.213249, 34.368923, 25.828699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346003, 33.609886, 25.860437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536079, 33.756863, 26.180233>,  <29.650126, 33.845047, 26.372110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536079, 33.756863, 26.180233>,  <29.346003, 33.609886, 25.860437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536079, 33.756863, 26.180233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438287, -0.689033, 0.577181,
		0.762953, -0.624677, -0.166378,
		0.475192, 0.367441, 0.799487,
		29.678637, 33.867096, 26.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837259, 33.023605, 26.033720>,  <29.346003, 33.609886, 25.860437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837259, 33.023605, 26.033720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728174, 33.270996, 26.328506>,  <29.662724, 33.419430, 26.505379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728174, 33.270996, 26.328506>,  <29.837259, 33.023605, 26.033720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728174, 33.270996, 26.328506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093323, -0.779393, 0.619546,
		0.957558, 0.100184, 0.270269,
		-0.272714, 0.618474, 0.736965,
		29.646360, 33.456539, 26.549597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002333, 32.609489, 26.572517>,  <29.837259, 33.023605, 26.033720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002333, 32.609489, 26.572517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762365, 32.885246, 26.734917>,  <29.618385, 33.050701, 26.832355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762365, 32.885246, 26.734917>,  <30.002333, 32.609489, 26.572517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762365, 32.885246, 26.734917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271871, -0.652923, 0.706950,
		0.752452, 0.313734, 0.579126,
		-0.599919, 0.689393, 0.405998,
		29.582390, 33.092064, 26.856716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128654, 32.715084, 27.314995>,  <30.002333, 32.609489, 26.572517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128654, 32.715084, 27.314995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757996, 32.865433, 27.312271>,  <29.535601, 32.955643, 27.310637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757996, 32.865433, 27.312271>,  <30.128654, 32.715084, 27.314995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757996, 32.865433, 27.312271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275524, -0.666717, 0.692513,
		0.255752, 0.643593, 0.721373,
		-0.926649, 0.375867, -0.006811,
		29.480001, 32.978191, 27.310228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909533, 32.656769, 27.955799>,  <30.128654, 32.715084, 27.314995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909533, 32.656769, 27.955799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558813, 32.747097, 27.785988>,  <29.348381, 32.801296, 27.684101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558813, 32.747097, 27.785988>,  <29.909533, 32.656769, 27.955799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558813, 32.747097, 27.785988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474443, -0.549982, 0.687331,
		-0.078267, 0.804067, 0.589365,
		-0.876800, 0.225825, -0.424529,
		29.295773, 32.814846, 27.658628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530813, 32.925289, 28.470446>,  <29.909533, 32.656769, 27.955799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530813, 32.925289, 28.470446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276207, 32.767475, 28.205360>,  <29.123444, 32.672787, 28.046309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276207, 32.767475, 28.205360>,  <29.530813, 32.925289, 28.470446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276207, 32.767475, 28.205360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394964, -0.571298, 0.719460,
		-0.662459, 0.719695, 0.207813,
		-0.636515, -0.394534, -0.662715,
		29.085253, 32.649117, 28.006546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889534, 32.908154, 28.861040>,  <29.530813, 32.925289, 28.470446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889534, 32.908154, 28.861040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872631, 32.658218, 28.549194>,  <28.862490, 32.508259, 28.362087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872631, 32.658218, 28.549194>,  <28.889534, 32.908154, 28.861040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872631, 32.658218, 28.549194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342224, -0.724054, 0.598855,
		-0.938668, 0.292107, -0.183238,
		-0.042255, -0.624835, -0.779612,
		28.859955, 32.470768, 28.315311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329519, 32.563236, 29.002201>,  <28.889534, 32.908154, 28.861040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329519, 32.563236, 29.002201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546577, 32.343376, 28.748138>,  <28.676811, 32.211460, 28.595701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546577, 32.343376, 28.748138>,  <28.329519, 32.563236, 29.002201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546577, 32.343376, 28.748138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278224, -0.831102, 0.481519,
		-0.792544, -0.084580, -0.603921,
		0.542646, -0.549650, -0.635153,
		28.709370, 32.178482, 28.557592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951715, 31.935776, 28.796404>,  <28.329519, 32.563236, 29.002201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951715, 31.935776, 28.796404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339952, 31.852657, 28.747791>,  <28.572895, 31.802786, 28.718624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339952, 31.852657, 28.747791>,  <27.951715, 31.935776, 28.796404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339952, 31.852657, 28.747791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105647, -0.821328, 0.560588,
		-0.216304, -0.531263, -0.819129,
		0.970593, -0.207796, -0.121530,
		28.631130, 31.790318, 28.711332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959545, 31.212757, 28.763672>,  <27.951715, 31.935776, 28.796404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959545, 31.212757, 28.763672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339764, 31.312584, 28.837620>,  <28.567894, 31.372480, 28.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339764, 31.312584, 28.837620>,  <27.959545, 31.212757, 28.763672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339764, 31.312584, 28.837620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142722, -0.879663, 0.453678,
		0.275846, -0.404858, -0.871780,
		0.950547, 0.249568, 0.184869,
		28.624928, 31.387455, 28.893080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389954, 30.642277, 28.546909>,  <27.959545, 31.212757, 28.763672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389954, 30.642277, 28.546909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655033, 30.827923, 28.782001>,  <28.814081, 30.939310, 28.923058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655033, 30.827923, 28.782001>,  <28.389954, 30.642277, 28.546909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655033, 30.827923, 28.782001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051523, -0.811202, 0.582492,
		0.747112, -0.355735, -0.561495,
		0.662698, 0.464116, 0.587731,
		28.853842, 30.967157, 28.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998859, 30.229158, 28.612417>,  <28.389954, 30.642277, 28.546909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998859, 30.229158, 28.612417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987263, 30.450741, 28.945232>,  <28.980305, 30.583691, 29.144922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987263, 30.450741, 28.945232>,  <28.998859, 30.229158, 28.612417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987263, 30.450741, 28.945232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145392, -0.821200, 0.551807,
		0.988949, 0.136971, -0.056732,
		-0.028993, 0.553958, 0.832040,
		28.978565, 30.616928, 29.194845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638954, 30.049023, 29.072292>,  <28.998859, 30.229158, 28.612417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638954, 30.049023, 29.072292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373264, 30.229626, 29.310600>,  <29.213850, 30.337988, 29.453585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373264, 30.229626, 29.310600>,  <29.638954, 30.049023, 29.072292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373264, 30.229626, 29.310600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098703, -0.737035, 0.668608,
		0.740987, 0.502912, 0.444993,
		-0.664226, 0.451507, 0.595772,
		29.173996, 30.365078, 29.489332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022621, 30.019337, 29.737680>,  <29.638954, 30.049023, 29.072292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022621, 30.019337, 29.737680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643885, 30.104656, 29.834011>,  <29.416643, 30.155848, 29.891809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643885, 30.104656, 29.834011>,  <30.022621, 30.019337, 29.737680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643885, 30.104656, 29.834011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058304, -0.622423, 0.780506,
		0.316375, 0.753056, 0.576900,
		-0.946841, 0.213297, 0.240825,
		29.359833, 30.168646, 29.906260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969019, 30.193781, 30.572590>,  <30.022621, 30.019337, 29.737680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969019, 30.193781, 30.572590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610960, 30.068489, 30.445721>,  <29.396124, 29.993315, 30.369598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610960, 30.068489, 30.445721>,  <29.969019, 30.193781, 30.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610960, 30.068489, 30.445721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094587, -0.561854, 0.821811,
		-0.435620, 0.765643, 0.473315,
		-0.895147, -0.313227, -0.317175,
		29.342415, 29.974522, 30.350569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512005, 30.137882, 31.149193>,  <29.969019, 30.193781, 30.572590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512005, 30.137882, 31.149193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347418, 29.913628, 30.861755>,  <29.248665, 29.779074, 30.689293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347418, 29.913628, 30.861755>,  <29.512005, 30.137882, 31.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347418, 29.913628, 30.861755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177983, -0.723827, 0.666631,
		-0.893877, 0.402195, 0.198047,
		-0.411468, -0.560637, -0.718596,
		29.223978, 29.745436, 30.646177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961786, 29.922831, 31.430643>,  <29.512005, 30.137882, 31.149193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961786, 29.922831, 31.430643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995373, 29.674717, 31.118694>,  <29.015524, 29.525848, 30.931524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995373, 29.674717, 31.118694>,  <28.961786, 29.922831, 31.430643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995373, 29.674717, 31.118694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422408, -0.730995, 0.535928,
		-0.902508, 0.284424, -0.323391,
		0.083967, -0.620282, -0.779871,
		29.020563, 29.488632, 30.884733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357506, 29.564625, 31.446432>,  <28.961786, 29.922831, 31.430643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357506, 29.564625, 31.446432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619890, 29.348293, 31.235825>,  <28.777321, 29.218494, 31.109461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619890, 29.348293, 31.235825>,  <28.357506, 29.564625, 31.446432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619890, 29.348293, 31.235825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269592, -0.819426, 0.505828,
		-0.705008, -0.189858, -0.683313,
		0.655960, -0.540828, -0.526518,
		28.816679, 29.186045, 31.077869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047949, 28.949575, 31.290232>,  <28.357506, 29.564625, 31.446432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047949, 28.949575, 31.290232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430607, 28.844749, 31.239391>,  <28.660202, 28.781855, 31.208887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430607, 28.844749, 31.239391>,  <28.047949, 28.949575, 31.290232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430607, 28.844749, 31.239391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189365, -0.891189, 0.412217,
		-0.221298, -0.370277, -0.902177,
		0.956644, -0.262064, -0.127100,
		28.717600, 28.766130, 31.201262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031305, 28.265261, 31.105299>,  <28.047949, 28.949575, 31.290232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031305, 28.265261, 31.105299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402245, 28.330826, 31.239853>,  <28.624809, 28.370165, 31.320585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402245, 28.330826, 31.239853>,  <28.031305, 28.265261, 31.105299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402245, 28.330826, 31.239853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044546, -0.844208, 0.534161,
		0.371535, -0.510338, -0.775574,
		0.927349, 0.163911, 0.336387,
		28.680449, 28.379999, 31.340769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283779, 27.607164, 30.944748>,  <28.031305, 28.265261, 31.105299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283779, 27.607164, 30.944748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495781, 27.795670, 31.226742>,  <28.622982, 27.908773, 31.395939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495781, 27.795670, 31.226742>,  <28.283779, 27.607164, 30.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495781, 27.795670, 31.226742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200790, -0.877457, 0.435605,
		0.823879, -0.089320, -0.559683,
		0.530007, 0.471265, 0.704984,
		28.654783, 27.937050, 31.438236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988894, 27.276733, 30.981705>,  <28.283779, 27.607164, 30.944748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988894, 27.276733, 30.981705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932899, 27.469822, 31.327511>,  <28.899303, 27.585674, 31.534994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932899, 27.469822, 31.327511>,  <28.988894, 27.276733, 30.981705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932899, 27.469822, 31.327511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048448, -0.868726, 0.492918,
		0.988968, 0.110885, 0.098222,
		-0.139985, 0.482721, 0.864514,
		28.890903, 27.614637, 31.586864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406488, 26.908165, 31.456804>,  <28.988894, 27.276733, 30.981705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406488, 26.908165, 31.456804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155254, 27.117756, 31.686920>,  <29.004513, 27.243509, 31.824989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.155254, 27.117756, 31.686920>,  <29.406488, 26.908165, 31.456804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155254, 27.117756, 31.686920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260042, -0.838141, 0.479476,
		0.733407, 0.151554, 0.662681,
		-0.628087, 0.523976, 0.575288,
		28.966827, 27.274948, 31.859507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672903, 26.828016, 32.207142>,  <29.406488, 26.908165, 31.456804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672903, 26.828016, 32.207142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284124, 26.922096, 32.207050>,  <29.050858, 26.978544, 32.206993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284124, 26.922096, 32.207050>,  <29.672903, 26.828016, 32.207142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284124, 26.922096, 32.207050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207926, -0.858783, 0.468251,
		0.109931, 0.455164, 0.883595,
		-0.971948, 0.235198, -0.000233,
		28.992540, 26.992655, 32.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446434, 26.811834, 33.010067>,  <29.672903, 26.828016, 32.207142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446434, 26.811834, 33.010067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112591, 26.788040, 32.791019>,  <28.912285, 26.773764, 32.659592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112591, 26.788040, 32.791019>,  <29.446434, 26.811834, 33.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112591, 26.788040, 32.791019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342783, -0.722122, 0.600865,
		-0.431190, 0.689203, 0.582301,
		-0.834610, -0.059484, -0.547620,
		28.862207, 26.770195, 32.626732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946266, 26.839050, 33.515522>,  <29.446434, 26.811834, 33.010067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946266, 26.839050, 33.515522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758902, 26.704922, 33.188560>,  <28.646482, 26.624445, 32.992382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758902, 26.704922, 33.188560>,  <28.946266, 26.839050, 33.515522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758902, 26.704922, 33.188560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450675, -0.705077, 0.547503,
		-0.759922, 0.624840, 0.179145,
		-0.468413, -0.335324, -0.817403,
		28.618378, 26.604324, 32.943340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214758, 26.683720, 33.752228>,  <28.946266, 26.839050, 33.515522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214758, 26.683720, 33.752228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246428, 26.470913, 33.415020>,  <28.265429, 26.343229, 33.212696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246428, 26.470913, 33.415020>,  <28.214758, 26.683720, 33.752228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246428, 26.470913, 33.415020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268947, -0.825719, 0.495839,
		-0.959896, 0.187472, -0.208458,
		0.079171, -0.532018, -0.843024,
		28.270180, 26.311308, 33.162113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534552, 26.320709, 33.573109>,  <28.214758, 26.683720, 33.752228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534552, 26.320709, 33.573109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821840, 26.109032, 33.392391>,  <27.994213, 25.982025, 33.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821840, 26.109032, 33.392391>,  <27.534552, 26.320709, 33.573109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821840, 26.109032, 33.392391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376907, -0.841671, 0.386692,
		-0.584892, -0.107448, -0.803963,
		0.718222, -0.529192, -0.451789,
		28.037306, 25.950274, 33.256855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192522, 25.881416, 33.210812>,  <27.534552, 26.320709, 33.573109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192522, 25.881416, 33.210812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557232, 25.717148, 33.209324>,  <27.776058, 25.618587, 33.208431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557232, 25.717148, 33.209324>,  <27.192522, 25.881416, 33.210812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557232, 25.717148, 33.209324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347605, -0.776525, 0.525528,
		-0.218710, -0.477870, -0.850768,
		0.911777, -0.410670, -0.003724,
		27.830765, 25.593946, 33.208206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072588, 25.206970, 32.914265>,  <27.192522, 25.881416, 33.210812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072588, 25.206970, 32.914265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388353, 25.221588, 33.159374>,  <27.577812, 25.230358, 33.306438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388353, 25.221588, 33.159374>,  <27.072588, 25.206970, 32.914265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388353, 25.221588, 33.159374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366818, -0.772320, 0.518620,
		0.492207, -0.634182, -0.596276,
		0.789415, 0.036544, 0.612771,
		27.625177, 25.232552, 33.343204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225304, 24.604570, 32.966167>,  <27.072588, 25.206970, 32.914265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225304, 24.604570, 32.966167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396278, 24.779358, 33.282738>,  <27.498863, 24.884232, 33.472679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396278, 24.779358, 33.282738>,  <27.225304, 24.604570, 32.966167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396278, 24.779358, 33.282738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407753, -0.688141, 0.600166,
		0.806867, -0.579240, -0.115962,
		0.427438, 0.436970, 0.791425,
		27.524509, 24.910448, 33.520164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794601, 24.159754, 32.444023>,  <27.225304, 24.604570, 32.966167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794601, 24.159754, 32.444023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806498, 23.879944, 32.158428>,  <26.813635, 23.712059, 31.987070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806498, 23.879944, 32.158428>,  <26.794601, 24.159754, 32.444023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806498, 23.879944, 32.158428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497246, 0.630004, -0.596524,
		0.867100, -0.337288, 0.366573,
		0.029742, -0.699523, -0.713991,
		26.815420, 23.670088, 31.944231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484726, 24.124601, 32.166149>,  <26.794601, 24.159754, 32.444023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484726, 24.124601, 32.166149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224426, 24.000381, 31.888996>,  <27.068247, 23.925850, 31.722706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224426, 24.000381, 31.888996>,  <27.484726, 24.124601, 32.166149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224426, 24.000381, 31.888996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439448, 0.590127, -0.677227,
		0.619201, -0.745190, -0.247553,
		-0.650750, -0.310553, -0.692879,
		27.029202, 23.907215, 31.681133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917963, 24.095520, 31.611542>,  <27.484726, 24.124601, 32.166149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917963, 24.095520, 31.611542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550951, 24.106956, 31.452888>,  <27.330744, 24.113817, 31.357697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550951, 24.106956, 31.452888>,  <27.917963, 24.095520, 31.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550951, 24.106956, 31.452888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350313, 0.530130, -0.772168,
		0.188190, -0.847434, -0.496426,
		-0.917532, 0.028590, -0.396632,
		27.275692, 24.115534, 31.333899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996195, 23.803846, 31.021345>,  <27.917963, 24.095520, 31.611542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996195, 23.803846, 31.021345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670946, 24.035118, 30.994373>,  <27.475798, 24.173882, 30.978191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670946, 24.035118, 30.994373>,  <27.996195, 23.803846, 31.021345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670946, 24.035118, 30.994373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399514, 0.470072, -0.787033,
		-0.423349, -0.666890, -0.613215,
		-0.813120, 0.578178, -0.067427,
		27.427010, 24.208572, 30.974146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828781, 23.777935, 30.345860>,  <27.996195, 23.803846, 31.021345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828781, 23.777935, 30.345860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614006, 24.096397, 30.457455>,  <27.485142, 24.287476, 30.524412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614006, 24.096397, 30.457455>,  <27.828781, 23.777935, 30.345860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614006, 24.096397, 30.457455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360269, 0.515429, -0.777521,
		-0.762827, -0.316970, -0.563583,
		-0.536938, 0.796155, 0.278989,
		27.452925, 24.335243, 30.541151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564400, 23.996397, 29.735832>,  <27.828781, 23.777935, 30.345860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564400, 23.996397, 29.735832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547234, 24.297775, 29.998276>,  <27.536934, 24.478601, 30.155743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547234, 24.297775, 29.998276>,  <27.564400, 23.996397, 29.735832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547234, 24.297775, 29.998276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221893, 0.647500, -0.729045,
		-0.974126, 0.114299, -0.194971,
		-0.042915, 0.753445, 0.656109,
		27.534359, 24.523809, 30.195108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184208, 24.460539, 29.372049>,  <27.564400, 23.996397, 29.735832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184208, 24.460539, 29.372049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402063, 24.647881, 29.650333>,  <27.532776, 24.760286, 29.817305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402063, 24.647881, 29.650333>,  <27.184208, 24.460539, 29.372049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402063, 24.647881, 29.650333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003012, 0.828442, -0.560067,
		-0.838666, 0.307129, 0.449791,
		0.544638, 0.468354, 0.695711,
		27.565454, 24.788387, 29.859047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725636, 25.086979, 29.380835>,  <27.184208, 24.460539, 29.372049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725636, 25.086979, 29.380835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075293, 25.170044, 29.556446>,  <27.285088, 25.219883, 29.661814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075293, 25.170044, 29.556446>,  <26.725636, 25.086979, 29.380835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075293, 25.170044, 29.556446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052566, 0.939118, -0.339549,
		-0.482812, 0.273737, 0.831842,
		0.874145, 0.207665, 0.439029,
		27.337536, 25.232344, 29.688154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691763, 25.761566, 29.645926>,  <26.725636, 25.086979, 29.380835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691763, 25.761566, 29.645926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082146, 25.684532, 29.605095>,  <27.316376, 25.638311, 29.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082146, 25.684532, 29.605095>,  <26.691763, 25.761566, 29.645926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082146, 25.684532, 29.605095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152506, 0.937934, -0.311483,
		0.155727, 0.288427, 0.944753,
		0.975956, -0.192587, -0.102075,
		27.374933, 25.626757, 29.574472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108141, 26.339611, 29.860645>,  <26.691763, 25.761566, 29.645926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108141, 26.339611, 29.860645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356005, 26.136681, 29.621098>,  <27.504723, 26.014923, 29.477369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356005, 26.136681, 29.621098>,  <27.108141, 26.339611, 29.860645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356005, 26.136681, 29.621098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248762, 0.850626, -0.463198,
		0.744406, 0.138048, 0.653301,
		0.619658, -0.507324, -0.598870,
		27.541903, 25.984484, 29.441437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747314, 26.598331, 29.944345>,  <27.108141, 26.339611, 29.860645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747314, 26.598331, 29.944345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734234, 26.430775, 29.581367>,  <27.726385, 26.330240, 29.363581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734234, 26.430775, 29.581367>,  <27.747314, 26.598331, 29.944345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734234, 26.430775, 29.581367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259196, 0.873315, -0.412478,
		0.965271, -0.248696, 0.080016,
		-0.032702, -0.418893, -0.907446,
		27.724422, 26.305107, 29.309134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237759, 26.947996, 29.653896>,  <27.747314, 26.598331, 29.944345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237759, 26.947996, 29.653896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079245, 26.785812, 29.324398>,  <27.984137, 26.688501, 29.126699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079245, 26.785812, 29.324398>,  <28.237759, 26.947996, 29.653896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079245, 26.785812, 29.324398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346640, 0.764728, -0.543169,
		0.850176, -0.500794, -0.162502,
		-0.396286, -0.405459, -0.823748,
		27.960360, 26.664175, 29.077274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673271, 26.795502, 29.130259>,  <28.237759, 26.947996, 29.653896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673271, 26.795502, 29.130259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371679, 26.788536, 28.867592>,  <28.190723, 26.784357, 28.709991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371679, 26.788536, 28.867592>,  <28.673271, 26.795502, 29.130259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371679, 26.788536, 28.867592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485061, 0.659355, -0.574427,
		0.442979, -0.751630, -0.488694,
		-0.753980, -0.017413, -0.656667,
		28.145485, 26.783312, 28.670591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098402, 26.832317, 28.500174>,  <28.673271, 26.795502, 29.130259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098402, 26.832317, 28.500174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720037, 26.926762, 28.411175>,  <28.493019, 26.983429, 28.357777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720037, 26.926762, 28.411175>,  <29.098402, 26.832317, 28.500174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720037, 26.926762, 28.411175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322026, 0.766604, -0.555534,
		0.039397, -0.597134, -0.801173,
		-0.945911, 0.236113, -0.222495,
		28.436264, 26.997595, 28.344427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096565, 27.068163, 27.861362>,  <29.098402, 26.832317, 28.500174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096565, 27.068163, 27.861362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760071, 27.234360, 27.999744>,  <28.558174, 27.334078, 28.082773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760071, 27.234360, 27.999744>,  <29.096565, 27.068163, 27.861362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760071, 27.234360, 27.999744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135613, 0.781564, -0.608906,
		-0.523381, -0.465319, -0.713828,
		-0.841238, 0.415494, 0.345953,
		28.507700, 27.359009, 28.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704683, 27.220469, 27.279583>,  <29.096565, 27.068163, 27.861362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704683, 27.220469, 27.279583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597960, 27.466251, 27.576569>,  <28.533926, 27.613722, 27.754761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597960, 27.466251, 27.576569>,  <28.704683, 27.220469, 27.279583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597960, 27.466251, 27.576569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082156, 0.782088, -0.617728,
		-0.960241, -0.103818, -0.259150,
		-0.266809, 0.614459, 0.742464,
		28.517918, 27.650589, 27.799309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146679, 27.695911, 27.074947>,  <28.704683, 27.220469, 27.279583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146679, 27.695911, 27.074947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328123, 27.857193, 27.392857>,  <28.436991, 27.953962, 27.583601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328123, 27.857193, 27.392857>,  <28.146679, 27.695911, 27.074947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328123, 27.857193, 27.392857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134036, 0.850790, -0.508124,
		-0.881062, 0.337020, 0.331885,
		0.453612, 0.403204, 0.794772,
		28.464207, 27.978155, 27.631289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869452, 28.256990, 27.053589>,  <28.146679, 27.695911, 27.074947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869452, 28.256990, 27.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119503, 28.361855, 27.347660>,  <28.269533, 28.424772, 27.524103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119503, 28.361855, 27.347660>,  <27.869452, 28.256990, 27.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119503, 28.361855, 27.347660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042585, 0.929048, -0.367501,
		-0.779359, 0.261043, 0.569610,
		0.625128, 0.262158, 0.735179,
		28.307041, 28.440502, 27.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560835, 28.868809, 27.542591>,  <27.869452, 28.256990, 27.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560835, 28.868809, 27.542591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960203, 28.857792, 27.562176>,  <28.199823, 28.851181, 27.573927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960203, 28.857792, 27.562176>,  <27.560835, 28.868809, 27.542591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960203, 28.857792, 27.562176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038572, 0.969749, -0.241039,
		-0.040840, 0.242547, 0.969280,
		0.998421, -0.027543, 0.048960,
		28.259729, 28.849529, 27.576864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769770, 29.499462, 27.888948>,  <27.560835, 28.868809, 27.542591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769770, 29.499462, 27.888948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079262, 29.362453, 27.675774>,  <28.264957, 29.280249, 27.547869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079262, 29.362453, 27.675774>,  <27.769770, 29.499462, 27.888948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079262, 29.362453, 27.675774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075733, 0.885213, -0.458979,
		0.628973, 0.314765, 0.710856,
		0.773730, -0.342521, -0.532937,
		28.311380, 29.259697, 27.515892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203342, 30.069538, 27.908007>,  <27.769770, 29.499462, 27.888948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203342, 30.069538, 27.908007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330248, 29.845852, 27.601643>,  <28.406391, 29.711639, 27.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330248, 29.845852, 27.601643>,  <28.203342, 30.069538, 27.908007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330248, 29.845852, 27.601643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085705, 0.821238, -0.564112,
		0.944456, 0.113331, 0.308478,
		0.317265, -0.559218, -0.765910,
		28.425426, 29.678087, 27.371870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686390, 30.533428, 27.722046>,  <28.203342, 30.069538, 27.908007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686390, 30.533428, 27.722046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634542, 30.287983, 27.410488>,  <28.603434, 30.140717, 27.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634542, 30.287983, 27.410488>,  <28.686390, 30.533428, 27.722046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634542, 30.287983, 27.410488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133322, 0.767605, -0.626903,
		0.982560, -0.185101, -0.017686,
		-0.129616, -0.613612, -0.778896,
		28.595657, 30.103899, 27.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190617, 30.648331, 27.332033>,  <28.686390, 30.533428, 27.722046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190617, 30.648331, 27.332033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921019, 30.476112, 27.091911>,  <28.759260, 30.372782, 26.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.921019, 30.476112, 27.091911>,  <29.190617, 30.648331, 27.332033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921019, 30.476112, 27.091911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280239, 0.602857, -0.747014,
		0.683521, -0.671710, -0.285665,
		-0.673992, -0.430545, -0.600305,
		28.718821, 30.346949, 26.911819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436699, 30.573410, 26.616714>,  <29.190617, 30.648331, 27.332033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436699, 30.573410, 26.616714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041553, 30.555401, 26.557247>,  <28.804466, 30.544596, 26.521566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041553, 30.555401, 26.557247>,  <29.436699, 30.573410, 26.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041553, 30.555401, 26.557247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079195, 0.677380, -0.731358,
		0.133633, -0.734255, -0.665592,
		-0.987861, -0.045021, -0.148670,
		28.745195, 30.541895, 26.512646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443619, 30.687469, 25.908888>,  <29.436699, 30.573410, 26.616714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443619, 30.687469, 25.908888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062687, 30.725368, 26.024883>,  <28.834127, 30.748108, 26.094481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062687, 30.725368, 26.024883>,  <29.443619, 30.687469, 25.908888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062687, 30.725368, 26.024883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120107, 0.757347, -0.641873,
		-0.280439, -0.646103, -0.709863,
		-0.952328, 0.094747, 0.289991,
		28.776989, 30.753792, 26.111881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915047, 30.537613, 25.359081>,  <29.443619, 30.687469, 25.908888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915047, 30.537613, 25.359081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764362, 30.816341, 25.603222>,  <28.673952, 30.983578, 25.749706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764362, 30.816341, 25.603222>,  <28.915047, 30.537613, 25.359081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764362, 30.816341, 25.603222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160230, 0.599945, -0.783832,
		-0.912368, -0.393075, -0.114355,
		-0.376711, 0.696820, 0.610353,
		28.651348, 31.025387, 25.786327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318405, 30.705475, 25.042450>,  <28.915047, 30.537613, 25.359081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318405, 30.705475, 25.042450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381489, 31.013802, 25.289341>,  <28.419338, 31.198797, 25.437475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381489, 31.013802, 25.289341>,  <28.318405, 30.705475, 25.042450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381489, 31.013802, 25.289341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426798, 0.616861, -0.661306,
		-0.890489, -0.159140, 0.426266,
		0.157707, 0.770815, 0.617229,
		28.428801, 31.245047, 25.474510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693010, 31.108095, 24.964663>,  <28.318405, 30.705475, 25.042450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693010, 31.108095, 24.964663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964500, 31.361156, 25.113838>,  <28.127394, 31.512993, 25.203344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964500, 31.361156, 25.113838>,  <27.693010, 31.108095, 24.964663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964500, 31.361156, 25.113838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389894, 0.740759, -0.547045,
		-0.622349, 0.225886, 0.749438,
		0.678723, 0.632654, 0.372939,
		28.168118, 31.550953, 25.225719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338636, 31.767162, 25.088917>,  <27.693010, 31.108095, 24.964663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338636, 31.767162, 25.088917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721828, 31.881485, 25.098579>,  <27.951744, 31.950079, 25.104376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721828, 31.881485, 25.098579>,  <27.338636, 31.767162, 25.088917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721828, 31.881485, 25.098579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204528, 0.739724, -0.641074,
		-0.201093, 0.609197, 0.767099,
		0.957982, 0.285809, 0.024155,
		28.009224, 31.967228, 25.105825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334490, 32.471703, 25.096180>,  <27.338636, 31.767162, 25.088917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334490, 32.471703, 25.096180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702438, 32.388805, 24.962982>,  <27.923208, 32.339066, 24.883062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702438, 32.388805, 24.962982>,  <27.334490, 32.471703, 25.096180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702438, 32.388805, 24.962982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041443, 0.792891, -0.607953,
		0.390026, 0.573039, 0.720768,
		0.919871, -0.207246, -0.332996,
		27.978399, 32.326633, 24.863083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630058, 33.135166, 25.088694>,  <27.334490, 32.471703, 25.096180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630058, 33.135166, 25.088694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847578, 32.892685, 24.856556>,  <27.978090, 32.747196, 24.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847578, 32.892685, 24.856556>,  <27.630058, 33.135166, 25.088694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847578, 32.892685, 24.856556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071160, 0.722351, -0.687856,
		0.836192, 0.332759, 0.435952,
		0.543800, -0.606202, -0.580345,
		28.010717, 32.710823, 24.682453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135719, 33.565323, 24.764912>,  <27.630058, 33.135166, 25.088694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135719, 33.565323, 24.764912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146811, 33.225971, 24.553444>,  <28.153465, 33.022362, 24.426563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146811, 33.225971, 24.553444>,  <28.135719, 33.565323, 24.764912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146811, 33.225971, 24.553444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027042, 0.529315, -0.847994,
		0.999250, 0.009215, 0.037618,
		0.027726, -0.848375, -0.528669,
		28.155128, 32.971458, 24.394844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714863, 33.663460, 24.296350>,  <28.135719, 33.565323, 24.764912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714863, 33.663460, 24.296350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492504, 33.374985, 24.131008>,  <28.359089, 33.201900, 24.031803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492504, 33.374985, 24.131008>,  <28.714863, 33.663460, 24.296350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492504, 33.374985, 24.131008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147625, 0.403713, -0.902897,
		0.818038, -0.562938, -0.117957,
		-0.555896, -0.721191, -0.413357,
		28.325735, 33.158627, 24.007002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022243, 33.634323, 23.592505>,  <28.714863, 33.663460, 24.296350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022243, 33.634323, 23.592505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663992, 33.456406, 23.591492>,  <28.449041, 33.349655, 23.590883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663992, 33.456406, 23.591492>,  <29.022243, 33.634323, 23.592505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663992, 33.456406, 23.591492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144722, 0.296788, -0.943913,
		0.420600, -0.845029, -0.330184,
		-0.895629, -0.444794, -0.002535,
		28.395304, 33.322968, 23.590731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033020, 33.152729, 23.011221>,  <29.022243, 33.634323, 23.592505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033020, 33.152729, 23.011221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652273, 33.248741, 23.087471>,  <28.423826, 33.306347, 23.133221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652273, 33.248741, 23.087471>,  <29.033020, 33.152729, 23.011221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652273, 33.248741, 23.087471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041808, 0.514420, -0.856519,
		-0.303652, -0.823260, -0.479623,
		-0.951865, 0.240032, 0.190624,
		28.366714, 33.320751, 23.144659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790773, 33.192757, 22.393307>,  <29.033020, 33.152729, 23.011221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790773, 33.192757, 22.393307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474224, 33.346218, 22.583691>,  <28.284294, 33.438293, 22.697922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.474224, 33.346218, 22.583691>,  <28.790773, 33.192757, 22.393307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474224, 33.346218, 22.583691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139682, 0.644489, -0.751746,
		-0.595163, -0.661395, -0.456441,
		-0.791372, 0.383655, 0.475961,
		28.236813, 33.461315, 22.726479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197248, 33.150387, 21.984667>,  <28.790773, 33.192757, 22.393307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197248, 33.150387, 21.984667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056604, 33.437927, 22.224541>,  <27.972218, 33.610451, 22.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056604, 33.437927, 22.224541>,  <28.197248, 33.150387, 21.984667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056604, 33.437927, 22.224541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241620, 0.549199, -0.800000,
		-0.904428, -0.426183, -0.019414,
		-0.351609, 0.718852, 0.599686,
		27.951122, 33.653584, 22.404446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406639, 33.301468, 21.940905>,  <28.197248, 33.150387, 21.984667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406639, 33.301468, 21.940905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593405, 33.635788, 22.056442>,  <27.705463, 33.836380, 22.125765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593405, 33.635788, 22.056442>,  <27.406639, 33.301468, 21.940905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593405, 33.635788, 22.056442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439908, 0.502884, -0.744035,
		-0.767120, 0.220334, 0.602478,
		0.466913, 0.835799, 0.288846,
		27.733479, 33.886528, 22.143097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879114, 33.850662, 22.084431>,  <27.406639, 33.301468, 21.940905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879114, 33.850662, 22.084431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236832, 33.979855, 21.960548>,  <27.451462, 34.057369, 21.886219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236832, 33.979855, 21.960548>,  <26.879114, 33.850662, 22.084431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236832, 33.979855, 21.960548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404066, 0.285492, -0.869037,
		-0.192264, 0.902318, 0.385820,
		0.894296, 0.322982, -0.309706,
		27.505121, 34.076748, 21.867636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836851, 34.566769, 21.837801>,  <26.879114, 33.850662, 22.084431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836851, 34.566769, 21.837801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143606, 34.361294, 21.683910>,  <27.327660, 34.238010, 21.591576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143606, 34.361294, 21.683910>,  <26.836851, 34.566769, 21.837801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143606, 34.361294, 21.683910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323860, 0.207791, -0.923005,
		0.554074, 0.832438, -0.007008,
		0.766888, -0.513682, -0.384725,
		27.373672, 34.207188, 21.568493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228081, 34.407558, 21.404242>,  <26.836851, 34.566769, 21.837801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228081, 34.407558, 21.404242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216503, 34.582279, 21.763878>,  <26.209557, 34.687111, 21.979660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.216503, 34.582279, 21.763878>,  <26.228081, 34.407558, 21.404242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.216503, 34.582279, 21.763878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420262, -0.821425, 0.385540,
		0.906941, -0.366694, 0.207349,
		-0.028946, 0.436803, 0.899091,
		26.207819, 34.713322, 22.033606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548862, 34.163132, 21.161295>,  <26.228081, 34.407558, 21.404242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548862, 34.163132, 21.161295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511858, 33.764851, 21.163074>,  <25.489655, 33.525883, 21.164143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511858, 33.764851, 21.163074>,  <25.548862, 34.163132, 21.161295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511858, 33.764851, 21.163074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843536, 0.080747, 0.530967,
		-0.529044, 0.045366, -0.847381,
		-0.092511, -0.995701, 0.004451,
		25.484104, 33.466141, 21.164410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294153, 34.902805, 21.055590>,  <25.548862, 34.163132, 21.161295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294153, 34.902805, 21.055590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994461, 35.027359, 20.821774>,  <24.814646, 35.102093, 20.681484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994461, 35.027359, 20.821774>,  <25.294153, 34.902805, 21.055590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994461, 35.027359, 20.821774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659331, -0.267090, 0.702813,
		0.062721, 0.911977, 0.405419,
		-0.749232, 0.311387, -0.584542,
		24.769691, 35.120773, 20.646410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915155, 35.334721, 21.443771>,  <25.294153, 34.902805, 21.055590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915155, 35.334721, 21.443771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646614, 35.254436, 21.158394>,  <24.485489, 35.206264, 20.987167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646614, 35.254436, 21.158394>,  <24.915155, 35.334721, 21.443771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646614, 35.254436, 21.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706970, -0.115486, 0.697751,
		-0.222439, 0.972819, -0.064366,
		-0.671353, -0.200712, -0.713442,
		24.445208, 35.194221, 20.944361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.282068, 35.709454, 21.635252>,  <24.915155, 35.334721, 21.443771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.282068, 35.709454, 21.635252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188562, 35.404495, 21.393887>,  <24.132460, 35.221519, 21.249067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188562, 35.404495, 21.393887>,  <24.282068, 35.709454, 21.635252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188562, 35.404495, 21.393887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788450, -0.214516, 0.576480,
		-0.568948, 0.610522, -0.550964,
		-0.233763, -0.762394, -0.603415,
		24.118433, 35.175777, 21.212862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778694, 35.422657, 22.104919>,  <24.282068, 35.709454, 21.635252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778694, 35.422657, 22.104919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721369, 35.259499, 21.744236>,  <23.686974, 35.161602, 21.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721369, 35.259499, 21.744236>,  <23.778694, 35.422657, 22.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721369, 35.259499, 21.744236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906962, -0.310510, 0.284610,
		-0.396081, 0.858606, -0.325445,
		-0.143313, -0.407895, -0.901711,
		23.678375, 35.137131, 21.473722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.051928, 35.957500, 22.340975>,  <23.778694, 35.422657, 22.104919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.051928, 35.957500, 22.340975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743355, 36.192039, 22.439838>,  <22.558210, 36.332764, 22.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743355, 36.192039, 22.439838>,  <23.051928, 35.957500, 22.340975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.743355, 36.192039, 22.439838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468088, -0.259809, -0.844626,
		-0.431032, -0.767264, 0.474888,
		-0.771431, 0.586350, 0.247161,
		22.511925, 36.367943, 22.513987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261194, 35.649857, 22.562159>,  <23.051928, 35.957500, 22.340975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261194, 35.649857, 22.562159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.253967, 36.000984, 22.370697>,  <22.249632, 36.211662, 22.255821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.253967, 36.000984, 22.370697>,  <22.261194, 35.649857, 22.562159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.253967, 36.000984, 22.370697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559254, -0.405709, -0.722935,
		-0.828799, 0.254627, 0.498254,
		-0.018068, 0.877818, -0.478653,
		22.248547, 36.264328, 22.227100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.624910, 35.640694, 22.159752>,  <22.261194, 35.649857, 22.562159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.624910, 35.640694, 22.159752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814075, 35.956718, 22.003727>,  <21.927574, 36.146336, 21.910112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.814075, 35.956718, 22.003727>,  <21.624910, 35.640694, 22.159752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.814075, 35.956718, 22.003727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552261, -0.079165, -0.829904,
		-0.686558, 0.607890, 0.398884,
		0.472913, 0.790065, -0.390065,
		21.955950, 36.193737, 21.886707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071396, 36.118877, 21.830563>,  <21.624910, 35.640694, 22.159752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071396, 36.118877, 21.830563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424248, 36.165703, 21.648071>,  <21.635960, 36.193798, 21.538576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.424248, 36.165703, 21.648071>,  <21.071396, 36.118877, 21.830563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.424248, 36.165703, 21.648071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378851, -0.399177, -0.834943,
		-0.279857, 0.909370, -0.307776,
		0.882129, 0.117064, -0.456228,
		21.688887, 36.200821, 21.511202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853130, 36.419861, 21.173882>,  <21.071396, 36.118877, 21.830563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853130, 36.419861, 21.173882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224819, 36.289364, 21.104473>,  <21.447832, 36.211063, 21.062828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224819, 36.289364, 21.104473>,  <20.853130, 36.419861, 21.173882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.224819, 36.289364, 21.104473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248869, -0.205410, -0.946505,
		0.273150, 0.922697, -0.272063,
		0.929222, -0.326246, -0.173523,
		21.503586, 36.191490, 21.052416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099360, 36.685749, 20.551081>,  <20.853130, 36.419861, 21.173882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099360, 36.685749, 20.551081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323446, 36.360096, 20.612186>,  <21.457899, 36.164703, 20.648849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323446, 36.360096, 20.612186>,  <21.099360, 36.685749, 20.551081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323446, 36.360096, 20.612186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259141, -0.347419, -0.901191,
		0.786767, 0.465275, -0.405606,
		0.560217, -0.814137, 0.152766,
		21.491512, 36.115856, 20.658016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342812, 36.696800, 19.981102>,  <21.099360, 36.685749, 20.551081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342812, 36.696800, 19.981102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423786, 36.327057, 20.110462>,  <21.472370, 36.105213, 20.188078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423786, 36.327057, 20.110462>,  <21.342812, 36.696800, 19.981102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423786, 36.327057, 20.110462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212810, -0.363867, -0.906815,
		0.955893, 0.114748, -0.270371,
		0.202434, -0.924356, 0.323398,
		21.484516, 36.049751, 20.207481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728090, 36.444313, 19.510258>,  <21.342812, 36.696800, 19.981102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728090, 36.444313, 19.510258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541233, 36.141800, 19.693478>,  <21.429119, 35.960293, 19.803410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541233, 36.141800, 19.693478>,  <21.728090, 36.444313, 19.510258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541233, 36.141800, 19.693478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335354, -0.327792, -0.883227,
		0.818118, -0.566200, -0.100499,
		-0.467141, -0.756286, 0.458050,
		21.401091, 35.914913, 19.830893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889193, 35.835850, 19.170589>,  <21.728090, 36.444313, 19.510258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889193, 35.835850, 19.170589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540411, 35.768421, 19.354450>,  <21.331142, 35.727966, 19.464767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540411, 35.768421, 19.354450>,  <21.889193, 35.835850, 19.170589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540411, 35.768421, 19.354450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351811, -0.437185, -0.827707,
		0.340480, -0.883433, 0.321901,
		-0.871953, -0.168569, 0.459654,
		21.278826, 35.717850, 19.492346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699995, 35.168423, 19.028166>,  <21.889193, 35.835850, 19.170589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699995, 35.168423, 19.028166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342566, 35.315948, 19.130539>,  <21.128107, 35.404465, 19.191963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342566, 35.315948, 19.130539>,  <21.699995, 35.168423, 19.028166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342566, 35.315948, 19.130539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402715, -0.406654, -0.820032,
		-0.198362, -0.835828, 0.511902,
		-0.893573, 0.368814, 0.255935,
		21.074493, 35.426594, 19.207319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.265472, 34.614933, 18.822380>,  <21.699995, 35.168423, 19.028166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.265472, 34.614933, 18.822380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.025434, 34.920757, 18.916477>,  <20.881413, 35.104252, 18.972937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.025434, 34.920757, 18.916477>,  <21.265472, 34.614933, 18.822380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.025434, 34.920757, 18.916477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667273, -0.316254, -0.674337,
		-0.441171, -0.561639, 0.699950,
		-0.600095, 0.764556, 0.235244,
		20.845406, 35.150124, 18.987051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607315, 34.366219, 18.907059>,  <21.265472, 34.614933, 18.822380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607315, 34.366219, 18.907059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.553989, 34.755627, 18.832771>,  <20.521994, 34.989269, 18.788198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.553989, 34.755627, 18.832771>,  <20.607315, 34.366219, 18.907059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.553989, 34.755627, 18.832771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663930, -0.226852, -0.712556,
		-0.735816, 0.028310, 0.676590,
		-0.133313, 0.973518, -0.185717,
		20.513996, 35.047684, 18.777056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783989, 34.477768, 19.042395>,  <20.607315, 34.366219, 18.907059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783989, 34.477768, 19.042395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936041, 34.751472, 18.793465>,  <20.027271, 34.915695, 18.644108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.936041, 34.751472, 18.793465>,  <19.783989, 34.477768, 19.042395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936041, 34.751472, 18.793465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732312, -0.188345, -0.654404,
		-0.564996, 0.704493, 0.429499,
		0.380129, 0.684263, -0.622323,
		20.050079, 34.956753, 18.606768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.241468, 34.937805, 18.836445>,  <19.783989, 34.477768, 19.042395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.241468, 34.937805, 18.836445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515112, 34.998104, 18.550991>,  <19.679298, 35.034283, 18.379719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515112, 34.998104, 18.550991>,  <19.241468, 34.937805, 18.836445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.515112, 34.998104, 18.550991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717748, -0.034914, -0.695428,
		-0.129750, 0.987955, 0.084314,
		0.684108, 0.150748, -0.713633,
		19.720345, 35.043327, 18.336901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894842, 35.358829, 18.330107>,  <19.241468, 34.937805, 18.836445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894842, 35.358829, 18.330107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204165, 35.212349, 18.123074>,  <19.389757, 35.124462, 17.998854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204165, 35.212349, 18.123074>,  <18.894842, 35.358829, 18.330107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204165, 35.212349, 18.123074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594270, -0.134086, -0.793010,
		0.221001, 0.920825, -0.321312,
		0.773306, -0.366201, -0.517585,
		19.436157, 35.102489, 17.967798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885708, 35.678703, 17.713514>,  <18.894842, 35.358829, 18.330107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885708, 35.678703, 17.713514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.123156, 35.383564, 17.585014>,  <19.265623, 35.206482, 17.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.123156, 35.383564, 17.585014>,  <18.885708, 35.678703, 17.713514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.123156, 35.383564, 17.585014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558804, -0.090671, -0.824328,
		0.579100, 0.668850, -0.466136,
		0.593617, -0.737847, -0.321248,
		19.301241, 35.162209, 17.488640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179367, 35.809959, 17.000446>,  <18.885708, 35.678703, 17.713514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179367, 35.809959, 17.000446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214155, 35.411510, 17.005878>,  <19.235027, 35.172443, 17.009138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214155, 35.411510, 17.005878>,  <19.179367, 35.809959, 17.000446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214155, 35.411510, 17.005878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440508, -0.050682, -0.896317,
		0.893526, 0.071970, -0.443206,
		0.086971, -0.996118, 0.013583,
		19.240246, 35.112675, 17.009953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368237, 35.637039, 16.308212>,  <19.179367, 35.809959, 17.000446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368237, 35.637039, 16.308212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.259451, 35.294109, 16.483040>,  <19.194180, 35.088352, 16.587936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.259451, 35.294109, 16.483040>,  <19.368237, 35.637039, 16.308212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259451, 35.294109, 16.483040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413629, -0.305943, -0.857502,
		0.868876, -0.413994, -0.271409,
		-0.271965, -0.857326, 0.437067,
		19.177862, 35.036911, 16.614161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500587, 35.145916, 15.803793>,  <19.368237, 35.637039, 16.308212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500587, 35.145916, 15.803793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216660, 34.993591, 16.040821>,  <19.046303, 34.902195, 16.183039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.216660, 34.993591, 16.040821>,  <19.500587, 35.145916, 15.803793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.216660, 34.993591, 16.040821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509734, -0.302896, -0.805248,
		0.486137, -0.873633, 0.020887,
		-0.709818, -0.380814, 0.592570,
		19.003714, 34.879349, 16.218592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328611, 34.501797, 15.568098>,  <19.500587, 35.145916, 15.803793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328611, 34.501797, 15.568098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006401, 34.608486, 15.779752>,  <18.813074, 34.672501, 15.906744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.006401, 34.608486, 15.779752>,  <19.328611, 34.501797, 15.568098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006401, 34.608486, 15.779752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591203, -0.301383, -0.748096,
		-0.040062, -0.915438, 0.400460,
		-0.805527, 0.266724, 0.529136,
		18.764744, 34.688503, 15.938493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.858660, 34.020752, 15.297320>,  <19.328611, 34.501797, 15.568098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.858660, 34.020752, 15.297320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637810, 34.284153, 15.501882>,  <18.505301, 34.442192, 15.624619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.637810, 34.284153, 15.501882>,  <18.858660, 34.020752, 15.297320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637810, 34.284153, 15.501882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786456, -0.207652, -0.581694,
		-0.276855, -0.723361, 0.632534,
		-0.552122, 0.658505, 0.511402,
		18.472174, 34.481705, 15.655303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138992, 33.661873, 15.235987>,  <18.858660, 34.020752, 15.297320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138992, 33.661873, 15.235987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082424, 34.038502, 15.358262>,  <18.048483, 34.264481, 15.431627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082424, 34.038502, 15.358262>,  <18.138992, 33.661873, 15.235987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082424, 34.038502, 15.358262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825153, 0.058483, -0.561874,
		-0.546922, -0.331699, 0.768669,
		-0.141418, 0.941571, 0.305688,
		18.039999, 34.320972, 15.449968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399742, 33.637081, 15.391366>,  <18.138992, 33.661873, 15.235987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399742, 33.637081, 15.391366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517925, 34.003071, 15.281444>,  <17.588835, 34.222664, 15.215490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.517925, 34.003071, 15.281444>,  <17.399742, 33.637081, 15.391366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.517925, 34.003071, 15.281444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857251, 0.126947, -0.499004,
		-0.421692, 0.383012, 0.821874,
		0.295459, 0.914979, -0.274805,
		17.606564, 34.277565, 15.199002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822069, 33.785088, 14.969960>,  <17.399742, 33.637081, 15.391366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822069, 33.785088, 14.969960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039621, 34.120380, 14.985745>,  <17.170153, 34.321556, 14.995216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039621, 34.120380, 14.985745>,  <16.822069, 33.785088, 14.969960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039621, 34.120380, 14.985745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442622, 0.326508, -0.835152,
		-0.712939, 0.436754, 0.548603,
		0.543879, 0.838235, 0.039463,
		17.202785, 34.371853, 14.997584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381220, 34.313248, 14.858490>,  <16.822069, 33.785088, 14.969960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381220, 34.313248, 14.858490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723145, 34.426056, 14.684243>,  <16.928299, 34.493740, 14.579695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723145, 34.426056, 14.684243>,  <16.381220, 34.313248, 14.858490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723145, 34.426056, 14.684243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516264, 0.377032, -0.768972,
		-0.052624, 0.882220, 0.467888,
		0.854811, 0.282020, -0.435618,
		16.979588, 34.510662, 14.553558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.191978, 34.651283, 14.370169>,  <16.381220, 34.313248, 14.858490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.191978, 34.651283, 14.370169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577291, 34.682274, 14.267339>,  <16.808479, 34.700867, 14.205641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577291, 34.682274, 14.267339>,  <16.191978, 34.651283, 14.370169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577291, 34.682274, 14.267339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262473, 0.473375, -0.840847,
		0.056548, 0.877447, 0.476329,
		0.963281, 0.077475, -0.257074,
		16.866276, 34.705517, 14.190217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418356, 35.369270, 14.199507>,  <16.191978, 34.651283, 14.370169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418356, 35.369270, 14.199507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636961, 35.098545, 14.002227>,  <16.768124, 34.936108, 13.883859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.636961, 35.098545, 14.002227>,  <16.418356, 35.369270, 14.199507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636961, 35.098545, 14.002227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301221, 0.390646, -0.869863,
		0.781403, 0.623952, 0.009622,
		0.546512, -0.676815, -0.493200,
		16.800915, 34.895500, 13.854267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083632, 35.731342, 14.726407>,  <16.418356, 35.369270, 14.199507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.083632, 35.731342, 14.726407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842648, 36.048923, 14.693713>,  <15.698057, 36.239471, 14.674097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.842648, 36.048923, 14.693713>,  <16.083632, 35.731342, 14.726407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.842648, 36.048923, 14.693713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348062, 0.353496, 0.868270,
		0.718260, 0.494648, -0.489312,
		-0.602458, 0.793955, -0.081734,
		15.661910, 36.287109, 14.669193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497923, 36.335712, 14.749373>,  <16.083632, 35.731342, 14.726407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497923, 36.335712, 14.749373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124960, 36.305664, 14.890782>,  <15.901183, 36.287636, 14.975628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124960, 36.305664, 14.890782>,  <16.497923, 36.335712, 14.749373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124960, 36.305664, 14.890782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323806, 0.260842, 0.909457,
		-0.160531, 0.962455, -0.218886,
		-0.932405, -0.075120, 0.353522,
		15.845239, 36.283127, 14.996839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433558, 36.899029, 15.288108>,  <16.497923, 36.335712, 14.749373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433558, 36.899029, 15.288108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158396, 36.610546, 15.320733>,  <15.993299, 36.437458, 15.340308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158396, 36.610546, 15.320733>,  <16.433558, 36.899029, 15.288108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158396, 36.610546, 15.320733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093756, 0.023137, 0.995326,
		-0.719722, 0.692334, 0.051701,
		-0.687902, -0.721206, 0.081563,
		15.952025, 36.394184, 15.345202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830947, 37.084526, 15.693495>,  <16.433558, 36.899029, 15.288108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830947, 37.084526, 15.693495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922745, 36.695393, 15.705625>,  <15.977823, 36.461910, 15.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.922745, 36.695393, 15.705625>,  <15.830947, 37.084526, 15.693495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922745, 36.695393, 15.705625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232564, 0.085062, 0.968854,
		-0.945117, -0.215294, 0.245768,
		0.229494, -0.972838, 0.030324,
		15.991593, 36.403542, 15.714722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711351, 37.638355, 16.150166>,  <15.830947, 37.084526, 15.693495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711351, 37.638355, 16.150166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030390, 37.401741, 16.102955>,  <16.221813, 37.259773, 16.074629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030390, 37.401741, 16.102955>,  <15.711351, 37.638355, 16.150166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030390, 37.401741, 16.102955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140011, -0.008774, 0.990111,
		-0.586720, -0.806233, 0.075823,
		0.797595, -0.591534, -0.118029,
		16.269669, 37.224281, 16.067547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756377, 37.133495, 16.637449>,  <15.711351, 37.638355, 16.150166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756377, 37.133495, 16.637449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.137650, 37.180439, 16.525970>,  <16.366413, 37.208607, 16.459084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.137650, 37.180439, 16.525970>,  <15.756377, 37.133495, 16.637449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137650, 37.180439, 16.525970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284740, -0.037984, 0.957852,
		0.101829, -0.992363, -0.069623,
		0.953181, 0.117361, -0.278698,
		16.423603, 37.215649, 16.442362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115891, 36.637314, 17.154758>,  <15.756377, 37.133495, 16.637449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115891, 36.637314, 17.154758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373610, 36.900040, 16.998055>,  <16.528240, 37.057674, 16.904032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373610, 36.900040, 16.998055>,  <16.115891, 36.637314, 17.154758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373610, 36.900040, 16.998055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444494, 0.095241, 0.890704,
		0.622341, -0.748012, -0.230587,
		0.644296, 0.656816, -0.391759,
		16.566898, 37.097084, 16.880527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733770, 36.344505, 17.280016>,  <16.115891, 36.637314, 17.154758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733770, 36.344505, 17.280016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837952, 36.724453, 17.210842>,  <16.900459, 36.952423, 17.169338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837952, 36.724453, 17.210842>,  <16.733770, 36.344505, 17.280016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837952, 36.724453, 17.210842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457370, 0.036357, 0.888533,
		0.850281, -0.310515, -0.424974,
		0.260452, 0.949873, -0.172933,
		16.916088, 37.009415, 17.158962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479090, 36.352303, 17.269331>,  <16.733770, 36.344505, 17.280016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479090, 36.352303, 17.269331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.343946, 36.719097, 17.354179>,  <17.262861, 36.939175, 17.405088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.343946, 36.719097, 17.354179>,  <17.479090, 36.352303, 17.269331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343946, 36.719097, 17.354179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536387, 0.002398, 0.843969,
		0.773396, 0.398921, -0.492667,
		-0.337858, 0.916982, 0.212122,
		17.242590, 36.994190, 17.417816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029388, 36.834515, 17.334463>,  <17.479090, 36.352303, 17.269331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029388, 36.834515, 17.334463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726095, 36.974892, 17.554253>,  <17.544119, 37.059116, 17.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726095, 36.974892, 17.554253>,  <18.029388, 36.834515, 17.334463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.726095, 36.974892, 17.554253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597308, 0.036078, 0.801200,
		0.261352, 0.935701, -0.236977,
		-0.758233, 0.350944, 0.549473,
		17.498625, 37.080173, 17.719095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261911, 37.477539, 17.655941>,  <18.029388, 36.834515, 17.334463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261911, 37.477539, 17.655941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923296, 37.452446, 17.867386>,  <17.720127, 37.437389, 17.994253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.923296, 37.452446, 17.867386>,  <18.261911, 37.477539, 17.655941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923296, 37.452446, 17.867386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522819, 0.088838, 0.847802,
		-0.100148, 0.994069, -0.042406,
		-0.846541, -0.062735, 0.528614,
		17.669334, 37.433624, 18.025970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478149, 37.831669, 18.210598>,  <18.261911, 37.477539, 17.655941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478149, 37.831669, 18.210598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147579, 37.653378, 18.348206>,  <17.949238, 37.546402, 18.430771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147579, 37.653378, 18.348206>,  <18.478149, 37.831669, 18.210598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147579, 37.653378, 18.348206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432455, -0.111217, 0.894770,
		-0.360560, 0.888235, 0.284668,
		-0.826426, -0.445724, 0.344021,
		17.899651, 37.519661, 18.451412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.415970, 38.100071, 18.909525>,  <18.478149, 37.831669, 18.210598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.415970, 38.100071, 18.909525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170227, 37.785488, 18.934998>,  <18.022781, 37.596741, 18.950281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.170227, 37.785488, 18.934998>,  <18.415970, 38.100071, 18.909525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170227, 37.785488, 18.934998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329064, -0.182027, 0.926598,
		-0.717133, 0.590219, 0.370623,
		-0.614359, -0.786453, 0.063682,
		17.985920, 37.549553, 18.954102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039036, 38.137386, 19.541191>,  <18.415970, 38.100071, 18.909525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039036, 38.137386, 19.541191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046564, 37.746109, 19.458454>,  <18.051081, 37.511341, 19.408812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.046564, 37.746109, 19.458454>,  <18.039036, 38.137386, 19.541191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046564, 37.746109, 19.458454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550289, -0.162591, 0.818991,
		-0.834762, -0.129237, 0.535229,
		0.018821, -0.978193, -0.206842,
		18.052210, 37.452652, 19.396402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.642851, 37.787365, 20.051956>,  <18.039036, 38.137386, 19.541191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.642851, 37.787365, 20.051956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886749, 37.506142, 19.905579>,  <18.033089, 37.337406, 19.817753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886749, 37.506142, 19.905579>,  <17.642851, 37.787365, 20.051956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886749, 37.506142, 19.905579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450472, -0.072482, 0.889843,
		-0.652140, -0.707425, 0.272514,
		0.609745, -0.703062, -0.365943,
		18.069674, 37.295223, 19.795795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748884, 37.281281, 20.508400>,  <17.642851, 37.787365, 20.051956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748884, 37.281281, 20.508400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061319, 37.189880, 20.275955>,  <18.248781, 37.135040, 20.136488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061319, 37.189880, 20.275955>,  <17.748884, 37.281281, 20.508400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061319, 37.189880, 20.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591078, -0.029476, 0.806076,
		-0.201322, -0.973096, 0.112041,
		0.781087, -0.228506, -0.581110,
		18.295645, 37.121330, 20.101622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144535, 36.746983, 20.863501>,  <17.748884, 37.281281, 20.508400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144535, 36.746983, 20.863501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406647, 36.913368, 20.611282>,  <18.563913, 37.013199, 20.459951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.406647, 36.913368, 20.611282>,  <18.144535, 36.746983, 20.863501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406647, 36.913368, 20.611282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728059, -0.125286, 0.673969,
		0.201346, -0.900711, -0.384940,
		0.655279, 0.415960, -0.630545,
		18.603230, 37.038155, 20.422119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.811781, 36.299316, 20.824986>,  <18.144535, 36.746983, 20.863501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.811781, 36.299316, 20.824986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915648, 36.670116, 20.716732>,  <18.977968, 36.892597, 20.651779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915648, 36.670116, 20.716732>,  <18.811781, 36.299316, 20.824986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915648, 36.670116, 20.716732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795886, -0.046708, 0.603642,
		0.546936, -0.372139, -0.749915,
		0.259666, 0.927001, -0.270635,
		18.993547, 36.948215, 20.635542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486183, 36.297169, 20.656269>,  <18.811781, 36.299316, 20.824986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.486183, 36.297169, 20.656269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.411846, 36.680561, 20.742786>,  <19.367243, 36.910595, 20.794697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.411846, 36.680561, 20.742786>,  <19.486183, 36.297169, 20.656269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411846, 36.680561, 20.742786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826443, 0.033414, 0.562028,
		0.531464, 0.283205, -0.798337,
		-0.185845, 0.958477, 0.216294,
		19.356092, 36.968105, 20.807674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195402, 36.533176, 20.638981>,  <19.486183, 36.297169, 20.656269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195402, 36.533176, 20.638981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973934, 36.821384, 20.805977>,  <19.841053, 36.994308, 20.906174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973934, 36.821384, 20.805977>,  <20.195402, 36.533176, 20.638981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973934, 36.821384, 20.805977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817014, 0.373049, 0.439686,
		0.161060, 0.584534, -0.795223,
		-0.553668, 0.720524, 0.417489,
		19.807835, 37.037540, 20.931223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553713, 37.182438, 20.671659>,  <20.195402, 36.533176, 20.638981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553713, 37.182438, 20.671659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280558, 37.229225, 20.960098>,  <20.116665, 37.257298, 21.133162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.280558, 37.229225, 20.960098>,  <20.553713, 37.182438, 20.671659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.280558, 37.229225, 20.960098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716962, 0.296617, 0.630859,
		-0.140096, 0.947806, -0.286421,
		-0.682890, 0.116973, 0.721096,
		20.075691, 37.264317, 21.176428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.704826, 37.795216, 21.003624>,  <20.553713, 37.182438, 20.671659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.704826, 37.795216, 21.003624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452507, 37.622349, 21.261406>,  <20.301115, 37.518627, 21.416075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.452507, 37.622349, 21.261406>,  <20.704826, 37.795216, 21.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.452507, 37.622349, 21.261406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574770, 0.297717, 0.762237,
		-0.521281, 0.851231, 0.060599,
		-0.630798, -0.432170, 0.644456,
		20.263268, 37.492699, 21.454742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663982, 38.280254, 21.489920>,  <20.704826, 37.795216, 21.003624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663982, 38.280254, 21.489920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515406, 37.953339, 21.666134>,  <20.426260, 37.757191, 21.771862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.515406, 37.953339, 21.666134>,  <20.663982, 38.280254, 21.489920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515406, 37.953339, 21.666134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539101, 0.196455, 0.819009,
		-0.755911, 0.541707, 0.367629,
		-0.371441, -0.817287, 0.440537,
		20.403973, 37.708153, 21.798296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270531, 38.585827, 22.033369>,  <20.663982, 38.280254, 21.489920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270531, 38.585827, 22.033369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404058, 38.212639, 22.087242>,  <20.484175, 37.988728, 22.119566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404058, 38.212639, 22.087242>,  <20.270531, 38.585827, 22.033369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.404058, 38.212639, 22.087242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497513, 0.295736, 0.815488,
		-0.800654, -0.205217, 0.562884,
		0.333817, -0.932966, 0.134684,
		20.504204, 37.932751, 22.127647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093159, 38.538017, 22.789158>,  <20.270531, 38.585827, 22.033369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093159, 38.538017, 22.789158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.358168, 38.261906, 22.672829>,  <20.517174, 38.096237, 22.603031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.358168, 38.261906, 22.672829>,  <20.093159, 38.538017, 22.789158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.358168, 38.261906, 22.672829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512069, 0.134031, 0.848423,
		-0.546669, -0.711021, 0.442269,
		0.662524, -0.690279, -0.290821,
		20.556925, 38.054821, 22.585583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.191193, 37.992992, 23.373653>,  <20.093159, 38.538017, 22.789158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.191193, 37.992992, 23.373653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524593, 37.976974, 23.153229>,  <20.724634, 37.967365, 23.020973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.524593, 37.976974, 23.153229>,  <20.191193, 37.992992, 23.373653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.524593, 37.976974, 23.153229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539856, 0.271304, 0.796838,
		0.117599, -0.961660, 0.247749,
		0.833503, -0.040042, -0.551063,
		20.774645, 37.964962, 22.987909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996178, 38.258110, 24.028725>,  <20.191193, 37.992992, 23.373653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996178, 38.258110, 24.028725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.706600, 38.513184, 23.923450>,  <19.532854, 38.666229, 23.860287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.706600, 38.513184, 23.923450>,  <19.996178, 38.258110, 24.028725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.706600, 38.513184, 23.923450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679428, -0.725164, 0.111869,
		-0.119516, 0.259803, 0.958237,
		-0.723943, 0.637683, -0.263186,
		19.489418, 38.704487, 23.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345478, 38.207870, 24.362593>,  <19.996178, 38.258110, 24.028725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345478, 38.207870, 24.362593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.244734, 38.310688, 23.989391>,  <19.184288, 38.372379, 23.765471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.244734, 38.310688, 23.989391>,  <19.345478, 38.207870, 24.362593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.244734, 38.310688, 23.989391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693470, -0.720397, -0.011270,
		-0.675029, 0.644172, 0.359691,
		-0.251860, 0.257043, -0.933003,
		19.169176, 38.387802, 23.709490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661837, 38.116283, 24.430939>,  <19.345478, 38.207870, 24.362593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661837, 38.116283, 24.430939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774916, 38.043072, 24.054306>,  <18.842764, 37.999146, 23.828325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774916, 38.043072, 24.054306>,  <18.661837, 38.116283, 24.430939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774916, 38.043072, 24.054306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583386, -0.812011, -0.017308,
		-0.761408, 0.554200, -0.336333,
		0.282698, -0.183034, -0.941584,
		18.859726, 37.988163, 23.771832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007536, 38.017090, 24.045870>,  <18.661837, 38.116283, 24.430939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007536, 38.017090, 24.045870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333330, 37.834652, 23.902431>,  <18.528807, 37.725189, 23.816368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333330, 37.834652, 23.902431>,  <18.007536, 38.017090, 24.045870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333330, 37.834652, 23.902431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425048, -0.889769, 0.166272,
		-0.394904, 0.016994, -0.918565,
		0.814485, -0.456095, -0.358596,
		18.577675, 37.697823, 23.794853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937918, 37.568184, 23.487234>,  <18.007536, 38.017090, 24.045870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937918, 37.568184, 23.487234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.206821, 37.418221, 23.742580>,  <18.368164, 37.328243, 23.895788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.206821, 37.418221, 23.742580>,  <17.937918, 37.568184, 23.487234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206821, 37.418221, 23.742580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315972, -0.925108, -0.210563,
		0.669499, -0.060153, -0.740373,
		0.672259, -0.374909, 0.638366,
		18.408499, 37.305748, 23.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.186089, 26.302536, 25.291687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.533852, 26.442600, 25.431126>,  <32.742508, 26.526638, 25.514788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.533852, 26.442600, 25.431126>,  <32.186089, 26.302536, 25.291687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533852, 26.442600, 25.431126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071445, 0.787200, -0.612546,
		-0.488903, 0.507647, 0.709415,
		0.869408, 0.350160, 0.348595,
		32.794674, 26.547647, 25.535704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129681, 27.064003, 25.203850>,  <32.186089, 26.302536, 25.291687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129681, 27.064003, 25.203850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524120, 27.018795, 25.252556>,  <32.760784, 26.991671, 25.281778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524120, 27.018795, 25.252556>,  <32.129681, 27.064003, 25.203850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524120, 27.018795, 25.252556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165276, 0.741778, -0.649961,
		-0.016862, 0.661054, 0.750149,
		0.986103, -0.113022, 0.121764,
		32.819950, 26.984888, 25.289085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467846, 27.599815, 25.548067>,  <32.129681, 27.064003, 25.203850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467846, 27.599815, 25.548067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766228, 27.436134, 25.337883>,  <32.945255, 27.337925, 25.211773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766228, 27.436134, 25.337883>,  <32.467846, 27.599815, 25.548067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766228, 27.436134, 25.337883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009839, 0.782124, -0.623045,
		0.665927, 0.469931, 0.579401,
		0.745952, -0.409202, -0.525461,
		32.990013, 27.313374, 25.180244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752918, 28.212994, 25.354008>,  <32.467846, 27.599815, 25.548067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752918, 28.212994, 25.354008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 27.934933, 25.151237>,  <33.079121, 27.768095, 25.029575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.956795, 27.934933, 25.151237>,  <32.752918, 28.212994, 25.354008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956795, 27.934933, 25.151237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367091, 0.708594, -0.602611,
		0.778111, 0.121061, 0.616351,
		0.509694, -0.695155, -0.506924,
		33.109703, 27.726387, 24.999161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366467, 28.540918, 25.083229>,  <32.752918, 28.212994, 25.354008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366467, 28.540918, 25.083229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378925, 28.214188, 24.852814>,  <33.386402, 28.018148, 24.714565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.378925, 28.214188, 24.852814>,  <33.366467, 28.540918, 25.083229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378925, 28.214188, 24.852814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286251, 0.559468, -0.777854,
		0.957648, -0.140665, 0.251243,
		0.031146, -0.816829, -0.576039,
		33.388268, 27.969139, 24.680002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061691, 28.565636, 24.790356>,  <33.366467, 28.540918, 25.083229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061691, 28.565636, 24.790356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824902, 28.339531, 24.560558>,  <33.682827, 28.203869, 24.422680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824902, 28.339531, 24.560558>,  <34.061691, 28.565636, 24.790356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824902, 28.339531, 24.560558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237853, 0.558535, -0.794648,
		0.770059, -0.607058, -0.196190,
		-0.591976, -0.565261, -0.574495,
		33.647308, 28.169952, 24.388210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477032, 28.482445, 24.164579>,  <34.061691, 28.565636, 24.790356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477032, 28.482445, 24.164579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107460, 28.371861, 24.058804>,  <33.885715, 28.305510, 23.995338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.107460, 28.371861, 24.058804>,  <34.477032, 28.482445, 24.164579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107460, 28.371861, 24.058804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052878, 0.592302, -0.803979,
		0.378894, -0.756801, -0.532626,
		-0.923928, -0.276458, -0.264437,
		33.830280, 28.288923, 23.979471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508724, 28.386133, 23.429985>,  <34.477032, 28.482445, 24.164579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508724, 28.386133, 23.429985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122025, 28.436405, 23.519070>,  <33.890003, 28.466568, 23.572519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122025, 28.436405, 23.519070>,  <34.508724, 28.386133, 23.429985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122025, 28.436405, 23.519070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072803, 0.699594, -0.710822,
		-0.245143, -0.703401, -0.667183,
		-0.966750, 0.125680, 0.222710,
		33.832001, 28.474110, 23.585882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133324, 28.417212, 22.791620>,  <34.508724, 28.386133, 23.429985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133324, 28.417212, 22.791620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.886734, 28.582767, 23.059547>,  <33.738781, 28.682100, 23.220304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.886734, 28.582767, 23.059547>,  <34.133324, 28.417212, 22.791620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886734, 28.582767, 23.059547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150508, 0.773067, -0.616210,
		-0.772859, -0.480689, -0.414280,
		-0.616471, 0.413891, 0.669819,
		33.701794, 28.706934, 23.260492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609928, 28.701523, 22.344923>,  <34.133324, 28.417212, 22.791620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609928, 28.701523, 22.344923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579437, 28.878593, 22.702297>,  <33.561142, 28.984837, 22.916721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579437, 28.878593, 22.702297>,  <33.609928, 28.701523, 22.344923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579437, 28.878593, 22.702297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451470, 0.783604, -0.426779,
		-0.889024, -0.435891, 0.140124,
		-0.076228, 0.442678, 0.893435,
		33.556568, 29.011396, 22.970327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969280, 28.917543, 22.426611>,  <33.609928, 28.701523, 22.344923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969280, 28.917543, 22.426611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184292, 29.132893, 22.686218>,  <33.313297, 29.262102, 22.841982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184292, 29.132893, 22.686218>,  <32.969280, 28.917543, 22.426611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184292, 29.132893, 22.686218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300024, 0.841403, -0.449474,
		-0.788069, 0.046883, 0.613800,
		0.537525, 0.538371, 0.649017,
		33.345551, 29.294403, 22.880924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531963, 29.383469, 22.541592>,  <32.969280, 28.917543, 22.426611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531963, 29.383469, 22.541592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896587, 29.522629, 22.629250>,  <33.115360, 29.606125, 22.681845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.896587, 29.522629, 22.629250>,  <32.531963, 29.383469, 22.541592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896587, 29.522629, 22.629250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217320, 0.860111, -0.461499,
		-0.349045, 0.373060, 0.859648,
		0.911559, 0.347902, 0.219144,
		33.170055, 29.626999, 22.694992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379372, 30.042009, 22.855143>,  <32.531963, 29.383469, 22.541592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379372, 30.042009, 22.855143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763134, 30.102222, 22.759747>,  <32.993393, 30.138350, 22.702509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.763134, 30.102222, 22.759747>,  <32.379372, 30.042009, 22.855143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763134, 30.102222, 22.759747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229881, 0.907291, -0.352104,
		0.163375, 0.392635, 0.905067,
		0.959408, 0.150532, -0.238488,
		33.050957, 30.147383, 22.688200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587433, 30.680227, 23.090578>,  <32.379372, 30.042009, 22.855143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587433, 30.680227, 23.090578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820648, 30.584831, 22.779919>,  <32.960579, 30.527594, 22.593523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820648, 30.584831, 22.779919>,  <32.587433, 30.680227, 23.090578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820648, 30.584831, 22.779919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052176, 0.942980, -0.328735,
		0.810765, 0.232189, 0.537354,
		0.583042, -0.238490, -0.776649,
		32.995560, 30.513285, 22.546925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075481, 31.279240, 23.029388>,  <32.587433, 30.680227, 23.090578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075481, 31.279240, 23.029388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115902, 31.095100, 22.676601>,  <33.140152, 30.984617, 22.464930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.115902, 31.095100, 22.676601>,  <33.075481, 31.279240, 23.029388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115902, 31.095100, 22.676601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054021, 0.887737, -0.457170,
		0.993414, -0.001449, 0.114572,
		0.101048, -0.460349, -0.881969,
		33.146217, 30.956995, 22.412010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532795, 31.657648, 22.702267>,  <33.075481, 31.279240, 23.029388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532795, 31.657648, 22.702267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361008, 31.459675, 22.400116>,  <33.257935, 31.340891, 22.218826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.361008, 31.459675, 22.400116>,  <33.532795, 31.657648, 22.702267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361008, 31.459675, 22.400116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102302, 0.804398, -0.585216,
		0.897267, -0.328611, -0.294834,
		-0.429472, -0.494933, -0.755377,
		33.232166, 31.311195, 22.173502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864441, 31.933577, 21.997061>,  <33.532795, 31.657648, 22.702267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864441, 31.933577, 21.997061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515114, 31.778122, 21.879574>,  <33.305515, 31.684849, 21.809082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515114, 31.778122, 21.879574>,  <33.864441, 31.933577, 21.997061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515114, 31.778122, 21.879574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138476, 0.776117, -0.615197,
		0.467048, -0.496592, -0.731616,
		-0.873322, -0.388638, -0.293718,
		33.253117, 31.661531, 21.791458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846962, 32.169018, 21.415550>,  <33.864441, 31.933577, 21.997061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846962, 32.169018, 21.415550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466381, 32.056419, 21.465343>,  <33.238033, 31.988861, 21.495218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466381, 32.056419, 21.465343>,  <33.846962, 32.169018, 21.415550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466381, 32.056419, 21.465343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296618, 0.730611, -0.615000,
		0.082171, -0.622068, -0.778639,
		-0.951455, -0.281493, 0.124481,
		33.180946, 31.971972, 21.502687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518906, 32.346401, 20.720394>,  <33.846962, 32.169018, 21.415550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518906, 32.346401, 20.720394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.232124, 32.303497, 20.995922>,  <33.060055, 32.277756, 21.161238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.232124, 32.303497, 20.995922>,  <33.518906, 32.346401, 20.720394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232124, 32.303497, 20.995922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503308, 0.763316, -0.405006,
		-0.482344, -0.637058, -0.601249,
		-0.716955, -0.107262, 0.688818,
		33.017036, 32.271320, 21.202568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876091, 32.257351, 20.305996>,  <33.518906, 32.346401, 20.720394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876091, 32.257351, 20.305996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829521, 32.419807, 20.668541>,  <32.801579, 32.517281, 20.886068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829521, 32.419807, 20.668541>,  <32.876091, 32.257351, 20.305996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829521, 32.419807, 20.668541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497641, 0.765901, -0.407122,
		-0.859533, -0.498445, 0.112939,
		-0.116427, 0.406138, 0.906364,
		32.794594, 32.541649, 20.940451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189144, 32.480503, 20.274572>,  <32.876091, 32.257351, 20.305996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189144, 32.480503, 20.274572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369678, 32.696857, 20.558472>,  <32.477997, 32.826672, 20.728811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.369678, 32.696857, 20.558472>,  <32.189144, 32.480503, 20.274572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369678, 32.696857, 20.558472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534049, 0.800923, -0.270765,
		-0.714905, -0.256834, 0.650344,
		0.451334, 0.540887, 0.709746,
		32.505077, 32.859123, 20.771395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616848, 32.846992, 20.436703>,  <32.189144, 32.480503, 20.274572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616848, 32.846992, 20.436703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926874, 33.029919, 20.611122>,  <32.112888, 33.139675, 20.715773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926874, 33.029919, 20.611122>,  <31.616848, 32.846992, 20.436703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926874, 33.029919, 20.611122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396256, 0.889296, -0.228331,
		-0.492194, 0.004185, 0.870475,
		0.775066, 0.457314, 0.436048,
		32.159393, 33.167114, 20.741936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193192, 32.658192, 21.126637>,  <31.616848, 32.846992, 20.436703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193192, 32.658192, 21.126637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.867136, 32.861355, 21.015224>,  <30.671503, 32.983253, 20.948378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.867136, 32.861355, 21.015224>,  <31.193192, 32.658192, 21.126637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867136, 32.861355, 21.015224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534575, -0.474387, 0.699418,
		0.223109, 0.719018, 0.658206,
		-0.815139, 0.507908, -0.278529,
		30.622595, 33.013725, 20.931665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788614, 32.884949, 21.693968>,  <31.193192, 32.658192, 21.126637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788614, 32.884949, 21.693968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526022, 32.847668, 21.394543>,  <30.368467, 32.825298, 21.214888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.526022, 32.847668, 21.394543>,  <30.788614, 32.884949, 21.693968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526022, 32.847668, 21.394543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535033, -0.642010, 0.549147,
		-0.531766, 0.761010, 0.371602,
		-0.656479, -0.093198, -0.748565,
		30.329079, 32.819710, 21.169973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103996, 33.005417, 21.986090>,  <30.788614, 32.884949, 21.693968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103996, 33.005417, 21.986090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049269, 32.788704, 21.654366>,  <30.016432, 32.658676, 21.455332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.049269, 32.788704, 21.654366>,  <30.103996, 33.005417, 21.986090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049269, 32.788704, 21.654366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631787, -0.597086, 0.494301,
		-0.762972, 0.591577, -0.260597,
		-0.136818, -0.541779, -0.829310,
		30.008223, 32.626171, 21.405573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504860, 32.711586, 22.133543>,  <30.103996, 33.005417, 21.986090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504860, 32.711586, 22.133543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.577194, 32.489750, 21.808647>,  <29.620594, 32.356647, 21.613710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.577194, 32.489750, 21.808647>,  <29.504860, 32.711586, 22.133543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577194, 32.489750, 21.808647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407422, -0.793903, 0.451359,
		-0.895157, 0.249303, -0.369516,
		0.180835, -0.554586, -0.812239,
		29.631445, 32.323376, 21.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931543, 32.370358, 21.939148>,  <29.504860, 32.711586, 22.133543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931543, 32.370358, 21.939148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250017, 32.160709, 21.818226>,  <29.441101, 32.034920, 21.745672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.250017, 32.160709, 21.818226>,  <28.931543, 32.370358, 21.939148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250017, 32.160709, 21.818226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266913, -0.752638, 0.601908,
		-0.542999, -0.398540, -0.739133,
		0.796185, -0.524120, -0.302306,
		29.488873, 32.003475, 21.727533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679247, 31.688620, 21.885027>,  <28.931543, 32.370358, 21.939148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679247, 31.688620, 21.885027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.077848, 31.661102, 21.903984>,  <29.317009, 31.644592, 21.915358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.077848, 31.661102, 21.903984>,  <28.679247, 31.688620, 21.885027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077848, 31.661102, 21.903984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082207, -0.908382, 0.409981,
		0.014846, -0.412444, -0.910862,
		0.996505, -0.068793, 0.047391,
		29.376801, 31.640465, 21.918201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776800, 31.066797, 21.570040>,  <28.679247, 31.688620, 21.885027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776800, 31.066797, 21.570040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.100397, 31.156563, 21.787357>,  <29.294556, 31.210423, 21.917747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.100397, 31.156563, 21.787357>,  <28.776800, 31.066797, 21.570040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100397, 31.156563, 21.787357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061320, -0.886994, 0.457691,
		0.584609, -0.403584, -0.703812,
		0.808994, 0.224412, 0.543293,
		29.343096, 31.223886, 21.950346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153961, 30.485071, 21.637135>,  <28.776800, 31.066797, 21.570040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153961, 30.485071, 21.637135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297649, 30.711018, 21.934292>,  <29.383862, 30.846586, 22.112585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297649, 30.711018, 21.934292>,  <29.153961, 30.485071, 21.637135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297649, 30.711018, 21.934292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004476, -0.797057, 0.603887,
		0.933242, -0.213603, -0.288847,
		0.359220, 0.564866, 0.742891,
		29.405415, 30.880478, 22.157160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618816, 30.025938, 21.919920>,  <29.153961, 30.485071, 21.637135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618816, 30.025938, 21.919920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582994, 30.311771, 22.197437>,  <29.561501, 30.483273, 22.363947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.582994, 30.311771, 22.197437>,  <29.618816, 30.025938, 21.919920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582994, 30.311771, 22.197437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173286, -0.674787, 0.717380,
		0.980791, 0.184471, -0.063395,
		-0.089557, 0.714586, 0.693792,
		29.556128, 30.526148, 22.405575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158989, 29.915543, 22.316204>,  <29.618816, 30.025938, 21.919920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158989, 29.915543, 22.316204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903873, 30.127129, 22.540138>,  <29.750803, 30.254080, 22.674500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.903873, 30.127129, 22.540138>,  <30.158989, 29.915543, 22.316204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903873, 30.127129, 22.540138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121265, -0.648833, 0.751206,
		0.760603, 0.547001, 0.349675,
		-0.637791, 0.528967, 0.559837,
		29.712536, 30.285818, 22.708090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476093, 30.153000, 22.901196>,  <30.158989, 29.915543, 22.316204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476093, 30.153000, 22.901196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.094866, 30.158569, 23.022167>,  <29.866129, 30.161911, 23.094749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.094866, 30.158569, 23.022167>,  <30.476093, 30.153000, 22.901196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094866, 30.158569, 23.022167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262096, -0.462047, 0.847242,
		0.151531, 0.886746, 0.436714,
		-0.953071, 0.013922, 0.302427,
		29.808945, 30.162746, 23.112896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490065, 30.373363, 23.576080>,  <30.476093, 30.153000, 22.901196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490065, 30.373363, 23.576080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.136202, 30.190952, 23.537258>,  <29.923883, 30.081505, 23.513964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.136202, 30.190952, 23.537258>,  <30.490065, 30.373363, 23.576080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136202, 30.190952, 23.537258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161830, -0.495559, 0.853365,
		-0.437258, 0.739228, 0.512199,
		-0.884656, -0.456029, -0.097058,
		29.870806, 30.054144, 23.508141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172953, 30.414104, 24.228291>,  <30.490065, 30.373363, 23.576080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172953, 30.414104, 24.228291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978304, 30.102715, 24.069706>,  <29.861515, 29.915880, 23.974556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978304, 30.102715, 24.069706>,  <30.172953, 30.414104, 24.228291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978304, 30.102715, 24.069706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016445, -0.461899, 0.886780,
		-0.873459, 0.425006, 0.237571,
		-0.486621, -0.778473, -0.396460,
		29.832317, 29.869173, 23.950768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766134, 30.142977, 24.837719>,  <30.172953, 30.414104, 24.228291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766134, 30.142977, 24.837719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.786142, 29.874516, 24.541866>,  <29.798147, 29.713440, 24.364355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.786142, 29.874516, 24.541866>,  <29.766134, 30.142977, 24.837719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786142, 29.874516, 24.541866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041116, -0.741314, 0.669897,
		-0.997901, -0.003099, -0.064677,
		0.050022, -0.671151, -0.739631,
		29.801149, 29.673170, 24.319977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116940, 29.732351, 24.879812>,  <29.766134, 30.142977, 24.837719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116940, 29.732351, 24.879812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.394964, 29.518105, 24.687977>,  <29.561779, 29.389557, 24.572876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.394964, 29.518105, 24.687977>,  <29.116940, 29.732351, 24.879812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394964, 29.518105, 24.687977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221373, -0.794101, 0.566036,
		-0.684020, -0.287262, -0.670521,
		0.695062, -0.535615, -0.479589,
		29.603483, 29.357420, 24.544100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791838, 29.068241, 24.753069>,  <29.116940, 29.732351, 24.879812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791838, 29.068241, 24.753069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.184048, 29.001350, 24.711868>,  <29.419373, 28.961216, 24.687147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.184048, 29.001350, 24.711868>,  <28.791838, 29.068241, 24.753069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184048, 29.001350, 24.711868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103825, -0.886512, 0.450907,
		-0.166716, -0.431430, -0.886608,
		0.980523, -0.167225, -0.103002,
		29.478205, 28.951183, 24.680967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817692, 28.344711, 24.883186>,  <28.791838, 29.068241, 24.753069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817692, 28.344711, 24.883186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.200397, 28.459553, 24.901844>,  <29.430021, 28.528458, 24.913038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.200397, 28.459553, 24.901844>,  <28.817692, 28.344711, 24.883186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200397, 28.459553, 24.901844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213923, -0.803219, 0.555946,
		0.197081, -0.521930, -0.829908,
		0.956763, 0.287103, 0.046646,
		29.487427, 28.545683, 24.915838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249882, 27.822023, 24.608017>,  <28.817692, 28.344711, 24.883186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249882, 27.822023, 24.608017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.485693, 28.040253, 24.846279>,  <29.627180, 28.171190, 24.989237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.485693, 28.040253, 24.846279>,  <29.249882, 27.822023, 24.608017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485693, 28.040253, 24.846279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283867, -0.830324, 0.479564,
		0.756223, -0.113631, -0.644371,
		0.589530, 0.545573, 0.595654,
		29.662552, 28.203924, 25.024975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.896559, 27.428797, 24.648279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.849468, 27.679173, 24.956654>,  <29.821215, 27.829397, 25.141678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.849468, 27.679173, 24.956654>,  <29.896559, 27.428797, 24.648279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849468, 27.679173, 24.956654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319627, -0.711139, 0.626195,
		0.940202, 0.320131, -0.116348,
		-0.117725, 0.625938, 0.770936,
		29.814152, 27.866955, 25.187935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536568, 27.476505, 25.012115>,  <29.896559, 27.428797, 24.648279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536568, 27.476505, 25.012115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.257698, 27.604851, 25.268551>,  <30.090376, 27.681858, 25.422413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.257698, 27.604851, 25.268551>,  <30.536568, 27.476505, 25.012115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257698, 27.604851, 25.268551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297702, -0.683924, 0.666049,
		0.652167, 0.655206, 0.381292,
		-0.697174, 0.320863, 0.641089,
		30.048546, 27.701109, 25.460878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924789, 27.473789, 25.678593>,  <30.536568, 27.476505, 25.012115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924789, 27.473789, 25.678593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539310, 27.459518, 25.784435>,  <30.308023, 27.450956, 25.847940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539310, 27.459518, 25.784435>,  <30.924789, 27.473789, 25.678593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539310, 27.459518, 25.784435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225808, -0.637755, 0.736397,
		0.142480, 0.769413, 0.622658,
		-0.963696, -0.035679, 0.264607,
		30.250202, 27.448814, 25.863817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942692, 27.378019, 26.389681>,  <30.924789, 27.473789, 25.678593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942692, 27.378019, 26.389681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571764, 27.269039, 26.287037>,  <30.349207, 27.203651, 26.225451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.571764, 27.269039, 26.287037>,  <30.942692, 27.378019, 26.389681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571764, 27.269039, 26.287037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141523, -0.889978, 0.433487,
		-0.346483, 0.365664, 0.863851,
		-0.927319, -0.272451, -0.256612,
		30.293568, 27.187304, 26.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539244, 27.201500, 26.988886>,  <30.942692, 27.378019, 26.389681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539244, 27.201500, 26.988886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334698, 27.019119, 26.697514>,  <30.211969, 26.909691, 26.522690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.334698, 27.019119, 26.697514>,  <30.539244, 27.201500, 26.988886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334698, 27.019119, 26.697514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032208, -0.857213, 0.513953,
		-0.858760, 0.239356, 0.453034,
		-0.511365, -0.455953, -0.728431,
		30.181288, 26.882334, 26.478985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994740, 26.863787, 27.349352>,  <30.539244, 27.201500, 26.988886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994740, 26.863787, 27.349352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002708, 26.675285, 26.996643>,  <30.007490, 26.562183, 26.785017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002708, 26.675285, 26.996643>,  <29.994740, 26.863787, 27.349352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002708, 26.675285, 26.996643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212931, -0.863713, 0.456793,
		-0.976864, 0.178656, -0.117552,
		0.019923, -0.471255, -0.881772,
		30.008686, 26.533909, 26.732111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447704, 26.378565, 27.407146>,  <29.994740, 26.863787, 27.349352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447704, 26.378565, 27.407146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675631, 26.235867, 27.111027>,  <29.812386, 26.150248, 26.933355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675631, 26.235867, 27.111027>,  <29.447704, 26.378565, 27.407146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675631, 26.235867, 27.111027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001287, -0.901242, 0.433315,
		-0.821771, -0.245957, -0.514001,
		0.569816, -0.356748, -0.740298,
		29.846575, 26.128841, 26.888937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144361, 25.797422, 27.172386>,  <29.447704, 26.378565, 27.407146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144361, 25.797422, 27.172386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527702, 25.745121, 27.070824>,  <29.757706, 25.713739, 27.009886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527702, 25.745121, 27.070824>,  <29.144361, 25.797422, 27.172386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527702, 25.745121, 27.070824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009629, -0.873741, 0.486296,
		-0.285433, -0.468487, -0.836091,
		0.958350, -0.130754, -0.253906,
		29.815207, 25.705894, 26.994652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202278, 25.299833, 26.689215>,  <29.144361, 25.797422, 27.172386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202278, 25.299833, 26.689215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564381, 25.329437, 26.856564>,  <29.781641, 25.347200, 26.956974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564381, 25.329437, 26.856564>,  <29.202278, 25.299833, 26.689215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564381, 25.329437, 26.856564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026025, -0.973203, 0.228472,
		0.424071, -0.217714, -0.879070,
		0.905255, 0.074011, 0.418373,
		29.835957, 25.351641, 26.982075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489862, 24.704176, 26.562681>,  <29.202278, 25.299833, 26.689215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489862, 24.704176, 26.562681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 24.842873, 26.861542>,  <29.852768, 24.926090, 27.040857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 24.842873, 26.861542>,  <29.489862, 24.704176, 26.562681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716679, 24.842873, 26.861542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052723, -0.920496, 0.387178,
		0.822000, -0.180154, -0.540241,
		0.567041, 0.346744, 0.747150,
		29.886791, 24.946896, 27.085688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027332, 24.273342, 26.573584>,  <29.489862, 24.704176, 26.562681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027332, 24.273342, 26.573584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018938, 24.440464, 26.936901>,  <30.013901, 24.540737, 27.154892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018938, 24.440464, 26.936901>,  <30.027332, 24.273342, 26.573584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018938, 24.440464, 26.936901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133714, -0.901506, 0.411591,
		0.990798, -0.112815, 0.074784,
		-0.020985, 0.417804, 0.908295,
		30.012642, 24.565805, 27.209389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503586, 23.895466, 27.058540>,  <30.027332, 24.273342, 26.573584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503586, 23.895466, 27.058540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232433, 24.065025, 27.298801>,  <30.069742, 24.166761, 27.442959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232433, 24.065025, 27.298801>,  <30.503586, 23.895466, 27.058540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232433, 24.065025, 27.298801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149784, -0.879524, 0.451666,
		0.719749, 0.216209, 0.659708,
		-0.677883, 0.423900, 0.600652,
		30.029068, 24.192196, 27.478996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650639, 23.634186, 27.717409>,  <30.503586, 23.895466, 27.058540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650639, 23.634186, 27.717409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288263, 23.799679, 27.753410>,  <30.070839, 23.898975, 27.775011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288263, 23.799679, 27.753410>,  <30.650639, 23.634186, 27.717409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288263, 23.799679, 27.753410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282895, -0.749614, 0.598372,
		0.315035, 0.516626, 0.796147,
		-0.905938, 0.413734, 0.090004,
		30.016481, 23.923800, 27.780411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446301, 23.783367, 28.487324>,  <30.650639, 23.634186, 27.717409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446301, 23.783367, 28.487324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112646, 23.710274, 28.279160>,  <29.912453, 23.666418, 28.154261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112646, 23.710274, 28.279160>,  <30.446301, 23.783367, 28.487324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112646, 23.710274, 28.279160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232363, -0.739288, 0.632030,
		-0.500226, 0.648122, 0.574205,
		-0.834135, -0.182733, -0.520410,
		29.862406, 23.655455, 28.123037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039738, 23.597301, 28.955278>,  <30.446301, 23.783367, 28.487324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039738, 23.597301, 28.955278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777529, 23.506657, 28.667130>,  <29.620203, 23.452271, 28.494240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777529, 23.506657, 28.667130>,  <30.039738, 23.597301, 28.955278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777529, 23.506657, 28.667130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405894, -0.698683, 0.589145,
		-0.636819, 0.678593, 0.366023,
		-0.655524, -0.226613, -0.720372,
		29.580872, 23.438673, 28.451017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442337, 23.479864, 29.272589>,  <30.039738, 23.597301, 28.955278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442337, 23.479864, 29.272589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416410, 23.286594, 28.923340>,  <29.400854, 23.170633, 28.713791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416410, 23.286594, 28.923340>,  <29.442337, 23.479864, 29.272589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416410, 23.286594, 28.923340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490441, -0.746572, 0.449552,
		-0.869061, 0.457353, -0.188578,
		-0.064817, -0.483174, -0.873121,
		29.396965, 23.141642, 28.661404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714558, 23.288624, 29.277874>,  <29.442337, 23.479864, 29.272589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714558, 23.288624, 29.277874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.913578, 23.067902, 29.010159>,  <29.032991, 22.935469, 28.849529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.913578, 23.067902, 29.010159>,  <28.714558, 23.288624, 29.277874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913578, 23.067902, 29.010159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449628, -0.823892, 0.345015,
		-0.741805, 0.129268, -0.658039,
		0.497554, -0.551807, -0.669290,
		29.062843, 22.902359, 28.809372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134171, 22.801863, 28.957914>,  <28.714558, 23.288624, 29.277874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134171, 22.801863, 28.957914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498701, 22.644089, 28.910751>,  <28.717421, 22.549423, 28.882454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.498701, 22.644089, 28.910751>,  <28.134171, 22.801863, 28.957914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498701, 22.644089, 28.910751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271417, -0.791003, 0.548312,
		-0.309540, -0.467690, -0.827920,
		0.911327, -0.394436, -0.117908,
		28.772099, 22.525759, 28.875380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004181, 22.067329, 28.826233>,  <28.134171, 22.801863, 28.957914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004181, 22.067329, 28.826233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387096, 22.119621, 28.929390>,  <28.616846, 22.150997, 28.991285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387096, 22.119621, 28.929390>,  <28.004181, 22.067329, 28.826233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387096, 22.119621, 28.929390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070262, -0.760028, 0.646081,
		0.280470, -0.636606, -0.718380,
		0.957288, 0.130732, 0.257894,
		28.674282, 22.158840, 29.006758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330448, 21.377533, 28.942715>,  <28.004181, 22.067329, 28.826233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330448, 21.377533, 28.942715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567101, 21.631065, 29.142006>,  <28.709093, 21.783184, 29.261580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.567101, 21.631065, 29.142006>,  <28.330448, 21.377533, 28.942715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567101, 21.631065, 29.142006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076134, -0.571301, 0.817202,
		0.802605, -0.521415, -0.289745,
		0.591633, 0.633831, 0.498226,
		28.744591, 21.821215, 29.291473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831665, 20.988270, 29.139057>,  <28.330448, 21.377533, 28.942715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831665, 20.988270, 29.139057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.850431, 21.312962, 29.371914>,  <28.861691, 21.507776, 29.511629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.850431, 21.312962, 29.371914>,  <28.831665, 20.988270, 29.139057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850431, 21.312962, 29.371914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004725, -0.582599, 0.812746,
		0.998888, -0.040881, -0.023498,
		0.046916, 0.811731, 0.582144,
		28.864506, 21.556480, 29.546556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298147, 20.765760, 29.677671>,  <28.831665, 20.988270, 29.139057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298147, 20.765760, 29.677671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110725, 21.091923, 29.813652>,  <28.998272, 21.287621, 29.895241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.110725, 21.091923, 29.813652>,  <29.298147, 20.765760, 29.677671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110725, 21.091923, 29.813652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221040, -0.480778, 0.848524,
		0.855334, 0.322438, 0.405509,
		-0.468557, 0.815406, 0.339954,
		28.970158, 21.336544, 29.915638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572859, 20.929615, 30.441813>,  <29.298147, 20.765760, 29.677671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572859, 20.929615, 30.441813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207062, 21.071228, 30.363468>,  <28.987583, 21.156195, 30.316462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.207062, 21.071228, 30.363468>,  <29.572859, 20.929615, 30.441813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207062, 21.071228, 30.363468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314012, -0.315773, 0.895368,
		0.255140, 0.880312, 0.399943,
		-0.914494, 0.354031, -0.195863,
		28.932713, 21.177437, 30.304708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211586, 20.787888, 30.942095>,  <29.572859, 20.929615, 30.441813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211586, 20.787888, 30.942095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143375, 21.179157, 30.989582>,  <30.102449, 21.413919, 31.018074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143375, 21.179157, 30.989582>,  <30.211586, 20.787888, 30.942095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143375, 21.179157, 30.989582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735999, 0.046337, 0.675395,
		0.655153, 0.202550, -0.727838,
		-0.170527, 0.978175, 0.118719,
		30.092216, 21.472610, 31.025198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650047, 20.986013, 31.541950>,  <30.211586, 20.787888, 30.942095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650047, 20.986013, 31.541950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046112, 21.038498, 31.522507>,  <31.283751, 21.069988, 31.510839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.046112, 21.038498, 31.522507>,  <30.650047, 20.986013, 31.541950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046112, 21.038498, 31.522507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136138, 0.823031, -0.551440,
		-0.032348, 0.552633, 0.832797,
		0.990162, 0.131213, -0.048611,
		31.343161, 21.077862, 31.507923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729591, 21.715015, 31.495623>,  <30.650047, 20.986013, 31.541950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729591, 21.715015, 31.495623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077759, 21.563339, 31.370029>,  <31.286659, 21.472334, 31.294674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077759, 21.563339, 31.370029>,  <30.729591, 21.715015, 31.495623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077759, 21.563339, 31.370029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005618, 0.630080, -0.776510,
		0.492281, 0.677653, 0.546302,
		0.870418, -0.379192, -0.313983,
		31.338884, 21.449581, 31.275835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221622, 22.241650, 31.604948>,  <30.729591, 21.715015, 31.495623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221622, 22.241650, 31.604948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376572, 22.008232, 31.319454>,  <31.469542, 21.868181, 31.148157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.376572, 22.008232, 31.319454>,  <31.221622, 22.241650, 31.604948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376572, 22.008232, 31.319454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085421, 0.793571, -0.602452,
		0.917956, 0.172406, 0.357257,
		0.387375, -0.583542, -0.713736,
		31.492785, 21.833170, 31.105333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835695, 22.669622, 31.291716>,  <31.221622, 22.241650, 31.604948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835695, 22.669622, 31.291716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.745008, 22.383224, 31.027611>,  <31.690596, 22.211386, 30.869148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.745008, 22.383224, 31.027611>,  <31.835695, 22.669622, 31.291716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745008, 22.383224, 31.027611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271145, 0.604717, -0.748864,
		0.935457, -0.348807, 0.057040,
		-0.226716, -0.715996, -0.660264,
		31.676994, 22.168427, 30.829531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434273, 22.476852, 30.969288>,  <31.835695, 22.669622, 31.291716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434273, 22.476852, 30.969288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136395, 22.386242, 30.718174>,  <31.957668, 22.331875, 30.567505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.136395, 22.386242, 30.718174>,  <32.434273, 22.476852, 30.969288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136395, 22.386242, 30.718174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420729, 0.570852, -0.705064,
		0.518087, -0.789186, -0.329805,
		-0.744697, -0.226526, -0.627784,
		31.912985, 22.318283, 30.529839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754528, 22.385792, 30.292456>,  <32.434273, 22.476852, 30.969288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754528, 22.385792, 30.292456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376007, 22.423325, 30.168705>,  <32.148895, 22.445845, 30.094456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.376007, 22.423325, 30.168705>,  <32.754528, 22.385792, 30.292456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376007, 22.423325, 30.168705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317933, 0.443622, -0.837925,
		0.058620, -0.891288, -0.449632,
		-0.946299, 0.093834, -0.309375,
		32.092117, 22.451475, 30.075893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814243, 22.521692, 29.525024>,  <32.754528, 22.385792, 30.292456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814243, 22.521692, 29.525024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.439793, 22.631351, 29.613117>,  <32.215122, 22.697147, 29.665974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.439793, 22.631351, 29.613117>,  <32.814243, 22.521692, 29.525024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439793, 22.631351, 29.613117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048492, 0.519658, -0.852997,
		-0.348295, -0.809196, -0.473174,
		-0.936130, 0.274149, 0.220234,
		32.158955, 22.713596, 29.679188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428410, 22.443655, 28.886074>,  <32.814243, 22.521692, 29.525024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428410, 22.443655, 28.886074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259586, 22.711758, 29.130245>,  <32.158291, 22.872620, 29.276749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259586, 22.711758, 29.130245>,  <32.428410, 22.443655, 28.886074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259586, 22.711758, 29.130245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163499, 0.606021, -0.778464,
		-0.891703, -0.428362, -0.146191,
		-0.422059, 0.670257, 0.610428,
		32.132969, 22.912834, 29.313374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894327, 22.666792, 28.504955>,  <32.428410, 22.443655, 28.886074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894327, 22.666792, 28.504955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967226, 22.949108, 28.778786>,  <32.010963, 23.118498, 28.943085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.967226, 22.949108, 28.778786>,  <31.894327, 22.666792, 28.504955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967226, 22.949108, 28.778786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282055, 0.704502, -0.651247,
		-0.941930, -0.074402, 0.327464,
		0.182245, 0.705791, 0.684577,
		32.021900, 23.160845, 28.984159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440001, 23.217371, 28.434601>,  <31.894327, 22.666792, 28.504955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440001, 23.217371, 28.434601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748030, 23.393242, 28.619499>,  <31.932846, 23.498764, 28.730438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748030, 23.393242, 28.619499>,  <31.440001, 23.217371, 28.434601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748030, 23.393242, 28.619499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028051, 0.747208, -0.663998,
		-0.637340, 0.498360, 0.587737,
		0.770072, 0.439679, 0.462247,
		31.979052, 23.525146, 28.758173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266464, 23.959902, 28.468109>,  <31.440001, 23.217371, 28.434601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266464, 23.959902, 28.468109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659378, 23.951488, 28.542599>,  <31.895126, 23.946440, 28.587292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659378, 23.951488, 28.542599>,  <31.266464, 23.959902, 28.468109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659378, 23.951488, 28.542599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096279, 0.909164, -0.405156,
		-0.160786, 0.415907, 0.895081,
		0.982282, -0.021034, 0.186224,
		31.954063, 23.945179, 28.598465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503712, 24.681067, 28.700819>,  <31.266464, 23.959902, 28.468109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503712, 24.681067, 28.700819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810465, 24.474354, 28.548595>,  <31.994516, 24.350327, 28.457260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.810465, 24.474354, 28.548595>,  <31.503712, 24.681067, 28.700819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810465, 24.474354, 28.548595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302627, 0.814090, -0.495656,
		0.565956, 0.264943, 0.780704,
		0.766884, -0.516781, -0.380560,
		32.040531, 24.319319, 28.434427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914568, 25.213095, 28.609884>,  <31.503712, 24.681067, 28.700819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914568, 25.213095, 28.609884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060490, 24.916332, 28.384853>,  <32.148041, 24.738274, 28.249836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060490, 24.916332, 28.384853>,  <31.914568, 25.213095, 28.609884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060490, 24.916332, 28.384853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292037, 0.664898, -0.687477,
		0.884100, 0.086501, 0.459221,
		0.364802, -0.741908, -0.562575,
		32.169930, 24.693760, 28.216082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344200, 25.568939, 28.305447>,  <31.914568, 25.213095, 28.609884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344200, 25.568939, 28.305447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361256, 25.239105, 28.079796>,  <32.371487, 25.041204, 27.944405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361256, 25.239105, 28.079796>,  <32.344200, 25.568939, 28.305447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361256, 25.239105, 28.079796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341269, 0.542700, -0.767471,
		0.938998, -0.159797, 0.304545,
		0.042637, -0.824586, -0.564128,
		32.374046, 24.991730, 27.910557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995922, 25.579454, 28.003416>,  <32.344200, 25.568939, 28.305447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995922, 25.579454, 28.003416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785954, 25.343849, 27.757645>,  <32.659973, 25.202486, 27.610182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785954, 25.343849, 27.757645>,  <32.995922, 25.579454, 28.003416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785954, 25.343849, 27.757645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249516, 0.583676, -0.772699,
		0.813756, -0.558917, -0.159417,
		-0.524922, -0.589011, -0.614428,
		32.628475, 25.167147, 27.573317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469551, 25.500381, 27.448212>,  <32.995922, 25.579454, 28.003416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469551, 25.500381, 27.448212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099815, 25.413937, 27.322422>,  <32.877975, 25.362070, 27.246948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.099815, 25.413937, 27.322422>,  <33.469551, 25.500381, 27.448212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099815, 25.413937, 27.322422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194643, 0.441808, -0.875740,
		0.328192, -0.870691, -0.366317,
		-0.924340, -0.216109, -0.314472,
		32.822514, 25.349104, 27.228081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526466, 25.149000, 26.779749>,  <33.469551, 25.500381, 27.448212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526466, 25.149000, 26.779749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167599, 25.323917, 26.804623>,  <32.952278, 25.428867, 26.819546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.167599, 25.323917, 26.804623>,  <33.526466, 25.149000, 26.779749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167599, 25.323917, 26.804623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116508, 0.370094, -0.921659,
		-0.426048, -0.819638, -0.382984,
		-0.897167, 0.437292, 0.062183,
		32.898449, 25.455105, 26.823278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188538, 25.041328, 26.124935>,  <33.526466, 25.149000, 26.779749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188538, 25.041328, 26.124935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037975, 25.374191, 26.287827>,  <32.947639, 25.573910, 26.385561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.037975, 25.374191, 26.287827>,  <33.188538, 25.041328, 26.124935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037975, 25.374191, 26.287827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093893, 0.471554, -0.876824,
		-0.921686, -0.291803, -0.255628,
		-0.376403, 0.832159, 0.407226,
		32.925053, 25.623838, 26.409994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046227, 25.418444, 25.569344>,  <33.188538, 25.041328, 26.124935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046227, 25.418444, 25.569344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978069, 25.709885, 25.834705>,  <32.937176, 25.884748, 25.993923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.978069, 25.709885, 25.834705>,  <33.046227, 25.418444, 25.569344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978069, 25.709885, 25.834705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040154, 0.667558, -0.743474,
		-0.984558, -0.153320, -0.084490,
		-0.170392, 0.728601, 0.663406,
		32.926952, 25.928465, 26.033728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728321, 25.785355, 25.162285>,  <33.046227, 25.418444, 25.569344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728321, 25.785355, 25.162285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844872, 26.004192, 25.476173>,  <32.914803, 26.135496, 25.664507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844872, 26.004192, 25.476173>,  <32.728321, 25.785355, 25.162285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844872, 26.004192, 25.476173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089216, 0.801198, -0.591712,
		-0.952438, 0.242422, 0.184642,
		0.291379, 0.547096, 0.784719,
		32.932285, 26.168322, 25.711590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.082186, 35.638607, 15.540802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.032898, 35.241657, 15.542354>,  <18.003325, 35.003487, 15.543284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.032898, 35.241657, 15.542354>,  <18.082186, 35.638607, 15.540802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032898, 35.241657, 15.542354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506380, -0.059514, 0.860254,
		-0.853461, 0.107966, 0.509851,
		-0.123222, -0.992372, 0.003879,
		17.995932, 34.943947, 15.543517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779526, 35.387726, 16.254068>,  <18.082186, 35.638607, 15.540802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.779526, 35.387726, 16.254068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.975573, 35.085197, 16.080742>,  <18.093201, 34.903679, 15.976747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.975573, 35.085197, 16.080742>,  <17.779526, 35.387726, 16.254068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975573, 35.085197, 16.080742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556251, -0.111350, 0.823521,
		-0.671097, -0.644653, 0.366130,
		0.490116, -0.756322, -0.433315,
		18.122608, 34.858299, 15.950747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836557, 34.884235, 16.808176>,  <17.779526, 35.387726, 16.254068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836557, 34.884235, 16.808176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.115915, 34.806274, 16.532711>,  <18.283531, 34.759499, 16.367432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.115915, 34.806274, 16.532711>,  <17.836557, 34.884235, 16.808176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115915, 34.806274, 16.532711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704790, 0.019833, 0.709138,
		-0.124554, -0.980622, 0.151217,
		0.698396, -0.194903, -0.688663,
		18.325434, 34.747803, 16.326113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.187237, 34.482376, 17.111231>,  <17.836557, 34.884235, 16.808176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.187237, 34.482376, 17.111231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.434820, 34.577267, 16.811733>,  <18.583370, 34.634201, 16.632034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.434820, 34.577267, 16.811733>,  <18.187237, 34.482376, 17.111231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434820, 34.577267, 16.811733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777558, -0.050491, 0.626781,
		0.110883, -0.970142, -0.215708,
		0.618958, 0.237225, -0.748743,
		18.620508, 34.648434, 16.587111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.719992, 34.009331, 17.153296>,  <18.187237, 34.482376, 17.111231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.719992, 34.009331, 17.153296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.904425, 34.291718, 16.938255>,  <19.015085, 34.461151, 16.809231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.904425, 34.291718, 16.938255>,  <18.719992, 34.009331, 17.153296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904425, 34.291718, 16.938255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794064, -0.057849, 0.605074,
		0.396062, -0.705880, -0.587255,
		0.461082, 0.705966, -0.537602,
		19.042749, 34.503506, 16.776974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445070, 33.851894, 17.141006>,  <18.719992, 34.009331, 17.153296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445070, 33.851894, 17.141006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.395239, 34.244320, 17.081676>,  <19.365339, 34.479774, 17.046078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.395239, 34.244320, 17.081676>,  <19.445070, 33.851894, 17.141006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395239, 34.244320, 17.081676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682021, 0.193244, 0.705339,
		0.720644, -0.013291, -0.693178,
		-0.124578, 0.981061, -0.148324,
		19.357866, 34.538639, 17.037180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.095848, 34.142517, 17.219564>,  <19.445070, 33.851894, 17.141006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.095848, 34.142517, 17.219564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.838957, 34.433338, 17.316677>,  <19.684822, 34.607830, 17.374945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.838957, 34.433338, 17.316677>,  <20.095848, 34.142517, 17.219564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838957, 34.433338, 17.316677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634911, 0.327119, 0.699914,
		0.429455, 0.603647, -0.671698,
		-0.642227, 0.727051, 0.242779,
		19.646288, 34.651455, 17.389511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492723, 34.708309, 17.325705>,  <20.095848, 34.142517, 17.219564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492723, 34.708309, 17.325705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.164051, 34.842411, 17.510075>,  <19.966848, 34.922871, 17.620697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.164051, 34.842411, 17.510075>,  <20.492723, 34.708309, 17.325705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164051, 34.842411, 17.510075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563841, 0.360046, 0.743270,
		0.083230, 0.870617, -0.484871,
		-0.821679, 0.335252, 0.460923,
		19.917547, 34.942986, 17.648352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767523, 35.204582, 17.596912>,  <20.492723, 34.708309, 17.325705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767523, 35.204582, 17.596912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423815, 35.168907, 17.798386>,  <20.217590, 35.147503, 17.919270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423815, 35.168907, 17.798386>,  <20.767523, 35.204582, 17.596912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423815, 35.168907, 17.798386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452572, 0.326349, 0.829865,
		-0.238393, 0.941032, -0.240057,
		-0.859272, -0.089191, 0.503684,
		20.166033, 35.142151, 17.949492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647013, 35.897991, 17.922981>,  <20.767523, 35.204582, 17.596912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647013, 35.897991, 17.922981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439804, 35.628376, 18.133629>,  <20.315479, 35.466606, 18.260017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439804, 35.628376, 18.133629>,  <20.647013, 35.897991, 17.922981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439804, 35.628376, 18.133629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344151, 0.399397, 0.849730,
		-0.783081, 0.621414, 0.025075,
		-0.518020, -0.674037, 0.526621,
		20.284399, 35.426167, 18.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250053, 36.291218, 18.473936>,  <20.647013, 35.897991, 17.922981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250053, 36.291218, 18.473936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.325659, 35.913250, 18.580818>,  <20.371021, 35.686470, 18.644947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.325659, 35.913250, 18.580818>,  <20.250053, 36.291218, 18.473936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.325659, 35.913250, 18.580818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436391, 0.324591, 0.839168,
		-0.879680, -0.042006, 0.473706,
		0.189011, -0.944921, 0.267206,
		20.382362, 35.629772, 18.660980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122543, 36.271969, 19.162210>,  <20.250053, 36.291218, 18.473936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122543, 36.271969, 19.162210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.339603, 35.943218, 19.092865>,  <20.469839, 35.745968, 19.051258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.339603, 35.943218, 19.092865>,  <20.122543, 36.271969, 19.162210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339603, 35.943218, 19.092865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466819, 0.123508, 0.875686,
		-0.698292, -0.556119, 0.450688,
		0.542650, -0.821874, -0.173362,
		20.502398, 35.696655, 19.040857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921486, 35.835331, 19.636650>,  <20.122543, 36.271969, 19.162210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921486, 35.835331, 19.636650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.273548, 35.699074, 19.504414>,  <20.484785, 35.617321, 19.425072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.273548, 35.699074, 19.504414>,  <19.921486, 35.835331, 19.636650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273548, 35.699074, 19.504414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377973, 0.081614, 0.922212,
		-0.287165, -0.936643, 0.200587,
		0.880154, -0.340644, -0.330589,
		20.537594, 35.596882, 19.405237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223675, 35.506077, 20.276026>,  <19.921486, 35.835331, 19.636650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223675, 35.506077, 20.276026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.532375, 35.534142, 20.023209>,  <20.717596, 35.550980, 19.871519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.532375, 35.534142, 20.023209>,  <20.223675, 35.506077, 20.276026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532375, 35.534142, 20.023209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621364, 0.128259, 0.772953,
		0.135306, -0.989255, 0.055380,
		0.771751, 0.070174, -0.632041,
		20.763901, 35.555191, 19.833597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.777155, 35.054768, 20.544529>,  <20.223675, 35.506077, 20.276026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.777155, 35.054768, 20.544529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.962652, 35.326458, 20.316986>,  <21.073950, 35.489471, 20.180460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.962652, 35.326458, 20.316986>,  <20.777155, 35.054768, 20.544529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962652, 35.326458, 20.316986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683249, 0.134571, 0.717678,
		0.564016, -0.721488, -0.401673,
		0.463742, 0.679225, -0.568856,
		21.101774, 35.530224, 20.146330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.542234, 34.775333, 20.602570>,  <20.777155, 35.054768, 20.544529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.542234, 34.775333, 20.602570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.526125, 35.160015, 20.494129>,  <21.516460, 35.390823, 20.429066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.526125, 35.160015, 20.494129>,  <21.542234, 34.775333, 20.602570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526125, 35.160015, 20.494129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657073, 0.229891, 0.717917,
		0.752750, -0.149220, -0.641171,
		-0.040272, 0.961709, -0.271099,
		21.514044, 35.448528, 20.412800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229918, 35.089058, 20.828871>,  <21.542234, 34.775333, 20.602570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229918, 35.089058, 20.828871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016378, 35.423401, 20.777718>,  <21.888254, 35.624004, 20.747026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016378, 35.423401, 20.777718>,  <22.229918, 35.089058, 20.828871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016378, 35.423401, 20.777718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508644, 0.438250, 0.741092,
		0.675489, 0.330585, -0.659112,
		-0.533849, 0.835853, -0.127883,
		21.856224, 35.674156, 20.739353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704361, 35.675419, 20.867254>,  <22.229918, 35.089058, 20.828871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704361, 35.675419, 20.867254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.353941, 35.858936, 20.926636>,  <22.143688, 35.969048, 20.962265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.353941, 35.858936, 20.926636>,  <22.704361, 35.675419, 20.867254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.353941, 35.858936, 20.926636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378551, 0.463614, 0.801099,
		0.298716, 0.758002, -0.579828,
		-0.876052, 0.458796, 0.148454,
		22.091125, 35.996574, 20.971172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832613, 36.496693, 20.917053>,  <22.704361, 35.675419, 20.867254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832613, 36.496693, 20.917053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492046, 36.392632, 21.099224>,  <22.287706, 36.330193, 21.208527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492046, 36.392632, 21.099224>,  <22.832613, 36.496693, 20.917053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492046, 36.392632, 21.099224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345340, 0.375473, 0.860093,
		-0.394757, 0.889573, -0.229841,
		-0.851415, -0.260155, 0.455425,
		22.236622, 36.314587, 21.235851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.647406, 37.068619, 21.256224>,  <22.832613, 36.496693, 20.917053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.647406, 37.068619, 21.256224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.428366, 36.806236, 21.464012>,  <22.296942, 36.648808, 21.588684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.428366, 36.806236, 21.464012>,  <22.647406, 37.068619, 21.256224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.428366, 36.806236, 21.464012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396511, 0.343262, 0.851440,
		-0.736825, 0.672225, 0.072125,
		-0.547602, -0.655961, 0.519469,
		22.264086, 36.609447, 21.619852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.271358, 37.448078, 21.777313>,  <22.647406, 37.068619, 21.256224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.271358, 37.448078, 21.777313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.310120, 37.069614, 21.900856>,  <22.333376, 36.842537, 21.974981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.310120, 37.069614, 21.900856>,  <22.271358, 37.448078, 21.777313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.310120, 37.069614, 21.900856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387939, 0.321679, 0.863728,
		-0.916577, 0.036122, 0.398223,
		0.096901, -0.946159, 0.308856,
		22.339190, 36.785767, 21.993513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771166, 37.863361, 22.184731>,  <22.271358, 37.448078, 21.777313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771166, 37.863361, 22.184731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469934, 37.885971, 22.446930>,  <21.289196, 37.899536, 22.604250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469934, 37.885971, 22.446930>,  <21.771166, 37.863361, 22.184731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469934, 37.885971, 22.446930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615448, -0.412727, -0.671476,
		0.232585, -0.909099, 0.345604,
		-0.753078, 0.056526, 0.655498,
		21.244011, 37.902927, 22.643579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.527529, 37.141273, 22.331326>,  <21.771166, 37.863361, 22.184731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.527529, 37.141273, 22.331326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238905, 37.409401, 22.400631>,  <21.065731, 37.570278, 22.442215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.238905, 37.409401, 22.400631>,  <21.527529, 37.141273, 22.331326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.238905, 37.409401, 22.400631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573226, -0.438049, -0.692477,
		-0.388286, -0.598982, 0.700325,
		-0.721558, 0.670324, 0.173264,
		21.022438, 37.610497, 22.452610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914417, 36.741772, 22.480400>,  <21.527529, 37.141273, 22.331326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914417, 36.741772, 22.480400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.749603, 37.094666, 22.389290>,  <20.650715, 37.306404, 22.334623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.749603, 37.094666, 22.389290>,  <20.914417, 36.741772, 22.480400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.749603, 37.094666, 22.389290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695850, -0.466061, -0.546424,
		-0.588233, -0.066649, 0.805940,
		-0.412036, 0.882239, -0.227775,
		20.625992, 37.359337, 22.320957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182802, 36.629494, 22.424072>,  <20.914417, 36.741772, 22.480400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182802, 36.629494, 22.424072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.215086, 36.976044, 22.226944>,  <20.234455, 37.183975, 22.108667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.215086, 36.976044, 22.226944>,  <20.182802, 36.629494, 22.424072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215086, 36.976044, 22.226944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790342, -0.245641, -0.561267,
		-0.607327, 0.434797, 0.664910,
		0.080708, 0.866379, -0.492823,
		20.239298, 37.235958, 22.079098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540653, 36.735168, 22.158293>,  <20.182802, 36.629494, 22.424072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540653, 36.735168, 22.158293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.770041, 36.999683, 21.964867>,  <19.907673, 37.158394, 21.848810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.770041, 36.999683, 21.964867>,  <19.540653, 36.735168, 22.158293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770041, 36.999683, 21.964867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643976, -0.000983, -0.765045,
		-0.506389, 0.750133, 0.425289,
		0.573468, 0.661286, -0.483565,
		19.942081, 37.198071, 21.819798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.146288, 37.400383, 22.094158>,  <19.540653, 36.735168, 22.158293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.146288, 37.400383, 22.094158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418159, 37.350048, 21.805103>,  <19.581282, 37.319847, 21.631670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.418159, 37.350048, 21.805103>,  <19.146288, 37.400383, 22.094158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.418159, 37.350048, 21.805103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719246, 0.079005, -0.690249,
		0.143948, 0.988901, -0.036807,
		0.679679, -0.125833, -0.722635,
		19.622063, 37.312298, 21.588312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082905, 37.972000, 21.517179>,  <19.146288, 37.400383, 22.094158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082905, 37.972000, 21.517179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.274773, 37.655254, 21.365986>,  <19.389893, 37.465206, 21.275270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.274773, 37.655254, 21.365986>,  <19.082905, 37.972000, 21.517179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.274773, 37.655254, 21.365986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582554, 0.034740, -0.812049,
		0.656163, 0.609710, -0.444639,
		0.479668, -0.791863, -0.377984,
		19.418673, 37.417694, 21.252590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205463, 38.197712, 20.914335>,  <19.082905, 37.972000, 21.517179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205463, 38.197712, 20.914335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.245918, 37.799969, 20.901520>,  <19.270191, 37.561321, 20.893831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.245918, 37.799969, 20.901520>,  <19.205463, 38.197712, 20.914335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245918, 37.799969, 20.901520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472926, -0.019721, -0.880881,
		0.875278, 0.104241, -0.472252,
		0.101137, -0.994356, -0.032037,
		19.276258, 37.501663, 20.891909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353510, 38.093147, 20.210529>,  <19.205463, 38.197712, 20.914335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353510, 38.093147, 20.210529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.209707, 37.749798, 20.356926>,  <19.123426, 37.543789, 20.444763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.209707, 37.749798, 20.356926>,  <19.353510, 38.093147, 20.210529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.209707, 37.749798, 20.356926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489380, -0.160515, -0.857171,
		0.794521, -0.487265, -0.362366,
		-0.359505, -0.858375, 0.365990,
		19.101856, 37.492287, 20.466722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346813, 37.700699, 19.655416>,  <19.353510, 38.093147, 20.210529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346813, 37.700699, 19.655416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.125374, 37.475052, 19.900463>,  <18.992510, 37.339664, 20.047491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.125374, 37.475052, 19.900463>,  <19.346813, 37.700699, 19.655416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125374, 37.475052, 19.900463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596182, -0.245167, -0.764500,
		0.581463, -0.788456, -0.200594,
		-0.553596, -0.564119, 0.612619,
		18.959295, 37.305817, 20.084249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291334, 36.965267, 19.311903>,  <19.346813, 37.700699, 19.655416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291334, 36.965267, 19.311903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.997770, 37.024853, 19.576988>,  <18.821632, 37.060604, 19.736040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.997770, 37.024853, 19.576988>,  <19.291334, 36.965267, 19.311903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997770, 37.024853, 19.576988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669038, -0.327066, -0.667395,
		0.117334, -0.933187, 0.339698,
		-0.733908, 0.148963, 0.662714,
		18.777597, 37.069542, 19.775803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.850632, 36.343040, 19.305189>,  <19.291334, 36.965267, 19.311903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.850632, 36.343040, 19.305189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.628693, 36.654568, 19.422211>,  <18.495529, 36.841484, 19.492424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.628693, 36.654568, 19.422211>,  <18.850632, 36.343040, 19.305189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628693, 36.654568, 19.422211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581724, -0.111793, -0.805667,
		-0.594764, -0.617206, 0.515085,
		-0.554846, 0.778819, 0.292554,
		18.462238, 36.888214, 19.509977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213894, 36.232658, 19.008518>,  <18.850632, 36.343040, 19.305189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213894, 36.232658, 19.008518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.153919, 36.605831, 19.139462>,  <18.117935, 36.829735, 19.218027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.153919, 36.605831, 19.139462>,  <18.213894, 36.232658, 19.008518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153919, 36.605831, 19.139462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729826, 0.118933, -0.673208,
		-0.666988, -0.339853, 0.663043,
		-0.149934, 0.932928, 0.327360,
		18.108938, 36.885708, 19.237669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524334, 36.373093, 19.074345>,  <18.213894, 36.232658, 19.008518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524334, 36.373093, 19.074345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.647491, 36.747215, 19.004601>,  <17.721386, 36.971687, 18.962753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.647491, 36.747215, 19.004601>,  <17.524334, 36.373093, 19.074345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647491, 36.747215, 19.004601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774334, 0.139857, -0.617128,
		-0.552819, 0.325022, 0.767301,
		0.307893, 0.935308, -0.174360,
		17.739859, 37.027809, 18.952293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916052, 36.724915, 18.837395>,  <17.524334, 36.373093, 19.074345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916052, 36.724915, 18.837395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.206087, 36.975067, 18.722054>,  <17.380108, 37.125156, 18.652849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.206087, 36.975067, 18.722054>,  <16.916052, 36.724915, 18.837395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206087, 36.975067, 18.722054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554852, 0.282515, -0.782512,
		-0.407901, 0.727385, 0.551841,
		0.725090, 0.625377, -0.288353,
		17.423615, 37.162682, 18.635548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650770, 37.421066, 18.783554>,  <16.916052, 36.724915, 18.837395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650770, 37.421066, 18.783554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.962540, 37.406548, 18.533375>,  <17.149601, 37.397839, 18.383268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.962540, 37.406548, 18.533375>,  <16.650770, 37.421066, 18.783554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962540, 37.406548, 18.533375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614912, 0.146799, -0.774812,
		0.119935, 0.988501, 0.092101,
		0.779423, -0.036292, -0.625447,
		17.196367, 37.395660, 18.345741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443001, 37.728027, 18.188131>,  <16.650770, 37.421066, 18.783554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443001, 37.728027, 18.188131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.796801, 37.597790, 18.054478>,  <17.009081, 37.519646, 17.974285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.796801, 37.597790, 18.054478>,  <16.443001, 37.728027, 18.188131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796801, 37.597790, 18.054478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269111, 0.228977, -0.935494,
		0.381099, 0.917365, 0.114909,
		0.884501, -0.325593, -0.334136,
		17.062151, 37.500111, 17.954237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881401, 38.220268, 17.667522>,  <16.443001, 37.728027, 18.188131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881401, 38.220268, 17.667522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.994722, 37.846169, 17.582630>,  <17.062716, 37.621708, 17.531694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.994722, 37.846169, 17.582630>,  <16.881401, 38.220268, 17.667522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994722, 37.846169, 17.582630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338789, 0.109430, -0.934477,
		0.897196, 0.336644, -0.285851,
		0.283305, -0.935252, -0.212232,
		17.079714, 37.565594, 17.518961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197248, 38.279831, 17.042845>,  <16.881401, 38.220268, 17.667522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197248, 38.279831, 17.042845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132111, 37.885414, 17.056747>,  <17.093027, 37.648766, 17.065088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.132111, 37.885414, 17.056747>,  <17.197248, 38.279831, 17.042845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.132111, 37.885414, 17.056747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359258, 0.026449, -0.932864,
		0.918921, -0.164399, -0.358549,
		-0.162845, -0.986040, 0.034757,
		17.083258, 37.589603, 17.067175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443121, 37.902275, 16.417992>,  <17.197248, 38.279831, 17.042845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443121, 37.902275, 16.417992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.178789, 37.636753, 16.558086>,  <17.020191, 37.477440, 16.642143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.178789, 37.636753, 16.558086>,  <17.443121, 37.902275, 16.417992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178789, 37.636753, 16.558086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214257, -0.280379, -0.935672,
		0.719305, -0.693359, 0.043057,
		-0.660828, -0.663808, 0.350235,
		16.980541, 37.437611, 16.663157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652727, 37.310532, 16.166395>,  <17.443121, 37.902275, 16.417992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652727, 37.310532, 16.166395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.264582, 37.266842, 16.252621>,  <17.031694, 37.240627, 16.304356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.264582, 37.266842, 16.252621>,  <17.652727, 37.310532, 16.166395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264582, 37.266842, 16.252621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167504, -0.338968, -0.925766,
		0.174188, -0.934436, 0.310625,
		-0.970361, -0.109226, 0.215565,
		16.973473, 37.234074, 16.317289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.659147, 29.612856, 23.471447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039249, 29.737385, 23.475304>,  <29.267311, 29.812103, 23.477617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039249, 29.737385, 23.475304>,  <28.659147, 29.612856, 23.471447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039249, 29.737385, 23.475304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209047, 0.660405, -0.721224,
		-0.230900, 0.683332, 0.692635,
		0.950255, 0.311324, 0.009639,
		29.324326, 29.830782, 23.478195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588467, 30.345142, 23.457443>,  <28.659147, 29.612856, 23.471447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588467, 30.345142, 23.457443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975225, 30.309124, 23.361942>,  <29.207281, 30.287514, 23.304642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975225, 30.309124, 23.361942>,  <28.588467, 30.345142, 23.457443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975225, 30.309124, 23.361942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057122, 0.835534, -0.546461,
		0.248692, 0.542010, 0.802731,
		0.966897, -0.090047, -0.238752,
		29.265295, 30.282110, 23.290318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802437, 30.958687, 23.356632>,  <28.588467, 30.345142, 23.457443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802437, 30.958687, 23.356632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104034, 30.758705, 23.186203>,  <29.284992, 30.638716, 23.083946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104034, 30.758705, 23.186203>,  <28.802437, 30.958687, 23.356632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104034, 30.758705, 23.186203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141029, 0.756710, -0.638358,
		0.641565, 0.421229, 0.641062,
		0.753993, -0.499956, -0.426073,
		29.330233, 30.608719, 23.058382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371790, 31.379370, 23.402666>,  <28.802437, 30.958687, 23.356632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371790, 31.379370, 23.402666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413012, 31.129471, 23.093067>,  <29.437744, 30.979530, 22.907309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413012, 31.129471, 23.093067>,  <29.371790, 31.379370, 23.402666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413012, 31.129471, 23.093067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233609, 0.771576, -0.591690,
		0.966854, -0.119835, 0.225463,
		0.103057, -0.624748, -0.773996,
		29.443928, 30.942047, 22.860868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947403, 31.692949, 23.067366>,  <29.371790, 31.379370, 23.402666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947403, 31.692949, 23.067366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789478, 31.438675, 22.802029>,  <29.694723, 31.286110, 22.642826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789478, 31.438675, 22.802029>,  <29.947403, 31.692949, 23.067366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789478, 31.438675, 22.802029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345308, 0.566397, -0.748303,
		0.851402, -0.524497, -0.004113,
		-0.394812, -0.635686, -0.663345,
		29.671034, 31.247969, 22.603025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437111, 31.504997, 22.579456>,  <29.947403, 31.692949, 23.067366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437111, 31.504997, 22.579456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100199, 31.433220, 22.376137>,  <29.898052, 31.390154, 22.254145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100199, 31.433220, 22.376137>,  <30.437111, 31.504997, 22.579456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100199, 31.433220, 22.376137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383843, 0.462389, -0.799288,
		0.378455, -0.868330, -0.320584,
		-0.842281, -0.179441, -0.508296,
		29.847515, 31.379387, 22.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690651, 31.507030, 21.890280>,  <30.437111, 31.504997, 22.579456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690651, 31.507030, 21.890280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292782, 31.545940, 21.903942>,  <30.054060, 31.569286, 21.912140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292782, 31.545940, 21.903942>,  <30.690651, 31.507030, 21.890280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292782, 31.545940, 21.903942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040762, 0.675344, -0.736375,
		-0.094698, -0.731059, -0.675711,
		-0.994671, 0.097276, 0.034154,
		29.994381, 31.575123, 21.914188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521477, 31.436708, 21.237925>,  <30.690651, 31.507030, 21.890280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521477, 31.436708, 21.237925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201448, 31.606552, 21.407436>,  <30.009432, 31.708458, 21.509144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201448, 31.606552, 21.407436>,  <30.521477, 31.436708, 21.237925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201448, 31.606552, 21.407436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035630, 0.738800, -0.672982,
		-0.598845, -0.523335, -0.606222,
		-0.800072, 0.424611, 0.423780,
		29.961428, 31.733936, 21.534571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264515, 31.789238, 20.654266>,  <30.521477, 31.436708, 21.237925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264515, 31.789238, 20.654266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030340, 31.942406, 20.940102>,  <29.889835, 32.034306, 21.111603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030340, 31.942406, 20.940102>,  <30.264515, 31.789238, 20.654266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030340, 31.942406, 20.940102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002634, 0.880525, -0.473992,
		-0.810714, -0.279374, -0.514482,
		-0.585436, 0.382917, 0.714591,
		29.854710, 32.057281, 21.154478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683548, 32.135159, 20.271381>,  <30.264515, 31.789238, 20.654266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683548, 32.135159, 20.271381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783703, 32.288021, 20.627193>,  <29.843796, 32.379738, 20.840681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783703, 32.288021, 20.627193>,  <29.683548, 32.135159, 20.271381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783703, 32.288021, 20.627193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166766, 0.888041, -0.428454,
		-0.953674, 0.255623, 0.158625,
		0.250388, 0.382152, 0.889531,
		29.858820, 32.402668, 20.894053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478489, 32.836868, 20.238855>,  <29.683548, 32.135159, 20.271381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478489, 32.836868, 20.238855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739086, 32.818520, 20.541763>,  <29.895445, 32.807510, 20.723507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739086, 32.818520, 20.541763>,  <29.478489, 32.836868, 20.238855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739086, 32.818520, 20.541763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345784, 0.906415, -0.242580,
		-0.675273, 0.419890, 0.606382,
		0.651491, -0.045869, 0.757269,
		29.934534, 32.804760, 20.768944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387159, 33.363029, 20.636112>,  <29.478489, 32.836868, 20.238855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387159, 33.363029, 20.636112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769075, 33.253170, 20.681618>,  <29.998224, 33.187252, 20.708921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769075, 33.253170, 20.681618>,  <29.387159, 33.363029, 20.636112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769075, 33.253170, 20.681618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288299, 0.948818, -0.128950,
		-0.072527, 0.155919, 0.985104,
		0.954790, -0.274652, 0.113766,
		30.055511, 33.170773, 20.715748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526115, 34.007530, 20.753149>,  <29.387159, 33.363029, 20.636112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526115, 34.007530, 20.753149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524490, 34.407360, 20.741554>,  <29.523516, 34.647259, 20.734598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524490, 34.407360, 20.741554>,  <29.526115, 34.007530, 20.753149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524490, 34.407360, 20.741554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907973, 0.008459, 0.418943,
		0.419009, 0.028022, 0.907549,
		-0.004063, 0.999571, -0.028988,
		29.523272, 34.707233, 20.732859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161705, 34.171059, 21.305527>,  <29.526115, 34.007530, 20.753149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161705, 34.171059, 21.305527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141993, 34.496029, 21.073135>,  <29.130165, 34.691010, 20.933701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141993, 34.496029, 21.073135>,  <29.161705, 34.171059, 21.305527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141993, 34.496029, 21.073135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902858, 0.212509, 0.373747,
		0.427105, 0.542962, 0.723031,
		-0.049280, 0.812424, -0.580981,
		29.127209, 34.739758, 20.898842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386272, 34.515812, 21.217514>,  <29.161705, 34.171059, 21.305527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386272, 34.515812, 21.217514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050861, 34.649673, 21.389503>,  <27.849615, 34.729988, 21.492697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050861, 34.649673, 21.389503>,  <28.386272, 34.515812, 21.217514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050861, 34.649673, 21.389503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144934, -0.623722, 0.768092,
		0.525226, 0.706385, 0.474507,
		-0.838530, 0.334650, 0.429974,
		27.799303, 34.750069, 21.518496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429214, 34.842438, 21.903971>,  <28.386272, 34.515812, 21.217514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429214, 34.842438, 21.903971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087357, 34.634769, 21.901279>,  <27.882242, 34.510170, 21.899664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087357, 34.634769, 21.901279>,  <28.429214, 34.842438, 21.903971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087357, 34.634769, 21.901279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201054, -0.342864, 0.917617,
		-0.478704, 0.782885, 0.397409,
		-0.854646, -0.519168, -0.006728,
		27.830963, 34.479019, 21.899261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166254, 34.943073, 22.636234>,  <28.429214, 34.842438, 21.903971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166254, 34.943073, 22.636234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012842, 34.612991, 22.470371>,  <27.920795, 34.414944, 22.370853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012842, 34.612991, 22.470371>,  <28.166254, 34.943073, 22.636234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012842, 34.612991, 22.470371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052190, -0.467642, 0.882376,
		-0.922053, 0.316775, 0.222421,
		-0.383529, -0.825206, -0.414658,
		27.897783, 34.365429, 22.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036583, 34.613464, 23.226995>,  <28.166254, 34.943073, 22.636234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036583, 34.613464, 23.226995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992922, 34.318932, 22.959892>,  <27.966724, 34.142212, 22.799631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992922, 34.318932, 22.959892>,  <28.036583, 34.613464, 23.226995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992922, 34.318932, 22.959892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085514, -0.662323, 0.744322,
		-0.990340, 0.138347, 0.009327,
		-0.109152, -0.736334, -0.667756,
		27.960176, 34.098030, 22.759565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402262, 34.228390, 23.429161>,  <28.036583, 34.613464, 23.226995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402262, 34.228390, 23.429161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663538, 34.002762, 23.227104>,  <27.820303, 33.867386, 23.105869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663538, 34.002762, 23.227104>,  <27.402262, 34.228390, 23.429161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663538, 34.002762, 23.227104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076488, -0.712868, 0.697115,
		-0.753319, -0.416713, -0.508784,
		0.653192, -0.564066, -0.505144,
		27.859495, 33.833542, 23.075562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167366, 33.590733, 23.405207>,  <27.402262, 34.228390, 23.429161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167366, 33.590733, 23.405207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557762, 33.519344, 23.355251>,  <27.792000, 33.476513, 23.325277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557762, 33.519344, 23.355251>,  <27.167366, 33.590733, 23.405207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557762, 33.519344, 23.355251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054184, -0.754233, 0.654368,
		-0.210978, -0.631888, -0.745792,
		0.975988, -0.178467, -0.124888,
		27.850559, 33.465805, 23.317785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169024, 32.855724, 23.414270>,  <27.167366, 33.590733, 23.405207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169024, 32.855724, 23.414270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536909, 32.986137, 23.501751>,  <27.757641, 33.064384, 23.554239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536909, 32.986137, 23.501751>,  <27.169024, 32.855724, 23.414270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536909, 32.986137, 23.501751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060593, -0.668277, 0.741441,
		0.387889, -0.668661, -0.634378,
		0.919712, 0.326035, 0.218701,
		27.812822, 33.083946, 23.567362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520191, 32.239754, 23.533043>,  <27.169024, 32.855724, 23.414270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520191, 32.239754, 23.533043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755188, 32.534126, 23.667660>,  <27.896187, 32.710751, 23.748430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755188, 32.534126, 23.667660>,  <27.520191, 32.239754, 23.533043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755188, 32.534126, 23.667660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282584, -0.576268, 0.766852,
		0.758287, -0.355419, -0.546515,
		0.587493, 0.735930, 0.336541,
		27.931437, 32.754906, 23.768621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213411, 31.999826, 23.593025>,  <27.520191, 32.239754, 23.533043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213411, 31.999826, 23.593025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190224, 32.301987, 23.854103>,  <28.176311, 32.483284, 24.010750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190224, 32.301987, 23.854103>,  <28.213411, 31.999826, 23.593025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190224, 32.301987, 23.854103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327283, -0.603282, 0.727280,
		0.943147, 0.255775, -0.212258,
		-0.057968, 0.755400, 0.652695,
		28.172832, 32.528606, 24.049911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801315, 32.037350, 23.854177>,  <28.213411, 31.999826, 23.593025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801315, 32.037350, 23.854177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557726, 32.218254, 24.114826>,  <28.411572, 32.326797, 24.271215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557726, 32.218254, 24.114826>,  <28.801315, 32.037350, 23.854177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557726, 32.218254, 24.114826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367164, -0.567475, 0.736996,
		0.703092, 0.688064, 0.179524,
		-0.608976, 0.452261, 0.651620,
		28.375032, 32.353931, 24.310312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118443, 32.123436, 24.418427>,  <28.801315, 32.037350, 23.854177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118443, 32.123436, 24.418427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755722, 32.202820, 24.567192>,  <28.538090, 32.250450, 24.656452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755722, 32.202820, 24.567192>,  <29.118443, 32.123436, 24.418427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755722, 32.202820, 24.567192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191935, -0.591117, 0.783417,
		0.375324, 0.781788, 0.497935,
		-0.906804, 0.198464, 0.371913,
		28.483681, 32.262360, 24.678766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198509, 32.365311, 25.142918>,  <29.118443, 32.123436, 24.418427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198509, 32.365311, 25.142918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820431, 32.239929, 25.106354>,  <28.593584, 32.164700, 25.084415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820431, 32.239929, 25.106354>,  <29.198509, 32.365311, 25.142918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820431, 32.239929, 25.106354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108388, -0.565314, 0.817724,
		-0.307992, 0.763000, 0.568306,
		-0.945195, -0.313450, -0.091412,
		28.536873, 32.145893, 25.078930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015350, 32.336250, 25.719362>,  <29.198509, 32.365311, 25.142918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015350, 32.336250, 25.719362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724552, 32.090694, 25.596325>,  <28.550074, 31.943361, 25.522503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724552, 32.090694, 25.596325>,  <29.015350, 32.336250, 25.719362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724552, 32.090694, 25.596325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212675, -0.627254, 0.749214,
		-0.652874, 0.479259, 0.586572,
		-0.726997, -0.613891, -0.307591,
		28.506453, 31.906527, 25.504047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537882, 32.275642, 26.261192>,  <29.015350, 32.336250, 25.719362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537882, 32.275642, 26.261192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478500, 31.945618, 26.043118>,  <28.442871, 31.747602, 25.912273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478500, 31.945618, 26.043118>,  <28.537882, 32.275642, 26.261192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478500, 31.945618, 26.043118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178258, -0.564589, 0.805892,
		-0.972721, 0.022454, 0.230890,
		-0.148453, -0.825066, -0.545185,
		28.433964, 31.698097, 25.879562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351103, 32.811874, 26.852621>,  <28.537882, 32.275642, 26.261192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351103, 32.811874, 26.852621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606440, 32.859772, 27.156773>,  <28.759642, 32.888512, 27.339264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606440, 32.859772, 27.156773>,  <28.351103, 32.811874, 26.852621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606440, 32.859772, 27.156773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360824, 0.826028, -0.432995,
		-0.679943, 0.550763, 0.484083,
		0.638344, 0.119743, 0.760381,
		28.797943, 32.895695, 27.384888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392941, 33.518402, 27.094406>,  <28.351103, 32.811874, 26.852621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392941, 33.518402, 27.094406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742373, 33.346340, 27.185463>,  <28.952032, 33.243103, 27.240097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742373, 33.346340, 27.185463>,  <28.392941, 33.518402, 27.094406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742373, 33.346340, 27.185463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484554, 0.812405, -0.324355,
		-0.045413, 0.393654, 0.918136,
		0.873582, -0.430157, 0.227640,
		29.004448, 33.217293, 27.253756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871254, 34.051350, 27.418909>,  <28.392941, 33.518402, 27.094406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871254, 34.051350, 27.418909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071878, 33.756668, 27.237488>,  <29.192253, 33.579861, 27.128635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071878, 33.756668, 27.237488>,  <28.871254, 34.051350, 27.418909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071878, 33.756668, 27.237488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596347, 0.674220, -0.435658,
		0.626743, -0.051966, 0.777491,
		0.501561, -0.736700, -0.453552,
		29.222347, 33.535660, 27.101421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614941, 34.271168, 27.595877>,  <28.871254, 34.051350, 27.418909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614941, 34.271168, 27.595877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628542, 33.996582, 27.305328>,  <29.636703, 33.831833, 27.130999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628542, 33.996582, 27.305328>,  <29.614941, 34.271168, 27.595877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628542, 33.996582, 27.305328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759572, 0.490100, -0.427612,
		0.649534, -0.537191, 0.538082,
		0.034005, -0.686460, -0.726372,
		29.638742, 33.790646, 27.087418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347206, 34.443111, 27.383141>,  <29.614941, 34.271168, 27.595877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347206, 34.443111, 27.383141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137886, 34.257931, 27.096970>,  <30.012295, 34.146824, 26.925266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137886, 34.257931, 27.096970>,  <30.347206, 34.443111, 27.383141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137886, 34.257931, 27.096970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558059, 0.448299, -0.698283,
		0.643993, -0.764662, 0.023757,
		-0.523300, -0.462948, -0.715428,
		29.980896, 34.119045, 26.882341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808008, 34.016323, 26.979097>,  <30.347206, 34.443111, 27.383141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808008, 34.016323, 26.979097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487089, 34.092491, 26.752800>,  <30.294538, 34.138191, 26.617022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487089, 34.092491, 26.752800>,  <30.808008, 34.016323, 26.979097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487089, 34.092491, 26.752800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547131, 0.613541, -0.569400,
		0.238683, -0.766361, -0.596424,
		-0.802296, 0.190416, -0.565741,
		30.246401, 34.149616, 26.583078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120417, 34.201027, 26.289391>,  <30.808008, 34.016323, 26.979097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120417, 34.201027, 26.289391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752150, 34.355068, 26.263893>,  <30.531189, 34.447495, 26.248594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752150, 34.355068, 26.263893>,  <31.120417, 34.201027, 26.289391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752150, 34.355068, 26.263893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365485, 0.793117, -0.487223,
		-0.137074, -0.471869, -0.870948,
		-0.920669, 0.385104, -0.063745,
		30.475948, 34.470600, 26.244770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076473, 34.248863, 25.557541>,  <31.120417, 34.201027, 26.289391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076473, 34.248863, 25.557541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819048, 34.471924, 25.767246>,  <30.664593, 34.605759, 25.893068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819048, 34.471924, 25.767246>,  <31.076473, 34.248863, 25.557541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819048, 34.471924, 25.767246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274844, 0.807646, -0.521698,
		-0.714343, -0.191655, -0.673039,
		-0.643564, 0.557652, 0.524261,
		30.625978, 34.639221, 25.924524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646238, 34.673111, 25.125639>,  <31.076473, 34.248863, 25.557541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646238, 34.673111, 25.125639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626921, 34.860077, 25.478725>,  <30.615330, 34.972256, 25.690578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626921, 34.860077, 25.478725>,  <30.646238, 34.673111, 25.125639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626921, 34.860077, 25.478725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091460, 0.882106, -0.462087,
		-0.994637, 0.058417, -0.085351,
		-0.048295, 0.467415, 0.882718,
		30.612432, 35.000301, 25.743542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348215, 35.341801, 24.929760>,  <30.646238, 34.673111, 25.125639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348215, 35.341801, 24.929760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496092, 35.420315, 25.293034>,  <30.584818, 35.467422, 25.510998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496092, 35.420315, 25.293034>,  <30.348215, 35.341801, 24.929760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496092, 35.420315, 25.293034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029922, 0.974409, -0.222783,
		-0.928672, 0.109536, 0.354359,
		0.369694, 0.196290, 0.908183,
		30.607000, 35.479202, 25.565489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212154, 35.962738, 25.059999>,  <30.348215, 35.341801, 24.929760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212154, 35.962738, 25.059999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509460, 35.955303, 25.327496>,  <30.687843, 35.950844, 25.487993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509460, 35.955303, 25.327496>,  <30.212154, 35.962738, 25.059999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509460, 35.955303, 25.327496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105189, 0.990427, -0.089383,
		-0.660677, 0.136779, 0.738104,
		0.743264, -0.018588, 0.668740,
		30.732439, 35.949726, 25.528118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078693, 36.486492, 25.705601>,  <30.212154, 35.962738, 25.059999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078693, 36.486492, 25.705601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470402, 36.412853, 25.671818>,  <30.705427, 36.368671, 25.651548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470402, 36.412853, 25.671818>,  <30.078693, 36.486492, 25.705601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470402, 36.412853, 25.671818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188432, 0.980981, 0.046568,
		0.074280, -0.061517, 0.995338,
		0.979273, -0.184095, -0.084459,
		30.764183, 36.357624, 25.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.199646, 30.432680, 30.317976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.562216, 30.348900, 30.171265>,  <28.779757, 30.298632, 30.083239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.562216, 30.348900, 30.171265>,  <28.199646, 30.432680, 30.317976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562216, 30.348900, 30.171265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012991, 0.881796, -0.471452,
		0.422170, 0.422570, 0.802002,
		0.906423, -0.209452, -0.366778,
		28.834143, 30.286064, 30.061232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516235, 31.072014, 30.321457>,  <28.199646, 30.432680, 30.317976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516235, 31.072014, 30.321457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.706396, 30.836536, 30.059944>,  <28.820494, 30.695250, 29.903036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.706396, 30.836536, 30.059944>,  <28.516235, 31.072014, 30.321457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706396, 30.836536, 30.059944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123886, 0.780521, -0.612731,
		0.871001, 0.210301, 0.443993,
		0.475404, -0.588694, -0.653782,
		28.849018, 30.659927, 29.863810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069912, 31.459208, 30.223743>,  <28.516235, 31.072014, 30.321457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069912, 31.459208, 30.223743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.057434, 31.209152, 29.911789>,  <29.049948, 31.059118, 29.724615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.057434, 31.209152, 29.911789>,  <29.069912, 31.459208, 30.223743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057434, 31.209152, 29.911789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319117, 0.733202, -0.600482,
		0.947202, -0.267608, 0.176620,
		-0.031196, -0.625141, -0.779889,
		29.048075, 31.021610, 29.677822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651188, 31.603262, 29.756580>,  <29.069912, 31.459208, 30.223743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651188, 31.603262, 29.756580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.392832, 31.414211, 29.516766>,  <29.237818, 31.300781, 29.372877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.392832, 31.414211, 29.516766>,  <29.651188, 31.603262, 29.756580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392832, 31.414211, 29.516766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241759, 0.618279, -0.747852,
		0.724140, -0.627975, -0.285078,
		-0.645890, -0.472629, -0.599539,
		29.199064, 31.272423, 29.336905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910778, 31.639320, 29.126083>,  <29.651188, 31.603262, 29.756580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910778, 31.639320, 29.126083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.528294, 31.546303, 29.054996>,  <29.298803, 31.490492, 29.012344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.528294, 31.546303, 29.054996>,  <29.910778, 31.639320, 29.126083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528294, 31.546303, 29.054996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019866, 0.657380, -0.753298,
		0.292001, -0.716782, -0.633214,
		-0.956212, -0.232543, -0.177716,
		29.241430, 31.476540, 29.001682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923244, 31.584429, 28.423422>,  <29.910778, 31.639320, 29.126083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923244, 31.584429, 28.423422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541126, 31.646225, 28.524250>,  <29.311855, 31.683302, 28.584747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.541126, 31.646225, 28.524250>,  <29.923244, 31.584429, 28.423422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541126, 31.646225, 28.524250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112027, 0.599875, -0.792212,
		-0.273599, -0.785037, -0.555752,
		-0.955297, 0.154490, 0.252070,
		29.254538, 31.692572, 28.599871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477688, 31.416613, 27.858871>,  <29.923244, 31.584429, 28.423422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477688, 31.416613, 27.858871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255142, 31.665974, 28.078629>,  <29.121614, 31.815590, 28.210482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.255142, 31.665974, 28.078629>,  <29.477688, 31.416613, 27.858871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255142, 31.665974, 28.078629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147324, 0.576690, -0.803570,
		-0.817774, -0.528016, -0.229008,
		-0.556364, 0.623400, 0.549392,
		29.088234, 31.852993, 28.243446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913305, 31.499151, 27.462891>,  <29.477688, 31.416613, 27.858871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913305, 31.499151, 27.462891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.902887, 31.811169, 27.712963>,  <28.896637, 31.998379, 27.863007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.902887, 31.811169, 27.712963>,  <28.913305, 31.499151, 27.462891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902887, 31.811169, 27.712963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025665, 0.624667, -0.780469,
		-0.999331, -0.036372, 0.003751,
		-0.026044, 0.780043, 0.625183,
		28.895075, 32.045181, 27.900518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424948, 31.973301, 27.121456>,  <28.913305, 31.499151, 27.462891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424948, 31.973301, 27.121456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613182, 32.196400, 27.394943>,  <28.726122, 32.330257, 27.559034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.613182, 32.196400, 27.394943>,  <28.424948, 31.973301, 27.121456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613182, 32.196400, 27.394943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097812, 0.737126, -0.668639,
		-0.876916, 0.381528, 0.292327,
		0.470587, 0.557747, 0.683715,
		28.754358, 32.363724, 27.600058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931427, 31.649981, 26.612591>,  <28.424948, 31.973301, 27.121456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931427, 31.649981, 26.612591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.141783, 31.456089, 26.333027>,  <28.267996, 31.339754, 26.165289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.141783, 31.456089, 26.333027>,  <27.931427, 31.649981, 26.612591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141783, 31.456089, 26.333027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023509, -0.829683, 0.557739,
		-0.850228, -0.276878, -0.447717,
		0.525889, -0.484730, -0.698911,
		28.299549, 31.310671, 26.123354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525541, 31.031958, 26.306171>,  <27.931427, 31.649981, 26.612591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525541, 31.031958, 26.306171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.917547, 30.968197, 26.258575>,  <28.152752, 30.929941, 26.230017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.917547, 30.968197, 26.258575>,  <27.525541, 31.031958, 26.306171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917547, 30.968197, 26.258575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053793, -0.788292, 0.612945,
		-0.191503, -0.594296, -0.781114,
		0.980017, -0.159400, -0.118991,
		28.211552, 30.920378, 26.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510941, 30.289843, 26.212938>,  <27.525541, 31.031958, 26.306171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510941, 30.289843, 26.212938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894821, 30.376892, 26.284054>,  <28.125151, 30.429121, 26.326723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.894821, 30.376892, 26.284054>,  <27.510941, 30.289843, 26.212938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894821, 30.376892, 26.284054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061315, -0.779590, 0.623282,
		0.274244, -0.587264, -0.761519,
		0.959704, 0.217624, 0.177789,
		28.182732, 30.442179, 26.337391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936493, 29.762533, 26.020521>,  <27.510941, 30.289843, 26.212938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936493, 29.762533, 26.020521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.128061, 29.967022, 26.305977>,  <28.243002, 30.089716, 26.477251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.128061, 29.967022, 26.305977>,  <27.936493, 29.762533, 26.020521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128061, 29.967022, 26.305977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039039, -0.824534, 0.564464,
		0.876989, -0.242475, -0.414846,
		0.478923, 0.511224, 0.713641,
		28.271738, 30.120390, 26.520069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244608, 29.163454, 26.166399>,  <27.936493, 29.762533, 26.020521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244608, 29.163454, 26.166399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361364, 29.419281, 26.450863>,  <28.431417, 29.572777, 26.621542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361364, 29.419281, 26.450863>,  <28.244608, 29.163454, 26.166399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361364, 29.419281, 26.450863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148300, -0.764813, 0.626951,
		0.944884, -0.077537, -0.318090,
		0.291891, 0.639570, 0.711161,
		28.448933, 29.611153, 26.664211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841946, 28.825224, 26.498299>,  <28.244608, 29.163454, 26.166399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841946, 28.825224, 26.498299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738274, 29.109867, 26.759506>,  <28.676069, 29.280653, 26.916231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.738274, 29.109867, 26.759506>,  <28.841946, 28.825224, 26.498299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738274, 29.109867, 26.759506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274202, -0.594090, 0.756221,
		0.926088, 0.375058, -0.041148,
		-0.259181, 0.711610, 0.653021,
		28.660519, 29.323351, 26.955412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404078, 28.958199, 26.917702>,  <28.841946, 28.825224, 26.498299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404078, 28.958199, 26.917702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.074705, 29.047016, 27.126568>,  <28.877081, 29.100307, 27.251888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.074705, 29.047016, 27.126568>,  <29.404078, 28.958199, 26.917702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074705, 29.047016, 27.126568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276985, -0.645863, 0.711435,
		0.495219, 0.730450, 0.470321,
		-0.823430, 0.222044, 0.522168,
		28.827677, 29.113628, 27.283218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518021, 28.867109, 27.678699>,  <29.404078, 28.958199, 26.917702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518021, 28.867109, 27.678699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.120481, 28.841396, 27.642624>,  <28.881958, 28.825968, 27.620979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.120481, 28.841396, 27.642624>,  <29.518021, 28.867109, 27.678699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120481, 28.841396, 27.642624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002761, -0.828446, 0.560063,
		-0.110718, 0.556368, 0.823527,
		-0.993848, -0.064283, -0.090187,
		28.822327, 28.822111, 27.615568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335049, 28.661860, 28.399353>,  <29.518021, 28.867109, 27.678699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335049, 28.661860, 28.399353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.026634, 28.621330, 28.147881>,  <28.841585, 28.597013, 27.996998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.026634, 28.621330, 28.147881>,  <29.335049, 28.661860, 28.399353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026634, 28.621330, 28.147881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241749, -0.866777, 0.436182,
		-0.589121, 0.488295, 0.643820,
		-0.771034, -0.101321, -0.628682,
		28.795324, 28.590935, 27.959276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761852, 28.487032, 28.798193>,  <29.335049, 28.661860, 28.399353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761852, 28.487032, 28.798193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.686804, 28.342049, 28.433025>,  <28.641775, 28.255058, 28.213924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.686804, 28.342049, 28.433025>,  <28.761852, 28.487032, 28.798193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686804, 28.342049, 28.433025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446582, -0.796330, 0.407949,
		-0.874850, 0.484234, -0.012458,
		-0.187622, -0.362457, -0.912920,
		28.630518, 28.233311, 28.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050184, 28.452488, 28.687666>,  <28.761852, 28.487032, 28.798193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050184, 28.452488, 28.687666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.196768, 28.187252, 28.426586>,  <28.284718, 28.028111, 28.269938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.196768, 28.187252, 28.426586>,  <28.050184, 28.452488, 28.687666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196768, 28.187252, 28.426586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565808, -0.715704, 0.409425,
		-0.738626, 0.219264, -0.637460,
		0.366461, -0.663092, -0.652698,
		28.306705, 27.988325, 28.230776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555246, 27.908094, 28.767328>,  <28.050184, 28.452488, 28.687666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555246, 27.908094, 28.767328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.839525, 27.734913, 28.545532>,  <28.010092, 27.631004, 28.412455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.839525, 27.734913, 28.545532>,  <27.555246, 27.908094, 28.767328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839525, 27.734913, 28.545532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310471, -0.900310, 0.305041,
		-0.631283, -0.044638, -0.774267,
		0.710696, -0.432954, -0.554492,
		28.052734, 27.605026, 28.379185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241693, 27.496048, 28.289585>,  <27.555246, 27.908094, 28.767328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241693, 27.496048, 28.289585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.613081, 27.349457, 28.313725>,  <27.835913, 27.261501, 28.328209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.613081, 27.349457, 28.313725>,  <27.241693, 27.496048, 28.289585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613081, 27.349457, 28.313725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371404, -0.914828, 0.158587,
		-0.002910, -0.169656, -0.985499,
		0.928467, -0.366479, 0.060348,
		27.891621, 27.239513, 28.331829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160681, 26.914721, 27.951183>,  <27.241693, 27.496048, 28.289585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160681, 26.914721, 27.951183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.464670, 26.906940, 28.211048>,  <27.647064, 26.902273, 28.366968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.464670, 26.906940, 28.211048>,  <27.160681, 26.914721, 27.951183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464670, 26.906940, 28.211048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349771, -0.854714, 0.383569,
		0.547816, -0.518735, -0.656362,
		0.759972, -0.019451, 0.649664,
		27.692661, 26.901106, 28.405947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.957954, 26.813337, 28.599667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582653, 26.873253, 28.724407>,  <34.357471, 26.909203, 28.799252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582653, 26.873253, 28.724407>,  <34.957954, 26.813337, 28.599667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582653, 26.873253, 28.724407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147482, 0.642226, -0.752194,
		-0.312947, -0.751738, -0.580478,
		-0.938250, 0.149787, 0.311850,
		34.301178, 26.918188, 28.817963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540520, 26.680317, 27.995934>,  <34.957954, 26.813337, 28.599667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540520, 26.680317, 27.995934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332535, 26.923462, 28.235981>,  <34.207745, 27.069349, 28.380009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332535, 26.923462, 28.235981>,  <34.540520, 26.680317, 27.995934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332535, 26.923462, 28.235981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165670, 0.617455, -0.768962,
		-0.837969, -0.499253, -0.220349,
		-0.519963, 0.607861, 0.600119,
		34.176544, 27.105820, 28.416018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938759, 26.668768, 27.650242>,  <34.540520, 26.680317, 27.995934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938759, 26.668768, 27.650242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.951767, 26.991001, 27.886879>,  <33.959572, 27.184341, 28.028860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.951767, 26.991001, 27.886879>,  <33.938759, 26.668768, 27.650242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951767, 26.991001, 27.886879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075414, 0.592195, -0.802258,
		-0.996622, -0.018526, 0.080009,
		0.032518, 0.805581, 0.591592,
		33.961521, 27.232676, 28.064356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403847, 27.149168, 27.399223>,  <33.938759, 26.668768, 27.650242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403847, 27.149168, 27.399223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650612, 27.366283, 27.627186>,  <33.798672, 27.496553, 27.763964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650612, 27.366283, 27.627186>,  <33.403847, 27.149168, 27.399223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650612, 27.366283, 27.627186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067920, 0.684705, -0.725648,
		-0.784092, 0.486373, 0.385540,
		0.616917, 0.542789, 0.569906,
		33.835686, 27.529119, 27.798157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162712, 27.868092, 27.222612>,  <33.403847, 27.149168, 27.399223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162712, 27.868092, 27.222612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518322, 27.901684, 27.402645>,  <33.731689, 27.921839, 27.510664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518322, 27.901684, 27.402645>,  <33.162712, 27.868092, 27.222612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518322, 27.901684, 27.402645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225528, 0.775179, -0.590114,
		-0.398452, 0.626135, 0.670217,
		0.889029, 0.083980, 0.450083,
		33.785030, 27.926878, 27.537670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129734, 28.585934, 27.485525>,  <33.162712, 27.868092, 27.222612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129734, 28.585934, 27.485525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507427, 28.458572, 27.451939>,  <33.734043, 28.382156, 27.431786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507427, 28.458572, 27.451939>,  <33.129734, 28.585934, 27.485525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507427, 28.458572, 27.451939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246858, 0.853221, -0.459429,
		0.217927, 0.413078, 0.884237,
		0.944229, -0.318402, -0.083968,
		33.790695, 28.363052, 27.426748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432327, 29.142029, 27.608042>,  <33.129734, 28.585934, 27.485525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432327, 29.142029, 27.608042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682472, 28.900204, 27.410690>,  <33.832561, 28.755108, 27.292280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682472, 28.900204, 27.410690>,  <33.432327, 29.142029, 27.608042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682472, 28.900204, 27.410690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234287, 0.748564, -0.620292,
		0.744329, 0.272317, 0.609768,
		0.625366, -0.604562, -0.493377,
		33.870083, 28.718836, 27.262676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947716, 29.522848, 27.491356>,  <33.432327, 29.142029, 27.608042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947716, 29.522848, 27.491356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999825, 29.237946, 27.215466>,  <34.031090, 29.067003, 27.049932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.999825, 29.237946, 27.215466>,  <33.947716, 29.522848, 27.491356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999825, 29.237946, 27.215466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191772, 0.700616, -0.687284,
		0.972755, -0.042735, 0.227863,
		0.130273, -0.712257, -0.689723,
		34.038906, 29.024269, 27.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609959, 29.659924, 27.183605>,  <33.947716, 29.522848, 27.491356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609959, 29.659924, 27.183605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382603, 29.448021, 26.931797>,  <34.246189, 29.320879, 26.780712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382603, 29.448021, 26.931797>,  <34.609959, 29.659924, 27.183605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382603, 29.448021, 26.931797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277250, 0.597056, -0.752766,
		0.774641, -0.602397, -0.192485,
		-0.568388, -0.529757, -0.629518,
		34.212086, 29.289095, 26.742941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945332, 29.725037, 26.554356>,  <34.609959, 29.659924, 27.183605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945332, 29.725037, 26.554356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595310, 29.568394, 26.440567>,  <34.385296, 29.474409, 26.372293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595310, 29.568394, 26.440567>,  <34.945332, 29.725037, 26.554356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595310, 29.568394, 26.440567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025926, 0.548957, -0.835449,
		0.483327, -0.738439, -0.470215,
		-0.875056, -0.391604, -0.284471,
		34.332794, 29.450912, 26.355227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787140, 30.188410, 26.042683>,  <34.945332, 29.725037, 26.554356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787140, 30.188410, 26.042683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493507, 29.920204, 25.999729>,  <34.317329, 29.759281, 25.973957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493507, 29.920204, 25.999729>,  <34.787140, 30.188410, 26.042683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493507, 29.920204, 25.999729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277818, 0.440846, -0.853506,
		0.619629, -0.596711, -0.509898,
		-0.734083, -0.670516, -0.107384,
		34.273281, 29.719049, 25.967514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857849, 29.660173, 25.436848>,  <34.787140, 30.188410, 26.042683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857849, 29.660173, 25.436848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474743, 29.736034, 25.523308>,  <34.244881, 29.781551, 25.575184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.474743, 29.736034, 25.523308>,  <34.857849, 29.660173, 25.436848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474743, 29.736034, 25.523308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078813, 0.549767, -0.831592,
		-0.276548, -0.813503, -0.511599,
		-0.957763, 0.189655, 0.216152,
		34.187412, 29.792931, 25.588154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445110, 29.509069, 24.834007>,  <34.857849, 29.660173, 25.436848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445110, 29.509069, 24.834007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271126, 29.785755, 25.064602>,  <34.166733, 29.951767, 25.202959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.271126, 29.785755, 25.064602>,  <34.445110, 29.509069, 24.834007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271126, 29.785755, 25.064602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030049, 0.628717, -0.777053,
		-0.899945, -0.355315, -0.252685,
		-0.434965, 0.691713, 0.576488,
		34.140636, 29.993269, 25.237549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309303, 30.033844, 24.391068>,  <34.445110, 29.509069, 24.834007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309303, 30.033844, 24.391068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212704, 30.236294, 24.722252>,  <34.154743, 30.357763, 24.920961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212704, 30.236294, 24.722252>,  <34.309303, 30.033844, 24.391068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212704, 30.236294, 24.722252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016185, 0.855195, -0.518054,
		-0.970267, -0.111708, -0.214718,
		-0.241496, 0.506126, 0.827959,
		34.140255, 30.388132, 24.970640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567188, 29.704473, 24.088549>,  <34.309303, 30.033844, 24.391068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567188, 29.704473, 24.088549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559643, 29.480751, 23.757050>,  <33.555115, 29.346518, 23.558151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559643, 29.480751, 23.757050>,  <33.567188, 29.704473, 24.088549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559643, 29.480751, 23.757050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084796, -0.825012, 0.558717,
		-0.996220, 0.080813, -0.031865,
		-0.018863, -0.559307, -0.828746,
		33.553986, 29.312960, 23.508427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073341, 29.292191, 24.226311>,  <33.567188, 29.704473, 24.088549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073341, 29.292191, 24.226311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252640, 29.103905, 23.922337>,  <33.360218, 28.990934, 23.739952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252640, 29.103905, 23.922337>,  <33.073341, 29.292191, 24.226311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252640, 29.103905, 23.922337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079370, -0.867727, 0.490664,
		-0.890379, -0.159622, -0.426317,
		0.448247, -0.470714, -0.759936,
		33.387115, 28.962690, 23.694357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620724, 28.714151, 24.074947>,  <33.073341, 29.292191, 24.226311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620724, 28.714151, 24.074947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981709, 28.642212, 23.918373>,  <33.198299, 28.599049, 23.824429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981709, 28.642212, 23.918373>,  <32.620724, 28.714151, 24.074947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981709, 28.642212, 23.918373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038391, -0.871480, 0.488925,
		-0.429059, -0.456263, -0.779572,
		0.902460, -0.179849, -0.391433,
		33.252445, 28.588257, 23.800943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560760, 28.172119, 23.757093>,  <32.620724, 28.714151, 24.074947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560760, 28.172119, 23.757093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952557, 28.199192, 23.833008>,  <33.187634, 28.215435, 23.878557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952557, 28.199192, 23.833008>,  <32.560760, 28.172119, 23.757093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952557, 28.199192, 23.833008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028907, -0.884954, 0.464780,
		0.199410, -0.460733, -0.864847,
		0.979490, 0.067682, 0.189787,
		33.246403, 28.219496, 23.889944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801636, 27.590242, 23.653172>,  <32.560760, 28.172119, 23.757093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801636, 27.590242, 23.653172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096825, 27.751537, 23.869614>,  <33.273937, 27.848314, 23.999479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096825, 27.751537, 23.869614>,  <32.801636, 27.590242, 23.653172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096825, 27.751537, 23.869614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021908, -0.815733, 0.578014,
		0.674472, -0.414705, -0.610825,
		0.737975, 0.403237, 0.541103,
		33.318218, 27.872509, 24.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238995, 27.037487, 23.771351>,  <32.801636, 27.590242, 23.653172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238995, 27.037487, 23.771351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316288, 27.301666, 24.061584>,  <33.362663, 27.460175, 24.235723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316288, 27.301666, 24.061584>,  <33.238995, 27.037487, 23.771351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316288, 27.301666, 24.061584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096339, -0.723174, 0.683914,
		0.976412, -0.202055, -0.076112,
		0.193230, 0.660449, 0.725582,
		33.374256, 27.499802, 24.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678207, 26.658594, 24.231794>,  <33.238995, 27.037487, 23.771351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678207, 26.658594, 24.231794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555393, 26.969048, 24.452103>,  <33.481705, 27.155319, 24.584288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.555393, 26.969048, 24.452103>,  <33.678207, 26.658594, 24.231794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555393, 26.969048, 24.452103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036906, -0.587999, 0.808019,
		0.950981, 0.227766, 0.209182,
		-0.307038, 0.776132, 0.550770,
		33.463284, 27.201887, 24.617334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026482, 26.692368, 24.781347>,  <33.678207, 26.658594, 24.231794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026482, 26.692368, 24.781347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708282, 26.905457, 24.896854>,  <33.517361, 27.033310, 24.966158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708282, 26.905457, 24.896854>,  <34.026482, 26.692368, 24.781347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708282, 26.905457, 24.896854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168859, -0.652563, 0.738680,
		0.581950, 0.538859, 0.609068,
		-0.795500, 0.532722, 0.288768,
		33.469631, 27.065273, 24.983484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061756, 26.811705, 25.456558>,  <34.026482, 26.692368, 24.781347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061756, 26.811705, 25.456558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667492, 26.829453, 25.391430>,  <33.430935, 26.840101, 25.352352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667492, 26.829453, 25.391430>,  <34.061756, 26.811705, 25.456558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667492, 26.829453, 25.391430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159188, -0.564756, 0.809759,
		-0.056028, 0.824064, 0.563719,
		-0.985657, 0.044368, -0.162823,
		33.371796, 26.842762, 25.342583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769463, 27.038294, 26.109142>,  <34.061756, 26.811705, 25.456558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769463, 27.038294, 26.109142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483192, 26.848915, 25.903751>,  <33.311432, 26.735289, 25.780518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483192, 26.848915, 25.903751>,  <33.769463, 27.038294, 26.109142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483192, 26.848915, 25.903751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277461, -0.481955, 0.831104,
		-0.640954, 0.737271, 0.213562,
		-0.715677, -0.473445, -0.513475,
		33.268490, 26.706882, 25.749708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508610, 26.771635, 26.602051>,  <33.769463, 27.038294, 26.109142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508610, 26.771635, 26.602051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.260647, 26.628014, 26.322968>,  <33.111870, 26.541842, 26.155518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.260647, 26.628014, 26.322968>,  <33.508610, 26.771635, 26.602051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260647, 26.628014, 26.322968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538158, -0.452555, 0.711042,
		-0.571054, 0.816256, 0.087314,
		-0.619907, -0.359054, -0.697708,
		33.074677, 26.520298, 26.113655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747688, 26.944038, 26.781662>,  <33.508610, 26.771635, 26.602051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747688, 26.944038, 26.781662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776138, 26.616680, 26.553566>,  <32.793209, 26.420265, 26.416708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776138, 26.616680, 26.553566>,  <32.747688, 26.944038, 26.781662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776138, 26.616680, 26.553566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255424, -0.567567, 0.782705,
		-0.964210, 0.089986, -0.249403,
		0.071120, -0.818395, -0.570238,
		32.797474, 26.371162, 26.382494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129955, 26.542622, 26.823605>,  <32.747688, 26.944038, 26.781662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129955, 26.542622, 26.823605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387249, 26.262333, 26.700165>,  <32.541626, 26.094160, 26.626101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387249, 26.262333, 26.700165>,  <32.129955, 26.542622, 26.823605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387249, 26.262333, 26.700165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369741, -0.637212, 0.676204,
		-0.670478, -0.320855, -0.668963,
		0.643235, -0.700724, -0.308603,
		32.580219, 26.052116, 26.607584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726620, 25.983313, 26.923882>,  <32.129955, 26.542622, 26.823605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726620, 25.983313, 26.923882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089573, 25.820515, 26.881905>,  <32.307346, 25.722836, 26.856718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089573, 25.820515, 26.881905>,  <31.726620, 25.983313, 26.923882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089573, 25.820515, 26.881905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175939, -0.594555, 0.784570,
		-0.381710, -0.693441, -0.611095,
		0.907382, -0.406993, -0.104944,
		32.361786, 25.698416, 26.850422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072058, 25.594410, 26.692314>,  <31.726620, 25.983313, 26.923882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072058, 25.594410, 26.692314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690159, 25.635723, 26.803879>,  <30.461020, 25.660511, 26.870817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.690159, 25.635723, 26.803879>,  <31.072058, 25.594410, 26.692314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690159, 25.635723, 26.803879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062459, 0.847229, -0.527543,
		-0.290789, -0.521090, -0.802438,
		-0.954746, 0.103284, 0.278912,
		30.403734, 25.666708, 26.887552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777071, 25.729292, 26.056135>,  <31.072058, 25.594410, 26.692314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777071, 25.729292, 26.056135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.493744, 25.869377, 26.301292>,  <30.323748, 25.953428, 26.448387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.493744, 25.869377, 26.301292>,  <30.777071, 25.729292, 26.056135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493744, 25.869377, 26.301292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175006, 0.754023, -0.633105,
		-0.683857, -0.555699, -0.472798,
		-0.708316, 0.350211, 0.612895,
		30.281248, 25.974440, 26.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225281, 25.850883, 25.685989>,  <30.777071, 25.729292, 26.056135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225281, 25.850883, 25.685989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.147886, 26.066113, 26.014145>,  <30.101450, 26.195250, 26.211039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.147886, 26.066113, 26.014145>,  <30.225281, 25.850883, 25.685989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147886, 26.066113, 26.014145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206065, 0.795251, -0.570186,
		-0.959218, -0.279378, -0.042993,
		-0.193487, 0.538074, 0.820390,
		30.089840, 26.227535, 26.260262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649551, 26.283358, 25.459696>,  <30.225281, 25.850883, 25.685989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649551, 26.283358, 25.459696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793289, 26.470364, 25.782757>,  <29.879532, 26.582567, 25.976593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.793289, 26.470364, 25.782757>,  <29.649551, 26.283358, 25.459696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793289, 26.470364, 25.782757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159517, 0.883495, -0.440444,
		-0.919471, 0.029436, 0.392054,
		0.359343, 0.467514, 0.807653,
		29.901093, 26.610619, 26.025053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127260, 26.795073, 25.798756>,  <29.649551, 26.283358, 25.459696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127260, 26.795073, 25.798756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.483431, 26.923580, 25.927708>,  <29.697132, 27.000685, 26.005079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.483431, 26.923580, 25.927708>,  <29.127260, 26.795073, 25.798756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483431, 26.923580, 25.927708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180873, 0.899777, -0.397098,
		-0.417647, 0.295276, 0.859292,
		0.890424, 0.321270, 0.322382,
		29.750559, 27.019960, 26.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975367, 27.445972, 26.137646>,  <29.127260, 26.795073, 25.798756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975367, 27.445972, 26.137646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365255, 27.453827, 26.048622>,  <29.599188, 27.458540, 25.995209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365255, 27.453827, 26.048622>,  <28.975367, 27.445972, 26.137646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365255, 27.453827, 26.048622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118461, 0.890005, -0.440293,
		0.189432, 0.455528, 0.869833,
		0.974722, 0.019636, -0.222558,
		29.657671, 27.459717, 25.981855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159288, 28.160864, 26.295349>,  <28.975367, 27.445972, 26.137646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159288, 28.160864, 26.295349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434814, 28.008667, 26.048527>,  <29.600130, 27.917349, 25.900433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.434814, 28.008667, 26.048527>,  <29.159288, 28.160864, 26.295349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434814, 28.008667, 26.048527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090029, 0.889496, -0.447986,
		0.719323, 0.253028, 0.646956,
		0.688817, -0.380491, -0.617055,
		29.641460, 27.894520, 25.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709049, 28.728376, 26.158985>,  <29.159288, 28.160864, 26.295349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709049, 28.728376, 26.158985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.761938, 28.460075, 25.867065>,  <29.793673, 28.299095, 25.691914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.761938, 28.460075, 25.867065>,  <29.709049, 28.728376, 26.158985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761938, 28.460075, 25.867065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040732, 0.739319, -0.672122,
		0.990383, 0.059145, 0.125077,
		0.132224, -0.670753, -0.729800,
		29.801605, 28.258850, 25.648125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290342, 28.993265, 25.782564>,  <29.709049, 28.728376, 26.158985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290342, 28.993265, 25.782564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.106155, 28.728626, 25.545834>,  <29.995644, 28.569843, 25.403795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.106155, 28.728626, 25.545834>,  <30.290342, 28.993265, 25.782564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106155, 28.728626, 25.545834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168097, 0.589659, -0.789965,
		0.871615, -0.463237, -0.160307,
		-0.460468, -0.661599, -0.591824,
		29.968016, 28.530148, 25.368286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722906, 28.894857, 25.133570>,  <30.290342, 28.993265, 25.782564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722906, 28.894857, 25.133570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343067, 28.789696, 25.065277>,  <30.115164, 28.726599, 25.024302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.343067, 28.789696, 25.065277>,  <30.722906, 28.894857, 25.133570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343067, 28.789696, 25.065277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001033, 0.542009, -0.840372,
		0.313472, -0.798191, -0.514419,
		-0.949597, -0.262902, -0.170729,
		30.058187, 28.710825, 25.014059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774324, 28.787613, 24.466696>,  <30.722906, 28.894857, 25.133570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774324, 28.787613, 24.466696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.380308, 28.833191, 24.518398>,  <30.143898, 28.860538, 24.549419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.380308, 28.833191, 24.518398>,  <30.774324, 28.787613, 24.466696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380308, 28.833191, 24.518398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041460, 0.571369, -0.819645,
		-0.167249, -0.812744, -0.558099,
		-0.985043, 0.113946, 0.129257,
		30.084795, 28.867374, 24.557175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373703, 28.682564, 23.816044>,  <30.774324, 28.787613, 24.466696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373703, 28.682564, 23.816044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.148569, 28.903645, 24.061886>,  <30.013489, 29.036293, 24.209391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.148569, 28.903645, 24.061886>,  <30.373703, 28.682564, 23.816044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148569, 28.903645, 24.061886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162207, 0.655246, -0.737795,
		-0.810499, -0.514948, -0.279141,
		-0.562832, 0.552704, 0.614605,
		29.979719, 29.069456, 24.246267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718468, 28.664652, 23.445835>,  <30.373703, 28.682564, 23.816044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718468, 28.664652, 23.445835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706961, 28.967869, 23.706463>,  <29.700056, 29.149799, 23.862841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.706961, 28.967869, 23.706463>,  <29.718468, 28.664652, 23.445835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706961, 28.967869, 23.706463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275584, 0.620564, -0.734135,
		-0.960846, -0.200681, 0.191053,
		-0.028766, 0.758042, 0.651571,
		29.698330, 29.195282, 23.901934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093737, 28.901321, 23.498690>,  <29.718468, 28.664652, 23.445835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093737, 28.901321, 23.498690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.315996, 29.208233, 23.626774>,  <29.449352, 29.392380, 23.703625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.315996, 29.208233, 23.626774>,  <29.093737, 28.901321, 23.498690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315996, 29.208233, 23.626774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307883, 0.547649, -0.778003,
		-0.772310, 0.333708, 0.540533,
		0.555648, 0.767280, 0.320212,
		29.482691, 29.438417, 23.722837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.876648, 39.806778, 26.962948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.160847, 39.779663, 26.682777>,  <45.331367, 39.763393, 26.514675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.160847, 39.779663, 26.682777>,  <44.876648, 39.806778, 26.962948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160847, 39.779663, 26.682777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653582, -0.432472, -0.621127,
		-0.260814, 0.899096, -0.351573,
		0.710498, -0.067783, -0.700427,
		45.373997, 39.759327, 26.472649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553261, 40.076469, 26.353365>,  <44.876648, 39.806778, 26.962948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553261, 40.076469, 26.353365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.871044, 39.862724, 26.237919>,  <45.061714, 39.734478, 26.168652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.871044, 39.862724, 26.237919>,  <44.553261, 40.076469, 26.353365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871044, 39.862724, 26.237919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573613, -0.504100, -0.645640,
		0.199513, 0.678486, -0.707002,
		0.794458, -0.534359, -0.288613,
		45.109383, 39.702415, 26.151335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610508, 40.002441, 25.565786>,  <44.553261, 40.076469, 26.353365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610508, 40.002441, 25.565786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.763054, 39.673882, 25.735424>,  <44.854580, 39.476746, 25.837208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.763054, 39.673882, 25.735424>,  <44.610508, 40.002441, 25.565786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763054, 39.673882, 25.735424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589796, -0.569462, -0.572585,
		0.711830, -0.031767, -0.701633,
		0.381364, -0.821404, 0.424096,
		44.877464, 39.427460, 25.862654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597263, 39.508572, 24.991547>,  <44.610508, 40.002441, 25.565786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597263, 39.508572, 24.991547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.699917, 39.263046, 25.290176>,  <44.761509, 39.115730, 25.469355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.699917, 39.263046, 25.290176>,  <44.597263, 39.508572, 24.991547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699917, 39.263046, 25.290176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398681, -0.770896, -0.496762,
		0.880449, -0.170157, -0.442556,
		0.256637, -0.613812, 0.746574,
		44.776909, 39.078903, 25.514149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960045, 38.941532, 24.624088>,  <44.597263, 39.508572, 24.991547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960045, 38.941532, 24.624088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.832901, 38.829651, 24.986465>,  <44.756615, 38.762524, 25.203892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.832901, 38.829651, 24.986465>,  <44.960045, 38.941532, 24.624088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832901, 38.829651, 24.986465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477095, -0.778532, -0.407759,
		0.819356, -0.561831, 0.114020,
		-0.317860, -0.279702, 0.905942,
		44.737541, 38.745739, 25.258247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180553, 38.202736, 24.750708>,  <44.960045, 38.941532, 24.624088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180553, 38.202736, 24.750708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.870491, 38.238552, 25.000866>,  <44.684456, 38.260040, 25.150961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.870491, 38.238552, 25.000866>,  <45.180553, 38.202736, 24.750708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870491, 38.238552, 25.000866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467137, -0.747692, -0.471953,
		0.425347, -0.657982, 0.621402,
		-0.775153, 0.089536, 0.625396,
		44.637943, 38.265411, 25.188484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108353, 37.592712, 24.970098>,  <45.180553, 38.202736, 24.750708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108353, 37.592712, 24.970098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.760513, 37.773602, 25.049397>,  <44.551811, 37.882133, 25.096975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.760513, 37.773602, 25.049397>,  <45.108353, 37.592712, 24.970098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760513, 37.773602, 25.049397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487003, -0.719305, -0.495407,
		-0.081432, -0.527350, 0.845737,
		-0.869596, 0.452219, 0.198246,
		44.499634, 37.909267, 25.108870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704510, 36.999329, 25.210051>,  <45.108353, 37.592712, 24.970098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704510, 36.999329, 25.210051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.451393, 37.292389, 25.109821>,  <44.299522, 37.468227, 25.049683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.451393, 37.292389, 25.109821>,  <44.704510, 36.999329, 25.210051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451393, 37.292389, 25.109821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562130, -0.657224, -0.502063,
		-0.532522, -0.176847, 0.827735,
		-0.632795, 0.732655, -0.250575,
		44.261555, 37.512184, 25.034649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988026, 36.719185, 25.418575>,  <44.704510, 36.999329, 25.210051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988026, 36.719185, 25.418575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.926384, 37.024323, 25.167397>,  <43.889397, 37.207405, 25.016689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.926384, 37.024323, 25.167397>,  <43.988026, 36.719185, 25.418575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926384, 37.024323, 25.167397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781046, -0.483306, -0.395453,
		-0.605160, 0.429515, 0.670297,
		-0.154106, 0.762845, -0.627949,
		43.880154, 37.253178, 24.979012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232319, 36.913544, 25.394302>,  <43.988026, 36.719185, 25.418575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232319, 36.913544, 25.394302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.374195, 37.061394, 25.050774>,  <43.459320, 37.150105, 24.844656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.374195, 37.061394, 25.050774>,  <43.232319, 36.913544, 25.394302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374195, 37.061394, 25.050774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761623, -0.418575, -0.494697,
		-0.542335, 0.829560, 0.133055,
		0.354687, 0.369629, -0.858820,
		43.480602, 37.172283, 24.793127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669334, 37.292423, 24.970251>,  <43.232319, 36.913544, 25.394302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669334, 37.292423, 24.970251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959717, 37.176586, 24.720730>,  <43.133945, 37.107086, 24.571016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959717, 37.176586, 24.720730>,  <42.669334, 37.292423, 24.970251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959717, 37.176586, 24.720730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681337, -0.426358, -0.594979,
		-0.093663, 0.856946, -0.506824,
		0.725953, -0.289590, -0.623803,
		43.177502, 37.089710, 24.533588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381634, 37.588303, 24.278669>,  <42.669334, 37.292423, 24.970251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381634, 37.588303, 24.278669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646248, 37.288750, 24.262913>,  <42.805016, 37.109016, 24.253458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.646248, 37.288750, 24.262913>,  <42.381634, 37.588303, 24.278669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646248, 37.288750, 24.262913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670192, -0.566817, -0.479126,
		0.336481, 0.343357, -0.876862,
		0.661531, -0.748882, -0.039392,
		42.844707, 37.064083, 24.251095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122292, 37.164818, 23.777533>,  <42.381634, 37.588303, 24.278669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122292, 37.164818, 23.777533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.385914, 36.899860, 23.920013>,  <42.544086, 36.740887, 24.005501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.385914, 36.899860, 23.920013>,  <42.122292, 37.164818, 23.777533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385914, 36.899860, 23.920013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563015, -0.748545, -0.350279,
		0.498654, 0.030308, -0.866271,
		0.659059, -0.662392, 0.356201,
		42.583630, 36.701141, 24.026875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235477, 36.711723, 23.185553>,  <42.122292, 37.164818, 23.777533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235477, 36.711723, 23.185553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348663, 36.509502, 23.511581>,  <42.416576, 36.388168, 23.707199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348663, 36.509502, 23.511581>,  <42.235477, 36.711723, 23.185553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348663, 36.509502, 23.511581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438175, -0.824078, -0.359023,
		0.853189, -0.255552, -0.454710,
		0.282968, -0.505557, 0.815072,
		42.433552, 36.357834, 23.756104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363617, 36.024822, 22.940008>,  <42.235477, 36.711723, 23.185553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363617, 36.024822, 22.940008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.336246, 35.974400, 23.335873>,  <42.319824, 35.944145, 23.573391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.336246, 35.974400, 23.335873>,  <42.363617, 36.024822, 22.940008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336246, 35.974400, 23.335873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449747, -0.881572, -0.143384,
		0.890531, -0.454908, 0.003634,
		-0.068430, -0.126053, 0.989661,
		42.315716, 35.936584, 23.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745148, 35.334621, 23.043535>,  <42.363617, 36.024822, 22.940008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745148, 35.334621, 23.043535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489048, 35.433575, 23.334431>,  <42.335388, 35.492947, 23.508968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489048, 35.433575, 23.334431>,  <42.745148, 35.334621, 23.043535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489048, 35.433575, 23.334431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481555, -0.866859, -0.129072,
		0.598485, -0.432845, 0.674137,
		-0.640250, 0.247387, 0.727241,
		42.296974, 35.507790, 23.552603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728973, 34.703239, 23.500330>,  <42.745148, 35.334621, 23.043535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728973, 34.703239, 23.500330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387367, 34.902500, 23.560329>,  <42.182404, 35.022057, 23.596329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.387367, 34.902500, 23.560329>,  <42.728973, 34.703239, 23.500330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387367, 34.902500, 23.560329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511722, -0.856330, -0.069569,
		0.093792, -0.136171, 0.986236,
		-0.854016, 0.498154, 0.149999,
		42.131161, 35.051945, 23.605330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395378, 34.346478, 23.997082>,  <42.728973, 34.703239, 23.500330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395378, 34.346478, 23.997082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.097755, 34.559708, 23.835983>,  <41.919182, 34.687645, 23.739325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.097755, 34.559708, 23.835983>,  <42.395378, 34.346478, 23.997082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097755, 34.559708, 23.835983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541465, -0.834277, -0.103914,
		-0.391397, 0.140755, 0.909393,
		-0.744059, 0.533076, -0.402748,
		41.874538, 34.719631, 23.715158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692524, 34.035820, 24.237661>,  <42.395378, 34.346478, 23.997082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692524, 34.035820, 24.237661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.597538, 34.271072, 23.928413>,  <41.540546, 34.412224, 23.742865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.597538, 34.271072, 23.928413>,  <41.692524, 34.035820, 24.237661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597538, 34.271072, 23.928413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751465, -0.615559, -0.237461,
		-0.615559, 0.524585, 0.588131,
		0.237461, -0.588131, 0.773120,
		41.526299, 34.447510, 23.696478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025997, 34.014103, 24.396206>,  <41.692524, 34.035820, 24.237661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025997, 34.014103, 24.396206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092049, 34.118423, 24.015739>,  <41.131680, 34.181015, 23.787460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.092049, 34.118423, 24.015739>,  <41.025997, 34.014103, 24.396206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092049, 34.118423, 24.015739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837656, -0.472008, -0.274848,
		-0.520638, 0.842135, 0.140519,
		0.165133, 0.260802, -0.951164,
		41.141590, 34.196663, 23.730391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486614, 34.357788, 24.227930>,  <41.025997, 34.014103, 24.396206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486614, 34.357788, 24.227930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639889, 34.220753, 23.884815>,  <40.731853, 34.138531, 23.678947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639889, 34.220753, 23.884815>,  <40.486614, 34.357788, 24.227930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639889, 34.220753, 23.884815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898992, -0.351562, -0.261185,
		-0.212085, 0.871226, -0.442702,
		0.383189, -0.342592, -0.857786,
		40.754845, 34.117973, 23.627480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823219, 34.554638, 24.556847>,  <40.486614, 34.357788, 24.227930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823219, 34.554638, 24.556847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630573, 34.900173, 24.615952>,  <39.514984, 35.107494, 24.651415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.630573, 34.900173, 24.615952>,  <39.823219, 34.554638, 24.556847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630573, 34.900173, 24.615952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721181, 0.294854, 0.626864,
		0.497938, 0.408474, -0.764988,
		-0.481618, 0.863835, 0.147765,
		39.486088, 35.159325, 24.660280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337021, 35.081123, 24.673115>,  <39.823219, 34.554638, 24.556847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337021, 35.081123, 24.673115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008244, 35.241512, 24.834915>,  <39.810978, 35.337746, 24.931995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.008244, 35.241512, 24.834915>,  <40.337021, 35.081123, 24.673115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008244, 35.241512, 24.834915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562556, 0.460485, 0.686647,
		0.089064, 0.791942, -0.604066,
		-0.821948, 0.400976, 0.404499,
		39.761658, 35.361805, 24.956264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401524, 35.893150, 24.702166>,  <40.337021, 35.081123, 24.673115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401524, 35.893150, 24.702166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131073, 35.757362, 24.963734>,  <39.968803, 35.675888, 25.120674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.131073, 35.757362, 24.963734>,  <40.401524, 35.893150, 24.702166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131073, 35.757362, 24.963734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468748, 0.486555, 0.737252,
		-0.568447, 0.804998, -0.169843,
		-0.676124, -0.339474, 0.653921,
		39.928234, 35.655521, 25.159910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293610, 36.382477, 25.125628>,  <40.401524, 35.893150, 24.702166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293610, 36.382477, 25.125628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103184, 36.132233, 25.372845>,  <39.988930, 35.982086, 25.521175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103184, 36.132233, 25.372845>,  <40.293610, 36.382477, 25.125628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103184, 36.132233, 25.372845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382032, 0.485890, 0.786106,
		-0.792096, 0.610348, 0.007688,
		-0.476062, -0.625609, 0.618044,
		39.960365, 35.944550, 25.558258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830734, 36.828117, 25.560543>,  <40.293610, 36.382477, 25.125628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830734, 36.828117, 25.560543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.942402, 36.483791, 25.730751>,  <40.009403, 36.277195, 25.832876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.942402, 36.483791, 25.730751>,  <39.830734, 36.828117, 25.560543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942402, 36.483791, 25.730751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296672, 0.498780, 0.814374,
		-0.913264, -0.101106, 0.394622,
		0.279168, -0.860811, 0.425522,
		40.026154, 36.225548, 25.858408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566948, 36.985355, 26.229326>,  <39.830734, 36.828117, 25.560543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566948, 36.985355, 26.229326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807087, 36.666965, 26.260345>,  <39.951168, 36.475933, 26.278957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807087, 36.666965, 26.260345>,  <39.566948, 36.985355, 26.229326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807087, 36.666965, 26.260345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388751, 0.375190, 0.841490,
		-0.698898, -0.475037, 0.534679,
		0.600345, -0.795973, 0.077548,
		39.987190, 36.428173, 26.283609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632805, 36.752190, 26.908171>,  <39.566948, 36.985355, 26.229326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632805, 36.752190, 26.908171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953342, 36.555946, 26.771255>,  <40.145664, 36.438202, 26.689106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.953342, 36.555946, 26.771255>,  <39.632805, 36.752190, 26.908171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953342, 36.555946, 26.771255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504934, 0.247900, 0.826793,
		-0.320774, -0.835376, 0.446375,
		0.801339, -0.490604, -0.342290,
		40.193745, 36.408764, 26.668568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927750, 36.231163, 27.425631>,  <39.632805, 36.752190, 26.908171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927750, 36.231163, 27.425631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232006, 36.314625, 27.179741>,  <40.414562, 36.364700, 27.032207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232006, 36.314625, 27.179741>,  <39.927750, 36.231163, 27.425631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232006, 36.314625, 27.179741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559376, 0.269865, 0.783754,
		0.329428, -0.940019, 0.088554,
		0.760641, 0.208656, -0.614725,
		40.460197, 36.377220, 26.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563416, 35.998341, 27.762016>,  <39.927750, 36.231163, 27.425631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563416, 35.998341, 27.762016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679794, 36.263645, 27.486210>,  <40.749622, 36.422829, 27.320726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679794, 36.263645, 27.486210>,  <40.563416, 35.998341, 27.762016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679794, 36.263645, 27.486210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726628, 0.315642, 0.610231,
		0.622383, -0.678567, -0.390110,
		0.290948, 0.663262, -0.689516,
		40.767078, 36.462624, 27.279354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375809, 35.915085, 27.690187>,  <40.563416, 35.998341, 27.762016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375809, 35.915085, 27.690187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312828, 36.270832, 27.518494>,  <41.275040, 36.484280, 27.415478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312828, 36.270832, 27.518494>,  <41.375809, 35.915085, 27.690187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312828, 36.270832, 27.518494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829013, 0.355223, 0.431920,
		0.536608, -0.287835, -0.793223,
		-0.157450, 0.889363, -0.429235,
		41.265594, 36.537640, 27.389723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019230, 36.086727, 27.469419>,  <41.375809, 35.915085, 27.690187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019230, 36.086727, 27.469419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.807407, 36.425678, 27.453815>,  <41.680313, 36.629047, 27.444452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.807407, 36.425678, 27.453815>,  <42.019230, 36.086727, 27.469419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807407, 36.425678, 27.453815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816780, 0.521768, 0.246230,
		0.229004, 0.098530, -0.968426,
		-0.529555, 0.847378, -0.039009,
		41.648540, 36.679893, 27.442112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326859, 36.666054, 26.892315>,  <42.019230, 36.086727, 27.469419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326859, 36.666054, 26.892315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126892, 36.845730, 27.188507>,  <42.006912, 36.953537, 27.366222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.126892, 36.845730, 27.188507>,  <42.326859, 36.666054, 26.892315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126892, 36.845730, 27.188507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824842, 0.507608, 0.248939,
		-0.264053, 0.735228, -0.624273,
		-0.499912, 0.449193, 0.740482,
		41.976917, 36.980488, 27.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413418, 37.371803, 26.817192>,  <42.326859, 36.666054, 26.892315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413418, 37.371803, 26.817192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.324497, 37.326832, 27.204582>,  <42.271145, 37.299847, 27.437016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.324497, 37.326832, 27.204582>,  <42.413418, 37.371803, 26.817192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324497, 37.326832, 27.204582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744175, 0.622200, 0.243045,
		-0.629910, 0.774743, -0.054645,
		-0.222298, -0.112431, 0.968475,
		42.257809, 37.293102, 27.495125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349411, 38.066406, 27.019354>,  <42.413418, 37.371803, 26.817192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349411, 38.066406, 27.019354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411694, 37.858814, 27.355549>,  <42.449062, 37.734261, 27.557266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.411694, 37.858814, 27.355549>,  <42.349411, 38.066406, 27.019354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411694, 37.858814, 27.355549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528545, 0.762588, 0.372960,
		-0.834504, 0.386165, 0.393040,
		0.155704, -0.518976, 0.840488,
		42.458405, 37.703121, 27.607695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161777, 38.477325, 27.501902>,  <42.349411, 38.066406, 27.019354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161777, 38.477325, 27.501902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.376511, 38.209393, 27.707088>,  <42.505352, 38.048634, 27.830200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.376511, 38.209393, 27.707088>,  <42.161777, 38.477325, 27.501902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376511, 38.209393, 27.707088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529409, 0.740849, 0.413363,
		-0.656915, 0.049662, 0.752327,
		0.536832, -0.669833, 0.512967,
		42.537560, 38.008442, 27.860979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267078, 38.835236, 28.037523>,  <42.161777, 38.477325, 27.501902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267078, 38.835236, 28.037523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546082, 38.551201, 28.076023>,  <42.713482, 38.380779, 28.099123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546082, 38.551201, 28.076023>,  <42.267078, 38.835236, 28.037523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546082, 38.551201, 28.076023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562713, 0.625936, 0.539961,
		-0.443663, -0.322468, 0.836169,
		0.697508, -0.710084, 0.096247,
		42.755333, 38.338177, 28.104897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545906, 38.872921, 28.693180>,  <42.267078, 38.835236, 28.037523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545906, 38.872921, 28.693180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821754, 38.684322, 28.473320>,  <42.987263, 38.571163, 28.341404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821754, 38.684322, 28.473320>,  <42.545906, 38.872921, 28.693180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821754, 38.684322, 28.473320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718728, 0.538518, 0.439804,
		0.088631, -0.698347, 0.710251,
		0.689619, -0.471497, -0.549651,
		43.028641, 38.542873, 28.308424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010906, 38.747551, 29.177319>,  <42.545906, 38.872921, 28.693180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010906, 38.747551, 29.177319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205963, 38.717564, 28.829391>,  <43.322998, 38.699570, 28.620634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205963, 38.717564, 28.829391>,  <43.010906, 38.747551, 29.177319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205963, 38.717564, 28.829391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769224, 0.508109, 0.387454,
		0.412916, -0.858024, 0.305443,
		0.487643, -0.074968, -0.869819,
		43.352257, 38.695072, 28.568445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654850, 38.402431, 29.293528>,  <43.010906, 38.747551, 29.177319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654850, 38.402431, 29.293528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708347, 38.586544, 28.942471>,  <43.740444, 38.697010, 28.731836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708347, 38.586544, 28.942471>,  <43.654850, 38.402431, 29.293528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708347, 38.586544, 28.942471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909418, 0.294900, 0.293244,
		0.393791, -0.837364, -0.379144,
		0.133742, 0.460278, -0.877643,
		43.748470, 38.724628, 28.679178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353466, 38.309105, 29.149734>,  <43.654850, 38.402431, 29.293528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353466, 38.309105, 29.149734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.257774, 38.623497, 28.921700>,  <44.200359, 38.812134, 28.784878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.257774, 38.623497, 28.921700>,  <44.353466, 38.309105, 29.149734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257774, 38.623497, 28.921700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874242, 0.429819, 0.225735,
		0.422459, -0.444392, -0.789965,
		-0.239227, 0.785984, -0.570087,
		44.186005, 38.859291, 28.750673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960030, 38.481106, 28.615610>,  <44.353466, 38.309105, 29.149734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960030, 38.481106, 28.615610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.722111, 38.789265, 28.707436>,  <44.579361, 38.974159, 28.762531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.722111, 38.789265, 28.707436>,  <44.960030, 38.481106, 28.615610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722111, 38.789265, 28.707436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803786, 0.565683, 0.184205,
		0.012051, 0.294085, -0.955703,
		-0.594797, 0.770400, 0.229564,
		44.543671, 39.020386, 28.776304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.416235, 26.088423, 28.047836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.581928, 26.271862, 28.362312>,  <27.681343, 26.381926, 28.550999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.581928, 26.271862, 28.362312>,  <27.416235, 26.088423, 28.047836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581928, 26.271862, 28.362312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294627, -0.749714, 0.592557,
		0.861166, -0.477089, -0.175440,
		0.414232, 0.458600, 0.786192,
		27.706198, 26.409443, 28.598169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807379, 25.564474, 28.251192>,  <27.416235, 26.088423, 28.047836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807379, 25.564474, 28.251192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.771740, 25.798752, 28.573441>,  <27.750357, 25.939318, 28.766788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.771740, 25.798752, 28.573441>,  <27.807379, 25.564474, 28.251192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771740, 25.798752, 28.573441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003730, -0.809027, 0.587759,
		0.996016, 0.049362, 0.074265,
		-0.089096, 0.585694, 0.805620,
		27.745010, 25.974461, 28.815126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299894, 25.267017, 28.719019>,  <27.807379, 25.564474, 28.251192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299894, 25.267017, 28.719019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.038542, 25.492531, 28.921104>,  <27.881731, 25.627838, 29.042356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.038542, 25.492531, 28.921104>,  <28.299894, 25.267017, 28.719019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038542, 25.492531, 28.921104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035721, -0.643662, 0.764476,
		0.756186, 0.517541, 0.400417,
		-0.653381, 0.563783, 0.505215,
		27.842527, 25.661665, 29.072668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626642, 25.398233, 29.334305>,  <28.299894, 25.267017, 28.719019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626642, 25.398233, 29.334305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242859, 25.461899, 29.427353>,  <28.012589, 25.500097, 29.483181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242859, 25.461899, 29.427353>,  <28.626642, 25.398233, 29.334305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242859, 25.461899, 29.427353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021837, -0.780848, 0.624339,
		0.281010, 0.604106, 0.745714,
		-0.959456, 0.159161, 0.232619,
		27.955023, 25.509647, 29.497139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556210, 25.503416, 30.135244>,  <28.626642, 25.398233, 29.334305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556210, 25.503416, 30.135244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.194880, 25.414829, 29.988300>,  <27.978081, 25.361677, 29.900133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.194880, 25.414829, 29.988300>,  <28.556210, 25.503416, 30.135244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194880, 25.414829, 29.988300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121366, -0.689460, 0.714084,
		-0.411428, 0.689635, 0.595928,
		-0.903325, -0.221469, -0.367361,
		27.923882, 25.348389, 29.878092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009556, 25.602749, 30.744341>,  <28.556210, 25.503416, 30.135244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009556, 25.602749, 30.744341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.872564, 25.354660, 30.462055>,  <27.790369, 25.205807, 30.292685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.872564, 25.354660, 30.462055>,  <28.009556, 25.602749, 30.744341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872564, 25.354660, 30.462055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230905, -0.672536, 0.703120,
		-0.910708, 0.403758, 0.087118,
		-0.342480, -0.620222, -0.705714,
		27.769821, 25.168594, 30.250341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308479, 25.586971, 30.914894>,  <28.009556, 25.602749, 30.744341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308479, 25.586971, 30.914894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.383598, 25.250645, 30.711815>,  <27.428669, 25.048849, 30.589968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.383598, 25.250645, 30.711815>,  <27.308479, 25.586971, 30.914894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383598, 25.250645, 30.711815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486394, -0.528677, 0.695645,
		-0.853319, 0.116303, -0.508251,
		0.187795, -0.840818, -0.507699,
		27.439938, 24.998400, 30.559505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703033, 25.307213, 30.891836>,  <27.308479, 25.586971, 30.914894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703033, 25.307213, 30.891836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.965450, 25.011997, 30.828705>,  <27.122900, 24.834867, 30.790825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.965450, 25.011997, 30.828705>,  <26.703033, 25.307213, 30.891836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965450, 25.011997, 30.828705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448363, -0.549341, 0.705120,
		-0.607110, -0.391821, -0.691299,
		0.656040, -0.738039, -0.157832,
		27.162262, 24.790586, 30.781355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259300, 24.777315, 30.770355>,  <26.703033, 25.307213, 30.891836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259300, 24.777315, 30.770355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.607027, 24.585949, 30.820000>,  <26.815664, 24.471128, 30.849787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.607027, 24.585949, 30.820000>,  <26.259300, 24.777315, 30.770355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607027, 24.585949, 30.820000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435713, -0.623265, 0.649380,
		-0.233321, -0.618595, -0.750268,
		0.869319, -0.478415, 0.124109,
		26.867823, 24.442425, 30.857233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078688, 24.120472, 30.807661>,  <26.259300, 24.777315, 30.770355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078688, 24.120472, 30.807661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.448351, 24.095226, 30.958366>,  <26.670149, 24.080080, 31.048790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.448351, 24.095226, 30.958366>,  <26.078688, 24.120472, 30.807661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448351, 24.095226, 30.958366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270066, -0.805479, 0.527511,
		0.270185, -0.589254, -0.761433,
		0.924156, -0.063112, 0.376766,
		26.725597, 24.076292, 31.071396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292917, 23.418491, 30.760675>,  <26.078688, 24.120472, 30.807661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292917, 23.418491, 30.760675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.559792, 23.554554, 31.025749>,  <26.719917, 23.636192, 31.184793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.559792, 23.554554, 31.025749>,  <26.292917, 23.418491, 30.760675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559792, 23.554554, 31.025749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151220, -0.809266, 0.567645,
		0.729379, -0.478937, -0.488494,
		0.667188, 0.340158, 0.662686,
		26.759949, 23.656601, 31.224556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778870, 22.823004, 30.947382>,  <26.292917, 23.418491, 30.760675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778870, 22.823004, 30.947382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.799034, 23.081905, 31.251625>,  <26.811132, 23.237246, 31.434172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.799034, 23.081905, 31.251625>,  <26.778870, 22.823004, 30.947382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799034, 23.081905, 31.251625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195548, -0.740438, 0.643049,
		0.979398, -0.181152, 0.089242,
		0.050412, 0.647252, 0.760607,
		26.814157, 23.276081, 31.479807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395721, 22.671955, 31.422094>,  <26.778870, 22.823004, 30.947382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395721, 22.671955, 31.422094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.059908, 22.826260, 31.575127>,  <26.858419, 22.918842, 31.666946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.059908, 22.826260, 31.575127>,  <27.395721, 22.671955, 31.422094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059908, 22.826260, 31.575127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004655, -0.699040, 0.715067,
		0.543286, 0.602105, 0.585073,
		-0.839535, 0.385762, 0.382582,
		26.808048, 22.941988, 31.689901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599869, 22.461666, 30.731064>,  <27.395721, 22.671955, 31.422094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599869, 22.461666, 30.731064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.592213, 22.860157, 30.764915>,  <27.587618, 23.099253, 30.785227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.592213, 22.860157, 30.764915>,  <27.599869, 22.461666, 30.731064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592213, 22.860157, 30.764915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841145, 0.029710, -0.539993,
		-0.540471, -0.081521, 0.837404,
		-0.019142, 0.996229, 0.084629,
		27.586470, 23.159025, 30.790304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372616, 22.329119, 30.511297>,  <27.599869, 22.461666, 30.731064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372616, 22.329119, 30.511297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614744, 22.065170, 30.333237>,  <28.760021, 21.906801, 30.226400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614744, 22.065170, 30.333237>,  <28.372616, 22.329119, 30.511297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614744, 22.065170, 30.333237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249432, 0.688331, -0.681164,
		0.755891, 0.301286, 0.581253,
		0.605320, -0.659869, -0.445153,
		28.796341, 21.867210, 30.199690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019791, 22.633043, 30.305412>,  <28.372616, 22.329119, 30.511297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019791, 22.633043, 30.305412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.990816, 22.305046, 30.078304>,  <28.973433, 22.108248, 29.942039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.990816, 22.305046, 30.078304>,  <29.019791, 22.633043, 30.305412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990816, 22.305046, 30.078304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216498, 0.542764, -0.811502,
		0.973592, -0.181701, 0.138213,
		-0.072434, -0.819995, -0.567769,
		28.969086, 22.059048, 29.907974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592113, 22.667730, 29.823832>,  <29.019791, 22.633043, 30.305412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592113, 22.667730, 29.823832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.351858, 22.392838, 29.660393>,  <29.207706, 22.227901, 29.562330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.351858, 22.392838, 29.660393>,  <29.592113, 22.667730, 29.823832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351858, 22.392838, 29.660393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318317, 0.263254, -0.910698,
		0.733424, -0.677061, 0.060638,
		-0.600636, -0.687230, -0.408597,
		29.171667, 22.186668, 29.537813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935232, 22.218458, 29.342070>,  <29.592113, 22.667730, 29.823832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935232, 22.218458, 29.342070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547461, 22.224884, 29.244129>,  <29.314798, 22.228741, 29.185366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.547461, 22.224884, 29.244129>,  <29.935232, 22.218458, 29.342070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547461, 22.224884, 29.244129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234171, 0.358677, -0.903612,
		0.073304, -0.933323, -0.351474,
		-0.969428, 0.016067, -0.244850,
		29.256632, 22.229704, 29.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910023, 21.935854, 28.675701>,  <29.935232, 22.218458, 29.342070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910023, 21.935854, 28.675701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571720, 22.140427, 28.736546>,  <29.368738, 22.263170, 28.773052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571720, 22.140427, 28.736546>,  <29.910023, 21.935854, 28.675701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571720, 22.140427, 28.736546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128740, 0.472249, -0.872013,
		-0.517808, -0.717927, -0.465248,
		-0.845755, 0.511431, 0.152109,
		29.317993, 22.293856, 28.782179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624722, 22.146410, 27.904667>,  <29.910023, 21.935854, 28.675701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624722, 22.146410, 27.904667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442492, 22.384167, 28.169743>,  <29.333155, 22.526821, 28.328787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.442492, 22.384167, 28.169743>,  <29.624722, 22.146410, 27.904667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442492, 22.384167, 28.169743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016701, 0.750003, -0.661224,
		-0.890042, -0.290168, -0.351608,
		-0.455573, 0.594390, 0.662687,
		29.305820, 22.562483, 28.368549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163439, 22.535458, 27.567318>,  <29.624722, 22.146410, 27.904667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163439, 22.535458, 27.567318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.230913, 22.739399, 27.904743>,  <29.271399, 22.861763, 28.107199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.230913, 22.739399, 27.904743>,  <29.163439, 22.535458, 27.567318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230913, 22.739399, 27.904743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086953, 0.844792, -0.527983,
		-0.981827, 0.162415, 0.098172,
		0.168687, 0.509851, 0.843562,
		29.281519, 22.892355, 28.157812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920767, 23.102741, 27.428917>,  <29.163439, 22.535458, 27.567318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920767, 23.102741, 27.428917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118078, 23.225857, 27.754356>,  <29.236465, 23.299726, 27.949619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.118078, 23.225857, 27.754356>,  <28.920767, 23.102741, 27.428917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118078, 23.225857, 27.754356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156670, 0.888578, -0.431143,
		-0.855645, 0.340141, 0.390097,
		0.493280, 0.307789, 0.813597,
		29.266062, 23.318193, 27.998436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719107, 23.809525, 27.517128>,  <28.920767, 23.102741, 27.428917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719107, 23.809525, 27.517128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058348, 23.769058, 27.725163>,  <29.261892, 23.744778, 27.849983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058348, 23.769058, 27.725163>,  <28.719107, 23.809525, 27.517128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058348, 23.769058, 27.725163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271184, 0.926167, -0.262059,
		-0.455176, 0.363291, 0.812917,
		0.848100, -0.101167, 0.520087,
		29.312778, 23.738708, 27.881189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810398, 24.410580, 28.026390>,  <28.719107, 23.809525, 27.517128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810398, 24.410580, 28.026390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175497, 24.266830, 27.948681>,  <29.394556, 24.180580, 27.902056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.175497, 24.266830, 27.948681>,  <28.810398, 24.410580, 28.026390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175497, 24.266830, 27.948681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313564, 0.921115, -0.230706,
		0.261858, 0.149659, 0.953432,
		0.912747, -0.359374, -0.194274,
		29.449322, 24.159018, 27.890398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231882, 24.846075, 28.266119>,  <28.810398, 24.410580, 28.026390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231882, 24.846075, 28.266119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477848, 24.650532, 28.018604>,  <29.625427, 24.533205, 27.870096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477848, 24.650532, 28.018604>,  <29.231882, 24.846075, 28.266119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477848, 24.650532, 28.018604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346715, 0.872359, -0.344644,
		0.708285, -0.002614, 0.705922,
		0.614916, -0.488860, -0.618784,
		29.662323, 24.503874, 27.832970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994572, 25.083908, 28.365919>,  <29.231882, 24.846075, 28.266119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994572, 25.083908, 28.365919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990675, 24.928688, 27.997284>,  <29.988337, 24.835556, 27.776104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990675, 24.928688, 27.997284>,  <29.994572, 25.083908, 28.365919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990675, 24.928688, 27.997284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380883, 0.850714, -0.362234,
		0.924572, -0.354546, 0.139514,
		-0.009742, -0.388050, -0.921587,
		29.987753, 24.812273, 27.720808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593134, 25.367903, 28.106522>,  <29.994572, 25.083908, 28.365919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593134, 25.367903, 28.106522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393637, 25.246674, 27.781708>,  <30.273937, 25.173935, 27.586819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393637, 25.246674, 27.781708>,  <30.593134, 25.367903, 28.106522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393637, 25.246674, 27.781708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237315, 0.853323, -0.464242,
		0.833625, -0.424248, -0.353670,
		-0.498749, -0.303073, -0.812032,
		30.244013, 25.155750, 27.538097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055925, 25.442673, 27.387211>,  <30.593134, 25.367903, 28.106522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055925, 25.442673, 27.387211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669729, 25.422470, 27.285015>,  <30.438011, 25.410349, 27.223698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.669729, 25.422470, 27.285015>,  <31.055925, 25.442673, 27.387211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669729, 25.422470, 27.285015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093897, 0.847528, -0.522379,
		0.242918, -0.528342, -0.813539,
		-0.965492, -0.050506, -0.255489,
		30.380081, 25.407318, 27.208368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577719, 25.094511, 26.912521>,  <31.055925, 25.442673, 27.387211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577719, 25.094511, 26.912521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967684, 25.151897, 26.980595>,  <32.201664, 25.186329, 27.021439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.967684, 25.151897, 26.980595>,  <31.577719, 25.094511, 26.912521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967684, 25.151897, 26.980595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006696, -0.745327, 0.666666,
		0.222486, -0.651081, -0.725668,
		0.974913, 0.143465, 0.170184,
		32.260159, 25.194937, 27.031651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910662, 24.471148, 26.803762>,  <31.577719, 25.094511, 26.912521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910662, 24.471148, 26.803762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119995, 24.694843, 27.060940>,  <32.245594, 24.829060, 27.215246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119995, 24.694843, 27.060940>,  <31.910662, 24.471148, 26.803762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119995, 24.694843, 27.060940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037859, -0.738511, 0.673178,
		0.851288, -0.376637, -0.365314,
		0.523332, 0.559238, 0.642944,
		32.276993, 24.862616, 27.253822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582474, 24.093687, 27.001791>,  <31.910662, 24.471148, 26.803762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582474, 24.093687, 27.001791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483185, 24.335262, 27.304749>,  <32.423611, 24.480207, 27.486523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483185, 24.335262, 27.304749>,  <32.582474, 24.093687, 27.001791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483185, 24.335262, 27.304749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080823, -0.766225, 0.637469,
		0.965326, 0.219448, 0.141381,
		-0.248221, 0.603939, 0.757393,
		32.408718, 24.516443, 27.531967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729145, 23.682775, 27.570553>,  <32.582474, 24.093687, 27.001791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729145, 23.682775, 27.570553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570457, 23.999275, 27.756687>,  <32.475243, 24.189175, 27.868368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570457, 23.999275, 27.756687>,  <32.729145, 23.682775, 27.570553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570457, 23.999275, 27.756687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092909, -0.538943, 0.837203,
		0.913224, 0.288904, 0.287326,
		-0.396724, 0.791249, 0.465334,
		32.451439, 24.236650, 27.896288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177696, 23.832550, 28.111500>,  <32.729145, 23.682775, 27.570553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177696, 23.832550, 28.111500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801418, 23.947834, 28.183079>,  <32.575649, 24.017004, 28.226027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.801418, 23.947834, 28.183079>,  <33.177696, 23.832550, 28.111500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801418, 23.947834, 28.183079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006414, -0.512285, 0.858792,
		0.339185, 0.809012, 0.480056,
		-0.940698, 0.288210, 0.178948,
		32.519211, 24.034296, 28.236763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223160, 23.908825, 28.765362>,  <33.177696, 23.832550, 28.111500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223160, 23.908825, 28.765362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825546, 23.920422, 28.723316>,  <32.586979, 23.927380, 28.698090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825546, 23.920422, 28.723316>,  <33.223160, 23.908825, 28.765362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825546, 23.920422, 28.723316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097693, -0.664983, 0.740442,
		-0.048431, 0.746296, 0.663850,
		-0.994038, 0.028993, -0.105114,
		32.527336, 23.929119, 28.691782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932976, 24.065929, 29.480146>,  <33.223160, 23.908825, 28.765362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932976, 24.065929, 29.480146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638458, 23.909595, 29.259197>,  <32.461746, 23.815794, 29.126627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638458, 23.909595, 29.259197>,  <32.932976, 24.065929, 29.480146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638458, 23.909595, 29.259197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162299, -0.690489, 0.704900,
		-0.656908, 0.608664, 0.444972,
		-0.736296, -0.390836, -0.552373,
		32.417568, 23.792345, 29.093485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711548, 24.618120, 29.918758>,  <32.932976, 24.065929, 29.480146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711548, 24.618120, 29.918758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952400, 24.787617, 30.189426>,  <33.096912, 24.889315, 30.351828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952400, 24.787617, 30.189426>,  <32.711548, 24.618120, 29.918758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952400, 24.787617, 30.189426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278172, 0.683083, -0.675291,
		-0.748369, 0.594845, 0.293434,
		0.602133, 0.423742, 0.676668,
		33.133041, 24.914740, 30.392427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540222, 25.323866, 30.039972>,  <32.711548, 24.618120, 29.918758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540222, 25.323866, 30.039972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917461, 25.304329, 30.171532>,  <33.143806, 25.292606, 30.250467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917461, 25.304329, 30.171532>,  <32.540222, 25.323866, 30.039972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917461, 25.304329, 30.171532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245629, 0.769037, -0.590126,
		-0.224112, 0.637336, 0.737277,
		0.943101, -0.048843, 0.328898,
		33.200394, 25.289677, 30.270201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738720, 26.016153, 30.039925>,  <32.540222, 25.323866, 30.039972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738720, 26.016153, 30.039925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084175, 25.814590, 30.045624>,  <33.291451, 25.693653, 30.049044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084175, 25.814590, 30.045624>,  <32.738720, 26.016153, 30.039925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084175, 25.814590, 30.045624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345805, 0.571635, -0.744079,
		0.366802, 0.647543, 0.667940,
		0.863641, -0.503907, 0.014246,
		33.343266, 25.663418, 30.049898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255322, 26.518183, 30.253506>,  <32.738720, 26.016153, 30.039925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255322, 26.518183, 30.253506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444592, 26.213940, 30.075706>,  <33.558155, 26.031393, 29.969027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444592, 26.213940, 30.075706>,  <33.255322, 26.518183, 30.253506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444592, 26.213940, 30.075706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497852, 0.647132, -0.577376,
		0.726808, 0.051905, 0.684877,
		0.473175, -0.760609, -0.444500,
		33.586544, 25.985758, 29.942356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009743, 26.619816, 30.297054>,  <33.255322, 26.518183, 30.253506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009743, 26.619816, 30.297054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941185, 26.379204, 29.984955>,  <33.900051, 26.234837, 29.797695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941185, 26.379204, 29.984955>,  <34.009743, 26.619816, 30.297054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941185, 26.379204, 29.984955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433238, 0.665264, -0.608053,
		0.884832, -0.442250, 0.146583,
		-0.171395, -0.601531, -0.780246,
		33.889767, 26.198744, 29.750881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661171, 26.461746, 30.069786>,  <34.009743, 26.619816, 30.297054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661171, 26.461746, 30.069786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378422, 26.428261, 29.788837>,  <34.208771, 26.408171, 29.620268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378422, 26.428261, 29.788837>,  <34.661171, 26.461746, 30.069786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378422, 26.428261, 29.788837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449227, 0.713877, -0.537191,
		0.546375, -0.695249, -0.467015,
		-0.706873, -0.083712, -0.702370,
		34.166359, 26.403147, 29.578127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010315, 26.618767, 29.408012>,  <34.661171, 26.461746, 30.069786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010315, 26.618767, 29.408012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623981, 26.633862, 29.305447>,  <34.392181, 26.642918, 29.243908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.623981, 26.633862, 29.305447>,  <35.010315, 26.618767, 29.408012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623981, 26.633862, 29.305447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164698, 0.853263, -0.494790,
		0.200118, -0.520113, -0.830322,
		-0.965830, 0.037736, -0.256414,
		34.334232, 26.645182, 29.228521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.198793, 25.358345, 34.581928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.029045, 25.198193, 34.257065>,  <27.927197, 25.102102, 34.062145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.029045, 25.198193, 34.257065>,  <28.198793, 25.358345, 34.581928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029045, 25.198193, 34.257065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563607, 0.585207, -0.582992,
		0.708701, -0.705145, -0.022687,
		-0.424370, -0.400381, -0.812161,
		27.901733, 25.078079, 34.013416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719759, 25.268768, 34.056965>,  <28.198793, 25.358345, 34.581928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719759, 25.268768, 34.056965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.387604, 25.241081, 33.835815>,  <28.188311, 25.224470, 33.703125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.387604, 25.241081, 33.835815>,  <28.719759, 25.268768, 34.056965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387604, 25.241081, 33.835815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447942, 0.507181, -0.736284,
		0.331367, -0.859056, -0.390153,
		-0.830388, -0.069214, -0.552870,
		28.138487, 25.220316, 33.669952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976799, 25.086468, 33.427906>,  <28.719759, 25.268768, 34.056965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976799, 25.086468, 33.427906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.621187, 25.256615, 33.360157>,  <28.407820, 25.358704, 33.319508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.621187, 25.256615, 33.360157>,  <28.976799, 25.086468, 33.427906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621187, 25.256615, 33.360157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433857, 0.664515, -0.608430,
		-0.146258, -0.614396, -0.775323,
		-0.889031, 0.425367, -0.169369,
		28.354477, 25.384224, 33.309345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013126, 25.321075, 32.717319>,  <28.976799, 25.086468, 33.427906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013126, 25.321075, 32.717319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.713785, 25.514244, 32.899204>,  <28.534182, 25.630144, 33.008335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.713785, 25.514244, 32.899204>,  <29.013126, 25.321075, 32.717319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713785, 25.514244, 32.899204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248747, 0.839813, -0.482533,
		-0.614895, -0.247997, -0.748600,
		-0.748351, 0.482920, 0.454709,
		28.489281, 25.659121, 33.035618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651566, 25.575432, 32.187065>,  <29.013126, 25.321075, 32.717319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651566, 25.575432, 32.187065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512981, 25.816391, 32.474701>,  <28.429831, 25.960966, 32.647282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.512981, 25.816391, 32.474701>,  <28.651566, 25.575432, 32.187065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512981, 25.816391, 32.474701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044229, 0.776199, -0.628935,
		-0.937022, -0.186095, -0.295564,
		-0.346458, 0.602398, 0.719085,
		28.409044, 25.997110, 32.690426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068207, 26.064268, 31.851688>,  <28.651566, 25.575432, 32.187065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068207, 26.064268, 31.851688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224880, 26.228828, 32.180889>,  <28.318884, 26.327564, 32.378410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.224880, 26.228828, 32.180889>,  <28.068207, 26.064268, 31.851688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224880, 26.228828, 32.180889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157614, 0.851250, -0.500531,
		-0.906500, 0.325767, 0.268577,
		0.391683, 0.411400, 0.823003,
		28.342384, 26.352249, 32.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751751, 26.706369, 31.975668>,  <28.068207, 26.064268, 31.851688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751751, 26.706369, 31.975668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.093140, 26.731251, 32.182632>,  <28.297974, 26.746180, 32.306812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.093140, 26.731251, 32.182632>,  <27.751751, 26.706369, 31.975668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093140, 26.731251, 32.182632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146398, 0.924252, -0.352599,
		-0.500152, 0.376681, 0.779717,
		0.853472, 0.062204, 0.517412,
		28.349182, 26.749912, 32.337856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757286, 27.374571, 32.160576>,  <27.751751, 26.706369, 31.975668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757286, 27.374571, 32.160576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.139889, 27.258175, 32.168774>,  <28.369450, 27.188337, 32.173691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.139889, 27.258175, 32.168774>,  <27.757286, 27.374571, 32.160576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139889, 27.258175, 32.168774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276483, 0.881934, -0.381773,
		0.093019, 0.370834, 0.924029,
		0.956507, -0.290990, 0.020493,
		28.426840, 27.170877, 32.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056988, 27.867846, 32.528549>,  <27.757286, 27.374571, 32.160576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056988, 27.867846, 32.528549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.344877, 27.685818, 32.318821>,  <28.517611, 27.576601, 32.192986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.344877, 27.685818, 32.318821>,  <28.056988, 27.867846, 32.528549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344877, 27.685818, 32.318821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314007, 0.886930, -0.338755,
		0.619193, 0.079169, 0.781237,
		0.719722, -0.455069, -0.524321,
		28.560793, 27.549297, 32.161526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678335, 28.296318, 32.679180>,  <28.056988, 27.867846, 32.528549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678335, 28.296318, 32.679180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.748461, 28.076469, 32.352455>,  <28.790537, 27.944559, 32.156422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.748461, 28.076469, 32.352455>,  <28.678335, 28.296318, 32.679180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748461, 28.076469, 32.352455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367099, 0.806321, -0.463772,
		0.913512, -0.218544, 0.343126,
		0.175315, -0.549623, -0.816811,
		28.801056, 27.911583, 32.107410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378302, 28.522070, 32.426613>,  <28.678335, 28.296318, 32.679180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378302, 28.522070, 32.426613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168198, 28.335987, 32.141605>,  <29.042135, 28.224337, 31.970600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.168198, 28.335987, 32.141605>,  <29.378302, 28.522070, 32.426613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168198, 28.335987, 32.141605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284900, 0.692863, -0.662399,
		0.801833, -0.550927, -0.231394,
		-0.525259, -0.465209, -0.712520,
		29.010620, 28.196424, 31.927849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845047, 28.475338, 31.905989>,  <29.378302, 28.522070, 32.426613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845047, 28.475338, 31.905989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.492405, 28.448013, 31.719181>,  <29.280819, 28.431618, 31.607098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.492405, 28.448013, 31.719181>,  <29.845047, 28.475338, 31.905989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492405, 28.448013, 31.719181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291234, 0.699914, -0.652153,
		0.371422, -0.710953, -0.597153,
		-0.881606, -0.068313, -0.467017,
		29.227922, 28.427519, 31.579077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537653, 28.335693, 31.575874>,  <29.845047, 28.475338, 31.905989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537653, 28.335693, 31.575874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936747, 28.360283, 31.586811>,  <31.176203, 28.375036, 31.593372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.936747, 28.360283, 31.586811>,  <30.537653, 28.335693, 31.575874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936747, 28.360283, 31.586811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015171, -0.601467, 0.798754,
		0.065548, -0.796529, -0.601037,
		0.997734, 0.061474, 0.027341,
		31.236067, 28.378725, 31.595013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946795, 27.607334, 31.635057>,  <30.537653, 28.335693, 31.575874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946795, 27.607334, 31.635057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.166866, 27.902321, 31.791744>,  <31.298910, 28.079313, 31.885756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.166866, 27.902321, 31.791744>,  <30.946795, 27.607334, 31.635057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166866, 27.902321, 31.791744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205850, -0.574397, 0.792271,
		0.809275, -0.355259, -0.467830,
		0.550181, 0.737468, 0.391715,
		31.331921, 28.123562, 31.909258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595354, 27.263311, 31.876476>,  <30.946795, 27.607334, 31.635057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595354, 27.263311, 31.876476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542543, 27.606949, 32.074276>,  <31.510857, 27.813131, 32.192955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.542543, 27.606949, 32.074276>,  <31.595354, 27.263311, 31.876476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542543, 27.606949, 32.074276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183094, -0.469146, 0.863932,
		0.974190, 0.204602, -0.095355,
		-0.132027, 0.859093, 0.494499,
		31.502935, 27.864677, 32.222626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103943, 27.213770, 32.426151>,  <31.595354, 27.263311, 31.876476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103943, 27.213770, 32.426151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864271, 27.513523, 32.538872>,  <31.720469, 27.693375, 32.606506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864271, 27.513523, 32.538872>,  <32.103943, 27.213770, 32.426151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864271, 27.513523, 32.538872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068895, -0.398939, 0.914386,
		0.797646, 0.528465, 0.290664,
		-0.599178, 0.749381, 0.281803,
		31.684517, 27.738337, 32.623413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325562, 27.332880, 33.077438>,  <32.103943, 27.213770, 32.426151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325562, 27.332880, 33.077438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972986, 27.521656, 33.084854>,  <31.761442, 27.634922, 33.089302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.972986, 27.521656, 33.084854>,  <32.325562, 27.332880, 33.077438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972986, 27.521656, 33.084854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177767, -0.367860, 0.912731,
		0.437575, 0.801218, 0.408140,
		-0.881435, 0.471942, 0.018537,
		31.708555, 27.663239, 33.090416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279289, 27.488461, 33.814854>,  <32.325562, 27.332880, 33.077438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279289, 27.488461, 33.814854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910875, 27.512730, 33.660961>,  <31.689829, 27.527292, 33.568626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910875, 27.512730, 33.660961>,  <32.279289, 27.488461, 33.814854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910875, 27.512730, 33.660961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319156, -0.683768, 0.656202,
		-0.223255, 0.727173, 0.649136,
		-0.921030, 0.060675, -0.384736,
		31.634565, 27.530931, 33.545540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836849, 27.553038, 34.410324>,  <32.279289, 27.488461, 33.814854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836849, 27.553038, 34.410324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635458, 27.415226, 34.093388>,  <31.514624, 27.332539, 33.903225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.635458, 27.415226, 34.093388>,  <31.836849, 27.553038, 34.410324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635458, 27.415226, 34.093388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327639, -0.772429, 0.544065,
		-0.799475, 0.533528, 0.276021,
		-0.503480, -0.344531, -0.792342,
		31.484413, 27.311867, 33.855686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227125, 27.345562, 34.608089>,  <31.836849, 27.553038, 34.410324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227125, 27.345562, 34.608089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250187, 27.131474, 34.270992>,  <31.264025, 27.003021, 34.068733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250187, 27.131474, 34.270992>,  <31.227125, 27.345562, 34.608089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250187, 27.131474, 34.270992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229485, -0.828648, 0.510567,
		-0.971603, 0.163959, -0.170601,
		0.057656, -0.535219, -0.842743,
		31.267485, 26.970907, 34.018169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811352, 26.770231, 34.843822>,  <31.227125, 27.345562, 34.608089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811352, 26.770231, 34.843822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979113, 26.639576, 34.505020>,  <31.079769, 26.561184, 34.301739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.979113, 26.639576, 34.505020>,  <30.811352, 26.770231, 34.843822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979113, 26.639576, 34.505020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092439, -0.943542, 0.318094,
		-0.903083, -0.055113, -0.425916,
		0.419401, -0.326637, -0.847001,
		31.104933, 26.541584, 34.250919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357492, 26.178785, 34.597015>,  <30.811352, 26.770231, 34.843822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357492, 26.178785, 34.597015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713110, 26.141163, 34.417793>,  <30.926481, 26.118589, 34.310261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713110, 26.141163, 34.417793>,  <30.357492, 26.178785, 34.597015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713110, 26.141163, 34.417793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022557, -0.986480, 0.162322,
		-0.457267, -0.134205, -0.879145,
		0.889043, -0.094056, -0.448057,
		30.979822, 26.112946, 34.283375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386749, 25.578041, 34.210506>,  <30.357492, 26.178785, 34.597015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386749, 25.578041, 34.210506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780169, 25.630600, 34.260086>,  <31.016220, 25.662136, 34.289833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780169, 25.630600, 34.260086>,  <30.386749, 25.578041, 34.210506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780169, 25.630600, 34.260086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092432, -0.955653, 0.279615,
		0.155194, -0.263558, -0.952078,
		0.983550, 0.131397, 0.123950,
		31.075233, 25.670019, 34.297272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644808, 25.049183, 33.948917>,  <30.386749, 25.578041, 34.210506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644808, 25.049183, 33.948917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.962357, 25.179142, 34.154522>,  <31.152885, 25.257118, 34.277885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.962357, 25.179142, 34.154522>,  <30.644808, 25.049183, 33.948917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962357, 25.179142, 34.154522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280267, -0.945658, 0.164870,
		0.539646, 0.013175, -0.841789,
		0.793872, 0.324897, 0.514013,
		31.200518, 25.276611, 34.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214975, 24.729790, 33.716713>,  <30.644808, 25.049183, 33.948917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214975, 24.729790, 33.716713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334692, 24.853325, 34.077831>,  <31.406521, 24.927446, 34.294502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334692, 24.853325, 34.077831>,  <31.214975, 24.729790, 33.716713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334692, 24.853325, 34.077831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264564, -0.935930, 0.232466,
		0.916751, 0.169273, -0.361821,
		0.299289, 0.308838, 0.902798,
		31.424479, 24.945976, 34.348671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948759, 24.468346, 33.826965>,  <31.214975, 24.729790, 33.716713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948759, 24.468346, 33.826965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732962, 24.515022, 34.160511>,  <31.603483, 24.543028, 34.360638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732962, 24.515022, 34.160511>,  <31.948759, 24.468346, 33.826965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732962, 24.515022, 34.160511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108754, -0.972397, 0.206441,
		0.834938, 0.202059, 0.511909,
		-0.539492, 0.116693, 0.833865,
		31.571114, 24.550030, 34.410671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494389, 24.203417, 33.494652>,  <31.948759, 24.468346, 33.826965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494389, 24.203417, 33.494652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511799, 23.893284, 33.242630>,  <32.522243, 23.707205, 33.091419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511799, 23.893284, 33.242630>,  <32.494389, 24.203417, 33.494652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511799, 23.893284, 33.242630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322927, 0.607714, -0.725535,
		0.945422, -0.171881, 0.276828,
		0.043527, -0.775332, -0.630052,
		32.524857, 23.660685, 33.053616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183872, 24.236555, 33.130711>,  <32.494389, 24.203417, 33.494652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183872, 24.236555, 33.130711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.929218, 24.034565, 32.897575>,  <32.776424, 23.913372, 32.757694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.929218, 24.034565, 32.897575>,  <33.183872, 24.236555, 33.130711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929218, 24.034565, 32.897575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313727, 0.520818, -0.793929,
		0.704465, -0.688295, -0.173147,
		-0.636635, -0.504974, -0.582835,
		32.738228, 23.883074, 32.722725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571331, 24.291805, 32.591206>,  <33.183872, 24.236555, 33.130711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571331, 24.291805, 32.591206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231396, 24.157436, 32.428761>,  <33.027435, 24.076815, 32.331295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.231396, 24.157436, 32.428761>,  <33.571331, 24.291805, 32.591206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231396, 24.157436, 32.428761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277596, 0.369698, -0.886715,
		0.448008, -0.866301, -0.220933,
		-0.849840, -0.335926, -0.406110,
		32.976444, 24.056660, 32.306927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746414, 23.982206, 32.025574>,  <33.571331, 24.291805, 32.591206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746414, 23.982206, 32.025574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.364300, 24.084816, 31.966747>,  <33.135033, 24.146381, 31.931450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.364300, 24.084816, 31.966747>,  <33.746414, 23.982206, 32.025574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364300, 24.084816, 31.966747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222735, 0.297134, -0.928494,
		-0.194480, -0.919732, -0.340984,
		-0.955284, 0.256523, -0.147070,
		33.077713, 24.161772, 31.922626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609165, 23.683493, 31.410913>,  <33.746414, 23.982206, 32.025574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609165, 23.683493, 31.410913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307671, 23.945564, 31.431400>,  <33.126774, 24.102808, 31.443693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307671, 23.945564, 31.431400>,  <33.609165, 23.683493, 31.410913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307671, 23.945564, 31.431400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149733, 0.247094, -0.957353,
		-0.639895, -0.713920, -0.284345,
		-0.753734, 0.655182, 0.051216,
		33.081551, 24.142118, 31.446766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275356, 23.671061, 30.762745>,  <33.609165, 23.683493, 31.410913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275356, 23.671061, 30.762745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.162945, 24.014839, 30.933567>,  <33.095497, 24.221106, 31.036060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.162945, 24.014839, 30.933567>,  <33.275356, 23.671061, 30.762745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162945, 24.014839, 30.933567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170692, 0.482655, -0.859016,
		-0.944397, -0.168515, -0.282342,
		-0.281031, 0.859446, 0.427054,
		33.078636, 24.272673, 31.061684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907093, 24.001133, 30.269020>,  <33.275356, 23.671061, 30.762745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907093, 24.001133, 30.269020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.017044, 24.287605, 30.525623>,  <33.083015, 24.459488, 30.679585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.017044, 24.287605, 30.525623>,  <32.907093, 24.001133, 30.269020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017044, 24.287605, 30.525623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304360, 0.568084, -0.764621,
		-0.912036, 0.405424, -0.061825,
		0.274873, 0.716178, 0.641508,
		33.099506, 24.502459, 30.718077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174252, 23.968660, 30.028492>,  <32.907093, 24.001133, 30.269020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174252, 23.968660, 30.028492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116741, 23.736420, 29.707935>,  <32.082233, 23.597075, 29.515602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116741, 23.736420, 29.707935>,  <32.174252, 23.968660, 30.028492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116741, 23.736420, 29.707935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328758, -0.735789, 0.592058,
		-0.933405, 0.348591, -0.085086,
		-0.143781, -0.580603, -0.801391,
		32.073608, 23.562239, 29.467518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487354, 23.751812, 30.015425>,  <32.174252, 23.968660, 30.028492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487354, 23.751812, 30.015425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666439, 23.467869, 29.797928>,  <31.773890, 23.297503, 29.667429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.666439, 23.467869, 29.797928>,  <31.487354, 23.751812, 30.015425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666439, 23.467869, 29.797928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431746, -0.704125, 0.563740,
		-0.783039, -0.017634, -0.621723,
		0.447712, -0.709857, -0.543744,
		31.800753, 23.254911, 29.634804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084372, 23.205536, 30.132483>,  <31.487354, 23.751812, 30.015425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084372, 23.205536, 30.132483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395977, 23.026627, 29.956718>,  <31.582941, 22.919281, 29.851259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395977, 23.026627, 29.956718>,  <31.084372, 23.205536, 30.132483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395977, 23.026627, 29.956718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088021, -0.771881, 0.629645,
		-0.620794, -0.451827, -0.640677,
		0.779016, -0.447273, -0.439409,
		31.629683, 22.892445, 29.824896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837400, 22.537693, 29.851868>,  <31.084372, 23.205536, 30.132483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837400, 22.537693, 29.851868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232618, 22.511120, 29.907516>,  <31.469749, 22.495176, 29.940905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232618, 22.511120, 29.907516>,  <30.837400, 22.537693, 29.851868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232618, 22.511120, 29.907516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141783, -0.745946, 0.650739,
		0.060544, -0.662684, -0.746448,
		0.988045, -0.066435, 0.139120,
		31.529032, 22.491190, 29.949253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947330, 21.874580, 29.782265>,  <30.837400, 22.537693, 29.851868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947330, 21.874580, 29.782265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254023, 22.017700, 29.995472>,  <31.438038, 22.103571, 30.123396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254023, 22.017700, 29.995472>,  <30.947330, 21.874580, 29.782265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254023, 22.017700, 29.995472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001190, -0.829489, 0.558521,
		0.641970, -0.428869, -0.635568,
		0.766729, 0.357798, 0.533017,
		31.484041, 22.125040, 30.155376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403049, 21.373936, 29.885225>,  <30.947330, 21.874580, 29.782265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403049, 21.373936, 29.885225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.505051, 21.623329, 30.180859>,  <31.566252, 21.772964, 30.358238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.505051, 21.623329, 30.180859>,  <31.403049, 21.373936, 29.885225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505051, 21.623329, 30.180859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036241, -0.757652, 0.651652,
		0.966261, -0.192958, -0.170607,
		0.255003, 0.623483, 0.739082,
		31.581551, 21.810373, 30.402584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918564, 21.034874, 30.223965>,  <31.403049, 21.373936, 29.885225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918564, 21.034874, 30.223965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.832159, 21.303997, 30.506996>,  <31.780315, 21.465471, 30.676815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.832159, 21.303997, 30.506996>,  <31.918564, 21.034874, 30.223965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832159, 21.303997, 30.506996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175804, -0.686042, 0.706002,
		0.960433, 0.276901, 0.029913,
		-0.216014, 0.672809, 0.707578,
		31.767355, 21.505840, 30.719269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440113, 21.017761, 30.726673>,  <31.918564, 21.034874, 30.223965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440113, 21.017761, 30.726673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.101730, 21.155636, 30.889423>,  <31.898701, 21.238361, 30.987074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.101730, 21.155636, 30.889423>,  <32.440113, 21.017761, 30.726673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101730, 21.155636, 30.889423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049259, -0.709235, 0.703249,
		0.530970, 0.614961, 0.583004,
		-0.845957, 0.344686, 0.406875,
		31.847942, 21.259041, 31.011486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626171, 21.226593, 31.367399>,  <32.440113, 21.017761, 30.726673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626171, 21.226593, 31.367399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231319, 21.162830, 31.372414>,  <31.994408, 21.124573, 31.375422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.231319, 21.162830, 31.372414>,  <32.626171, 21.226593, 31.367399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231319, 21.162830, 31.372414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115747, -0.658275, 0.743825,
		-0.110317, 0.735706, 0.668256,
		-0.987134, -0.159405, 0.012537,
		31.935179, 21.115009, 31.376175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.160072, 33.826073, 21.274532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840820, 33.627132, 21.138512>,  <32.649269, 33.507767, 21.056900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840820, 33.627132, 21.138512>,  <33.160072, 33.826073, 21.274532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840820, 33.627132, 21.138512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245188, -0.783682, 0.570723,
		-0.550341, 0.372134, 0.747423,
		-0.798128, -0.497351, -0.340050,
		32.601383, 33.477928, 21.036497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971516, 33.464725, 21.816343>,  <33.160072, 33.826073, 21.274532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971516, 33.464725, 21.816343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817451, 33.275856, 21.499180>,  <32.725014, 33.162533, 21.308882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817451, 33.275856, 21.499180>,  <32.971516, 33.464725, 21.816343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817451, 33.275856, 21.499180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011075, -0.861500, 0.507637,
		-0.922784, 0.186739, 0.337043,
		-0.385158, -0.472172, -0.792910,
		32.701904, 33.134205, 21.261307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459858, 33.034176, 22.101849>,  <32.971516, 33.464725, 21.816343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459858, 33.034176, 22.101849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571171, 32.887234, 21.746861>,  <32.637959, 32.799068, 21.533867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571171, 32.887234, 21.746861>,  <32.459858, 33.034176, 22.101849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571171, 32.887234, 21.746861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252107, -0.863637, 0.436548,
		-0.926822, -0.345222, -0.147723,
		0.278285, -0.367360, -0.887471,
		32.654655, 32.777027, 21.480619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050545, 32.355877, 22.097897>,  <32.459858, 33.034176, 22.101849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050545, 32.355877, 22.097897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358158, 32.321064, 21.844593>,  <32.542725, 32.300179, 21.692610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358158, 32.321064, 21.844593>,  <32.050545, 32.355877, 22.097897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358158, 32.321064, 21.844593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161869, -0.931883, 0.324643,
		-0.618378, -0.352165, -0.702558,
		0.769030, -0.087030, -0.633261,
		32.588867, 32.294956, 21.654615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926964, 31.781227, 21.786587>,  <32.050545, 32.355877, 22.097897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926964, 31.781227, 21.786587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307613, 31.843971, 21.680904>,  <32.536003, 31.881617, 21.617495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307613, 31.843971, 21.680904>,  <31.926964, 31.781227, 21.786587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307613, 31.843971, 21.680904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263539, -0.858781, 0.439366,
		-0.157977, -0.487740, -0.858576,
		0.951625, 0.156859, -0.264206,
		32.593102, 31.891029, 21.601643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035538, 31.155712, 21.476723>,  <31.926964, 31.781227, 21.786587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035538, 31.155712, 21.476723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390541, 31.315231, 21.569057>,  <32.603542, 31.410942, 21.624458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390541, 31.315231, 21.569057>,  <32.035538, 31.155712, 21.476723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390541, 31.315231, 21.569057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320302, -0.894070, 0.313124,
		0.331258, -0.203963, -0.921232,
		0.887511, 0.398797, 0.230838,
		32.656796, 31.434870, 21.638309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565395, 30.759270, 21.136034>,  <32.035538, 31.155712, 21.476723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565395, 30.759270, 21.136034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761093, 30.921375, 21.444942>,  <32.878510, 31.018639, 21.630287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761093, 30.921375, 21.444942>,  <32.565395, 30.759270, 21.136034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761093, 30.921375, 21.444942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243772, -0.913732, 0.325069,
		0.837388, 0.029221, -0.545828,
		0.489241, 0.405266, 0.772271,
		32.907867, 31.042955, 21.676624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188847, 30.399744, 21.205824>,  <32.565395, 30.759270, 21.136034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188847, 30.399744, 21.205824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164131, 30.575684, 21.564201>,  <33.149303, 30.681248, 21.779228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164131, 30.575684, 21.564201>,  <33.188847, 30.399744, 21.205824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164131, 30.575684, 21.564201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306316, -0.845982, 0.436445,
		0.949922, 0.301409, -0.082460,
		-0.061789, 0.439848, 0.895944,
		33.145596, 30.707638, 21.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825405, 30.138460, 21.629139>,  <33.188847, 30.399744, 21.205824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825405, 30.138460, 21.629139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563026, 30.272167, 21.899841>,  <33.405598, 30.352392, 22.062262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563026, 30.272167, 21.899841>,  <33.825405, 30.138460, 21.629139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563026, 30.272167, 21.899841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268114, -0.734940, 0.622879,
		0.705583, 0.590024, 0.392461,
		-0.655948, 0.334268, 0.676755,
		33.366241, 30.372448, 22.102867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226398, 30.392191, 22.257732>,  <33.825405, 30.138460, 21.629139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226398, 30.392191, 22.257732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859303, 30.292831, 22.381706>,  <33.639046, 30.233215, 22.456091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859303, 30.292831, 22.381706>,  <34.226398, 30.392191, 22.257732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859303, 30.292831, 22.381706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395045, -0.651829, 0.647348,
		0.041223, 0.716532, 0.696335,
		-0.917737, -0.248398, 0.309932,
		33.583981, 30.218311, 22.474686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310570, 30.186197, 22.930223>,  <34.226398, 30.392191, 22.257732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310570, 30.186197, 22.930223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957706, 30.002998, 22.886345>,  <33.745987, 29.893080, 22.860018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957706, 30.002998, 22.886345>,  <34.310570, 30.186197, 22.930223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957706, 30.002998, 22.886345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220133, -0.606912, 0.763674,
		-0.416337, 0.649535, 0.636214,
		-0.882159, -0.457998, -0.109696,
		33.693058, 29.865599, 22.853436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010437, 30.101896, 23.589748>,  <34.310570, 30.186197, 22.930223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010437, 30.101896, 23.589748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802197, 29.839191, 23.371525>,  <33.677250, 29.681568, 23.240591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802197, 29.839191, 23.371525>,  <34.010437, 30.101896, 23.589748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802197, 29.839191, 23.371525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113765, -0.686642, 0.718039,
		-0.846185, 0.311748, 0.432185,
		-0.520604, -0.656762, -0.545560,
		33.646015, 29.642162, 23.207857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997219, 30.724979, 24.091541>,  <34.010437, 30.101896, 23.589748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997219, 30.724979, 24.091541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074471, 30.782368, 24.479794>,  <34.120819, 30.816801, 24.712744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074471, 30.782368, 24.479794>,  <33.997219, 30.724979, 24.091541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074471, 30.782368, 24.479794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056945, 0.985945, -0.157064,
		-0.979520, 0.085606, 0.182240,
		0.193125, 0.143470, 0.970628,
		34.132408, 30.825409, 24.770983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422131, 31.121073, 24.289713>,  <33.997219, 30.724979, 24.091541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422131, 31.121073, 24.289713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752728, 31.160027, 24.511497>,  <33.951084, 31.183399, 24.644567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752728, 31.160027, 24.511497>,  <33.422131, 31.121073, 24.289713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752728, 31.160027, 24.511497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161999, 0.902116, -0.399929,
		-0.539134, 0.420361, 0.729816,
		0.826493, 0.097386, 0.554460,
		34.000675, 31.189243, 24.677835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420269, 31.898205, 24.448193>,  <33.422131, 31.121073, 24.289713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420269, 31.898205, 24.448193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792774, 31.783314, 24.537853>,  <34.016277, 31.714380, 24.591650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792774, 31.783314, 24.537853>,  <33.420269, 31.898205, 24.448193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792774, 31.783314, 24.537853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315919, 0.943058, -0.104098,
		-0.181490, 0.167757, 0.968978,
		0.931266, -0.287226, 0.224153,
		34.072155, 31.697145, 24.605099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607712, 32.386330, 24.870470>,  <33.420269, 31.898205, 24.448193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607712, 32.386330, 24.870470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946743, 32.223251, 24.734589>,  <34.150162, 32.125404, 24.653059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946743, 32.223251, 24.734589>,  <33.607712, 32.386330, 24.870470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946743, 32.223251, 24.734589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336890, 0.907979, -0.249159,
		0.410026, 0.096738, 0.906929,
		0.847575, -0.407697, -0.339705,
		34.201015, 32.100941, 24.632677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202362, 32.693398, 25.240881>,  <33.607712, 32.386330, 24.870470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202362, 32.693398, 25.240881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345192, 32.561588, 24.891273>,  <34.430889, 32.482502, 24.681509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345192, 32.561588, 24.891273>,  <34.202362, 32.693398, 25.240881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345192, 32.561588, 24.891273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446001, 0.882299, -0.150436,
		0.820718, -0.336095, 0.462019,
		0.357079, -0.329526, -0.874018,
		34.452316, 32.462730, 24.629068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878159, 32.868000, 25.234266>,  <34.202362, 32.693398, 25.240881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878159, 32.868000, 25.234266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793232, 32.834473, 24.844826>,  <34.742275, 32.814354, 24.611162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793232, 32.834473, 24.844826>,  <34.878159, 32.868000, 25.234266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793232, 32.834473, 24.844826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407783, 0.897821, -0.166223,
		0.888051, -0.432309, -0.156440,
		-0.212315, -0.083821, -0.973599,
		34.729538, 32.809326, 24.552746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438354, 33.094955, 24.959053>,  <34.878159, 32.868000, 25.234266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438354, 33.094955, 24.959053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170559, 33.111305, 24.662376>,  <35.009880, 33.121113, 24.484369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170559, 33.111305, 24.662376>,  <35.438354, 33.094955, 24.959053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170559, 33.111305, 24.662376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400490, 0.860794, -0.314072,
		0.625609, -0.507310, -0.592664,
		-0.669493, 0.040870, -0.741693,
		34.969711, 33.123566, 24.439869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744926, 33.294952, 24.326557>,  <35.438354, 33.094955, 24.959053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744926, 33.294952, 24.326557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364494, 33.389854, 24.247402>,  <35.136234, 33.446796, 24.199909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364494, 33.389854, 24.247402>,  <35.744926, 33.294952, 24.326557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364494, 33.389854, 24.247402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286036, 0.918282, -0.273755,
		0.116764, -0.316964, -0.941223,
		-0.951078, 0.237259, -0.197885,
		35.079170, 33.461033, 24.188036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769924, 33.617474, 23.703608>,  <35.744926, 33.294952, 24.326557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769924, 33.617474, 23.703608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405750, 33.726898, 23.827721>,  <35.187244, 33.792553, 23.902189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405750, 33.726898, 23.827721>,  <35.769924, 33.617474, 23.703608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405750, 33.726898, 23.827721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173921, 0.933730, -0.312890,
		-0.375313, -0.230902, -0.897677,
		-0.910435, 0.273557, 0.310282,
		35.132618, 33.808964, 23.920805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559479, 34.084717, 23.238405>,  <35.769924, 33.617474, 23.703608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559479, 34.084717, 23.238405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333332, 34.133953, 23.564648>,  <35.197643, 34.163494, 23.760393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333332, 34.133953, 23.564648>,  <35.559479, 34.084717, 23.238405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333332, 34.133953, 23.564648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005339, 0.989329, -0.145603,
		-0.824824, -0.077964, -0.559988,
		-0.565364, 0.123087, 0.815606,
		35.163723, 34.170879, 23.809330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124752, 34.634014, 23.083912>,  <35.559479, 34.084717, 23.238405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124752, 34.634014, 23.083912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089596, 34.658146, 23.481632>,  <35.068501, 34.672623, 23.720264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089596, 34.658146, 23.481632>,  <35.124752, 34.634014, 23.083912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089596, 34.658146, 23.481632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017654, 0.998102, -0.058995,
		-0.995973, 0.012368, -0.088792,
		-0.087894, 0.060325, 0.994302,
		35.063229, 34.676243, 23.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752483, 35.205460, 23.131063>,  <35.124752, 34.634014, 23.083912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752483, 35.205460, 23.131063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875122, 35.131153, 23.504478>,  <34.948704, 35.086567, 23.728527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875122, 35.131153, 23.504478>,  <34.752483, 35.205460, 23.131063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875122, 35.131153, 23.504478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090834, 0.982004, 0.165582,
		-0.947496, 0.034030, 0.317950,
		0.306594, -0.185769, 0.933536,
		34.967102, 35.075424, 23.784540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270653, 35.548676, 23.671406>,  <34.752483, 35.205460, 23.131063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270653, 35.548676, 23.671406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629864, 35.496651, 23.839512>,  <34.845390, 35.465435, 23.940376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629864, 35.496651, 23.839512>,  <34.270653, 35.548676, 23.671406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629864, 35.496651, 23.839512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046307, 0.922047, 0.384297,
		-0.437487, -0.364573, 0.822005,
		0.898031, -0.130061, 0.420266,
		34.899273, 35.457634, 23.965591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204857, 35.627308, 24.301601>,  <34.270653, 35.548676, 23.671406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204857, 35.627308, 24.301601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589672, 35.718502, 24.241596>,  <34.820560, 35.773220, 24.205593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589672, 35.718502, 24.241596>,  <34.204857, 35.627308, 24.301601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589672, 35.718502, 24.241596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118524, 0.844154, 0.522835,
		0.245833, -0.485207, 0.839131,
		0.962039, 0.227987, -0.150012,
		34.878284, 35.786900, 24.196592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708858, 36.324986, 24.467426>,  <34.204857, 35.627308, 24.301601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708858, 36.324986, 24.467426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619217, 36.600658, 24.743050>,  <33.565434, 36.766064, 24.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619217, 36.600658, 24.743050>,  <33.708858, 36.324986, 24.467426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619217, 36.600658, 24.743050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262427, -0.723600, 0.638384,
		0.938568, -0.037765, 0.343021,
		-0.224102, 0.689185, 0.689059,
		33.551987, 36.807415, 24.949768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254398, 36.328274, 25.082396>,  <33.708858, 36.324986, 24.467426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254398, 36.328274, 25.082396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875191, 36.445408, 25.132210>,  <33.647667, 36.515686, 25.162098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875191, 36.445408, 25.132210>,  <34.254398, 36.328274, 25.082396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875191, 36.445408, 25.132210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111556, -0.672361, 0.731769,
		0.298020, 0.679838, 0.670078,
		-0.948019, 0.292833, 0.124537,
		33.590786, 36.533257, 25.169571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194382, 36.602978, 25.812353>,  <34.254398, 36.328274, 25.082396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194382, 36.602978, 25.812353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857582, 36.446358, 25.663906>,  <33.655502, 36.352386, 25.574839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857582, 36.446358, 25.663906>,  <34.194382, 36.602978, 25.812353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857582, 36.446358, 25.663906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015602, -0.669958, 0.742235,
		-0.539251, 0.630752, 0.557996,
		-0.842000, -0.391545, -0.371117,
		33.604980, 36.328896, 25.552570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871960, 36.492416, 26.394424>,  <34.194382, 36.602978, 25.812353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871960, 36.492416, 26.394424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684036, 36.285831, 26.108055>,  <33.571281, 36.161880, 25.936234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684036, 36.285831, 26.108055>,  <33.871960, 36.492416, 26.394424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684036, 36.285831, 26.108055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085105, -0.780724, 0.619054,
		-0.878657, 0.351764, 0.322836,
		-0.469807, -0.516461, -0.715926,
		33.543095, 36.130894, 25.893278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459290, 36.112160, 26.771946>,  <33.871960, 36.492416, 26.394424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459290, 36.112160, 26.771946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477119, 35.916149, 26.423717>,  <33.487820, 35.798542, 26.214781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477119, 35.916149, 26.423717>,  <33.459290, 36.112160, 26.771946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477119, 35.916149, 26.423717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024298, -0.870646, 0.491309,
		-0.998710, -0.043054, -0.026905,
		0.044577, -0.490022, -0.870569,
		33.490494, 35.769142, 26.162546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942593, 35.573650, 26.824430>,  <33.459290, 36.112160, 26.771946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942593, 35.573650, 26.824430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186539, 35.439953, 26.537003>,  <33.332905, 35.359734, 26.364546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186539, 35.439953, 26.537003>,  <32.942593, 35.573650, 26.824430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186539, 35.439953, 26.537003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116067, -0.934604, 0.336221,
		-0.783959, -0.121647, -0.608778,
		0.609866, -0.334242, -0.718572,
		33.369499, 35.339680, 26.321430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741787, 34.912830, 26.664125>,  <32.942593, 35.573650, 26.824430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741787, 34.912830, 26.664125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107578, 34.900372, 26.502750>,  <33.327053, 34.892895, 26.405926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107578, 34.900372, 26.502750>,  <32.741787, 34.912830, 26.664125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107578, 34.900372, 26.502750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123613, -0.927864, 0.351835,
		-0.385295, -0.371615, -0.844660,
		0.914476, -0.031150, -0.403438,
		33.381920, 34.891026, 26.381720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730946, 34.379337, 26.163424>,  <32.741787, 34.912830, 26.664125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730946, 34.379337, 26.163424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090790, 34.449921, 26.323200>,  <33.306698, 34.492271, 26.419065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090790, 34.449921, 26.323200>,  <32.730946, 34.379337, 26.163424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090790, 34.449921, 26.323200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042355, -0.875143, 0.482008,
		0.434625, -0.450540, -0.779817,
		0.899615, 0.176463, 0.399442,
		33.360676, 34.502861, 26.443033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092175, 33.697605, 26.075020>,  <32.730946, 34.379337, 26.163424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092175, 33.697605, 26.075020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336628, 33.879559, 26.334126>,  <33.483299, 33.988731, 26.489590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336628, 33.879559, 26.334126>,  <33.092175, 33.697605, 26.075020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336628, 33.879559, 26.334126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141934, -0.868087, 0.475688,
		0.778697, -0.198769, -0.595081,
		0.611135, 0.454879, 0.647765,
		33.519970, 34.016022, 26.528456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613506, 33.227230, 26.158739>,  <33.092175, 33.697605, 26.075020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613506, 33.227230, 26.158739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631641, 33.473522, 26.473400>,  <33.642525, 33.621296, 26.662197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631641, 33.473522, 26.473400>,  <33.613506, 33.227230, 26.158739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631641, 33.473522, 26.473400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018983, -0.786791, 0.616927,
		0.998791, -0.042905, -0.023987,
		0.045342, 0.615726, 0.786655,
		33.645245, 33.658241, 26.709396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073544, 32.903740, 26.599754>,  <33.613506, 33.227230, 26.158739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073544, 32.903740, 26.599754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868690, 33.156712, 26.832222>,  <33.745777, 33.308495, 26.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868690, 33.156712, 26.832222>,  <34.073544, 32.903740, 26.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868690, 33.156712, 26.832222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031654, -0.662282, 0.748585,
		0.858322, 0.401773, 0.319159,
		-0.512134, 0.632424, 0.581169,
		33.715050, 33.346439, 27.006573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361946, 32.811707, 27.217833>,  <34.073544, 32.903740, 26.599754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361946, 32.811707, 27.217833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011459, 32.987049, 27.297932>,  <33.801167, 33.092255, 27.345991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011459, 32.987049, 27.297932>,  <34.361946, 32.811707, 27.217833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011459, 32.987049, 27.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176601, -0.678667, 0.712898,
		0.448401, 0.589287, 0.672070,
		-0.876213, 0.438353, 0.200246,
		33.748596, 33.118553, 27.358006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352325, 33.046696, 27.988560>,  <34.361946, 32.811707, 27.217833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352325, 33.046696, 27.988560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974289, 33.010479, 27.862953>,  <33.747467, 32.988750, 27.787588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974289, 33.010479, 27.862953>,  <34.352325, 33.046696, 27.988560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974289, 33.010479, 27.862953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182869, -0.649847, 0.737739,
		-0.270857, 0.754654, 0.597607,
		-0.945090, -0.090538, -0.314019,
		33.690762, 32.983318, 27.768747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876366, 33.199238, 28.486921>,  <34.352325, 33.046696, 27.988560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876366, 33.199238, 28.486921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618938, 32.997799, 28.256371>,  <33.464481, 32.876934, 28.118040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618938, 32.997799, 28.256371>,  <33.876366, 33.199238, 28.486921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618938, 32.997799, 28.256371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375277, -0.448704, 0.811068,
		-0.667077, 0.738276, 0.099780,
		-0.643564, -0.503600, -0.576378,
		33.425869, 32.846718, 28.083458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266010, 33.284748, 28.750135>,  <33.876366, 33.199238, 28.486921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266010, 33.284748, 28.750135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212124, 32.949871, 28.538113>,  <33.179790, 32.748943, 28.410898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212124, 32.949871, 28.538113>,  <33.266010, 33.284748, 28.750135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212124, 32.949871, 28.538113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423954, -0.434801, 0.794488,
		-0.895608, 0.331750, -0.296357,
		-0.134715, -0.837192, -0.530058,
		33.171711, 32.698715, 28.379095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665451, 32.974728, 28.993713>,  <33.266010, 33.284748, 28.750135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665451, 32.974728, 28.993713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830654, 32.666588, 28.799397>,  <32.929775, 32.481705, 28.682806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830654, 32.666588, 28.799397>,  <32.665451, 32.974728, 28.993713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830654, 32.666588, 28.799397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478617, -0.637403, 0.603857,
		-0.774826, -0.016886, -0.631949,
		0.413003, -0.770346, -0.485794,
		32.954556, 32.435486, 28.653658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170727, 32.416870, 28.997189>,  <32.665451, 32.974728, 28.993713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170727, 32.416870, 28.997189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510391, 32.227154, 28.904255>,  <32.714188, 32.113323, 28.848495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510391, 32.227154, 28.904255>,  <32.170727, 32.416870, 28.997189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510391, 32.227154, 28.904255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323046, -0.814464, 0.481965,
		-0.417819, -0.334210, -0.844826,
		0.849158, -0.474292, -0.232334,
		32.765137, 32.084866, 28.834555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118034, 31.702160, 28.764872>,  <32.170727, 32.416870, 28.997189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118034, 31.702160, 28.764872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497322, 31.706760, 28.891834>,  <32.724895, 31.709520, 28.968012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497322, 31.706760, 28.891834>,  <32.118034, 31.702160, 28.764872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497322, 31.706760, 28.891834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192476, -0.774134, 0.603050,
		0.252650, -0.632917, -0.731836,
		0.948220, 0.011500, 0.317407,
		32.781788, 31.710211, 28.987057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272217, 31.080046, 28.523355>,  <32.118034, 31.702160, 28.764872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272217, 31.080046, 28.523355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534409, 31.206841, 28.797543>,  <32.691723, 31.282917, 28.962055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534409, 31.206841, 28.797543>,  <32.272217, 31.080046, 28.523355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534409, 31.206841, 28.797543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133391, -0.844784, 0.518216,
		0.743342, -0.431114, -0.511453,
		0.655477, 0.316988, 0.685470,
		32.731052, 31.301937, 29.003183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658844, 30.561600, 28.643133>,  <32.272217, 31.080046, 28.523355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658844, 30.561600, 28.643133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 30.768059, 28.980728>,  <32.752209, 30.891933, 29.183285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 30.768059, 28.980728>,  <32.658844, 30.561600, 28.643133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717197, 30.768059, 28.980728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002073, -0.852951, 0.521987,
		0.989299, -0.077900, -0.123363,
		0.145886, 0.516146, 0.843985,
		32.760963, 30.922903, 29.233923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936401, 30.114408, 29.033215>,  <32.658844, 30.561600, 28.643133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936401, 30.114408, 29.033215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858829, 30.375832, 29.325859>,  <32.812286, 30.532686, 29.501446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858829, 30.375832, 29.325859>,  <32.936401, 30.114408, 29.033215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858829, 30.375832, 29.325859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016932, -0.747887, 0.663610,
		0.980869, 0.116307, 0.156104,
		-0.193931, 0.653558, 0.731610,
		32.800652, 30.571899, 29.545341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426029, 29.998423, 29.630833>,  <32.936401, 30.114408, 29.033215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426029, 29.998423, 29.630833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085911, 30.165062, 29.759487>,  <32.881840, 30.265045, 29.836679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085911, 30.165062, 29.759487>,  <33.426029, 29.998423, 29.630833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085911, 30.165062, 29.759487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160869, -0.787582, 0.594841,
		0.501124, 0.454047, 0.736692,
		-0.850292, 0.416600, 0.321634,
		32.830822, 30.290041, 29.855978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377930, 30.148998, 30.521955>,  <33.426029, 29.998423, 29.630833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377930, 30.148998, 30.521955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018406, 30.091957, 30.356159>,  <32.802692, 30.057732, 30.256681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018406, 30.091957, 30.356159>,  <33.377930, 30.148998, 30.521955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018406, 30.091957, 30.356159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246930, -0.616561, 0.747582,
		-0.362168, 0.774285, 0.518958,
		-0.898810, -0.142604, -0.414492,
		32.748764, 30.049175, 30.231812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973629, 29.946743, 31.040146>,  <33.377930, 30.148998, 30.521955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973629, 29.946743, 31.040146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685402, 29.885742, 30.769585>,  <32.512466, 29.849142, 30.607248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685402, 29.885742, 30.769585>,  <32.973629, 29.946743, 31.040146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685402, 29.885742, 30.769585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360850, -0.750521, 0.553630,
		-0.592083, 0.643010, 0.485774,
		-0.720572, -0.152504, -0.676401,
		32.469231, 29.839991, 30.566664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406170, 29.895929, 31.419882>,  <32.973629, 29.946743, 31.040146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406170, 29.895929, 31.419882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290924, 29.724499, 31.077347>,  <32.221779, 29.621641, 30.871826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290924, 29.724499, 31.077347>,  <32.406170, 29.895929, 31.419882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290924, 29.724499, 31.077347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406634, -0.754872, 0.514604,
		-0.866972, 0.496479, 0.043213,
		-0.288110, -0.428575, -0.856338,
		32.204491, 29.595926, 30.820446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773623, 29.687258, 31.611025>,  <32.406170, 29.895929, 31.419882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773623, 29.687258, 31.611025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804579, 29.476017, 31.272766>,  <31.823153, 29.349272, 31.069811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804579, 29.476017, 31.272766>,  <31.773623, 29.687258, 31.611025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804579, 29.476017, 31.272766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559581, -0.725003, 0.401548,
		-0.825155, 0.442131, -0.351625,
		0.077392, -0.528102, -0.845647,
		31.827797, 29.317587, 31.019072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050968, 29.430187, 31.399591>,  <31.773623, 29.687258, 31.611025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050968, 29.430187, 31.399591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327585, 29.202255, 31.222023>,  <31.493555, 29.065496, 31.115482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327585, 29.202255, 31.222023>,  <31.050968, 29.430187, 31.399591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327585, 29.202255, 31.222023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490900, -0.821578, 0.289874,
		-0.529893, 0.017460, -0.847885,
		0.691542, -0.569829, -0.443920,
		31.535048, 29.031307, 31.088846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689718, 28.929211, 30.934422>,  <31.050968, 29.430187, 31.399591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689718, 28.929211, 30.934422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041260, 28.812000, 31.085022>,  <31.252184, 28.741674, 31.175383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041260, 28.812000, 31.085022>,  <30.689718, 28.929211, 30.934422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041260, 28.812000, 31.085022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463669, -0.710481, 0.529366,
		0.112376, -0.639806, -0.760276,
		0.878853, -0.293028, 0.376499,
		31.304916, 28.724092, 31.197971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960390, 28.514206, 31.114946>,  <30.689718, 28.929211, 30.934422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960390, 28.514206, 31.114946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564920, 28.571609, 31.132523>,  <29.327639, 28.606052, 31.143068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564920, 28.571609, 31.132523>,  <29.960390, 28.514206, 31.114946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564920, 28.571609, 31.132523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061932, 0.656763, -0.751549,
		-0.136714, -0.740315, -0.658212,
		-0.988673, 0.143511, 0.043939,
		29.268318, 28.614662, 31.145704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646278, 28.431890, 30.432276>,  <29.960390, 28.514206, 31.114946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646278, 28.431890, 30.432276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418272, 28.680946, 30.646713>,  <29.281467, 28.830379, 30.775375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418272, 28.680946, 30.646713>,  <29.646278, 28.431890, 30.432276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418272, 28.680946, 30.646713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036033, 0.632903, -0.773392,
		-0.820842, -0.460164, -0.338330,
		-0.570017, 0.622642, 0.536095,
		29.247267, 28.867739, 30.807541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034605, 28.627140, 29.911762>,  <29.646278, 28.431890, 30.432276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034605, 28.627140, 29.911762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059816, 28.888130, 30.213837>,  <29.074944, 29.044724, 30.395081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059816, 28.888130, 30.213837>,  <29.034605, 28.627140, 29.911762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059816, 28.888130, 30.213837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125767, 0.755850, -0.642553,
		-0.990056, -0.054479, 0.129698,
		0.063027, 0.652475, 0.755185,
		29.078724, 29.083872, 30.440392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671606, 29.138493, 29.649063>,  <29.034605, 28.627140, 29.911762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671606, 29.138493, 29.649063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828842, 29.322491, 29.967529>,  <28.923183, 29.432890, 30.158609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828842, 29.322491, 29.967529>,  <28.671606, 29.138493, 29.649063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828842, 29.322491, 29.967529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161206, 0.886936, -0.432847,
		-0.905258, 0.041802, 0.422802,
		0.393092, 0.459996, 0.796167,
		28.946770, 29.460489, 30.206379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104729, 29.669851, 30.029596>,  <28.671606, 29.138493, 29.649063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104729, 29.669851, 30.029596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493700, 29.753910, 30.070045>,  <28.727083, 29.804344, 30.094315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493700, 29.753910, 30.070045>,  <28.104729, 29.669851, 30.029596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493700, 29.753910, 30.070045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178952, 0.950436, -0.254261,
		-0.149540, 0.229154, 0.961835,
		0.972427, 0.210145, 0.101121,
		28.785427, 29.816954, 30.100382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
