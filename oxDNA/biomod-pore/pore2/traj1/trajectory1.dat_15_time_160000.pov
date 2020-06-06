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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.757727, 16.873741, -2.152984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362267, 16.816063, -2.136117>,  <22.124990, 16.781456, -2.125996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362267, 16.816063, -2.136117>,  <22.757727, 16.873741, -2.152984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362267, 16.816063, -2.136117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052511, 0.594647, 0.802270,
		-0.140760, 0.790950, -0.595470,
		-0.988650, -0.144196, 0.042169,
		22.065672, 16.772804, -2.123466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.096357, 16.145618, -2.331997>,  <22.757727, 16.873741, -2.152984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.096357, 16.145618, -2.331997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.015892, 15.857452, -2.597488>,  <22.967613, 15.684552, -2.756782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.015892, 15.857452, -2.597488>,  <23.096357, 16.145618, -2.331997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.015892, 15.857452, -2.597488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901939, -0.400565, 0.161414,
		-0.382151, -0.566169, 0.730351,
		-0.201166, -0.720417, -0.663726,
		22.955542, 15.641328, -2.796606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595566, 15.702650, -2.127852>,  <23.096357, 16.145618, -2.331997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595566, 15.702650, -2.127852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459450, 15.569256, -2.479532>,  <23.377781, 15.489220, -2.690540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.459450, 15.569256, -2.479532>,  <23.595566, 15.702650, -2.127852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.459450, 15.569256, -2.479532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831113, -0.544013, -0.115329,
		-0.439836, -0.769959, 0.462286,
		-0.340288, -0.333486, -0.879199,
		23.357363, 15.469210, -2.743292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.705574, 15.952883, -1.471030>,  <23.595566, 15.702650, -2.127852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.705574, 15.952883, -1.471030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.764660, 16.036770, -1.084414>,  <23.800112, 16.087103, -0.852445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.764660, 16.036770, -1.084414>,  <23.705574, 15.952883, -1.471030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.764660, 16.036770, -1.084414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883490, -0.411281, 0.224261,
		0.444551, -0.887055, 0.124533,
		0.147714, 0.209719, 0.966540,
		23.808975, 16.099686, -0.794453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.423353, 15.400593, -1.243502>,  <23.705574, 15.952883, -1.471030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.423353, 15.400593, -1.243502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460972, 15.656857, -0.938685>,  <23.483543, 15.810615, -0.755794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460972, 15.656857, -0.938685>,  <23.423353, 15.400593, -1.243502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460972, 15.656857, -0.938685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885960, -0.295296, 0.357598,
		0.454127, -0.708771, 0.539827,
		0.094046, 0.640659, 0.762044,
		23.489185, 15.849054, -0.710071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.331957, 15.102643, -0.539911>,  <23.423353, 15.400593, -1.243502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.331957, 15.102643, -0.539911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233944, 15.489223, -0.570722>,  <23.175137, 15.721171, -0.589209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233944, 15.489223, -0.570722>,  <23.331957, 15.102643, -0.539911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233944, 15.489223, -0.570722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914909, -0.204211, 0.348194,
		0.320782, 0.155792, 0.934252,
		-0.245031, 0.966451, -0.077029,
		23.160435, 15.779159, -0.593831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927025, 15.410664, 0.112329>,  <23.331957, 15.102643, -0.539911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927025, 15.410664, 0.112329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862106, 15.629730, -0.215994>,  <22.823154, 15.761170, -0.412987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.862106, 15.629730, -0.215994>,  <22.927025, 15.410664, 0.112329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.862106, 15.629730, -0.215994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986562, -0.074188, 0.145571,
		0.018830, 0.833402, 0.552347,
		-0.162297, 0.547666, -0.820806,
		22.813417, 15.794030, -0.462235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.543087, 16.095297, 0.225538>,  <22.927025, 15.410664, 0.112329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.543087, 16.095297, 0.225538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486809, 15.964958, -0.148420>,  <22.453043, 15.886755, -0.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486809, 15.964958, -0.148420>,  <22.543087, 16.095297, 0.225538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486809, 15.964958, -0.148420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975628, -0.114977, 0.186898,
		-0.168392, 0.938405, -0.301729,
		-0.140695, -0.325847, -0.934895,
		22.444601, 15.867204, -0.428889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632214, 16.135639, 0.973692>,  <22.543087, 16.095297, 0.225538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632214, 16.135639, 0.973692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.889660, 16.110703, 0.668569>,  <23.044127, 16.095741, 0.485496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.889660, 16.110703, 0.668569>,  <22.632214, 16.135639, 0.973692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.889660, 16.110703, 0.668569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325048, 0.924589, 0.198695,
		0.692896, -0.375832, 0.615342,
		0.643614, -0.062340, -0.762807,
		23.082745, 16.092001, 0.439727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956730, 16.779514, 1.054275>,  <22.632214, 16.135639, 0.973692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956730, 16.779514, 1.054275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254299, 16.958790, 1.252549>,  <23.432840, 17.066355, 1.371514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.254299, 16.958790, 1.252549>,  <22.956730, 16.779514, 1.054275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.254299, 16.958790, 1.252549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661842, 0.391547, 0.639263,
		0.092425, -0.803629, 0.587910,
		0.743924, 0.448187, 0.495687,
		23.477476, 17.093246, 1.401255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.909731, 16.511175, 1.653744>,  <22.956730, 16.779514, 1.054275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.909731, 16.511175, 1.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.078159, 16.873943, 1.648221>,  <23.179216, 17.091604, 1.644908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.078159, 16.873943, 1.648221>,  <22.909731, 16.511175, 1.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.078159, 16.873943, 1.648221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807995, 0.381971, 0.448601,
		0.412122, -0.177734, 0.893625,
		0.421070, 0.906922, -0.013811,
		23.204481, 17.146021, 1.644079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048979, 16.772285, 2.365347>,  <22.909731, 16.511175, 1.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048979, 16.772285, 2.365347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945969, 17.042950, 2.089431>,  <22.884163, 17.205349, 1.923881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.945969, 17.042950, 2.089431>,  <23.048979, 16.772285, 2.365347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.945969, 17.042950, 2.089431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668514, 0.390674, 0.632821,
		0.697689, 0.624101, 0.351750,
		-0.257525, 0.676662, -0.689790,
		22.868711, 17.245949, 1.882494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.609209, 17.278624, 2.699249>,  <23.048979, 16.772285, 2.365347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.609209, 17.278624, 2.699249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.516949, 17.404610, 2.330989>,  <22.461594, 17.480202, 2.110033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.516949, 17.404610, 2.330989>,  <22.609209, 17.278624, 2.699249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.516949, 17.404610, 2.330989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889703, 0.314843, 0.330608,
		0.393990, 0.895360, 0.207608,
		-0.230649, 0.314966, -0.920651,
		22.447754, 17.499100, 2.054794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673557, 17.937777, 2.590484>,  <22.609209, 17.278624, 2.699249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673557, 17.937777, 2.590484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.376781, 17.763031, 2.387043>,  <22.198717, 17.658184, 2.264978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.376781, 17.763031, 2.387043>,  <22.673557, 17.937777, 2.590484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.376781, 17.763031, 2.387043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666966, 0.403465, 0.626396,
		-0.068448, 0.803967, -0.590721,
		-0.741938, -0.436866, -0.508602,
		22.154200, 17.631971, 2.234462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.105982, 18.393202, 2.466818>,  <22.673557, 17.937777, 2.590484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.105982, 18.393202, 2.466818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977612, 18.014668, 2.482085>,  <21.900589, 17.787546, 2.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977612, 18.014668, 2.482085>,  <22.105982, 18.393202, 2.466818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977612, 18.014668, 2.482085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726492, 0.271824, 0.631126,
		-0.607632, 0.174815, -0.774740,
		-0.320924, -0.946335, 0.038167,
		21.881334, 17.730766, 2.493536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.438791, 18.421652, 2.461974>,  <22.105982, 18.393202, 2.466818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.438791, 18.421652, 2.461974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.506672, 18.046028, 2.581551>,  <21.547400, 17.820654, 2.653298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.506672, 18.046028, 2.581551>,  <21.438791, 18.421652, 2.461974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.506672, 18.046028, 2.581551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782888, 0.055784, 0.619656,
		-0.598571, -0.339196, -0.725713,
		0.169702, -0.939060, 0.298943,
		21.557583, 17.764311, 2.671234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810682, 18.088459, 2.382689>,  <21.438791, 18.421652, 2.461974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810682, 18.088459, 2.382689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.973145, 17.868515, 2.674631>,  <21.070621, 17.736547, 2.849797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.973145, 17.868515, 2.674631>,  <20.810682, 18.088459, 2.382689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973145, 17.868515, 2.674631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839590, 0.090745, 0.535588,
		-0.360730, -0.830311, -0.424802,
		0.406156, -0.549862, 0.729855,
		21.094992, 17.703556, 2.893588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.253929, 17.702017, 2.562533>,  <20.810682, 18.088459, 2.382689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.253929, 17.702017, 2.562533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496304, 17.685486, 2.880310>,  <20.641727, 17.675568, 3.070975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496304, 17.685486, 2.880310>,  <20.253929, 17.702017, 2.562533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496304, 17.685486, 2.880310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785344, 0.128100, 0.605661,
		-0.126799, -0.990900, 0.045163,
		0.605935, -0.041329, 0.794440,
		20.678083, 17.673088, 3.118642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769161, 17.493927, 2.970662>,  <20.253929, 17.702017, 2.562533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769161, 17.493927, 2.970662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069061, 17.644573, 3.188300>,  <20.249001, 17.734961, 3.318882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069061, 17.644573, 3.188300>,  <19.769161, 17.493927, 2.970662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069061, 17.644573, 3.188300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637881, 0.192619, 0.745658,
		0.176033, -0.906118, 0.384659,
		0.749747, 0.376627, 0.544088,
		20.293985, 17.757557, 3.351528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655691, 17.239727, 3.698079>,  <19.769161, 17.493927, 2.970662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655691, 17.239727, 3.698079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840260, 17.593861, 3.675186>,  <19.951000, 17.806341, 3.661451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840260, 17.593861, 3.675186>,  <19.655691, 17.239727, 3.698079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840260, 17.593861, 3.675186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705273, 0.405183, 0.581736,
		0.538220, -0.228061, 0.811362,
		0.461421, 0.885333, -0.057232,
		19.978685, 17.859461, 3.658017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729244, 17.531496, 4.346824>,  <19.655691, 17.239727, 3.698079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729244, 17.531496, 4.346824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728230, 17.840065, 4.092297>,  <19.727621, 18.025206, 3.939581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728230, 17.840065, 4.092297>,  <19.729244, 17.531496, 4.346824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728230, 17.840065, 4.092297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704407, 0.450277, 0.548691,
		0.709792, 0.449620, 0.542253,
		-0.002538, 0.771423, -0.636318,
		19.727468, 18.071491, 3.901402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861799, 18.214558, 4.712981>,  <19.729244, 17.531496, 4.346824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861799, 18.214558, 4.712981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700768, 18.325855, 4.364151>,  <19.604149, 18.392633, 4.154854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700768, 18.325855, 4.364151>,  <19.861799, 18.214558, 4.712981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700768, 18.325855, 4.364151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635096, 0.601190, 0.484998,
		0.659229, 0.749100, -0.065315,
		-0.402579, 0.278243, -0.872073,
		19.579994, 18.409328, 4.102530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934296, 18.991709, 4.580981>,  <19.861799, 18.214558, 4.712981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934296, 18.991709, 4.580981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598770, 18.823784, 4.442333>,  <19.397455, 18.723028, 4.359144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598770, 18.823784, 4.442333>,  <19.934296, 18.991709, 4.580981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598770, 18.823784, 4.442333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544413, 0.649395, 0.530944,
		0.002197, 0.634068, -0.773274,
		-0.838815, -0.419814, -0.346622,
		19.347126, 18.697840, 4.338346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.451414, 19.531588, 4.467360>,  <19.934296, 18.991709, 4.580981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.451414, 19.531588, 4.467360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217773, 19.210068, 4.512485>,  <19.077589, 19.017155, 4.539559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217773, 19.210068, 4.512485>,  <19.451414, 19.531588, 4.467360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217773, 19.210068, 4.512485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696894, 0.567888, 0.437998,
		-0.416129, 0.177217, -0.891869,
		-0.584103, -0.803802, 0.112813,
		19.042543, 18.968927, 4.546329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838026, 19.719645, 4.320050>,  <19.451414, 19.531588, 4.467360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838026, 19.719645, 4.320050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752068, 19.381271, 4.515279>,  <18.700493, 19.178247, 4.632417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752068, 19.381271, 4.515279>,  <18.838026, 19.719645, 4.320050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752068, 19.381271, 4.515279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627844, 0.502460, 0.594429,
		-0.748085, -0.178693, -0.639092,
		-0.214898, -0.845933, 0.488074,
		18.687597, 19.127491, 4.661702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019735, 19.711008, 4.413817>,  <18.838026, 19.719645, 4.320050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019735, 19.711008, 4.413817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.264187, 19.549290, 4.686013>,  <18.410858, 19.452259, 4.849331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.264187, 19.549290, 4.686013>,  <18.019735, 19.711008, 4.413817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264187, 19.549290, 4.686013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531572, 0.427363, 0.731295,
		-0.586475, -0.808645, 0.046262,
		0.611129, -0.404294, 0.680491,
		18.447525, 19.428001, 4.890161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640619, 19.272074, 4.857270>,  <18.019735, 19.711008, 4.413817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640619, 19.272074, 4.857270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952927, 19.443016, 5.039596>,  <18.140310, 19.545582, 5.148991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.952927, 19.443016, 5.039596>,  <17.640619, 19.272074, 4.857270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.952927, 19.443016, 5.039596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619301, 0.432558, 0.655255,
		0.082860, -0.793890, 0.602390,
		0.780769, 0.427355, 0.455815,
		18.187157, 19.571222, 5.176340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604691, 18.997967, 5.494919>,  <17.640619, 19.272074, 4.857270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.604691, 18.997967, 5.494919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754364, 19.368908, 5.494273>,  <17.844168, 19.591473, 5.493886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754364, 19.368908, 5.494273>,  <17.604691, 18.997967, 5.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754364, 19.368908, 5.494273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549399, 0.223083, 0.805229,
		0.747092, -0.300418, 0.592961,
		0.374185, 0.927353, -0.001614,
		17.866619, 19.647114, 5.493789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.080677, 19.064917, 5.993437>,  <17.604691, 18.997967, 5.494919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.080677, 19.064917, 5.993437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848080, 19.369316, 5.878371>,  <17.708521, 19.551956, 5.809331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848080, 19.369316, 5.878371>,  <18.080677, 19.064917, 5.993437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848080, 19.369316, 5.878371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583006, -0.143169, 0.799754,
		0.567426, 0.632761, 0.526918,
		-0.581492, 0.760997, -0.287665,
		17.673632, 19.597614, 5.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973953, 19.805725, 6.359472>,  <18.080677, 19.064917, 5.993437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973953, 19.805725, 6.359472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651775, 19.640064, 6.189892>,  <17.458467, 19.540668, 6.088143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.651775, 19.640064, 6.189892>,  <17.973953, 19.805725, 6.359472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651775, 19.640064, 6.189892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361108, -0.224282, 0.905151,
		-0.469954, 0.882143, 0.031094,
		-0.805447, -0.414151, -0.423951,
		17.410141, 19.515820, 6.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247072, 20.165966, 6.358922>,  <17.973953, 19.805725, 6.359472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247072, 20.165966, 6.358922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256779, 19.771160, 6.422438>,  <17.262604, 19.534277, 6.460547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.256779, 19.771160, 6.422438>,  <17.247072, 20.165966, 6.358922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.256779, 19.771160, 6.422438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261027, 0.147069, 0.954063,
		-0.965027, -0.064601, -0.254068,
		0.024268, -0.987015, 0.158788,
		17.264059, 19.475056, 6.470074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623096, 19.872168, 6.716170>,  <17.247072, 20.165966, 6.358922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623096, 19.872168, 6.716170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.927467, 19.635754, 6.823254>,  <17.110090, 19.493906, 6.887504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.927467, 19.635754, 6.823254>,  <16.623096, 19.872168, 6.716170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927467, 19.635754, 6.823254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199542, 0.179434, 0.963320,
		-0.617391, -0.786436, 0.018600,
		0.760928, -0.591034, 0.267708,
		17.155746, 19.458443, 6.903566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.462372, 19.598207, 7.336221>,  <16.623096, 19.872168, 6.716170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.462372, 19.598207, 7.336221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853947, 19.517433, 7.348252>,  <17.088892, 19.468969, 7.355471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853947, 19.517433, 7.348252>,  <16.462372, 19.598207, 7.336221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853947, 19.517433, 7.348252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054364, -0.115818, 0.991782,
		-0.196795, -0.972526, -0.124357,
		0.978937, -0.201938, 0.030078,
		17.147627, 19.456852, 7.357276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535608, 19.193335, 7.965628>,  <16.462372, 19.598207, 7.336221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535608, 19.193335, 7.965628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.894341, 19.355961, 7.895887>,  <17.109581, 19.453537, 7.854043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.894341, 19.355961, 7.895887>,  <16.535608, 19.193335, 7.965628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894341, 19.355961, 7.895887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163303, 0.062021, 0.984625,
		0.411127, -0.911515, -0.010771,
		0.896832, 0.406565, -0.174352,
		17.163389, 19.477930, 7.843582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997429, 18.955580, 8.453208>,  <16.535608, 19.193335, 7.965628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997429, 18.955580, 8.453208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.176514, 19.294590, 8.339186>,  <17.283964, 19.497995, 8.270773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.176514, 19.294590, 8.339186>,  <16.997429, 18.955580, 8.453208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176514, 19.294590, 8.339186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380739, 0.107759, 0.918382,
		0.809070, -0.519700, -0.274442,
		0.447710, 0.847526, -0.285055,
		17.310827, 19.548847, 8.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587479, 19.028229, 8.805036>,  <16.997429, 18.955580, 8.453208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587479, 19.028229, 8.805036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483635, 19.401371, 8.705131>,  <17.421329, 19.625257, 8.645187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.483635, 19.401371, 8.705131>,  <17.587479, 19.028229, 8.805036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483635, 19.401371, 8.705131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485757, 0.349672, 0.801105,
		0.834652, 0.086650, -0.543919,
		-0.259609, 0.932856, -0.249764,
		17.405752, 19.681229, 8.630201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202950, 19.535208, 8.732313>,  <17.587479, 19.028229, 8.805036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202950, 19.535208, 8.732313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880257, 19.757427, 8.812859>,  <17.686642, 19.890759, 8.861186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880257, 19.757427, 8.812859>,  <18.202950, 19.535208, 8.732313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880257, 19.757427, 8.812859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447059, 0.350967, 0.822776,
		0.386420, 0.753782, -0.531500,
		-0.806732, 0.555549, 0.201364,
		17.638237, 19.924091, 8.873268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447535, 20.302259, 8.794792>,  <18.202950, 19.535208, 8.732313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447535, 20.302259, 8.794792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094666, 20.255886, 8.977365>,  <17.882944, 20.228062, 9.086909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094666, 20.255886, 8.977365>,  <18.447535, 20.302259, 8.794792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094666, 20.255886, 8.977365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386523, 0.375429, 0.842409,
		-0.269020, 0.919572, -0.286383,
		-0.882172, -0.115932, 0.456433,
		17.830013, 20.221107, 9.114296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399439, 20.782127, 9.214553>,  <18.447535, 20.302259, 8.794792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399439, 20.782127, 9.214553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103775, 20.571339, 9.382337>,  <17.926376, 20.444866, 9.483006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103775, 20.571339, 9.382337>,  <18.399439, 20.782127, 9.214553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.103775, 20.571339, 9.382337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293703, 0.308261, 0.904828,
		-0.606121, 0.792008, -0.073081,
		-0.739159, -0.526971, 0.419459,
		17.882027, 20.413248, 9.508174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267817, 21.102289, 9.780489>,  <18.399439, 20.782127, 9.214553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267817, 21.102289, 9.780489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073254, 20.766376, 9.876967>,  <17.956516, 20.564829, 9.934855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073254, 20.766376, 9.876967>,  <18.267817, 21.102289, 9.780489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073254, 20.766376, 9.876967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219676, 0.149644, 0.964028,
		-0.845664, 0.521897, 0.111691,
		-0.486410, -0.839780, 0.241197,
		17.927330, 20.514442, 9.949327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944601, 21.299114, 10.364840>,  <18.267817, 21.102289, 9.780489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944601, 21.299114, 10.364840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915531, 20.900448, 10.349997>,  <17.898090, 20.661247, 10.341091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915531, 20.900448, 10.349997>,  <17.944601, 21.299114, 10.364840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915531, 20.900448, 10.349997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032464, -0.034822, 0.998866,
		-0.996827, 0.073796, -0.029825,
		-0.072673, -0.996665, -0.037108,
		17.893728, 20.601448, 10.338864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435728, 21.118240, 10.811265>,  <17.944601, 21.299114, 10.364840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435728, 21.118240, 10.811265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648575, 20.781895, 10.771666>,  <17.776283, 20.580088, 10.747906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648575, 20.781895, 10.771666>,  <17.435728, 21.118240, 10.811265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648575, 20.781895, 10.771666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087348, -0.170824, 0.981422,
		-0.842152, -0.513585, -0.164346,
		0.532118, -0.840862, -0.099000,
		17.808210, 20.529636, 10.741965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.094646, 20.435856, 11.197460>,  <17.435728, 21.118240, 10.811265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.094646, 20.435856, 11.197460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492393, 20.405663, 11.167691>,  <17.731041, 20.387547, 11.149830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.492393, 20.405663, 11.167691>,  <17.094646, 20.435856, 11.197460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.492393, 20.405663, 11.167691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051523, -0.269392, 0.961651,
		-0.092637, -0.960068, -0.263985,
		0.994366, -0.075483, -0.074421,
		17.790703, 20.383017, 11.145365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234869, 19.805304, 11.549092>,  <17.094646, 20.435856, 11.197460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234869, 19.805304, 11.549092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576855, 20.008434, 11.506860>,  <17.782047, 20.130312, 11.481521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576855, 20.008434, 11.506860>,  <17.234869, 19.805304, 11.549092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576855, 20.008434, 11.506860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250158, -0.225396, 0.941604,
		0.454373, -0.831451, -0.319742,
		0.854966, 0.507826, -0.105580,
		17.833344, 20.160782, 11.475185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744751, 19.441618, 11.936983>,  <17.234869, 19.805304, 11.549092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744751, 19.441618, 11.936983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877907, 19.817158, 11.901776>,  <17.957800, 20.042482, 11.880652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.877907, 19.817158, 11.901776>,  <17.744751, 19.441618, 11.936983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877907, 19.817158, 11.901776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425887, -0.066415, 0.902335,
		0.841311, -0.337864, -0.421953,
		0.332891, 0.938849, -0.088017,
		17.977774, 20.098812, 11.875371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433092, 19.397457, 12.391656>,  <17.744751, 19.441618, 11.936983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433092, 19.397457, 12.391656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368488, 19.785782, 12.320730>,  <18.329727, 20.018776, 12.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368488, 19.785782, 12.320730>,  <18.433092, 19.397457, 12.391656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368488, 19.785782, 12.320730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438064, 0.231526, 0.868617,
		0.884316, 0.062614, -0.462671,
		-0.161508, 0.970811, -0.177314,
		18.320036, 20.077024, 12.267536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120462, 19.690025, 12.580311>,  <18.433092, 19.397457, 12.391656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120462, 19.690025, 12.580311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845886, 19.980682, 12.591554>,  <18.681141, 20.155077, 12.598299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845886, 19.980682, 12.591554>,  <19.120462, 19.690025, 12.580311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845886, 19.980682, 12.591554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387118, 0.332437, 0.860015,
		0.615579, 0.601230, -0.509494,
		-0.686442, 0.726642, 0.028106,
		18.639954, 20.198675, 12.599985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.525503, 20.209181, 12.820081>,  <19.120462, 19.690025, 12.580311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.525503, 20.209181, 12.820081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144424, 20.304382, 12.895687>,  <18.915777, 20.361504, 12.941051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144424, 20.304382, 12.895687>,  <19.525503, 20.209181, 12.820081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144424, 20.304382, 12.895687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266939, 0.357900, 0.894791,
		0.145313, 0.902919, -0.404501,
		-0.952695, 0.238002, 0.189017,
		18.858616, 20.375782, 12.952393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520840, 21.008316, 13.015455>,  <19.525503, 20.209181, 12.820081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520840, 21.008316, 13.015455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200169, 20.828724, 13.173307>,  <19.007767, 20.720968, 13.268019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200169, 20.828724, 13.173307>,  <19.520840, 21.008316, 13.015455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200169, 20.828724, 13.173307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196139, 0.426055, 0.883180,
		-0.564662, 0.785427, -0.253496,
		-0.801677, -0.448978, 0.394630,
		18.959665, 20.694031, 13.291697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308136, 21.441183, 13.537390>,  <19.520840, 21.008316, 13.015455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308136, 21.441183, 13.537390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117428, 21.102760, 13.632784>,  <19.003002, 20.899706, 13.690021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.117428, 21.102760, 13.632784>,  <19.308136, 21.441183, 13.537390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117428, 21.102760, 13.632784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052200, 0.298078, 0.953113,
		-0.877476, 0.441968, -0.186279,
		-0.476771, -0.846058, 0.238486,
		18.974396, 20.848944, 13.704329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797543, 21.614470, 14.053697>,  <19.308136, 21.441183, 13.537390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797543, 21.614470, 14.053697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849895, 21.221737, 14.108654>,  <18.881308, 20.986097, 14.141628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.849895, 21.221737, 14.108654>,  <18.797543, 21.614470, 14.053697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849895, 21.221737, 14.108654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128388, 0.120633, 0.984360,
		-0.983050, -0.146473, -0.110267,
		0.130880, -0.981832, 0.137394,
		18.889160, 20.927187, 14.149872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384808, 21.435579, 14.654460>,  <18.797543, 21.614470, 14.053697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384808, 21.435579, 14.654460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.656532, 21.144333, 14.617846>,  <18.819567, 20.969585, 14.595877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.656532, 21.144333, 14.617846>,  <18.384808, 21.435579, 14.654460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656532, 21.144333, 14.617846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216426, 0.079590, 0.973049,
		-0.701208, -0.680816, 0.211650,
		0.679313, -0.728117, -0.091537,
		18.860327, 20.925898, 14.590384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160145, 20.982355, 15.092284>,  <18.384808, 21.435579, 14.654460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160145, 20.982355, 15.092284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.548367, 20.906055, 15.033438>,  <18.781300, 20.860275, 14.998130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.548367, 20.906055, 15.033438>,  <18.160145, 20.982355, 15.092284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548367, 20.906055, 15.033438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140500, -0.047839, 0.988924,
		-0.195675, -0.980472, -0.019630,
		0.970552, -0.190750, -0.147117,
		18.839533, 20.848831, 14.989303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.274050, 20.797461, 15.653243>,  <18.160145, 20.982355, 15.092284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.274050, 20.797461, 15.653243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650631, 20.825096, 15.521246>,  <18.876579, 20.841677, 15.442048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.650631, 20.825096, 15.521246>,  <18.274050, 20.797461, 15.653243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.650631, 20.825096, 15.521246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335408, -0.092649, 0.937506,
		0.034198, -0.993299, -0.110398,
		0.941452, 0.069089, -0.329992,
		18.933067, 20.845823, 15.422249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745590, 20.284628, 15.981848>,  <18.274050, 20.797461, 15.653243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745590, 20.284628, 15.981848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013947, 20.554260, 15.858221>,  <19.174961, 20.716040, 15.784045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013947, 20.554260, 15.858221>,  <18.745590, 20.284628, 15.981848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013947, 20.554260, 15.858221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273890, 0.162068, 0.948008,
		0.689121, -0.720661, -0.075894,
		0.670892, 0.674079, -0.309066,
		19.215214, 20.756483, 15.765501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318653, 20.171625, 16.324133>,  <18.745590, 20.284628, 15.981848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.318653, 20.171625, 16.324133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395893, 20.542583, 16.195978>,  <19.442238, 20.765160, 16.119085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395893, 20.542583, 16.195978>,  <19.318653, 20.171625, 16.324133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395893, 20.542583, 16.195978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489067, 0.192100, 0.850829,
		0.850603, -0.320987, -0.416464,
		0.193102, 0.927397, -0.320385,
		19.453823, 20.820803, 16.099863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.040968, 20.390314, 16.347143>,  <19.318653, 20.171625, 16.324133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.040968, 20.390314, 16.347143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840530, 20.735241, 16.376297>,  <19.720268, 20.942198, 16.393789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.840530, 20.735241, 16.376297>,  <20.040968, 20.390314, 16.347143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.840530, 20.735241, 16.376297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328707, 0.111745, 0.937798,
		0.800536, 0.493882, -0.339445,
		-0.501092, 0.862319, 0.072887,
		19.690203, 20.993937, 16.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380661, 20.738199, 16.805382>,  <20.040968, 20.390314, 16.347143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380661, 20.738199, 16.805382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052658, 20.967052, 16.799036>,  <19.855856, 21.104364, 16.795229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052658, 20.967052, 16.799036>,  <20.380661, 20.738199, 16.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052658, 20.967052, 16.799036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125305, 0.206501, 0.970390,
		0.558468, 0.793739, -0.241023,
		-0.820008, 0.572133, -0.015865,
		19.806656, 21.138693, 16.794277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463861, 21.229803, 17.261793>,  <20.380661, 20.738199, 16.805382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463861, 21.229803, 17.261793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067574, 21.263325, 17.218987>,  <19.829802, 21.283438, 17.193302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067574, 21.263325, 17.218987>,  <20.463861, 21.229803, 17.261793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067574, 21.263325, 17.218987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084592, 0.236112, 0.968037,
		0.106393, 0.968105, -0.226832,
		-0.990719, 0.083804, -0.107015,
		19.770357, 21.288465, 17.186882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212946, 21.885517, 17.372536>,  <20.463861, 21.229803, 17.261793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212946, 21.885517, 17.372536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862556, 21.696526, 17.411388>,  <19.652323, 21.583130, 17.434700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862556, 21.696526, 17.411388>,  <20.212946, 21.885517, 17.372536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862556, 21.696526, 17.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113146, 0.397016, 0.910811,
		-0.468902, 0.786856, -0.401234,
		-0.875973, -0.472479, 0.097132,
		19.599764, 21.554783, 17.440529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736576, 22.355370, 17.733240>,  <20.212946, 21.885517, 17.372536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736576, 22.355370, 17.733240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577892, 21.992683, 17.790495>,  <19.482681, 21.775072, 17.824848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577892, 21.992683, 17.790495>,  <19.736576, 22.355370, 17.733240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577892, 21.992683, 17.790495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278355, 0.267415, 0.922501,
		-0.874722, 0.326124, -0.358475,
		-0.396711, -0.906715, 0.143136,
		19.458879, 21.720669, 17.833435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130491, 22.462429, 18.075043>,  <19.736576, 22.355370, 17.733240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130491, 22.462429, 18.075043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201305, 22.075489, 18.147585>,  <19.243793, 21.843325, 18.191111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201305, 22.075489, 18.147585>,  <19.130491, 22.462429, 18.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201305, 22.075489, 18.147585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271611, 0.129089, 0.953710,
		-0.945984, -0.218097, -0.239890,
		0.177034, -0.967352, 0.181353,
		19.254416, 21.785284, 18.201990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.517603, 22.060602, 18.400888>,  <19.130491, 22.462429, 18.075043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.517603, 22.060602, 18.400888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877636, 21.914104, 18.495308>,  <19.093655, 21.826206, 18.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877636, 21.914104, 18.495308>,  <18.517603, 22.060602, 18.400888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877636, 21.914104, 18.495308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214772, 0.098444, 0.971690,
		-0.379113, -0.925297, 0.009949,
		0.900081, -0.366244, 0.236049,
		19.147661, 21.804232, 18.566122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382351, 21.534412, 18.895830>,  <18.517603, 22.060602, 18.400888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382351, 21.534412, 18.895830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772987, 21.619629, 18.907713>,  <19.007370, 21.670759, 18.914843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772987, 21.619629, 18.907713>,  <18.382351, 21.534412, 18.895830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772987, 21.619629, 18.907713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083981, 0.250488, 0.964470,
		0.198030, -0.944389, 0.262516,
		0.976592, 0.213040, 0.029706,
		19.065966, 21.683540, 18.916624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.511366, 21.409878, 19.537706>,  <18.382351, 21.534412, 18.895830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.511366, 21.409878, 19.537706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.873074, 21.568237, 19.473757>,  <19.090099, 21.663254, 19.435387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.873074, 21.568237, 19.473757>,  <18.511366, 21.409878, 19.537706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.873074, 21.568237, 19.473757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063336, 0.245920, 0.967219,
		0.422238, -0.884753, 0.197303,
		0.904270, 0.395900, -0.159873,
		19.144354, 21.687008, 19.425795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942299, 21.145779, 20.055019>,  <18.511366, 21.409878, 19.537706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942299, 21.145779, 20.055019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108803, 21.489002, 19.934713>,  <19.208706, 21.694937, 19.862530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.108803, 21.489002, 19.934713>,  <18.942299, 21.145779, 20.055019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108803, 21.489002, 19.934713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203815, 0.234313, 0.950556,
		0.886108, -0.456978, -0.077350,
		0.416259, 0.858061, -0.300765,
		19.233681, 21.746420, 19.844484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596680, 21.224363, 20.356113>,  <18.942299, 21.145779, 20.055019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596680, 21.224363, 20.356113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.506351, 21.599602, 20.251055>,  <19.452154, 21.824745, 20.188021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.506351, 21.599602, 20.251055>,  <19.596680, 21.224363, 20.356113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506351, 21.599602, 20.251055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162154, 0.302045, 0.939402,
		0.960579, 0.169547, -0.220324,
		-0.225820, 0.938095, -0.262645,
		19.438606, 21.881031, 20.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.197878, 21.677654, 20.582628>,  <19.596680, 21.224363, 20.356113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.197878, 21.677654, 20.582628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.864796, 21.895969, 20.545284>,  <19.664946, 22.026958, 20.522879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.864796, 21.895969, 20.545284>,  <20.197878, 21.677654, 20.582628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864796, 21.895969, 20.545284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163534, 0.403496, 0.900249,
		0.529015, 0.734375, -0.425248,
		-0.832706, 0.545788, -0.093360,
		19.614985, 22.059706, 20.517277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406775, 22.309433, 20.868790>,  <20.197878, 21.677654, 20.582628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406775, 22.309433, 20.868790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006840, 22.302517, 20.866535>,  <19.766880, 22.298367, 20.865183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006840, 22.302517, 20.866535>,  <20.406775, 22.309433, 20.868790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006840, 22.302517, 20.866535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010788, 0.314543, 0.949182,
		-0.014639, 0.949086, -0.314677,
		-0.999835, -0.017290, -0.005634,
		19.706890, 22.297331, 20.864845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162161, 22.964024, 21.079697>,  <20.406775, 22.309433, 20.868790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162161, 22.964024, 21.079697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868877, 22.699070, 21.141211>,  <19.692907, 22.540098, 21.178120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.868877, 22.699070, 21.141211>,  <20.162161, 22.964024, 21.079697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.868877, 22.699070, 21.141211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013649, 0.240443, 0.970567,
		-0.679865, 0.709531, -0.185336,
		-0.733210, -0.662384, 0.153785,
		19.648914, 22.500355, 21.187346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654217, 23.349634, 21.136148>,  <20.162161, 22.964024, 21.079697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654217, 23.349634, 21.136148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544128, 23.014107, 21.324036>,  <19.478075, 22.812790, 21.436768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544128, 23.014107, 21.324036>,  <19.654217, 23.349634, 21.136148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544128, 23.014107, 21.324036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071936, 0.505185, 0.860008,
		-0.958686, 0.202903, -0.199379,
		-0.275221, -0.838820, 0.469718,
		19.461563, 22.762461, 21.464951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183620, 23.579327, 21.517128>,  <19.654217, 23.349634, 21.136148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183620, 23.579327, 21.517128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240452, 23.227699, 21.699141>,  <19.274549, 23.016724, 21.808348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240452, 23.227699, 21.699141>,  <19.183620, 23.579327, 21.517128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240452, 23.227699, 21.699141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224024, 0.419209, 0.879816,
		-0.964172, -0.226940, -0.137373,
		0.142077, -0.879069, 0.455030,
		19.283075, 22.963978, 21.835649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599567, 23.543343, 21.858717>,  <19.183620, 23.579327, 21.517128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599567, 23.543343, 21.858717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850487, 23.285686, 22.033798>,  <19.001038, 23.131092, 22.138847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.850487, 23.285686, 22.033798>,  <18.599567, 23.543343, 21.858717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850487, 23.285686, 22.033798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125154, 0.471349, 0.873022,
		-0.768659, -0.602423, 0.215059,
		0.627296, -0.644140, 0.437702,
		19.038675, 23.092445, 22.165110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331097, 23.485262, 22.546738>,  <18.599567, 23.543343, 21.858717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331097, 23.485262, 22.546738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715775, 23.383175, 22.586754>,  <18.946581, 23.321922, 22.610764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.715775, 23.383175, 22.586754>,  <18.331097, 23.485262, 22.546738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.715775, 23.383175, 22.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025628, 0.447052, 0.894141,
		-0.272922, -0.857327, 0.436468,
		0.961695, -0.255216, 0.100039,
		19.004284, 23.306610, 22.616766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.503599, 23.375973, 23.258757>,  <18.331097, 23.485262, 22.546738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.503599, 23.375973, 23.258757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870110, 23.435406, 23.109966>,  <19.090015, 23.471066, 23.020693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.870110, 23.435406, 23.109966>,  <18.503599, 23.375973, 23.258757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870110, 23.435406, 23.109966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192602, 0.650822, 0.734394,
		0.351207, -0.744549, 0.567714,
		0.916274, 0.148582, -0.371976,
		19.144991, 23.479980, 22.998373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927099, 23.332994, 23.822180>,  <18.503599, 23.375973, 23.258757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927099, 23.332994, 23.822180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142269, 23.535198, 23.552336>,  <19.271370, 23.656521, 23.390429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142269, 23.535198, 23.552336>,  <18.927099, 23.332994, 23.822180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142269, 23.535198, 23.552336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309203, 0.626165, 0.715759,
		0.784239, -0.593616, 0.180525,
		0.537924, 0.505508, -0.674611,
		19.303646, 23.686850, 23.349953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728300, 23.390375, 23.916986>,  <18.927099, 23.332994, 23.822180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728300, 23.390375, 23.916986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533306, 23.715191, 23.788645>,  <19.416309, 23.910080, 23.711639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.533306, 23.715191, 23.788645>,  <19.728300, 23.390375, 23.916986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.533306, 23.715191, 23.788645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444001, 0.546967, 0.709712,
		0.751812, 0.203514, -0.627185,
		-0.487485, 0.812040, -0.320856,
		19.387060, 23.958803, 23.692389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157831, 23.992937, 23.670427>,  <19.728300, 23.390375, 23.916986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157831, 23.992937, 23.670427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816460, 24.153053, 23.803951>,  <19.611637, 24.249123, 23.884066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816460, 24.153053, 23.803951>,  <20.157831, 23.992937, 23.670427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816460, 24.153053, 23.803951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519903, 0.608433, 0.599591,
		0.036911, 0.685255, -0.727367,
		-0.853427, 0.400292, 0.333808,
		19.560431, 24.273142, 23.904093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836266, 24.064114, 23.309174>,  <20.157831, 23.992937, 23.670427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836266, 24.064114, 23.309174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663200, 24.413860, 23.221279>,  <20.559361, 24.623709, 23.168543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663200, 24.413860, 23.221279>,  <20.836266, 24.064114, 23.309174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663200, 24.413860, 23.221279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464604, -0.007368, 0.885488,
		0.772623, 0.485208, 0.409423,
		-0.432662, 0.874368, -0.219737,
		20.533401, 24.676170, 23.155357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065252, 24.651331, 23.811003>,  <20.836266, 24.064114, 23.309174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065252, 24.651331, 23.811003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702106, 24.702389, 23.651258>,  <20.484219, 24.733025, 23.555412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.702106, 24.702389, 23.651258>,  <21.065252, 24.651331, 23.811003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.702106, 24.702389, 23.651258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375185, 0.177810, 0.909736,
		0.187135, 0.975751, -0.113536,
		-0.907864, 0.127646, -0.399362,
		20.429747, 24.740683, 23.531450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772097, 25.247442, 23.942003>,  <21.065252, 24.651331, 23.811003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772097, 25.247442, 23.942003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492584, 24.963009, 23.910852>,  <20.324877, 24.792349, 23.892162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.492584, 24.963009, 23.910852>,  <20.772097, 25.247442, 23.942003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.492584, 24.963009, 23.910852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327799, 0.221543, 0.918404,
		-0.635808, 0.667293, -0.387903,
		-0.698782, -0.711083, -0.077879,
		20.282949, 24.749683, 23.887489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038473, 25.430727, 23.896423>,  <20.772097, 25.247442, 23.942003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038473, 25.430727, 23.896423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082638, 25.075607, 24.075140>,  <20.109137, 24.862535, 24.182369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082638, 25.075607, 24.075140>,  <20.038473, 25.430727, 23.896423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082638, 25.075607, 24.075140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372596, 0.379781, 0.846722,
		-0.921402, -0.259961, -0.288859,
		0.110411, -0.887799, 0.446791,
		20.115761, 24.809267, 24.209177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.640846, 25.615206, 24.422903>,  <20.038473, 25.430727, 23.896423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.640846, 25.615206, 24.422903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.820965, 25.265736, 24.496578>,  <19.929037, 25.056053, 24.540783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.820965, 25.265736, 24.496578>,  <19.640846, 25.615206, 24.422903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820965, 25.265736, 24.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079033, 0.244477, 0.966429,
		-0.889374, -0.420624, 0.179136,
		0.450298, -0.873674, 0.184188,
		19.956055, 25.003633, 24.551834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.945791, 25.474529, 24.420395>,  <19.640846, 25.615206, 24.422903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.945791, 25.474529, 24.420395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.658703, 25.696896, 24.588125>,  <18.486450, 25.830315, 24.688763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.658703, 25.696896, 24.588125>,  <18.945791, 25.474529, 24.420395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.658703, 25.696896, 24.588125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612388, -0.217278, -0.760112,
		-0.331450, -0.802338, 0.496382,
		-0.717720, 0.555918, 0.419326,
		18.443386, 25.863670, 24.713923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308319, 25.117113, 24.617157>,  <18.945791, 25.474529, 24.420395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308319, 25.117113, 24.617157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240265, 25.498852, 24.518951>,  <18.199432, 25.727896, 24.460028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240265, 25.498852, 24.518951>,  <18.308319, 25.117113, 24.617157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240265, 25.498852, 24.518951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434610, -0.296276, -0.850490,
		-0.884402, -0.037997, 0.465176,
		-0.170137, 0.954346, -0.245513,
		18.189224, 25.785156, 24.445297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781452, 25.054626, 24.330919>,  <18.308319, 25.117113, 24.617157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781452, 25.054626, 24.330919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908218, 25.409100, 24.195721>,  <17.984278, 25.621784, 24.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908218, 25.409100, 24.195721>,  <17.781452, 25.054626, 24.330919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908218, 25.409100, 24.195721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313719, -0.238363, -0.919110,
		-0.895066, 0.397317, 0.202472,
		0.316917, 0.886184, -0.337997,
		18.003294, 25.674955, 24.094322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181635, 25.074736, 23.907751>,  <17.781452, 25.054626, 24.330919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181635, 25.074736, 23.907751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494728, 25.297115, 23.795858>,  <17.682585, 25.430544, 23.728724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.494728, 25.297115, 23.795858>,  <17.181635, 25.074736, 23.907751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494728, 25.297115, 23.795858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233242, -0.154663, -0.960040,
		-0.576998, 0.816700, 0.008611,
		0.782734, 0.555949, -0.279729,
		17.729548, 25.463900, 23.711939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971197, 25.450140, 23.448540>,  <17.181635, 25.074736, 23.907751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971197, 25.450140, 23.448540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367031, 25.438072, 23.392237>,  <17.604532, 25.430832, 23.358456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.367031, 25.438072, 23.392237>,  <16.971197, 25.450140, 23.448540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.367031, 25.438072, 23.392237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143902, -0.180863, -0.972924,
		0.003896, 0.983045, -0.183320,
		0.989584, -0.030171, -0.140758,
		17.663906, 25.429020, 23.350010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053623, 25.935322, 22.862432>,  <16.971197, 25.450140, 23.448540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053623, 25.935322, 22.862432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333836, 25.650375, 22.845516>,  <17.501963, 25.479408, 22.835367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333836, 25.650375, 22.845516>,  <17.053623, 25.935322, 22.862432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333836, 25.650375, 22.845516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106877, -0.046142, -0.993201,
		0.705571, 0.700290, -0.108460,
		0.700533, -0.712366, -0.042289,
		17.543995, 25.436666, 22.832830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651638, 26.200659, 22.366570>,  <17.053623, 25.935322, 22.862432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651638, 26.200659, 22.366570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679207, 25.801716, 22.375782>,  <17.695747, 25.562351, 22.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679207, 25.801716, 22.375782>,  <17.651638, 26.200659, 22.366570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679207, 25.801716, 22.375782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217375, -0.007520, -0.976059,
		0.973652, 0.072277, 0.216282,
		0.068920, -0.997356, 0.023033,
		17.699883, 25.502508, 22.382692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192699, 25.996040, 21.732521>,  <17.651638, 26.200659, 22.366570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192699, 25.996040, 21.732521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994167, 25.661350, 21.825085>,  <17.875048, 25.460537, 21.880623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994167, 25.661350, 21.825085>,  <18.192699, 25.996040, 21.732521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994167, 25.661350, 21.825085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101156, -0.209004, -0.972669,
		0.862221, -0.506172, 0.019095,
		-0.496329, -0.836724, 0.231410,
		17.845268, 25.410334, 21.894508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443398, 25.426813, 21.302094>,  <18.192699, 25.996040, 21.732521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443398, 25.426813, 21.302094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.093872, 25.279598, 21.429216>,  <17.884157, 25.191269, 21.505489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.093872, 25.279598, 21.429216>,  <18.443398, 25.426813, 21.302094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093872, 25.279598, 21.429216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095060, -0.511668, -0.853909,
		0.476882, -0.776366, 0.412116,
		-0.873812, -0.368037, 0.317806,
		17.831728, 25.169188, 21.524559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428936, 24.701832, 21.104998>,  <18.443398, 25.426813, 21.302094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428936, 24.701832, 21.104998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050545, 24.826454, 21.140903>,  <17.823509, 24.901228, 21.162447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050545, 24.826454, 21.140903>,  <18.428936, 24.701832, 21.104998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050545, 24.826454, 21.140903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219854, -0.412881, -0.883852,
		-0.238307, -0.855840, 0.459073,
		-0.945978, 0.311557, 0.089767,
		17.766752, 24.919922, 21.167833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079447, 24.144890, 20.903801>,  <18.428936, 24.701832, 21.104998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079447, 24.144890, 20.903801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.810188, 24.439514, 20.877415>,  <17.648634, 24.616289, 20.861584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.810188, 24.439514, 20.877415>,  <18.079447, 24.144890, 20.903801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.810188, 24.439514, 20.877415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398158, -0.436150, -0.806996,
		-0.623174, -0.516961, 0.586861,
		-0.673145, 0.736562, -0.065965,
		17.608244, 24.660482, 20.857626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488676, 23.805277, 20.728493>,  <18.079447, 24.144890, 20.903801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488676, 23.805277, 20.728493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412086, 24.184025, 20.625128>,  <17.366133, 24.411274, 20.563108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412086, 24.184025, 20.625128>,  <17.488676, 23.805277, 20.728493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412086, 24.184025, 20.625128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447087, -0.318525, -0.835856,
		-0.873757, -0.044512, 0.484322,
		-0.191474, 0.946869, -0.258413,
		17.354645, 24.468086, 20.547604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862806, 23.776335, 20.428017>,  <17.488676, 23.805277, 20.728493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862806, 23.776335, 20.428017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996891, 24.121372, 20.276459>,  <17.077343, 24.328396, 20.185524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996891, 24.121372, 20.276459>,  <16.862806, 23.776335, 20.428017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996891, 24.121372, 20.276459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566423, -0.136849, -0.812673,
		-0.752859, 0.487033, 0.442720,
		0.335213, 0.862596, -0.378895,
		17.097454, 24.380152, 20.162790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395758, 23.903290, 19.928328>,  <16.862806, 23.776335, 20.428017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395758, 23.903290, 19.928328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.680626, 24.171852, 19.846325>,  <16.851547, 24.332989, 19.797123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.680626, 24.171852, 19.846325>,  <16.395758, 23.903290, 19.928328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680626, 24.171852, 19.846325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358193, 0.096386, -0.928659,
		-0.603748, 0.734795, 0.309136,
		0.712170, 0.671406, -0.205005,
		16.894278, 24.373274, 19.784822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110647, 24.424715, 19.577677>,  <16.395758, 23.903290, 19.928328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110647, 24.424715, 19.577677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.496647, 24.444965, 19.474751>,  <16.728247, 24.457115, 19.412994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.496647, 24.444965, 19.474751>,  <16.110647, 24.424715, 19.577677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.496647, 24.444965, 19.474751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253383, -0.072941, -0.964612,
		-0.067605, 0.996050, -0.057560,
		0.965001, 0.050628, -0.257313,
		16.786148, 24.460154, 19.397556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201643, 24.861681, 18.915340>,  <16.110647, 24.424715, 19.577677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201643, 24.861681, 18.915340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528385, 24.634739, 18.957016>,  <16.724430, 24.498573, 18.982021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.528385, 24.634739, 18.957016>,  <16.201643, 24.861681, 18.915340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528385, 24.634739, 18.957016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079809, -0.290038, -0.953681,
		0.571293, 0.770706, -0.282199,
		0.816857, -0.567353, 0.104188,
		16.773441, 24.464533, 18.988272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619253, 25.049007, 18.350573>,  <16.201643, 24.861681, 18.915340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619253, 25.049007, 18.350573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762047, 24.698933, 18.481176>,  <16.847723, 24.488888, 18.559540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762047, 24.698933, 18.481176>,  <16.619253, 25.049007, 18.350573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762047, 24.698933, 18.481176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030847, -0.338307, -0.940530,
		0.933600, 0.345828, -0.093775,
		0.356987, -0.875186, 0.326511,
		16.869143, 24.436377, 18.579130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198135, 24.803011, 17.975092>,  <16.619253, 25.049007, 18.350573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198135, 24.803011, 17.975092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050968, 24.468060, 18.136801>,  <16.962667, 24.267088, 18.233826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050968, 24.468060, 18.136801>,  <17.198135, 24.803011, 17.975092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050968, 24.468060, 18.136801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013797, -0.429801, -0.902818,
		0.929756, -0.337741, 0.146578,
		-0.367918, -0.837378, 0.404270,
		16.940592, 24.216846, 18.258081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653318, 24.288902, 17.811220>,  <17.198135, 24.803011, 17.975092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.653318, 24.288902, 17.811220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302082, 24.109966, 17.879154>,  <17.091341, 24.002604, 17.919914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302082, 24.109966, 17.879154>,  <17.653318, 24.288902, 17.811220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302082, 24.109966, 17.879154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015187, -0.380815, -0.924527,
		0.478255, -0.809238, 0.341183,
		-0.878090, -0.447341, 0.169837,
		17.038654, 23.975763, 17.930105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750669, 23.648323, 17.380711>,  <17.653318, 24.288902, 17.811220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750669, 23.648323, 17.380711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357941, 23.682465, 17.448523>,  <17.122303, 23.702950, 17.489210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357941, 23.682465, 17.448523>,  <17.750669, 23.648323, 17.380711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357941, 23.682465, 17.448523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189734, -0.465915, -0.864248,
		0.005222, -0.880703, 0.473640,
		-0.981822, 0.085353, 0.169532,
		17.063395, 23.708071, 17.499382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480701, 23.025108, 17.347101>,  <17.750669, 23.648323, 17.380711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480701, 23.025108, 17.347101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181454, 23.271290, 17.247883>,  <17.001904, 23.418999, 17.188351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181454, 23.271290, 17.247883>,  <17.480701, 23.025108, 17.347101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181454, 23.271290, 17.247883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138254, -0.510182, -0.848882,
		-0.648999, -0.600773, 0.466767,
		-0.748122, 0.615456, -0.248048,
		16.957018, 23.455927, 17.173468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944813, 22.628202, 16.904234>,  <17.480701, 23.025108, 17.347101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944813, 22.628202, 16.904234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845291, 23.004009, 16.810085>,  <16.785578, 23.229494, 16.753595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.845291, 23.004009, 16.810085>,  <16.944813, 22.628202, 16.904234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.845291, 23.004009, 16.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248633, -0.296826, -0.921996,
		-0.936097, -0.170874, 0.307447,
		-0.248804, 0.939519, -0.235373,
		16.770649, 23.285866, 16.739473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426455, 22.554632, 16.514881>,  <16.944813, 22.628202, 16.904234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426455, 22.554632, 16.514881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564060, 22.915119, 16.409458>,  <16.646624, 23.131411, 16.346205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564060, 22.915119, 16.409458>,  <16.426455, 22.554632, 16.514881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564060, 22.915119, 16.409458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249015, -0.183074, -0.951039,
		-0.905342, 0.392802, 0.161436,
		0.344015, 0.901216, -0.263558,
		16.667265, 23.185484, 16.330391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924648, 22.805305, 16.102011>,  <16.426455, 22.554632, 16.514881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924648, 22.805305, 16.102011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239384, 23.031918, 16.004087>,  <16.428225, 23.167885, 15.945333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239384, 23.031918, 16.004087>,  <15.924648, 22.805305, 16.102011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239384, 23.031918, 16.004087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156272, -0.200852, -0.967077,
		-0.597047, 0.799190, -0.069506,
		0.786838, 0.566528, -0.244809,
		16.475435, 23.201876, 15.930645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732329, 23.139034, 15.532924>,  <15.924648, 22.805305, 16.102011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732329, 23.139034, 15.532924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.132034, 23.141678, 15.517780>,  <16.371857, 23.143265, 15.508695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.132034, 23.141678, 15.517780>,  <15.732329, 23.139034, 15.532924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132034, 23.141678, 15.517780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037438, -0.055019, -0.997783,
		-0.008677, 0.998463, -0.054731,
		0.999261, 0.006609, -0.037858,
		16.431812, 23.143661, 15.506423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916945, 23.770367, 15.101856>,  <15.732329, 23.139034, 15.532924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916945, 23.770367, 15.101856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.240978, 23.535851, 15.104044>,  <16.435398, 23.395140, 15.105356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.240978, 23.535851, 15.104044>,  <15.916945, 23.770367, 15.101856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240978, 23.535851, 15.104044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001130, -0.007766, -0.999969,
		0.586317, 0.810063, -0.005628,
		0.810081, -0.586292, 0.005469,
		16.484003, 23.359962, 15.105684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447388, 24.151144, 14.576971>,  <15.916945, 23.770367, 15.101856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447388, 24.151144, 14.576971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601151, 23.785023, 14.625057>,  <16.693409, 23.565350, 14.653909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601151, 23.785023, 14.625057>,  <16.447388, 24.151144, 14.576971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601151, 23.785023, 14.625057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238175, -0.027481, -0.970833,
		0.891911, 0.401827, 0.207439,
		0.384406, -0.915303, 0.120215,
		16.716473, 23.510431, 14.661122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.118746, 24.112314, 14.304850>,  <16.447388, 24.151144, 14.576971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.118746, 24.112314, 14.304850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007244, 23.728569, 14.322382>,  <16.940344, 23.498322, 14.332902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007244, 23.728569, 14.322382>,  <17.118746, 24.112314, 14.304850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007244, 23.728569, 14.322382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147091, -0.087752, -0.985223,
		0.949031, -0.268188, 0.165575,
		-0.278755, -0.959361, 0.043832,
		16.923618, 23.440760, 14.335531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580275, 23.736370, 13.851861>,  <17.118746, 24.112314, 14.304850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580275, 23.736370, 13.851861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285313, 23.466312, 13.859980>,  <17.108335, 23.304277, 13.864851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285313, 23.466312, 13.859980>,  <17.580275, 23.736370, 13.851861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285313, 23.466312, 13.859980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146618, -0.189325, -0.970906,
		0.659345, -0.712977, 0.238597,
		-0.737406, -0.675145, 0.020295,
		17.064091, 23.263769, 13.866068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788370, 23.281811, 13.365169>,  <17.580275, 23.736370, 13.851861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788370, 23.281811, 13.365169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400082, 23.205250, 13.423225>,  <17.167109, 23.159313, 13.458059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400082, 23.205250, 13.423225>,  <17.788370, 23.281811, 13.365169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400082, 23.205250, 13.423225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064000, -0.376304, -0.924283,
		0.231527, -0.906510, 0.353036,
		-0.970721, -0.191402, 0.145141,
		17.108866, 23.147829, 13.466767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687521, 22.639254, 13.055971>,  <17.788370, 23.281811, 13.365169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687521, 22.639254, 13.055971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323456, 22.801105, 13.091475>,  <17.105017, 22.898216, 13.112777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.323456, 22.801105, 13.091475>,  <17.687521, 22.639254, 13.055971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.323456, 22.801105, 13.091475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209021, -0.263596, -0.941715,
		-0.357652, -0.875665, 0.324492,
		-0.910162, 0.404632, 0.088757,
		17.050407, 22.922495, 13.118102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.172640, 22.151766, 12.830612>,  <17.687521, 22.639254, 13.055971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.172640, 22.151766, 12.830612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029888, 22.522976, 12.787889>,  <16.944237, 22.745703, 12.762256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029888, 22.522976, 12.787889>,  <17.172640, 22.151766, 12.830612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029888, 22.522976, 12.787889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155681, -0.171823, -0.972749,
		-0.921088, -0.330524, 0.205796,
		-0.356877, 0.928025, -0.106808,
		16.922825, 22.801384, 12.755847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764235, 22.012060, 12.323184>,  <17.172640, 22.151766, 12.830612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764235, 22.012060, 12.323184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788509, 22.411316, 12.320896>,  <16.803074, 22.650869, 12.319524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.788509, 22.411316, 12.320896>,  <16.764235, 22.012060, 12.323184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.788509, 22.411316, 12.320896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197537, 0.006393, -0.980275,
		-0.978415, 0.060621, 0.197558,
		0.060688, 0.998140, -0.005720,
		16.806715, 22.710758, 12.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.098528, 22.350979, 12.070677>,  <16.764235, 22.012060, 12.323184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.098528, 22.350979, 12.070677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375599, 22.633785, 12.013642>,  <16.541842, 22.803469, 11.979422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375599, 22.633785, 12.013642>,  <16.098528, 22.350979, 12.070677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375599, 22.633785, 12.013642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379005, 0.188608, -0.905970,
		-0.613640, 0.681585, 0.398606,
		0.692676, 0.707014, -0.142587,
		16.583403, 22.845890, 11.970866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781489, 22.980621, 11.879499>,  <16.098528, 22.350979, 12.070677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781489, 22.980621, 11.879499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150017, 23.008812, 11.726553>,  <16.371134, 23.025726, 11.634785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150017, 23.008812, 11.726553>,  <15.781489, 22.980621, 11.879499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150017, 23.008812, 11.726553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386987, 0.071161, -0.919335,
		-0.037581, 0.994972, 0.092835,
		0.921319, 0.070476, -0.382366,
		16.426413, 23.029955, 11.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666071, 23.394348, 11.329584>,  <15.781489, 22.980621, 11.879499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666071, 23.394348, 11.329584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026997, 23.253239, 11.230485>,  <16.243551, 23.168573, 11.171025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026997, 23.253239, 11.230485>,  <15.666071, 23.394348, 11.329584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026997, 23.253239, 11.230485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272913, -0.022612, -0.961773,
		0.333686, 0.935435, -0.116680,
		0.902315, -0.352774, -0.247747,
		16.297691, 23.147406, 11.156160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818610, 23.813873, 10.779936>,  <15.666071, 23.394348, 11.329584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818610, 23.813873, 10.779936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070061, 23.503975, 10.752815>,  <16.220930, 23.318035, 10.736543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070061, 23.503975, 10.752815>,  <15.818610, 23.813873, 10.779936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070061, 23.503975, 10.752815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279788, -0.143949, -0.949209,
		0.725637, 0.615667, -0.307255,
		0.628625, -0.774747, -0.067802,
		16.258648, 23.271551, 10.732474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058830, 23.810856, 10.102680>,  <15.818610, 23.813873, 10.779936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058830, 23.810856, 10.102680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119820, 23.432636, 10.217704>,  <16.156414, 23.205704, 10.286718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.119820, 23.432636, 10.217704>,  <16.058830, 23.810856, 10.102680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119820, 23.432636, 10.217704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312559, -0.322162, -0.893599,
		0.937581, 0.046371, -0.344660,
		0.152474, -0.945548, 0.287559,
		16.165562, 23.148972, 10.303971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.315178, 23.522013, 9.557333>,  <16.058830, 23.810856, 10.102680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.315178, 23.522013, 9.557333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.204350, 23.198212, 9.764384>,  <16.137852, 23.003931, 9.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.204350, 23.198212, 9.764384>,  <16.315178, 23.522013, 9.557333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.204350, 23.198212, 9.764384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234788, -0.465349, -0.853419,
		0.931722, -0.357991, -0.061126,
		-0.277071, -0.809502, 0.517628,
		16.121227, 22.955360, 9.919673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652735, 22.964016, 9.228839>,  <16.315178, 23.522013, 9.557333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652735, 22.964016, 9.228839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362572, 22.809891, 9.456986>,  <16.188475, 22.717415, 9.593875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.362572, 22.809891, 9.456986>,  <16.652735, 22.964016, 9.228839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362572, 22.809891, 9.456986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231153, -0.644144, -0.729141,
		0.648348, -0.660765, 0.378198,
		-0.725405, -0.385315, 0.570367,
		16.144951, 22.694296, 9.628097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729118, 22.274336, 9.140735>,  <16.652735, 22.964016, 9.228839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729118, 22.274336, 9.140735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358505, 22.305313, 9.287999>,  <16.136137, 22.323900, 9.376358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.358505, 22.305313, 9.287999>,  <16.729118, 22.274336, 9.140735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358505, 22.305313, 9.287999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325618, -0.655254, -0.681627,
		0.188452, -0.751429, 0.632330,
		-0.926531, 0.077444, 0.368163,
		16.080545, 22.328547, 9.398448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495497, 21.591036, 9.380552>,  <16.729118, 22.274336, 9.140735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495497, 21.591036, 9.380552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166958, 21.811138, 9.320408>,  <15.969835, 21.943199, 9.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166958, 21.811138, 9.320408>,  <16.495497, 21.591036, 9.380552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166958, 21.811138, 9.320408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252714, -0.587320, -0.768889,
		-0.511396, -0.593526, 0.621451,
		-0.821346, 0.550256, -0.150361,
		15.920554, 21.976215, 9.275299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013037, 21.085539, 9.198245>,  <16.495497, 21.591036, 9.380552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013037, 21.085539, 9.198245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857448, 21.417477, 9.038217>,  <15.764094, 21.616640, 8.942200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.857448, 21.417477, 9.038217>,  <16.013037, 21.085539, 9.198245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857448, 21.417477, 9.038217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250877, -0.513273, -0.820738,
		-0.886432, -0.218876, 0.407839,
		-0.388973, 0.829846, -0.400070,
		15.740756, 21.666430, 8.918196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338507, 20.911854, 9.048042>,  <16.013037, 21.085539, 9.198245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338507, 20.911854, 9.048042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.443324, 21.223415, 8.820133>,  <15.506214, 21.410353, 8.683388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.443324, 21.223415, 8.820133>,  <15.338507, 20.911854, 9.048042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443324, 21.223415, 8.820133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504317, -0.392850, -0.768982,
		-0.822799, 0.488853, 0.289871,
		0.262044, 0.778904, -0.569773,
		15.521937, 21.457087, 8.649201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769872, 21.482368, 9.053963>,  <15.338507, 20.911854, 9.048042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769872, 21.482368, 9.053963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414176, 21.311417, 9.119198>,  <14.200758, 21.208845, 9.158339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414176, 21.311417, 9.119198>,  <14.769872, 21.482368, 9.053963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414176, 21.311417, 9.119198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001061, 0.358449, 0.933549,
		-0.457439, 0.829976, -0.319200,
		-0.889241, -0.427380, 0.163088,
		14.147404, 21.183203, 9.168124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339597, 21.931362, 9.406699>,  <14.769872, 21.482368, 9.053963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339597, 21.931362, 9.406699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.171201, 21.577377, 9.486309>,  <14.070164, 21.364986, 9.534075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.171201, 21.577377, 9.486309>,  <14.339597, 21.931362, 9.406699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.171201, 21.577377, 9.486309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000716, 0.219740, 0.975558,
		-0.907065, 0.410557, -0.093142,
		-0.420989, -0.884962, 0.199024,
		14.044904, 21.311890, 9.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791396, 22.107513, 9.793555>,  <14.339597, 21.931362, 9.406699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791396, 22.107513, 9.793555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847703, 21.721302, 9.881132>,  <13.881487, 21.489574, 9.933679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847703, 21.721302, 9.881132>,  <13.791396, 22.107513, 9.793555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847703, 21.721302, 9.881132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050599, 0.213839, 0.975557,
		-0.988749, -0.148404, -0.018753,
		0.140766, -0.965531, 0.218943,
		13.889933, 21.431643, 9.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372231, 21.981567, 10.347159>,  <13.791396, 22.107513, 9.793555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372231, 21.981567, 10.347159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634456, 21.679790, 10.360181>,  <13.791790, 21.498724, 10.367993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634456, 21.679790, 10.360181>,  <13.372231, 21.981567, 10.347159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634456, 21.679790, 10.360181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148536, 0.171095, 0.973994,
		-0.740389, -0.633677, 0.224225,
		0.655561, -0.754440, 0.032553,
		13.831124, 21.453459, 10.369946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125490, 21.478714, 10.834884>,  <13.372231, 21.981567, 10.347159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125490, 21.478714, 10.834884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518826, 21.410728, 10.809105>,  <13.754828, 21.369938, 10.793638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518826, 21.410728, 10.809105>,  <13.125490, 21.478714, 10.834884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518826, 21.410728, 10.809105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106592, 0.251994, 0.961840,
		-0.147238, -0.952686, 0.265913,
		0.983341, -0.169964, -0.064446,
		13.813828, 21.359739, 10.789771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.332271, 21.006369, 11.384212>,  <13.125490, 21.478714, 10.834884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.332271, 21.006369, 11.384212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677581, 21.186386, 11.292810>,  <13.884768, 21.294397, 11.237970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.677581, 21.186386, 11.292810>,  <13.332271, 21.006369, 11.384212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677581, 21.186386, 11.292810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151175, 0.201387, 0.967776,
		0.481560, -0.870001, 0.105817,
		0.863276, 0.450045, -0.228502,
		13.936563, 21.321400, 11.224259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717224, 20.707441, 11.830149>,  <13.332271, 21.006369, 11.384212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717224, 20.707441, 11.830149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922559, 21.034405, 11.725590>,  <14.045760, 21.230583, 11.662854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922559, 21.034405, 11.725590>,  <13.717224, 20.707441, 11.830149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922559, 21.034405, 11.725590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276396, 0.130888, 0.952089,
		0.812459, -0.560992, -0.158739,
		0.513338, 0.817408, -0.261397,
		14.076560, 21.279627, 11.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269061, 20.693316, 12.274301>,  <13.717224, 20.707441, 11.830149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269061, 20.693316, 12.274301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270736, 21.075523, 12.156340>,  <14.271741, 21.304848, 12.085563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.270736, 21.075523, 12.156340>,  <14.269061, 20.693316, 12.274301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270736, 21.075523, 12.156340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195452, 0.288436, 0.937338,
		0.980704, -0.061565, -0.185550,
		0.004188, 0.955518, -0.294903,
		14.271992, 21.362179, 12.067868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819287, 21.016962, 12.612205>,  <14.269061, 20.693316, 12.274301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819287, 21.016962, 12.612205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588981, 21.333172, 12.528717>,  <14.450797, 21.522898, 12.478624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588981, 21.333172, 12.528717>,  <14.819287, 21.016962, 12.612205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588981, 21.333172, 12.528717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126824, 0.338540, 0.932366,
		0.807718, 0.510355, -0.295177,
		-0.575767, 0.790524, -0.208720,
		14.416250, 21.570330, 12.466101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162308, 21.511114, 12.965016>,  <14.819287, 21.016962, 12.612205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162308, 21.511114, 12.965016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805526, 21.673443, 12.885288>,  <14.591456, 21.770840, 12.837451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805526, 21.673443, 12.885288>,  <15.162308, 21.511114, 12.965016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805526, 21.673443, 12.885288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011013, 0.421220, 0.906892,
		0.451992, 0.811101, -0.371240,
		-0.891954, 0.405820, -0.199321,
		14.537940, 21.795189, 12.825492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203646, 22.239954, 13.031765>,  <15.162308, 21.511114, 12.965016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203646, 22.239954, 13.031765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820613, 22.135464, 13.080420>,  <14.590793, 22.072769, 13.109612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820613, 22.135464, 13.080420>,  <15.203646, 22.239954, 13.031765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820613, 22.135464, 13.080420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028431, 0.505706, 0.862237,
		-0.286752, 0.822205, -0.491682,
		-0.957583, -0.261228, 0.121636,
		14.533339, 22.057095, 13.116910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894419, 22.694521, 13.392802>,  <15.203646, 22.239954, 13.031765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894419, 22.694521, 13.392802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602010, 22.432434, 13.469007>,  <14.426565, 22.275181, 13.514730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.602010, 22.432434, 13.469007>,  <14.894419, 22.694521, 13.392802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602010, 22.432434, 13.469007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000586, 0.278597, 0.960408,
		-0.682355, 0.702190, -0.203276,
		-0.731021, -0.655219, 0.190514,
		14.382704, 22.235868, 13.526161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476827, 23.005932, 13.921704>,  <14.894419, 22.694521, 13.392802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476827, 23.005932, 13.921704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400819, 22.613251, 13.916763>,  <14.355214, 22.377642, 13.913799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.400819, 22.613251, 13.916763>,  <14.476827, 23.005932, 13.921704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.400819, 22.613251, 13.916763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196557, 0.025714, 0.980155,
		-0.961904, 0.188675, -0.197846,
		-0.190019, -0.981703, -0.012351,
		14.343813, 22.318741, 13.913058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863983, 22.979656, 14.232709>,  <14.476827, 23.005932, 13.921704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863983, 22.979656, 14.232709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002830, 22.606869, 14.274551>,  <14.086138, 22.383196, 14.299657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.002830, 22.606869, 14.274551>,  <13.863983, 22.979656, 14.232709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.002830, 22.606869, 14.274551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353299, -0.026626, 0.935131,
		-0.868729, -0.361556, -0.338507,
		0.347116, -0.931970, 0.104607,
		14.106964, 22.327278, 14.305933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324832, 22.586475, 14.551826>,  <13.863983, 22.979656, 14.232709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324832, 22.586475, 14.551826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622796, 22.326313, 14.611265>,  <13.801575, 22.170216, 14.646929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622796, 22.326313, 14.611265>,  <13.324832, 22.586475, 14.551826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622796, 22.326313, 14.611265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259139, -0.076827, 0.962780,
		-0.614780, -0.755693, -0.225774,
		0.744911, -0.650405, 0.148598,
		13.846270, 22.131191, 14.655845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994293, 22.042715, 14.953988>,  <13.324832, 22.586475, 14.551826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994293, 22.042715, 14.953988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390069, 22.036655, 15.011646>,  <13.627535, 22.033020, 15.046242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390069, 22.036655, 15.011646>,  <12.994293, 22.042715, 14.953988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390069, 22.036655, 15.011646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141676, 0.108800, 0.983916,
		-0.030590, -0.993948, 0.105505,
		0.989441, -0.015151, 0.144147,
		13.686901, 22.032110, 15.054891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117451, 21.655947, 15.579115>,  <12.994293, 22.042715, 14.953988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117451, 21.655947, 15.579115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462708, 21.855522, 15.548025>,  <13.669864, 21.975267, 15.529371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462708, 21.855522, 15.548025>,  <13.117451, 21.655947, 15.579115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462708, 21.855522, 15.548025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022123, 0.191142, 0.981313,
		0.504472, -0.845296, 0.176021,
		0.863145, 0.498939, -0.077725,
		13.721652, 22.005203, 15.524708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462233, 21.435207, 16.171627>,  <13.117451, 21.655947, 15.579115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462233, 21.435207, 16.171627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.671430, 21.756767, 16.058334>,  <13.796947, 21.949703, 15.990358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.671430, 21.756767, 16.058334>,  <13.462233, 21.435207, 16.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671430, 21.756767, 16.058334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242935, 0.177924, 0.953586,
		0.816983, -0.567525, -0.102243,
		0.522992, 0.803902, -0.283233,
		13.828327, 21.997938, 15.973365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112676, 21.398710, 16.476870>,  <13.462233, 21.435207, 16.171627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112676, 21.398710, 16.476870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093123, 21.783825, 16.370548>,  <14.081392, 22.014894, 16.306755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093123, 21.783825, 16.370548>,  <14.112676, 21.398710, 16.476870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093123, 21.783825, 16.370548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312890, 0.267487, 0.911346,
		0.948531, -0.038621, -0.314321,
		-0.048880, 0.962787, -0.265804,
		14.078460, 22.072660, 16.290808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867344, 21.774469, 16.577129>,  <14.112676, 21.398710, 16.476870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867344, 21.774469, 16.577129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569047, 22.038353, 16.614340>,  <14.390069, 22.196682, 16.636667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.569047, 22.038353, 16.614340>,  <14.867344, 21.774469, 16.577129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569047, 22.038353, 16.614340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272615, 0.174752, 0.946120,
		0.607905, 0.730923, -0.310166,
		-0.745743, 0.659707, 0.093028,
		14.345325, 22.236265, 16.642248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.134113, 22.338968, 16.924286>,  <14.867344, 21.774469, 16.577129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.134113, 22.338968, 16.924286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738257, 22.361938, 16.976921>,  <14.500744, 22.375721, 17.008503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738257, 22.361938, 16.976921>,  <15.134113, 22.338968, 16.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738257, 22.361938, 16.976921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143405, 0.439518, 0.886712,
		-0.006917, 0.896396, -0.443200,
		-0.989640, 0.057424, 0.131587,
		14.441365, 22.379166, 17.016397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137609, 22.950699, 17.222685>,  <15.134113, 22.338968, 16.924286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137609, 22.950699, 17.222685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787286, 22.776085, 17.305054>,  <14.577092, 22.671316, 17.354475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.787286, 22.776085, 17.305054>,  <15.137609, 22.950699, 17.222685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787286, 22.776085, 17.305054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049876, 0.342497, 0.938194,
		-0.480080, 0.831946, -0.278188,
		-0.875806, -0.436533, 0.205920,
		14.524544, 22.645124, 17.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666053, 23.440331, 17.346025>,  <15.137609, 22.950699, 17.222685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666053, 23.440331, 17.346025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508847, 23.115761, 17.519060>,  <14.414524, 22.921019, 17.622881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508847, 23.115761, 17.519060>,  <14.666053, 23.440331, 17.346025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508847, 23.115761, 17.519060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170173, 0.398132, 0.901406,
		-0.903649, 0.427879, -0.018389,
		-0.393014, -0.811425, 0.432585,
		14.390943, 22.872334, 17.648836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268683, 23.669474, 17.911896>,  <14.666053, 23.440331, 17.346025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268683, 23.669474, 17.911896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371539, 23.288612, 17.977968>,  <14.433252, 23.060097, 18.017612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.371539, 23.288612, 17.977968>,  <14.268683, 23.669474, 17.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371539, 23.288612, 17.977968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341386, 0.249411, 0.906228,
		-0.904066, -0.176637, 0.389185,
		0.257140, -0.952152, 0.165182,
		14.448681, 23.002966, 18.027523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.037347, 23.465616, 18.578051>,  <14.268683, 23.669474, 17.911896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.037347, 23.465616, 18.578051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295655, 23.165199, 18.523043>,  <14.450641, 22.984949, 18.490038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295655, 23.165199, 18.523043>,  <14.037347, 23.465616, 18.578051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295655, 23.165199, 18.523043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306637, 0.090156, 0.947547,
		-0.699251, -0.654068, 0.288518,
		0.645772, -0.751044, -0.137520,
		14.489387, 22.939886, 18.481787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014880, 23.045170, 19.207417>,  <14.037347, 23.465616, 18.578051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014880, 23.045170, 19.207417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359738, 22.962399, 19.022425>,  <14.566653, 22.912735, 18.911430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359738, 22.962399, 19.022425>,  <14.014880, 23.045170, 19.207417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359738, 22.962399, 19.022425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489766, 0.106615, 0.865311,
		-0.129751, -0.972530, 0.193264,
		0.862145, -0.206929, -0.462478,
		14.618382, 22.900320, 18.883680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178503, 22.510796, 19.567272>,  <14.014880, 23.045170, 19.207417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178503, 22.510796, 19.567272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507194, 22.677505, 19.411804>,  <14.704408, 22.777533, 19.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507194, 22.677505, 19.411804>,  <14.178503, 22.510796, 19.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507194, 22.677505, 19.411804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408536, 0.044692, 0.911647,
		0.397323, -0.907910, -0.133544,
		0.821725, 0.416776, -0.388671,
		14.753712, 22.802538, 19.295202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792919, 22.106125, 19.827511>,  <14.178503, 22.510796, 19.567272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792919, 22.106125, 19.827511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938443, 22.469250, 19.744066>,  <15.025758, 22.687124, 19.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938443, 22.469250, 19.744066>,  <14.792919, 22.106125, 19.827511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938443, 22.469250, 19.744066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502912, -0.002926, 0.864333,
		0.784042, -0.419365, -0.457614,
		0.363810, 0.907813, -0.208609,
		15.047586, 22.741594, 19.681484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465746, 22.159452, 20.085686>,  <14.792919, 22.106125, 19.827511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465746, 22.159452, 20.085686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391061, 22.549366, 20.036800>,  <15.346250, 22.783314, 20.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.391061, 22.549366, 20.036800>,  <15.465746, 22.159452, 20.085686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.391061, 22.549366, 20.036800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314832, 0.177210, 0.932458,
		0.930602, 0.135625, -0.339980,
		-0.186712, 0.974783, -0.122213,
		15.335048, 22.841801, 20.000137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019480, 22.490128, 20.348545>,  <15.465746, 22.159452, 20.085686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019480, 22.490128, 20.348545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724658, 22.760441, 20.351822>,  <15.547765, 22.922628, 20.353788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724658, 22.760441, 20.351822>,  <16.019480, 22.490128, 20.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724658, 22.760441, 20.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285084, 0.299897, 0.910379,
		0.612763, 0.673333, -0.413695,
		-0.737054, 0.675784, 0.008190,
		15.503542, 22.963177, 20.354279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307320, 23.003624, 20.769363>,  <16.019480, 22.490128, 20.348545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307320, 23.003624, 20.769363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915322, 23.080765, 20.789043>,  <15.680123, 23.127048, 20.800852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915322, 23.080765, 20.789043>,  <16.307320, 23.003624, 20.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915322, 23.080765, 20.789043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093696, 0.228938, 0.968921,
		0.175593, 0.954147, -0.242427,
		-0.979994, 0.192850, 0.049200,
		15.621325, 23.138620, 20.803804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280956, 23.555378, 21.103439>,  <16.307320, 23.003624, 20.769363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280956, 23.555378, 21.103439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898917, 23.438866, 21.125130>,  <15.669693, 23.368959, 21.138144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898917, 23.438866, 21.125130>,  <16.280956, 23.555378, 21.103439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898917, 23.438866, 21.125130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016886, 0.236234, 0.971549,
		-0.295802, 0.927011, -0.230546,
		-0.955100, -0.291279, 0.054225,
		15.612387, 23.351482, 21.141397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846410, 24.130228, 21.295216>,  <16.280956, 23.555378, 21.103439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846410, 24.130228, 21.295216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662936, 23.792564, 21.406212>,  <15.552852, 23.589966, 21.472809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.662936, 23.792564, 21.406212>,  <15.846410, 24.130228, 21.295216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.662936, 23.792564, 21.406212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014378, 0.319288, 0.947549,
		-0.888483, 0.430636, -0.158590,
		-0.458684, -0.844161, 0.277491,
		15.525331, 23.539316, 21.489458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368289, 24.366560, 21.695013>,  <15.846410, 24.130228, 21.295216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368289, 24.366560, 21.695013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.399743, 23.976879, 21.779629>,  <15.418615, 23.743071, 21.830399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.399743, 23.976879, 21.779629>,  <15.368289, 24.366560, 21.695013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.399743, 23.976879, 21.779629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168141, 0.222118, 0.960413,
		-0.982622, -0.039955, 0.181270,
		0.078636, -0.974201, 0.211540,
		15.423334, 23.684618, 21.843090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276080, 24.328835, 22.403013>,  <15.368289, 24.366560, 21.695013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.276080, 24.328835, 22.403013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.397275, 23.955688, 22.325075>,  <15.469992, 23.731802, 22.278313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.397275, 23.955688, 22.325075>,  <15.276080, 24.328835, 22.403013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.397275, 23.955688, 22.325075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219857, -0.130520, 0.966761,
		-0.927287, -0.335754, 0.165551,
		0.302987, -0.932863, -0.194847,
		15.488171, 23.675829, 22.266621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878417, 23.846172, 22.921452>,  <15.276080, 24.328835, 22.403013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878417, 23.846172, 22.921452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.225057, 23.687588, 22.800243>,  <15.433041, 23.592436, 22.727518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.225057, 23.687588, 22.800243>,  <14.878417, 23.846172, 22.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.225057, 23.687588, 22.800243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267811, -0.142861, 0.952821,
		-0.421049, -0.906867, -0.017626,
		0.866600, -0.396464, -0.303020,
		15.485037, 23.568649, 22.709337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036867, 23.347054, 23.420349>,  <14.878417, 23.846172, 22.921452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036867, 23.347054, 23.420349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.389354, 23.363655, 23.231993>,  <15.600845, 23.373615, 23.118979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.389354, 23.363655, 23.231993>,  <15.036867, 23.347054, 23.420349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389354, 23.363655, 23.231993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472685, -0.066226, 0.878739,
		0.005289, -0.996941, -0.077979,
		0.881216, 0.041507, -0.470889,
		15.653718, 23.376106, 23.090727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555241, 22.868130, 23.771420>,  <15.036867, 23.347054, 23.420349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555241, 22.868130, 23.771420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741975, 23.158062, 23.568764>,  <15.854015, 23.332022, 23.447170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.741975, 23.158062, 23.568764>,  <15.555241, 22.868130, 23.771420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741975, 23.158062, 23.568764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610621, 0.150208, 0.777547,
		0.639693, -0.672350, -0.372476,
		0.466835, 0.724833, -0.506638,
		15.882026, 23.375511, 23.416773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884195, 22.182392, 23.458385>,  <15.555241, 22.868130, 23.771420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884195, 22.182392, 23.458385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.801280, 21.798592, 23.534687>,  <15.751531, 21.568312, 23.580469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.801280, 21.798592, 23.534687>,  <15.884195, 22.182392, 23.458385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.801280, 21.798592, 23.534687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103635, -0.215432, -0.971004,
		0.972775, -0.181509, 0.144094,
		-0.207288, -0.959502, 0.190756,
		15.739094, 21.510740, 23.591913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486073, 21.801828, 23.224684>,  <15.884195, 22.182392, 23.458385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486073, 21.801828, 23.224684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182800, 21.541023, 23.222116>,  <16.000837, 21.384541, 23.220575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182800, 21.541023, 23.222116>,  <16.486073, 21.801828, 23.224684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182800, 21.541023, 23.222116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069661, -0.071206, -0.995026,
		0.648311, -0.754859, 0.099407,
		-0.758183, -0.652011, -0.006420,
		15.955345, 21.345421, 23.220190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772541, 21.242924, 22.778696>,  <16.486073, 21.801828, 23.224684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772541, 21.242924, 22.778696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380135, 21.171402, 22.808725>,  <16.144691, 21.128489, 22.826742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.380135, 21.171402, 22.808725>,  <16.772541, 21.242924, 22.778696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.380135, 21.171402, 22.808725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002278, -0.397720, -0.917504,
		0.193913, -0.899915, 0.390577,
		-0.981016, -0.178806, 0.075073,
		16.085831, 21.117760, 22.831247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707308, 20.518734, 22.644777>,  <16.772541, 21.242924, 22.778696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707308, 20.518734, 22.644777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344078, 20.674576, 22.583315>,  <16.126141, 20.768082, 22.546436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.344078, 20.674576, 22.583315>,  <16.707308, 20.518734, 22.644777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.344078, 20.674576, 22.583315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139784, -0.627797, -0.765723,
		-0.394794, -0.673854, 0.624547,
		-0.908074, 0.389605, -0.153657,
		16.071655, 20.791458, 22.537218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249283, 19.931911, 22.420822>,  <16.707308, 20.518734, 22.644777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249283, 19.931911, 22.420822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079010, 20.267639, 22.285568>,  <15.976846, 20.469076, 22.204416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079010, 20.267639, 22.285568>,  <16.249283, 19.931911, 22.420822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079010, 20.267639, 22.285568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195681, -0.450226, -0.871209,
		-0.883461, -0.304691, 0.355893,
		-0.425682, 0.839321, -0.338135,
		15.951305, 20.519436, 22.184128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618197, 19.673002, 22.170990>,  <16.249283, 19.931911, 22.420822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618197, 19.673002, 22.170990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670436, 20.032913, 22.004454>,  <15.701779, 20.248859, 21.904531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.670436, 20.032913, 22.004454>,  <15.618197, 19.673002, 22.170990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670436, 20.032913, 22.004454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229548, -0.381087, -0.895590,
		-0.964496, 0.212531, 0.156774,
		0.130596, 0.899780, -0.416343,
		15.709615, 20.302847, 21.879551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893602, 19.942114, 21.880409>,  <15.618197, 19.673002, 22.170990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893602, 19.942114, 21.880409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.204898, 20.101501, 21.686268>,  <15.391675, 20.197134, 21.569784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.204898, 20.101501, 21.686268>,  <14.893602, 19.942114, 21.880409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204898, 20.101501, 21.686268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408399, -0.265960, -0.873198,
		-0.477028, 0.877774, -0.044246,
		0.778238, 0.398470, -0.485352,
		15.438370, 20.221043, 21.540663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568124, 20.057707, 21.286127>,  <14.893602, 19.942114, 21.880409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568124, 20.057707, 21.286127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948781, 20.150181, 21.205204>,  <15.177176, 20.205666, 21.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948781, 20.150181, 21.205204>,  <14.568124, 20.057707, 21.286127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948781, 20.150181, 21.205204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183317, -0.101099, -0.977841,
		-0.246514, 0.967643, -0.053830,
		0.951644, 0.231183, -0.202308,
		15.234274, 20.219536, 21.144512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606218, 20.757572, 20.906626>,  <14.568124, 20.057707, 21.286127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606218, 20.757572, 20.906626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944535, 20.551708, 20.850397>,  <15.147525, 20.428190, 20.816660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944535, 20.551708, 20.850397>,  <14.606218, 20.757572, 20.906626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944535, 20.551708, 20.850397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227295, -0.109225, -0.967681,
		0.482673, 0.850408, -0.209361,
		0.845792, -0.514661, -0.140573,
		15.198273, 20.397310, 20.808226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883894, 20.983818, 20.280886>,  <14.606218, 20.757572, 20.906626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883894, 20.983818, 20.280886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.056043, 20.625263, 20.323343>,  <15.159332, 20.410130, 20.348818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.056043, 20.625263, 20.323343>,  <14.883894, 20.983818, 20.280886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.056043, 20.625263, 20.323343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149117, -0.186581, -0.971057,
		0.890250, 0.402087, -0.213966,
		0.430371, -0.896389, 0.106146,
		15.185154, 20.356346, 20.355186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389685, 21.037697, 19.784330>,  <14.883894, 20.983818, 20.280886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389685, 21.037697, 19.784330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322143, 20.648098, 19.844748>,  <15.281617, 20.414339, 19.880999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322143, 20.648098, 19.844748>,  <15.389685, 21.037697, 19.784330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322143, 20.648098, 19.844748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241161, -0.107760, -0.964484,
		0.955683, -0.199284, -0.216695,
		-0.168855, -0.973999, 0.151044,
		15.271486, 20.355898, 19.890060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739387, 20.714535, 19.260469>,  <15.389685, 21.037697, 19.784330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739387, 20.714535, 19.260469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478723, 20.429832, 19.365347>,  <15.322324, 20.259012, 19.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478723, 20.429832, 19.365347>,  <15.739387, 20.714535, 19.260469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478723, 20.429832, 19.365347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094033, -0.267193, -0.959044,
		0.752660, -0.649625, 0.107191,
		-0.651660, -0.711755, 0.262192,
		15.283225, 20.216307, 19.444004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903214, 20.052200, 18.926535>,  <15.739387, 20.714535, 19.260469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.903214, 20.052200, 18.926535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519830, 19.980289, 19.015104>,  <15.289799, 19.937143, 19.068247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519830, 19.980289, 19.015104>,  <15.903214, 20.052200, 18.926535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519830, 19.980289, 19.015104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162547, -0.293628, -0.941998,
		0.234368, -0.938862, 0.252209,
		-0.958462, -0.179779, 0.221427,
		15.232291, 19.926355, 19.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826648, 19.451448, 18.599308>,  <15.903214, 20.052200, 18.926535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826648, 19.451448, 18.599308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.451507, 19.567825, 18.674976>,  <15.226421, 19.637651, 18.720377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.451507, 19.567825, 18.674976>,  <15.826648, 19.451448, 18.599308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451507, 19.567825, 18.674976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284367, -0.331838, -0.899455,
		-0.198912, -0.897351, 0.393948,
		-0.937854, 0.290938, 0.189170,
		15.170151, 19.655107, 18.731728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457403, 18.970636, 18.172325>,  <15.826648, 19.451448, 18.599308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457403, 18.970636, 18.172325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201356, 19.273365, 18.225191>,  <15.047728, 19.455002, 18.256910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.201356, 19.273365, 18.225191>,  <15.457403, 18.970636, 18.172325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.201356, 19.273365, 18.225191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452262, -0.232139, -0.861145,
		-0.621054, -0.611008, 0.490879,
		-0.640119, 0.756823, 0.132165,
		15.009320, 19.500412, 18.264841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708052, 18.728350, 17.918179>,  <15.457403, 18.970636, 18.172325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708052, 18.728350, 17.918179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.681874, 19.126022, 17.952404>,  <14.666167, 19.364626, 17.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.681874, 19.126022, 17.952404>,  <14.708052, 18.728350, 17.918179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.681874, 19.126022, 17.952404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501524, 0.041357, -0.864155,
		-0.862665, -0.099465, 0.495899,
		-0.065444, 0.994181, 0.085562,
		14.662241, 19.424276, 17.978073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014110, 18.805693, 17.773058>,  <14.708052, 18.728350, 17.918179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014110, 18.805693, 17.773058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231038, 19.130264, 17.685904>,  <14.361195, 19.325006, 17.633612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231038, 19.130264, 17.685904>,  <14.014110, 18.805693, 17.773058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.231038, 19.130264, 17.685904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438775, 0.052374, -0.897069,
		-0.716495, 0.582102, 0.384437,
		0.542320, 0.811427, -0.217886,
		14.393734, 19.373692, 17.620539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530562, 19.343660, 17.647152>,  <14.014110, 18.805693, 17.773058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530562, 19.343660, 17.647152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867372, 19.426235, 17.447802>,  <14.069457, 19.475780, 17.328192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867372, 19.426235, 17.447802>,  <13.530562, 19.343660, 17.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867372, 19.426235, 17.447802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506187, -0.016989, -0.862256,
		-0.186467, 0.978313, 0.090190,
		0.842024, 0.206435, -0.498377,
		14.119979, 19.488165, 17.298288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.301163, 19.663336, 17.109867>,  <13.530562, 19.343660, 17.647152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.301163, 19.663336, 17.109867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684173, 19.616966, 17.004259>,  <13.913979, 19.589146, 16.940895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684173, 19.616966, 17.004259>,  <13.301163, 19.663336, 17.109867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684173, 19.616966, 17.004259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235393, 0.214574, -0.947918,
		0.166536, 0.969804, 0.178173,
		0.957526, -0.115922, -0.264020,
		13.971431, 19.582190, 16.925053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358676, 20.179823, 16.602373>,  <13.301163, 19.663336, 17.109867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358676, 20.179823, 16.602373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.660295, 19.928116, 16.527071>,  <13.841266, 19.777092, 16.481890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.660295, 19.928116, 16.527071>,  <13.358676, 20.179823, 16.602373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660295, 19.928116, 16.527071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141134, 0.124692, -0.982107,
		0.641480, 0.767122, 0.005212,
		0.754045, -0.629266, -0.188255,
		13.886508, 19.739336, 16.470594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820209, 20.536366, 16.200481>,  <13.358676, 20.179823, 16.602373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820209, 20.536366, 16.200481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875352, 20.145527, 16.135645>,  <13.908438, 19.911024, 16.096743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875352, 20.145527, 16.135645>,  <13.820209, 20.536366, 16.200481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875352, 20.145527, 16.135645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016407, 0.165883, -0.986009,
		0.990316, 0.133270, 0.038900,
		0.137858, -0.977099, -0.162090,
		13.916709, 19.852398, 16.087017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.375566, 20.574905, 15.707043>,  <13.820209, 20.536366, 16.200481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.375566, 20.574905, 15.707043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210673, 20.214878, 15.650555>,  <14.111737, 19.998861, 15.616662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.210673, 20.214878, 15.650555>,  <14.375566, 20.574905, 15.707043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210673, 20.214878, 15.650555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190591, 0.066379, -0.979423,
		0.890921, -0.430665, 0.144181,
		-0.412233, -0.900068, -0.141220,
		14.087004, 19.944859, 15.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.817527, 20.295395, 15.176105>,  <14.375566, 20.574905, 15.707043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.817527, 20.295395, 15.176105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474833, 20.089314, 15.185692>,  <14.269217, 19.965666, 15.191443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474833, 20.089314, 15.185692>,  <14.817527, 20.295395, 15.176105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474833, 20.089314, 15.185692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097141, 0.115551, -0.988540,
		0.506528, -0.849244, -0.149044,
		-0.856733, -0.515202, 0.023966,
		14.217813, 19.934753, 15.192882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.810736, 19.865469, 14.618620>,  <14.817527, 20.295395, 15.176105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.810736, 19.865469, 14.618620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418237, 19.834312, 14.689146>,  <14.182737, 19.815619, 14.731462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418237, 19.834312, 14.689146>,  <14.810736, 19.865469, 14.618620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.418237, 19.834312, 14.689146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191246, 0.279217, -0.940991,
		0.024065, -0.957064, -0.288877,
		-0.981247, -0.077892, 0.176315,
		14.123862, 19.810944, 14.742041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592519, 19.274206, 14.118610>,  <14.810736, 19.865469, 14.618620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592519, 19.274206, 14.118610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289453, 19.510220, 14.230185>,  <14.107613, 19.651827, 14.297129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.289453, 19.510220, 14.230185>,  <14.592519, 19.274206, 14.118610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289453, 19.510220, 14.230185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143775, 0.265995, -0.953192,
		-0.636611, -0.762304, -0.116703,
		-0.757664, 0.590033, 0.278935,
		14.062153, 19.687229, 14.313866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082713, 18.868797, 13.782917>,  <14.592519, 19.274206, 14.118610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082713, 18.868797, 13.782917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907424, 19.220661, 13.856844>,  <13.802251, 19.431780, 13.901200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907424, 19.220661, 13.856844>,  <14.082713, 18.868797, 13.782917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907424, 19.220661, 13.856844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169287, 0.121163, -0.978091,
		-0.882781, -0.459909, 0.095818,
		-0.438223, 0.879661, 0.184817,
		13.775957, 19.484560, 13.912289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336389, 18.858603, 13.735650>,  <14.082713, 18.868797, 13.782917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336389, 18.858603, 13.735650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439082, 19.240093, 13.673048>,  <13.500698, 19.468988, 13.635487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.439082, 19.240093, 13.673048>,  <13.336389, 18.858603, 13.735650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439082, 19.240093, 13.673048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396276, -0.043818, -0.917085,
		-0.881506, 0.297465, 0.366690,
		0.256733, 0.953727, -0.156504,
		13.516102, 19.526211, 13.626097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631914, 19.146866, 13.662936>,  <13.336389, 18.858603, 13.735650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631914, 19.146866, 13.662936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.909049, 19.386261, 13.502045>,  <13.075330, 19.529898, 13.405510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.909049, 19.386261, 13.502045>,  <12.631914, 19.146866, 13.662936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909049, 19.386261, 13.502045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381827, -0.168697, -0.908707,
		-0.611706, 0.783168, 0.111640,
		0.692838, 0.598489, -0.402228,
		13.116900, 19.565807, 13.381376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.323599, 19.705702, 13.255147>,  <12.631914, 19.146866, 13.662936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.323599, 19.705702, 13.255147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695022, 19.685055, 13.108114>,  <12.917875, 19.672667, 13.019895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.695022, 19.685055, 13.108114>,  <12.323599, 19.705702, 13.255147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695022, 19.685055, 13.108114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370254, -0.199056, -0.907353,
		-0.026333, 0.978628, -0.203947,
		0.928558, -0.051618, -0.367582,
		12.973589, 19.669569, 12.997840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.258178, 19.847002, 12.645415>,  <12.323599, 19.705702, 13.255147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.258178, 19.847002, 12.645415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622270, 19.683525, 12.618724>,  <12.840725, 19.585440, 12.602709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622270, 19.683525, 12.618724>,  <12.258178, 19.847002, 12.645415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622270, 19.683525, 12.618724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161325, -0.201560, -0.966099,
		0.381385, 0.890138, -0.249398,
		0.910230, -0.408690, -0.066730,
		12.895339, 19.560919, 12.598705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524687, 20.135393, 11.978432>,  <12.258178, 19.847002, 12.645415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524687, 20.135393, 11.978432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753198, 19.820690, 12.071942>,  <12.890305, 19.631868, 12.128049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753198, 19.820690, 12.071942>,  <12.524687, 20.135393, 11.978432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753198, 19.820690, 12.071942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089110, -0.342601, -0.935245,
		0.815905, 0.513453, -0.265828,
		0.571277, -0.786760, 0.233776,
		12.924581, 19.584661, 12.142076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.967029, 20.036831, 11.345081>,  <12.524687, 20.135393, 11.978432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.967029, 20.036831, 11.345081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966929, 19.685726, 11.536718>,  <12.966869, 19.475063, 11.651701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966929, 19.685726, 11.536718>,  <12.967029, 20.036831, 11.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966929, 19.685726, 11.536718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016015, -0.479028, -0.877654,
		0.999872, -0.007891, -0.013938,
		-0.000248, -0.877764, 0.479093,
		12.966855, 19.422398, 11.680447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469275, 19.585276, 10.951084>,  <12.967029, 20.036831, 11.345081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469275, 19.585276, 10.951084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228135, 19.359013, 11.176155>,  <13.083451, 19.223255, 11.311197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228135, 19.359013, 11.176155>,  <13.469275, 19.585276, 10.951084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228135, 19.359013, 11.176155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114087, -0.636874, -0.762480,
		0.789656, -0.523855, 0.319405,
		-0.602850, -0.565656, 0.562676,
		13.047280, 19.189316, 11.344958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.579698, 18.845226, 10.749436>,  <13.469275, 19.585276, 10.951084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.579698, 18.845226, 10.749436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.238858, 18.802818, 10.954449>,  <13.034355, 18.777372, 11.077456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.238858, 18.802818, 10.954449>,  <13.579698, 18.845226, 10.749436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.238858, 18.802818, 10.954449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290452, -0.718847, -0.631583,
		0.435393, -0.687036, 0.581734,
		-0.852098, -0.106021, 0.512532,
		12.983229, 18.771011, 11.108209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396959, 18.084349, 10.795416>,  <13.579698, 18.845226, 10.749436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.396959, 18.084349, 10.795416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061271, 18.290962, 10.863416>,  <12.859858, 18.414930, 10.904216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.061271, 18.290962, 10.863416>,  <13.396959, 18.084349, 10.795416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.061271, 18.290962, 10.863416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500478, -0.611406, -0.612947,
		-0.212669, -0.599480, 0.771619,
		-0.839222, 0.516533, 0.170000,
		12.809504, 18.445923, 10.914415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896544, 17.569613, 10.910891>,  <13.396959, 18.084349, 10.795416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896544, 17.569613, 10.910891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708730, 17.910656, 10.819158>,  <12.596041, 18.115282, 10.764118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.708730, 17.910656, 10.819158>,  <12.896544, 17.569613, 10.910891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.708730, 17.910656, 10.819158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667599, -0.512828, -0.539740,
		-0.577795, -0.100327, 0.809993,
		-0.469537, 0.852609, -0.229331,
		12.567869, 18.166439, 10.750358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201858, 17.475147, 11.104180>,  <12.896544, 17.569613, 10.910891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201858, 17.475147, 11.104180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209315, 17.765892, 10.829567>,  <12.213790, 17.940338, 10.664799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.209315, 17.765892, 10.829567>,  <12.201858, 17.475147, 11.104180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209315, 17.765892, 10.829567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638761, -0.519591, -0.567459,
		-0.769179, 0.449110, 0.454602,
		0.018645, 0.726860, -0.686533,
		12.214909, 17.983950, 10.623608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.486286, 17.708899, 10.923123>,  <12.201858, 17.475147, 11.104180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.486286, 17.708899, 10.923123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713796, 17.803528, 10.608028>,  <11.850302, 17.860306, 10.418972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.713796, 17.803528, 10.608028>,  <11.486286, 17.708899, 10.923123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713796, 17.803528, 10.608028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676021, -0.411074, -0.611566,
		-0.468498, 0.880370, -0.073880,
		0.568774, 0.236574, -0.787736,
		11.884428, 17.874500, 10.371708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.971155, 17.978598, 10.485859>,  <11.486286, 17.708899, 10.923123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.971155, 17.978598, 10.485859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285775, 17.893997, 10.253787>,  <11.474547, 17.843237, 10.114544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285775, 17.893997, 10.253787>,  <10.971155, 17.978598, 10.485859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285775, 17.893997, 10.253787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609721, -0.414896, -0.675353,
		-0.097877, 0.884946, -0.455292,
		0.786549, -0.211500, -0.580179,
		11.521740, 17.830547, 10.079733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769615, 18.235355, 9.867120>,  <10.971155, 17.978598, 10.485859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769615, 18.235355, 9.867120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050317, 17.957569, 9.803546>,  <11.218738, 17.790897, 9.765402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.050317, 17.957569, 9.803546>,  <10.769615, 18.235355, 9.867120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050317, 17.957569, 9.803546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585265, -0.434772, -0.684425,
		0.406209, 0.573318, -0.711549,
		0.701754, -0.694464, -0.158935,
		11.260843, 17.749229, 9.755865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847252, 18.112509, 9.183417>,  <10.769615, 18.235355, 9.867120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847252, 18.112509, 9.183417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986014, 17.779850, 9.356862>,  <11.069272, 17.580256, 9.460929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986014, 17.779850, 9.356862>,  <10.847252, 18.112509, 9.183417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986014, 17.779850, 9.356862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606943, -0.551526, -0.572223,
		0.715036, -0.064670, -0.696090,
		0.346906, -0.831647, 0.433612,
		11.090086, 17.530355, 9.486946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.222227, 18.232920, 8.666300>,  <10.847252, 18.112509, 9.183417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.222227, 18.232920, 8.666300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513265, 18.143417, 8.925696>,  <11.687887, 18.089716, 9.081334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513265, 18.143417, 8.925696>,  <11.222227, 18.232920, 8.666300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.513265, 18.143417, 8.925696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274093, -0.961399, -0.024196,
		0.628872, -0.160142, -0.760838,
		0.727594, -0.223757, 0.648491,
		11.731543, 18.076290, 9.120244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652093, 17.752222, 8.478840>,  <11.222227, 18.232920, 8.666300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652093, 17.752222, 8.478840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635636, 17.726463, 8.877670>,  <11.625762, 17.711008, 9.116968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.635636, 17.726463, 8.877670>,  <11.652093, 17.752222, 8.478840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.635636, 17.726463, 8.877670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322958, -0.943495, -0.074261,
		0.945519, -0.325069, 0.018020,
		-0.041142, -0.064395, 0.997076,
		11.623294, 17.707146, 9.176793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966854, 17.141100, 8.700756>,  <11.652093, 17.752222, 8.478840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966854, 17.141100, 8.700756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681577, 17.262489, 8.953504>,  <11.510410, 17.335323, 9.105152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.681577, 17.262489, 8.953504>,  <11.966854, 17.141100, 8.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.681577, 17.262489, 8.953504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588901, -0.748329, -0.305286,
		0.380199, -0.589836, 0.712420,
		-0.713193, 0.303475, 0.631869,
		11.467619, 17.353533, 9.143064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.848289, 16.580935, 8.991885>,  <11.966854, 17.141100, 8.700756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.848289, 16.580935, 8.991885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533326, 16.826351, 9.015759>,  <11.344349, 16.973600, 9.030083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.533326, 16.826351, 9.015759>,  <11.848289, 16.580935, 8.991885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.533326, 16.826351, 9.015759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594241, -0.729742, -0.338163,
		-0.163923, -0.301738, 0.939193,
		-0.787405, 0.613540, 0.059684,
		11.297105, 17.010412, 9.033664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302176, 16.350187, 9.417715>,  <11.848289, 16.580935, 8.991885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302176, 16.350187, 9.417715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145650, 16.587681, 9.136475>,  <11.051735, 16.730177, 8.967731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.145650, 16.587681, 9.136475>,  <11.302176, 16.350187, 9.417715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.145650, 16.587681, 9.136475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493946, -0.780155, -0.383894,
		-0.776462, 0.197074, 0.598556,
		-0.391311, 0.593733, -0.703105,
		11.028255, 16.765800, 8.925544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.577737, 16.374634, 9.427584>,  <11.302176, 16.350187, 9.417715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.577737, 16.374634, 9.427584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.734555, 16.416817, 9.062032>,  <10.828647, 16.442125, 8.842700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.734555, 16.416817, 9.062032>,  <10.577737, 16.374634, 9.427584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.734555, 16.416817, 9.062032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496879, -0.811768, -0.306830,
		-0.774216, 0.574380, -0.265852,
		0.392047, 0.105456, -0.913881,
		10.852169, 16.448454, 8.787868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081427, 16.277435, 8.988910>,  <10.577737, 16.374634, 9.427584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081427, 16.277435, 8.988910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378798, 16.170341, 8.743754>,  <10.557221, 16.106085, 8.596662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.378798, 16.170341, 8.743754>,  <10.081427, 16.277435, 8.988910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.378798, 16.170341, 8.743754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569645, -0.733652, -0.370486,
		-0.350455, 0.624558, -0.697932,
		0.743429, -0.267735, -0.612888,
		10.601828, 16.090021, 8.559888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851983, 16.196054, 8.302979>,  <10.081427, 16.277435, 8.988910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851983, 16.196054, 8.302979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.155744, 15.938217, 8.338336>,  <10.337999, 15.783515, 8.359550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.155744, 15.938217, 8.338336>,  <9.851983, 16.196054, 8.302979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.155744, 15.938217, 8.338336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526079, -0.688277, -0.499515,
		0.382821, 0.332831, -0.861784,
		0.759401, -0.644591, 0.088391,
		10.383564, 15.744840, 8.364853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925679, 15.805227, 7.640316>,  <9.851983, 16.196054, 8.302979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925679, 15.805227, 7.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026872, 15.649071, 7.994400>,  <10.087587, 15.555377, 8.206850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026872, 15.649071, 7.994400>,  <9.925679, 15.805227, 7.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026872, 15.649071, 7.994400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487149, -0.841918, -0.232078,
		0.835875, -0.372517, -0.403168,
		0.252981, -0.390391, 0.885209,
		10.102766, 15.531954, 8.259963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.240211, 15.122960, 7.668056>,  <9.925679, 15.805227, 7.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.240211, 15.122960, 7.668056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003867, 15.177876, 7.986058>,  <9.862061, 15.210825, 8.176860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003867, 15.177876, 7.986058>,  <10.240211, 15.122960, 7.668056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.003867, 15.177876, 7.986058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566927, -0.771755, -0.288076,
		0.574000, -0.620923, 0.533834,
		-0.590862, 0.137290, 0.795006,
		9.826609, 15.219063, 8.224560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.297576, 14.492846, 8.016331>,  <10.240211, 15.122960, 7.668056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.297576, 14.492846, 8.016331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954247, 14.696732, 8.039918>,  <9.748251, 14.819063, 8.054070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.954247, 14.696732, 8.039918>,  <10.297576, 14.492846, 8.016331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.954247, 14.696732, 8.039918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482182, -0.761937, -0.432380,
		-0.175459, -0.399555, 0.899761,
		-0.858320, 0.509714, 0.058969,
		9.696752, 14.849646, 8.057609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.794588, 14.028769, 8.041833>,  <10.297576, 14.492846, 8.016331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.794588, 14.028769, 8.041833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.584437, 14.329697, 7.882837>,  <9.458347, 14.510253, 7.787440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.584437, 14.329697, 7.882837>,  <9.794588, 14.028769, 8.041833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.584437, 14.329697, 7.882837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271533, -0.590972, -0.759620,
		-0.806381, -0.291155, 0.514762,
		-0.525376, 0.752317, -0.397491,
		9.426825, 14.555391, 7.763590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.111279, 13.784461, 8.064888>,  <9.794588, 14.028769, 8.041833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.111279, 13.784461, 8.064888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.172355, 14.058182, 7.779675>,  <9.209001, 14.222414, 7.608546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.172355, 14.058182, 7.779675>,  <9.111279, 13.784461, 8.064888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.172355, 14.058182, 7.779675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318137, -0.649055, -0.691025,
		-0.935668, 0.332355, 0.118598,
		0.152689, 0.684301, -0.713035,
		9.218162, 14.263472, 7.565764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.616050, 13.751081, 7.528759>,  <9.111279, 13.784461, 8.064888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.616050, 13.751081, 7.528759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.902699, 13.967205, 7.352345>,  <9.074690, 14.096880, 7.246497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.902699, 13.967205, 7.352345>,  <8.616050, 13.751081, 7.528759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.902699, 13.967205, 7.352345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065786, -0.577161, -0.813976,
		-0.694349, 0.612330, -0.378063,
		0.716625, 0.540312, -0.441034,
		9.117687, 14.129299, 7.220035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.338083, 13.990771, 6.831343>,  <8.616050, 13.751081, 7.528759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.338083, 13.990771, 6.831343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.735311, 13.953018, 6.859362>,  <8.973647, 13.930367, 6.876173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.735311, 13.953018, 6.859362>,  <8.338083, 13.990771, 6.831343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.735311, 13.953018, 6.859362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003408, -0.572593, -0.819833,
		0.117485, 0.814389, -0.568303,
		0.993069, -0.094382, 0.070046,
		9.033231, 13.924704, 6.880375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.920665, 14.604528, 6.718465>,  <8.338083, 13.990771, 6.831343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.920665, 14.604528, 6.718465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.845796, 14.242725, 6.871740>,  <7.800874, 14.025643, 6.963706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.845796, 14.242725, 6.871740>,  <7.920665, 14.604528, 6.718465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.845796, 14.242725, 6.871740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940952, -0.277104, -0.194478,
		0.282090, 0.324160, 0.902965,
		-0.187174, -0.904507, 0.383187,
		7.789644, 13.971374, 6.986697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.383428, 14.092627, 6.687597>,  <7.920665, 14.604528, 6.718465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.383428, 14.092627, 6.687597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.151933, 13.766712, 6.701379>,  <7.013035, 13.571164, 6.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.151933, 13.766712, 6.701379>,  <7.383428, 14.092627, 6.687597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.151933, 13.766712, 6.701379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702928, -0.476975, 0.527624,
		-0.413466, 0.329575, 0.848779,
		-0.578738, -0.814785, 0.034454,
		6.978311, 13.522277, 6.711715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.317508, 13.772428, 7.409835>,  <7.383428, 14.092627, 6.687597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.317508, 13.772428, 7.409835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.287210, 13.498699, 7.119740>,  <7.269030, 13.334462, 6.945683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.287210, 13.498699, 7.119740>,  <7.317508, 13.772428, 7.409835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.287210, 13.498699, 7.119740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869307, -0.401595, 0.288144,
		-0.488434, -0.608627, 0.625304,
		-0.075747, -0.684320, -0.725237,
		7.264485, 13.293403, 6.902169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.262646, 13.083557, 7.667346>,  <7.317508, 13.772428, 7.409835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.262646, 13.083557, 7.667346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.423812, 13.082493, 7.301253>,  <7.520512, 13.081855, 7.081597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.423812, 13.082493, 7.301253>,  <7.262646, 13.083557, 7.667346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.423812, 13.082493, 7.301253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843601, -0.386753, 0.372505,
		-0.354959, -0.922180, -0.153586,
		0.402917, -0.002659, -0.915233,
		7.544687, 13.081695, 7.026683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.577788, 13.118439, 8.372295>,  <7.262646, 13.083557, 7.667346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.577788, 13.118439, 8.372295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.553746, 12.719315, 8.361268>,  <7.539321, 12.479840, 8.354651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.553746, 12.719315, 8.361268>,  <7.577788, 13.118439, 8.372295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.553746, 12.719315, 8.361268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985696, -0.063685, 0.156034,
		-0.157448, -0.017796, 0.987367,
		-0.060104, -0.997811, -0.027569,
		7.535715, 12.419971, 8.352998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.871532, 12.859403, 8.959742>,  <7.577788, 13.118439, 8.372295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.871532, 12.859403, 8.959742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.898892, 12.554268, 8.702557>,  <7.915308, 12.371187, 8.548245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.898892, 12.554268, 8.702557>,  <7.871532, 12.859403, 8.959742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.898892, 12.554268, 8.702557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959488, -0.126262, 0.251876,
		-0.273322, -0.634142, 0.723297,
		0.068400, -0.762838, -0.642962,
		7.919413, 12.325417, 8.509668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.043412, 12.149738, 9.334886>,  <7.871532, 12.859403, 8.959742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.043412, 12.149738, 9.334886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.182927, 12.168396, 8.960469>,  <8.266636, 12.179590, 8.735820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.182927, 12.168396, 8.960469>,  <8.043412, 12.149738, 9.334886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.182927, 12.168396, 8.960469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922866, -0.191111, 0.334356,
		-0.163292, -0.980459, -0.109704,
		0.348788, 0.046645, -0.936040,
		8.287563, 12.182389, 8.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.638736, 11.650365, 9.248673>,  <8.043412, 12.149738, 9.334886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.638736, 11.650365, 9.248673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.574450, 11.999722, 9.064778>,  <8.535879, 12.209335, 8.954441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.574450, 11.999722, 9.064778>,  <8.638736, 11.650365, 9.248673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.574450, 11.999722, 9.064778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891451, 0.328381, 0.312218,
		0.423657, -0.359657, -0.831361,
		-0.160712, 0.873391, -0.459738,
		8.526237, 12.261739, 8.926857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.361676, 11.918800, 8.946766>,  <8.638736, 11.650365, 9.248673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.361676, 11.918800, 8.946766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090167, 12.212368, 8.956798>,  <8.927261, 12.388509, 8.962816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.090167, 12.212368, 8.956798>,  <9.361676, 11.918800, 8.946766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.090167, 12.212368, 8.956798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733505, 0.675961, 0.071047,
		0.035190, 0.066621, -0.997158,
		-0.678773, 0.733920, 0.025080,
		8.886536, 12.432544, 8.964321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.384003, 12.577246, 9.334149>,  <9.361676, 11.918800, 8.946766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.384003, 12.577246, 9.334149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596387, 12.851639, 9.135148>,  <9.723817, 13.016274, 9.015747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596387, 12.851639, 9.135148>,  <9.384003, 12.577246, 9.334149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596387, 12.851639, 9.135148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639012, -0.061467, -0.766737,
		-0.556548, 0.725017, 0.405714,
		0.530960, 0.685982, -0.497504,
		9.755675, 13.057433, 8.985897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.954125, 13.137185, 9.151139>,  <9.384003, 12.577246, 9.334149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.954125, 13.137185, 9.151139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247891, 13.046291, 8.895328>,  <9.424151, 12.991755, 8.741840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.247891, 13.046291, 8.895328>,  <8.954125, 13.137185, 9.151139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.247891, 13.046291, 8.895328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677366, -0.304438, -0.669696,
		-0.042519, 0.925031, -0.377505,
		0.734416, -0.227234, -0.639529,
		9.468216, 12.978121, 8.703469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.686737, 13.853263, 9.164876>,  <8.954125, 13.137185, 9.151139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.686737, 13.853263, 9.164876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314858, 13.959698, 9.063005>,  <8.091731, 14.023559, 9.001884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314858, 13.959698, 9.063005>,  <8.686737, 13.853263, 9.164876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314858, 13.959698, 9.063005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022607, 0.648918, 0.760523,
		0.367629, 0.712814, -0.597282,
		-0.929698, 0.266088, -0.254675,
		8.035949, 14.039524, 8.986603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.184419, 13.937567, 9.744604>,  <8.686737, 13.853263, 9.164876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.184419, 13.937567, 9.744604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.274125, 14.150394, 10.071188>,  <9.327949, 14.278091, 10.267138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.274125, 14.150394, 10.071188>,  <9.184419, 13.937567, 9.744604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.274125, 14.150394, 10.071188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320713, -0.831428, 0.453730,
		0.920243, 0.160094, -0.357102,
		0.224266, 0.532069, 0.816460,
		9.341405, 14.310015, 10.316126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928890, 14.131045, 9.984907>,  <9.184419, 13.937567, 9.744604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928890, 14.131045, 9.984907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677985, 14.097866, 10.294659>,  <9.527442, 14.077958, 10.480510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.677985, 14.097866, 10.294659>,  <9.928890, 14.131045, 9.984907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.677985, 14.097866, 10.294659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528263, -0.775924, 0.344790,
		0.572259, 0.625349, 0.530526,
		-0.627262, -0.082948, 0.774378,
		9.489806, 14.072982, 10.526972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.389062, 13.852484, 10.446437>,  <9.928890, 14.131045, 9.984907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.389062, 13.852484, 10.446437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033584, 13.755779, 10.602267>,  <9.820296, 13.697757, 10.695765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.033584, 13.755779, 10.602267>,  <10.389062, 13.852484, 10.446437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.033584, 13.755779, 10.602267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377946, -0.867307, 0.323936,
		0.259567, 0.435120, 0.862146,
		-0.888697, -0.241762, 0.389576,
		9.766974, 13.683250, 10.719140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.754246, 13.825934, 9.722147>,  <10.389062, 13.852484, 10.446437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.754246, 13.825934, 9.722147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831365, 13.520607, 9.475513>,  <10.877636, 13.337411, 9.327534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.831365, 13.520607, 9.475513>,  <10.754246, 13.825934, 9.722147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.831365, 13.520607, 9.475513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868043, -0.160315, 0.469894,
		-0.457526, -0.625815, 0.631685,
		0.192798, -0.763318, -0.616583,
		10.889204, 13.291612, 9.290539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098031, 13.234602, 10.163598>,  <10.754246, 13.825934, 9.722147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098031, 13.234602, 10.163598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.191943, 13.170410, 9.780114>,  <11.248291, 13.131895, 9.550024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.191943, 13.170410, 9.780114>,  <11.098031, 13.234602, 10.163598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.191943, 13.170410, 9.780114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934277, -0.235008, 0.268136,
		-0.268335, -0.958654, 0.094756,
		0.234781, -0.160479, -0.958710,
		11.262378, 13.122267, 9.492501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.414972, 12.488173, 10.057795>,  <11.098031, 13.234602, 10.163598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.414972, 12.488173, 10.057795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.555505, 12.751980, 9.791982>,  <11.639824, 12.910264, 9.632494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.555505, 12.751980, 9.791982>,  <11.414972, 12.488173, 10.057795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.555505, 12.751980, 9.791982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925242, -0.136045, 0.354146,
		0.143159, -0.739276, -0.658010,
		0.351330, 0.659517, -0.664533,
		11.660904, 12.949835, 9.592622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016627, 12.255328, 9.568466>,  <11.414972, 12.488173, 10.057795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016627, 12.255328, 9.568466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020347, 12.640038, 9.677940>,  <12.022578, 12.870863, 9.743625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020347, 12.640038, 9.677940>,  <12.016627, 12.255328, 9.568466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020347, 12.640038, 9.677940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897397, -0.128766, 0.422017,
		0.441126, 0.241681, -0.864291,
		0.009298, 0.961774, 0.273685,
		12.023136, 12.928570, 9.760046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.223406, 17.756567, 17.790602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.449562, 18.085136, 17.760675>,  <18.585255, 18.282278, 17.742720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.449562, 18.085136, 17.760675>,  <18.223406, 17.756567, 17.790602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449562, 18.085136, 17.760675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075632, -0.038692, -0.996385,
		-0.821350, 0.569003, 0.040250,
		0.565389, 0.821424, -0.074815,
		18.619179, 18.331564, 17.738232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826281, 18.331139, 17.432632>,  <18.223406, 17.756567, 17.790602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826281, 18.331139, 17.432632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.211655, 18.420559, 17.373545>,  <18.442879, 18.474211, 17.338091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.211655, 18.420559, 17.373545>,  <17.826281, 18.331139, 17.432632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211655, 18.420559, 17.373545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158547, 0.031175, -0.986859,
		-0.216009, 0.974193, 0.065478,
		0.963433, 0.223551, -0.147722,
		18.500685, 18.487625, 17.329227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822754, 18.779045, 16.943243>,  <17.826281, 18.331139, 17.432632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822754, 18.779045, 16.943243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.208481, 18.678371, 16.910389>,  <18.439917, 18.617968, 16.890676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.208481, 18.678371, 16.910389>,  <17.822754, 18.779045, 16.943243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208481, 18.678371, 16.910389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084330, 0.002073, -0.996436,
		0.250959, 0.967807, -0.019226,
		0.964317, -0.251686, -0.082135,
		18.497776, 18.602865, 16.885748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.989250, 19.073309, 16.256220>,  <17.822754, 18.779045, 16.943243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.989250, 19.073309, 16.256220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.310757, 18.838730, 16.296289>,  <18.503660, 18.697983, 16.320332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.310757, 18.838730, 16.296289>,  <17.989250, 19.073309, 16.256220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310757, 18.838730, 16.296289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100740, -0.031789, -0.994405,
		0.586352, 0.809362, 0.033529,
		0.803768, -0.586449, 0.100175,
		18.551888, 18.662794, 16.326342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485275, 19.350969, 15.866223>,  <17.989250, 19.073309, 16.256220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485275, 19.350969, 15.866223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.573280, 18.963165, 15.909389>,  <18.626083, 18.730484, 15.935289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.573280, 18.963165, 15.909389>,  <18.485275, 19.350969, 15.866223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573280, 18.963165, 15.909389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084218, -0.091335, -0.992253,
		0.971854, 0.227398, 0.061555,
		0.220014, -0.969509, 0.107915,
		18.639284, 18.672312, 15.941764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910730, 19.274931, 15.312485>,  <18.485275, 19.350969, 15.866223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910730, 19.274931, 15.312485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.787872, 18.907730, 15.412832>,  <18.714157, 18.687410, 15.473041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.787872, 18.907730, 15.412832>,  <18.910730, 19.274931, 15.312485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787872, 18.907730, 15.412832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376086, -0.125066, -0.918106,
		0.874198, -0.376338, -0.306834,
		-0.307144, -0.918002, 0.250868,
		18.695728, 18.632330, 15.488092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069679, 18.859890, 14.700106>,  <18.910730, 19.274931, 15.312485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069679, 18.859890, 14.700106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.797817, 18.636639, 14.890499>,  <18.634701, 18.502687, 15.004735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.797817, 18.636639, 14.890499>,  <19.069679, 18.859890, 14.700106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.797817, 18.636639, 14.890499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492936, -0.133020, -0.859837,
		0.543217, -0.819021, -0.184715,
		-0.679654, -0.558131, 0.475984,
		18.593922, 18.469200, 15.033295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009581, 18.185429, 14.321702>,  <19.069679, 18.859890, 14.700106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009581, 18.185429, 14.321702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.668877, 18.251396, 14.520622>,  <18.464455, 18.290977, 14.639975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.668877, 18.251396, 14.520622>,  <19.009581, 18.185429, 14.321702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668877, 18.251396, 14.520622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518838, -0.133446, -0.844393,
		-0.072895, -0.977238, 0.199231,
		-0.851759, 0.164921, 0.497301,
		18.413349, 18.300873, 14.669812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507542, 17.745014, 13.970263>,  <19.009581, 18.185429, 14.321702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507542, 17.745014, 13.970263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.285954, 18.002071, 14.181971>,  <18.153000, 18.156305, 14.308995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.285954, 18.002071, 14.181971>,  <18.507542, 17.745014, 13.970263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285954, 18.002071, 14.181971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681819, 0.014606, -0.731375,
		-0.477743, -0.766028, 0.430074,
		-0.553972, 0.642642, 0.529270,
		18.119762, 18.194864, 14.340752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.859018, 17.455528, 13.965197>,  <18.507542, 17.745014, 13.970263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.859018, 17.455528, 13.965197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.795395, 17.841419, 14.049105>,  <17.757221, 18.072954, 14.099449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.795395, 17.841419, 14.049105>,  <17.859018, 17.455528, 13.965197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795395, 17.841419, 14.049105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697824, 0.040443, -0.715126,
		-0.698385, -0.260129, 0.666777,
		-0.159059, 0.964726, 0.209769,
		17.747677, 18.130836, 14.112036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.124094, 17.522781, 14.071343>,  <17.859018, 17.455528, 13.965197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.124094, 17.522781, 14.071343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.253693, 17.891266, 13.985182>,  <17.331451, 18.112356, 13.933485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.253693, 17.891266, 13.985182>,  <17.124094, 17.522781, 14.071343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253693, 17.891266, 13.985182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797554, 0.143498, -0.585932,
		-0.508856, 0.361636, 0.781207,
		0.323996, 0.921210, -0.215405,
		17.350891, 18.167629, 13.920561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531765, 17.896580, 14.138579>,  <17.124094, 17.522781, 14.071343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531765, 17.896580, 14.138579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.780739, 18.126019, 13.925577>,  <16.930122, 18.263681, 13.797776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.780739, 18.126019, 13.925577>,  <16.531765, 17.896580, 14.138579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780739, 18.126019, 13.925577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668518, 0.035820, -0.742833,
		-0.407014, 0.818353, 0.405757,
		0.622434, 0.573599, -0.532504,
		16.967468, 18.298098, 13.765826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121391, 18.309141, 13.704610>,  <16.531765, 17.896580, 14.138579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121391, 18.309141, 13.704610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.473904, 18.319675, 13.515865>,  <16.685411, 18.325996, 13.402618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.473904, 18.319675, 13.515865>,  <16.121391, 18.309141, 13.704610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473904, 18.319675, 13.515865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470549, -0.043947, -0.881279,
		-0.043947, 0.998687, -0.026337,
		0.881279, 0.026337, -0.471862,
		16.738287, 18.327576, 13.374307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071609, 18.826664, 13.164783>,  <16.121391, 18.309141, 13.704610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071609, 18.826664, 13.164783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.362194, 18.580662, 13.042130>,  <16.536545, 18.433060, 12.968538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.362194, 18.580662, 13.042130>,  <16.071609, 18.826664, 13.164783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362194, 18.580662, 13.042130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488046, -0.147586, -0.860250,
		0.483803, 0.774589, -0.407366,
		0.726462, -0.615005, -0.306632,
		16.580133, 18.396160, 12.950140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200403, 18.972486, 12.372086>,  <16.071609, 18.826664, 13.164783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200403, 18.972486, 12.372086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371799, 18.617870, 12.441873>,  <16.474638, 18.405100, 12.483745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371799, 18.617870, 12.441873>,  <16.200403, 18.972486, 12.372086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371799, 18.617870, 12.441873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255520, -0.304106, -0.917730,
		0.866662, 0.348661, -0.356837,
		0.428493, -0.886541, 0.174467,
		16.500347, 18.351908, 12.494213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594725, 18.853029, 11.764603>,  <16.200403, 18.972486, 12.372086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594725, 18.853029, 11.764603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.486870, 18.506062, 11.931878>,  <16.422157, 18.297880, 12.032243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.486870, 18.506062, 11.931878>,  <16.594725, 18.853029, 11.764603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486870, 18.506062, 11.931878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382570, -0.302036, -0.873164,
		0.883706, -0.395423, -0.250408,
		-0.269636, -0.867419, 0.418188,
		16.405979, 18.245836, 12.057335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.531549, 18.497971, 11.208344>,  <16.594725, 18.853029, 11.764603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.531549, 18.497971, 11.208344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371998, 18.254719, 11.482884>,  <16.276266, 18.108768, 11.647609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.371998, 18.254719, 11.482884>,  <16.531549, 18.497971, 11.208344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371998, 18.254719, 11.482884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663991, -0.324688, -0.673568,
		0.632465, -0.724402, -0.274280,
		-0.398879, -0.608127, 0.686350,
		16.252335, 18.072281, 11.688789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753218, 17.827702, 10.992853>,  <16.531549, 18.497971, 11.208344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753218, 17.827702, 10.992853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.424583, 17.845047, 11.220226>,  <16.227402, 17.855455, 11.356650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.424583, 17.845047, 11.220226>,  <16.753218, 17.827702, 10.992853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424583, 17.845047, 11.220226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504070, -0.521007, -0.688814,
		0.266287, -0.852450, 0.449911,
		-0.821587, 0.043365, 0.568432,
		16.178108, 17.858057, 11.390756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483675, 17.106377, 10.942992>,  <16.753218, 17.827702, 10.992853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483675, 17.106377, 10.942992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.159203, 17.319534, 11.039335>,  <15.964520, 17.447428, 11.097141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.159203, 17.319534, 11.039335>,  <16.483675, 17.106377, 10.942992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159203, 17.319534, 11.039335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506106, -0.433365, -0.745689,
		-0.292993, -0.726787, 0.621237,
		-0.811180, 0.532893, 0.240858,
		15.915849, 17.479403, 11.111593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853340, 16.723745, 10.908421>,  <16.483675, 17.106377, 10.942992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853340, 16.723745, 10.908421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671784, 17.080135, 10.913245>,  <15.562851, 17.293970, 10.916140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671784, 17.080135, 10.913245>,  <15.853340, 16.723745, 10.908421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671784, 17.080135, 10.913245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572186, -0.281059, -0.770460,
		-0.683073, -0.356604, 0.637374,
		-0.453889, 0.890977, 0.012060,
		15.535618, 17.347427, 10.916863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121888, 16.530596, 10.952396>,  <15.853340, 16.723745, 10.908421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121888, 16.530596, 10.952396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.136174, 16.911900, 10.832383>,  <15.144746, 17.140682, 10.760375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.136174, 16.911900, 10.832383>,  <15.121888, 16.530596, 10.952396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136174, 16.911900, 10.832383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727461, -0.181053, -0.661831,
		-0.685219, 0.241899, 0.686994,
		0.035714, 0.953260, -0.300033,
		15.146889, 17.197878, 10.742373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451278, 16.723063, 10.789994>,  <15.121888, 16.530596, 10.952396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451278, 16.723063, 10.789994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.698646, 16.961216, 10.584829>,  <14.847066, 17.104107, 10.461731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.698646, 16.961216, 10.584829>,  <14.451278, 16.723063, 10.789994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698646, 16.961216, 10.584829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476699, -0.234674, -0.847164,
		-0.624752, 0.768407, 0.138691,
		0.618420, 0.595381, -0.512912,
		14.884171, 17.139830, 10.430956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101928, 17.319212, 10.761683>,  <14.451278, 16.723063, 10.789994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101928, 17.319212, 10.761683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856532, 17.010048, 10.696882>,  <13.709294, 16.824551, 10.658002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.856532, 17.010048, 10.696882>,  <14.101928, 17.319212, 10.761683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856532, 17.010048, 10.696882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053840, -0.163727, 0.985035,
		-0.787866, 0.613030, 0.058831,
		-0.613489, -0.772908, -0.162000,
		13.672485, 16.778175, 10.648282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558101, 17.384199, 11.276642>,  <14.101928, 17.319212, 10.761683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558101, 17.384199, 11.276642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.555823, 16.997490, 11.174414>,  <13.554457, 16.765465, 11.113077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.555823, 16.997490, 11.174414>,  <13.558101, 17.384199, 11.276642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555823, 16.997490, 11.174414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034362, -0.255234, 0.966269,
		-0.999393, 0.014283, -0.031767,
		-0.005693, -0.966774, -0.255570,
		13.554115, 16.707458, 11.097743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007705, 17.167473, 11.611290>,  <13.558101, 17.384199, 11.276642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007705, 17.167473, 11.611290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.230554, 16.845272, 11.530509>,  <13.364263, 16.651953, 11.482040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.230554, 16.845272, 11.530509>,  <13.007705, 17.167473, 11.611290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.230554, 16.845272, 11.530509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120755, -0.319185, 0.939968,
		-0.821604, -0.499289, -0.275093,
		0.557122, -0.805501, -0.201953,
		13.397690, 16.603622, 11.469923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693492, 16.591919, 12.007193>,  <13.007705, 17.167473, 11.611290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693492, 16.591919, 12.007193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064958, 16.482944, 11.906505>,  <13.287837, 16.417561, 11.846092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.064958, 16.482944, 11.906505>,  <12.693492, 16.591919, 12.007193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064958, 16.482944, 11.906505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140093, -0.370750, 0.918106,
		-0.343445, -0.887877, -0.306137,
		0.928666, -0.272431, -0.251718,
		13.343556, 16.401213, 11.830989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805922, 15.831773, 12.212290>,  <12.693492, 16.591919, 12.007193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805922, 15.831773, 12.212290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.174626, 15.984329, 12.184302>,  <13.395849, 16.075863, 12.167510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.174626, 15.984329, 12.184302>,  <12.805922, 15.831773, 12.212290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.174626, 15.984329, 12.184302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265297, -0.488700, 0.831137,
		0.282795, -0.784673, -0.551647,
		0.921762, 0.381392, -0.069969,
		13.451155, 16.098747, 12.163312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304726, 15.315115, 12.308558>,  <12.805922, 15.831773, 12.212290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304726, 15.315115, 12.308558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523313, 15.640701, 12.387383>,  <13.654465, 15.836053, 12.434677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.523313, 15.640701, 12.387383>,  <13.304726, 15.315115, 12.308558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523313, 15.640701, 12.387383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305542, -0.412858, 0.858017,
		0.779754, -0.408668, -0.474314,
		0.546468, 0.813965, 0.197063,
		13.687253, 15.884891, 12.446502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991993, 15.083790, 12.598321>,  <13.304726, 15.315115, 12.308558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991993, 15.083790, 12.598321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.942851, 15.467392, 12.700470>,  <13.913365, 15.697554, 12.761760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.942851, 15.467392, 12.700470>,  <13.991993, 15.083790, 12.598321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.942851, 15.467392, 12.700470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289049, -0.211589, 0.933638,
		0.949398, 0.188518, -0.251205,
		-0.122855, 0.959005, 0.255374,
		13.905994, 15.755094, 12.777082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.580448, 15.188140, 13.034052>,  <13.991993, 15.083790, 12.598321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.580448, 15.188140, 13.034052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.362350, 15.515434, 13.106930>,  <14.231490, 15.711811, 13.150657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.362350, 15.515434, 13.106930>,  <14.580448, 15.188140, 13.034052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362350, 15.515434, 13.106930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383070, 0.049884, 0.922371,
		0.745630, 0.572713, -0.340641,
		-0.545246, 0.818237, 0.182194,
		14.198775, 15.760905, 13.161588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.083336, 15.630674, 13.327699>,  <14.580448, 15.188140, 13.034052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.083336, 15.630674, 13.327699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.716907, 15.759205, 13.423664>,  <14.497048, 15.836323, 13.481243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.716907, 15.759205, 13.423664>,  <15.083336, 15.630674, 13.327699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.716907, 15.759205, 13.423664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344061, 0.322484, 0.881831,
		0.205986, 0.890367, -0.405975,
		-0.916074, 0.321325, 0.239914,
		14.442084, 15.855602, 13.495638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259724, 16.395603, 13.585217>,  <15.083336, 15.630674, 13.327699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259724, 16.395603, 13.585217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.912894, 16.272408, 13.741844>,  <14.704797, 16.198490, 13.835820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.912894, 16.272408, 13.741844>,  <15.259724, 16.395603, 13.585217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912894, 16.272408, 13.741844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332094, 0.228541, 0.915141,
		-0.371344, 0.923532, -0.095880,
		-0.867074, -0.307991, 0.391566,
		14.652772, 16.180010, 13.859314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189231, 16.881025, 13.977960>,  <15.259724, 16.395603, 13.585217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189231, 16.881025, 13.977960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.946193, 16.593910, 14.113964>,  <14.800369, 16.421640, 14.195567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.946193, 16.593910, 14.113964>,  <15.189231, 16.881025, 13.977960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946193, 16.593910, 14.113964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310227, 0.179611, 0.933541,
		-0.731154, 0.672697, 0.113546,
		-0.607596, -0.717788, 0.340012,
		14.763914, 16.378574, 14.215967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981817, 17.201334, 14.543208>,  <15.189231, 16.881025, 13.977960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981817, 17.201334, 14.543208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.913476, 16.810425, 14.593401>,  <14.872471, 16.575880, 14.623516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.913476, 16.810425, 14.593401>,  <14.981817, 17.201334, 14.543208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913476, 16.810425, 14.593401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349965, 0.058859, 0.934912,
		-0.921050, 0.203648, 0.331955,
		-0.170854, -0.977273, 0.125481,
		14.862220, 16.517242, 14.631045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525510, 17.030405, 15.178449>,  <14.981817, 17.201334, 14.543208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525510, 17.030405, 15.178449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.756722, 16.715141, 15.093891>,  <14.895450, 16.525984, 15.043157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.756722, 16.715141, 15.093891>,  <14.525510, 17.030405, 15.178449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.756722, 16.715141, 15.093891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232263, -0.089432, 0.968533,
		-0.782262, -0.608941, 0.131365,
		0.578031, -0.788157, -0.211394,
		14.930132, 16.478695, 15.030473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413360, 16.535561, 15.728234>,  <14.525510, 17.030405, 15.178449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413360, 16.535561, 15.728234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.758130, 16.417816, 15.563099>,  <14.964993, 16.347170, 15.464018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.758130, 16.417816, 15.563099>,  <14.413360, 16.535561, 15.728234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758130, 16.417816, 15.563099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391388, -0.131358, 0.910802,
		-0.322335, -0.946623, 0.001989,
		0.861925, -0.294362, -0.412838,
		15.016707, 16.329508, 15.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554338, 15.994785, 16.091671>,  <14.413360, 16.535561, 15.728234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554338, 15.994785, 16.091671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.920684, 16.064671, 15.947077>,  <15.140491, 16.106602, 15.860320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.920684, 16.064671, 15.947077>,  <14.554338, 15.994785, 16.091671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920684, 16.064671, 15.947077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352555, 0.080807, 0.932296,
		0.192096, -0.981297, 0.012411,
		0.915862, 0.174715, -0.361484,
		15.195442, 16.117085, 15.838632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995010, 15.500957, 16.488201>,  <14.554338, 15.994785, 16.091671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995010, 15.500957, 16.488201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.239451, 15.781609, 16.341631>,  <15.386116, 15.950000, 16.253689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.239451, 15.781609, 16.341631>,  <14.995010, 15.500957, 16.488201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.239451, 15.781609, 16.341631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491606, 0.026401, 0.870418,
		0.620385, -0.712052, -0.328792,
		0.611102, 0.701631, -0.366428,
		15.422782, 15.992098, 16.231703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559687, 15.333128, 16.819254>,  <14.995010, 15.500957, 16.488201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559687, 15.333128, 16.819254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.656470, 15.699833, 16.692131>,  <15.714540, 15.919856, 16.615858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.656470, 15.699833, 16.692131>,  <15.559687, 15.333128, 16.819254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656470, 15.699833, 16.692131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496120, 0.164593, 0.852511,
		0.833859, -0.363943, -0.414999,
		0.241960, 0.916763, -0.317807,
		15.729058, 15.974862, 16.596788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243662, 15.399839, 17.033979>,  <15.559687, 15.333128, 16.819254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243662, 15.399839, 17.033979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.089817, 15.767357, 16.998451>,  <15.997510, 15.987867, 16.977135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.089817, 15.767357, 16.998451>,  <16.243662, 15.399839, 17.033979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089817, 15.767357, 16.998451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570007, 0.312085, 0.760062,
		0.726061, 0.241700, -0.643752,
		-0.384613, 0.918795, -0.088822,
		15.974433, 16.042995, 16.971804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.860691, 15.945339, 17.303528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.516323, 16.148823, 17.301401>,  <16.309702, 16.270912, 17.300125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.516323, 16.148823, 17.301401>,  <16.860691, 15.945339, 17.303528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516323, 16.148823, 17.301401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181598, 0.317058, 0.930858,
		0.475222, 0.800431, -0.365342,
		-0.860922, 0.508709, -0.005316,
		16.258047, 16.301435, 17.299807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.969988, 16.616970, 17.361979>,  <16.860691, 15.945339, 17.303528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.969988, 16.616970, 17.361979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.602524, 16.579819, 17.515568>,  <16.382046, 16.557528, 17.607721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.602524, 16.579819, 17.515568>,  <16.969988, 16.616970, 17.361979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602524, 16.579819, 17.515568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259201, 0.591778, 0.763292,
		-0.298120, 0.800733, -0.519569,
		-0.918662, -0.092880, 0.383971,
		16.326925, 16.551954, 17.630758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931417, 17.082745, 17.879967>,  <16.969988, 16.616970, 17.361979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931417, 17.082745, 17.879967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.581554, 16.907471, 17.962883>,  <16.371637, 16.802307, 18.012632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.581554, 16.907471, 17.962883>,  <16.931417, 17.082745, 17.879967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581554, 16.907471, 17.962883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002600, 0.423381, 0.905948,
		-0.484734, 0.792933, -0.369174,
		-0.874658, -0.438184, 0.207289,
		16.319157, 16.776016, 18.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537037, 17.689280, 18.062843>,  <16.931417, 17.082745, 17.879967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.537037, 17.689280, 18.062843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.396980, 17.354282, 18.230654>,  <16.312946, 17.153284, 18.331341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.396980, 17.354282, 18.230654>,  <16.537037, 17.689280, 18.062843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396980, 17.354282, 18.230654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148567, 0.392558, 0.907649,
		-0.924840, 0.380133, -0.013027,
		-0.350141, -0.837495, 0.419528,
		16.291939, 17.103033, 18.356512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.189283, 17.952358, 18.646143>,  <16.537037, 17.689280, 18.062843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.189283, 17.952358, 18.646143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.197281, 17.561440, 18.730518>,  <16.202080, 17.326889, 18.781143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.197281, 17.561440, 18.730518>,  <16.189283, 17.952358, 18.646143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197281, 17.561440, 18.730518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092094, 0.211882, 0.972947,
		-0.995550, -0.000027, 0.094239,
		0.019994, -0.977295, 0.210937,
		16.203279, 17.268251, 18.793798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658920, 17.834953, 19.136742>,  <16.189283, 17.952358, 18.646143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658920, 17.834953, 19.136742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.938540, 17.550415, 19.165895>,  <16.106314, 17.379692, 19.183388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.938540, 17.550415, 19.165895>,  <15.658920, 17.834953, 19.136742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938540, 17.550415, 19.165895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138604, 0.234788, 0.962114,
		-0.701510, -0.662465, 0.262725,
		0.699051, -0.711347, 0.072886,
		16.148256, 17.337011, 19.187761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.556163, 17.496321, 19.851271>,  <15.658920, 17.834953, 19.136742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.556163, 17.496321, 19.851271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.925229, 17.385555, 19.743933>,  <16.146669, 17.319096, 19.679531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.925229, 17.385555, 19.743933>,  <15.556163, 17.496321, 19.851271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925229, 17.385555, 19.743933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266579, -0.044747, 0.962774,
		-0.278613, -0.959853, 0.032533,
		0.922665, -0.276914, -0.268344,
		16.202028, 17.302481, 19.663429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791035, 17.024172, 20.251513>,  <15.556163, 17.496321, 19.851271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791035, 17.024172, 20.251513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.131142, 17.162289, 20.092607>,  <16.335205, 17.245159, 19.997265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.131142, 17.162289, 20.092607>,  <15.791035, 17.024172, 20.251513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131142, 17.162289, 20.092607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451373, -0.090085, 0.887777,
		0.270755, -0.934161, -0.232453,
		0.850267, 0.345293, -0.397264,
		16.386223, 17.265877, 19.973429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.297855, 16.619528, 20.552050>,  <15.791035, 17.024172, 20.251513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.297855, 16.619528, 20.552050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.473633, 16.962151, 20.443829>,  <16.579100, 17.167725, 20.378897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.473633, 16.962151, 20.443829>,  <16.297855, 16.619528, 20.552050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473633, 16.962151, 20.443829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382210, 0.094270, 0.919255,
		0.812899, -0.507369, -0.285958,
		0.439444, 0.856557, -0.270553,
		16.605467, 17.219118, 20.362663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952959, 16.588949, 20.836639>,  <16.297855, 16.619528, 20.552050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952959, 16.588949, 20.836639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.927666, 16.978729, 20.750427>,  <16.912491, 17.212597, 20.698700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.927666, 16.978729, 20.750427>,  <16.952959, 16.588949, 20.836639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927666, 16.978729, 20.750427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376350, 0.223298, 0.899166,
		0.924317, -0.024259, -0.380853,
		-0.063231, 0.974448, -0.215528,
		16.908697, 17.271063, 20.685768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546000, 16.903250, 21.073380>,  <16.952959, 16.588949, 20.836639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546000, 16.903250, 21.073380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.310051, 17.220917, 21.014936>,  <17.168482, 17.411516, 20.979870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.310051, 17.220917, 21.014936>,  <17.546000, 16.903250, 21.073380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310051, 17.220917, 21.014936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306609, 0.387669, 0.869312,
		0.747022, 0.467985, -0.472174,
		-0.589873, 0.794168, -0.146109,
		17.133089, 17.459167, 20.971104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008389, 17.523750, 21.343246>,  <17.546000, 16.903250, 21.073380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.008389, 17.523750, 21.343246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.630653, 17.655067, 21.351700>,  <17.404013, 17.733858, 21.356771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.630653, 17.655067, 21.351700>,  <18.008389, 17.523750, 21.343246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630653, 17.655067, 21.351700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164675, 0.416115, 0.894276,
		0.284790, 0.847981, -0.447016,
		-0.944339, 0.328293, 0.021136,
		17.347351, 17.753555, 21.358040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.036884, 18.258181, 21.630743>,  <18.008389, 17.523750, 21.343246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.036884, 18.258181, 21.630743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.667850, 18.115894, 21.690483>,  <17.446430, 18.030523, 21.726328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.667850, 18.115894, 21.690483>,  <18.036884, 18.258181, 21.630743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667850, 18.115894, 21.690483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049919, 0.493935, 0.868065,
		-0.382553, 0.793407, -0.473453,
		-0.922584, -0.355715, 0.149350,
		17.391075, 18.009180, 21.735289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621473, 18.893623, 21.771000>,  <18.036884, 18.258181, 21.630743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621473, 18.893623, 21.771000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.434601, 18.572517, 21.919220>,  <17.322477, 18.379854, 22.008152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.434601, 18.572517, 21.919220>,  <17.621473, 18.893623, 21.771000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434601, 18.572517, 21.919220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082971, 0.377443, 0.922308,
		-0.880259, 0.461632, -0.109729,
		-0.467183, -0.802766, 0.370549,
		17.294445, 18.331688, 22.030384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069614, 19.141916, 22.181126>,  <17.621473, 18.893623, 21.771000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069614, 19.141916, 22.181126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.140594, 18.770229, 22.310780>,  <17.183182, 18.547216, 22.388573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.140594, 18.770229, 22.310780>,  <17.069614, 19.141916, 22.181126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140594, 18.770229, 22.310780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129675, 0.348569, 0.928270,
		-0.975549, -0.122687, 0.182350,
		0.177448, -0.929219, 0.324136,
		17.193829, 18.491463, 22.408020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667274, 19.145109, 22.844446>,  <17.069614, 19.141916, 22.181126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667274, 19.145109, 22.844446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.893368, 18.815983, 22.868052>,  <17.029024, 18.618507, 22.882215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.893368, 18.815983, 22.868052>,  <16.667274, 19.145109, 22.844446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893368, 18.815983, 22.868052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035593, 0.095796, 0.994764,
		-0.824163, -0.560173, 0.083434,
		0.565233, -0.822818, 0.059014,
		17.062937, 18.569138, 22.885756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377865, 18.748432, 23.428392>,  <16.667274, 19.145109, 22.844446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377865, 18.748432, 23.428392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.742825, 18.591743, 23.380924>,  <16.961800, 18.497730, 23.352444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.742825, 18.591743, 23.380924>,  <16.377865, 18.748432, 23.428392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742825, 18.591743, 23.380924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170269, 0.099594, 0.980352,
		-0.372206, -0.914678, 0.157567,
		0.912398, -0.391722, -0.118672,
		17.016544, 18.474228, 23.345324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377932, 18.532263, 24.042538>,  <16.377865, 18.748432, 23.428392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377932, 18.532263, 24.042538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.756218, 18.540470, 23.912798>,  <16.983189, 18.545395, 23.834953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.756218, 18.540470, 23.912798>,  <16.377932, 18.532263, 24.042538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.756218, 18.540470, 23.912798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306770, 0.273182, 0.911737,
		0.107314, -0.961744, 0.252058,
		0.945715, 0.020518, -0.324350,
		17.039932, 18.546625, 23.815493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674471, 18.125048, 24.533474>,  <16.377932, 18.532263, 24.042538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.674471, 18.125048, 24.533474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.934628, 18.367371, 24.350176>,  <17.090721, 18.512764, 24.240196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.934628, 18.367371, 24.350176>,  <16.674471, 18.125048, 24.533474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934628, 18.367371, 24.350176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262179, 0.387164, 0.883949,
		0.712921, -0.695054, 0.092977,
		0.650389, 0.605809, -0.458246,
		17.129744, 18.549112, 24.212702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438210, 18.041794, 24.787724>,  <16.674471, 18.125048, 24.533474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438210, 18.041794, 24.787724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.401859, 18.405857, 24.626057>,  <17.380049, 18.624296, 24.529057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.401859, 18.405857, 24.626057>,  <17.438210, 18.041794, 24.787724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401859, 18.405857, 24.626057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493109, 0.393726, 0.775773,
		0.865208, -0.128797, -0.484589,
		-0.090878, 0.910160, -0.404166,
		17.374596, 18.678905, 24.504807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003229, 18.319117, 24.938686>,  <17.438210, 18.041794, 24.787724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003229, 18.319117, 24.938686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.789047, 18.647148, 24.857931>,  <17.660538, 18.843967, 24.809477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.789047, 18.647148, 24.857931>,  <18.003229, 18.319117, 24.938686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789047, 18.647148, 24.857931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312125, 0.414274, 0.854959,
		0.784771, 0.394777, -0.477792,
		-0.535455, 0.820078, -0.201890,
		17.628410, 18.893171, 24.797363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466307, 18.759502, 25.172426>,  <18.003229, 18.319117, 24.938686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466307, 18.759502, 25.172426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.114006, 18.948185, 25.155596>,  <17.902626, 19.061396, 25.145498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.114006, 18.948185, 25.155596>,  <18.466307, 18.759502, 25.172426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114006, 18.948185, 25.155596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152153, 0.365985, 0.918098,
		0.448474, 0.802213, -0.394113,
		-0.880750, 0.471709, -0.042075,
		17.849781, 19.089697, 25.142973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648754, 19.523540, 25.164661>,  <18.466307, 18.759502, 25.172426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648754, 19.523540, 25.164661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.288074, 19.414539, 25.298933>,  <18.071667, 19.349138, 25.379496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.288074, 19.414539, 25.298933>,  <18.648754, 19.523540, 25.164661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288074, 19.414539, 25.298933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281498, 0.219287, 0.934169,
		-0.328173, 0.936833, -0.121022,
		-0.901699, -0.272501, 0.335681,
		18.017565, 19.332788, 25.399637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349348, 20.076441, 25.583082>,  <18.648754, 19.523540, 25.164661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.349348, 20.076441, 25.583082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.242123, 19.710072, 25.702564>,  <18.177788, 19.490250, 25.774254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.242123, 19.710072, 25.702564>,  <18.349348, 20.076441, 25.583082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242123, 19.710072, 25.702564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509430, 0.128400, 0.850879,
		-0.817694, 0.380259, 0.432179,
		-0.268063, -0.915924, 0.298707,
		18.161703, 19.435295, 25.792177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769489, 20.751133, 25.573111>,  <18.349348, 20.076441, 25.583082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769489, 20.751133, 25.573111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.114834, 20.928757, 25.477259>,  <19.322041, 21.035332, 25.419748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.114834, 20.928757, 25.477259>,  <18.769489, 20.751133, 25.573111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.114834, 20.928757, 25.477259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248021, -0.040111, -0.967924,
		-0.439427, 0.895099, 0.075505,
		0.863360, 0.444059, -0.239629,
		19.373842, 21.061974, 25.405371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692074, 21.359125, 25.218517>,  <18.769489, 20.751133, 25.573111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692074, 21.359125, 25.218517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.034954, 21.204212, 25.082739>,  <19.240683, 21.111265, 25.001272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.034954, 21.204212, 25.082739>,  <18.692074, 21.359125, 25.218517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034954, 21.204212, 25.082739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347680, 0.051041, -0.936223,
		0.379908, 0.920548, -0.090897,
		0.857198, -0.387282, -0.339447,
		19.292114, 21.088028, 24.980906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819378, 21.798262, 24.580322>,  <18.692074, 21.359125, 25.218517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819378, 21.798262, 24.580322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.038559, 21.466888, 24.533941>,  <19.170067, 21.268064, 24.506113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.038559, 21.466888, 24.533941>,  <18.819378, 21.798262, 24.580322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.038559, 21.466888, 24.533941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200732, 0.004343, -0.979637,
		0.812069, 0.560068, -0.163914,
		0.547951, -0.828435, -0.115951,
		19.202944, 21.218357, 24.499157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093904, 21.887114, 23.896730>,  <18.819378, 21.798262, 24.580322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093904, 21.887114, 23.896730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.145699, 21.505409, 24.004520>,  <19.176775, 21.276386, 24.069195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.145699, 21.505409, 24.004520>,  <19.093904, 21.887114, 23.896730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145699, 21.505409, 24.004520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070241, -0.279908, -0.957454,
		0.989090, 0.105048, -0.103273,
		0.129486, -0.954262, 0.269476,
		19.184544, 21.219131, 24.085363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559650, 21.663372, 23.526562>,  <19.093904, 21.887114, 23.896730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559650, 21.663372, 23.526562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.349533, 21.339012, 23.629719>,  <19.223463, 21.144396, 23.691614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.349533, 21.339012, 23.629719>,  <19.559650, 21.663372, 23.526562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349533, 21.339012, 23.629719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063192, -0.339416, -0.938511,
		0.848571, -0.476698, 0.229536,
		-0.525295, -0.810898, 0.257895,
		19.191944, 21.095743, 23.707087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834696, 21.217939, 23.077791>,  <19.559650, 21.663372, 23.526562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834696, 21.217939, 23.077791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.506744, 21.046921, 23.230110>,  <19.309975, 20.944309, 23.321501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.506744, 21.046921, 23.230110>,  <19.834696, 21.217939, 23.077791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506744, 21.046921, 23.230110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269437, -0.298729, -0.915514,
		0.505178, -0.853209, 0.129724,
		-0.819877, -0.427545, 0.380797,
		19.260780, 20.918657, 23.344349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.938536, 20.675518, 22.745384>,  <19.834696, 21.217939, 23.077791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.938536, 20.675518, 22.745384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.560005, 20.668186, 22.874458>,  <19.332886, 20.663788, 22.951904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.560005, 20.668186, 22.874458>,  <19.938536, 20.675518, 22.745384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560005, 20.668186, 22.874458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272385, -0.492203, -0.826766,
		0.173982, -0.870287, 0.460793,
		-0.946328, -0.018329, 0.322688,
		19.276106, 20.662687, 22.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653036, 19.987913, 22.679417>,  <19.938536, 20.675518, 22.745384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653036, 19.987913, 22.679417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.331959, 20.226116, 22.666424>,  <19.139313, 20.369038, 22.658628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.331959, 20.226116, 22.666424>,  <19.653036, 19.987913, 22.679417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331959, 20.226116, 22.666424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308953, -0.461793, -0.831441,
		-0.510134, -0.657353, 0.554662,
		-0.802690, 0.595511, -0.032486,
		19.091152, 20.404770, 22.656679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088306, 19.451284, 22.633200>,  <19.653036, 19.987913, 22.679417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088306, 19.451284, 22.633200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.979214, 19.804440, 22.480295>,  <18.913757, 20.016333, 22.388554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.979214, 19.804440, 22.480295>,  <19.088306, 19.451284, 22.633200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.979214, 19.804440, 22.480295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256594, -0.449682, -0.855538,
		-0.927241, -0.135248, 0.349187,
		-0.272733, 0.882889, -0.382260,
		18.897394, 20.069305, 22.365618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417387, 19.339485, 22.268309>,  <19.088306, 19.451284, 22.633200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417387, 19.339485, 22.268309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.538837, 19.693008, 22.125933>,  <18.611708, 19.905123, 22.040506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.538837, 19.693008, 22.125933>,  <18.417387, 19.339485, 22.268309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538837, 19.693008, 22.125933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231282, -0.294036, -0.927390,
		-0.924294, 0.363904, 0.115131,
		0.303628, 0.883808, -0.355940,
		18.629925, 19.958151, 22.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944273, 19.549240, 21.850565>,  <18.417387, 19.339485, 22.268309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944273, 19.549240, 21.850565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.251961, 19.765503, 21.714334>,  <18.436573, 19.895260, 21.632597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.251961, 19.765503, 21.714334>,  <17.944273, 19.549240, 21.850565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251961, 19.765503, 21.714334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222590, -0.272889, -0.935941,
		-0.598961, 0.795753, -0.089567,
		0.769220, 0.540655, -0.340577,
		18.482727, 19.927700, 21.612162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763229, 19.689978, 21.248486>,  <17.944273, 19.549240, 21.850565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.763229, 19.689978, 21.248486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.160160, 19.731972, 21.222357>,  <18.398319, 19.757168, 21.206680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.160160, 19.731972, 21.222357>,  <17.763229, 19.689978, 21.248486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160160, 19.731972, 21.222357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020884, -0.378387, -0.925412,
		-0.121871, 0.919674, -0.373291,
		0.992326, 0.104985, -0.065321,
		18.457857, 19.763468, 21.202761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771255, 19.916851, 20.609901>,  <17.763229, 19.689978, 21.248486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771255, 19.916851, 20.609901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.151482, 19.817924, 20.685009>,  <18.379618, 19.758568, 20.730074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.151482, 19.817924, 20.685009>,  <17.771255, 19.916851, 20.609901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151482, 19.817924, 20.685009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138096, -0.204901, -0.968992,
		0.278123, 0.947021, -0.160619,
		0.950567, -0.247318, 0.187768,
		18.436651, 19.743729, 20.741339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111654, 20.214211, 20.073835>,  <17.771255, 19.916851, 20.609901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111654, 20.214211, 20.073835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.363937, 19.932205, 20.203554>,  <18.515306, 19.763002, 20.281385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.363937, 19.932205, 20.203554>,  <18.111654, 20.214211, 20.073835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363937, 19.932205, 20.203554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137655, -0.309628, -0.940841,
		0.763716, 0.638035, -0.098236,
		0.630706, -0.705012, 0.324297,
		18.553148, 19.720701, 20.300844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649977, 20.277704, 19.581083>,  <18.111654, 20.214211, 20.073835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649977, 20.277704, 19.581083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.655869, 19.919476, 19.758953>,  <18.659405, 19.704538, 19.865675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.655869, 19.919476, 19.758953>,  <18.649977, 20.277704, 19.581083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.655869, 19.919476, 19.758953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030540, -0.444114, -0.895450,
		0.999425, 0.026772, 0.020808,
		0.014732, -0.895570, 0.444677,
		18.660288, 19.650805, 19.892357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113020, 19.978283, 19.257902>,  <18.649977, 20.277704, 19.581083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113020, 19.978283, 19.257902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.911892, 19.668747, 19.411964>,  <18.791216, 19.483025, 19.504402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.911892, 19.668747, 19.411964>,  <19.113020, 19.978283, 19.257902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.911892, 19.668747, 19.411964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206471, -0.540206, -0.815811,
		0.839371, -0.330680, 0.431401,
		-0.502818, -0.773840, 0.385158,
		18.761047, 19.436596, 19.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524578, 19.375380, 19.179916>,  <19.113020, 19.978283, 19.257902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524578, 19.375380, 19.179916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.154026, 19.231567, 19.224749>,  <18.931696, 19.145281, 19.251648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.154026, 19.231567, 19.224749>,  <19.524578, 19.375380, 19.179916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154026, 19.231567, 19.224749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047537, -0.406871, -0.912248,
		0.373581, -0.839759, 0.394007,
		-0.926379, -0.359529, 0.112079,
		18.876112, 19.123709, 19.258373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563446, 18.626619, 19.038958>,  <19.524578, 19.375380, 19.179916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563446, 18.626619, 19.038958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.178539, 18.726536, 18.995789>,  <18.947596, 18.786486, 18.969887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.178539, 18.726536, 18.995789>,  <19.563446, 18.626619, 19.038958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178539, 18.726536, 18.995789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000722, -0.394274, -0.918992,
		-0.272107, -0.884394, 0.379217,
		-0.962267, 0.249791, -0.107923,
		18.889860, 18.801474, 18.963411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229588, 17.969429, 18.786495>,  <19.563446, 18.626619, 19.038958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229588, 17.969429, 18.786495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.976936, 18.259190, 18.676016>,  <18.825346, 18.433046, 18.609728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.976936, 18.259190, 18.676016>,  <19.229588, 17.969429, 18.786495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976936, 18.259190, 18.676016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029269, -0.378290, -0.925224,
		-0.774717, -0.576315, 0.260142,
		-0.631630, 0.724401, -0.276200,
		18.787447, 18.476509, 18.593157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.825081, 17.685204, 18.233479>,  <19.229588, 17.969429, 18.786495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.825081, 17.685204, 18.233479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.769604, 18.076454, 18.171465>,  <18.736317, 18.311205, 18.134256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.769604, 18.076454, 18.171465>,  <18.825081, 17.685204, 18.233479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.769604, 18.076454, 18.171465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039920, -0.150897, -0.987743,
		-0.989530, -0.143183, -0.018118,
		-0.138694, 0.978125, -0.155033,
		18.727995, 18.369892, 18.124954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.613794, 15.231842, 14.910913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.678412, 15.614014, 14.812075>,  <14.717183, 15.843317, 14.752771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.678412, 15.614014, 14.812075>,  <14.613794, 15.231842, 14.910913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.678412, 15.614014, 14.812075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576689, -0.111791, -0.809279,
		-0.800833, 0.273232, 0.532927,
		0.161545, 0.955430, -0.247096,
		14.726876, 15.900642, 14.737946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.057990, 15.406763, 14.688269>,  <14.613794, 15.231842, 14.910913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.057990, 15.406763, 14.688269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.292003, 15.690678, 14.531328>,  <14.432410, 15.861027, 14.437164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.292003, 15.690678, 14.531328>,  <14.057990, 15.406763, 14.688269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.292003, 15.690678, 14.531328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569836, 0.015514, -0.821612,
		-0.577083, 0.704246, 0.413538,
		0.585033, 0.709787, -0.392351,
		14.467512, 15.903614, 14.413623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568165, 15.847749, 14.433839>,  <14.057990, 15.406763, 14.688269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568165, 15.847749, 14.433839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.912890, 15.909462, 14.240562>,  <14.119726, 15.946489, 14.124597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.912890, 15.909462, 14.240562>,  <13.568165, 15.847749, 14.433839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912890, 15.909462, 14.240562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499942, 0.097521, -0.860551,
		-0.085646, 0.983202, 0.161177,
		0.861814, 0.154282, -0.483192,
		14.171434, 15.955747, 14.095605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275218, 16.258295, 13.952180>,  <13.568165, 15.847749, 14.433839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275218, 16.258295, 13.952180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.631637, 16.134754, 13.819126>,  <13.845488, 16.060629, 13.739294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.631637, 16.134754, 13.819126>,  <13.275218, 16.258295, 13.952180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631637, 16.134754, 13.819126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311514, 0.116911, -0.943022,
		0.330143, 0.943897, 0.007961,
		0.891047, -0.308852, -0.332634,
		13.898951, 16.042099, 13.719336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295550, 16.725180, 13.412484>,  <13.275218, 16.258295, 13.952180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295550, 16.725180, 13.412484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.595166, 16.472179, 13.333611>,  <13.774936, 16.320379, 13.286286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.595166, 16.472179, 13.333611>,  <13.295550, 16.725180, 13.412484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595166, 16.472179, 13.333611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085924, 0.202370, -0.975532,
		0.656929, 0.747656, 0.097237,
		0.749041, -0.632500, -0.197184,
		13.819879, 16.282429, 13.274455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951031, 17.006269, 13.126131>,  <13.295550, 16.725180, 13.412484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951031, 17.006269, 13.126131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.898616, 16.630089, 13.000668>,  <13.867167, 16.404381, 12.925389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.898616, 16.630089, 13.000668>,  <13.951031, 17.006269, 13.126131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.898616, 16.630089, 13.000668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064703, 0.307600, -0.949313,
		0.989264, -0.144689, 0.020543,
		-0.131036, -0.940451, -0.313659,
		13.859304, 16.347954, 12.906569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473620, 16.913166, 12.624092>,  <13.951031, 17.006269, 13.126131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473620, 16.913166, 12.624092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.212037, 16.615414, 12.570079>,  <14.055087, 16.436762, 12.537671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.212037, 16.615414, 12.570079>,  <14.473620, 16.913166, 12.624092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212037, 16.615414, 12.570079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082128, 0.107581, -0.990798,
		0.752059, -0.659031, -0.009219,
		-0.653959, -0.744382, -0.135032,
		14.015849, 16.392099, 12.529570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.665695, 16.561483, 12.011537>,  <14.473620, 16.913166, 12.624092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.665695, 16.561483, 12.011537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.290860, 16.429245, 12.056388>,  <14.065959, 16.349901, 12.083299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.290860, 16.429245, 12.056388>,  <14.665695, 16.561483, 12.011537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.290860, 16.429245, 12.056388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073107, -0.128230, -0.989046,
		0.341355, -0.935020, 0.095994,
		-0.937087, -0.330598, 0.112128,
		14.009734, 16.330065, 12.090027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566038, 16.135569, 11.496843>,  <14.665695, 16.561483, 12.011537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566038, 16.135569, 11.496843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.188943, 16.204399, 11.611130>,  <13.962686, 16.245697, 11.679702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.188943, 16.204399, 11.611130>,  <14.566038, 16.135569, 11.496843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188943, 16.204399, 11.611130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305030, -0.098318, -0.947254,
		-0.134908, -0.980165, 0.145176,
		-0.942739, 0.172075, 0.285716,
		13.906121, 16.256021, 11.696844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161501, 15.637338, 11.086392>,  <14.566038, 16.135569, 11.496843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161501, 15.637338, 11.086392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.939719, 15.953869, 11.189451>,  <13.806650, 16.143787, 11.251287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.939719, 15.953869, 11.189451>,  <14.161501, 15.637338, 11.086392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939719, 15.953869, 11.189451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278613, 0.115223, -0.953467,
		-0.784191, -0.600437, 0.156588,
		-0.554454, 0.791327, 0.257647,
		13.773383, 16.191267, 11.266746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.484015, 15.487686, 10.710297>,  <14.161501, 15.637338, 11.086392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.484015, 15.487686, 10.710297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.530374, 15.865299, 10.833824>,  <13.558189, 16.091867, 10.907941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.530374, 15.865299, 10.833824>,  <13.484015, 15.487686, 10.710297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530374, 15.865299, 10.833824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263809, 0.329003, -0.906731,
		-0.957587, 0.023619, 0.287176,
		0.115898, 0.944033, 0.308818,
		13.565143, 16.148510, 10.926470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921349, 15.703228, 10.347381>,  <13.484015, 15.487686, 10.710297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921349, 15.703228, 10.347381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.162278, 16.011913, 10.429029>,  <13.306836, 16.197124, 10.478018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.162278, 16.011913, 10.429029>,  <12.921349, 15.703228, 10.347381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.162278, 16.011913, 10.429029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156361, 0.364817, -0.917856,
		-0.782787, 0.520931, 0.340404,
		0.602325, 0.771712, 0.204120,
		13.342976, 16.243427, 10.490265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615335, 16.517870, 10.069847>,  <12.921349, 15.703228, 10.347381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615335, 16.517870, 10.069847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.002631, 16.417866, 10.068931>,  <13.235009, 16.357862, 10.068380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.002631, 16.417866, 10.068931>,  <12.615335, 16.517870, 10.069847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002631, 16.417866, 10.068931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043609, 0.177896, -0.983082,
		0.246188, 0.951760, 0.183149,
		0.968240, -0.250010, -0.002291,
		13.293103, 16.342863, 10.068243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986027, 17.245916, 9.821610>,  <12.615335, 16.517870, 10.069847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986027, 17.245916, 9.821610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.117574, 16.868790, 9.799927>,  <13.196502, 16.642513, 9.786917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.117574, 16.868790, 9.799927>,  <12.986027, 17.245916, 9.821610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.117574, 16.868790, 9.799927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011320, 0.053462, -0.998506,
		0.944308, 0.328991, 0.006910,
		0.328869, -0.942819, -0.054209,
		13.216234, 16.585943, 9.783664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308656, 17.003887, 9.651937>,  <12.986027, 17.245916, 9.821610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308656, 17.003887, 9.651937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.983582, 17.236275, 9.633964>,  <11.788538, 17.375708, 9.623180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<11.983582, 17.236275, 9.633964>,  <12.308656, 17.003887, 9.651937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983582, 17.236275, 9.633964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548239, 0.788464, 0.278851,
		0.197431, 0.201985, -0.959283,
		-0.812684, 0.580970, -0.044931,
		11.739778, 17.410566, 9.620484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458606, 17.545408, 9.246878>,  <12.308656, 17.003887, 9.651937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.458606, 17.545408, 9.246878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.170178, 17.644348, 9.505760>,  <11.997122, 17.703712, 9.661090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.170178, 17.644348, 9.505760>,  <12.458606, 17.545408, 9.246878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.170178, 17.644348, 9.505760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560646, 0.757151, 0.335259,
		-0.407107, 0.604599, -0.684634,
		-0.721069, 0.247351, 0.647207,
		11.953857, 17.718554, 9.699923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470496, 18.311850, 9.342688>,  <12.458606, 17.545408, 9.246878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470496, 18.311850, 9.342688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.275390, 18.191746, 9.670572>,  <12.158325, 18.119684, 9.867303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.275390, 18.191746, 9.670572>,  <12.470496, 18.311850, 9.342688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.275390, 18.191746, 9.670572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427315, 0.736682, 0.524119,
		-0.761239, 0.605923, -0.231024,
		-0.487767, -0.300260, 0.819712,
		12.129060, 18.101667, 9.916486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304911, 18.922876, 9.737461>,  <12.470496, 18.311850, 9.342688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304911, 18.922876, 9.737461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.272750, 18.638241, 10.016652>,  <12.253453, 18.467459, 10.184167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.272750, 18.638241, 10.016652>,  <12.304911, 18.922876, 9.737461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.272750, 18.638241, 10.016652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316094, 0.645900, 0.694909,
		-0.945315, 0.276498, 0.172998,
		-0.080402, -0.711591, 0.697978,
		12.248630, 18.424763, 10.226046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918806, 19.214148, 10.342717>,  <12.304911, 18.922876, 9.737461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918806, 19.214148, 10.342717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.124032, 18.893566, 10.465638>,  <12.247168, 18.701218, 10.539391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.124032, 18.893566, 10.465638>,  <11.918806, 19.214148, 10.342717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124032, 18.893566, 10.465638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288745, 0.498304, 0.817508,
		-0.808326, -0.330702, 0.487078,
		0.513064, -0.801455, 0.307304,
		12.277951, 18.653130, 10.557829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.703908, 19.116142, 11.023855>,  <11.918806, 19.214148, 10.342717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.703908, 19.116142, 11.023855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.038732, 18.898129, 11.004803>,  <12.239626, 18.767321, 10.993371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.038732, 18.898129, 11.004803>,  <11.703908, 19.116142, 11.023855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038732, 18.898129, 11.004803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293516, 0.373889, 0.879804,
		-0.461716, -0.750428, 0.472944,
		0.837058, -0.545036, -0.047632,
		12.289849, 18.734617, 10.990513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855145, 18.652452, 11.694086>,  <11.703908, 19.116142, 11.023855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855145, 18.652452, 11.694086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.206365, 18.689457, 11.506269>,  <12.417097, 18.711658, 11.393579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.206365, 18.689457, 11.506269>,  <11.855145, 18.652452, 11.694086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.206365, 18.689457, 11.506269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421777, 0.314001, 0.850592,
		0.226124, -0.944905, 0.236690,
		0.878050, 0.092509, -0.469542,
		12.469780, 18.717209, 11.365407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.300852, 18.412697, 12.131748>,  <11.855145, 18.652452, 11.694086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.300852, 18.412697, 12.131748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.515260, 18.647934, 11.889482>,  <12.643905, 18.789076, 11.744123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.515260, 18.647934, 11.889482>,  <12.300852, 18.412697, 12.131748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.515260, 18.647934, 11.889482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548449, 0.302824, 0.779424,
		0.641784, -0.749962, -0.160220,
		0.536020, 0.588094, -0.605664,
		12.676065, 18.824362, 11.707784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907763, 18.256884, 12.252621>,  <12.300852, 18.412697, 12.131748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907763, 18.256884, 12.252621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.935157, 18.619148, 12.085248>,  <12.951593, 18.836508, 11.984824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.935157, 18.619148, 12.085248>,  <12.907763, 18.256884, 12.252621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935157, 18.619148, 12.085248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477039, 0.338634, 0.811024,
		0.876209, -0.255152, -0.408845,
		0.068486, 0.905662, -0.418432,
		12.955703, 18.890846, 11.959719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540174, 18.493767, 12.441390>,  <12.907763, 18.256884, 12.252621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.540174, 18.493767, 12.441390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.373065, 18.842674, 12.339717>,  <13.272799, 19.052019, 12.278713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.373065, 18.842674, 12.339717>,  <13.540174, 18.493767, 12.441390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373065, 18.842674, 12.339717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298647, 0.396063, 0.868299,
		0.858065, 0.286841, -0.425966,
		-0.417773, 0.872271, -0.254183,
		13.247733, 19.104355, 12.263462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007289, 18.939625, 12.619042>,  <13.540174, 18.493767, 12.441390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007289, 18.939625, 12.619042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.672746, 19.158657, 12.608747>,  <13.472020, 19.290077, 12.602571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.672746, 19.158657, 12.608747>,  <14.007289, 18.939625, 12.619042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672746, 19.158657, 12.608747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302541, 0.500227, 0.811321,
		0.457139, 0.670767, -0.584034,
		-0.836357, 0.547581, -0.025738,
		13.421839, 19.322931, 12.601026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226034, 19.632463, 12.585089>,  <14.007289, 18.939625, 12.619042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226034, 19.632463, 12.585089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.851325, 19.638191, 12.724948>,  <13.626500, 19.641628, 12.808864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.851325, 19.638191, 12.724948>,  <14.226034, 19.632463, 12.585089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851325, 19.638191, 12.724948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333076, 0.342932, 0.878327,
		-0.107327, 0.939251, -0.326019,
		-0.936772, 0.014321, 0.349648,
		13.570293, 19.642487, 12.829843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075206, 20.295870, 12.873167>,  <14.226034, 19.632463, 12.585089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075206, 20.295870, 12.873167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.767953, 20.092373, 13.028681>,  <13.583601, 19.970274, 13.121989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.767953, 20.092373, 13.028681>,  <14.075206, 20.295870, 12.873167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767953, 20.092373, 13.028681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259929, 0.307153, 0.915474,
		-0.585159, 0.804261, -0.103697,
		-0.768131, -0.508745, 0.388784,
		13.537514, 19.939749, 13.145316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.745728, 20.772850, 13.322874>,  <14.075206, 20.295870, 12.873167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.745728, 20.772850, 13.322874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.677073, 20.392963, 13.427624>,  <13.635880, 20.165031, 13.490474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.677073, 20.392963, 13.427624>,  <13.745728, 20.772850, 13.322874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.677073, 20.392963, 13.427624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184249, 0.230184, 0.955546,
		-0.967777, 0.212258, 0.135476,
		-0.171637, -0.949717, 0.261875,
		13.625583, 20.108047, 13.506186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490274, 21.375137, 13.744017>,  <13.745728, 20.772850, 13.322874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490274, 21.375137, 13.744017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.815272, 21.585995, 13.644442>,  <14.010271, 21.712509, 13.584697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.815272, 21.585995, 13.644442>,  <13.490274, 21.375137, 13.744017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.815272, 21.585995, 13.644442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350675, 0.100822, -0.931054,
		-0.465701, 0.843774, 0.266774,
		0.812496, 0.527144, -0.248937,
		14.059021, 21.744139, 13.569760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292638, 21.705605, 13.132849>,  <13.490274, 21.375137, 13.744017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292638, 21.705605, 13.132849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.679736, 21.805489, 13.146181>,  <13.911995, 21.865419, 13.154181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.679736, 21.805489, 13.146181>,  <13.292638, 21.705605, 13.132849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.679736, 21.805489, 13.146181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022196, 0.216299, -0.976075,
		-0.250946, 0.943853, 0.214865,
		0.967747, 0.249712, 0.033330,
		13.970060, 21.880402, 13.156180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368922, 22.283833, 12.553057>,  <13.292638, 21.705605, 13.132849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368922, 22.283833, 12.553057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.721555, 22.116978, 12.641430>,  <13.933134, 22.016865, 12.694453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.721555, 22.116978, 12.641430>,  <13.368922, 22.283833, 12.553057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721555, 22.116978, 12.641430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215502, -0.060749, -0.974612,
		0.419969, 0.906810, 0.036339,
		0.881581, -0.417138, 0.220932,
		13.986029, 21.991837, 12.707709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821116, 22.667641, 12.147714>,  <13.368922, 22.283833, 12.553057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821116, 22.667641, 12.147714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.988008, 22.313602, 12.230206>,  <14.088142, 22.101179, 12.279702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.988008, 22.313602, 12.230206>,  <13.821116, 22.667641, 12.147714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.988008, 22.313602, 12.230206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101278, -0.180230, -0.978397,
		0.903141, 0.429100, 0.014444,
		0.417227, -0.885094, 0.206231,
		14.113175, 22.048075, 12.292076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367160, 22.576244, 11.632621>,  <13.821116, 22.667641, 12.147714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367160, 22.576244, 11.632621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.308949, 22.204453, 11.768203>,  <14.274023, 21.981377, 11.849552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.308949, 22.204453, 11.768203>,  <14.367160, 22.576244, 11.632621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308949, 22.204453, 11.768203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065013, -0.350845, -0.934174,
		0.987216, -0.113909, 0.111486,
		-0.145525, -0.929480, 0.338954,
		14.265292, 21.925608, 11.869889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831709, 22.203951, 11.173536>,  <14.367160, 22.576244, 11.632621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831709, 22.203951, 11.173536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.600490, 21.928360, 11.348429>,  <14.461758, 21.763006, 11.453364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.600490, 21.928360, 11.348429>,  <14.831709, 22.203951, 11.173536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600490, 21.928360, 11.348429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060185, -0.570358, -0.819188,
		0.813780, -0.447215, 0.371161,
		-0.578048, -0.688978, 0.437230,
		14.427075, 21.721666, 11.479598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176115, 21.628487, 10.988520>,  <14.831709, 22.203951, 11.173536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176115, 21.628487, 10.988520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791217, 21.549805, 11.063770>,  <14.560278, 21.502596, 11.108921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.791217, 21.549805, 11.063770>,  <15.176115, 21.628487, 10.988520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791217, 21.549805, 11.063770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047752, -0.558455, -0.828159,
		0.267964, -0.805875, 0.527978,
		-0.962245, -0.196705, 0.188128,
		14.502543, 21.490793, 11.120209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089951, 21.011978, 10.671663>,  <15.176115, 21.628487, 10.988520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089951, 21.011978, 10.671663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.708594, 21.123497, 10.717821>,  <14.479780, 21.190409, 10.745516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.708594, 21.123497, 10.717821>,  <15.089951, 21.011978, 10.671663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708594, 21.123497, 10.717821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206059, -0.322214, -0.923969,
		-0.220417, -0.904683, 0.364644,
		-0.953392, 0.278797, 0.115396,
		14.422577, 21.207136, 10.752439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695801, 20.499327, 10.380229>,  <15.089951, 21.011978, 10.671663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695801, 20.499327, 10.380229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.419900, 20.788673, 10.392760>,  <14.254359, 20.962282, 10.400279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.419900, 20.788673, 10.392760>,  <14.695801, 20.499327, 10.380229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.419900, 20.788673, 10.392760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244579, -0.192053, -0.950419,
		-0.681485, -0.663216, 0.309389,
		-0.689753, 0.723367, 0.031327,
		14.212974, 21.005684, 10.402159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132629, 20.175625, 10.133973>,  <14.695801, 20.499327, 10.380229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132629, 20.175625, 10.133973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.063251, 20.565979, 10.080967>,  <14.021624, 20.800192, 10.049163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.063251, 20.565979, 10.080967>,  <14.132629, 20.175625, 10.133973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063251, 20.565979, 10.080967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250405, -0.173833, -0.952407,
		-0.952478, -0.132009, 0.274517,
		-0.173446, 0.975887, -0.132516,
		14.011217, 20.858746, 10.041212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453084, 20.201784, 9.870803>,  <14.132629, 20.175625, 10.133973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453084, 20.201784, 9.870803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.626624, 20.544437, 9.759119>,  <13.730748, 20.750029, 9.692109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.626624, 20.544437, 9.759119>,  <13.453084, 20.201784, 9.870803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626624, 20.544437, 9.759119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352384, -0.123879, -0.927621,
		-0.829217, 0.500837, 0.248118,
		0.433850, 0.856631, -0.279209,
		13.756779, 20.801426, 9.675356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955858, 20.558836, 9.423125>,  <13.453084, 20.201784, 9.870803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955858, 20.558836, 9.423125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.317361, 20.710583, 9.343822>,  <13.534263, 20.801630, 9.296241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.317361, 20.710583, 9.343822>,  <12.955858, 20.558836, 9.423125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317361, 20.710583, 9.343822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136492, -0.183581, -0.973482,
		-0.405702, 0.906851, -0.114132,
		0.903756, 0.379366, -0.198258,
		13.588488, 20.824392, 9.284346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.170532, 22.534164, 17.245556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559337, 22.478271, 17.170013>,  <13.792620, 22.444736, 17.124687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559337, 22.478271, 17.170013>,  <13.170532, 22.534164, 17.245556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559337, 22.478271, 17.170013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153743, 0.229504, -0.961088,
		0.177639, 0.963225, 0.201598,
		0.972012, -0.139733, -0.188858,
		13.850941, 22.436352, 17.113356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377596, 23.105360, 16.821564>,  <13.170532, 22.534164, 17.245556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377596, 23.105360, 16.821564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671662, 22.839233, 16.769592>,  <13.848103, 22.679558, 16.738409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.671662, 22.839233, 16.769592>,  <13.377596, 23.105360, 16.821564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671662, 22.839233, 16.769592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219136, -0.051868, -0.974315,
		0.641491, 0.744756, -0.183927,
		0.735166, -0.665319, -0.129930,
		13.892212, 22.639637, 16.730614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674366, 23.274586, 16.134764>,  <13.377596, 23.105360, 16.821564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674366, 23.274586, 16.134764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832038, 22.909969, 16.181601>,  <13.926641, 22.691198, 16.209703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832038, 22.909969, 16.181601>,  <13.674366, 23.274586, 16.134764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832038, 22.909969, 16.181601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114759, -0.077592, -0.990358,
		0.911839, 0.403818, 0.074023,
		0.394181, -0.911543, 0.117093,
		13.950293, 22.636507, 16.216728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.293946, 23.179770, 15.783615>,  <13.674366, 23.274586, 16.134764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.293946, 23.179770, 15.783615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165462, 22.804596, 15.835928>,  <14.088370, 22.579493, 15.867315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165462, 22.804596, 15.835928>,  <14.293946, 23.179770, 15.783615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165462, 22.804596, 15.835928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108869, -0.173758, -0.978752,
		0.940728, -0.300150, 0.157925,
		-0.321213, -0.937933, 0.130782,
		14.069098, 22.523216, 15.875162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791788, 22.708210, 15.347478>,  <14.293946, 23.179770, 15.783615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791788, 22.708210, 15.347478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.449031, 22.511379, 15.408916>,  <14.243376, 22.393280, 15.445780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.449031, 22.511379, 15.408916>,  <14.791788, 22.708210, 15.347478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449031, 22.511379, 15.408916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087983, -0.433199, -0.896994,
		0.507929, -0.755115, 0.414500,
		-0.856894, -0.492078, 0.153597,
		14.191962, 22.363756, 15.454995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941909, 22.029877, 15.327110>,  <14.791788, 22.708210, 15.347478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941909, 22.029877, 15.327110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553931, 22.043396, 15.230722>,  <14.321145, 22.051508, 15.172890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553931, 22.043396, 15.230722>,  <14.941909, 22.029877, 15.327110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553931, 22.043396, 15.230722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201691, -0.442326, -0.873881,
		-0.136121, -0.896217, 0.422215,
		-0.969944, 0.033797, -0.240969,
		14.262948, 22.053535, 15.158432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786481, 21.373892, 15.110110>,  <14.941909, 22.029877, 15.327110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786481, 21.373892, 15.110110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515992, 21.624275, 14.954727>,  <14.353699, 21.774506, 14.861497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515992, 21.624275, 14.954727>,  <14.786481, 21.373892, 15.110110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515992, 21.624275, 14.954727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240096, -0.311248, -0.919499,
		-0.696475, -0.715053, 0.060182,
		-0.676222, 0.625959, -0.388458,
		14.313126, 21.812063, 14.838190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546357, 21.090725, 14.479798>,  <14.786481, 21.373892, 15.110110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546357, 21.090725, 14.479798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412192, 21.465652, 14.441990>,  <14.331694, 21.690609, 14.419305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412192, 21.465652, 14.441990>,  <14.546357, 21.090725, 14.479798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412192, 21.465652, 14.441990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145340, -0.150619, -0.977850,
		-0.930792, -0.314245, 0.186749,
		-0.335413, 0.937318, -0.094522,
		14.311568, 21.746847, 14.413633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.021290, 21.085804, 14.121323>,  <14.546357, 21.090725, 14.479798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.021290, 21.085804, 14.121323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145028, 21.459949, 14.052734>,  <14.219271, 21.684437, 14.011581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145028, 21.459949, 14.052734>,  <14.021290, 21.085804, 14.121323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145028, 21.459949, 14.052734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304802, -0.073276, -0.949593,
		-0.900778, 0.346017, 0.262433,
		0.309345, 0.935363, -0.171472,
		14.237831, 21.740559, 14.001293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320349, 20.681059, 14.164540>,  <14.021290, 21.085804, 14.121323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320349, 20.681059, 14.164540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466594, 20.317101, 14.086140>,  <13.554340, 20.098726, 14.039099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466594, 20.317101, 14.086140>,  <13.320349, 20.681059, 14.164540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466594, 20.317101, 14.086140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044217, -0.193365, 0.980130,
		-0.929717, -0.367014, -0.030464,
		0.365612, -0.909896, -0.196003,
		13.576278, 20.044132, 14.027339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.927903, 20.350164, 14.664294>,  <13.320349, 20.681059, 14.164540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.927903, 20.350164, 14.664294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252917, 20.147392, 14.549187>,  <13.447926, 20.025730, 14.480123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.252917, 20.147392, 14.549187>,  <12.927903, 20.350164, 14.664294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.252917, 20.147392, 14.549187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153015, -0.290873, 0.944447,
		-0.562471, -0.811429, -0.158777,
		0.812535, -0.506929, -0.287768,
		13.496677, 19.995314, 14.462856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896812, 19.755659, 15.012465>,  <12.927903, 20.350164, 14.664294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896812, 19.755659, 15.012465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283843, 19.769123, 14.912336>,  <13.516062, 19.777203, 14.852260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283843, 19.769123, 14.912336>,  <12.896812, 19.755659, 15.012465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.283843, 19.769123, 14.912336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239191, -0.440449, 0.865328,
		-0.081125, -0.897147, -0.434220,
		0.967578, 0.033662, -0.250321,
		13.574117, 19.779221, 14.837240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152613, 19.096178, 15.105681>,  <12.896812, 19.755659, 15.012465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152613, 19.096178, 15.105681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465516, 19.344318, 15.128439>,  <13.653258, 19.493202, 15.142094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.465516, 19.344318, 15.128439>,  <13.152613, 19.096178, 15.105681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.465516, 19.344318, 15.128439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278543, -0.430002, 0.858786,
		0.557214, -0.655944, -0.509166,
		0.782258, 0.620352, 0.056895,
		13.700193, 19.530424, 15.145507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641223, 18.739250, 15.435975>,  <13.152613, 19.096178, 15.105681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641223, 18.739250, 15.435975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800246, 19.103325, 15.482464>,  <13.895660, 19.321770, 15.510357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.800246, 19.103325, 15.482464>,  <13.641223, 18.739250, 15.435975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800246, 19.103325, 15.482464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316399, -0.254876, 0.913745,
		0.861301, -0.326494, -0.389310,
		0.397558, 0.910187, 0.116222,
		13.919514, 19.376381, 15.517330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232231, 18.614283, 15.794442>,  <13.641223, 18.739250, 15.435975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232231, 18.614283, 15.794442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167212, 19.002594, 15.865055>,  <14.128201, 19.235580, 15.907423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167212, 19.002594, 15.865055>,  <14.232231, 18.614283, 15.794442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167212, 19.002594, 15.865055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316721, -0.118109, 0.941137,
		0.934487, 0.208891, -0.288268,
		-0.162548, 0.970781, 0.176531,
		14.118448, 19.293829, 15.918015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772912, 18.776115, 16.235909>,  <14.232231, 18.614283, 15.794442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772912, 18.776115, 16.235909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527095, 19.085758, 16.296700>,  <14.379604, 19.271544, 16.333174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527095, 19.085758, 16.296700>,  <14.772912, 18.776115, 16.235909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527095, 19.085758, 16.296700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301778, 0.052688, 0.951921,
		0.728881, 0.630860, -0.265987,
		-0.614543, 0.774106, 0.151977,
		14.342731, 19.317989, 16.342293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192534, 19.341179, 16.428576>,  <14.772912, 18.776115, 16.235909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192534, 19.341179, 16.428576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822923, 19.414066, 16.563019>,  <14.601156, 19.457798, 16.643684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822923, 19.414066, 16.563019>,  <15.192534, 19.341179, 16.428576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822923, 19.414066, 16.563019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371848, 0.223956, 0.900873,
		0.088882, 0.957413, -0.274700,
		-0.924029, 0.182218, 0.336106,
		14.545714, 19.468731, 16.663851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237155, 19.912228, 16.806990>,  <15.192534, 19.341179, 16.428576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237155, 19.912228, 16.806990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898265, 19.755859, 16.950874>,  <14.694931, 19.662039, 17.037205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898265, 19.755859, 16.950874>,  <15.237155, 19.912228, 16.806990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.898265, 19.755859, 16.950874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348065, 0.103052, 0.931789,
		-0.401325, 0.914637, 0.048758,
		-0.847224, -0.390921, 0.359710,
		14.644097, 19.638582, 17.058788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062983, 20.424620, 17.289558>,  <15.237155, 19.912228, 16.806990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062983, 20.424620, 17.289558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849616, 20.098866, 17.380985>,  <14.721597, 19.903414, 17.435843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.849616, 20.098866, 17.380985>,  <15.062983, 20.424620, 17.289558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849616, 20.098866, 17.380985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160079, 0.168145, 0.972678,
		-0.830567, 0.555431, 0.040675,
		-0.533416, -0.814386, 0.228569,
		14.689591, 19.854549, 17.449556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.571133, 20.701763, 17.868019>,  <15.062983, 20.424620, 17.289558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.571133, 20.701763, 17.868019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622661, 20.305614, 17.888313>,  <14.653577, 20.067926, 17.900490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622661, 20.305614, 17.888313>,  <14.571133, 20.701763, 17.868019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622661, 20.305614, 17.888313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268794, 0.084117, 0.959518,
		-0.954545, -0.109967, 0.277041,
		0.128819, -0.990369, 0.050735,
		14.661306, 20.008503, 17.903534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.234145, 20.521702, 18.392561>,  <14.571133, 20.701763, 17.868019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.234145, 20.521702, 18.392561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471145, 20.200722, 18.364231>,  <14.613344, 20.008133, 18.347233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471145, 20.200722, 18.364231>,  <14.234145, 20.521702, 18.392561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.471145, 20.200722, 18.364231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200910, 0.062057, 0.977642,
		-0.780116, -0.593481, 0.197990,
		0.592498, -0.802453, -0.070824,
		14.648894, 19.959986, 18.342983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928720, 20.017153, 18.786133>,  <14.234145, 20.521702, 18.392561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928720, 20.017153, 18.786133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324027, 19.956425, 18.779453>,  <14.561212, 19.919989, 18.775446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324027, 19.956425, 18.779453>,  <13.928720, 20.017153, 18.786133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324027, 19.956425, 18.779453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024022, 0.046521, 0.998628,
		-0.150834, -0.987313, 0.049622,
		0.988267, -0.151819, -0.016700,
		14.620507, 19.910879, 18.774443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.004732, 19.717239, 19.465559>,  <13.928720, 20.017153, 18.786133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.004732, 19.717239, 19.465559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377650, 19.779049, 19.334749>,  <14.601401, 19.816135, 19.256264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377650, 19.779049, 19.334749>,  <14.004732, 19.717239, 19.465559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377650, 19.779049, 19.334749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336982, -0.042608, 0.940546,
		0.131403, -0.987070, -0.091795,
		0.932296, 0.154524, -0.327026,
		14.657339, 19.825405, 19.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.152851, 21.134447, 18.884504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.830254, 21.347088, 18.780991>,  <19.636696, 21.474672, 18.718882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.830254, 21.347088, 18.780991>,  <20.152851, 21.134447, 18.884504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.830254, 21.347088, 18.780991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012565, -0.453008, -0.891418,
		-0.591113, -0.715669, 0.372027,
		-0.806491, 0.531603, -0.258787,
		19.588306, 21.506569, 18.703354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606392, 20.592619, 18.660242>,  <20.152851, 21.134447, 18.884504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606392, 20.592619, 18.660242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.512356, 20.951347, 18.510338>,  <19.455935, 21.166584, 18.420395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.512356, 20.951347, 18.510338>,  <19.606392, 20.592619, 18.660242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512356, 20.951347, 18.510338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063461, -0.398905, -0.914794,
		-0.969900, -0.191276, 0.150692,
		-0.235090, 0.896821, -0.374759,
		19.441830, 21.220394, 18.397911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047647, 20.519091, 18.139441>,  <19.606392, 20.592619, 18.660242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047647, 20.519091, 18.139441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193314, 20.881947, 18.055077>,  <19.280714, 21.099659, 18.004457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.193314, 20.881947, 18.055077>,  <19.047647, 20.519091, 18.139441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193314, 20.881947, 18.055077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092659, -0.190047, -0.977393,
		-0.926712, 0.375477, 0.014846,
		0.364168, 0.907138, -0.210910,
		19.302565, 21.154087, 17.991804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641228, 20.732132, 17.611038>,  <19.047647, 20.519091, 18.139441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641228, 20.732132, 17.611038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.960213, 20.969891, 17.569571>,  <19.151604, 21.112545, 17.544689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.960213, 20.969891, 17.569571>,  <18.641228, 20.732132, 17.611038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.960213, 20.969891, 17.569571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012309, -0.155755, -0.987719,
		-0.603243, 0.788945, -0.116892,
		0.797462, 0.594396, -0.103669,
		19.199451, 21.148209, 17.538469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464199, 21.218473, 17.146597>,  <18.641228, 20.732132, 17.611038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464199, 21.218473, 17.146597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.859707, 21.278194, 17.143826>,  <19.097012, 21.314026, 17.142162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.859707, 21.278194, 17.143826>,  <18.464199, 21.218473, 17.146597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859707, 21.278194, 17.143826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008607, 0.010594, -0.999907,
		-0.149214, 0.988735, 0.011760,
		0.988768, 0.149301, -0.006929,
		19.156338, 21.322985, 17.141747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.604193, 21.768461, 16.657532>,  <18.464199, 21.218473, 17.146597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.604193, 21.768461, 16.657532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.957340, 21.585709, 16.700987>,  <19.169228, 21.476057, 16.727060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.957340, 21.585709, 16.700987>,  <18.604193, 21.768461, 16.657532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.957340, 21.585709, 16.700987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135732, 0.026791, -0.990383,
		0.449579, 0.889123, 0.085666,
		0.882868, -0.456883, 0.108638,
		19.222200, 21.448643, 16.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193808, 22.150650, 16.267580>,  <18.604193, 21.768461, 16.657532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193808, 22.150650, 16.267580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.319408, 21.775578, 16.327127>,  <19.394768, 21.550535, 16.362856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.319408, 21.775578, 16.327127>,  <19.193808, 22.150650, 16.267580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319408, 21.775578, 16.327127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074802, -0.131879, -0.988439,
		0.946471, 0.321506, 0.028730,
		0.314000, -0.937679, 0.148869,
		19.413609, 21.494274, 16.371788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545784, 22.071026, 15.665620>,  <19.193808, 22.150650, 16.267580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545784, 22.071026, 15.665620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.534531, 21.694180, 15.799259>,  <19.527779, 21.468071, 15.879443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.534531, 21.694180, 15.799259>,  <19.545784, 22.071026, 15.665620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534531, 21.694180, 15.799259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139860, -0.327233, -0.934536,
		0.989772, -0.073019, -0.122559,
		-0.028133, -0.942118, 0.334099,
		19.526091, 21.411545, 15.899488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999397, 21.681616, 15.242749>,  <19.545784, 22.071026, 15.665620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999397, 21.681616, 15.242749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.760021, 21.407814, 15.409277>,  <19.616396, 21.243532, 15.509193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.760021, 21.407814, 15.409277>,  <19.999397, 21.681616, 15.242749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.760021, 21.407814, 15.409277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162127, -0.405422, -0.899637,
		0.784590, -0.605877, 0.131645,
		-0.598442, -0.684504, 0.416319,
		19.580488, 21.202463, 15.534173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163418, 21.031889, 14.961201>,  <19.999397, 21.681616, 15.242749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163418, 21.031889, 14.961201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.794262, 20.958492, 15.096613>,  <19.572767, 20.914454, 15.177860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.794262, 20.958492, 15.096613>,  <20.163418, 21.031889, 14.961201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794262, 20.958492, 15.096613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268813, -0.322459, -0.907612,
		0.275702, -0.928628, 0.248270,
		-0.922891, -0.183493, 0.338530,
		19.517395, 20.903444, 15.198172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.058693, 20.410395, 14.912067>,  <20.163418, 21.031889, 14.961201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.058693, 20.410395, 14.912067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.687717, 20.559574, 14.923162>,  <19.465132, 20.649082, 14.929819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.687717, 20.559574, 14.923162>,  <20.058693, 20.410395, 14.912067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687717, 20.559574, 14.923162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200063, -0.432106, -0.879352,
		-0.315968, -0.821093, 0.475364,
		-0.927437, 0.372950, 0.027738,
		19.409487, 20.671459, 14.931484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717783, 19.939846, 14.572275>,  <20.058693, 20.410395, 14.912067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717783, 19.939846, 14.572275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.464684, 20.249470, 14.563702>,  <19.312824, 20.435246, 14.558558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.464684, 20.249470, 14.563702>,  <19.717783, 19.939846, 14.572275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464684, 20.249470, 14.563702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325002, -0.290588, -0.899962,
		-0.702855, -0.562483, 0.435440,
		-0.632747, 0.774062, -0.021433,
		19.274858, 20.481688, 14.557272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.081009, 19.692719, 14.396007>,  <19.717783, 19.939846, 14.572275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.081009, 19.692719, 14.396007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003780, 20.075699, 14.310207>,  <18.957443, 20.305487, 14.258728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.003780, 20.075699, 14.310207>,  <19.081009, 19.692719, 14.396007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003780, 20.075699, 14.310207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379141, -0.274431, -0.883708,
		-0.904973, -0.089294, 0.415994,
		-0.193072, 0.957452, -0.214497,
		18.945858, 20.362934, 14.245858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353632, 19.737904, 14.139821>,  <19.081009, 19.692719, 14.396007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353632, 19.737904, 14.139821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.539005, 20.071060, 14.018814>,  <18.650230, 20.270954, 13.946210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.539005, 20.071060, 14.018814>,  <18.353632, 19.737904, 14.139821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.539005, 20.071060, 14.018814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512361, -0.026680, -0.858356,
		-0.722990, 0.552790, 0.414378,
		0.463435, 0.832893, -0.302517,
		18.678036, 20.320929, 13.928059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640087, 19.431292, 14.335515>,  <18.353632, 19.737904, 14.139821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640087, 19.431292, 14.335515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.674168, 19.039940, 14.260128>,  <17.694616, 18.805130, 14.214896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.674168, 19.039940, 14.260128>,  <17.640087, 19.431292, 14.335515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.674168, 19.039940, 14.260128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334533, -0.150084, 0.930356,
		-0.938525, -0.142314, 0.314513,
		0.085200, -0.978377, -0.188466,
		17.699728, 18.746428, 14.203588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.459553, 19.181618, 14.947125>,  <17.640087, 19.431292, 14.335515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.459553, 19.181618, 14.947125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.663013, 18.891903, 14.760931>,  <17.785089, 18.718073, 14.649215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.663013, 18.891903, 14.760931>,  <17.459553, 19.181618, 14.947125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663013, 18.891903, 14.760931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401680, -0.278570, 0.872382,
		-0.761528, -0.630717, 0.149237,
		0.508653, -0.724289, -0.465485,
		17.815609, 18.674616, 14.621285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391184, 18.552076, 15.461938>,  <17.459553, 19.181618, 14.947125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391184, 18.552076, 15.461938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.679127, 18.460346, 15.199879>,  <17.851892, 18.405308, 15.042644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.679127, 18.460346, 15.199879>,  <17.391184, 18.552076, 15.461938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679127, 18.460346, 15.199879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554854, -0.377008, 0.741621,
		-0.417073, -0.897370, -0.144145,
		0.719852, -0.229330, -0.655149,
		17.895082, 18.391548, 15.003334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666552, 17.881958, 15.674576>,  <17.391184, 18.552076, 15.461938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666552, 17.881958, 15.674576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.959156, 18.054340, 15.463230>,  <18.134718, 18.157770, 15.336423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.959156, 18.054340, 15.463230>,  <17.666552, 17.881958, 15.674576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959156, 18.054340, 15.463230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637530, -0.157545, 0.754145,
		0.241764, -0.888512, -0.389994,
		0.731510, 0.430958, -0.528364,
		18.178610, 18.183628, 15.304721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284126, 17.426363, 15.640656>,  <17.666552, 17.881958, 15.674576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284126, 17.426363, 15.640656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.392300, 17.811089, 15.623779>,  <18.457203, 18.041924, 15.613653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.392300, 17.811089, 15.623779>,  <18.284126, 17.426363, 15.640656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392300, 17.811089, 15.623779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485572, -0.098422, 0.868639,
		0.831316, -0.255396, -0.493646,
		0.270432, 0.961814, -0.042193,
		18.473429, 18.099632, 15.611121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857586, 17.425882, 16.063696>,  <18.284126, 17.426363, 15.640656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857586, 17.425882, 16.063696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.799931, 17.820007, 16.027067>,  <18.765337, 18.056482, 16.005091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.799931, 17.820007, 16.027067>,  <18.857586, 17.425882, 16.063696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.799931, 17.820007, 16.027067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399490, 0.142600, 0.905579,
		0.905335, 0.093947, -0.414176,
		-0.144138, 0.985312, -0.091570,
		18.756689, 18.115601, 15.999597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472462, 17.730417, 16.490366>,  <18.857586, 17.425882, 16.063696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472462, 17.730417, 16.490366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.184685, 18.002640, 16.434875>,  <19.012018, 18.165974, 16.401581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.184685, 18.002640, 16.434875>,  <19.472462, 17.730417, 16.490366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.184685, 18.002640, 16.434875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179643, 0.375269, 0.909341,
		0.670918, 0.629298, -0.392242,
		-0.719443, 0.680557, -0.138726,
		18.968851, 18.206806, 16.393257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.744692, 18.294121, 16.806110>,  <19.472462, 17.730417, 16.490366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.744692, 18.294121, 16.806110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.361820, 18.409119, 16.819725>,  <19.132097, 18.478117, 16.827894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.361820, 18.409119, 16.819725>,  <19.744692, 18.294121, 16.806110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361820, 18.409119, 16.819725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137675, 0.348613, 0.927100,
		0.254671, 0.892085, -0.373265,
		-0.957177, 0.287495, 0.034036,
		19.074667, 18.495367, 16.829935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661833, 18.931038, 17.135036>,  <19.744692, 18.294121, 16.806110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661833, 18.931038, 17.135036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.287025, 18.802151, 17.188951>,  <19.062141, 18.724817, 17.221300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.287025, 18.802151, 17.188951>,  <19.661833, 18.931038, 17.135036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287025, 18.802151, 17.188951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004961, 0.373585, 0.927583,
		-0.349238, 0.869833, -0.348458,
		-0.937021, -0.322219, 0.134785,
		19.005919, 18.705484, 17.229387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274614, 19.452129, 17.532404>,  <19.661833, 18.931038, 17.135036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274614, 19.452129, 17.532404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.074871, 19.111351, 17.595432>,  <18.955025, 18.906883, 17.633249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.074871, 19.111351, 17.595432>,  <19.274614, 19.452129, 17.532404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.074871, 19.111351, 17.595432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034128, 0.201068, 0.978982,
		-0.865723, 0.483486, -0.129480,
		-0.499358, -0.851947, 0.157569,
		18.925064, 18.855766, 17.642702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758551, 19.664114, 18.057673>,  <19.274614, 19.452129, 17.532404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758551, 19.664114, 18.057673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.755928, 19.264355, 18.071320>,  <18.754354, 19.024500, 18.079508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.755928, 19.264355, 18.071320>,  <18.758551, 19.664114, 18.057673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.755928, 19.264355, 18.071320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307476, 0.034482, 0.950931,
		-0.951533, -0.004254, -0.307516,
		-0.006558, -0.999396, 0.034119,
		18.753960, 18.964537, 18.081556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031107, 19.447990, 18.287891>,  <18.758551, 19.664114, 18.057673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031107, 19.447990, 18.287891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.285419, 19.156765, 18.390425>,  <18.438007, 18.982029, 18.451944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.285419, 19.156765, 18.390425>,  <18.031107, 19.447990, 18.287891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285419, 19.156765, 18.390425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367417, 0.006593, 0.930033,
		-0.678814, -0.685477, -0.263312,
		0.635780, -0.728064, 0.256331,
		18.476154, 18.938345, 18.467323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644560, 19.007030, 18.804228>,  <18.031107, 19.447990, 18.287891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644560, 19.007030, 18.804228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.033779, 18.923866, 18.844137>,  <18.267311, 18.873968, 18.868082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.033779, 18.923866, 18.844137>,  <17.644560, 19.007030, 18.804228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033779, 18.923866, 18.844137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084028, 0.083249, 0.992980,
		-0.214759, -0.974598, 0.063535,
		0.973046, -0.207912, 0.099772,
		18.325693, 18.861492, 18.874069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709566, 18.531908, 19.443150>,  <17.644560, 19.007030, 18.804228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709566, 18.531908, 19.443150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.063736, 18.712280, 19.398106>,  <18.276237, 18.820503, 19.371080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.063736, 18.712280, 19.398106>,  <17.709566, 18.531908, 19.443150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.063736, 18.712280, 19.398106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032311, 0.301418, 0.952944,
		0.463657, -0.840123, 0.281453,
		0.885426, 0.450934, -0.112609,
		18.329365, 18.847559, 19.364323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493530, 17.757601, 19.511724>,  <17.709566, 18.531908, 19.443150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493530, 17.757601, 19.511724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.153580, 17.603867, 19.655943>,  <16.949610, 17.511625, 19.742474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.153580, 17.603867, 19.655943>,  <17.493530, 17.757601, 19.511724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153580, 17.603867, 19.655943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259543, -0.290169, -0.921108,
		0.458634, -0.876406, 0.146857,
		-0.849878, -0.384336, 0.360546,
		16.898617, 17.488565, 19.764107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392330, 17.113512, 19.254622>,  <17.493530, 17.757601, 19.511724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392330, 17.113512, 19.254622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.020779, 17.187016, 19.383255>,  <16.797848, 17.231117, 19.460436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.020779, 17.187016, 19.383255>,  <17.392330, 17.113512, 19.254622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020779, 17.187016, 19.383255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369957, -0.418675, -0.829363,
		-0.017765, -0.889350, 0.456882,
		-0.928879, 0.183760, 0.321583,
		16.742115, 17.242144, 19.479731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038742, 16.429176, 19.324429>,  <17.392330, 17.113512, 19.254622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038742, 16.429176, 19.324429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.772263, 16.722691, 19.271156>,  <16.612375, 16.898800, 19.239193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.772263, 16.722691, 19.271156>,  <17.038742, 16.429176, 19.324429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772263, 16.722691, 19.271156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314097, -0.438044, -0.842295,
		-0.676404, -0.519303, 0.522305,
		-0.666199, 0.733786, -0.133183,
		16.572403, 16.942827, 19.231201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532751, 16.046822, 19.131435>,  <17.038742, 16.429176, 19.324429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532751, 16.046822, 19.131435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437733, 16.419807, 19.022564>,  <16.380722, 16.643599, 18.957241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437733, 16.419807, 19.022564>,  <16.532751, 16.046822, 19.131435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437733, 16.419807, 19.022564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273200, -0.333020, -0.902474,
		-0.932167, -0.140018, 0.333857,
		-0.237544, 0.932465, -0.272177,
		16.366468, 16.699547, 18.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883687, 15.998856, 18.939716>,  <16.532751, 16.046822, 19.131435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883687, 15.998856, 18.939716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.027981, 16.322132, 18.753513>,  <16.114557, 16.516098, 18.641792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.027981, 16.322132, 18.753513>,  <15.883687, 15.998856, 18.939716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027981, 16.322132, 18.753513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339739, -0.350957, -0.872586,
		-0.868590, 0.472923, 0.147972,
		0.360734, 0.808191, -0.465508,
		16.136202, 16.564590, 18.613861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246526, 16.153402, 18.470133>,  <15.883687, 15.998856, 18.939716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246526, 16.153402, 18.470133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.564284, 16.351326, 18.329224>,  <15.754940, 16.470079, 18.244678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.564284, 16.351326, 18.329224>,  <15.246526, 16.153402, 18.470133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564284, 16.351326, 18.329224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354266, -0.093655, -0.930443,
		-0.493385, 0.863940, 0.100895,
		0.794397, 0.494810, -0.352273,
		15.802604, 16.499769, 18.223541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.068627, 16.643787, 18.059286>,  <15.246526, 16.153402, 18.470133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.068627, 16.643787, 18.059286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446530, 16.616646, 17.931017>,  <15.673272, 16.600361, 17.854055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.446530, 16.616646, 17.931017>,  <15.068627, 16.643787, 18.059286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446530, 16.616646, 17.931017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317900, 0.048605, -0.946878,
		0.079834, 0.996511, 0.024350,
		0.944757, -0.067852, -0.320671,
		15.729958, 16.596291, 17.834816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145791, 16.909559, 17.380272>,  <15.068627, 16.643787, 18.059286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.145791, 16.909559, 17.380272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.489684, 16.706921, 17.354294>,  <15.696020, 16.585337, 17.338707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.489684, 16.706921, 17.354294>,  <15.145791, 16.909559, 17.380272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489684, 16.706921, 17.354294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195153, -0.208328, -0.958392,
		0.471989, 0.836635, -0.277971,
		0.859733, -0.506597, -0.064943,
		15.747604, 16.554941, 17.334810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569015, 17.239750, 16.959787>,  <15.145791, 16.909559, 17.380272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569015, 17.239750, 16.959787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.679833, 16.855415, 16.957170>,  <15.746325, 16.624815, 16.955601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.679833, 16.855415, 16.957170>,  <15.569015, 17.239750, 16.959787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679833, 16.855415, 16.957170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169051, -0.042038, -0.984711,
		0.945868, 0.273917, -0.174077,
		0.277047, -0.960834, -0.006544,
		15.762947, 16.567165, 16.955208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924917, 17.231876, 16.350872>,  <15.569015, 17.239750, 16.959787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924917, 17.231876, 16.350872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.848712, 16.847443, 16.430897>,  <15.802989, 16.616783, 16.478912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.848712, 16.847443, 16.430897>,  <15.924917, 17.231876, 16.350872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848712, 16.847443, 16.430897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042630, -0.195503, -0.979776,
		0.980758, -0.195190, -0.003725,
		-0.190514, -0.961083, 0.200062,
		15.791557, 16.559118, 16.490915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218355, 16.938297, 15.826310>,  <15.924917, 17.231876, 16.350872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218355, 16.938297, 15.826310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.961293, 16.663399, 15.961773>,  <15.807055, 16.498461, 16.043051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.961293, 16.663399, 15.961773>,  <16.218355, 16.938297, 15.826310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961293, 16.663399, 15.961773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279896, -0.200872, -0.938781,
		0.713198, -0.698101, -0.063265,
		-0.642656, -0.687245, 0.338657,
		15.768497, 16.457226, 16.063370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.242100, 16.557722, 15.296347>,  <16.218355, 16.938297, 15.826310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.242100, 16.557722, 15.296347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.909984, 16.428932, 15.478313>,  <15.710713, 16.351658, 15.587494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.909984, 16.428932, 15.478313>,  <16.242100, 16.557722, 15.296347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909984, 16.428932, 15.478313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331155, -0.371522, -0.867357,
		0.448278, -0.870807, 0.201847,
		-0.830291, -0.321974, 0.454917,
		15.660896, 16.332340, 15.614789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112974, 15.902479, 14.889746>,  <16.242100, 16.557722, 15.296347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112974, 15.902479, 14.889746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.781251, 16.054527, 15.053577>,  <15.582217, 16.145756, 15.151876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.781251, 16.054527, 15.053577>,  <16.112974, 15.902479, 14.889746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.781251, 16.054527, 15.053577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456112, -0.037042, -0.889151,
		-0.322814, -0.924194, 0.204098,
		-0.829309, 0.380122, 0.409578,
		15.532458, 16.168564, 15.176451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.547529, 15.391142, 14.695767>,  <16.112974, 15.902479, 14.889746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.547529, 15.391142, 14.695767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359847, 15.725460, 14.809816>,  <15.247238, 15.926051, 14.878245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.359847, 15.725460, 14.809816>,  <15.547529, 15.391142, 14.695767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359847, 15.725460, 14.809816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672613, -0.129023, -0.728660,
		-0.572223, -0.533667, 0.622704,
		-0.469205, 0.835795, 0.285122,
		15.219086, 15.976198, 14.895353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.430053, 19.413086, 20.031565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.680360, 19.649017, 19.827400>,  <14.830544, 19.790575, 19.704901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.680360, 19.649017, 19.827400>,  <14.430053, 19.413086, 20.031565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680360, 19.649017, 19.827400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514902, 0.179169, 0.838317,
		0.585911, -0.787403, -0.191585,
		0.625767, 0.589827, -0.510412,
		14.868090, 19.825966, 19.674276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162805, 19.049273, 20.041527>,  <14.430053, 19.413086, 20.031565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162805, 19.049273, 20.041527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.173074, 19.447407, 20.004332>,  <15.179235, 19.686287, 19.982014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.173074, 19.447407, 20.004332>,  <15.162805, 19.049273, 20.041527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173074, 19.447407, 20.004332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583559, 0.060603, 0.809806,
		0.811664, -0.075055, -0.579282,
		0.025674, 0.995336, -0.092988,
		15.180776, 19.746008, 19.976435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846689, 19.230394, 20.383535>,  <15.162805, 19.049273, 20.041527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846689, 19.230394, 20.383535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.649945, 19.578506, 20.373039>,  <15.531898, 19.787373, 20.366741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.649945, 19.578506, 20.373039>,  <15.846689, 19.230394, 20.383535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.649945, 19.578506, 20.373039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357537, 0.229366, 0.905295,
		0.793877, 0.435898, -0.423972,
		-0.491861, 0.870278, -0.026238,
		15.502387, 19.839590, 20.365168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.264786, 19.674929, 20.680531>,  <15.846689, 19.230394, 20.383535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.264786, 19.674929, 20.680531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.924350, 19.884800, 20.688080>,  <15.720088, 20.010723, 20.692610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.924350, 19.884800, 20.688080>,  <16.264786, 19.674929, 20.680531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924350, 19.884800, 20.688080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216995, 0.318799, 0.922649,
		0.478078, 0.789353, -0.385179,
		-0.851091, 0.524679, 0.018875,
		15.669023, 20.042204, 20.693743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432261, 20.363325, 20.732519>,  <16.264786, 19.674929, 20.680531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432261, 20.363325, 20.732519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.067287, 20.293407, 20.880526>,  <15.848304, 20.251457, 20.969330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.067287, 20.293407, 20.880526>,  <16.432261, 20.363325, 20.732519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067287, 20.293407, 20.880526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227497, 0.534936, 0.813688,
		-0.340165, 0.826613, -0.448328,
		-0.912432, -0.174795, 0.370018,
		15.793558, 20.240969, 20.991531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302521, 20.999498, 21.018833>,  <16.432261, 20.363325, 20.732519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302521, 20.999498, 21.018833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.013966, 20.774101, 21.179867>,  <15.840832, 20.638863, 21.276487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.013966, 20.774101, 21.179867>,  <16.302521, 20.999498, 21.018833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013966, 20.774101, 21.179867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042091, 0.615925, 0.786680,
		-0.691249, 0.550558, -0.468040,
		-0.721390, -0.563492, 0.402584,
		15.797548, 20.605053, 21.300642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908546, 21.457182, 21.304892>,  <16.302521, 20.999498, 21.018833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908546, 21.457182, 21.304892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.833323, 21.101231, 21.471144>,  <15.788190, 20.887659, 21.570896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.833323, 21.101231, 21.471144>,  <15.908546, 21.457182, 21.304892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833323, 21.101231, 21.471144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025404, 0.418633, 0.907800,
		-0.981830, 0.181277, -0.056120,
		-0.188057, -0.889879, 0.415631,
		15.776906, 20.834267, 21.595833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.292553, 21.511366, 21.747517>,  <15.908546, 21.457182, 21.304892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.292553, 21.511366, 21.747517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.517941, 21.210686, 21.884598>,  <15.653174, 21.030277, 21.966846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.517941, 21.210686, 21.884598>,  <15.292553, 21.511366, 21.747517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517941, 21.210686, 21.884598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043381, 0.387331, 0.920919,
		-0.824997, -0.533777, 0.185640,
		0.563470, -0.751702, 0.342703,
		15.686982, 20.985174, 21.987410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850817, 21.098703, 22.247276>,  <15.292553, 21.511366, 21.747517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850817, 21.098703, 22.247276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234927, 21.034924, 22.338881>,  <15.465393, 20.996656, 22.393843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.234927, 21.034924, 22.338881>,  <14.850817, 21.098703, 22.247276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234927, 21.034924, 22.338881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200946, 0.174320, 0.963967,
		-0.193625, -0.971693, 0.135355,
		0.960276, -0.159449, 0.229010,
		15.523010, 20.987089, 22.407583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883348, 20.630827, 22.891428>,  <14.850817, 21.098703, 22.247276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883348, 20.630827, 22.891428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.228791, 20.830208, 22.861153>,  <15.436057, 20.949837, 22.842987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.228791, 20.830208, 22.861153>,  <14.883348, 20.630827, 22.891428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228791, 20.830208, 22.861153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006523, 0.161161, 0.986907,
		0.504124, -0.851805, 0.142431,
		0.863607, 0.498453, -0.075689,
		15.487873, 20.979744, 22.838446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270812, 20.239313, 23.293217>,  <14.883348, 20.630827, 22.891428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270812, 20.239313, 23.293217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.448678, 20.597210, 23.276672>,  <15.555397, 20.811949, 23.266745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.448678, 20.597210, 23.276672>,  <15.270812, 20.239313, 23.293217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.448678, 20.597210, 23.276672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164216, -0.036040, 0.985766,
		0.880515, -0.445127, -0.162957,
		0.444664, 0.894742, -0.041363,
		15.582077, 20.865633, 23.264263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565195, 20.263172, 23.861759>,  <15.270812, 20.239313, 23.293217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565195, 20.263172, 23.861759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.607785, 20.650738, 23.772438>,  <15.633340, 20.883278, 23.718845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.607785, 20.650738, 23.772438>,  <15.565195, 20.263172, 23.861759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607785, 20.650738, 23.772438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011120, 0.223404, 0.974662,
		0.994253, -0.106262, 0.013013,
		0.106476, 0.968916, -0.223302,
		15.639729, 20.941412, 23.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909082, 20.537333, 24.429859>,  <15.565195, 20.263172, 23.861759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909082, 20.537333, 24.429859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.793160, 20.878319, 24.255816>,  <15.723607, 21.082911, 24.151390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.793160, 20.878319, 24.255816>,  <15.909082, 20.537333, 24.429859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.793160, 20.878319, 24.255816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148084, 0.409205, 0.900346,
		0.945560, 0.325357, 0.007647,
		-0.289805, 0.852464, -0.435108,
		15.706219, 21.134058, 24.125282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137163, 20.180323, 25.167475>,  <15.909082, 20.537333, 24.429859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137163, 20.180323, 25.167475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.752643, 20.228840, 25.068527>,  <15.521931, 20.257950, 25.009159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.752643, 20.228840, 25.068527>,  <16.137163, 20.180323, 25.167475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752643, 20.228840, 25.068527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212779, 0.243502, 0.946273,
		0.175011, 0.962286, -0.208269,
		-0.961299, 0.121293, -0.247369,
		15.464252, 20.265228, 24.994316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.757551, 19.741823, 25.270264>,  <16.137163, 20.180323, 25.167475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.757551, 19.741823, 25.270264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.101318, 19.551548, 25.195297>,  <17.307579, 19.437384, 25.150318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.101318, 19.551548, 25.195297>,  <16.757551, 19.741823, 25.270264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101318, 19.551548, 25.195297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301888, -0.176289, -0.936902,
		0.412634, 0.861767, -0.295110,
		0.859416, -0.475688, -0.187414,
		17.359144, 19.408842, 25.139072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962772, 19.993208, 24.585320>,  <16.757551, 19.741823, 25.270264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962772, 19.993208, 24.585320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.159626, 19.648010, 24.631004>,  <17.277739, 19.440891, 24.658415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.159626, 19.648010, 24.631004>,  <16.962772, 19.993208, 24.585320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159626, 19.648010, 24.631004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065590, -0.167585, -0.983673,
		0.868044, 0.476609, -0.139078,
		0.492135, -0.862994, 0.114210,
		17.307266, 19.389112, 24.665268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.428444, 19.904282, 24.027153>,  <16.962772, 19.993208, 24.585320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.428444, 19.904282, 24.027153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.426056, 19.526310, 24.158041>,  <17.424623, 19.299526, 24.236574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.426056, 19.526310, 24.158041>,  <17.428444, 19.904282, 24.027153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426056, 19.526310, 24.158041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022438, -0.327019, -0.944751,
		0.999730, -0.012982, -0.019250,
		-0.005970, -0.944929, 0.327222,
		17.424265, 19.242832, 24.256208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891521, 19.389784, 23.593752>,  <17.428444, 19.904282, 24.027153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.891521, 19.389784, 23.593752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.652493, 19.129704, 23.781431>,  <17.509075, 18.973656, 23.894039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.652493, 19.129704, 23.781431>,  <17.891521, 19.389784, 23.593752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652493, 19.129704, 23.781431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032930, -0.604577, -0.795866,
		0.801138, -0.460138, 0.382690,
		-0.597573, -0.650200, 0.469196,
		17.473221, 18.934643, 23.922190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253801, 18.809820, 23.485617>,  <17.891521, 19.389784, 23.593752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253801, 18.809820, 23.485617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.872353, 18.734161, 23.579279>,  <17.643484, 18.688766, 23.635477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.872353, 18.734161, 23.579279>,  <18.253801, 18.809820, 23.485617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872353, 18.734161, 23.579279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079695, -0.591491, -0.802364,
		0.290266, -0.783813, 0.548984,
		-0.953622, -0.189148, 0.234155,
		17.586266, 18.677418, 23.649525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237093, 18.113070, 23.371307>,  <18.253801, 18.809820, 23.485617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237093, 18.113070, 23.371307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.856750, 18.234642, 23.347631>,  <17.628546, 18.307585, 23.333426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.856750, 18.234642, 23.347631>,  <18.237093, 18.113070, 23.371307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856750, 18.234642, 23.347631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134139, -0.576613, -0.805930,
		-0.279075, -0.758383, 0.589044,
		-0.950855, 0.303929, -0.059190,
		17.571495, 18.325821, 23.329874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.905603, 17.608248, 23.101593>,  <18.237093, 18.113070, 23.371307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.905603, 17.608248, 23.101593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.629860, 17.888229, 23.026924>,  <17.464413, 18.056219, 22.982122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.629860, 17.888229, 23.026924>,  <17.905603, 17.608248, 23.101593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.629860, 17.888229, 23.026924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192342, -0.425288, -0.884384,
		-0.698418, -0.573754, 0.427807,
		-0.689360, 0.699955, -0.186672,
		17.423052, 18.098215, 22.970922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289682, 17.292597, 22.803320>,  <17.905603, 17.608248, 23.101593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289682, 17.292597, 22.803320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.254250, 17.672279, 22.682549>,  <17.232990, 17.900089, 22.610086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.254250, 17.672279, 22.682549>,  <17.289682, 17.292597, 22.803320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254250, 17.672279, 22.682549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296024, -0.314512, -0.901915,
		-0.951064, 0.009486, 0.308848,
		-0.088580, 0.949206, -0.301929,
		17.227674, 17.957041, 22.591970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652767, 17.340048, 22.577021>,  <17.289682, 17.292597, 22.803320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652767, 17.340048, 22.577021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.858887, 17.632824, 22.398703>,  <16.982557, 17.808489, 22.291712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.858887, 17.632824, 22.398703>,  <16.652767, 17.340048, 22.577021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858887, 17.632824, 22.398703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324994, -0.314428, -0.891916,
		-0.792999, 0.604482, 0.075853,
		0.515297, 0.731940, -0.445795,
		17.013475, 17.852406, 22.264965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292271, 17.475346, 21.982582>,  <16.652767, 17.340048, 22.577021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292271, 17.475346, 21.982582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.632828, 17.675682, 21.920244>,  <16.837162, 17.795883, 21.882841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.632828, 17.675682, 21.920244>,  <16.292271, 17.475346, 21.982582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632828, 17.675682, 21.920244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118461, -0.105843, -0.987301,
		-0.510976, 0.859044, -0.030784,
		0.851394, 0.500840, -0.155847,
		16.888247, 17.825933, 21.873489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068748, 18.038137, 21.519905>,  <16.292271, 17.475346, 21.982582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068748, 18.038137, 21.519905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.456905, 17.955826, 21.469322>,  <16.689800, 17.906439, 21.438972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.456905, 17.955826, 21.469322>,  <16.068748, 18.038137, 21.519905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456905, 17.955826, 21.469322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162904, -0.171062, -0.971700,
		0.178323, 0.963532, -0.199519,
		0.970393, -0.205779, -0.126459,
		16.748024, 17.894093, 21.431385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.324339, 18.455900, 20.921696>,  <16.068748, 18.038137, 21.519905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.324339, 18.455900, 20.921696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.586998, 18.154709, 20.938835>,  <16.744593, 17.973993, 20.949120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.586998, 18.154709, 20.938835>,  <16.324339, 18.455900, 20.921696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586998, 18.154709, 20.938835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137947, -0.175768, -0.974718,
		0.741475, 0.634134, -0.219289,
		0.656647, -0.752980, 0.042851,
		16.783993, 17.928814, 20.951691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849939, 18.548773, 20.468086>,  <16.324339, 18.455900, 20.921696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849939, 18.548773, 20.468086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.855831, 18.152771, 20.524191>,  <16.859365, 17.915171, 20.557854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.855831, 18.152771, 20.524191>,  <16.849939, 18.548773, 20.468086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855831, 18.152771, 20.524191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072862, -0.140969, -0.987329,
		0.997233, 0.004323, -0.074210,
		0.014730, -0.990005, 0.140264,
		16.860250, 17.855770, 20.566271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340574, 18.219469, 20.047007>,  <16.849939, 18.548773, 20.468086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340574, 18.219469, 20.047007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.088337, 17.920742, 20.131495>,  <16.936995, 17.741507, 20.182186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.088337, 17.920742, 20.131495>,  <17.340574, 18.219469, 20.047007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088337, 17.920742, 20.131495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130496, -0.166248, -0.977411,
		0.765063, -0.643914, 0.007379,
		-0.630595, -0.746818, 0.211218,
		16.899158, 17.696697, 20.194860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039972, 18.476000, 20.074778>,  <17.340574, 18.219469, 20.047007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039972, 18.476000, 20.074778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.270050, 18.751831, 19.898764>,  <18.408096, 18.917330, 19.793156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.270050, 18.751831, 19.898764>,  <18.039972, 18.476000, 20.074778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.270050, 18.751831, 19.898764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133928, 0.451284, 0.882273,
		0.806978, -0.566413, 0.167223,
		0.575196, 0.689579, -0.440034,
		18.442610, 18.958704, 19.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744459, 18.415653, 20.338881>,  <18.039972, 18.476000, 20.074778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744459, 18.415653, 20.338881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.692600, 18.788162, 20.202688>,  <18.661484, 19.011667, 20.120974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.692600, 18.788162, 20.202688>,  <18.744459, 18.415653, 20.338881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.692600, 18.788162, 20.202688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032443, 0.347179, 0.937238,
		0.991029, 0.110466, -0.075225,
		-0.129650, 0.931270, -0.340480,
		18.653706, 19.067543, 20.100544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344481, 18.780495, 20.707760>,  <18.744459, 18.415653, 20.338881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344481, 18.780495, 20.707760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.101631, 19.073658, 20.584965>,  <18.955921, 19.249556, 20.511288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.101631, 19.073658, 20.584965>,  <19.344481, 18.780495, 20.707760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.101631, 19.073658, 20.584965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127140, 0.470961, 0.872944,
		0.784369, 0.490956, -0.379115,
		-0.607125, 0.732910, -0.306987,
		18.919493, 19.293531, 20.492868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613737, 19.333994, 21.115070>,  <19.344481, 18.780495, 20.707760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613737, 19.333994, 21.115070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.261593, 19.462669, 20.975657>,  <19.050306, 19.539875, 20.892008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.261593, 19.462669, 20.975657>,  <19.613737, 19.333994, 21.115070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261593, 19.462669, 20.975657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036336, 0.686940, 0.725806,
		0.472908, 0.651636, -0.593067,
		-0.880362, 0.321690, -0.348537,
		18.997484, 19.559175, 20.871096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.708502, 20.035156, 21.059244>,  <19.613737, 19.333994, 21.115070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.708502, 20.035156, 21.059244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.317314, 19.959629, 21.094847>,  <19.082602, 19.914312, 21.116209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.317314, 19.959629, 21.094847>,  <19.708502, 20.035156, 21.059244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317314, 19.959629, 21.094847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075405, 0.717143, 0.692835,
		-0.194651, 0.670860, -0.715582,
		-0.977970, -0.188820, 0.089006,
		19.023924, 19.902983, 21.121548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440807, 20.700455, 21.159132>,  <19.708502, 20.035156, 21.059244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440807, 20.700455, 21.159132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.165047, 20.445190, 21.296230>,  <18.999590, 20.292032, 21.378489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.165047, 20.445190, 21.296230>,  <19.440807, 20.700455, 21.159132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.165047, 20.445190, 21.296230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131115, 0.575277, 0.807382,
		-0.712412, 0.511673, -0.480271,
		-0.689404, -0.638159, 0.342746,
		18.958225, 20.253742, 21.399054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935875, 21.051313, 21.435356>,  <19.440807, 20.700455, 21.159132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935875, 21.051313, 21.435356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.840214, 20.708279, 21.617498>,  <18.782816, 20.502457, 21.726784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.840214, 20.708279, 21.617498>,  <18.935875, 21.051313, 21.435356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840214, 20.708279, 21.617498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074831, 0.483847, 0.871947,
		-0.968094, 0.174455, -0.179888,
		-0.239154, -0.857588, 0.455355,
		18.768467, 20.451002, 21.754105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623293, 21.709757, 21.370466>,  <18.935875, 21.051313, 21.435356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623293, 21.709757, 21.370466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.914841, 21.978783, 21.319227>,  <19.089769, 22.140198, 21.288485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.914841, 21.978783, 21.319227>,  <18.623293, 21.709757, 21.370466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914841, 21.978783, 21.319227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022300, -0.163676, -0.986262,
		-0.684289, 0.721713, -0.104300,
		0.728869, 0.672563, -0.128096,
		19.133501, 22.180552, 21.280798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371881, 22.227446, 20.944996>,  <18.623293, 21.709757, 21.370466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371881, 22.227446, 20.944996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.770699, 22.229519, 20.914331>,  <19.009989, 22.230762, 20.895933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.770699, 22.229519, 20.914331>,  <18.371881, 22.227446, 20.944996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770699, 22.229519, 20.914331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076293, -0.051580, -0.995750,
		-0.009117, 0.998655, -0.051032,
		0.997044, 0.005185, -0.076660,
		19.069811, 22.231075, 20.891333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509401, 22.731350, 20.336143>,  <18.371881, 22.227446, 20.944996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509401, 22.731350, 20.336143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.860504, 22.545719, 20.383770>,  <19.071165, 22.434341, 20.412346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.860504, 22.545719, 20.383770>,  <18.509401, 22.731350, 20.336143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860504, 22.545719, 20.383770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132848, -0.003023, -0.991132,
		0.460320, 0.885791, 0.058998,
		0.877757, -0.464075, 0.119067,
		19.123831, 22.406496, 20.419491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054436, 23.038570, 19.844681>,  <18.509401, 22.731350, 20.336143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054436, 23.038570, 19.844681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.167236, 22.667065, 19.940908>,  <19.234917, 22.444160, 19.998646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.167236, 22.667065, 19.940908>,  <19.054436, 23.038570, 19.844681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167236, 22.667065, 19.940908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227078, -0.179010, -0.957283,
		0.932154, 0.324583, 0.160421,
		0.282001, -0.928763, 0.240570,
		19.251837, 22.388435, 20.013079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713520, 22.936064, 19.505589>,  <19.054436, 23.038570, 19.844681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713520, 22.936064, 19.505589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.560394, 22.580009, 19.604473>,  <19.468519, 22.366377, 19.663803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.560394, 22.580009, 19.604473>,  <19.713520, 22.936064, 19.505589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560394, 22.580009, 19.604473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218549, -0.347260, -0.911947,
		0.897601, -0.295080, 0.327474,
		-0.382816, -0.890134, 0.247211,
		19.445549, 22.312969, 19.678637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118116, 22.476952, 19.150898>,  <19.713520, 22.936064, 19.505589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118116, 22.476952, 19.150898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.808559, 22.238770, 19.237173>,  <19.622826, 22.095860, 19.288939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.808559, 22.238770, 19.237173>,  <20.118116, 22.476952, 19.150898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808559, 22.238770, 19.237173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128666, -0.481293, -0.867065,
		0.620110, -0.643263, 0.449084,
		-0.773892, -0.595458, 0.215689,
		19.576391, 22.060133, 19.301880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336950, 21.783337, 19.160761>,  <20.118116, 22.476952, 19.150898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336950, 21.783337, 19.160761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.944954, 21.776787, 19.081409>,  <19.709757, 21.772856, 19.033798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.944954, 21.776787, 19.081409>,  <20.336950, 21.783337, 19.160761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944954, 21.776787, 19.081409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187971, -0.404017, -0.895230,
		-0.065487, -0.914605, 0.399011,
		-0.979989, -0.016376, -0.198377,
		19.650957, 21.771873, 19.021896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<16.656908, 24.261333, 22.956924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.425838, 23.966400, 23.097000>,  <16.287197, 23.789440, 23.181046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.425838, 23.966400, 23.097000>,  <16.656908, 24.261333, 22.956924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.425838, 23.966400, 23.097000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188881, -0.296624, -0.936129,
		0.794115, -0.606920, 0.032082,
		-0.577672, -0.737335, 0.350189,
		16.252537, 23.745199, 23.202057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.786728, 23.670994, 22.454161>,  <16.656908, 24.261333, 22.956924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.786728, 23.670994, 22.454161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.454483, 23.573235, 22.654303>,  <16.255136, 23.514580, 22.774387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.454483, 23.573235, 22.654303>,  <16.786728, 23.670994, 22.454161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.454483, 23.573235, 22.654303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376349, -0.415883, -0.827890,
		0.410424, -0.875963, 0.253458,
		-0.830610, -0.244397, 0.500357,
		16.205299, 23.499916, 22.804409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564880, 22.971230, 22.415731>,  <16.786728, 23.670994, 22.454161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564880, 22.971230, 22.415731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.229626, 23.173786, 22.496817>,  <16.028473, 23.295321, 22.545467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.229626, 23.173786, 22.496817>,  <16.564880, 22.971230, 22.415731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229626, 23.173786, 22.496817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381237, -0.278051, -0.881672,
		-0.390108, -0.816244, 0.426101,
		-0.838138, 0.506393, 0.202712,
		15.978185, 23.325705, 22.557631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.101809, 22.624727, 22.081863>,  <16.564880, 22.971230, 22.415731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.101809, 22.624727, 22.081863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.879239, 22.948261, 22.157949>,  <15.745698, 23.142382, 22.203600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.879239, 22.948261, 22.157949>,  <16.101809, 22.624727, 22.081863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.879239, 22.948261, 22.157949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505880, -0.148167, -0.849784,
		-0.659151, -0.569064, 0.491617,
		-0.556423, 0.808835, 0.190213,
		15.712313, 23.190912, 22.215014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382983, 22.441587, 22.258924>,  <16.101809, 22.624727, 22.081863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382983, 22.441587, 22.258924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.403756, 22.809971, 22.104452>,  <15.416220, 23.031000, 22.011768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.403756, 22.809971, 22.104452>,  <15.382983, 22.441587, 22.258924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403756, 22.809971, 22.104452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429927, -0.328417, -0.841014,
		-0.901368, 0.209707, 0.378890,
		0.051933, 0.920959, -0.386183,
		15.419336, 23.086258, 21.988598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792718, 22.540289, 21.782017>,  <15.382983, 22.441587, 22.258924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792718, 22.540289, 21.782017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.995870, 22.873489, 21.694225>,  <15.117761, 23.073410, 21.641550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.995870, 22.873489, 21.694225>,  <14.792718, 22.540289, 21.782017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995870, 22.873489, 21.694225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346582, -0.035659, -0.937342,
		-0.788631, 0.552124, 0.270592,
		0.507880, 0.832999, -0.219478,
		15.148233, 23.123388, 21.628382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386135, 22.918882, 21.259609>,  <14.792718, 22.540289, 21.782017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386135, 22.918882, 21.259609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.752496, 23.076057, 21.226809>,  <14.972312, 23.170362, 21.207129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.752496, 23.076057, 21.226809>,  <14.386135, 22.918882, 21.259609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752496, 23.076057, 21.226809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160043, 0.170128, -0.972339,
		-0.368117, 0.903691, 0.218707,
		0.915902, 0.392937, -0.082002,
		15.027267, 23.193939, 21.202208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337652, 23.297230, 20.657724>,  <14.386135, 22.918882, 21.259609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337652, 23.297230, 20.657724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.734784, 23.290134, 20.705011>,  <14.973063, 23.285877, 20.733383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.734784, 23.290134, 20.705011>,  <14.337652, 23.297230, 20.657724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.734784, 23.290134, 20.705011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119091, 0.232357, -0.965312,
		-0.010347, 0.972469, 0.232803,
		0.992829, -0.017737, 0.118216,
		15.032633, 23.284813, 20.740477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581279, 23.909571, 20.336412>,  <14.337652, 23.297230, 20.657724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.581279, 23.909571, 20.336412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.863479, 23.626583, 20.353186>,  <15.032799, 23.456791, 20.363249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.863479, 23.626583, 20.353186>,  <14.581279, 23.909571, 20.336412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863479, 23.626583, 20.353186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107731, 0.048577, -0.992992,
		0.700474, 0.705073, 0.110488,
		0.705500, -0.707468, 0.041931,
		15.075129, 23.414343, 20.365765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115430, 24.125124, 19.908298>,  <14.581279, 23.909571, 20.336412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115430, 24.125124, 19.908298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.187154, 23.732548, 19.935486>,  <15.230188, 23.497002, 19.951799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.187154, 23.732548, 19.935486>,  <15.115430, 24.125124, 19.908298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187154, 23.732548, 19.935486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066876, -0.081089, -0.994461,
		0.981517, 0.173770, -0.080175,
		0.179309, -0.981442, 0.067969,
		15.240947, 23.438116, 19.955877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342634, 23.924347, 19.293827>,  <15.115430, 24.125124, 19.908298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342634, 23.924347, 19.293827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.258891, 23.559746, 19.435438>,  <15.208645, 23.340986, 19.520405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.258891, 23.559746, 19.435438>,  <15.342634, 23.924347, 19.293827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258891, 23.559746, 19.435438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245768, -0.301378, -0.921287,
		0.946450, -0.279888, -0.160921,
		-0.209359, -0.911501, 0.354027,
		15.196083, 23.286295, 19.541647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808396, 23.402431, 18.981567>,  <15.342634, 23.924347, 19.293827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808396, 23.402431, 18.981567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.463983, 23.221737, 19.074997>,  <15.257335, 23.113321, 19.131054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.463983, 23.221737, 19.074997>,  <15.808396, 23.402431, 18.981567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463983, 23.221737, 19.074997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146056, -0.220276, -0.964441,
		0.487123, -0.864531, 0.123687,
		-0.861034, -0.451736, 0.233572,
		15.205672, 23.086216, 19.145069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423468, 23.176392, 18.828688>,  <15.808396, 23.402431, 18.981567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423468, 23.176392, 18.828688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.586723, 23.497814, 18.655382>,  <16.684677, 23.690668, 18.551399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.586723, 23.497814, 18.655382>,  <16.423468, 23.176392, 18.828688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586723, 23.497814, 18.655382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134262, 0.416598, 0.899122,
		0.902993, -0.425138, 0.062143,
		0.408139, 0.803557, -0.433265,
		16.709166, 23.738882, 18.525402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112272, 23.292053, 19.131441>,  <16.423468, 23.176392, 18.828688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112272, 23.292053, 19.131441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.070477, 23.634808, 18.929518>,  <17.045399, 23.840460, 18.808365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.070477, 23.634808, 18.929518>,  <17.112272, 23.292053, 19.131441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.070477, 23.634808, 18.929518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262364, 0.513354, 0.817088,
		0.959295, -0.047068, -0.278455,
		-0.104487, 0.856885, -0.504807,
		17.039131, 23.891872, 18.778076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757576, 23.691519, 18.900866>,  <17.112272, 23.292053, 19.131441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757576, 23.691519, 18.900866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.461678, 23.956341, 18.948971>,  <17.284140, 24.115234, 18.977835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.461678, 23.956341, 18.948971>,  <17.757576, 23.691519, 18.900866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461678, 23.956341, 18.948971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420585, 0.315417, 0.850658,
		0.525249, 0.679850, -0.511778,
		-0.739744, 0.662054, 0.120263,
		17.239754, 24.154957, 18.985050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078138, 24.290956, 19.076733>,  <17.757576, 23.691519, 18.900866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078138, 24.290956, 19.076733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.694096, 24.343479, 19.175488>,  <17.463671, 24.374992, 19.234739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.694096, 24.343479, 19.175488>,  <18.078138, 24.290956, 19.076733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694096, 24.343479, 19.175488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279589, 0.435315, 0.855763,
		0.004895, 0.890651, -0.454662,
		-0.960107, 0.131308, 0.246885,
		17.406063, 24.382872, 19.249554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934397, 24.981796, 19.364679>,  <18.078138, 24.290956, 19.076733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934397, 24.981796, 19.364679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.607983, 24.785858, 19.487410>,  <17.412134, 24.668295, 19.561049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.607983, 24.785858, 19.487410>,  <17.934397, 24.981796, 19.364679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607983, 24.785858, 19.487410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075484, 0.435978, 0.896786,
		-0.573055, 0.754968, -0.318797,
		-0.816033, -0.489844, 0.306827,
		17.363173, 24.638905, 19.579458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508598, 25.474684, 19.768513>,  <17.934397, 24.981796, 19.364679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508598, 25.474684, 19.768513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.392338, 25.109852, 19.884192>,  <17.322582, 24.890953, 19.953598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.392338, 25.109852, 19.884192>,  <17.508598, 25.474684, 19.768513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.392338, 25.109852, 19.884192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024228, 0.295131, 0.955150,
		-0.956523, 0.284620, -0.063681,
		-0.290649, -0.912079, 0.289195,
		17.305143, 24.836227, 19.970951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974905, 25.651340, 20.241430>,  <17.508598, 25.474684, 19.768513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974905, 25.651340, 20.241430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.086773, 25.280506, 20.341269>,  <17.153894, 25.058006, 20.401173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.086773, 25.280506, 20.341269>,  <16.974905, 25.651340, 20.241430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086773, 25.280506, 20.341269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014035, 0.255996, 0.966576,
		-0.959993, -0.273827, 0.058583,
		0.279672, -0.927084, 0.249598,
		17.170675, 25.002380, 20.416147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.658415, 25.594412, 20.869600>,  <16.974905, 25.651340, 20.241430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.658415, 25.594412, 20.869600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.937263, 25.308170, 20.852013>,  <17.104572, 25.136425, 20.841459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.937263, 25.308170, 20.852013>,  <16.658415, 25.594412, 20.869600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937263, 25.308170, 20.852013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198340, 0.133553, 0.970992,
		-0.688974, -0.685619, 0.235036,
		0.697120, -0.715605, -0.043971,
		17.146399, 25.093489, 20.838821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546309, 25.220512, 21.427376>,  <16.658415, 25.594412, 20.869600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546309, 25.220512, 21.427376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.926910, 25.128880, 21.345245>,  <17.155272, 25.073900, 21.295967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.926910, 25.128880, 21.345245>,  <16.546309, 25.220512, 21.427376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926910, 25.128880, 21.345245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238566, 0.128096, 0.962641,
		-0.194221, -0.964942, 0.176535,
		0.951506, -0.229081, -0.205324,
		17.212362, 25.060156, 21.283648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697081, 24.744833, 21.956810>,  <16.546309, 25.220512, 21.427376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697081, 24.744833, 21.956810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.056622, 24.863892, 21.828144>,  <17.272346, 24.935328, 21.750944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.056622, 24.863892, 21.828144>,  <16.697081, 24.744833, 21.956810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056622, 24.863892, 21.828144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292047, 0.140440, 0.946037,
		0.326762, -0.944289, 0.039308,
		0.898853, 0.297649, -0.321667,
		17.326277, 24.953186, 21.731644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146109, 24.366932, 22.295334>,  <16.697081, 24.744833, 21.956810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146109, 24.366932, 22.295334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.368000, 24.673908, 22.166765>,  <17.501135, 24.858093, 22.089624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.368000, 24.673908, 22.166765>,  <17.146109, 24.366932, 22.295334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368000, 24.673908, 22.166765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463547, 0.035737, 0.885351,
		0.690941, -0.640123, -0.335921,
		0.554729, 0.767441, -0.321420,
		17.534418, 24.904140, 22.070339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780020, 24.255997, 22.508198>,  <17.146109, 24.366932, 22.295334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780020, 24.255997, 22.508198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.770077, 24.652184, 22.453999>,  <17.764111, 24.889894, 22.421478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.770077, 24.652184, 22.453999>,  <17.780020, 24.255997, 22.508198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770077, 24.652184, 22.453999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399803, 0.134079, 0.906742,
		0.916264, -0.031633, -0.399324,
		-0.024858, 0.990466, -0.135499,
		17.762619, 24.949324, 22.413349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407055, 24.444975, 22.785488>,  <17.780020, 24.255997, 22.508198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407055, 24.444975, 22.785488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.145718, 24.747421, 22.770386>,  <17.988914, 24.928890, 22.761324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.145718, 24.747421, 22.770386>,  <18.407055, 24.444975, 22.785488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145718, 24.747421, 22.770386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341219, 0.338625, 0.876871,
		0.675803, 0.560017, -0.479241,
		-0.653346, 0.756118, -0.037756,
		17.949715, 24.974257, 22.759060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817968, 25.043364, 22.861322>,  <18.407055, 24.444975, 22.785488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817968, 25.043364, 22.861322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.443592, 25.109035, 22.985939>,  <18.218966, 25.148439, 23.060709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.443592, 25.109035, 22.985939>,  <18.817968, 25.043364, 22.861322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443592, 25.109035, 22.985939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347680, 0.290210, 0.891570,
		0.055967, 0.942774, -0.328702,
		-0.935941, 0.164182, 0.311542,
		18.162809, 25.158291, 23.079401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404318, 24.659330, 22.675409>,  <18.817968, 25.043364, 22.861322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404318, 24.659330, 22.675409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.577030, 24.432499, 22.955975>,  <19.680658, 24.296400, 23.124313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.577030, 24.432499, 22.955975>,  <19.404318, 24.659330, 22.675409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577030, 24.432499, 22.955975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056530, -0.793126, -0.606429,
		0.900204, 0.222195, -0.374515,
		0.431783, -0.567081, 0.701415,
		19.706566, 24.262375, 23.166399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920982, 24.306854, 22.380848>,  <19.404318, 24.659330, 22.675409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920982, 24.306854, 22.380848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.775394, 24.095215, 22.687464>,  <19.688042, 23.968231, 22.871433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.775394, 24.095215, 22.687464>,  <19.920982, 24.306854, 22.380848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775394, 24.095215, 22.687464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056949, -0.808805, -0.585313,
		0.929669, -0.256689, 0.264248,
		-0.363968, -0.529099, 0.766538,
		19.666204, 23.936485, 22.917425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.321213, 23.673447, 22.501238>,  <19.920982, 24.306854, 22.380848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.321213, 23.673447, 22.501238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.959820, 23.612850, 22.661621>,  <19.742983, 23.576492, 22.757851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.959820, 23.612850, 22.661621>,  <20.321213, 23.673447, 22.501238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959820, 23.612850, 22.661621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210906, -0.657251, -0.723561,
		0.373143, -0.738290, 0.561865,
		-0.903484, -0.151491, 0.400958,
		19.688774, 23.567404, 22.781908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305746, 22.943169, 22.674147>,  <20.321213, 23.673447, 22.501238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305746, 22.943169, 22.674147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.923748, 23.054848, 22.634079>,  <19.694550, 23.121855, 22.610039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.923748, 23.054848, 22.634079>,  <20.305746, 22.943169, 22.674147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923748, 23.054848, 22.634079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103075, -0.629016, -0.770528,
		-0.278138, -0.725525, 0.629485,
		-0.954994, 0.279198, -0.100170,
		19.637249, 23.138607, 22.604027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110338, 22.403656, 22.507769>,  <20.305746, 22.943169, 22.674147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.110338, 22.403656, 22.507769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798759, 22.636635, 22.414822>,  <19.611813, 22.776423, 22.359053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798759, 22.636635, 22.414822>,  <20.110338, 22.403656, 22.507769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798759, 22.636635, 22.414822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371799, -0.727355, -0.576819,
		-0.504982, -0.362917, 0.783125,
		-0.778947, 0.582448, -0.232369,
		19.565075, 22.811369, 22.345110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.560928, 21.970268, 22.570276>,  <20.110338, 22.403656, 22.507769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.560928, 21.970268, 22.570276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.488457, 22.262482, 22.306915>,  <19.444973, 22.437809, 22.148899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.488457, 22.262482, 22.306915>,  <19.560928, 21.970268, 22.570276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488457, 22.262482, 22.306915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463258, -0.653951, -0.598114,
		-0.867506, 0.196645, 0.456908,
		-0.181179, 0.730534, -0.658403,
		19.434103, 22.481642, 22.109394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.079342, 21.683088, 22.086008>,  <19.560928, 21.970268, 22.570276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.079342, 21.683088, 22.086008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.184738, 22.018005, 21.894377>,  <19.247976, 22.218956, 21.779398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.184738, 22.018005, 21.894377>,  <19.079342, 21.683088, 22.086008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.184738, 22.018005, 21.894377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221506, -0.430843, -0.874820,
		-0.938887, 0.336624, 0.071942,
		0.263490, 0.837292, -0.479077,
		19.263784, 22.269194, 21.750654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.458878, 21.253654, 21.968950>,  <19.079342, 21.683088, 22.086008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.458878, 21.253654, 21.968950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.612026, 20.902866, 22.085110>,  <18.703915, 20.692392, 22.154806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.612026, 20.902866, 22.085110>,  <18.458878, 21.253654, 21.968950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612026, 20.902866, 22.085110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140111, 0.255591, 0.956578,
		-0.913116, -0.406933, -0.025015,
		0.382869, -0.876971, 0.290400,
		18.726887, 20.639774, 22.172230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984053, 21.086964, 22.591858>,  <18.458878, 21.253654, 21.968950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984053, 21.086964, 22.591858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.330093, 20.887527, 22.613792>,  <18.537718, 20.767866, 22.626953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.330093, 20.887527, 22.613792>,  <17.984053, 21.086964, 22.591858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330093, 20.887527, 22.613792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025240, 0.152455, 0.987988,
		-0.500964, -0.853325, 0.144473,
		0.865100, -0.498592, 0.054836,
		18.589624, 20.737949, 22.630243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974091, 20.959627, 23.298941>,  <17.984053, 21.086964, 22.591858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.974091, 20.959627, 23.298941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.348946, 20.856850, 23.204491>,  <18.573858, 20.795183, 23.147820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.348946, 20.856850, 23.204491>,  <17.974091, 20.959627, 23.298941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.348946, 20.856850, 23.204491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267366, 0.093830, 0.959016,
		-0.224257, -0.961861, 0.156629,
		0.937136, -0.256943, -0.236127,
		18.630087, 20.779766, 23.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162720, 20.372957, 23.772894>,  <17.974091, 20.959627, 23.298941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162720, 20.372957, 23.772894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.500538, 20.538174, 23.636578>,  <18.703230, 20.637304, 23.554789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.500538, 20.538174, 23.636578>,  <18.162720, 20.372957, 23.772894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500538, 20.538174, 23.636578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350734, 0.054218, 0.934904,
		0.404632, -0.909096, -0.099079,
		0.844546, 0.413042, -0.340789,
		18.753902, 20.662086, 23.534340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661188, 20.039286, 24.196165>,  <18.162720, 20.372957, 23.772894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661188, 20.039286, 24.196165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848621, 20.360012, 24.047829>,  <18.961082, 20.552448, 23.958826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848621, 20.360012, 24.047829>,  <18.661188, 20.039286, 24.196165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848621, 20.360012, 24.047829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475950, 0.124512, 0.870614,
		0.744245, -0.584458, -0.323278,
		0.468585, 0.801814, -0.370840,
		18.989197, 20.600555, 23.936577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304792, 19.899857, 24.285030>,  <18.661188, 20.039286, 24.196165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304792, 19.899857, 24.285030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.294209, 20.296021, 24.230787>,  <19.287859, 20.533718, 24.198242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.294209, 20.296021, 24.230787>,  <19.304792, 19.899857, 24.285030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294209, 20.296021, 24.230787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619677, 0.122697, 0.775207,
		0.784411, -0.063521, -0.616980,
		-0.026460, 0.990409, -0.135608,
		19.286270, 20.593143, 24.190105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067848, 20.252327, 24.329548>,  <19.304792, 19.899857, 24.285030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067848, 20.252327, 24.329548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.789200, 20.529427, 24.404190>,  <19.622011, 20.695686, 24.448977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.789200, 20.529427, 24.404190>,  <20.067848, 20.252327, 24.329548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789200, 20.529427, 24.404190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449282, 0.218445, 0.866272,
		0.559344, 0.687302, -0.463412,
		-0.696620, 0.692747, 0.186607,
		19.580214, 20.737251, 24.460173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386118, 20.811052, 24.364414>,  <20.067848, 20.252327, 24.329548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386118, 20.811052, 24.364414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.052547, 20.890652, 24.570312>,  <19.852406, 20.938412, 24.693851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.052547, 20.890652, 24.570312>,  <20.386118, 20.811052, 24.364414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052547, 20.890652, 24.570312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547595, 0.182461, 0.816607,
		0.068583, 0.962864, -0.261130,
		-0.833928, 0.198999, 0.514746,
		19.802368, 20.950352, 24.724737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493147, 21.403194, 24.816406>,  <20.386118, 20.811052, 24.364414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493147, 21.403194, 24.816406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.180557, 21.216412, 24.981937>,  <19.993004, 21.104342, 25.081255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.180557, 21.216412, 24.981937>,  <20.493147, 21.403194, 24.816406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180557, 21.216412, 24.981937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279013, 0.331705, 0.901179,
		-0.558079, 0.819710, -0.128931,
		-0.781472, -0.466956, 0.413827,
		19.946115, 21.076324, 25.106085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.755573, 17.866871, 9.833488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.452605, 17.664337, 9.998384>,  <15.270824, 17.542818, 10.097322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.452605, 17.664337, 9.998384>,  <15.755573, 17.866871, 9.833488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.452605, 17.664337, 9.998384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177043, 0.448453, 0.876096,
		-0.628466, 0.736558, -0.250025,
		-0.757420, -0.506332, 0.412241,
		15.225379, 17.512438, 10.122056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306753, 18.387169, 10.155595>,  <15.755573, 17.866871, 9.833488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306753, 18.387169, 10.155595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.289626, 18.029640, 10.334144>,  <15.279350, 17.815123, 10.441273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.289626, 18.029640, 10.334144>,  <15.306753, 18.387169, 10.155595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289626, 18.029640, 10.334144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372532, 0.400277, 0.837256,
		-0.927031, 0.202138, 0.315839,
		-0.042818, -0.893822, 0.446372,
		15.276781, 17.761494, 10.468056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074202, 18.523632, 10.854001>,  <15.306753, 18.387169, 10.155595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074202, 18.523632, 10.854001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.216357, 18.149830, 10.861959>,  <15.301651, 17.925549, 10.866734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.216357, 18.149830, 10.861959>,  <15.074202, 18.523632, 10.854001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216357, 18.149830, 10.861959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473631, 0.198388, 0.858088,
		-0.805836, -0.295533, 0.513117,
		0.355390, -0.934506, 0.019895,
		15.322974, 17.869478, 10.867927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894917, 18.284037, 11.523516>,  <15.074202, 18.523632, 10.854001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894917, 18.284037, 11.523516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.187175, 18.040791, 11.399354>,  <15.362530, 17.894842, 11.324857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.187175, 18.040791, 11.399354>,  <14.894917, 18.284037, 11.523516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187175, 18.040791, 11.399354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409101, 0.025953, 0.912120,
		-0.546618, -0.793424, 0.267743,
		0.730647, -0.608116, -0.310404,
		15.406369, 17.858356, 11.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091270, 17.639490, 12.007246>,  <14.894917, 18.284037, 11.523516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091270, 17.639490, 12.007246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.430049, 17.724648, 11.812368>,  <15.633316, 17.775742, 11.695441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.430049, 17.724648, 11.812368>,  <15.091270, 17.639490, 12.007246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430049, 17.724648, 11.812368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516277, -0.110349, 0.849283,
		0.127048, -0.970823, -0.203373,
		0.846946, 0.212897, -0.487195,
		15.684133, 17.788517, 11.666210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503265, 17.268013, 12.300578>,  <15.091270, 17.639490, 12.007246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503265, 17.268013, 12.300578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.767201, 17.520073, 12.136860>,  <15.925563, 17.671309, 12.038629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.767201, 17.520073, 12.136860>,  <15.503265, 17.268013, 12.300578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.767201, 17.520073, 12.136860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594298, -0.104339, 0.797448,
		0.459807, -0.769431, -0.443343,
		0.659840, 0.630150, -0.409296,
		15.965154, 17.709118, 12.014071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269842, 17.041498, 12.513665>,  <15.503265, 17.268013, 12.300578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269842, 17.041498, 12.513665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300529, 17.419987, 12.387950>,  <16.318941, 17.647079, 12.312521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300529, 17.419987, 12.387950>,  <16.269842, 17.041498, 12.513665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300529, 17.419987, 12.387950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731990, 0.160576, 0.662122,
		0.676982, -0.280852, -0.680307,
		0.076717, 0.946223, -0.314288,
		16.323545, 17.703854, 12.293664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980230, 17.206142, 12.645685>,  <16.269842, 17.041498, 12.513665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980230, 17.206142, 12.645685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.837051, 17.574154, 12.581902>,  <16.751144, 17.794960, 12.543632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.837051, 17.574154, 12.581902>,  <16.980230, 17.206142, 12.645685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837051, 17.574154, 12.581902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700858, 0.377565, 0.605180,
		0.616987, 0.104863, -0.779956,
		-0.357945, 0.920026, -0.159458,
		16.729668, 17.850163, 12.534064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542789, 17.584782, 12.623518>,  <16.980230, 17.206142, 12.645685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.542789, 17.584782, 12.623518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.246269, 17.831226, 12.730013>,  <17.068357, 17.979094, 12.793910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.246269, 17.831226, 12.730013>,  <17.542789, 17.584782, 12.623518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246269, 17.831226, 12.730013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613555, 0.461263, 0.640926,
		0.272077, 0.638469, -0.719952,
		-0.741299, 0.616111, 0.266237,
		17.023880, 18.016060, 12.809884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895361, 18.260321, 12.758406>,  <17.542789, 17.584782, 12.623518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895361, 18.260321, 12.758406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.539322, 18.301579, 12.935984>,  <17.325699, 18.326334, 13.042530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.539322, 18.301579, 12.935984>,  <17.895361, 18.260321, 12.758406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.539322, 18.301579, 12.935984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443146, 0.423515, 0.790099,
		-0.106522, 0.899998, -0.422679,
		-0.890098, 0.103145, 0.443944,
		17.272293, 18.332521, 13.069167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882206, 18.910294, 13.040857>,  <17.895361, 18.260321, 12.758406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882206, 18.910294, 13.040857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.602699, 18.712105, 13.247248>,  <17.434996, 18.593191, 13.371082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.602699, 18.712105, 13.247248>,  <17.882206, 18.910294, 13.040857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602699, 18.712105, 13.247248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366934, 0.370915, 0.853101,
		-0.614072, 0.785448, -0.077377,
		-0.698766, -0.495473, 0.515976,
		17.393070, 18.563463, 13.402040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738249, 19.329397, 13.522941>,  <17.882206, 18.910294, 13.040857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738249, 19.329397, 13.522941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.602608, 18.979790, 13.662140>,  <17.521223, 18.770025, 13.745659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.602608, 18.979790, 13.662140>,  <17.738249, 19.329397, 13.522941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602608, 18.979790, 13.662140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670625, 0.034836, 0.740978,
		-0.659751, 0.484644, 0.574325,
		-0.339104, -0.874018, 0.347997,
		17.500877, 18.717585, 13.766539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.833227, 20.088671, 13.704906>,  <17.738249, 19.329397, 13.522941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.833227, 20.088671, 13.704906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.169315, 20.272198, 13.589310>,  <18.370968, 20.382315, 13.519952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.169315, 20.272198, 13.589310>,  <17.833227, 20.088671, 13.704906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169315, 20.272198, 13.589310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387188, 0.134529, -0.912134,
		-0.379625, 0.878287, 0.290683,
		0.840221, 0.458817, -0.288991,
		18.421381, 20.409843, 13.502612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644253, 20.674534, 13.262148>,  <17.833227, 20.088671, 13.704906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644253, 20.674534, 13.262148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.019981, 20.582535, 13.160347>,  <18.245419, 20.527334, 13.099267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.019981, 20.582535, 13.160347>,  <17.644253, 20.674534, 13.262148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019981, 20.582535, 13.160347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276626, -0.069151, -0.958486,
		0.202852, 0.970731, -0.128579,
		0.939324, -0.229999, -0.254502,
		18.301779, 20.513535, 13.083997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.782501, 21.122625, 12.734848>,  <17.644253, 20.674534, 13.262148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.782501, 21.122625, 12.734848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046135, 20.824432, 12.695119>,  <18.204315, 20.645517, 12.671282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046135, 20.824432, 12.695119>,  <17.782501, 21.122625, 12.734848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046135, 20.824432, 12.695119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198510, -0.045061, -0.979062,
		0.725396, 0.665003, -0.177684,
		0.659086, -0.745480, -0.099323,
		18.243860, 20.600788, 12.665322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178993, 21.397837, 12.183118>,  <17.782501, 21.122625, 12.734848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178993, 21.397837, 12.183118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.219006, 21.000641, 12.208318>,  <18.243013, 20.762323, 12.223437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.219006, 21.000641, 12.208318>,  <18.178993, 21.397837, 12.183118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219006, 21.000641, 12.208318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012169, -0.062091, -0.997996,
		0.994910, 0.100596, 0.005873,
		0.100030, -0.992988, 0.062999,
		18.249014, 20.702744, 12.227218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665007, 21.217506, 11.723407>,  <18.178993, 21.397837, 12.183118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665007, 21.217506, 11.723407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.466999, 20.870945, 11.749651>,  <18.348194, 20.663008, 11.765398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.466999, 20.870945, 11.749651>,  <18.665007, 21.217506, 11.723407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466999, 20.870945, 11.749651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143494, -0.155993, -0.977280,
		0.856952, -0.474356, 0.201543,
		-0.495018, -0.866402, 0.065611,
		18.318493, 20.611025, 11.769334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.966177, 20.794878, 11.239647>,  <18.665007, 21.217506, 11.723407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.966177, 20.794878, 11.239647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631500, 20.591869, 11.321980>,  <18.430695, 20.470064, 11.371379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631500, 20.591869, 11.321980>,  <18.966177, 20.794878, 11.239647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631500, 20.591869, 11.321980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033118, -0.328256, -0.944008,
		0.546670, -0.796662, 0.257841,
		-0.836693, -0.507522, 0.205832,
		18.380493, 20.439613, 11.383729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067223, 20.232746, 10.827294>,  <18.966177, 20.794878, 11.239647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067223, 20.232746, 10.827294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.679707, 20.282150, 10.913267>,  <18.447197, 20.311792, 10.964850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.679707, 20.282150, 10.913267>,  <19.067223, 20.232746, 10.827294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679707, 20.282150, 10.913267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236995, -0.207239, -0.949150,
		-0.072687, -0.970462, 0.230041,
		-0.968788, 0.123510, 0.214931,
		18.389071, 20.319202, 10.977746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716070, 19.684917, 10.411116>,  <19.067223, 20.232746, 10.827294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716070, 19.684917, 10.411116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.439972, 19.951763, 10.523203>,  <18.274313, 20.111870, 10.590455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.439972, 19.951763, 10.523203>,  <18.716070, 19.684917, 10.411116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439972, 19.951763, 10.523203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570233, -0.263126, -0.778202,
		-0.445416, -0.696940, 0.562032,
		-0.690245, 0.667113, 0.280218,
		18.232899, 20.151897, 10.607268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062084, 19.324350, 10.319394>,  <18.716070, 19.684917, 10.411116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062084, 19.324350, 10.319394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982597, 19.716084, 10.304314>,  <17.934906, 19.951122, 10.295265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.982597, 19.716084, 10.304314>,  <18.062084, 19.324350, 10.319394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982597, 19.716084, 10.304314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631414, -0.157350, -0.759314,
		-0.749552, -0.127083, 0.649631,
		-0.198715, 0.979332, -0.037700,
		17.922983, 20.009884, 10.293004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312700, 19.371021, 10.203254>,  <18.062084, 19.324350, 10.319394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312700, 19.371021, 10.203254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.471294, 19.732338, 10.137694>,  <17.566452, 19.949127, 10.098359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.471294, 19.732338, 10.137694>,  <17.312700, 19.371021, 10.203254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471294, 19.732338, 10.137694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509346, 0.067912, -0.857878,
		-0.763783, 0.423618, 0.487014,
		0.396486, 0.903292, -0.163899,
		17.590240, 20.003326, 10.088525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842976, 19.751848, 9.958118>,  <17.312700, 19.371021, 10.203254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842976, 19.751848, 9.958118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.163742, 19.946739, 9.819818>,  <17.356201, 20.063675, 9.736838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.163742, 19.946739, 9.819818>,  <16.842976, 19.751848, 9.958118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163742, 19.946739, 9.819818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389723, -0.012027, -0.920854,
		-0.452825, 0.873191, 0.180239,
		0.801914, 0.487229, -0.345749,
		17.404316, 20.092907, 9.716094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.655073, 20.349913, 9.638618>,  <16.842976, 19.751848, 9.958118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.655073, 20.349913, 9.638618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019344, 20.297157, 9.482019>,  <17.237907, 20.265505, 9.388061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.019344, 20.297157, 9.482019>,  <16.655073, 20.349913, 9.638618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019344, 20.297157, 9.482019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408161, -0.140937, -0.901965,
		0.063780, 0.981195, -0.182180,
		0.910679, -0.131886, -0.391496,
		17.292547, 20.257591, 9.364571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.602156, 20.633396, 8.903391>,  <16.655073, 20.349913, 9.638618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.602156, 20.633396, 8.903391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943737, 20.425346, 8.897243>,  <17.148685, 20.300516, 8.893555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.943737, 20.425346, 8.897243>,  <16.602156, 20.633396, 8.903391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943737, 20.425346, 8.897243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168156, -0.247889, -0.954083,
		0.492431, 0.817326, -0.299148,
		0.853953, -0.520124, -0.015369,
		17.199923, 20.269310, 8.892632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129099, 20.874235, 8.298295>,  <16.602156, 20.633396, 8.903391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129099, 20.874235, 8.298295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.197552, 20.497520, 8.414054>,  <17.238623, 20.271492, 8.483509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.197552, 20.497520, 8.414054>,  <17.129099, 20.874235, 8.298295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197552, 20.497520, 8.414054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045759, -0.301012, -0.952522,
		0.984185, 0.149763, -0.094608,
		0.171131, -0.941787, 0.289398,
		17.248890, 20.214985, 8.500874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.990480, 21.670731, 8.229022>,  <17.129099, 20.874235, 8.298295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.990480, 21.670731, 8.229022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.837204, 21.680256, 7.859677>,  <16.745239, 21.685970, 7.638070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.837204, 21.680256, 7.859677>,  <16.990480, 21.670731, 8.229022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837204, 21.680256, 7.859677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257283, 0.962856, -0.081942,
		0.887114, -0.268965, -0.375082,
		-0.383190, 0.023811, -0.923363,
		16.722246, 21.687399, 7.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451635, 22.185160, 8.026803>,  <16.990480, 21.670731, 8.229022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451635, 22.185160, 8.026803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.119179, 21.962864, 8.019235>,  <15.919705, 21.829487, 8.014694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.119179, 21.962864, 8.019235>,  <16.451635, 22.185160, 8.026803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119179, 21.962864, 8.019235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342148, 0.484286, 0.805234,
		-0.438339, 0.675736, -0.592655,
		-0.831140, -0.555741, -0.018920,
		15.869837, 21.796143, 8.013558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746339, 22.573429, 7.973716>,  <16.451635, 22.185160, 8.026803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746339, 22.573429, 7.973716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.688205, 22.224461, 8.160375>,  <15.653324, 22.015079, 8.272370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.688205, 22.224461, 8.160375>,  <15.746339, 22.573429, 7.973716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688205, 22.224461, 8.160375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253829, 0.488747, 0.834684,
		-0.956268, 0.002859, -0.292478,
		-0.145334, -0.872421, 0.466647,
		15.644605, 21.962734, 8.300369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203617, 22.829947, 8.550671>,  <15.746339, 22.573429, 7.973716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203617, 22.829947, 8.550671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364886, 22.481667, 8.663335>,  <15.461648, 22.272699, 8.730933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364886, 22.481667, 8.663335>,  <15.203617, 22.829947, 8.550671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364886, 22.481667, 8.663335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065803, 0.334572, 0.940070,
		-0.912755, -0.360477, 0.192185,
		0.403174, -0.870700, 0.281661,
		15.485838, 22.220457, 8.747833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826056, 22.595491, 9.170237>,  <15.203617, 22.829947, 8.550671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826056, 22.595491, 9.170237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.168044, 22.388187, 9.178596>,  <15.373237, 22.263805, 9.183612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.168044, 22.388187, 9.178596>,  <14.826056, 22.595491, 9.170237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168044, 22.388187, 9.178596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248944, 0.445361, 0.860047,
		-0.455035, -0.730110, 0.509787,
		0.854968, -0.518260, 0.020899,
		15.424535, 22.232710, 9.184866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888952, 22.459991, 9.818460>,  <14.826056, 22.595491, 9.170237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888952, 22.459991, 9.818460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.263589, 22.393089, 9.695286>,  <15.488371, 22.352949, 9.621382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.263589, 22.393089, 9.695286>,  <14.888952, 22.459991, 9.818460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263589, 22.393089, 9.695286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348042, 0.341700, 0.872988,
		-0.040790, -0.924806, 0.378245,
		0.936591, -0.167254, -0.307934,
		15.544566, 22.342913, 9.602905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197863, 22.120598, 10.328880>,  <14.888952, 22.459991, 9.818460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197863, 22.120598, 10.328880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.494592, 22.292625, 10.123069>,  <15.672629, 22.395842, 9.999582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.494592, 22.292625, 10.123069>,  <15.197863, 22.120598, 10.328880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494592, 22.292625, 10.123069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375116, 0.369877, 0.849988,
		0.555868, -0.823547, 0.113055,
		0.741821, 0.430072, -0.514528,
		15.717138, 22.421646, 9.968710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818547, 21.972519, 10.665953>,  <15.197863, 22.120598, 10.328880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818547, 21.972519, 10.665953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.907222, 22.277386, 10.422657>,  <15.960426, 22.460306, 10.276680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.907222, 22.277386, 10.422657>,  <15.818547, 21.972519, 10.665953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907222, 22.277386, 10.422657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477372, 0.459075, 0.749243,
		0.850277, -0.456453, -0.262067,
		0.221686, 0.762168, -0.608239,
		15.973727, 22.506037, 10.240185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.492764, 21.963806, 10.726209>,  <15.818547, 21.972519, 10.665953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.492764, 21.963806, 10.726209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.383907, 22.330463, 10.609109>,  <16.318594, 22.550459, 10.538849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.383907, 22.330463, 10.609109>,  <16.492764, 21.963806, 10.726209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383907, 22.330463, 10.609109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598987, 0.399474, 0.693999,
		0.753096, 0.013512, -0.657772,
		-0.272141, 0.916645, -0.292749,
		16.302265, 22.605457, 10.521284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107311, 22.270840, 10.676436>,  <16.492764, 21.963806, 10.726209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107311, 22.270840, 10.676436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.831306, 22.559044, 10.703984>,  <16.665703, 22.731966, 10.720512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.831306, 22.559044, 10.703984>,  <17.107311, 22.270840, 10.676436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.831306, 22.559044, 10.703984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532523, 0.440922, 0.722501,
		0.490205, 0.535210, -0.687932,
		-0.690013, 0.720513, 0.068869,
		16.624302, 22.775198, 10.724645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516909, 22.789808, 10.882500>,  <17.107311, 22.270840, 10.676436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516909, 22.789808, 10.882500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.139301, 22.892223, 10.965713>,  <16.912737, 22.953672, 11.015640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.139301, 22.892223, 10.965713>,  <17.516909, 22.789808, 10.882500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139301, 22.892223, 10.965713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304432, 0.433165, 0.848345,
		0.127097, 0.864183, -0.486861,
		-0.944017, 0.256038, 0.208031,
		16.856096, 22.969034, 11.028122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619261, 23.331245, 11.251354>,  <17.516909, 22.789808, 10.882500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619261, 23.331245, 11.251354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.263348, 23.190945, 11.368150>,  <17.049799, 23.106764, 11.438227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.263348, 23.190945, 11.368150>,  <17.619261, 23.331245, 11.251354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.263348, 23.190945, 11.368150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248979, 0.163124, 0.954673,
		-0.382485, 0.922151, -0.057815,
		-0.889784, -0.350753, 0.291989,
		16.996412, 23.085718, 11.455747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470034, 23.777617, 11.768532>,  <17.619261, 23.331245, 11.251354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470034, 23.777617, 11.768532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.172428, 23.517590, 11.830310>,  <16.993864, 23.361572, 11.867376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.172428, 23.517590, 11.830310>,  <17.470034, 23.777617, 11.768532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.172428, 23.517590, 11.830310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154222, 0.057828, 0.986342,
		-0.650122, 0.757672, 0.057230,
		-0.744014, -0.650069, 0.154445,
		16.949224, 23.322569, 11.876643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941513, 24.031681, 12.296596>,  <17.470034, 23.777617, 11.768532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941513, 24.031681, 12.296596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.899986, 23.633869, 12.291969>,  <16.875071, 23.395182, 12.289193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.899986, 23.633869, 12.291969>,  <16.941513, 24.031681, 12.296596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899986, 23.633869, 12.291969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133528, 0.002413, 0.991042,
		-0.985592, 0.104432, -0.133048,
		-0.103818, -0.994529, -0.011567,
		16.868841, 23.335510, 12.288499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319872, 23.919838, 12.669808>,  <16.941513, 24.031681, 12.296596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319872, 23.919838, 12.669808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.534210, 23.582790, 12.691200>,  <16.662813, 23.380562, 12.704036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.534210, 23.582790, 12.691200>,  <16.319872, 23.919838, 12.669808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534210, 23.582790, 12.691200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040382, 0.037692, 0.998473,
		-0.843349, -0.537188, -0.013830,
		0.535846, -0.842620, 0.053481,
		16.694963, 23.330004, 12.707245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865289, 23.504684, 13.082196>,  <16.319872, 23.919838, 12.669808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865289, 23.504684, 13.082196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211304, 23.305580, 13.107321>,  <16.418913, 23.186117, 13.122396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.211304, 23.305580, 13.107321>,  <15.865289, 23.504684, 13.082196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211304, 23.305580, 13.107321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076861, -0.007763, 0.997012,
		-0.495786, -0.867279, -0.044974,
		0.865037, -0.497761, 0.062811,
		16.470816, 23.156252, 13.126164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825261, 23.018459, 13.545557>,  <15.865289, 23.504684, 13.082196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825261, 23.018459, 13.545557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.224274, 23.024723, 13.518175>,  <16.463680, 23.028481, 13.501746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.224274, 23.024723, 13.518175>,  <15.825261, 23.018459, 13.545557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224274, 23.024723, 13.518175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070193, -0.194172, 0.978453,
		0.002030, -0.980843, -0.194792,
		0.997532, 0.015659, -0.068454,
		16.523533, 23.029421, 13.497639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024492, 22.461124, 14.010655>,  <15.825261, 23.018459, 13.545557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024492, 22.461124, 14.010655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.342976, 22.697617, 13.959278>,  <16.534065, 22.839512, 13.928452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.342976, 22.697617, 13.959278>,  <16.024492, 22.461124, 14.010655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342976, 22.697617, 13.959278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222396, -0.088569, 0.970925,
		0.562666, -0.801623, -0.202007,
		0.796208, 0.591232, -0.128443,
		16.581839, 22.874987, 13.920745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538490, 22.214901, 14.324961>,  <16.024492, 22.461124, 14.010655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538490, 22.214901, 14.324961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.671970, 22.591850, 14.315348>,  <16.752060, 22.818020, 14.309580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.671970, 22.591850, 14.315348>,  <16.538490, 22.214901, 14.324961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671970, 22.591850, 14.315348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314030, -0.087092, 0.945410,
		0.888835, -0.323032, -0.324996,
		0.333703, 0.942372, -0.024032,
		16.772081, 22.874561, 14.308138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154312, 22.253944, 14.857433>,  <16.538490, 22.214901, 14.324961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154312, 22.253944, 14.857433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.037109, 22.631699, 14.797720>,  <16.966787, 22.858351, 14.761891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.037109, 22.631699, 14.797720>,  <17.154312, 22.253944, 14.857433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037109, 22.631699, 14.797720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037805, 0.167459, 0.985154,
		0.955362, 0.283015, -0.084770,
		-0.293009, 0.944383, -0.149284,
		16.949207, 22.915014, 14.752934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623026, 22.676331, 15.231584>,  <17.154312, 22.253944, 14.857433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623026, 22.676331, 15.231584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.283680, 22.883350, 15.187004>,  <17.080072, 23.007563, 15.160256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.283680, 22.883350, 15.187004>,  <17.623026, 22.676331, 15.231584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283680, 22.883350, 15.187004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009245, 0.196000, 0.980560,
		0.529334, 0.832902, -0.161494,
		-0.848363, 0.517551, -0.111450,
		17.029171, 23.038616, 15.153569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699404, 23.371355, 15.456392>,  <17.623026, 22.676331, 15.231584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699404, 23.371355, 15.456392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.302151, 23.330494, 15.479206>,  <17.063799, 23.305977, 15.492894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.302151, 23.330494, 15.479206>,  <17.699404, 23.371355, 15.456392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302151, 23.330494, 15.479206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009273, 0.417238, 0.908750,
		-0.116627, 0.903038, -0.413425,
		-0.993132, -0.102151, 0.057035,
		17.004211, 23.299849, 15.496317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496403, 23.986687, 15.742002>,  <17.699404, 23.371355, 15.456392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496403, 23.986687, 15.742002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174908, 23.754536, 15.794415>,  <16.982010, 23.615246, 15.825862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174908, 23.754536, 15.794415>,  <17.496403, 23.986687, 15.742002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174908, 23.754536, 15.794415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128712, 0.384613, 0.914060,
		-0.580896, 0.717799, -0.383829,
		-0.803737, -0.580377, 0.131031,
		16.933786, 23.580423, 15.833724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899878, 24.421446, 15.954985>,  <17.496403, 23.986687, 15.742002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899878, 24.421446, 15.954985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.809914, 24.049603, 16.071774>,  <16.755936, 23.826496, 16.141848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.809914, 24.049603, 16.071774>,  <16.899878, 24.421446, 15.954985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809914, 24.049603, 16.071774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082650, 0.316770, 0.944894,
		-0.970868, 0.188382, -0.148076,
		-0.224908, -0.929607, 0.291973,
		16.742441, 23.770721, 16.159365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350910, 24.472208, 16.388588>,  <16.899878, 24.421446, 15.954985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350910, 24.472208, 16.388588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.473904, 24.107529, 16.497589>,  <16.547699, 23.888721, 16.562990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.473904, 24.107529, 16.497589>,  <16.350910, 24.472208, 16.388588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.473904, 24.107529, 16.497589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022259, 0.293190, 0.955795,
		-0.951293, -0.287826, 0.110444,
		0.307484, -0.911700, 0.272503,
		16.566149, 23.834019, 16.579340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007372, 24.345619, 16.998856>,  <16.350910, 24.472208, 16.388588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.007372, 24.345619, 16.998856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295341, 24.072937, 17.050991>,  <16.468122, 23.909328, 17.082273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.295341, 24.072937, 17.050991>,  <16.007372, 24.345619, 16.998856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295341, 24.072937, 17.050991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006824, 0.194740, 0.980831,
		-0.694020, -0.705234, 0.144849,
		0.719923, -0.681705, 0.130341,
		16.511318, 23.868425, 17.090094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.762839, 23.920221, 17.646355>,  <16.007372, 24.345619, 16.998856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.762839, 23.920221, 17.646355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.153873, 23.843849, 17.610867>,  <16.388494, 23.798025, 17.589573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.153873, 23.843849, 17.610867>,  <15.762839, 23.920221, 17.646355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153873, 23.843849, 17.610867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090186, -0.001016, 0.995924,
		-0.190245, -0.981603, 0.016226,
		0.977585, -0.190933, -0.088720,
		16.447149, 23.786570, 17.584251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924521, 23.293478, 18.188560>,  <15.762839, 23.920221, 17.646355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924521, 23.293478, 18.188560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.262112, 23.491596, 18.106207>,  <16.464666, 23.610468, 18.056795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.262112, 23.491596, 18.106207>,  <15.924521, 23.293478, 18.188560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262112, 23.491596, 18.106207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123028, 0.194852, 0.973086,
		0.522082, -0.846590, 0.103515,
		0.843975, 0.495296, -0.205883,
		16.515305, 23.640184, 18.044441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769457, 22.554173, 18.391108>,  <15.924521, 23.293478, 18.188560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769457, 22.554173, 18.391108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.405158, 22.641312, 18.531439>,  <15.186579, 22.693596, 18.615639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.405158, 22.641312, 18.531439>,  <15.769457, 22.554173, 18.391108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.405158, 22.641312, 18.531439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389836, -0.173217, -0.904447,
		-0.136263, -0.960488, 0.242682,
		-0.910747, 0.217849, 0.350829,
		15.131934, 22.706667, 18.636688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326752, 21.978712, 18.278639>,  <15.769457, 22.554173, 18.391108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326752, 21.978712, 18.278639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.070020, 22.280270, 18.334778>,  <14.915980, 22.461205, 18.368462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.070020, 22.280270, 18.334778>,  <15.326752, 21.978712, 18.278639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070020, 22.280270, 18.334778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483772, -0.256058, -0.836898,
		-0.594996, -0.605042, 0.529059,
		-0.641828, 0.753895, 0.140349,
		14.877471, 22.506437, 18.376883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707433, 21.771139, 18.253849>,  <15.326752, 21.978712, 18.278639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707433, 21.771139, 18.253849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638331, 22.155727, 18.168314>,  <14.596870, 22.386480, 18.116993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.638331, 22.155727, 18.168314>,  <14.707433, 21.771139, 18.253849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638331, 22.155727, 18.168314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500739, -0.272683, -0.821526,
		-0.848184, -0.034845, 0.528554,
		-0.172754, 0.961473, -0.213837,
		14.586505, 22.444170, 18.104162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.067032, 21.762636, 18.094702>,  <14.707433, 21.771139, 18.253849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.067032, 21.762636, 18.094702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.188693, 22.115726, 17.951435>,  <14.261689, 22.327581, 17.865475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.188693, 22.115726, 17.951435>,  <14.067032, 21.762636, 18.094702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.188693, 22.115726, 17.951435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464663, -0.190749, -0.864698,
		-0.831613, 0.429427, 0.352154,
		0.304152, 0.882727, -0.358168,
		14.279939, 22.380545, 17.843985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421298, 22.025805, 17.718534>,  <14.067032, 21.762636, 18.094702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421298, 22.025805, 17.718534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.753415, 22.221886, 17.612467>,  <13.952685, 22.339535, 17.548826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.753415, 22.221886, 17.612467>,  <13.421298, 22.025805, 17.718534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753415, 22.221886, 17.612467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365622, 0.120001, -0.922995,
		-0.420634, 0.863308, 0.278865,
		0.830293, 0.490203, -0.265168,
		14.002503, 22.368946, 17.532917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
