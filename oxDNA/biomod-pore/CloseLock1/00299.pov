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
	<24.050108, 34.696850, 34.706127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329090, 34.944191, 34.851009>,  <24.496479, 35.092594, 34.937939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.329090, 34.944191, 34.851009>,  <24.050108, 34.696850, 34.706127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.329090, 34.944191, 34.851009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660160, -0.751045, 0.010977,
		0.278823, 0.231460, -0.932032,
		0.697457, 0.618350, 0.362210,
		24.538328, 35.129696, 34.959671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654606, 34.606697, 34.279125>,  <24.050108, 34.696850, 34.706127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654606, 34.606697, 34.279125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783470, 34.734943, 34.635422>,  <24.860788, 34.811893, 34.849197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783470, 34.734943, 34.635422>,  <24.654606, 34.606697, 34.279125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783470, 34.734943, 34.635422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725442, -0.688126, -0.014686,
		0.608233, 0.650911, -0.454277,
		0.322159, 0.320619, 0.890740,
		24.880117, 34.831131, 34.902645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397640, 34.712654, 34.200672>,  <24.654606, 34.606697, 34.279125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397640, 34.712654, 34.200672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281229, 34.655251, 34.579029>,  <25.211382, 34.620808, 34.806042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281229, 34.655251, 34.579029>,  <25.397640, 34.712654, 34.200672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281229, 34.655251, 34.579029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704380, -0.701195, 0.110337,
		0.647419, 0.698377, 0.305151,
		-0.291028, -0.143508, 0.945890,
		25.193920, 34.612198, 34.862797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915646, 34.739620, 34.758873>,  <25.397640, 34.712654, 34.200672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915646, 34.739620, 34.758873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609524, 34.489666, 34.820606>,  <25.425850, 34.339691, 34.857647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609524, 34.489666, 34.820606>,  <25.915646, 34.739620, 34.758873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609524, 34.489666, 34.820606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643253, -0.733915, 0.218164,
		-0.023060, 0.266238, 0.963632,
		-0.765307, -0.624889, 0.154334,
		25.379932, 34.302200, 34.866905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891060, 34.411694, 35.468758>,  <25.915646, 34.739620, 34.758873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891060, 34.411694, 35.468758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722725, 34.175003, 35.193726>,  <25.621723, 34.032990, 35.028706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722725, 34.175003, 35.193726>,  <25.891060, 34.411694, 35.468758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722725, 34.175003, 35.193726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694895, -0.697505, 0.174951,
		-0.583110, -0.404167, 0.704720,
		-0.420837, -0.591722, -0.687576,
		25.596474, 33.997486, 34.987453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222912, 33.699841, 35.608978>,  <25.891060, 34.411694, 35.468758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222912, 33.699841, 35.608978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576626, 33.548931, 35.498917>,  <26.788855, 33.458385, 35.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576626, 33.548931, 35.498917>,  <26.222912, 33.699841, 35.608978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576626, 33.548931, 35.498917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449425, -0.847562, -0.282235,
		-0.126735, 0.373238, -0.919038,
		0.884283, -0.377270, -0.275158,
		26.841911, 33.435749, 35.416370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075312, 33.254021, 34.993900>,  <26.222912, 33.699841, 35.608978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075312, 33.254021, 34.993900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443050, 33.160130, 35.120201>,  <26.663694, 33.103794, 35.195980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443050, 33.160130, 35.120201>,  <26.075312, 33.254021, 34.993900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443050, 33.160130, 35.120201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133422, -0.940980, -0.311055,
		0.370129, 0.243840, -0.896407,
		0.919349, -0.234731, 0.315751,
		26.718855, 33.089710, 35.214928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380262, 32.967083, 34.425335>,  <26.075312, 33.254021, 34.993900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380262, 32.967083, 34.425335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561720, 32.838684, 34.757881>,  <26.670595, 32.761646, 34.957409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561720, 32.838684, 34.757881>,  <26.380262, 32.967083, 34.425335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561720, 32.838684, 34.757881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267788, -0.938866, -0.216381,
		0.849997, -0.124470, -0.511871,
		0.453646, -0.320996, 0.831365,
		26.697813, 32.742386, 35.007290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765867, 32.441124, 34.217411>,  <26.380262, 32.967083, 34.425335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765867, 32.441124, 34.217411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766180, 32.359310, 34.608955>,  <26.766367, 32.310223, 34.843884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766180, 32.359310, 34.608955>,  <26.765867, 32.441124, 34.217411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766180, 32.359310, 34.608955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196673, -0.959773, -0.200386,
		0.980469, -0.192359, -0.040974,
		0.000780, -0.204531, 0.978860,
		26.766415, 32.297951, 34.902615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267746, 32.025223, 34.361454>,  <26.765867, 32.441124, 34.217411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267746, 32.025223, 34.361454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995750, 31.959881, 34.647373>,  <26.832554, 31.920675, 34.818924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995750, 31.959881, 34.647373>,  <27.267746, 32.025223, 34.361454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995750, 31.959881, 34.647373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070427, -0.955806, -0.285438,
		0.729833, -0.244435, 0.638432,
		-0.679988, -0.163359, 0.714794,
		26.791754, 31.910873, 34.861813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456690, 31.347609, 34.548786>,  <27.267746, 32.025223, 34.361454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456690, 31.347609, 34.548786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096569, 31.409201, 34.711636>,  <26.880497, 31.446156, 34.809345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096569, 31.409201, 34.711636>,  <27.456690, 31.347609, 34.548786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096569, 31.409201, 34.711636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331869, -0.848040, -0.413148,
		0.281638, -0.507068, 0.814593,
		-0.900302, 0.153980, 0.407120,
		26.826479, 31.455395, 34.833771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309519, 30.783314, 34.927021>,  <27.456690, 31.347609, 34.548786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309519, 30.783314, 34.927021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939344, 30.934803, 34.922333>,  <26.717239, 31.025696, 34.919521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939344, 30.934803, 34.922333>,  <27.309519, 30.783314, 34.927021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939344, 30.934803, 34.922333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354483, -0.876302, -0.326247,
		-0.133824, -0.297767, 0.945212,
		-0.925437, 0.378721, -0.011717,
		26.661713, 31.048420, 34.918819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812391, 30.425680, 35.382526>,  <27.309519, 30.783314, 34.927021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812391, 30.425680, 35.382526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621544, 30.575752, 35.064636>,  <26.507034, 30.665796, 34.873901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621544, 30.575752, 35.064636>,  <26.812391, 30.425680, 35.382526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621544, 30.575752, 35.064636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317116, -0.916870, -0.242461,
		-0.819629, 0.136338, 0.556435,
		-0.477121, 0.375183, -0.794728,
		26.478407, 30.688307, 34.826218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164560, 30.193823, 35.479126>,  <26.812391, 30.425680, 35.382526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164560, 30.193823, 35.479126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167971, 30.322521, 35.100410>,  <26.170017, 30.399740, 34.873180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167971, 30.322521, 35.100410>,  <26.164560, 30.193823, 35.479126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167971, 30.322521, 35.100410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496656, -0.820420, -0.283273,
		-0.867905, 0.472642, 0.152804,
		0.008524, 0.321745, -0.946787,
		26.170528, 30.419044, 34.816376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505013, 30.149710, 35.183067>,  <26.164560, 30.193823, 35.479126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505013, 30.149710, 35.183067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741867, 30.150345, 34.860733>,  <25.883980, 30.150726, 34.667332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741867, 30.150345, 34.860733>,  <25.505013, 30.149710, 35.183067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741867, 30.150345, 34.860733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492407, -0.790876, -0.363388,
		-0.637893, 0.611974, -0.467526,
		0.592139, 0.001590, -0.805834,
		25.919508, 30.150822, 34.618984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185604, 29.879280, 34.548058>,  <25.505013, 30.149710, 35.183067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185604, 29.879280, 34.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559359, 29.805189, 34.426327>,  <25.783611, 29.760735, 34.353287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559359, 29.805189, 34.426327>,  <25.185604, 29.879280, 34.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559359, 29.805189, 34.426327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331256, -0.766099, -0.550783,
		-0.131126, 0.615454, -0.777189,
		0.934385, -0.185226, -0.304328,
		25.839674, 29.749620, 34.335030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046169, 29.746876, 33.793625>,  <25.185604, 29.879280, 34.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046169, 29.746876, 33.793625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400913, 29.619980, 33.927990>,  <25.613760, 29.543842, 34.008610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400913, 29.619980, 33.927990>,  <25.046169, 29.746876, 33.793625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400913, 29.619980, 33.927990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108245, -0.849451, -0.516445,
		0.449183, 0.421652, -0.787683,
		0.886858, -0.317241, 0.335917,
		25.666971, 29.524807, 34.028767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105938, 29.133280, 33.394520>,  <25.046169, 29.746876, 33.793625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105938, 29.133280, 33.394520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422867, 29.079845, 33.632641>,  <25.613024, 29.047785, 33.775513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422867, 29.079845, 33.632641>,  <25.105938, 29.133280, 33.394520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422867, 29.079845, 33.632641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, -0.915556, -0.380165,
		0.595815, 0.379356, -0.707879,
		0.792321, -0.133587, 0.595299,
		25.660563, 29.039770, 33.811230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706596, 28.804638, 33.009796>,  <25.105938, 29.133280, 33.394520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706596, 28.804638, 33.009796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793756, 28.706110, 33.387547>,  <25.846052, 28.646994, 33.614197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793756, 28.706110, 33.387547>,  <25.706596, 28.804638, 33.009796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793756, 28.706110, 33.387547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330168, -0.891971, -0.308830,
		0.918427, 0.379097, -0.113034,
		0.217900, -0.246318, 0.944377,
		25.859127, 28.632215, 33.670860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331682, 28.454138, 33.047546>,  <25.706596, 28.804638, 33.009796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331682, 28.454138, 33.047546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217346, 28.337051, 33.412537>,  <26.148745, 28.266800, 33.631531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217346, 28.337051, 33.412537>,  <26.331682, 28.454138, 33.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217346, 28.337051, 33.412537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158436, -0.953536, -0.256255,
		0.945089, 0.071321, 0.318936,
		-0.285841, -0.292715, 0.912476,
		26.131594, 28.249237, 33.686279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683086, 27.899307, 33.137260>,  <26.331682, 28.454138, 33.047546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683086, 27.899307, 33.137260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441275, 27.861616, 33.453655>,  <26.296188, 27.839001, 33.643494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441275, 27.861616, 33.453655>,  <26.683086, 27.899307, 33.137260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441275, 27.861616, 33.453655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216385, -0.975067, 0.049219,
		0.766631, 0.200913, 0.609844,
		-0.604527, -0.094229, 0.790991,
		26.259916, 27.833347, 33.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087494, 27.504620, 33.684521>,  <26.683086, 27.899307, 33.137260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087494, 27.504620, 33.684521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689789, 27.478672, 33.718540>,  <26.451166, 27.463104, 33.738953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689789, 27.478672, 33.718540>,  <27.087494, 27.504620, 33.684521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689789, 27.478672, 33.718540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076162, -0.987629, 0.137075,
		0.075105, 0.142766, 0.986903,
		-0.994263, -0.064869, 0.085049,
		26.391510, 27.459211, 33.744057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871651, 27.097082, 34.301075>,  <27.087494, 27.504620, 33.684521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871651, 27.097082, 34.301075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615007, 27.045824, 33.998573>,  <26.461021, 27.015068, 33.817074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615007, 27.045824, 33.998573>,  <26.871651, 27.097082, 34.301075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615007, 27.045824, 33.998573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189739, -0.981820, 0.005394,
		-0.743195, -0.140030, 0.654257,
		-0.641607, -0.128146, -0.756253,
		26.422525, 27.007380, 33.771698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550278, 26.520786, 34.507042>,  <26.871651, 27.097082, 34.301075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550278, 26.520786, 34.507042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453045, 26.546293, 34.119877>,  <26.394705, 26.561598, 33.887577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453045, 26.546293, 34.119877>,  <26.550278, 26.520786, 34.507042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453045, 26.546293, 34.119877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, -0.997588, -0.055137,
		-0.969090, 0.027406, 0.245182,
		-0.243080, 0.063769, -0.967908,
		26.380121, 26.565424, 33.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001183, 26.136103, 34.398731>,  <26.550278, 26.520786, 34.507042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001183, 26.136103, 34.398731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174017, 26.163843, 34.039066>,  <26.277718, 26.180487, 33.823269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174017, 26.163843, 34.039066>,  <26.001183, 26.136103, 34.398731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174017, 26.163843, 34.039066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166129, -0.973855, -0.154945,
		-0.886400, 0.216327, -0.409266,
		0.432084, 0.069352, -0.899163,
		26.303642, 26.184649, 33.769318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683811, 25.710419, 33.911633>,  <26.001183, 26.136103, 34.398731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683811, 25.710419, 33.911633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043118, 25.724926, 33.736454>,  <26.258701, 25.733629, 33.631348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043118, 25.724926, 33.736454>,  <25.683811, 25.710419, 33.911633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043118, 25.724926, 33.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103517, -0.951082, -0.291079,
		-0.427083, 0.306802, -0.850572,
		0.898268, 0.036266, -0.437950,
		26.312597, 25.735806, 33.605068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685408, 25.566023, 33.152657>,  <25.683811, 25.710419, 33.911633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685408, 25.566023, 33.152657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003000, 25.416309, 33.344284>,  <26.193556, 25.326481, 33.459259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003000, 25.416309, 33.344284>,  <25.685408, 25.566023, 33.152657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003000, 25.416309, 33.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233118, -0.915217, -0.328684,
		0.561469, 0.149291, -0.813919,
		0.793982, -0.374285, 0.479064,
		26.241196, 25.304024, 33.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879345, 25.010427, 32.790272>,  <25.685408, 25.566023, 33.152657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879345, 25.010427, 32.790272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115263, 24.920273, 33.100456>,  <26.256815, 24.866180, 33.286568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115263, 24.920273, 33.100456>,  <25.879345, 25.010427, 32.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115263, 24.920273, 33.100456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379264, -0.925081, 0.019584,
		0.712952, -0.305655, -0.631090,
		0.589796, -0.225387, 0.775462,
		26.292202, 24.852657, 33.333096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141699, 25.088869, 31.926929>,  <25.879345, 25.010427, 32.790272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141699, 25.088869, 31.926929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287727, 24.880625, 32.235653>,  <26.375343, 24.755678, 32.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287727, 24.880625, 32.235653>,  <26.141699, 25.088869, 31.926929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287727, 24.880625, 32.235653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930423, 0.232707, -0.283127,
		-0.032207, 0.821470, 0.569342,
		0.365070, -0.520611, 0.771809,
		26.397249, 24.724442, 32.467197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805426, 25.411383, 32.143688>,  <26.141699, 25.088869, 31.926929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805426, 25.411383, 32.143688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828337, 25.028868, 32.258392>,  <26.842083, 24.799358, 32.327213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828337, 25.028868, 32.258392>,  <26.805426, 25.411383, 32.143688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828337, 25.028868, 32.258392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971692, -0.012545, -0.235916,
		0.229202, 0.292155, 0.928500,
		0.057276, -0.956289, 0.286760,
		26.845520, 24.741982, 32.344421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474392, 25.291420, 32.501499>,  <26.805426, 25.411383, 32.143688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474392, 25.291420, 32.501499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347486, 24.941374, 32.355339>,  <27.271343, 24.731346, 32.267643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347486, 24.941374, 32.355339>,  <27.474392, 25.291420, 32.501499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347486, 24.941374, 32.355339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931044, -0.214178, -0.295441,
		0.180283, -0.433938, 0.882721,
		-0.317262, -0.875115, -0.365403,
		27.252308, 24.678839, 32.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999281, 24.690516, 32.396626>,  <27.474392, 25.291420, 32.501499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999281, 24.690516, 32.396626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898464, 24.356350, 32.591995>,  <27.837975, 24.155851, 32.709217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898464, 24.356350, 32.591995>,  <27.999281, 24.690516, 32.396626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898464, 24.356350, 32.591995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504006, 0.317542, 0.803209,
		-0.826107, 0.448612, 0.341020,
		-0.252041, -0.835413, 0.488426,
		27.822851, 24.105726, 32.738522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595991, 24.821270, 33.049347>,  <27.999281, 24.690516, 32.396626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595991, 24.821270, 33.049347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806770, 24.483530, 33.088135>,  <27.933237, 24.280886, 33.111408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806770, 24.483530, 33.088135>,  <27.595991, 24.821270, 33.049347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806770, 24.483530, 33.088135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375353, 0.333572, 0.864777,
		-0.762521, -0.419292, 0.492703,
		0.526946, -0.844348, 0.096973,
		27.964855, 24.230225, 33.117226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503231, 24.622009, 33.766171>,  <27.595991, 24.821270, 33.049347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503231, 24.622009, 33.766171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839203, 24.447329, 33.637295>,  <28.040787, 24.342520, 33.559967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839203, 24.447329, 33.637295>,  <27.503231, 24.622009, 33.766171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839203, 24.447329, 33.637295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441441, 0.204454, 0.873687,
		-0.315666, -0.876066, 0.364505,
		0.839932, -0.436700, -0.322192,
		28.091183, 24.316319, 33.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824991, 24.311010, 34.367977>,  <27.503231, 24.622009, 33.766171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824991, 24.311010, 34.367977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090902, 24.423115, 34.090988>,  <28.250448, 24.490377, 33.924793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090902, 24.423115, 34.090988>,  <27.824991, 24.311010, 34.367977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090902, 24.423115, 34.090988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416688, 0.630250, 0.655100,
		0.620019, -0.724048, 0.302209,
		0.664791, 0.280248, -0.692469,
		28.290337, 24.507195, 33.883244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554482, 24.363245, 34.663189>,  <27.824991, 24.311010, 34.367977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554482, 24.363245, 34.663189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501472, 24.612007, 34.354469>,  <28.469667, 24.761265, 34.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501472, 24.612007, 34.354469>,  <28.554482, 24.363245, 34.663189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501472, 24.612007, 34.354469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270529, 0.771796, 0.575452,
		0.953547, -0.132534, -0.270523,
		-0.132522, 0.621905, -0.771798,
		28.461716, 24.798578, 34.122929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113413, 24.884544, 34.713089>,  <28.554482, 24.363245, 34.663189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113413, 24.884544, 34.713089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844505, 25.049345, 34.467064>,  <28.683161, 25.148226, 34.319447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844505, 25.049345, 34.467064>,  <29.113413, 24.884544, 34.713089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844505, 25.049345, 34.467064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285641, 0.910851, 0.297927,
		0.682981, 0.024599, -0.730022,
		-0.672269, 0.412003, -0.615067,
		28.642824, 25.172945, 34.282543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464098, 25.379292, 34.311752>,  <29.113413, 24.884544, 34.713089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464098, 25.379292, 34.311752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077135, 25.472881, 34.350487>,  <28.844957, 25.529036, 34.373726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077135, 25.472881, 34.350487>,  <29.464098, 25.379292, 34.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077135, 25.472881, 34.350487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246414, 0.957920, 0.147204,
		-0.058317, 0.166268, -0.984354,
		-0.967408, 0.233975, 0.096833,
		28.786913, 25.543074, 34.379536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450930, 26.075008, 33.948067>,  <29.464098, 25.379292, 34.311752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450930, 26.075008, 33.948067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100248, 26.032627, 34.135754>,  <28.889839, 26.007198, 34.248367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100248, 26.032627, 34.135754>,  <29.450930, 26.075008, 33.948067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100248, 26.032627, 34.135754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069831, 0.993140, 0.093787,
		-0.475935, 0.049458, -0.878089,
		-0.876704, -0.105954, 0.469217,
		28.837236, 26.000841, 34.276520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950768, 26.530609, 33.672531>,  <29.450930, 26.075008, 33.948067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950768, 26.530609, 33.672531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826687, 26.455202, 34.045246>,  <28.752237, 26.409958, 34.268875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826687, 26.455202, 34.045246>,  <28.950768, 26.530609, 33.672531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826687, 26.455202, 34.045246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127506, 0.979536, 0.155729,
		-0.942081, -0.070501, -0.327893,
		-0.310204, -0.188518, 0.931791,
		28.733625, 26.398647, 34.324783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242928, 26.840958, 33.730663>,  <28.950768, 26.530609, 33.672531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242928, 26.840958, 33.730663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437614, 26.799196, 34.077583>,  <28.554426, 26.774139, 34.285736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437614, 26.799196, 34.077583>,  <28.242928, 26.840958, 33.730663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437614, 26.799196, 34.077583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129757, 0.973178, 0.189967,
		-0.863868, -0.204998, 0.460116,
		0.486718, -0.104403, 0.867298,
		28.583630, 26.767876, 34.337772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956558, 27.387897, 34.216923>,  <28.242928, 26.840958, 33.730663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956558, 27.387897, 34.216923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254086, 27.258615, 34.450939>,  <28.432602, 27.181047, 34.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254086, 27.258615, 34.450939>,  <27.956558, 27.387897, 34.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254086, 27.258615, 34.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, 0.902432, 0.427159,
		-0.666017, -0.284880, 0.689395,
		0.743821, -0.323204, 0.585039,
		28.477232, 27.161654, 34.626450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810333, 27.523798, 34.964912>,  <27.956558, 27.387897, 34.216923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810333, 27.523798, 34.964912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208151, 27.485302, 34.948807>,  <28.446842, 27.462204, 34.939144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208151, 27.485302, 34.948807>,  <27.810333, 27.523798, 34.964912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208151, 27.485302, 34.948807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104231, 0.900322, 0.422559,
		-0.004414, -0.424450, 0.905440,
		0.994543, -0.096240, -0.040267,
		28.506514, 27.456430, 34.936726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017708, 27.975536, 35.528111>,  <27.810333, 27.523798, 34.964912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017708, 27.975536, 35.528111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377594, 27.882597, 35.380314>,  <28.593525, 27.826834, 35.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.377594, 27.882597, 35.380314>,  <28.017708, 27.975536, 35.528111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377594, 27.882597, 35.380314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375884, 0.842752, 0.385330,
		0.221860, -0.485575, 0.845574,
		0.899716, -0.232349, -0.369493,
		28.647509, 27.812893, 35.269466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482920, 28.054138, 36.066540>,  <28.017708, 27.975536, 35.528111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482920, 28.054138, 36.066540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672626, 28.091269, 35.716351>,  <28.786451, 28.113546, 35.506237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672626, 28.091269, 35.716351>,  <28.482920, 28.054138, 36.066540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672626, 28.091269, 35.716351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356987, 0.888727, 0.287619,
		0.804754, -0.448942, 0.388358,
		0.474268, 0.092824, -0.875473,
		28.814907, 28.119116, 35.453709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175655, 28.349068, 36.277740>,  <28.482920, 28.054138, 36.066540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175655, 28.349068, 36.277740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113827, 28.450708, 35.895844>,  <29.076729, 28.511694, 35.666706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113827, 28.450708, 35.895844>,  <29.175655, 28.349068, 36.277740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113827, 28.450708, 35.895844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317936, 0.927749, 0.195445,
		0.935427, -0.273337, -0.224193,
		-0.154573, 0.254103, -0.954745,
		29.067455, 28.526939, 35.609421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866606, 28.567072, 36.009823>,  <29.175655, 28.349068, 36.277740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866606, 28.567072, 36.009823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564449, 28.727633, 35.802647>,  <29.383156, 28.823969, 35.678341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564449, 28.727633, 35.802647>,  <29.866606, 28.567072, 36.009823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564449, 28.727633, 35.802647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347804, 0.915493, 0.202253,
		0.555352, -0.027361, -0.831165,
		-0.755392, 0.401404, -0.517937,
		29.337831, 28.848053, 35.647266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155958, 29.103487, 35.598213>,  <29.866606, 28.567072, 36.009823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155958, 29.103487, 35.598213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770864, 29.211161, 35.608669>,  <29.539808, 29.275764, 35.614944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770864, 29.211161, 35.608669>,  <30.155958, 29.103487, 35.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770864, 29.211161, 35.608669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269784, 0.962645, 0.023044,
		-0.018960, 0.029237, -0.999393,
		-0.962734, 0.269183, 0.026139,
		29.482044, 29.291916, 35.616512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041515, 29.664707, 35.138203>,  <30.155958, 29.103487, 35.598213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041515, 29.664707, 35.138203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704987, 29.682659, 35.353672>,  <29.503069, 29.693430, 35.482952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704987, 29.682659, 35.353672>,  <30.041515, 29.664707, 35.138203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704987, 29.682659, 35.353672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004850, 0.997133, -0.075507,
		-0.540514, -0.060913, -0.839127,
		-0.841321, 0.044882, 0.538669,
		29.452591, 29.696123, 35.515274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538208, 30.060305, 34.753448>,  <30.041515, 29.664707, 35.138203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538208, 30.060305, 34.753448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369961, 30.089745, 35.115147>,  <29.269012, 30.107409, 35.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369961, 30.089745, 35.115147>,  <29.538208, 30.060305, 34.753448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369961, 30.089745, 35.115147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009947, 0.996270, -0.085715,
		-0.907183, -0.045047, -0.418318,
		-0.420619, 0.073598, 0.904247,
		29.243774, 30.111824, 35.386421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026667, 30.540756, 34.713631>,  <29.538208, 30.060305, 34.753448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026667, 30.540756, 34.713631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111210, 30.522152, 35.104153>,  <29.161936, 30.510990, 35.338467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111210, 30.522152, 35.104153>,  <29.026667, 30.540756, 34.713631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111210, 30.522152, 35.104153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086824, 0.995812, 0.028644,
		-0.973544, 0.078712, 0.214512,
		0.211359, -0.046511, 0.976301,
		29.174618, 30.508198, 35.397041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521414, 30.907032, 35.069405>,  <29.026667, 30.540756, 34.713631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521414, 30.907032, 35.069405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860516, 30.900175, 35.281448>,  <29.063976, 30.896061, 35.408676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860516, 30.900175, 35.281448>,  <28.521414, 30.907032, 35.069405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860516, 30.900175, 35.281448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086385, 0.981669, 0.169890,
		-0.523303, -0.189819, 0.830736,
		0.847757, -0.017141, 0.530109,
		29.114843, 30.895033, 35.440479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398911, 31.404886, 35.498356>,  <28.521414, 30.907032, 35.069405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398911, 31.404886, 35.498356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786327, 31.345350, 35.578129>,  <29.018778, 31.309629, 35.625992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786327, 31.345350, 35.578129>,  <28.398911, 31.404886, 35.498356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786327, 31.345350, 35.578129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079099, 0.943986, 0.320364,
		-0.235949, -0.294510, 0.926063,
		0.968541, -0.148840, 0.199437,
		29.076889, 31.300697, 35.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542248, 31.684395, 36.254730>,  <28.398911, 31.404886, 35.498356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542248, 31.684395, 36.254730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882647, 31.702284, 36.045425>,  <29.086885, 31.713017, 35.919842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882647, 31.702284, 36.045425>,  <28.542248, 31.684395, 36.254730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882647, 31.702284, 36.045425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117226, 0.955053, 0.272272,
		0.511918, -0.293043, 0.807506,
		0.850998, 0.044720, -0.523261,
		29.137945, 31.715700, 35.888447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053696, 32.045166, 36.635933>,  <28.542248, 31.684395, 36.254730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053696, 32.045166, 36.635933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210106, 32.071140, 36.268700>,  <29.303951, 32.086723, 36.048359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210106, 32.071140, 36.268700>,  <29.053696, 32.045166, 36.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210106, 32.071140, 36.268700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290638, 0.937756, 0.190114,
		0.873287, -0.341170, 0.347813,
		0.391025, 0.064937, -0.918087,
		29.327414, 32.090622, 35.993275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459341, 32.623009, 36.700157>,  <29.053696, 32.045166, 36.635933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459341, 32.623009, 36.700157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458820, 32.565121, 36.304367>,  <29.458508, 32.530388, 36.066895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458820, 32.565121, 36.304367>,  <29.459341, 32.623009, 36.700157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458820, 32.565121, 36.304367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051569, 0.988165, -0.144464,
		0.998669, 0.050838, -0.008751,
		-0.001303, -0.144723, -0.989471,
		29.458429, 32.521706, 36.007526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075977, 32.943050, 36.438927>,  <29.459341, 32.623009, 36.700157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075977, 32.943050, 36.438927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790833, 32.912678, 36.160053>,  <29.619745, 32.894455, 35.992729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790833, 32.912678, 36.160053>,  <30.075977, 32.943050, 36.438927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790833, 32.912678, 36.160053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004562, 0.994603, -0.103653,
		0.701287, -0.070710, -0.709364,
		-0.712865, -0.075927, -0.697180,
		29.576973, 32.889900, 35.950901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343500, 33.536472, 36.042099>,  <30.075977, 32.943050, 36.438927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343500, 33.536472, 36.042099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959574, 33.450520, 35.969902>,  <29.729218, 33.398949, 35.926586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959574, 33.450520, 35.969902>,  <30.343500, 33.536472, 36.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959574, 33.450520, 35.969902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185120, 0.968206, -0.168246,
		0.210902, -0.128073, -0.969081,
		-0.959818, -0.214880, -0.180488,
		29.671629, 33.386055, 35.915756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175404, 33.695072, 35.320564>,  <30.343500, 33.536472, 36.042099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175404, 33.695072, 35.320564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877195, 33.780914, 35.572960>,  <29.698271, 33.832420, 35.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877195, 33.780914, 35.572960>,  <30.175404, 33.695072, 35.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877195, 33.780914, 35.572960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074082, 0.967557, -0.241548,
		-0.662353, -0.133334, -0.737231,
		-0.745520, 0.214606, 0.630987,
		29.653540, 33.845295, 35.762257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004513, 34.308777, 35.203415>,  <30.175404, 33.695072, 35.320564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004513, 34.308777, 35.203415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783010, 34.282879, 35.535477>,  <29.650110, 34.267338, 35.734715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.783010, 34.282879, 35.535477>,  <30.004513, 34.308777, 35.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783010, 34.282879, 35.535477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032161, 0.994565, 0.099024,
		-0.832059, 0.081533, -0.548662,
		-0.553754, -0.064748, 0.830159,
		29.616884, 34.263454, 35.784523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469168, 34.673557, 35.608990>,  <30.004513, 34.308777, 35.203415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469168, 34.673557, 35.608990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272545, 35.005898, 35.504635>,  <30.154572, 35.205299, 35.442020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272545, 35.005898, 35.504635>,  <30.469168, 34.673557, 35.608990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272545, 35.005898, 35.504635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283866, 0.436093, 0.853957,
		0.823280, 0.345712, -0.450215,
		-0.491559, 0.830846, -0.260891,
		30.125076, 35.255150, 35.426369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975752, 35.240593, 35.748062>,  <30.469168, 34.673557, 35.608990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975752, 35.240593, 35.748062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614298, 35.406616, 35.790337>,  <30.397425, 35.506229, 35.815701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614298, 35.406616, 35.790337>,  <30.975752, 35.240593, 35.748062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614298, 35.406616, 35.790337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294740, 0.423586, 0.856565,
		0.310756, 0.805173, -0.505102,
		-0.903637, 0.415056, 0.105685,
		30.343206, 35.531132, 35.822041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112555, 35.953072, 35.714569>,  <30.975752, 35.240593, 35.748062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112555, 35.953072, 35.714569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785334, 35.862133, 35.925892>,  <30.589001, 35.807571, 36.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785334, 35.862133, 35.925892>,  <31.112555, 35.953072, 35.714569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785334, 35.862133, 35.925892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467764, 0.271474, 0.841130,
		-0.334645, 0.935210, -0.115737,
		-0.818052, -0.227342, 0.528305,
		30.539917, 35.793930, 36.084385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953794, 36.542213, 36.069344>,  <31.112555, 35.953072, 35.714569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953794, 36.542213, 36.069344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840900, 36.200237, 36.243431>,  <30.773163, 35.995052, 36.347885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840900, 36.200237, 36.243431>,  <30.953794, 36.542213, 36.069344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840900, 36.200237, 36.243431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402528, 0.306263, 0.862655,
		-0.870812, 0.418661, 0.257700,
		-0.282237, -0.854942, 0.435220,
		30.756229, 35.943756, 36.373997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669462, 36.756226, 36.746464>,  <30.953794, 36.542213, 36.069344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669462, 36.756226, 36.746464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746222, 36.364220, 36.767460>,  <30.792276, 36.129017, 36.780060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746222, 36.364220, 36.767460>,  <30.669462, 36.756226, 36.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746222, 36.364220, 36.767460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175049, 0.086809, 0.980725,
		-0.965678, -0.179009, 0.188208,
		0.191897, -0.980010, 0.052494,
		30.803791, 36.070217, 36.783207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369600, 36.609455, 37.468689>,  <30.669462, 36.756226, 36.746464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369600, 36.609455, 37.468689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622652, 36.307507, 37.399471>,  <30.774483, 36.126339, 37.357941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622652, 36.307507, 37.399471>,  <30.369600, 36.609455, 37.468689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622652, 36.307507, 37.399471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295313, 0.028577, 0.954973,
		-0.715938, -0.655248, 0.241002,
		0.632631, -0.754873, -0.173044,
		30.812441, 36.081043, 37.347557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280886, 36.000332, 37.955555>,  <30.369600, 36.609455, 37.468689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280886, 36.000332, 37.955555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655582, 35.962353, 37.820797>,  <30.880400, 35.939564, 37.739941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.655582, 35.962353, 37.820797>,  <30.280886, 36.000332, 37.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655582, 35.962353, 37.820797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341672, 0.039069, 0.939007,
		-0.075996, -0.994715, 0.069039,
		0.936741, -0.094949, -0.336898,
		30.936605, 35.933868, 37.719727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548229, 35.654640, 38.416973>,  <30.280886, 36.000332, 37.955555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548229, 35.654640, 38.416973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880499, 35.799541, 38.247852>,  <31.079861, 35.886482, 38.146381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880499, 35.799541, 38.247852>,  <30.548229, 35.654640, 38.416973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880499, 35.799541, 38.247852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380620, 0.184740, 0.906090,
		0.406339, -0.913590, 0.015578,
		0.830673, 0.362251, -0.422798,
		31.129700, 35.908218, 38.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074780, 35.247940, 38.694183>,  <30.548229, 35.654640, 38.416973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074780, 35.247940, 38.694183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257017, 35.585625, 38.581230>,  <31.366360, 35.788235, 38.513458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257017, 35.585625, 38.581230>,  <31.074780, 35.247940, 38.694183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257017, 35.585625, 38.581230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323178, 0.138716, 0.936116,
		0.829451, -0.517749, -0.209633,
		0.455594, 0.844212, -0.282383,
		31.393696, 35.838890, 38.496513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823610, 35.171478, 38.823936>,  <31.074780, 35.247940, 38.694183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823610, 35.171478, 38.823936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738716, 35.561283, 38.794884>,  <31.687780, 35.795166, 38.777454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738716, 35.561283, 38.794884>,  <31.823610, 35.171478, 38.823936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738716, 35.561283, 38.794884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563303, 0.182733, 0.805790,
		0.798527, 0.130104, -0.587730,
		-0.212234, 0.974516, -0.072630,
		31.675045, 35.853638, 38.773094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466175, 35.362831, 39.026863>,  <31.823610, 35.171478, 38.823936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466175, 35.362831, 39.026863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208748, 35.667416, 39.057842>,  <32.054291, 35.850166, 39.076427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208748, 35.667416, 39.057842>,  <32.466175, 35.362831, 39.026863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208748, 35.667416, 39.057842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241272, 0.105807, 0.964672,
		0.726366, 0.639517, -0.251813,
		-0.643568, 0.761461, 0.077443,
		32.015678, 35.895855, 39.081074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860538, 35.949112, 39.281796>,  <32.466175, 35.362831, 39.026863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860538, 35.949112, 39.281796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487270, 36.017956, 39.408012>,  <32.263309, 36.059261, 39.483742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487270, 36.017956, 39.408012>,  <32.860538, 35.949112, 39.281796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487270, 36.017956, 39.408012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337311, 0.116104, 0.934206,
		0.124152, 0.978211, -0.166400,
		-0.933171, 0.172112, 0.315547,
		32.207317, 36.069588, 39.502678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928108, 36.481598, 39.721802>,  <32.860538, 35.949112, 39.281796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928108, 36.481598, 39.721802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580772, 36.305470, 39.813103>,  <32.372368, 36.199795, 39.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580772, 36.305470, 39.813103>,  <32.928108, 36.481598, 39.721802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580772, 36.305470, 39.813103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161576, 0.183964, 0.969562,
		-0.468904, 0.878794, -0.088599,
		-0.868344, -0.440316, 0.228254,
		32.320271, 36.173374, 39.881580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659351, 36.876499, 40.253273>,  <32.928108, 36.481598, 39.721802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659351, 36.876499, 40.253273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440475, 36.545067, 40.300671>,  <32.309151, 36.346207, 40.329109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440475, 36.545067, 40.300671>,  <32.659351, 36.876499, 40.253273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440475, 36.545067, 40.300671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031585, 0.121026, 0.992147,
		-0.836412, 0.546635, -0.040054,
		-0.547190, -0.828579, 0.118493,
		32.276318, 36.296494, 40.336220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123890, 37.052212, 40.767578>,  <32.659351, 36.876499, 40.253273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123890, 37.052212, 40.767578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151131, 36.653568, 40.749092>,  <32.167473, 36.414383, 40.737999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151131, 36.653568, 40.749092>,  <32.123890, 37.052212, 40.767578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151131, 36.653568, 40.749092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238580, -0.028710, 0.970699,
		-0.968732, -0.077130, 0.235815,
		0.068099, -0.996608, -0.046214,
		32.171562, 36.354588, 40.735229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642090, 36.790245, 41.114796>,  <32.123890, 37.052212, 40.767578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642090, 36.790245, 41.114796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896358, 36.481476, 41.117802>,  <32.048920, 36.296215, 41.119606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896358, 36.481476, 41.117802>,  <31.642090, 36.790245, 41.114796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896358, 36.481476, 41.117802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026734, -0.012286, 0.999567,
		-0.771497, -0.635597, -0.028447,
		0.635672, -0.771923, 0.007514,
		32.087059, 36.249901, 41.120056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402205, 36.246708, 41.600090>,  <31.642090, 36.790245, 41.114796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402205, 36.246708, 41.600090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785530, 36.136894, 41.568417>,  <32.015526, 36.071007, 41.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785530, 36.136894, 41.568417>,  <31.402205, 36.246708, 41.600090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785530, 36.136894, 41.568417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041696, -0.139781, 0.989304,
		-0.282663, -0.951364, -0.122507,
		0.958313, -0.274531, -0.079179,
		32.073025, 36.054535, 41.544662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378008, 35.682850, 41.993267>,  <31.402205, 36.246708, 41.600090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378008, 35.682850, 41.993267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756697, 35.809593, 41.970219>,  <31.983910, 35.885639, 41.956390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756697, 35.809593, 41.970219>,  <31.378008, 35.682850, 41.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756697, 35.809593, 41.970219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080637, -0.059987, 0.994937,
		0.311796, -0.946574, -0.082342,
		0.946721, 0.316857, -0.057625,
		32.040714, 35.904652, 41.952930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806787, 35.187031, 42.395576>,  <31.378008, 35.682850, 41.993267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806787, 35.187031, 42.395576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992945, 35.539433, 42.361530>,  <32.104641, 35.750874, 42.341103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992945, 35.539433, 42.361530>,  <31.806787, 35.187031, 42.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992945, 35.539433, 42.361530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096333, 0.045170, 0.994324,
		0.879845, -0.470952, -0.063848,
		0.465394, 0.881002, -0.085111,
		32.132565, 35.803734, 42.335999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329193, 35.069557, 42.840179>,  <31.806787, 35.187031, 42.395576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329193, 35.069557, 42.840179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318989, 35.466404, 42.791107>,  <32.312866, 35.704514, 42.761665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318989, 35.466404, 42.791107>,  <32.329193, 35.069557, 42.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318989, 35.466404, 42.791107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211612, 0.125299, 0.969289,
		0.977021, -0.001237, -0.213140,
		-0.025507, 0.992118, -0.122681,
		32.311337, 35.764038, 42.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758389, 35.308537, 43.298313>,  <32.329193, 35.069557, 42.840179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758389, 35.308537, 43.298313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543510, 35.634308, 43.210564>,  <32.414585, 35.829769, 43.157913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543510, 35.634308, 43.210564>,  <32.758389, 35.308537, 43.298313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543510, 35.634308, 43.210564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021928, 0.246519, 0.968890,
		0.843173, 0.525293, -0.114570,
		-0.537195, 0.814429, -0.219377,
		32.382351, 35.878635, 43.144749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035206, 35.874966, 43.718250>,  <32.758389, 35.308537, 43.298313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035206, 35.874966, 43.718250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667831, 35.991081, 43.610764>,  <32.447407, 36.060749, 43.546272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667831, 35.991081, 43.610764>,  <33.035206, 35.874966, 43.718250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667831, 35.991081, 43.610764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222888, 0.181452, 0.957808,
		0.326800, 0.939579, -0.101950,
		-0.918435, 0.290288, -0.268720,
		32.392300, 36.078167, 43.530148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888832, 36.501255, 44.123585>,  <33.035206, 35.874966, 43.718250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888832, 36.501255, 44.123585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527191, 36.369705, 44.014454>,  <32.310207, 36.290775, 43.948975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527191, 36.369705, 44.014454>,  <32.888832, 36.501255, 44.123585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527191, 36.369705, 44.014454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372310, 0.292912, 0.880674,
		-0.209716, 0.897799, -0.387267,
		-0.904104, -0.328875, -0.272832,
		32.255959, 36.271042, 43.932606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475014, 37.089439, 44.154793>,  <32.888832, 36.501255, 44.123585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475014, 37.089439, 44.154793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245663, 36.764423, 44.196770>,  <32.108051, 36.569412, 44.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245663, 36.764423, 44.196770>,  <32.475014, 37.089439, 44.154793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245663, 36.764423, 44.196770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324002, 0.342531, 0.881870,
		-0.752504, 0.471641, -0.459665,
		-0.573375, -0.812544, 0.104943,
		32.073650, 36.520660, 44.228252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825037, 37.360126, 44.461681>,  <32.475014, 37.089439, 44.154793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825037, 37.360126, 44.461681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790369, 36.966545, 44.524078>,  <31.769569, 36.730396, 44.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790369, 36.966545, 44.524078>,  <31.825037, 37.360126, 44.461681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790369, 36.966545, 44.524078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247575, 0.172941, 0.953309,
		-0.964985, 0.044003, -0.258589,
		-0.086669, -0.983949, 0.155992,
		31.764368, 36.671360, 44.570877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276209, 37.362850, 44.910213>,  <31.825037, 37.360126, 44.461681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276209, 37.362850, 44.910213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442493, 37.001553, 44.952805>,  <31.542265, 36.784775, 44.978359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442493, 37.001553, 44.952805>,  <31.276209, 37.362850, 44.910213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442493, 37.001553, 44.952805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213671, 0.016802, 0.976761,
		-0.884041, -0.428802, -0.186012,
		0.415712, -0.903242, 0.106476,
		31.567207, 36.730579, 44.984749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757431, 36.966831, 45.312260>,  <31.276209, 37.362850, 44.910213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757431, 36.966831, 45.312260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126616, 36.816132, 45.343769>,  <31.348125, 36.725712, 45.362675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126616, 36.816132, 45.343769>,  <30.757431, 36.966831, 45.312260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126616, 36.816132, 45.343769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050910, 0.083380, 0.995217,
		-0.381517, -0.922555, 0.057776,
		0.922959, -0.376750, 0.078778,
		31.403503, 36.703106, 45.367401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770172, 36.488956, 45.856873>,  <30.757431, 36.966831, 45.312260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770172, 36.488956, 45.856873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168875, 36.511616, 45.834015>,  <31.408096, 36.525211, 45.820301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168875, 36.511616, 45.834015>,  <30.770172, 36.488956, 45.856873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168875, 36.511616, 45.834015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062516, -0.098108, 0.993210,
		0.050662, -0.993562, -0.101332,
		0.996757, 0.056653, -0.057144,
		31.467901, 36.528610, 45.816872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924650, 36.100082, 46.382980>,  <30.770172, 36.488956, 45.856873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924650, 36.100082, 46.382980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274364, 36.281990, 46.315083>,  <31.484192, 36.391136, 46.274345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274364, 36.281990, 46.315083>,  <30.924650, 36.100082, 46.382980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274364, 36.281990, 46.315083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202338, -0.023571, 0.979032,
		0.441234, -0.890296, -0.112626,
		0.874283, 0.454771, -0.169741,
		31.536650, 36.418423, 46.264160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393528, 35.777077, 46.755199>,  <30.924650, 36.100082, 46.382980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393528, 35.777077, 46.755199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562086, 36.137844, 46.717323>,  <31.663221, 36.354305, 46.694595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562086, 36.137844, 46.717323>,  <31.393528, 35.777077, 46.755199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562086, 36.137844, 46.717323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235197, -0.007847, 0.971916,
		0.875846, -0.431835, -0.215436,
		0.421397, 0.901919, -0.094693,
		31.688505, 36.408421, 46.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099941, 35.770470, 46.928619>,  <31.393528, 35.777077, 46.755199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099941, 35.770470, 46.928619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990776, 36.150803, 46.987194>,  <31.925278, 36.379002, 47.022339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990776, 36.150803, 46.987194>,  <32.099941, 35.770470, 46.928619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990776, 36.150803, 46.987194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338954, -0.047416, 0.939607,
		0.900349, 0.306065, -0.309347,
		-0.272913, 0.950829, 0.146433,
		31.908903, 36.436050, 47.031124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665783, 36.072178, 47.201523>,  <32.099941, 35.770470, 46.928619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665783, 36.072178, 47.201523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363331, 36.306145, 47.318916>,  <32.181858, 36.446526, 47.389351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363331, 36.306145, 47.318916>,  <32.665783, 36.072178, 47.201523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363331, 36.306145, 47.318916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345952, -0.023408, 0.937960,
		0.555500, 0.810754, -0.184655,
		-0.756133, 0.584919, 0.293485,
		32.136490, 36.481621, 47.406963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953995, 36.625050, 47.564556>,  <32.665783, 36.072178, 47.201523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953995, 36.625050, 47.564556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575306, 36.582691, 47.686218>,  <32.348095, 36.557278, 47.759216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575306, 36.582691, 47.686218>,  <32.953995, 36.625050, 47.564556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575306, 36.582691, 47.686218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312755, -0.076869, 0.946718,
		-0.076869, 0.991402, 0.105891,
		-0.946718, -0.105891, 0.304157,
		32.291290, 36.550922, 47.777466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940502, 36.921551, 48.242680>,  <32.953995, 36.625050, 47.564556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940502, 36.921551, 48.242680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563980, 36.786674, 48.236351>,  <32.338066, 36.705750, 48.232555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563980, 36.786674, 48.236351>,  <32.940502, 36.921551, 48.242680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563980, 36.786674, 48.236351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021192, -0.105805, 0.994161,
		-0.336899, 0.935471, 0.106740,
		-0.941302, -0.337194, -0.015820,
		32.281590, 36.685516, 48.231606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521717, 37.324112, 48.734760>,  <32.940502, 36.921551, 48.242680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521717, 37.324112, 48.734760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355087, 36.963428, 48.688496>,  <32.255108, 36.747017, 48.660736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355087, 36.963428, 48.688496>,  <32.521717, 37.324112, 48.734760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355087, 36.963428, 48.688496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058600, -0.100328, 0.993227,
		-0.907210, 0.420533, -0.011046,
		-0.416576, -0.901713, -0.115662,
		32.230114, 36.692913, 48.653797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151474, 37.305012, 49.305122>,  <32.521717, 37.324112, 48.734760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151474, 37.305012, 49.305122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142418, 36.919159, 49.200069>,  <32.136986, 36.687649, 49.137039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142418, 36.919159, 49.200069>,  <32.151474, 37.305012, 49.305122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142418, 36.919159, 49.200069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029106, -0.263225, 0.964295,
		-0.999320, 0.014186, 0.034035,
		-0.022638, -0.964630, -0.262633,
		32.135628, 36.629768, 49.121281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784483, 36.987103, 49.782658>,  <32.151474, 37.305012, 49.305122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784483, 36.987103, 49.782658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020729, 36.706783, 49.622635>,  <32.162476, 36.538589, 49.526619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020729, 36.706783, 49.622635>,  <31.784483, 36.987103, 49.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020729, 36.706783, 49.622635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334597, -0.238461, 0.911691,
		-0.734315, -0.672319, 0.093648,
		0.590616, -0.700803, -0.400061,
		32.197914, 36.496544, 49.502617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571081, 36.303844, 49.982224>,  <31.784483, 36.987103, 49.782658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571081, 36.303844, 49.982224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958462, 36.282555, 49.884842>,  <32.190891, 36.269779, 49.826412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958462, 36.282555, 49.884842>,  <31.571081, 36.303844, 49.982224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958462, 36.282555, 49.884842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232567, -0.157933, 0.959671,
		-0.089527, -0.986014, -0.140572,
		0.968451, -0.053224, -0.243454,
		32.248997, 36.266586, 49.811806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868650, 35.577763, 50.150940>,  <31.571081, 36.303844, 49.982224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868650, 35.577763, 50.150940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129089, 35.881023, 50.165211>,  <32.285355, 36.062981, 50.173775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129089, 35.881023, 50.165211>,  <31.868650, 35.577763, 50.150940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129089, 35.881023, 50.165211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204243, -0.220291, 0.953812,
		0.730997, -0.613737, -0.298279,
		0.651098, 0.758155, 0.035681,
		32.324417, 36.108471, 50.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259216, 35.268959, 50.618282>,  <31.868650, 35.577763, 50.150940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259216, 35.268959, 50.618282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359699, 35.653957, 50.577316>,  <32.419991, 35.884956, 50.552738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359699, 35.653957, 50.577316>,  <32.259216, 35.268959, 50.618282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359699, 35.653957, 50.577316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154949, 0.064456, 0.985818,
		0.955450, -0.263515, -0.132947,
		0.251209, 0.962499, -0.102416,
		32.435062, 35.942707, 50.546593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787853, 35.277542, 51.094376>,  <32.259216, 35.268959, 50.618282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787853, 35.277542, 51.094376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653690, 35.650253, 51.038807>,  <32.573193, 35.873878, 51.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653690, 35.650253, 51.038807>,  <32.787853, 35.277542, 51.094376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653690, 35.650253, 51.038807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091386, 0.114589, 0.989201,
		0.937630, 0.344481, 0.046717,
		-0.335408, 0.931774, -0.138923,
		32.553066, 35.929787, 50.997131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138557, 35.770626, 51.606438>,  <32.787853, 35.277542, 51.094376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138557, 35.770626, 51.606438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812794, 35.979244, 51.504677>,  <32.617336, 36.104416, 51.443619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812794, 35.979244, 51.504677>,  <33.138557, 35.770626, 51.606438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812794, 35.979244, 51.504677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144646, 0.242120, 0.959404,
		0.561970, 0.818149, -0.121746,
		-0.814412, 0.521546, -0.254406,
		32.568470, 36.135708, 51.428356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206959, 36.411659, 51.889549>,  <33.138557, 35.770626, 51.606438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206959, 36.411659, 51.889549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812725, 36.412331, 51.821888>,  <32.576183, 36.412731, 51.781292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812725, 36.412331, 51.821888>,  <33.206959, 36.411659, 51.889549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812725, 36.412331, 51.821888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157498, 0.355765, 0.921209,
		0.061721, 0.934574, -0.350374,
		-0.985589, 0.001675, -0.169151,
		32.517048, 36.412834, 51.771141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940319, 37.097828, 52.004143>,  <33.206959, 36.411659, 51.889549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940319, 37.097828, 52.004143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617485, 36.865757, 52.047981>,  <32.423786, 36.726513, 52.074284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617485, 36.865757, 52.047981>,  <32.940319, 37.097828, 52.004143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617485, 36.865757, 52.047981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159944, 0.393515, 0.905298,
		-0.568363, 0.713119, -0.410395,
		-0.807082, -0.580178, 0.109601,
		32.375359, 36.691704, 52.080860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517994, 37.492062, 52.322906>,  <32.940319, 37.097828, 52.004143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517994, 37.492062, 52.322906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330235, 37.146915, 52.397877>,  <32.217579, 36.939827, 52.442860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330235, 37.146915, 52.397877>,  <32.517994, 37.492062, 52.322906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330235, 37.146915, 52.397877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371678, 0.385627, 0.844481,
		-0.800950, 0.326736, -0.501720,
		-0.469399, -0.862865, 0.187427,
		32.189415, 36.888058, 52.454105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819023, 37.708553, 52.547222>,  <32.517994, 37.492062, 52.322906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819023, 37.708553, 52.547222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878345, 37.329250, 52.659512>,  <31.913939, 37.101669, 52.726887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878345, 37.329250, 52.659512>,  <31.819023, 37.708553, 52.547222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878345, 37.329250, 52.659512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348206, 0.215614, 0.912284,
		-0.925612, -0.233048, -0.298213,
		0.148307, -0.948261, 0.280724,
		31.922838, 37.044773, 52.743729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322832, 37.481976, 53.072254>,  <31.819023, 37.708553, 52.547222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322832, 37.481976, 53.072254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607756, 37.203609, 53.108749>,  <31.778709, 37.036591, 53.130646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607756, 37.203609, 53.108749>,  <31.322832, 37.481976, 53.072254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607756, 37.203609, 53.108749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123535, 0.003655, 0.992334,
		-0.690910, -0.718118, -0.083366,
		0.712308, -0.695911, 0.091238,
		31.821447, 36.994835, 53.136120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942669, 37.001892, 53.550808>,  <31.322832, 37.481976, 53.072254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942669, 37.001892, 53.550808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341259, 36.990578, 53.519218>,  <31.580414, 36.983788, 53.500267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341259, 36.990578, 53.519218>,  <30.942669, 37.001892, 53.550808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341259, 36.990578, 53.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076154, -0.089683, 0.993055,
		-0.035173, -0.995569, -0.087213,
		0.996475, -0.028287, -0.078971,
		31.640202, 36.982090, 53.495525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314703, 36.395016, 53.845940>,  <30.942669, 37.001892, 53.550808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314703, 36.395016, 53.845940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549353, 36.716160, 53.888432>,  <31.690144, 36.908848, 53.913925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549353, 36.716160, 53.888432>,  <31.314703, 36.395016, 53.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549353, 36.716160, 53.888432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032216, -0.154196, 0.987515,
		0.809218, -0.575879, -0.116321,
		0.586625, 0.802862, 0.106225,
		31.725340, 36.957020, 53.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890970, 36.206379, 54.186119>,  <31.314703, 36.395016, 53.845940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890970, 36.206379, 54.186119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827738, 36.595768, 54.252274>,  <31.789799, 36.829403, 54.291965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827738, 36.595768, 54.252274>,  <31.890970, 36.206379, 54.186119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827738, 36.595768, 54.252274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010050, -0.165900, 0.986091,
		0.987375, 0.157544, 0.016442,
		-0.158081, 0.973477, 0.165389,
		31.780313, 36.887810, 54.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248005, 35.943859, 53.607830>,  <31.890970, 36.206379, 54.186119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248005, 35.943859, 53.607830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971706, 35.690350, 53.747093>,  <31.805927, 35.538246, 53.830650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971706, 35.690350, 53.747093>,  <32.248005, 35.943859, 53.607830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971706, 35.690350, 53.747093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113186, -0.380773, -0.917715,
		0.714187, -0.673311, 0.191282,
		-0.690743, -0.633770, 0.348153,
		31.764484, 35.500217, 53.851540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418240, 35.294678, 53.267258>,  <32.248005, 35.943859, 53.607830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418240, 35.294678, 53.267258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032894, 35.347675, 53.360538>,  <31.801687, 35.379475, 53.416508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032894, 35.347675, 53.360538>,  <32.418240, 35.294678, 53.267258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032894, 35.347675, 53.360538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268174, -0.490547, -0.829124,
		0.004545, -0.861284, 0.508104,
		-0.963360, 0.132492, 0.233204,
		31.743887, 35.387424, 53.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503895, 34.856304, 53.823917>,  <32.418240, 35.294678, 53.267258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503895, 34.856304, 53.823917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281338, 34.533581, 53.744431>,  <32.147804, 34.339947, 53.696739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281338, 34.533581, 53.744431>,  <32.503895, 34.856304, 53.823917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281338, 34.533581, 53.744431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295867, 0.031112, -0.954722,
		0.776463, -0.589990, 0.221399,
		-0.556388, -0.806811, -0.198716,
		32.114422, 34.291538, 53.684814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852921, 34.285358, 53.546963>,  <32.503895, 34.856304, 53.823917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852921, 34.285358, 53.546963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491955, 34.148842, 53.441765>,  <32.275375, 34.066933, 53.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491955, 34.148842, 53.441765>,  <32.852921, 34.285358, 53.546963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491955, 34.148842, 53.441765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380730, -0.345863, -0.857568,
		0.201724, -0.874012, 0.442053,
		-0.902415, -0.341295, -0.262993,
		32.221230, 34.046452, 53.362865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944996, 33.752941, 53.090130>,  <32.852921, 34.285358, 53.546963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944996, 33.752941, 53.090130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569038, 33.871204, 53.021797>,  <32.343464, 33.942162, 52.980797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569038, 33.871204, 53.021797>,  <32.944996, 33.752941, 53.090130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569038, 33.871204, 53.021797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099164, -0.242385, -0.965099,
		-0.326745, -0.924033, 0.198497,
		-0.939895, 0.295658, -0.170829,
		32.287071, 33.959900, 52.970547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679802, 33.228939, 52.813847>,  <32.944996, 33.752941, 53.090130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679802, 33.228939, 52.813847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474792, 33.553539, 52.701569>,  <32.351788, 33.748299, 52.634201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474792, 33.553539, 52.701569>,  <32.679802, 33.228939, 52.813847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474792, 33.553539, 52.701569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044338, -0.301445, -0.952452,
		-0.857529, -0.500597, 0.118517,
		-0.512521, 0.811501, -0.280693,
		32.321037, 33.796989, 52.617359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166618, 33.024338, 52.257896>,  <32.679802, 33.228939, 52.813847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166618, 33.024338, 52.257896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235882, 33.416763, 52.223198>,  <32.277439, 33.652218, 52.202377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235882, 33.416763, 52.223198>,  <32.166618, 33.024338, 52.257896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235882, 33.416763, 52.223198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134720, -0.110840, -0.984665,
		-0.975637, 0.158813, -0.151361,
		0.173155, 0.981067, -0.086745,
		32.287827, 33.711082, 52.197174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629297, 33.158005, 51.766277>,  <32.166618, 33.024338, 52.257896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629297, 33.158005, 51.766277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902719, 33.449955, 51.768784>,  <32.066772, 33.625126, 51.770287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902719, 33.449955, 51.768784>,  <31.629297, 33.158005, 51.766277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902719, 33.449955, 51.768784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034942, -0.024148, -0.999098,
		-0.729063, 0.683157, -0.042010,
		0.683555, 0.729873, 0.006265,
		32.107784, 33.668919, 51.770664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288063, 33.697639, 51.400105>,  <31.629297, 33.158005, 51.766277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288063, 33.697639, 51.400105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678009, 33.784050, 51.378284>,  <31.911976, 33.835896, 51.365192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678009, 33.784050, 51.378284>,  <31.288063, 33.697639, 51.400105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678009, 33.784050, 51.378284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080870, 0.114947, -0.990074,
		-0.207612, 0.969598, 0.129528,
		0.974863, 0.216026, -0.054547,
		31.970469, 33.848858, 51.361919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346308, 34.291611, 50.906204>,  <31.288063, 33.697639, 51.400105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346308, 34.291611, 50.906204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700182, 34.107910, 50.938259>,  <31.912506, 33.997692, 50.957493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700182, 34.107910, 50.938259>,  <31.346308, 34.291611, 50.906204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700182, 34.107910, 50.938259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046259, -0.084579, -0.995342,
		0.463886, 0.884273, -0.053582,
		0.884686, -0.459247, 0.080141,
		31.965588, 33.970135, 50.962303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718027, 34.561985, 50.293884>,  <31.346308, 34.291611, 50.906204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718027, 34.561985, 50.293884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936451, 34.247372, 50.409248>,  <32.067505, 34.058601, 50.478466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936451, 34.247372, 50.409248>,  <31.718027, 34.561985, 50.293884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936451, 34.247372, 50.409248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125322, -0.263698, -0.956430,
		0.828319, 0.558412, -0.045425,
		0.546061, -0.786536, 0.288407,
		32.100269, 34.011410, 50.495770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316109, 34.571648, 49.863457>,  <31.718027, 34.561985, 50.293884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316109, 34.571648, 49.863457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284718, 34.197815, 50.002254>,  <32.265884, 33.973515, 50.085533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284718, 34.197815, 50.002254>,  <32.316109, 34.571648, 49.863457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284718, 34.197815, 50.002254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297929, -0.354143, -0.886466,
		0.951357, 0.033814, 0.306229,
		-0.078474, -0.934580, 0.346990,
		32.261177, 33.917442, 50.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892868, 34.181068, 49.702076>,  <32.316109, 34.571648, 49.863457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892868, 34.181068, 49.702076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575989, 33.938221, 49.726807>,  <32.385860, 33.792511, 49.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575989, 33.938221, 49.726807>,  <32.892868, 34.181068, 49.702076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575989, 33.938221, 49.726807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173842, -0.321625, -0.930772,
		0.584975, -0.726610, 0.360335,
		-0.792201, -0.607120, 0.061828,
		32.338329, 33.756084, 49.745354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157707, 33.548050, 49.422306>,  <32.892868, 34.181068, 49.702076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157707, 33.548050, 49.422306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758595, 33.527168, 49.405762>,  <32.519127, 33.514641, 49.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758595, 33.527168, 49.405762>,  <33.157707, 33.548050, 49.422306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758595, 33.527168, 49.405762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058689, -0.395553, -0.916566,
		0.031484, -0.916958, 0.397739,
		-0.997780, -0.052200, -0.041362,
		32.459259, 33.511509, 49.393353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030952, 32.760429, 49.177967>,  <33.157707, 33.548050, 49.422306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030952, 32.760429, 49.177967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695076, 32.969231, 49.118050>,  <32.493549, 33.094509, 49.082100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695076, 32.969231, 49.118050>,  <33.030952, 32.760429, 49.177967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695076, 32.969231, 49.118050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001627, -0.278238, -0.960511,
		-0.543064, -0.806287, 0.234483,
		-0.839690, 0.522000, -0.149790,
		32.443169, 33.125832, 49.073112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600609, 32.433685, 48.686569>,  <33.030952, 32.760429, 49.177967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600609, 32.433685, 48.686569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444271, 32.800915, 48.660107>,  <32.350468, 33.021252, 48.644230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444271, 32.800915, 48.660107>,  <32.600609, 32.433685, 48.686569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444271, 32.800915, 48.660107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008162, -0.075328, -0.997125,
		-0.920421, -0.389179, 0.036935,
		-0.390843, 0.918077, -0.066157,
		32.327019, 33.076340, 48.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074341, 32.299080, 48.178921>,  <32.600609, 32.433685, 48.686569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074341, 32.299080, 48.178921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143112, 32.692089, 48.150379>,  <32.184376, 32.927895, 48.133255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143112, 32.692089, 48.150379>,  <32.074341, 32.299080, 48.178921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143112, 32.692089, 48.150379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030662, -0.067061, -0.997278,
		-0.984631, 0.173652, 0.018596,
		0.171932, 0.982521, -0.071355,
		32.194691, 32.986847, 48.128971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725311, 32.530090, 47.564903>,  <32.074341, 32.299080, 48.178921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725311, 32.530090, 47.564903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995789, 32.818146, 47.627090>,  <32.158073, 32.990978, 47.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995789, 32.818146, 47.627090>,  <31.725311, 32.530090, 47.564903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995789, 32.818146, 47.627090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155590, 0.066679, -0.985569,
		-0.720109, 0.690622, -0.066958,
		0.676191, 0.720135, 0.155470,
		32.198647, 33.034187, 47.673733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538551, 33.045628, 47.109356>,  <31.725311, 32.530090, 47.564903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538551, 33.045628, 47.109356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916336, 33.109425, 47.224285>,  <32.143005, 33.147701, 47.293243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916336, 33.109425, 47.224285>,  <31.538551, 33.045628, 47.109356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916336, 33.109425, 47.224285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246320, 0.235175, -0.940223,
		-0.217530, 0.958778, 0.182828,
		0.944461, 0.159492, 0.287323,
		32.199673, 33.157272, 47.310482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753235, 33.728500, 46.960430>,  <31.538551, 33.045628, 47.109356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753235, 33.728500, 46.960430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098404, 33.526848, 46.974369>,  <32.305504, 33.405857, 46.982735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098404, 33.526848, 46.974369>,  <31.753235, 33.728500, 46.960430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098404, 33.526848, 46.974369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116131, 0.130715, -0.984595,
		0.491814, 0.853675, 0.171343,
		0.862921, -0.504135, 0.034851,
		32.357281, 33.375607, 46.984825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337185, 34.079967, 46.525494>,  <31.753235, 33.728500, 46.960430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337185, 34.079967, 46.525494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498543, 33.717480, 46.576145>,  <32.595356, 33.499985, 46.606537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498543, 33.717480, 46.576145>,  <32.337185, 34.079967, 46.525494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498543, 33.717480, 46.576145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272580, -0.013093, -0.962044,
		0.873484, 0.422597, 0.241737,
		0.403392, -0.906223, 0.126628,
		32.619560, 33.445614, 46.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906788, 34.013668, 45.985405>,  <32.337185, 34.079967, 46.525494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906788, 34.013668, 45.985405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766209, 33.655090, 46.093384>,  <32.681862, 33.439945, 46.158173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766209, 33.655090, 46.093384>,  <32.906788, 34.013668, 45.985405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766209, 33.655090, 46.093384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082125, -0.257708, -0.962726,
		0.932599, -0.360517, 0.016950,
		-0.351447, -0.896446, 0.269946,
		32.660774, 33.386158, 46.174366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328518, 33.667511, 45.435036>,  <32.906788, 34.013668, 45.985405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328518, 33.667511, 45.435036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033543, 33.422462, 45.548801>,  <32.856560, 33.275433, 45.617062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033543, 33.422462, 45.548801>,  <33.328518, 33.667511, 45.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033543, 33.422462, 45.548801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022341, -0.398734, -0.916794,
		0.675050, -0.682429, 0.280354,
		-0.737434, -0.612619, 0.284411,
		32.812313, 33.238678, 45.634125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414650, 32.949295, 45.123207>,  <33.328518, 33.667511, 45.435036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414650, 32.949295, 45.123207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029881, 32.951458, 45.232510>,  <32.799019, 32.952755, 45.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029881, 32.951458, 45.232510>,  <33.414650, 32.949295, 45.123207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029881, 32.951458, 45.232510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261719, -0.306303, -0.915250,
		0.078754, -0.951919, 0.296054,
		-0.961926, 0.005403, 0.273258,
		32.741302, 32.953079, 45.314487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190750, 32.291531, 45.056103>,  <33.414650, 32.949295, 45.123207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190750, 32.291531, 45.056103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849838, 32.500603, 45.047878>,  <32.645290, 32.626045, 45.042946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849838, 32.500603, 45.047878>,  <33.190750, 32.291531, 45.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849838, 32.500603, 45.047878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208815, -0.375996, -0.902786,
		-0.479603, -0.765132, 0.429597,
		-0.852278, 0.522685, -0.020558,
		32.594154, 32.657410, 45.041710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757401, 31.785383, 44.672390>,  <33.190750, 32.291531, 45.056103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757401, 31.785383, 44.672390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545120, 32.124386, 44.668591>,  <32.417751, 32.327785, 44.666309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545120, 32.124386, 44.668591>,  <32.757401, 31.785383, 44.672390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545120, 32.124386, 44.668591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242014, -0.162270, -0.956607,
		-0.812271, -0.505374, 0.291226,
		-0.530702, 0.847505, -0.009500,
		32.385910, 32.378639, 44.665741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050400, 31.625372, 44.491650>,  <32.757401, 31.785383, 44.672390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050400, 31.625372, 44.491650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086235, 32.014481, 44.406155>,  <32.107738, 32.247948, 44.354858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086235, 32.014481, 44.406155>,  <32.050400, 31.625372, 44.491650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086235, 32.014481, 44.406155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475531, -0.146784, -0.867367,
		-0.875125, 0.179348, 0.449433,
		0.089591, 0.972774, -0.213740,
		32.113113, 32.306313, 44.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339287, 31.951025, 44.257069>,  <32.050400, 31.625372, 44.491650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339287, 31.951025, 44.257069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628258, 32.179668, 44.101448>,  <31.801640, 32.316856, 44.008076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628258, 32.179668, 44.101448>,  <31.339287, 31.951025, 44.257069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628258, 32.179668, 44.101448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434379, -0.062594, -0.898553,
		-0.537975, 0.818134, 0.203076,
		0.722425, 0.571611, -0.389054,
		31.844986, 32.351151, 43.984734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949516, 32.231964, 43.833038>,  <31.339287, 31.951025, 44.257069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949516, 32.231964, 43.833038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333794, 32.267651, 43.727886>,  <31.564360, 32.289062, 43.664795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333794, 32.267651, 43.727886>,  <30.949516, 32.231964, 43.833038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333794, 32.267651, 43.727886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242428, -0.191792, -0.951023,
		-0.135261, 0.977373, -0.162626,
		0.960694, 0.089211, -0.262885,
		31.622002, 32.294415, 43.649021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824192, 32.592648, 43.279816>,  <30.949516, 32.231964, 43.833038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824192, 32.592648, 43.279816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199745, 32.462044, 43.236206>,  <31.425077, 32.383682, 43.210041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199745, 32.462044, 43.236206>,  <30.824192, 32.592648, 43.279816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199745, 32.462044, 43.236206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161594, -0.138406, -0.977103,
		0.303945, 0.935005, -0.182709,
		0.938885, -0.326511, -0.109024,
		31.481411, 32.364090, 43.203499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058680, 32.980179, 42.758373>,  <30.824192, 32.592648, 43.279816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058680, 32.980179, 42.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329418, 32.686115, 42.773464>,  <31.491861, 32.509678, 42.782516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329418, 32.686115, 42.773464>,  <31.058680, 32.980179, 42.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329418, 32.686115, 42.773464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121926, -0.162498, -0.979147,
		0.725958, 0.658131, -0.199621,
		0.676845, -0.735158, 0.037723,
		31.532471, 32.465569, 42.784782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596884, 33.160244, 42.258942>,  <31.058680, 32.980179, 42.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596884, 33.160244, 42.258942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615360, 32.768089, 42.335587>,  <31.626446, 32.532799, 42.381573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615360, 32.768089, 42.335587>,  <31.596884, 33.160244, 42.258942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615360, 32.768089, 42.335587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129694, -0.196078, -0.971974,
		0.990478, 0.020045, -0.136207,
		0.046190, -0.980384, 0.191611,
		31.629217, 32.473976, 42.393070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853600, 32.957577, 41.701218>,  <31.596884, 33.160244, 42.258942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853600, 32.957577, 41.701218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754210, 32.599499, 41.849209>,  <31.694574, 32.384651, 41.938004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754210, 32.599499, 41.849209>,  <31.853600, 32.957577, 41.701218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754210, 32.599499, 41.849209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007733, -0.380109, -0.924909,
		0.968607, -0.232679, 0.087525,
		-0.248476, -0.895197, 0.369975,
		31.679667, 32.330940, 41.960201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350800, 32.618248, 41.461475>,  <31.853600, 32.957577, 41.701218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350800, 32.618248, 41.461475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018841, 32.397572, 41.494720>,  <31.819666, 32.265167, 41.514668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018841, 32.397572, 41.494720>,  <32.350800, 32.618248, 41.461475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018841, 32.397572, 41.494720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118906, -0.320441, -0.939776,
		0.545096, -0.770037, 0.331533,
		-0.829898, -0.551690, 0.083109,
		31.769871, 32.232063, 41.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517475, 31.967247, 41.151157>,  <32.350800, 32.618248, 41.461475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517475, 31.967247, 41.151157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123600, 32.032425, 41.126392>,  <31.887274, 32.071533, 41.111534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123600, 32.032425, 41.126392>,  <32.517475, 31.967247, 41.151157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123600, 32.032425, 41.126392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008450, -0.310136, -0.950654,
		-0.174105, -0.936624, 0.304012,
		-0.984691, 0.162945, -0.061911,
		31.828194, 32.081310, 41.107819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332764, 31.536480, 40.621269>,  <32.517475, 31.967247, 41.151157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332764, 31.536480, 40.621269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011566, 31.770531, 40.666580>,  <31.818848, 31.910961, 40.693768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011566, 31.770531, 40.666580>,  <32.332764, 31.536480, 40.621269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011566, 31.770531, 40.666580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163913, -0.034076, -0.985886,
		-0.573007, -0.810227, 0.123273,
		-0.802992, 0.585125, 0.113281,
		31.770668, 31.946068, 40.700565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917143, 31.278008, 40.108894>,  <32.332764, 31.536480, 40.621269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917143, 31.278008, 40.108894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750843, 31.633947, 40.184071>,  <31.651064, 31.847511, 40.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750843, 31.633947, 40.184071>,  <31.917143, 31.278008, 40.108894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750843, 31.633947, 40.184071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161010, 0.131372, -0.978170,
		-0.895114, -0.436933, 0.088657,
		-0.415748, 0.889849, 0.187943,
		31.626118, 31.900902, 40.240452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240238, 31.303823, 39.854149>,  <31.917143, 31.278008, 40.108894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240238, 31.303823, 39.854149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370348, 31.681002, 39.882568>,  <31.448414, 31.907309, 39.899620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370348, 31.681002, 39.882568>,  <31.240238, 31.303823, 39.854149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370348, 31.681002, 39.882568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279407, 0.167615, -0.945430,
		-0.903399, 0.287672, 0.317986,
		0.325273, 0.942948, 0.071046,
		31.467930, 31.963886, 39.903881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711475, 31.696753, 39.491100>,  <31.240238, 31.303823, 39.854149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711475, 31.696753, 39.491100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029642, 31.939108, 39.496841>,  <31.220543, 32.084522, 39.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029642, 31.939108, 39.496841>,  <30.711475, 31.696753, 39.491100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029642, 31.939108, 39.496841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311968, 0.429630, -0.847404,
		-0.519600, 0.669563, 0.530755,
		0.795419, 0.605890, 0.014354,
		31.268269, 32.120876, 39.501148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460194, 32.395046, 39.481754>,  <30.711475, 31.696753, 39.491100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460194, 32.395046, 39.481754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830826, 32.407494, 39.331833>,  <31.053205, 32.414963, 39.241879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830826, 32.407494, 39.331833>,  <30.460194, 32.395046, 39.481754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830826, 32.407494, 39.331833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320949, 0.584936, -0.744876,
		0.196053, 0.810482, 0.551981,
		0.926582, 0.031123, -0.374802,
		31.108801, 32.416832, 39.219391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521555, 33.047611, 39.173794>,  <30.460194, 32.395046, 39.481754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521555, 33.047611, 39.173794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857645, 32.882717, 39.032894>,  <31.059299, 32.783779, 38.948357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857645, 32.882717, 39.032894>,  <30.521555, 33.047611, 39.173794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857645, 32.882717, 39.032894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076317, 0.553246, -0.829515,
		0.536837, 0.723863, 0.433392,
		0.840227, -0.412239, -0.352246,
		31.109713, 32.759045, 38.927219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840057, 33.568600, 38.954407>,  <30.521555, 33.047611, 39.173794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840057, 33.568600, 38.954407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037615, 33.277657, 38.763817>,  <31.156149, 33.103092, 38.649464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037615, 33.277657, 38.763817>,  <30.840057, 33.568600, 38.954407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037615, 33.277657, 38.763817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109973, 0.595821, -0.795552,
		0.862541, 0.340517, 0.374261,
		0.493891, -0.727355, -0.476472,
		31.185781, 33.059448, 38.620876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338032, 33.880154, 38.550713>,  <30.840057, 33.568600, 38.954407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338032, 33.880154, 38.550713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368540, 33.509541, 38.403351>,  <31.386845, 33.287174, 38.314934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368540, 33.509541, 38.403351>,  <31.338032, 33.880154, 38.550713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368540, 33.509541, 38.403351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082983, 0.374098, -0.923669,
		0.993628, 0.039877, 0.105419,
		0.076270, -0.926531, -0.368405,
		31.391420, 33.231583, 38.292828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988619, 33.907177, 38.166393>,  <31.338032, 33.880154, 38.550713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988619, 33.907177, 38.166393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754747, 33.623135, 38.009476>,  <31.614426, 33.452709, 37.915325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754747, 33.623135, 38.009476>,  <31.988619, 33.907177, 38.166393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754747, 33.623135, 38.009476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050305, 0.450899, -0.891156,
		0.809705, -0.540773, -0.227908,
		-0.584677, -0.710109, -0.392299,
		31.579344, 33.410103, 37.891785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272034, 33.562977, 37.563869>,  <31.988619, 33.907177, 38.166393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272034, 33.562977, 37.563869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890625, 33.451618, 37.517746>,  <31.661779, 33.384804, 37.490074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890625, 33.451618, 37.517746>,  <32.272034, 33.562977, 37.563869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890625, 33.451618, 37.517746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065593, 0.565239, -0.822315,
		0.294104, -0.776531, -0.557228,
		-0.953520, -0.278397, -0.115305,
		31.604568, 33.368099, 37.483154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560329, 33.044292, 37.749119>,  <32.272034, 33.562977, 37.563869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560329, 33.044292, 37.749119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943317, 32.940063, 37.699543>,  <33.173111, 32.877525, 37.669796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943317, 32.940063, 37.699543>,  <32.560329, 33.044292, 37.749119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943317, 32.940063, 37.699543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207216, 0.322008, 0.923781,
		-0.200800, -0.910172, 0.362307,
		0.957466, -0.260571, -0.123943,
		33.230556, 32.861893, 37.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659618, 32.735691, 38.372040>,  <32.560329, 33.044292, 37.749119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659618, 32.735691, 38.372040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040867, 32.781399, 38.259968>,  <33.269615, 32.808823, 38.192726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040867, 32.781399, 38.259968>,  <32.659618, 32.735691, 38.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040867, 32.781399, 38.259968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286864, -0.046688, 0.956833,
		0.096256, -0.992352, -0.077279,
		0.953123, 0.114269, -0.280177,
		33.326805, 32.815678, 38.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985134, 32.189213, 38.693302>,  <32.659618, 32.735691, 38.372040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985134, 32.189213, 38.693302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256992, 32.474930, 38.626537>,  <33.420109, 32.646362, 38.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256992, 32.474930, 38.626537>,  <32.985134, 32.189213, 38.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256992, 32.474930, 38.626537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352250, -0.118213, 0.928410,
		0.643427, -0.689789, -0.331953,
		0.679648, 0.714295, -0.166917,
		33.460888, 32.689217, 38.576462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610985, 31.971712, 38.981396>,  <32.985134, 32.189213, 38.693302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610985, 31.971712, 38.981396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659412, 32.366249, 38.936733>,  <33.688469, 32.602970, 38.909935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659412, 32.366249, 38.936733>,  <33.610985, 31.971712, 38.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659412, 32.366249, 38.936733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316458, 0.068264, 0.946147,
		0.940849, -0.149881, -0.303872,
		0.121066, 0.986345, -0.111658,
		33.695732, 32.662151, 38.903236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270248, 32.060532, 39.034672>,  <33.610985, 31.971712, 38.981396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270248, 32.060532, 39.034672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154228, 32.433102, 39.122601>,  <34.084618, 32.656643, 39.175358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154228, 32.433102, 39.122601>,  <34.270248, 32.060532, 39.034672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154228, 32.433102, 39.122601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575226, -0.013894, 0.817876,
		0.764845, 0.363666, -0.531750,
		-0.290046, 0.931426, 0.219817,
		34.067215, 32.712528, 39.188545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906414, 32.513233, 39.208836>,  <34.270248, 32.060532, 39.034672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906414, 32.513233, 39.208836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581871, 32.689827, 39.362091>,  <34.387146, 32.795784, 39.454044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581871, 32.689827, 39.362091>,  <34.906414, 32.513233, 39.208836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581871, 32.689827, 39.362091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430589, 0.008101, 0.902512,
		0.395344, 0.897231, -0.196673,
		-0.811354, 0.441488, 0.383135,
		34.338463, 32.822273, 39.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158516, 32.928303, 39.696045>,  <34.906414, 32.513233, 39.208836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158516, 32.928303, 39.696045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774895, 32.905422, 39.806999>,  <34.544724, 32.891693, 39.873573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774895, 32.905422, 39.806999>,  <35.158516, 32.928303, 39.696045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774895, 32.905422, 39.806999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282970, -0.235026, 0.929888,
		0.012007, 0.970305, 0.241587,
		-0.959054, -0.057197, 0.277389,
		34.487179, 32.888264, 39.890217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098282, 33.491749, 40.147148>,  <35.158516, 32.928303, 39.696045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098282, 33.491749, 40.147148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817139, 33.215660, 40.215950>,  <34.648453, 33.050007, 40.257229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817139, 33.215660, 40.215950>,  <35.098282, 33.491749, 40.147148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817139, 33.215660, 40.215950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310302, -0.079924, 0.947272,
		-0.640080, 0.719171, 0.270352,
		-0.702858, -0.690221, 0.172003,
		34.606281, 33.008595, 40.267551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805584, 33.639748, 40.812801>,  <35.098282, 33.491749, 40.147148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805584, 33.639748, 40.812801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 33.256367, 40.748825>,  <34.654411, 33.026337, 40.710442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 33.256367, 40.748825>,  <34.805584, 33.639748, 40.812801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711102, 33.256367, 40.748825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426293, -0.250121, 0.869318,
		-0.873203, 0.137154, 0.467660,
		-0.236202, -0.958451, -0.159938,
		34.640240, 32.968830, 40.700844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497440, 33.542030, 41.515636>,  <34.805584, 33.639748, 40.812801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497440, 33.542030, 41.515636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569981, 33.191250, 41.337616>,  <34.613506, 32.980782, 41.230804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569981, 33.191250, 41.337616>,  <34.497440, 33.542030, 41.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569981, 33.191250, 41.337616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119195, -0.429622, 0.895108,
		-0.976167, -0.215381, 0.026614,
		0.181355, -0.876947, -0.445055,
		34.624386, 32.928165, 41.204098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034996, 33.018093, 41.916046>,  <34.497440, 33.542030, 41.515636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034996, 33.018093, 41.916046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343655, 32.833145, 41.741333>,  <34.528851, 32.722176, 41.636505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343655, 32.833145, 41.741333>,  <34.034996, 33.018093, 41.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343655, 32.833145, 41.741333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048003, -0.642409, 0.764857,
		-0.634219, -0.611177, -0.473529,
		0.771662, -0.462356, -0.436766,
		34.575146, 32.694431, 41.610298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067280, 32.398357, 42.332985>,  <34.034996, 33.018093, 41.916046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067280, 32.398357, 42.332985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410900, 32.399281, 42.128231>,  <34.617073, 32.399834, 42.005379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410900, 32.399281, 42.128231>,  <34.067280, 32.398357, 42.332985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410900, 32.399281, 42.128231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380326, -0.672183, 0.635233,
		-0.342610, -0.740381, -0.578320,
		0.859052, 0.002313, -0.511883,
		34.668617, 32.399975, 41.974667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312965, 31.688536, 42.399193>,  <34.067280, 32.398357, 42.332985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312965, 31.688536, 42.399193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636356, 31.917168, 42.343102>,  <34.830391, 32.054348, 42.309448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636356, 31.917168, 42.343102>,  <34.312965, 31.688536, 42.399193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636356, 31.917168, 42.343102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439422, -0.427762, 0.789891,
		0.391504, -0.700225, -0.597000,
		0.808476, 0.571580, -0.140223,
		34.878899, 32.088642, 42.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978603, 31.236105, 42.442432>,  <34.312965, 31.688536, 42.399193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978603, 31.236105, 42.442432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053455, 31.619043, 42.530499>,  <35.098366, 31.848806, 42.583336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053455, 31.619043, 42.530499>,  <34.978603, 31.236105, 42.442432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053455, 31.619043, 42.530499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368955, -0.276208, 0.887458,
		0.910416, -0.084836, -0.404903,
		0.187125, 0.957346, 0.220163,
		35.109592, 31.906248, 42.596546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677467, 31.267683, 42.758942>,  <34.978603, 31.236105, 42.442432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677467, 31.267683, 42.758942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490017, 31.600996, 42.876263>,  <35.377544, 31.800983, 42.946655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490017, 31.600996, 42.876263>,  <35.677467, 31.267683, 42.758942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490017, 31.600996, 42.876263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300904, -0.161592, 0.939864,
		0.830567, 0.528705, -0.175011,
		-0.468630, 0.833282, 0.293302,
		35.349426, 31.850981, 42.964252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110687, 31.511936, 43.369816>,  <35.677467, 31.267683, 42.758942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110687, 31.511936, 43.369816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772728, 31.718962, 43.423882>,  <35.569950, 31.843178, 43.456322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772728, 31.718962, 43.423882>,  <36.110687, 31.511936, 43.369816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772728, 31.718962, 43.423882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191327, 0.056431, 0.979903,
		0.499536, 0.853781, -0.146703,
		-0.844901, 0.517565, 0.135162,
		35.519257, 31.874231, 43.464432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144238, 31.876989, 44.035183>,  <36.110687, 31.511936, 43.369816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144238, 31.876989, 44.035183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751282, 31.896301, 43.962990>,  <35.515507, 31.907888, 43.919674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751282, 31.896301, 43.962990>,  <36.144238, 31.876989, 44.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751282, 31.896301, 43.962990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186801, -0.236720, 0.953451,
		0.003308, 0.970378, 0.241571,
		-0.982392, 0.048280, -0.180484,
		35.456566, 31.910786, 43.908844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864941, 32.436096, 44.349575>,  <36.144238, 31.876989, 44.035183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864941, 32.436096, 44.349575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536236, 32.211540, 44.310478>,  <35.339012, 32.076805, 44.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536236, 32.211540, 44.310478>,  <35.864941, 32.436096, 44.349575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536236, 32.211540, 44.310478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132748, 0.021790, 0.990910,
		-0.554159, 0.827263, -0.092429,
		-0.821758, -0.561392, -0.097742,
		35.289707, 32.043121, 44.281155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280231, 32.718872, 44.714603>,  <35.864941, 32.436096, 44.349575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280231, 32.718872, 44.714603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136883, 32.345608, 44.703407>,  <35.050873, 32.121651, 44.696690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136883, 32.345608, 44.703407>,  <35.280231, 32.718872, 44.714603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136883, 32.345608, 44.703407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077551, -0.000124, 0.996988,
		-0.930351, 0.359466, -0.072323,
		-0.358375, -0.933158, -0.027993,
		35.029369, 32.065659, 44.695011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767242, 32.820560, 45.174286>,  <35.280231, 32.718872, 44.714603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767242, 32.820560, 45.174286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857300, 32.433155, 45.131763>,  <34.911335, 32.200714, 45.106251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857300, 32.433155, 45.131763>,  <34.767242, 32.820560, 45.174286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857300, 32.433155, 45.131763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078785, -0.090650, 0.992762,
		-0.971135, -0.231889, 0.055895,
		0.225143, -0.968509, -0.106302,
		34.924843, 32.142601, 45.099873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255913, 32.540829, 45.574635>,  <34.767242, 32.820560, 45.174286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255913, 32.540829, 45.574635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547623, 32.269920, 45.535740>,  <34.722649, 32.107376, 45.512402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547623, 32.269920, 45.535740>,  <34.255913, 32.540829, 45.574635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547623, 32.269920, 45.535740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000015, -0.142130, 0.989848,
		-0.684220, -0.721871, -0.103662,
		0.729276, -0.677275, -0.097237,
		34.766407, 32.066738, 45.506569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021149, 31.974745, 45.865574>,  <34.255913, 32.540829, 45.574635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021149, 31.974745, 45.865574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420742, 31.963743, 45.879860>,  <34.660500, 31.957142, 45.888432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420742, 31.963743, 45.879860>,  <34.021149, 31.974745, 45.865574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420742, 31.963743, 45.879860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036448, -0.026530, 0.998983,
		-0.026530, -0.999269, -0.027506,
		-0.998983, 0.027506, -0.035718,
		34.720436, 31.955492, 45.890575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153301, 31.542912, 46.401783>,  <34.021149, 31.974745, 45.865574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153301, 31.542912, 46.401783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516525, 31.707233, 46.369129>,  <34.734459, 31.805826, 46.349537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516525, 31.707233, 46.369129>,  <34.153301, 31.542912, 46.401783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516525, 31.707233, 46.369129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037190, 0.273216, 0.961233,
		0.417184, -0.869823, 0.263375,
		0.908061, 0.410806, -0.081632,
		34.788944, 31.830475, 46.344639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609970, 31.204334, 46.987160>,  <34.153301, 31.542912, 46.401783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609970, 31.204334, 46.987160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732704, 31.566282, 46.869133>,  <34.806343, 31.783451, 46.798317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732704, 31.566282, 46.869133>,  <34.609970, 31.204334, 46.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732704, 31.566282, 46.869133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016929, 0.304779, 0.952273,
		0.951613, -0.297183, 0.078197,
		0.306832, 0.904871, -0.295063,
		34.824753, 31.837744, 46.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095642, 31.349781, 47.437420>,  <34.609970, 31.204334, 46.987160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095642, 31.349781, 47.437420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976734, 31.703962, 47.294537>,  <34.905388, 31.916471, 47.208805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976734, 31.703962, 47.294537>,  <35.095642, 31.349781, 47.437420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976734, 31.703962, 47.294537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050546, 0.359004, 0.931966,
		0.953454, 0.295102, -0.061965,
		-0.297271, 0.885456, -0.357210,
		34.887554, 31.969599, 47.187374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480789, 31.777378, 47.754551>,  <35.095642, 31.349781, 47.437420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480789, 31.777378, 47.754551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217522, 32.055882, 47.639984>,  <35.059559, 32.222984, 47.571243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217522, 32.055882, 47.639984>,  <35.480789, 31.777378, 47.754551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217522, 32.055882, 47.639984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207903, 0.533725, 0.819703,
		0.723594, 0.479958, -0.496037,
		-0.658171, 0.696260, -0.286415,
		35.020069, 32.264759, 47.554058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744850, 32.385445, 48.014084>,  <35.480789, 31.777378, 47.754551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744850, 32.385445, 48.014084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363400, 32.491138, 47.956440>,  <35.134529, 32.554554, 47.921856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363400, 32.491138, 47.956440>,  <35.744850, 32.385445, 48.014084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363400, 32.491138, 47.956440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022604, 0.540316, 0.841158,
		0.300127, 0.798898, -0.521235,
		-0.953631, 0.264237, -0.144105,
		35.077309, 32.570408, 47.913208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656277, 33.116108, 47.892345>,  <35.744850, 32.385445, 48.014084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656277, 33.116108, 47.892345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310810, 32.991001, 48.050465>,  <35.103531, 32.915936, 48.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310810, 32.991001, 48.050465>,  <35.656277, 33.116108, 47.892345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310810, 32.991001, 48.050465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072652, 0.698786, 0.711632,
		-0.498800, 0.643332, -0.580795,
		-0.863667, -0.312767, 0.395294,
		35.051708, 32.897171, 48.169052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193245, 33.703186, 48.088856>,  <35.656277, 33.116108, 47.892345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193245, 33.703186, 48.088856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056423, 33.392643, 48.300613>,  <34.974331, 33.206318, 48.427670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056423, 33.392643, 48.300613>,  <35.193245, 33.703186, 48.088856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056423, 33.392643, 48.300613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072114, 0.583407, 0.808972,
		-0.936910, 0.238533, -0.255542,
		-0.342051, -0.776362, 0.529399,
		34.953808, 33.159733, 48.459435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731800, 33.978855, 48.593578>,  <35.193245, 33.703186, 48.088856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731800, 33.978855, 48.593578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807976, 33.628654, 48.771221>,  <34.853680, 33.418533, 48.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807976, 33.628654, 48.771221>,  <34.731800, 33.978855, 48.593578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807976, 33.628654, 48.771221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162480, 0.418037, 0.893781,
		-0.968159, -0.242370, -0.062640,
		0.190440, -0.875501, 0.444107,
		34.865108, 33.366005, 48.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384922, 33.951004, 49.247406>,  <34.731800, 33.978855, 48.593578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384922, 33.951004, 49.247406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675621, 33.681694, 49.301865>,  <34.850040, 33.520107, 49.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675621, 33.681694, 49.301865>,  <34.384922, 33.951004, 49.247406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675621, 33.681694, 49.301865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163410, 0.361977, 0.917753,
		-0.667180, -0.644731, 0.373087,
		0.726752, -0.673272, 0.136148,
		34.893646, 33.479713, 49.342709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184734, 33.503090, 49.769424>,  <34.384922, 33.951004, 49.247406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184734, 33.503090, 49.769424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583435, 33.472256, 49.778812>,  <34.822655, 33.453754, 49.784443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583435, 33.472256, 49.778812>,  <34.184734, 33.503090, 49.769424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583435, 33.472256, 49.778812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005864, 0.221063, 0.975242,
		-0.080366, -0.972208, 0.219892,
		0.996748, -0.077087, 0.023467,
		34.882458, 33.449131, 49.785851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298397, 33.284836, 50.459656>,  <34.184734, 33.503090, 49.769424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298397, 33.284836, 50.459656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662628, 33.390381, 50.332390>,  <34.881165, 33.453709, 50.256031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662628, 33.390381, 50.332390>,  <34.298397, 33.284836, 50.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662628, 33.390381, 50.332390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238855, 0.292319, 0.926012,
		0.337348, -0.919198, 0.203152,
		0.910574, 0.263865, -0.318169,
		34.935799, 33.469540, 50.236938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672764, 33.021046, 50.956318>,  <34.298397, 33.284836, 50.459656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672764, 33.021046, 50.956318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919510, 33.274845, 50.770031>,  <35.067558, 33.427124, 50.658260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919510, 33.274845, 50.770031>,  <34.672764, 33.021046, 50.956318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919510, 33.274845, 50.770031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273672, 0.381878, 0.882764,
		0.737959, -0.671998, 0.061922,
		0.616863, 0.634498, -0.465718,
		35.104568, 33.465195, 50.630314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314747, 32.953598, 51.375530>,  <34.672764, 33.021046, 50.956318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314747, 32.953598, 51.375530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301323, 33.297176, 51.171143>,  <35.293270, 33.503323, 51.048512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301323, 33.297176, 51.171143>,  <35.314747, 32.953598, 51.375530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301323, 33.297176, 51.171143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247367, 0.502487, 0.828442,
		0.968341, -0.098597, -0.229336,
		-0.033556, 0.858944, -0.510969,
		35.291256, 33.554859, 51.017853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889038, 33.458813, 51.588928>,  <35.314747, 32.953598, 51.375530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889038, 33.458813, 51.588928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608150, 33.697220, 51.433163>,  <35.439617, 33.840263, 51.339703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608150, 33.697220, 51.433163>,  <35.889038, 33.458813, 51.588928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608150, 33.697220, 51.433163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187652, 0.682569, 0.706319,
		0.686785, 0.422916, -0.591158,
		-0.702220, 0.596021, -0.389417,
		35.397484, 33.876026, 51.316338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207420, 34.100464, 51.539478>,  <35.889038, 33.458813, 51.588928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207420, 34.100464, 51.539478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820076, 34.200283, 51.538467>,  <35.587669, 34.260174, 51.537861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820076, 34.200283, 51.538467>,  <36.207420, 34.100464, 51.539478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820076, 34.200283, 51.538467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180892, 0.708860, 0.681759,
		0.171924, 0.659731, -0.731572,
		-0.968360, 0.249546, -0.002530,
		35.529568, 34.275146, 51.537708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176739, 34.812180, 51.767242>,  <36.207420, 34.100464, 51.539478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176739, 34.812180, 51.767242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795410, 34.692425, 51.782990>,  <35.566612, 34.620571, 51.792439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795410, 34.692425, 51.782990>,  <36.176739, 34.812180, 51.767242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795410, 34.692425, 51.782990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151851, 0.588002, 0.794478,
		-0.261006, 0.751412, -0.606016,
		-0.953319, -0.299387, 0.039369,
		35.509415, 34.602608, 51.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820290, 34.728653, 51.500298>,  <36.176739, 34.812180, 51.767242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820290, 34.728653, 51.500298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153099, 34.950504, 51.495865>,  <37.352787, 35.083614, 51.493206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153099, 34.950504, 51.495865>,  <36.820290, 34.728653, 51.500298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153099, 34.950504, 51.495865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192548, 0.270006, -0.943410,
		-0.520249, 0.787074, 0.331444,
		0.832025, 0.554627, -0.011079,
		37.402706, 35.116894, 51.492542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708324, 35.426907, 51.190826>,  <36.820290, 34.728653, 51.500298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708324, 35.426907, 51.190826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101929, 35.374981, 51.142040>,  <37.338089, 35.343826, 51.112770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101929, 35.374981, 51.142040>,  <36.708324, 35.426907, 51.190826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101929, 35.374981, 51.142040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059834, 0.404054, -0.912776,
		0.167771, 0.905477, 0.389825,
		0.984009, -0.129812, -0.121967,
		37.397133, 35.336037, 51.105450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888660, 35.917908, 50.737503>,  <36.708324, 35.426907, 51.190826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888660, 35.917908, 50.737503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222092, 35.697109, 50.729031>,  <37.422150, 35.564629, 50.723949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222092, 35.697109, 50.729031>,  <36.888660, 35.917908, 50.737503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222092, 35.697109, 50.729031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091792, 0.176216, -0.980062,
		0.544727, 0.815011, 0.197559,
		0.833575, -0.552000, -0.021178,
		37.472164, 35.531509, 50.722675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345242, 36.275043, 50.272045>,  <36.888660, 35.917908, 50.737503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345242, 36.275043, 50.272045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478115, 35.897770, 50.268883>,  <37.557838, 35.671406, 50.266987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478115, 35.897770, 50.268883>,  <37.345242, 36.275043, 50.272045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478115, 35.897770, 50.268883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033693, -0.003493, -0.999426,
		0.942612, 0.332261, -0.032939,
		0.332185, -0.943181, -0.007902,
		37.577770, 35.614815, 50.266514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959152, 36.249046, 49.771149>,  <37.345242, 36.275043, 50.272045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959152, 36.249046, 49.771149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819569, 35.875393, 49.801125>,  <37.735817, 35.651199, 49.819111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819569, 35.875393, 49.801125>,  <37.959152, 36.249046, 49.771149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819569, 35.875393, 49.801125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058732, -0.058010, -0.996587,
		0.935294, -0.352174, -0.034620,
		-0.348963, -0.934135, 0.074940,
		37.714878, 35.595154, 49.823608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918919, 36.075439, 49.017174>,  <37.959152, 36.249046, 49.771149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918919, 36.075439, 49.017174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774597, 35.745136, 49.190586>,  <37.688004, 35.546955, 49.294632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774597, 35.745136, 49.190586>,  <37.918919, 36.075439, 49.017174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774597, 35.745136, 49.190586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049338, -0.447288, -0.893028,
		0.931337, -0.343595, 0.120641,
		-0.360802, -0.825758, 0.433528,
		37.666355, 35.497410, 49.320644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438000, 35.556984, 48.832329>,  <37.918919, 36.075439, 49.017174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438000, 35.556984, 48.832329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060539, 35.435661, 48.885281>,  <37.834061, 35.362869, 48.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060539, 35.435661, 48.885281>,  <38.438000, 35.556984, 48.832329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060539, 35.435661, 48.885281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060068, -0.236390, -0.969800,
		0.325438, -0.923106, 0.204851,
		-0.943653, -0.303305, 0.132379,
		37.777443, 35.344669, 48.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338913, 34.870953, 48.628284>,  <38.438000, 35.556984, 48.832329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338913, 34.870953, 48.628284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967934, 35.020443, 48.623112>,  <37.745346, 35.110138, 48.620010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967934, 35.020443, 48.623112>,  <38.338913, 34.870953, 48.628284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967934, 35.020443, 48.623112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149042, -0.401135, -0.903813,
		-0.342962, -0.836314, 0.427733,
		-0.927450, 0.373723, -0.012928,
		37.689697, 35.132561, 48.619232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976692, 34.343559, 48.446106>,  <38.338913, 34.870953, 48.628284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976692, 34.343559, 48.446106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729916, 34.648930, 48.369621>,  <37.581848, 34.832153, 48.323730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729916, 34.648930, 48.369621>,  <37.976692, 34.343559, 48.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729916, 34.648930, 48.369621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208477, -0.392807, -0.895679,
		-0.758892, -0.512721, 0.401496,
		-0.616944, 0.763426, -0.191207,
		37.544834, 34.877956, 48.312260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477821, 34.016510, 48.141167>,  <37.976692, 34.343559, 48.446106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477821, 34.016510, 48.141167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440517, 34.402737, 48.044022>,  <37.418137, 34.634472, 47.985737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440517, 34.402737, 48.044022>,  <37.477821, 34.016510, 48.141167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440517, 34.402737, 48.044022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384871, -0.259922, -0.885616,
		-0.918247, 0.010878, 0.395859,
		-0.093259, 0.965568, -0.242859,
		37.412540, 34.692406, 47.971165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960030, 33.945995, 47.734558>,  <37.477821, 34.016510, 48.141167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960030, 33.945995, 47.734558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081749, 34.318729, 47.655479>,  <37.154781, 34.542370, 47.608032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081749, 34.318729, 47.655479>,  <36.960030, 33.945995, 47.734558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081749, 34.318729, 47.655479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262880, -0.117329, -0.957668,
		-0.915587, 0.343382, 0.209260,
		0.304294, 0.931838, -0.197693,
		37.173038, 34.598282, 47.596172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367260, 34.403305, 47.399315>,  <36.960030, 33.945995, 47.734558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367260, 34.403305, 47.399315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742840, 34.498337, 47.299770>,  <36.968185, 34.555355, 47.240044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742840, 34.498337, 47.299770>,  <36.367260, 34.403305, 47.399315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742840, 34.498337, 47.299770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226487, -0.117677, -0.966879,
		-0.259000, 0.964213, -0.056683,
		0.938948, 0.237584, -0.248860,
		37.024525, 34.569611, 47.225113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303219, 34.830887, 46.851143>,  <36.367260, 34.403305, 47.399315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303219, 34.830887, 46.851143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690704, 34.732372, 46.838894>,  <36.923195, 34.673264, 46.831543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690704, 34.732372, 46.838894>,  <36.303219, 34.830887, 46.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690704, 34.732372, 46.838894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038916, -0.028865, -0.998825,
		0.245109, 0.968768, -0.037546,
		0.968714, -0.246282, -0.030626,
		36.981319, 34.658489, 46.829708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567322, 35.228065, 46.295830>,  <36.303219, 34.830887, 46.851143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567322, 35.228065, 46.295830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834629, 34.933994, 46.341320>,  <36.995014, 34.757553, 46.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834629, 34.933994, 46.341320>,  <36.567322, 35.228065, 46.295830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834629, 34.933994, 46.341320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154108, -0.012747, -0.987972,
		0.727785, 0.677754, 0.104779,
		0.668266, -0.735179, 0.113724,
		37.035110, 34.713440, 46.375439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036640, 35.353088, 45.790932>,  <36.567322, 35.228065, 46.295830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036640, 35.353088, 45.790932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122108, 34.973347, 45.883083>,  <37.173389, 34.745502, 45.938374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122108, 34.973347, 45.883083>,  <37.036640, 35.353088, 45.790932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122108, 34.973347, 45.883083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235217, -0.178892, -0.955338,
		0.948166, 0.258313, 0.185080,
		0.213667, -0.949354, 0.230378,
		37.186207, 34.688541, 45.952198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671276, 35.111115, 45.354137>,  <37.036640, 35.353088, 45.790932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671276, 35.111115, 45.354137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491539, 34.777443, 45.482040>,  <37.383698, 34.577240, 45.558781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491539, 34.777443, 45.482040>,  <37.671276, 35.111115, 45.354137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491539, 34.777443, 45.482040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321692, -0.484999, -0.813197,
		0.833432, -0.262537, 0.486277,
		-0.449338, -0.834176, 0.319758,
		37.356739, 34.527191, 45.577969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064262, 34.524197, 45.126545>,  <37.671276, 35.111115, 45.354137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064262, 34.524197, 45.126545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705807, 34.361908, 45.198460>,  <37.490734, 34.264534, 45.241608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705807, 34.361908, 45.198460>,  <38.064262, 34.524197, 45.126545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705807, 34.361908, 45.198460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060314, -0.290026, -0.955116,
		0.439659, -0.866759, 0.235432,
		-0.896137, -0.405725, 0.179790,
		37.436966, 34.240189, 45.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135544, 33.835224, 44.897930>,  <38.064262, 34.524197, 45.126545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135544, 33.835224, 44.897930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745724, 33.922653, 44.917835>,  <37.511833, 33.975113, 44.929779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745724, 33.922653, 44.917835>,  <38.135544, 33.835224, 44.897930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745724, 33.922653, 44.917835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132761, -0.383897, -0.913782,
		-0.180624, -0.897134, 0.403145,
		-0.974551, 0.218573, 0.049763,
		37.453358, 33.988224, 44.932762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917152, 33.291416, 44.650105>,  <38.135544, 33.835224, 44.897930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917152, 33.291416, 44.650105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637032, 33.575226, 44.618752>,  <37.468960, 33.745514, 44.599937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637032, 33.575226, 44.618752>,  <37.917152, 33.291416, 44.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637032, 33.575226, 44.618752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020147, -0.129409, -0.991387,
		-0.713559, -0.692694, 0.104921,
		-0.700305, 0.709527, -0.078385,
		37.426941, 33.788082, 44.595238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331543, 32.958893, 44.302605>,  <37.917152, 33.291416, 44.650105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331543, 32.958893, 44.302605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283863, 33.354416, 44.266701>,  <37.255253, 33.591728, 44.245159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283863, 33.354416, 44.266701>,  <37.331543, 32.958893, 44.302605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283863, 33.354416, 44.266701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200540, -0.112518, -0.973203,
		-0.972406, -0.098009, 0.211707,
		-0.119204, 0.988804, -0.089759,
		37.248100, 33.651058, 44.239773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668514, 33.060165, 43.877975>,  <37.331543, 32.958893, 44.302605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668514, 33.060165, 43.877975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887470, 33.392956, 43.841797>,  <37.018845, 33.592628, 43.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887470, 33.392956, 43.841797>,  <36.668514, 33.060165, 43.877975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887470, 33.392956, 43.841797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029370, -0.088915, -0.995606,
		-0.836363, 0.547640, -0.024236,
		0.547388, 0.831977, -0.090449,
		37.051685, 33.642548, 43.814663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228863, 33.613655, 43.452377>,  <36.668514, 33.060165, 43.877975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228863, 33.613655, 43.452377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625275, 33.662727, 43.431160>,  <36.863121, 33.692173, 43.418430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625275, 33.662727, 43.431160>,  <36.228863, 33.613655, 43.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625275, 33.662727, 43.431160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044500, -0.071346, -0.996459,
		-0.126034, 0.989878, -0.065247,
		0.991027, 0.122684, -0.053041,
		36.922585, 33.699532, 43.415249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298290, 33.947304, 42.867355>,  <36.228863, 33.613655, 43.452377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298290, 33.947304, 42.867355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685585, 33.864197, 42.923008>,  <36.917961, 33.814335, 42.956398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685585, 33.864197, 42.923008>,  <36.298290, 33.947304, 42.867355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685585, 33.864197, 42.923008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120200, -0.101167, -0.987582,
		0.219260, 0.972933, -0.072980,
		0.968234, -0.207765, 0.139128,
		36.976055, 33.801868, 42.964745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569805, 34.407780, 42.452248>,  <36.298290, 33.947304, 42.867355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569805, 34.407780, 42.452248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850643, 34.126888, 42.499470>,  <37.019146, 33.958351, 42.527805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850643, 34.126888, 42.499470>,  <36.569805, 34.407780, 42.452248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850643, 34.126888, 42.499470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078342, -0.088614, -0.992980,
		0.707764, 0.706412, -0.007201,
		0.702091, -0.702232, 0.118060,
		37.061272, 33.916218, 42.534889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190075, 34.630283, 42.064232>,  <36.569805, 34.407780, 42.452248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190075, 34.630283, 42.064232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202969, 34.233238, 42.111031>,  <37.210705, 33.995010, 42.139111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202969, 34.233238, 42.111031>,  <37.190075, 34.630283, 42.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202969, 34.233238, 42.111031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169360, -0.109941, -0.979403,
		0.985027, 0.051387, 0.164564,
		0.032236, -0.992609, 0.116998,
		37.212639, 33.935455, 42.146130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837841, 34.365620, 41.777058>,  <37.190075, 34.630283, 42.064232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837841, 34.365620, 41.777058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643284, 34.016811, 41.798981>,  <37.526550, 33.807526, 41.812134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643284, 34.016811, 41.798981>,  <37.837841, 34.365620, 41.777058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643284, 34.016811, 41.798981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233919, -0.190395, -0.953431,
		0.841847, -0.450920, 0.296589,
		-0.486391, -0.872021, 0.054804,
		37.497368, 33.755203, 41.815422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243591, 33.724957, 41.604088>,  <37.837841, 34.365620, 41.777058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243591, 33.724957, 41.604088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866051, 33.629238, 41.512981>,  <37.639526, 33.571808, 41.458317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866051, 33.629238, 41.512981>,  <38.243591, 33.724957, 41.604088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866051, 33.629238, 41.512981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269738, -0.160174, -0.949519,
		0.190733, -0.957644, 0.215728,
		-0.943855, -0.239295, -0.227762,
		37.582893, 33.557449, 41.444653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403542, 33.433918, 41.032951>,  <38.243591, 33.724957, 41.604088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403542, 33.433918, 41.032951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004051, 33.453953, 41.035343>,  <37.764359, 33.465973, 41.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004051, 33.453953, 41.035343>,  <38.403542, 33.433918, 41.032951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004051, 33.453953, 41.035343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007136, -0.022856, -0.999713,
		-0.049951, -0.998483, 0.023184,
		-0.998726, 0.050102, 0.005983,
		37.704433, 33.468979, 41.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221977, 32.930405, 40.518196>,  <38.403542, 33.433918, 41.032951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221977, 32.930405, 40.518196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927361, 33.198711, 40.553017>,  <37.750591, 33.359695, 40.573910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927361, 33.198711, 40.553017>,  <38.221977, 32.930405, 40.518196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927361, 33.198711, 40.553017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085631, 0.035191, -0.995705,
		-0.670953, -0.740829, 0.031519,
		-0.736539, 0.670771, 0.087049,
		37.706398, 33.399944, 40.579132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798859, 32.624969, 40.106224>,  <38.221977, 32.930405, 40.518196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798859, 32.624969, 40.106224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665440, 32.999546, 40.149708>,  <37.585388, 33.224293, 40.175797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665440, 32.999546, 40.149708>,  <37.798859, 32.624969, 40.106224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665440, 32.999546, 40.149708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301563, 0.003270, -0.953441,
		-0.893201, -0.350798, 0.281307,
		-0.333545, 0.936445, 0.108708,
		37.565376, 33.280479, 40.182320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253757, 32.653877, 39.791042>,  <37.798859, 32.624969, 40.106224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253757, 32.653877, 39.791042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332897, 33.045944, 39.795563>,  <37.380379, 33.281185, 39.798275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332897, 33.045944, 39.795563>,  <37.253757, 32.653877, 39.791042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332897, 33.045944, 39.795563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141987, 0.040064, -0.989058,
		-0.969895, 0.194077, 0.147098,
		0.197847, 0.980168, 0.011301,
		37.392250, 33.339996, 39.798954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713890, 33.078781, 39.469189>,  <37.253757, 32.653877, 39.791042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713890, 33.078781, 39.469189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026508, 33.326374, 39.438091>,  <37.214081, 33.474930, 39.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026508, 33.326374, 39.438091>,  <36.713890, 33.078781, 39.469189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026508, 33.326374, 39.438091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232671, 0.173583, -0.956940,
		-0.578831, 0.765985, 0.279683,
		0.781549, 0.618980, -0.077747,
		37.260975, 33.512070, 39.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516548, 33.564655, 38.994854>,  <36.713890, 33.078781, 39.469189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516548, 33.564655, 38.994854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913609, 33.610119, 39.011471>,  <37.151844, 33.637398, 39.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913609, 33.610119, 39.011471>,  <36.516548, 33.564655, 38.994854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913609, 33.610119, 39.011471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038191, 0.031488, -0.998774,
		-0.114829, 0.993020, 0.026915,
		0.992651, 0.113660, 0.041541,
		37.211403, 33.644218, 39.023933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703236, 33.909931, 38.402061>,  <36.516548, 33.564655, 38.994854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703236, 33.909931, 38.402061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075459, 33.787567, 38.482540>,  <37.298794, 33.714149, 38.530827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075459, 33.787567, 38.482540>,  <36.703236, 33.909931, 38.402061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075459, 33.787567, 38.482540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257994, 0.157903, -0.953156,
		0.259809, 0.938875, 0.225861,
		0.930558, -0.305910, 0.201200,
		37.354626, 33.695793, 38.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214039, 34.366711, 38.118809>,  <36.703236, 33.909931, 38.402061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214039, 34.366711, 38.118809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425049, 34.032539, 38.180500>,  <37.551655, 33.832039, 38.217514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425049, 34.032539, 38.180500>,  <37.214039, 34.366711, 38.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425049, 34.032539, 38.180500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534923, 0.185610, -0.824261,
		0.659982, 0.517316, 0.544801,
		0.527524, -0.835424, 0.154225,
		37.583305, 33.781914, 38.226768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804676, 34.615746, 37.867821>,  <37.214039, 34.366711, 38.118809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804676, 34.615746, 37.867821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857948, 34.219490, 37.879768>,  <37.889912, 33.981735, 37.886936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857948, 34.219490, 37.879768>,  <37.804676, 34.615746, 37.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857948, 34.219490, 37.879768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507389, 0.042263, -0.860680,
		0.851363, 0.129784, 0.508269,
		0.133184, -0.990641, 0.029870,
		37.897903, 33.922298, 37.888729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579456, 34.467415, 37.661148>,  <37.804676, 34.615746, 37.867821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579456, 34.467415, 37.661148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362064, 34.144257, 37.570000>,  <38.231628, 33.950359, 37.515312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362064, 34.144257, 37.570000>,  <38.579456, 34.467415, 37.661148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362064, 34.144257, 37.570000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406707, -0.015961, -0.913419,
		0.734314, -0.589104, 0.337253,
		-0.543482, -0.807900, -0.227872,
		38.199020, 33.901886, 37.501637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078903, 34.150249, 37.282642>,  <38.579456, 34.467415, 37.661148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078903, 34.150249, 37.282642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733109, 33.975052, 37.183998>,  <38.525631, 33.869934, 37.124809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733109, 33.975052, 37.183998>,  <39.078903, 34.150249, 37.282642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733109, 33.975052, 37.183998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282625, -0.017826, -0.959065,
		0.415672, -0.898799, 0.139199,
		-0.864488, -0.437998, -0.246614,
		38.473763, 33.843651, 37.110012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203228, 33.546574, 36.814751>,  <39.078903, 34.150249, 37.282642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203228, 33.546574, 36.814751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819565, 33.634171, 36.743134>,  <38.589367, 33.686729, 36.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819565, 33.634171, 36.743134>,  <39.203228, 33.546574, 36.814751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819565, 33.634171, 36.743134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158798, -0.106958, -0.981500,
		-0.234090, -0.969847, 0.067814,
		-0.959158, 0.218991, -0.179048,
		38.531818, 33.699867, 36.689419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909008, 33.683990, 37.131779>,  <39.203228, 33.546574, 36.814751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909008, 33.683990, 37.131779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913006, 34.016762, 37.353699>,  <39.915405, 34.216423, 37.486851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913006, 34.016762, 37.353699>,  <39.909008, 33.683990, 37.131779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913006, 34.016762, 37.353699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737529, 0.368528, -0.565896,
		-0.675242, 0.414831, -0.609888,
		0.009991, 0.831927, 0.554795,
		39.916004, 34.266338, 37.520138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931705, 34.203568, 36.709663>,  <39.909008, 33.683990, 37.131779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931705, 34.203568, 36.709663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097839, 34.338543, 37.047569>,  <40.197521, 34.419529, 37.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097839, 34.338543, 37.047569>,  <39.931705, 34.203568, 36.709663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097839, 34.338543, 37.047569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732148, 0.427131, -0.530584,
		-0.539865, 0.838865, -0.069651,
		0.415338, 0.337439, 0.844766,
		40.222443, 34.439774, 37.300999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101395, 34.980579, 36.605824>,  <39.931705, 34.203568, 36.709663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101395, 34.980579, 36.605824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346241, 34.804604, 36.868660>,  <40.493149, 34.699020, 37.026363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346241, 34.804604, 36.868660>,  <40.101395, 34.980579, 36.605824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346241, 34.804604, 36.868660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788704, 0.399693, -0.467110,
		-0.057137, 0.804177, 0.591637,
		0.612113, -0.439937, 0.657095,
		40.529877, 34.672623, 37.065788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642658, 35.431141, 36.794971>,  <40.101395, 34.980579, 36.605824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642658, 35.431141, 36.794971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808262, 35.096367, 36.938160>,  <40.907623, 34.895504, 37.024071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808262, 35.096367, 36.938160>,  <40.642658, 35.431141, 36.794971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808262, 35.096367, 36.938160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906853, 0.413277, -0.082579,
		-0.078827, 0.358813, 0.930075,
		0.414009, -0.836932, 0.357968,
		40.932465, 34.845287, 37.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198166, 35.657223, 37.216248>,  <40.642658, 35.431141, 36.794971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198166, 35.657223, 37.216248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292923, 35.278934, 37.127258>,  <41.349777, 35.051960, 37.073864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292923, 35.278934, 37.127258>,  <41.198166, 35.657223, 37.216248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292923, 35.278934, 37.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948949, 0.274326, -0.155699,
		0.208279, -0.174233, 0.962425,
		0.236890, -0.945721, -0.222475,
		41.363991, 34.995216, 37.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941181, 35.466663, 37.544476>,  <41.198166, 35.657223, 37.216248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941181, 35.466663, 37.544476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869614, 35.267052, 37.205311>,  <41.826672, 35.147285, 37.001812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869614, 35.267052, 37.205311>,  <41.941181, 35.466663, 37.544476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869614, 35.267052, 37.205311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949880, 0.136934, -0.281028,
		0.256349, -0.855700, 0.449514,
		-0.178922, -0.499026, -0.847915,
		41.815937, 35.117344, 36.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381149, 35.009911, 37.450935>,  <41.941181, 35.466663, 37.544476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381149, 35.009911, 37.450935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255180, 35.134914, 37.092457>,  <42.179600, 35.209919, 36.877369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255180, 35.134914, 37.092457>,  <42.381149, 35.009911, 37.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255180, 35.134914, 37.092457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948976, 0.120035, -0.291609,
		0.016442, -0.942299, -0.334370,
		-0.314919, 0.312514, -0.896192,
		42.160706, 35.228668, 36.823601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975990, 34.837383, 37.003574>,  <42.381149, 35.009911, 37.450935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975990, 34.837383, 37.003574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766872, 35.084251, 36.768360>,  <42.641403, 35.232372, 36.627232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766872, 35.084251, 36.768360>,  <42.975990, 34.837383, 37.003574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766872, 35.084251, 36.768360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851370, 0.343180, -0.396732,
		-0.043050, -0.708045, -0.704853,
		-0.522796, 0.617170, -0.588035,
		42.610035, 35.269402, 36.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516960, 35.221027, 37.017612>,  <42.975990, 34.837383, 37.003574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516960, 35.221027, 37.017612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559322, 35.299561, 36.627693>,  <43.584740, 35.346680, 36.393742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559322, 35.299561, 36.627693>,  <43.516960, 35.221027, 37.017612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559322, 35.299561, 36.627693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660150, 0.746996, 0.078731,
		0.743630, 0.635179, 0.208714,
		0.105900, 0.196329, -0.974803,
		43.591091, 35.358459, 36.335251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460232, 35.990730, 36.924366>,  <43.516960, 35.221027, 37.017612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460232, 35.990730, 36.924366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392963, 35.856503, 36.553612>,  <43.352604, 35.775967, 36.331158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392963, 35.856503, 36.553612>,  <43.460232, 35.990730, 36.924366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392963, 35.856503, 36.553612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558249, 0.807385, -0.191017,
		0.812452, 0.485310, -0.323104,
		-0.168167, -0.335565, -0.926885,
		43.342514, 35.755833, 36.275547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626610, 36.514507, 36.471035>,  <43.460232, 35.990730, 36.924366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626610, 36.514507, 36.471035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357800, 36.275909, 36.295502>,  <43.196514, 36.132751, 36.190182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357800, 36.275909, 36.295502>,  <43.626610, 36.514507, 36.471035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357800, 36.275909, 36.295502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496975, 0.802606, -0.329909,
		0.548999, -0.003618, -0.835815,
		-0.672024, -0.596499, -0.438832,
		43.156193, 36.096958, 36.163853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501228, 36.865749, 35.855396>,  <43.626610, 36.514507, 36.471035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501228, 36.865749, 35.855396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201794, 36.608196, 35.918686>,  <43.022133, 36.453663, 35.956661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201794, 36.608196, 35.918686>,  <43.501228, 36.865749, 35.855396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201794, 36.608196, 35.918686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661827, 0.711183, -0.237073,
		0.040122, -0.282185, -0.958521,
		-0.748583, -0.643887, 0.158223,
		42.977219, 36.415031, 35.966152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026825, 37.021103, 35.393730>,  <43.501228, 36.865749, 35.855396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026825, 37.021103, 35.393730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787811, 36.811890, 35.636841>,  <42.644402, 36.686363, 35.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787811, 36.811890, 35.636841>,  <43.026825, 37.021103, 35.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787811, 36.811890, 35.636841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744509, 0.643361, -0.178306,
		-0.297760, -0.559039, -0.773831,
		-0.597533, -0.523032, 0.607777,
		42.608551, 36.654980, 35.819176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448452, 36.910671, 34.982330>,  <43.026825, 37.021103, 35.393730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448452, 36.910671, 34.982330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337646, 36.853325, 35.362373>,  <42.271164, 36.818916, 35.590401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337646, 36.853325, 35.362373>,  <42.448452, 36.910671, 34.982330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337646, 36.853325, 35.362373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730247, 0.674074, -0.111194,
		-0.624502, -0.724617, -0.291423,
		-0.277014, -0.143369, 0.950110,
		42.254543, 36.810314, 35.647408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763325, 37.051765, 35.031380>,  <42.448452, 36.910671, 34.982330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763325, 37.051765, 35.031380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815201, 37.050179, 35.427998>,  <41.846329, 37.049225, 35.665970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815201, 37.050179, 35.427998>,  <41.763325, 37.051765, 35.031380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815201, 37.050179, 35.427998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638939, 0.764364, 0.086631,
		-0.758246, -0.644773, 0.096599,
		0.129694, -0.003966, 0.991546,
		41.854111, 37.048988, 35.725460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101463, 37.096882, 35.284729>,  <41.763325, 37.051765, 35.031380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101463, 37.096882, 35.284729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332478, 37.251652, 35.572266>,  <41.471088, 37.344513, 35.744789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332478, 37.251652, 35.572266>,  <41.101463, 37.096882, 35.284729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332478, 37.251652, 35.572266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644389, 0.756683, 0.110424,
		-0.501211, -0.526989, 0.686346,
		0.577538, 0.386929, 0.718843,
		41.505737, 37.367729, 35.787918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711594, 37.280228, 35.857704>,  <41.101463, 37.096882, 35.284729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711594, 37.280228, 35.857704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039028, 37.506805, 35.895760>,  <41.235489, 37.642754, 35.918594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039028, 37.506805, 35.895760>,  <40.711594, 37.280228, 35.857704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039028, 37.506805, 35.895760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572122, 0.789433, 0.222424,
		0.050882, -0.236507, 0.970297,
		0.818588, 0.566446, 0.095143,
		41.284603, 37.676739, 35.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528168, 37.716431, 36.409184>,  <40.711594, 37.280228, 35.857704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528168, 37.716431, 36.409184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830929, 37.892975, 36.216393>,  <41.012585, 37.998901, 36.100719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830929, 37.892975, 36.216393>,  <40.528168, 37.716431, 36.409184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830929, 37.892975, 36.216393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420648, 0.893437, 0.157564,
		0.500157, 0.083482, 0.861901,
		0.756900, 0.441364, -0.481975,
		41.057999, 38.025383, 36.071800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858669, 38.347939, 36.874546>,  <40.528168, 37.716431, 36.409184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858669, 38.347939, 36.874546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935654, 38.421352, 36.488949>,  <40.981846, 38.465401, 36.257591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935654, 38.421352, 36.488949>,  <40.858669, 38.347939, 36.874546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935654, 38.421352, 36.488949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398856, 0.912179, 0.094036,
		0.896589, 0.366395, 0.248761,
		0.192461, 0.183531, -0.963989,
		40.993393, 38.476414, 36.199753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802948, 39.108284, 36.739662>,  <40.858669, 38.347939, 36.874546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802948, 39.108284, 36.739662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771523, 38.990868, 36.358578>,  <40.752666, 38.920418, 36.129925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771523, 38.990868, 36.358578>,  <40.802948, 39.108284, 36.739662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771523, 38.990868, 36.358578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457360, 0.859772, -0.227189,
		0.885805, 0.417884, -0.201800,
		-0.078563, -0.293540, -0.952713,
		40.747955, 38.902805, 36.072765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803982, 39.840912, 36.341805>,  <40.802948, 39.108284, 36.739662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803982, 39.840912, 36.341805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692654, 39.567642, 36.071747>,  <40.625858, 39.403683, 35.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692654, 39.567642, 36.071747>,  <40.803982, 39.840912, 36.341805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692654, 39.567642, 36.071747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384424, 0.723391, -0.573518,
		0.880203, 0.099921, -0.463959,
		-0.278318, -0.683170, -0.675144,
		40.609158, 39.362690, 35.869205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854317, 40.257507, 35.690498>,  <40.803982, 39.840912, 36.341805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854317, 40.257507, 35.690498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613930, 39.945843, 35.619236>,  <40.469696, 39.758842, 35.576481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613930, 39.945843, 35.619236>,  <40.854317, 40.257507, 35.690498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613930, 39.945843, 35.619236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578377, 0.577779, -0.575892,
		0.551644, -0.243059, -0.797879,
		-0.600973, -0.779162, -0.178149,
		40.433640, 39.712093, 35.565792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749744, 40.277710, 34.999172>,  <40.854317, 40.257507, 35.690498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749744, 40.277710, 34.999172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457172, 40.018623, 35.084469>,  <40.281628, 39.863171, 35.135647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457172, 40.018623, 35.084469>,  <40.749744, 40.277710, 34.999172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457172, 40.018623, 35.084469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571923, 0.412378, -0.709118,
		0.371367, -0.640632, -0.672069,
		-0.731430, -0.647715, 0.213248,
		40.237743, 39.824306, 35.148441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533413, 40.206013, 34.327396>,  <40.749744, 40.277710, 34.999172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533413, 40.206013, 34.327396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260822, 40.094994, 34.598267>,  <40.097267, 40.028381, 34.760788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260822, 40.094994, 34.598267>,  <40.533413, 40.206013, 34.327396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260822, 40.094994, 34.598267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694470, 0.537153, -0.478726,
		-0.230876, -0.796515, -0.558803,
		-0.681475, -0.277545, 0.677171,
		40.056381, 40.011730, 34.801418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929550, 39.915741, 33.964520>,  <40.533413, 40.206013, 34.327396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929550, 39.915741, 33.964520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815384, 40.057541, 34.320690>,  <39.746883, 40.142620, 34.534393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815384, 40.057541, 34.320690>,  <39.929550, 39.915741, 33.964520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815384, 40.057541, 34.320690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653279, 0.607836, -0.451400,
		-0.701257, -0.710537, 0.058103,
		-0.285419, 0.354505, 0.890428,
		39.729759, 40.163891, 34.587818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123161, 40.007923, 33.963181>,  <39.929550, 39.915741, 33.964520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123161, 40.007923, 33.963181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263138, 40.251862, 34.247612>,  <39.347126, 40.398224, 34.418270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263138, 40.251862, 34.247612>,  <39.123161, 40.007923, 33.963181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263138, 40.251862, 34.247612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707821, 0.669356, -0.225724,
		-0.613620, -0.424323, 0.665898,
		0.349943, 0.609845, 0.711075,
		39.368122, 40.434814, 34.460934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531746, 40.297958, 34.161686>,  <39.123161, 40.007923, 33.963181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531746, 40.297958, 34.161686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806934, 40.526917, 34.340153>,  <38.972050, 40.664291, 34.447231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.806934, 40.526917, 34.340153>,  <38.531746, 40.297958, 34.161686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806934, 40.526917, 34.340153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610309, 0.788967, -0.071100,
		-0.392704, -0.223382, 0.892123,
		0.687973, 0.572392, 0.446163,
		39.013325, 40.698635, 34.474003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119026, 40.702484, 34.661201>,  <38.531746, 40.297958, 34.161686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119026, 40.702484, 34.661201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470852, 40.878300, 34.588348>,  <38.681946, 40.983791, 34.544636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470852, 40.878300, 34.588348>,  <38.119026, 40.702484, 34.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470852, 40.878300, 34.588348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457715, 0.886199, -0.071751,
		0.129867, 0.146474, 0.980653,
		0.879563, 0.439541, -0.182132,
		38.734722, 41.010162, 34.533710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899151, 41.241241, 34.183510>,  <38.119026, 40.702484, 34.661201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899151, 41.241241, 34.183510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657425, 41.559303, 34.163399>,  <37.512390, 41.750141, 34.151333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657425, 41.559303, 34.163399>,  <37.899151, 41.241241, 34.183510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657425, 41.559303, 34.163399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790063, 0.589896, -0.166802,
		-0.102973, -0.140527, -0.984707,
		-0.604315, 0.795157, -0.050281,
		37.476131, 41.797852, 34.148315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131016, 41.656303, 33.551838>,  <37.899151, 41.241241, 34.183510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131016, 41.656303, 33.551838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917751, 41.889393, 33.797169>,  <37.789791, 42.029247, 33.944366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917751, 41.889393, 33.797169>,  <38.131016, 41.656303, 33.551838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917751, 41.889393, 33.797169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683719, 0.723759, -0.093287,
		-0.498262, 0.369607, -0.784299,
		-0.533164, 0.582721, 0.613329,
		37.757801, 42.064209, 33.981167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106434, 42.350376, 33.278576>,  <38.131016, 41.656303, 33.551838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106434, 42.350376, 33.278576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080479, 42.237850, 33.661545>,  <38.064907, 42.170334, 33.891327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080479, 42.237850, 33.661545>,  <38.106434, 42.350376, 33.278576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080479, 42.237850, 33.661545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761096, 0.606566, 0.229808,
		-0.645386, 0.743599, 0.174749,
		-0.064888, -0.281316, 0.957419,
		38.061012, 42.153454, 33.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162296, 42.886555, 33.663601>,  <38.106434, 42.350376, 33.278576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162296, 42.886555, 33.663601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296303, 42.592461, 33.899292>,  <38.376705, 42.416004, 34.040707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296303, 42.592461, 33.899292>,  <38.162296, 42.886555, 33.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296303, 42.592461, 33.899292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786041, 0.562910, 0.255483,
		-0.519524, 0.377567, 0.766510,
		0.335015, -0.735238, 0.589228,
		38.396809, 42.371891, 34.076061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270489, 43.218960, 34.356354>,  <38.162296, 42.886555, 33.663601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270489, 43.218960, 34.356354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489841, 42.901157, 34.252010>,  <38.621452, 42.710476, 34.189404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489841, 42.901157, 34.252010>,  <38.270489, 43.218960, 34.356354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489841, 42.901157, 34.252010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827492, 0.560548, 0.032287,
		0.120574, -0.233567, 0.964836,
		0.548378, -0.794502, -0.260862,
		38.654354, 42.662807, 34.173752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888981, 43.253857, 34.866726>,  <38.270489, 43.218960, 34.356354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888981, 43.253857, 34.866726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957600, 43.057877, 34.524845>,  <38.998772, 42.940289, 34.319717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957600, 43.057877, 34.524845>,  <38.888981, 43.253857, 34.866726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957600, 43.057877, 34.524845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839073, 0.527294, -0.133857,
		0.516264, -0.694198, 0.501558,
		0.171546, -0.489949, -0.854706,
		39.009064, 42.910892, 34.268433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491402, 43.381210, 34.782642>,  <38.888981, 43.253857, 34.866726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491402, 43.381210, 34.782642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 43.122978, 34.485786>,  <39.606689, 42.968040, 34.307671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 43.122978, 34.485786>,  <39.491402, 43.381210, 34.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563457, 43.122978, 34.485786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947299, 0.317051, -0.045866,
		0.264907, -0.694770, 0.668670,
		0.180136, -0.645580, -0.742143,
		39.617496, 42.929302, 34.263142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985115, 42.749218, 34.908066>,  <39.491402, 43.381210, 34.782642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985115, 42.749218, 34.908066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017681, 42.899223, 34.538692>,  <40.037220, 42.989227, 34.317066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017681, 42.899223, 34.538692>,  <39.985115, 42.749218, 34.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017681, 42.899223, 34.538692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950123, 0.250663, 0.185562,
		0.301060, -0.892487, -0.335902,
		0.081414, 0.375013, -0.923438,
		40.042107, 43.011726, 34.261662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564037, 43.043930, 35.253536>,  <39.985115, 42.749218, 34.908066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564037, 43.043930, 35.253536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 43.365582, 35.017181>,  <40.522404, 43.558571, 34.875366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538017, 43.365582, 35.017181>,  <40.564037, 43.043930, 35.253536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538017, 43.365582, 35.017181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962681, 0.105319, 0.249305,
		0.262704, 0.585055, 0.767266,
		-0.065049, 0.804126, -0.590889,
		40.518501, 43.606819, 34.839916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956089, 42.635101, 34.789574>,  <40.564037, 43.043930, 35.253536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956089, 42.635101, 34.789574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764904, 42.335602, 34.973282>,  <40.650192, 42.155903, 35.083508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764904, 42.335602, 34.973282>,  <40.956089, 42.635101, 34.789574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764904, 42.335602, 34.973282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800651, -0.586412, -0.122794,
		0.361264, 0.309025, 0.879768,
		-0.477960, -0.748748, 0.459271,
		40.621517, 42.110977, 35.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350113, 42.332153, 35.350300>,  <40.956089, 42.635101, 34.789574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350113, 42.332153, 35.350300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122231, 42.050125, 35.181393>,  <40.985500, 41.880909, 35.080048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122231, 42.050125, 35.181393>,  <41.350113, 42.332153, 35.350300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122231, 42.050125, 35.181393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820372, -0.518664, -0.240784,
		-0.049243, -0.483591, 0.873908,
		-0.569706, -0.705073, -0.422265,
		40.951321, 41.838604, 35.054714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296196, 41.629219, 35.674736>,  <41.350113, 42.332153, 35.350300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296196, 41.629219, 35.674736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243801, 41.582134, 35.280987>,  <41.212364, 41.553883, 35.044739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243801, 41.582134, 35.280987>,  <41.296196, 41.629219, 35.674736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243801, 41.582134, 35.280987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795671, -0.604799, -0.033554,
		-0.591398, -0.787631, 0.172877,
		-0.130984, -0.117709, -0.984372,
		41.204506, 41.546822, 34.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542900, 40.994308, 35.566795>,  <41.296196, 41.629219, 35.674736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542900, 40.994308, 35.566795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507664, 41.106850, 35.184574>,  <41.486523, 41.174374, 34.955242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507664, 41.106850, 35.184574>,  <41.542900, 40.994308, 35.566795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507664, 41.106850, 35.184574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713629, -0.651443, -0.257596,
		-0.694963, -0.704601, -0.143399,
		-0.088086, 0.281354, -0.955553,
		41.481239, 41.191257, 34.897907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528065, 40.378780, 35.281586>,  <41.542900, 40.994308, 35.566795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528065, 40.378780, 35.281586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640625, 40.628029, 34.989685>,  <41.708160, 40.777576, 34.814545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640625, 40.628029, 34.989685>,  <41.528065, 40.378780, 35.281586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640625, 40.628029, 34.989685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785237, -0.586642, -0.198126,
		-0.551559, -0.517275, -0.654378,
		0.281399, 0.623120, -0.729751,
		41.725044, 40.814964, 34.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744072, 39.941864, 34.706963>,  <41.528065, 40.378780, 35.281586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744072, 39.941864, 34.706963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917904, 40.288101, 34.607456>,  <42.022202, 40.495846, 34.547752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917904, 40.288101, 34.607456>,  <41.744072, 39.941864, 34.706963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917904, 40.288101, 34.607456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861929, -0.479826, -0.163844,
		-0.261188, -0.143218, -0.954604,
		0.434579, 0.865595, -0.248769,
		42.048279, 40.547779, 34.532825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134548, 39.937046, 34.128475>,  <41.744072, 39.941864, 34.706963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134548, 39.937046, 34.128475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301834, 40.243820, 34.323166>,  <42.402206, 40.427887, 34.439980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301834, 40.243820, 34.323166>,  <42.134548, 39.937046, 34.128475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301834, 40.243820, 34.323166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862091, -0.503940, 0.053325,
		0.286179, 0.397304, -0.871924,
		0.418211, 0.766938, 0.486730,
		42.427296, 40.473900, 34.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701618, 40.174366, 33.754696>,  <42.134548, 39.937046, 34.128475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701618, 40.174366, 33.754696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776943, 40.319275, 34.119835>,  <42.822140, 40.406219, 34.338921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776943, 40.319275, 34.119835>,  <42.701618, 40.174366, 33.754696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776943, 40.319275, 34.119835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883698, -0.468044, 0.003447,
		0.428503, 0.806035, -0.408280,
		0.188314, 0.362274, 0.912850,
		42.833439, 40.427956, 34.393688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296223, 40.403511, 33.678925>,  <42.701618, 40.174366, 33.754696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296223, 40.403511, 33.678925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256470, 40.364235, 34.075001>,  <43.232616, 40.340668, 34.312649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256470, 40.364235, 34.075001>,  <43.296223, 40.403511, 33.678925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256470, 40.364235, 34.075001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877789, -0.477310, 0.040770,
		0.468625, 0.873232, 0.133631,
		-0.099385, -0.098194, 0.990192,
		43.226654, 40.334778, 34.372059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972187, 40.284740, 33.900723>,  <43.296223, 40.403511, 33.678925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972187, 40.284740, 33.900723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773861, 40.146446, 34.219379>,  <43.654865, 40.063469, 34.410572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773861, 40.146446, 34.219379>,  <43.972187, 40.284740, 33.900723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773861, 40.146446, 34.219379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772626, -0.594451, 0.222884,
		0.396507, 0.726015, 0.561858,
		-0.495814, -0.345731, 0.796642,
		43.625118, 40.042728, 34.458370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548820, 40.264061, 34.433125>,  <43.972187, 40.284740, 33.900723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548820, 40.264061, 34.433125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247360, 40.027382, 34.547600>,  <44.066483, 39.885376, 34.616283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247360, 40.027382, 34.547600>,  <44.548820, 40.264061, 34.433125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247360, 40.027382, 34.547600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655765, -0.647417, 0.388360,
		-0.044511, 0.480358, 0.875942,
		-0.753652, -0.591698, 0.286184,
		44.021263, 39.849873, 34.633453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781944, 40.078835, 35.073948>,  <44.548820, 40.264061, 34.433125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781944, 40.078835, 35.073948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513504, 39.817398, 34.933983>,  <44.352440, 39.660534, 34.850002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513504, 39.817398, 34.933983>,  <44.781944, 40.078835, 35.073948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513504, 39.817398, 34.933983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628013, -0.752011, 0.200196,
		-0.393987, -0.085400, 0.915140,
		-0.671099, -0.653595, -0.349915,
		44.312176, 39.621319, 34.829010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916058, 39.554554, 35.517307>,  <44.781944, 40.078835, 35.073948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916058, 39.554554, 35.517307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678211, 39.383190, 35.245163>,  <44.535503, 39.280373, 35.081875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678211, 39.383190, 35.245163>,  <44.916058, 39.554554, 35.517307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678211, 39.383190, 35.245163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530223, -0.845068, 0.068725,
		-0.604398, -0.319881, 0.729644,
		-0.594615, -0.428411, -0.680365,
		44.499828, 39.254665, 35.041054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664333, 38.929539, 35.812569>,  <44.916058, 39.554554, 35.517307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664333, 38.929539, 35.812569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660679, 38.907162, 35.413212>,  <44.658485, 38.893734, 35.173599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660679, 38.907162, 35.413212>,  <44.664333, 38.929539, 35.812569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660679, 38.907162, 35.413212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475030, -0.878823, 0.044898,
		-0.879922, -0.473856, 0.034603,
		-0.009135, -0.055944, -0.998392,
		44.657936, 38.890377, 35.113693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406616, 38.390587, 35.774841>,  <44.664333, 38.929539, 35.812569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406616, 38.390587, 35.774841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582333, 38.450401, 35.420517>,  <44.687763, 38.486290, 35.207924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582333, 38.450401, 35.420517>,  <44.406616, 38.390587, 35.774841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582333, 38.450401, 35.420517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452853, -0.888458, 0.074600,
		-0.775850, -0.433913, -0.458014,
		0.439296, 0.149535, -0.885809,
		44.714123, 38.495262, 35.154774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279671, 37.735912, 35.333382>,  <44.406616, 38.390587, 35.774841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279671, 37.735912, 35.333382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587662, 37.927921, 35.165237>,  <44.772457, 38.043129, 35.064350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587662, 37.927921, 35.165237>,  <44.279671, 37.735912, 35.333382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587662, 37.927921, 35.165237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482567, -0.869107, -0.108540,
		-0.417442, -0.119280, -0.900841,
		0.769981, 0.480025, -0.420363,
		44.818657, 38.071930, 35.039127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356503, 37.448452, 34.697147>,  <44.279671, 37.735912, 35.333382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356503, 37.448452, 34.697147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699890, 37.608932, 34.824944>,  <44.905922, 37.705219, 34.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699890, 37.608932, 34.824944>,  <44.356503, 37.448452, 34.697147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699890, 37.608932, 34.824944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455616, -0.882598, -0.115907,
		0.235478, 0.245067, -0.940475,
		0.858466, 0.401201, 0.319489,
		44.957432, 37.729294, 34.920792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806480, 37.095367, 34.423798>,  <44.356503, 37.448452, 34.697147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806480, 37.095367, 34.423798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068649, 37.279228, 34.663509>,  <45.225952, 37.389545, 34.807335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068649, 37.279228, 34.663509>,  <44.806480, 37.095367, 34.423798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068649, 37.279228, 34.663509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478700, -0.866564, 0.141114,
		0.584177, 0.194385, -0.788005,
		0.655426, 0.459654, 0.599279,
		45.265278, 37.417126, 34.843292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482983, 37.108395, 34.079266>,  <44.806480, 37.095367, 34.423798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482983, 37.108395, 34.079266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533363, 37.168285, 34.471535>,  <45.563591, 37.204220, 34.706898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533363, 37.168285, 34.471535>,  <45.482983, 37.108395, 34.079266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533363, 37.168285, 34.471535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636180, -0.770702, 0.035965,
		0.761191, 0.619353, -0.192328,
		0.125953, 0.149731, 0.980671,
		45.571148, 37.213203, 34.765736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252464, 36.993946, 34.147869>,  <45.482983, 37.108395, 34.079266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252464, 36.993946, 34.147869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095360, 36.985424, 34.515629>,  <46.001099, 36.980312, 34.736282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.095360, 36.985424, 34.515629>,  <46.252464, 36.993946, 34.147869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095360, 36.985424, 34.515629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610957, -0.753272, 0.243540,
		0.687366, 0.657363, 0.308871,
		-0.392759, -0.021306, 0.919395,
		45.977531, 36.979031, 34.791447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799061, 37.026089, 34.599709>,  <46.252464, 36.993946, 34.147869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799061, 37.026089, 34.599709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483170, 36.846199, 34.766598>,  <46.293636, 36.738266, 34.866730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.483170, 36.846199, 34.766598>,  <46.799061, 37.026089, 34.599709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483170, 36.846199, 34.766598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555369, -0.813010, 0.174871,
		0.260563, 0.369814, 0.891821,
		-0.789729, -0.449724, 0.417224,
		46.246250, 36.711281, 34.891766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100704, 36.661972, 35.143570>,  <46.799061, 37.026089, 34.599709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100704, 36.661972, 35.143570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744102, 36.484806, 35.105518>,  <46.530140, 36.378506, 35.082687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744102, 36.484806, 35.105518>,  <47.100704, 36.661972, 35.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744102, 36.484806, 35.105518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439250, -0.896513, 0.057646,
		-0.110813, 0.009608, 0.993795,
		-0.891504, -0.442913, -0.095125,
		46.476650, 36.351933, 35.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996750, 36.240223, 35.717686>,  <47.100704, 36.661972, 35.143570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996750, 36.240223, 35.717686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807529, 36.070629, 35.408764>,  <46.693996, 35.968872, 35.223412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807529, 36.070629, 35.408764>,  <46.996750, 36.240223, 35.717686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807529, 36.070629, 35.408764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532276, -0.836064, 0.132962,
		-0.702071, -0.348181, 0.621181,
		-0.473052, -0.423989, -0.772305,
		46.665615, 35.943432, 35.177071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678631, 35.584118, 35.980038>,  <46.996750, 36.240223, 35.717686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678631, 35.584118, 35.980038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741787, 35.581593, 35.585064>,  <46.779678, 35.580078, 35.348080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741787, 35.581593, 35.585064>,  <46.678631, 35.584118, 35.980038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741787, 35.581593, 35.585064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711713, -0.692450, 0.118228,
		-0.684497, -0.721438, -0.104836,
		0.157888, -0.006314, -0.987437,
		46.789154, 35.579697, 35.288834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639473, 34.940220, 35.797920>,  <46.678631, 35.584118, 35.980038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639473, 34.940220, 35.797920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672867, 34.897598, 35.401604>,  <46.692902, 34.872025, 35.163815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672867, 34.897598, 35.401604>,  <46.639473, 34.940220, 35.797920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672867, 34.897598, 35.401604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990618, 0.116823, 0.070907,
		0.108192, -0.987420, 0.115312,
		0.083486, -0.106559, -0.990795,
		46.697914, 34.865631, 35.104366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155087, 34.481739, 35.586082>,  <46.639473, 34.940220, 35.797920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155087, 34.481739, 35.586082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091244, 34.776634, 35.323479>,  <47.052937, 34.953571, 35.165916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.091244, 34.776634, 35.323479>,  <47.155087, 34.481739, 35.586082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091244, 34.776634, 35.323479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930781, 0.333953, 0.148730,
		0.328892, -0.587328, -0.739511,
		-0.159609, 0.737239, -0.656509,
		47.043362, 34.997807, 35.126526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.786377, 34.515198, 35.208569>,  <47.155087, 34.481739, 35.586082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.786377, 34.515198, 35.208569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596104, 34.866539, 35.227436>,  <47.481941, 35.077343, 35.238758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596104, 34.866539, 35.227436>,  <47.786377, 34.515198, 35.208569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596104, 34.866539, 35.227436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873739, 0.465628, 0.140608,
		0.101539, 0.108101, -0.988941,
		-0.475678, 0.878353, 0.047173,
		47.453400, 35.130047, 35.241589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.668880, 37.962723, 44.821316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289150, 37.843773, 44.861988>,  <35.061310, 37.772404, 44.886391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289150, 37.843773, 44.861988>,  <35.668880, 37.962723, 44.821316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289150, 37.843773, 44.861988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030325, -0.235359, -0.971435,
		0.312814, -0.925296, 0.214416,
		-0.949330, -0.297376, 0.101683,
		35.004353, 37.754559, 44.892494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596634, 37.269852, 44.525589>,  <35.668880, 37.962723, 44.821316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596634, 37.269852, 44.525589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231834, 37.433929, 44.525959>,  <35.012955, 37.532375, 44.526180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231834, 37.433929, 44.525959>,  <35.596634, 37.269852, 44.525589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231834, 37.433929, 44.525959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095990, -0.211226, -0.972713,
		-0.398809, -0.887199, 0.232012,
		-0.911997, 0.410197, 0.000923,
		34.958237, 37.556988, 44.526237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108765, 36.795624, 44.253700>,  <35.596634, 37.269852, 44.525589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108765, 36.795624, 44.253700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909657, 37.139534, 44.208092>,  <34.790192, 37.345882, 44.180729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909657, 37.139534, 44.208092>,  <35.108765, 36.795624, 44.253700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909657, 37.139534, 44.208092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170700, -0.226013, -0.959051,
		-0.850342, -0.457928, 0.259268,
		-0.497775, 0.859779, -0.114020,
		34.760323, 37.397469, 44.173885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682838, 36.583160, 43.781834>,  <35.108765, 36.795624, 44.253700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682838, 36.583160, 43.781834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651020, 36.980629, 43.750122>,  <34.631931, 37.219112, 43.731094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651020, 36.980629, 43.750122>,  <34.682838, 36.583160, 43.781834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651020, 36.980629, 43.750122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159485, -0.091188, -0.982980,
		-0.983991, -0.065547, 0.165730,
		-0.079544, 0.993674, -0.079274,
		34.627155, 37.278732, 43.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021111, 36.662281, 43.353882>,  <34.682838, 36.583160, 43.781834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021111, 36.662281, 43.353882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238373, 36.997482, 43.332996>,  <34.368732, 37.198605, 43.320465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238373, 36.997482, 43.332996>,  <34.021111, 36.662281, 43.353882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238373, 36.997482, 43.332996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085334, -0.006774, -0.996329,
		-0.835282, 0.545622, 0.067831,
		0.543160, 0.838004, -0.052218,
		34.401321, 37.248882, 43.317329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718754, 37.090069, 42.893173>,  <34.021111, 36.662281, 43.353882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718754, 37.090069, 42.893173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099964, 37.209644, 42.912670>,  <34.328690, 37.281387, 42.924366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099964, 37.209644, 42.912670>,  <33.718754, 37.090069, 42.893173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099964, 37.209644, 42.912670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041923, 0.029172, -0.998695,
		-0.299967, 0.953827, 0.015269,
		0.953028, 0.298935, 0.048738,
		34.385872, 37.299324, 42.927292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748856, 37.575172, 42.332874>,  <33.718754, 37.090069, 42.893173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748856, 37.575172, 42.332874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119221, 37.455513, 42.425137>,  <34.341438, 37.383717, 42.480495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119221, 37.455513, 42.425137>,  <33.748856, 37.575172, 42.332874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119221, 37.455513, 42.425137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193208, -0.149657, -0.969677,
		0.324599, 0.942397, -0.080770,
		0.925908, -0.299150, 0.230657,
		34.396992, 37.365768, 42.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116478, 38.012192, 41.882786>,  <33.748856, 37.575172, 42.332874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116478, 38.012192, 41.882786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350861, 37.712955, 42.007378>,  <34.491489, 37.533413, 42.082130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350861, 37.712955, 42.007378>,  <34.116478, 38.012192, 41.882786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350861, 37.712955, 42.007378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176654, -0.257207, -0.950073,
		0.790855, 0.611722, -0.018558,
		0.585954, -0.748091, 0.311476,
		34.526646, 37.488529, 42.100822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663280, 38.071255, 41.548801>,  <34.116478, 38.012192, 41.882786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663280, 38.071255, 41.548801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653580, 37.690441, 41.670818>,  <34.647758, 37.461952, 41.744026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653580, 37.690441, 41.670818>,  <34.663280, 38.071255, 41.548801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653580, 37.690441, 41.670818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216507, -0.302887, -0.928108,
		0.975980, 0.043537, 0.213466,
		-0.024249, -0.952031, 0.305038,
		34.646305, 37.404831, 41.762329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260990, 37.713837, 41.336044>,  <34.663280, 38.071255, 41.548801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260990, 37.713837, 41.336044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989605, 37.424366, 41.386604>,  <34.826775, 37.250683, 41.416939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989605, 37.424366, 41.386604>,  <35.260990, 37.713837, 41.336044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989605, 37.424366, 41.386604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161878, -0.315099, -0.935151,
		0.716580, -0.614002, 0.330931,
		-0.678460, -0.723681, 0.126400,
		34.786068, 37.207260, 41.424526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505386, 37.210781, 40.997894>,  <35.260990, 37.713837, 41.336044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505386, 37.210781, 40.997894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147388, 37.038193, 41.043167>,  <34.932590, 36.934639, 41.070332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147388, 37.038193, 41.043167>,  <35.505386, 37.210781, 40.997894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147388, 37.038193, 41.043167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194473, -0.605771, -0.771506,
		0.401446, -0.668486, 0.626074,
		-0.894998, -0.431472, 0.113182,
		34.878887, 36.908752, 41.077122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608871, 36.517414, 40.800648>,  <35.505386, 37.210781, 40.997894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608871, 36.517414, 40.800648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215481, 36.588203, 40.785431>,  <34.979446, 36.630676, 40.776302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215481, 36.588203, 40.785431>,  <35.608871, 36.517414, 40.800648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215481, 36.588203, 40.785431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056299, -0.498756, -0.864912,
		-0.172041, -0.848481, 0.500480,
		-0.983479, 0.176977, -0.038038,
		34.920437, 36.641296, 40.774021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335300, 35.946556, 40.589657>,  <35.608871, 36.517414, 40.800648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335300, 35.946556, 40.589657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042538, 36.195145, 40.477882>,  <34.866882, 36.344299, 40.410820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.042538, 36.195145, 40.477882>,  <35.335300, 35.946556, 40.589657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042538, 36.195145, 40.477882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024049, -0.386269, -0.922072,
		-0.680983, -0.681589, 0.267766,
		-0.731904, 0.621476, -0.279435,
		34.822968, 36.381588, 40.394051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965878, 35.556965, 40.196392>,  <35.335300, 35.946556, 40.589657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965878, 35.556965, 40.196392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814713, 35.913166, 40.095047>,  <34.724014, 36.126888, 40.034241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.814713, 35.913166, 40.095047>,  <34.965878, 35.556965, 40.196392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814713, 35.913166, 40.095047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167968, -0.335056, -0.927105,
		-0.910479, -0.307804, 0.276196,
		-0.377908, 0.890502, -0.253360,
		34.701340, 36.180317, 40.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374977, 35.376312, 39.750362>,  <34.965878, 35.556965, 40.196392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374977, 35.376312, 39.750362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490032, 35.750004, 39.665997>,  <34.559067, 35.974216, 39.615376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490032, 35.750004, 39.665997>,  <34.374977, 35.376312, 39.750362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490032, 35.750004, 39.665997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026203, -0.227816, -0.973352,
		-0.957380, 0.274450, -0.090009,
		0.287642, 0.934225, -0.210915,
		34.576324, 36.030270, 39.602722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882507, 35.660511, 39.292912>,  <34.374977, 35.376312, 39.750362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882507, 35.660511, 39.292912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214127, 35.879204, 39.245983>,  <34.413097, 36.010422, 39.217827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214127, 35.879204, 39.245983>,  <33.882507, 35.660511, 39.292912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214127, 35.879204, 39.245983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007948, -0.198264, -0.980116,
		-0.559125, 0.813494, -0.160024,
		0.829046, 0.546735, -0.117320,
		34.462841, 36.043224, 39.210789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834408, 35.887505, 38.620129>,  <33.882507, 35.660511, 39.292912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834408, 35.887505, 38.620129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222469, 35.957943, 38.686821>,  <34.455307, 36.000206, 38.726837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222469, 35.957943, 38.686821>,  <33.834408, 35.887505, 38.620129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222469, 35.957943, 38.686821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173503, -0.023696, -0.984548,
		-0.169424, 0.984088, -0.053542,
		0.970151, 0.176095, 0.166727,
		34.513515, 36.010773, 38.736839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075027, 36.412033, 38.204830>,  <33.834408, 35.887505, 38.620129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075027, 36.412033, 38.204830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.403980, 36.217190, 38.322414>,  <34.601353, 36.100285, 38.392967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.403980, 36.217190, 38.322414>,  <34.075027, 36.412033, 38.204830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403980, 36.217190, 38.322414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307879, -0.053480, -0.949921,
		0.478438, 0.871701, 0.105990,
		0.822379, -0.487111, 0.293965,
		34.650696, 36.071056, 38.410603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454300, 36.527218, 37.646866>,  <34.075027, 36.412033, 38.204830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454300, 36.527218, 37.646866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621071, 36.220982, 37.842842>,  <34.721134, 36.037239, 37.960426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.621071, 36.220982, 37.842842>,  <34.454300, 36.527218, 37.646866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621071, 36.220982, 37.842842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271175, -0.409704, -0.870981,
		0.867547, 0.495992, 0.036795,
		0.416924, -0.765595, 0.489938,
		34.746147, 35.991302, 37.989822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130219, 36.487820, 37.375038>,  <34.454300, 36.527218, 37.646866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130219, 36.487820, 37.375038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091885, 36.124714, 37.538387>,  <35.068886, 35.906849, 37.636398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.091885, 36.124714, 37.538387>,  <35.130219, 36.487820, 37.375038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091885, 36.124714, 37.538387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274393, -0.418462, -0.865794,
		0.956830, 0.029084, 0.289188,
		-0.095834, -0.907769, 0.408377,
		35.063133, 35.852383, 37.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686901, 36.050713, 37.079468>,  <35.130219, 36.487820, 37.375038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686901, 36.050713, 37.079468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414970, 35.788364, 37.210720>,  <35.251812, 35.630955, 37.289471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.414970, 35.788364, 37.210720>,  <35.686901, 36.050713, 37.079468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414970, 35.788364, 37.210720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047887, -0.486167, -0.872553,
		0.731807, -0.577472, 0.361918,
		-0.679828, -0.655871, 0.328127,
		35.211021, 35.591602, 37.309158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070190, 35.343021, 37.036377>,  <35.686901, 36.050713, 37.079468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070190, 35.343021, 37.036377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671593, 35.311146, 37.026173>,  <35.432434, 35.292023, 37.020050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671593, 35.311146, 37.026173>,  <36.070190, 35.343021, 37.036377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671593, 35.311146, 37.026173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065536, -0.553774, -0.830084,
		0.052017, -0.828845, 0.557055,
		-0.996493, -0.079686, -0.025514,
		35.372646, 35.287239, 37.018517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258709, 35.683125, 37.662125>,  <36.070190, 35.343021, 37.036377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258709, 35.683125, 37.662125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578938, 35.882885, 37.529648>,  <36.771072, 36.002743, 37.450161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578938, 35.882885, 37.529648>,  <36.258709, 35.683125, 37.662125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578938, 35.882885, 37.529648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290209, 0.160437, 0.943419,
		0.524282, -0.851385, -0.016491,
		0.800567, 0.499403, -0.331193,
		36.819107, 36.032707, 37.430290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750072, 35.617287, 38.137531>,  <36.258709, 35.683125, 37.662125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750072, 35.617287, 38.137531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915722, 35.917458, 37.931480>,  <37.015110, 36.097561, 37.807850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915722, 35.917458, 37.931480>,  <36.750072, 35.617287, 38.137531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915722, 35.917458, 37.931480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429936, 0.337557, 0.837383,
		0.802282, -0.568252, -0.182847,
		0.414124, 0.750429, -0.515128,
		37.039959, 36.142586, 37.776943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490211, 35.721733, 38.473583>,  <36.750072, 35.617287, 38.137531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490211, 35.721733, 38.473583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.379398, 36.051888, 38.276814>,  <37.312912, 36.249981, 38.158752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.379398, 36.051888, 38.276814>,  <37.490211, 35.721733, 38.473583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379398, 36.051888, 38.276814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383327, 0.564397, 0.731106,
		0.881087, 0.013970, -0.472748,
		-0.277031, 0.825385, -0.491927,
		37.296288, 36.299503, 38.129234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053398, 36.126064, 38.533951>,  <37.490211, 35.721733, 38.473583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053398, 36.126064, 38.533951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755882, 36.380020, 38.450348>,  <37.577374, 36.532394, 38.400188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755882, 36.380020, 38.450348>,  <38.053398, 36.126064, 38.533951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755882, 36.380020, 38.450348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308412, 0.603399, 0.735385,
		0.593003, 0.482516, -0.644613,
		-0.743794, 0.634892, -0.209004,
		37.532745, 36.570488, 38.387646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389095, 36.620686, 38.845493>,  <38.053398, 36.126064, 38.533951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389095, 36.620686, 38.845493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019997, 36.751167, 38.763397>,  <37.798538, 36.829456, 38.714138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.019997, 36.751167, 38.763397>,  <38.389095, 36.620686, 38.845493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019997, 36.751167, 38.763397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091988, 0.703563, 0.704654,
		0.374266, 0.631338, -0.679218,
		-0.922748, 0.326208, -0.205244,
		37.743172, 36.849030, 38.701824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453468, 37.379940, 38.973469>,  <38.389095, 36.620686, 38.845493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453468, 37.379940, 38.973469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063400, 37.291496, 38.978477>,  <37.829361, 37.238430, 38.981483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.063400, 37.291496, 38.978477>,  <38.453468, 37.379940, 38.973469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063400, 37.291496, 38.978477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111723, 0.539973, 0.834234,
		-0.191215, 0.812121, -0.551268,
		-0.975169, -0.221107, 0.012518,
		37.770851, 37.225163, 38.982231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096004, 38.049541, 39.027222>,  <38.453468, 37.379940, 38.973469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096004, 38.049541, 39.027222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823753, 37.784870, 39.153038>,  <37.660404, 37.626068, 39.228527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823753, 37.784870, 39.153038>,  <38.096004, 38.049541, 39.027222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823753, 37.784870, 39.153038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170293, 0.560449, 0.810492,
		-0.712565, 0.498078, -0.494135,
		-0.680625, -0.661676, 0.314537,
		37.619564, 37.586369, 39.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416790, 38.390167, 39.254978>,  <38.096004, 38.049541, 39.027222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416790, 38.390167, 39.254978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460548, 38.051815, 39.463791>,  <37.486805, 37.848804, 39.589081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.460548, 38.051815, 39.463791>,  <37.416790, 38.390167, 39.254978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460548, 38.051815, 39.463791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118128, 0.510400, 0.851785,
		-0.986954, -0.154850, -0.044085,
		0.109398, -0.845880, 0.522034,
		37.493366, 37.798050, 39.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974232, 38.524132, 39.860577>,  <37.416790, 38.390167, 39.254978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974232, 38.524132, 39.860577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170090, 38.194908, 39.975693>,  <37.287605, 37.997375, 40.044762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170090, 38.194908, 39.975693>,  <36.974232, 38.524132, 39.860577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170090, 38.194908, 39.975693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082414, 0.284897, 0.955009,
		-0.868019, -0.491332, 0.071666,
		0.489644, -0.823060, 0.287788,
		37.316982, 37.947990, 40.062031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519455, 38.191669, 40.382668>,  <36.974232, 38.524132, 39.860577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519455, 38.191669, 40.382668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891621, 38.053905, 40.432804>,  <37.114922, 37.971245, 40.462887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891621, 38.053905, 40.432804>,  <36.519455, 38.191669, 40.382668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891621, 38.053905, 40.432804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128690, 0.013214, 0.991597,
		-0.343175, -0.938725, -0.032028,
		0.930414, -0.344413, 0.125339,
		37.170746, 37.950581, 40.470406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430012, 37.686440, 40.864300>,  <36.519455, 38.191669, 40.382668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430012, 37.686440, 40.864300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810417, 37.808472, 40.884319>,  <37.038658, 37.881691, 40.896332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810417, 37.808472, 40.884319>,  <36.430012, 37.686440, 40.864300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810417, 37.808472, 40.884319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053312, 0.002358, 0.998575,
		0.304525, -0.952325, 0.018507,
		0.951011, 0.305077, 0.050052,
		37.095722, 37.899994, 40.899334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748016, 37.289295, 41.248993>,  <36.430012, 37.686440, 40.864300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748016, 37.289295, 41.248993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964359, 37.625565, 41.259907>,  <37.094166, 37.827324, 41.266457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964359, 37.625565, 41.259907>,  <36.748016, 37.289295, 41.248993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964359, 37.625565, 41.259907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089252, -0.089618, 0.991969,
		0.836365, -0.534080, -0.123502,
		0.540859, 0.840671, 0.027286,
		37.126617, 37.877766, 41.268093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245316, 37.088203, 41.717735>,  <36.748016, 37.289295, 41.248993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245316, 37.088203, 41.717735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262226, 37.487831, 41.721241>,  <37.272373, 37.727608, 41.723343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262226, 37.487831, 41.721241>,  <37.245316, 37.088203, 41.717735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262226, 37.487831, 41.721241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129892, -0.014192, 0.991427,
		0.990626, -0.040779, -0.130371,
		0.042280, 0.999067, 0.008763,
		37.274910, 37.787552, 41.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690266, 37.194489, 42.223492>,  <37.245316, 37.088203, 41.717735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690266, 37.194489, 42.223492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532486, 37.561375, 42.201149>,  <37.437820, 37.781509, 42.187744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532486, 37.561375, 42.201149>,  <37.690266, 37.194489, 42.223492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532486, 37.561375, 42.201149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171947, 0.133383, 0.976034,
		0.902689, 0.375388, -0.210325,
		-0.394446, 0.917220, -0.055857,
		37.414154, 37.836540, 42.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229908, 37.635139, 42.576946>,  <37.690266, 37.194489, 42.223492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229908, 37.635139, 42.576946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862473, 37.793056, 42.584255>,  <37.642010, 37.887806, 42.588638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862473, 37.793056, 42.584255>,  <38.229908, 37.635139, 42.576946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862473, 37.793056, 42.584255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173011, 0.360131, 0.916719,
		0.355336, 0.845248, -0.399115,
		-0.918588, 0.394794, 0.018270,
		37.586895, 37.911495, 42.589737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287693, 38.297184, 42.868935>,  <38.229908, 37.635139, 42.576946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287693, 38.297184, 42.868935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892769, 38.237576, 42.890888>,  <37.655815, 38.201813, 42.904060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.892769, 38.237576, 42.890888>,  <38.287693, 38.297184, 42.868935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892769, 38.237576, 42.890888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005620, 0.312586, 0.949873,
		-0.158704, 0.938128, -0.307782,
		-0.987310, -0.149019, 0.054881,
		37.596577, 38.192871, 42.907352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013653, 38.896824, 43.183830>,  <38.287693, 38.297184, 42.868935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013653, 38.896824, 43.183830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705418, 38.646519, 43.232178>,  <37.520477, 38.496334, 43.261189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705418, 38.646519, 43.232178>,  <38.013653, 38.896824, 43.183830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705418, 38.646519, 43.232178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036429, 0.232589, 0.971892,
		-0.636287, 0.744529, -0.202027,
		-0.770591, -0.625763, 0.120871,
		37.474239, 38.458790, 43.268440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420731, 39.286415, 43.435326>,  <38.013653, 38.896824, 43.183830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420731, 39.286415, 43.435326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401680, 38.899708, 43.535801>,  <37.390247, 38.667683, 43.596085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401680, 38.899708, 43.535801>,  <37.420731, 39.286415, 43.435326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401680, 38.899708, 43.535801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051969, 0.253529, 0.965931,
		-0.997512, 0.032952, -0.062317,
		-0.047629, -0.966766, 0.251186,
		37.387390, 38.609676, 43.611156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.945629, 39.257999, 44.078106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146072, 38.911915, 44.071106>,  <37.266338, 38.704266, 44.066906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.146072, 38.911915, 44.071106>,  <36.945629, 39.257999, 44.078106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146072, 38.911915, 44.071106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147041, -0.105052, 0.983536,
		-0.852800, -0.490286, -0.179864,
		0.501109, -0.865207, -0.017496,
		37.296406, 38.652351, 44.065857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572018, 38.774658, 44.422348>,  <36.945629, 39.257999, 44.078106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572018, 38.774658, 44.422348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927326, 38.591221, 44.412102>,  <37.140511, 38.481159, 44.405956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927326, 38.591221, 44.412102>,  <36.572018, 38.774658, 44.422348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927326, 38.591221, 44.412102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118104, -0.281935, 0.952137,
		-0.443866, -0.842735, -0.304598,
		0.888276, -0.458595, -0.025611,
		37.193810, 38.453644, 44.404419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401665, 38.063385, 44.818237>,  <36.572018, 38.774658, 44.422348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401665, 38.063385, 44.818237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800220, 38.092983, 44.834892>,  <37.039352, 38.110741, 44.844887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800220, 38.092983, 44.834892>,  <36.401665, 38.063385, 44.818237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800220, 38.092983, 44.834892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003801, -0.451033, 0.892499,
		0.084818, -0.889435, -0.449123,
		0.996389, 0.073993, 0.041637,
		37.099136, 38.115181, 44.847382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611252, 37.422638, 45.125046>,  <36.401665, 38.063385, 44.818237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611252, 37.422638, 45.125046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913021, 37.670204, 45.212482>,  <37.094082, 37.818745, 45.264946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913021, 37.670204, 45.212482>,  <36.611252, 37.422638, 45.125046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913021, 37.670204, 45.212482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021300, -0.355938, 0.934267,
		0.656042, -0.700177, -0.281711,
		0.754424, 0.618919, 0.218596,
		37.139347, 37.855881, 45.278061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063004, 37.077068, 45.637836>,  <36.611252, 37.422638, 45.125046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063004, 37.077068, 45.637836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196766, 37.452946, 45.666542>,  <37.277023, 37.678471, 45.683765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196766, 37.452946, 45.666542>,  <37.063004, 37.077068, 45.637836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196766, 37.452946, 45.666542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061232, -0.097648, 0.993335,
		0.940439, -0.327780, -0.090194,
		0.334403, 0.939694, 0.071762,
		37.297089, 37.734856, 45.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677670, 37.097672, 46.011696>,  <37.063004, 37.077068, 45.637836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677670, 37.097672, 46.011696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551624, 37.473713, 46.063717>,  <37.475998, 37.699337, 46.094929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551624, 37.473713, 46.063717>,  <37.677670, 37.097672, 46.011696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551624, 37.473713, 46.063717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034823, -0.125485, 0.991484,
		0.948415, 0.316959, 0.006804,
		-0.315113, 0.940101, 0.130049,
		37.457088, 37.755745, 46.102730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130379, 37.392223, 46.572491>,  <37.677670, 37.097672, 46.011696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130379, 37.392223, 46.572491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796253, 37.611042, 46.550617>,  <37.595779, 37.742332, 46.537495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796253, 37.611042, 46.550617>,  <38.130379, 37.392223, 46.572491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796253, 37.611042, 46.550617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099865, -0.053172, 0.993579,
		0.540631, 0.835409, 0.099046,
		-0.835311, 0.547051, -0.054682,
		37.545658, 37.775158, 46.534214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112839, 37.795414, 47.211323>,  <38.130379, 37.392223, 46.572491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112839, 37.795414, 47.211323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734413, 37.816380, 47.083439>,  <37.507359, 37.828957, 47.006706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734413, 37.816380, 47.083439>,  <38.112839, 37.795414, 47.211323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734413, 37.816380, 47.083439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311607, 0.122912, 0.942228,
		0.088680, 0.991032, -0.099951,
		-0.946064, 0.052411, -0.319713,
		37.450596, 37.832104, 46.987526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937134, 38.469837, 47.432831>,  <38.112839, 37.795414, 47.211323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937134, 38.469837, 47.432831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627930, 38.216930, 47.412067>,  <37.442406, 38.065186, 47.399609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.627930, 38.216930, 47.412067>,  <37.937134, 38.469837, 47.432831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627930, 38.216930, 47.412067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208506, 0.175930, 0.962067,
		-0.599149, 0.754512, -0.267827,
		-0.773011, -0.632266, -0.051912,
		37.396027, 38.027252, 47.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485954, 38.788559, 47.678101>,  <37.937134, 38.469837, 47.432831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485954, 38.788559, 47.678101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316990, 38.427319, 47.709007>,  <37.215611, 38.210575, 47.727551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316990, 38.427319, 47.709007>,  <37.485954, 38.788559, 47.678101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316990, 38.427319, 47.709007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283971, 0.212811, 0.934918,
		-0.860772, 0.372979, -0.346349,
		-0.422411, -0.903105, 0.077266,
		37.190266, 38.156387, 47.732185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002560, 38.911495, 48.113167>,  <37.485954, 38.788559, 47.678101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002560, 38.911495, 48.113167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988762, 38.511784, 48.119591>,  <36.980484, 38.271957, 48.123444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988762, 38.511784, 48.119591>,  <37.002560, 38.911495, 48.113167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988762, 38.511784, 48.119591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398173, 0.028481, 0.916868,
		-0.916661, 0.025233, -0.398867,
		-0.034495, -0.999276, 0.016061,
		36.978413, 38.212002, 48.124409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293785, 38.621601, 48.439541>,  <37.002560, 38.911495, 48.113167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293785, 38.621601, 48.439541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571857, 38.341900, 48.506187>,  <36.738701, 38.174080, 48.546177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.571857, 38.341900, 48.506187>,  <36.293785, 38.621601, 48.439541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571857, 38.341900, 48.506187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285562, -0.055931, 0.956727,
		-0.659679, -0.712679, -0.238564,
		0.695182, -0.699257, 0.166618,
		36.780411, 38.132122, 48.556171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114670, 38.317165, 49.102436>,  <36.293785, 38.621601, 48.439541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114670, 38.317165, 49.102436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479820, 38.158649, 49.063240>,  <36.698910, 38.063538, 49.039722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479820, 38.158649, 49.063240>,  <36.114670, 38.317165, 49.102436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479820, 38.158649, 49.063240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060042, -0.107093, 0.992434,
		-0.403790, -0.911857, -0.073968,
		0.912879, -0.396294, -0.097993,
		36.753685, 38.039761, 49.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094246, 37.679497, 49.525406>,  <36.114670, 38.317165, 49.102436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094246, 37.679497, 49.525406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476528, 37.781521, 49.466667>,  <36.705898, 37.842735, 49.431423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.476528, 37.781521, 49.466667>,  <36.094246, 37.679497, 49.525406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476528, 37.781521, 49.466667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171960, -0.079011, 0.981930,
		0.238847, -0.963692, -0.119371,
		0.955710, 0.255058, -0.146845,
		36.763241, 37.858040, 49.422615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557732, 37.170799, 49.801201>,  <36.094246, 37.679497, 49.525406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557732, 37.170799, 49.801201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783138, 37.500969, 49.787830>,  <36.918385, 37.699070, 49.779808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783138, 37.500969, 49.787830>,  <36.557732, 37.170799, 49.801201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783138, 37.500969, 49.787830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230049, -0.117940, 0.966006,
		0.793425, -0.552052, -0.256350,
		0.563520, 0.825426, -0.033422,
		36.952194, 37.748596, 49.777805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095314, 37.031700, 50.289291>,  <36.557732, 37.170799, 49.801201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095314, 37.031700, 50.289291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122913, 37.429722, 50.260723>,  <37.139473, 37.668537, 50.243584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.122913, 37.429722, 50.260723>,  <37.095314, 37.031700, 50.289291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122913, 37.429722, 50.260723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140049, 0.061217, 0.988250,
		0.987738, -0.078189, -0.135133,
		0.068998, 0.995057, -0.071416,
		37.143612, 37.728237, 50.239300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757210, 37.240719, 50.496761>,  <37.095314, 37.031700, 50.289291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757210, 37.240719, 50.496761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504482, 37.543537, 50.563313>,  <37.352844, 37.725227, 50.603245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504482, 37.543537, 50.563313>,  <37.757210, 37.240719, 50.496761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504482, 37.543537, 50.563313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184233, -0.061826, 0.980936,
		0.752901, 0.650429, -0.100410,
		-0.631821, 0.757046, 0.166380,
		37.314938, 37.770653, 50.613228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070724, 37.528847, 51.030125>,  <37.757210, 37.240719, 50.496761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070724, 37.528847, 51.030125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714966, 37.710014, 51.054901>,  <37.501511, 37.818714, 51.069767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714966, 37.710014, 51.054901>,  <38.070724, 37.528847, 51.030125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714966, 37.710014, 51.054901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083390, 0.027513, 0.996137,
		0.449469, 0.891125, -0.062239,
		-0.889395, 0.452923, 0.061944,
		37.448147, 37.845890, 51.073483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130268, 38.137074, 51.468021>,  <38.070724, 37.528847, 51.030125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130268, 38.137074, 51.468021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746254, 38.027233, 51.489662>,  <37.515846, 37.961330, 51.502647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.746254, 38.027233, 51.489662>,  <38.130268, 38.137074, 51.468021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746254, 38.027233, 51.489662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023494, 0.271687, 0.962099,
		-0.278892, 0.922378, -0.267280,
		-0.960035, -0.274601, 0.054101,
		37.458244, 37.944855, 51.505894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716263, 38.674007, 51.896336>,  <38.130268, 38.137074, 51.468021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716263, 38.674007, 51.896336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509674, 38.331493, 51.894203>,  <37.385719, 38.125984, 51.892925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509674, 38.331493, 51.894203>,  <37.716263, 38.674007, 51.896336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509674, 38.331493, 51.894203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104723, 0.056985, 0.992867,
		-0.849875, 0.513348, -0.119104,
		-0.516474, -0.856286, -0.005329,
		37.354733, 38.074608, 51.892605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255798, 38.823818, 52.384056>,  <37.716263, 38.674007, 51.896336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255798, 38.823818, 52.384056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259090, 38.425720, 52.345242>,  <37.261066, 38.186863, 52.321953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259090, 38.425720, 52.345242>,  <37.255798, 38.823818, 52.384056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259090, 38.425720, 52.345242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191761, -0.096815, 0.976655,
		-0.981407, 0.010567, -0.191646,
		0.008233, -0.995247, -0.097041,
		37.261562, 38.127148, 52.316128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624569, 38.587967, 52.760071>,  <37.255798, 38.823818, 52.384056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624569, 38.587967, 52.760071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913994, 38.312794, 52.737408>,  <37.087650, 38.147690, 52.723812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.913994, 38.312794, 52.737408>,  <36.624569, 38.587967, 52.760071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913994, 38.312794, 52.737408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053509, -0.025930, 0.998231,
		-0.688182, -0.725314, 0.018049,
		0.723562, -0.687930, -0.056656,
		37.131062, 38.106415, 52.720409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458515, 37.756020, 52.833679>,  <36.624569, 38.587967, 52.760071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458515, 37.756020, 52.833679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800060, 37.924759, 52.955631>,  <37.004990, 38.026005, 53.028805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800060, 37.924759, 52.955631>,  <36.458515, 37.756020, 52.833679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800060, 37.924759, 52.955631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181315, -0.307994, 0.933951,
		0.487891, -0.852749, -0.186498,
		0.853866, 0.421851, 0.304884,
		37.056221, 38.051315, 53.047096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684292, 37.357582, 52.925240>,  <36.458515, 37.756020, 52.833679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684292, 37.357582, 52.925240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426159, 37.052040, 52.921902>,  <35.271278, 36.868713, 52.919899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426159, 37.052040, 52.921902>,  <35.684292, 37.357582, 52.925240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426159, 37.052040, 52.921902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180317, 0.162933, -0.970020,
		0.742315, -0.624481, -0.242882,
		-0.645333, -0.763856, -0.008343,
		35.232559, 36.822884, 52.919399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797112, 36.887920, 52.430744>,  <35.684292, 37.357582, 52.925240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797112, 36.887920, 52.430744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404182, 36.873711, 52.504265>,  <35.168427, 36.865185, 52.548378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404182, 36.873711, 52.504265>,  <35.797112, 36.887920, 52.430744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404182, 36.873711, 52.504265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185983, 0.073399, -0.979808,
		0.021318, -0.996670, -0.078709,
		-0.982322, -0.035526, 0.183799,
		35.109486, 36.863052, 52.559406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471062, 36.564713, 51.935680>,  <35.797112, 36.887920, 52.430744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471062, 36.564713, 51.935680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178253, 36.797691, 52.077042>,  <35.002567, 36.937481, 52.161858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.178253, 36.797691, 52.077042>,  <35.471062, 36.564713, 51.935680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178253, 36.797691, 52.077042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170661, 0.345423, -0.922799,
		-0.659556, -0.735824, -0.153457,
		-0.732025, 0.582449, 0.353402,
		34.958645, 36.972427, 52.183064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932404, 36.394794, 51.493710>,  <35.471062, 36.564713, 51.935680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932404, 36.394794, 51.493710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765656, 36.717979, 51.660282>,  <34.665607, 36.911892, 51.760227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765656, 36.717979, 51.660282>,  <34.932404, 36.394794, 51.493710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765656, 36.717979, 51.660282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418445, 0.236124, -0.877011,
		-0.806924, -0.539851, 0.239656,
		-0.416867, 0.807964, 0.416432,
		34.640594, 36.960369, 51.785213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165798, 36.489338, 51.301285>,  <34.932404, 36.394794, 51.493710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165798, 36.489338, 51.301285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269650, 36.859421, 51.411976>,  <34.331959, 37.081470, 51.478390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269650, 36.859421, 51.411976>,  <34.165798, 36.489338, 51.301285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269650, 36.859421, 51.411976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508002, 0.374549, -0.775659,
		-0.821296, 0.060805, 0.567252,
		0.259627, 0.925211, 0.276726,
		34.347538, 37.136986, 51.494995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549847, 36.890606, 51.271084>,  <34.165798, 36.489338, 51.301285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549847, 36.890606, 51.271084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876766, 37.118458, 51.236324>,  <34.072918, 37.255169, 51.215469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876766, 37.118458, 51.236324>,  <33.549847, 36.890606, 51.271084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876766, 37.118458, 51.236324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386351, 0.429838, -0.816071,
		-0.427503, 0.700547, 0.571381,
		0.817297, 0.569626, -0.086900,
		34.121956, 37.289345, 51.210255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367558, 37.462635, 50.887489>,  <33.549847, 36.890606, 51.271084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367558, 37.462635, 50.887489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766853, 37.462944, 50.863789>,  <34.006432, 37.463131, 50.849567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766853, 37.462944, 50.863789>,  <33.367558, 37.462635, 50.887489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766853, 37.462944, 50.863789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052797, 0.465618, -0.883410,
		0.026908, 0.884986, 0.464840,
		0.998243, 0.000772, -0.059254,
		34.066326, 37.463177, 50.846012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420654, 37.915417, 50.303547>,  <33.367558, 37.462635, 50.887489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420654, 37.915417, 50.303547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795506, 37.784912, 50.353115>,  <34.020416, 37.706612, 50.382854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795506, 37.784912, 50.353115>,  <33.420654, 37.915417, 50.303547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795506, 37.784912, 50.353115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220055, 0.276801, -0.935391,
		0.270878, 0.903846, 0.331192,
		0.937124, -0.326257, 0.123917,
		34.076641, 37.687035, 50.390289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926132, 38.355137, 49.940403>,  <33.420654, 37.915417, 50.303547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926132, 38.355137, 49.940403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108269, 38.002213, 49.988041>,  <34.217552, 37.790459, 50.016624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.108269, 38.002213, 49.988041>,  <33.926132, 38.355137, 49.940403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108269, 38.002213, 49.988041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291754, 0.021496, -0.956252,
		0.841154, 0.470170, 0.267207,
		0.455345, -0.882314, 0.119093,
		34.244873, 37.737518, 50.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673141, 38.431149, 49.654007>,  <33.926132, 38.355137, 49.940403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673141, 38.431149, 49.654007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524212, 38.059914, 49.651855>,  <34.434856, 37.837173, 49.650566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524212, 38.059914, 49.651855>,  <34.673141, 38.431149, 49.654007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524212, 38.059914, 49.651855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158851, -0.058012, -0.985597,
		0.914409, -0.367812, 0.169027,
		-0.372320, -0.928089, -0.005380,
		34.412518, 37.781487, 49.650242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060543, 38.078690, 49.242546>,  <34.673141, 38.431149, 49.654007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060543, 38.078690, 49.242546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754086, 37.822834, 49.267483>,  <34.570210, 37.669319, 49.282444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754086, 37.822834, 49.267483>,  <35.060543, 38.078690, 49.242546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754086, 37.822834, 49.267483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134029, -0.253896, -0.957900,
		0.628537, -0.725535, 0.280251,
		-0.766145, -0.639638, 0.062340,
		34.524242, 37.630943, 49.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354733, 37.368607, 49.052322>,  <35.060543, 38.078690, 49.242546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354733, 37.368607, 49.052322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959698, 37.407307, 49.002815>,  <34.722679, 37.430527, 48.973110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959698, 37.407307, 49.002815>,  <35.354733, 37.368607, 49.052322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959698, 37.407307, 49.002815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100183, -0.219002, -0.970568,
		-0.121008, -0.970916, 0.206590,
		-0.987583, 0.096749, -0.123770,
		34.663422, 37.436333, 48.965683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108162, 36.783646, 48.739677>,  <35.354733, 37.368607, 49.052322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108162, 36.783646, 48.739677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805218, 37.036388, 48.673748>,  <34.623451, 37.188034, 48.634190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805218, 37.036388, 48.673748>,  <35.108162, 36.783646, 48.739677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805218, 37.036388, 48.673748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016505, -0.270857, -0.962478,
		-0.652792, -0.726220, 0.215565,
		-0.757358, 0.631855, -0.164826,
		34.578011, 37.225945, 48.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603096, 36.412613, 48.388710>,  <35.108162, 36.783646, 48.739677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603096, 36.412613, 48.388710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570698, 36.800671, 48.297268>,  <34.551258, 37.033504, 48.242401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570698, 36.800671, 48.297268>,  <34.603096, 36.412613, 48.388710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570698, 36.800671, 48.297268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072389, -0.223030, -0.972120,
		-0.994083, -0.095282, -0.052164,
		-0.080992, 0.970144, -0.228607,
		34.546402, 37.091713, 48.228687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092785, 36.552219, 47.793587>,  <34.603096, 36.412613, 48.388710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092785, 36.552219, 47.793587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332462, 36.872265, 47.782368>,  <34.476269, 37.064293, 47.775635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332462, 36.872265, 47.782368>,  <34.092785, 36.552219, 47.793587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332462, 36.872265, 47.782368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107604, -0.115199, -0.987497,
		-0.793339, 0.588685, -0.155122,
		0.599194, 0.800112, -0.028047,
		34.512222, 37.112297, 47.773952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005451, 36.756374, 47.052830>,  <34.092785, 36.552219, 47.793587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005451, 36.756374, 47.052830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286270, 37.011509, 47.179508>,  <34.454762, 37.164589, 47.255516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286270, 37.011509, 47.179508>,  <34.005451, 36.756374, 47.052830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286270, 37.011509, 47.179508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253781, 0.191437, -0.948128,
		-0.665378, 0.746001, -0.027473,
		0.702045, 0.637836, 0.316699,
		34.496883, 37.202858, 47.274517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884670, 37.356731, 46.763523>,  <34.005451, 36.756374, 47.052830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884670, 37.356731, 46.763523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276077, 37.376923, 46.843479>,  <34.510921, 37.389038, 46.891453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276077, 37.376923, 46.843479>,  <33.884670, 37.356731, 46.763523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276077, 37.376923, 46.843479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164563, 0.392801, -0.904780,
		-0.124192, 0.918237, 0.376055,
		0.978517, 0.050482, 0.199891,
		34.569633, 37.392067, 46.903446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099033, 37.954308, 46.580711>,  <33.884670, 37.356731, 46.763523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099033, 37.954308, 46.580711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456196, 37.775150, 46.562374>,  <34.670494, 37.667656, 46.551373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456196, 37.775150, 46.562374>,  <34.099033, 37.954308, 46.580711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456196, 37.775150, 46.562374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162205, 0.415004, -0.895244,
		0.420001, 0.791936, 0.443212,
		0.892911, -0.447894, -0.045846,
		34.724068, 37.640781, 46.548622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529583, 38.515888, 46.426064>,  <34.099033, 37.954308, 46.580711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529583, 38.515888, 46.426064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705502, 38.174725, 46.313545>,  <34.811054, 37.970028, 46.246037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.705502, 38.174725, 46.313545>,  <34.529583, 38.515888, 46.426064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705502, 38.174725, 46.313545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035501, 0.329475, -0.943497,
		0.897394, 0.404963, 0.175182,
		0.439799, -0.852908, -0.281292,
		34.837440, 37.918854, 46.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918957, 38.660320, 45.852493>,  <34.529583, 38.515888, 46.426064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918957, 38.660320, 45.852493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897846, 38.265297, 45.793236>,  <34.885181, 38.028282, 45.757679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897846, 38.265297, 45.793236>,  <34.918957, 38.660320, 45.852493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897846, 38.265297, 45.793236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016521, 0.147470, -0.988928,
		0.998470, -0.054637, 0.008533,
		-0.052774, -0.987556, -0.148147,
		34.882015, 37.969028, 45.748791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337460, 38.519203, 45.321533>,  <34.918957, 38.660320, 45.852493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337460, 38.519203, 45.321533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110432, 38.189980, 45.329960>,  <34.974216, 37.992447, 45.335018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110432, 38.189980, 45.329960>,  <35.337460, 38.519203, 45.321533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110432, 38.189980, 45.329960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023259, -0.041608, -0.998863,
		0.823000, -0.566430, 0.042759,
		-0.567565, -0.823059, 0.021068,
		34.940163, 37.943062, 45.336281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.378548, 41.773891, 33.669655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152920, 41.693253, 33.989952>,  <39.017544, 41.644871, 34.182129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152920, 41.693253, 33.989952>,  <39.378548, 41.773891, 33.669655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152920, 41.693253, 33.989952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713511, -0.607089, 0.349778,
		0.415607, 0.768636, 0.486281,
		-0.564068, -0.201596, 0.800741,
		38.983700, 41.632774, 34.230175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862911, 41.674572, 34.265812>,  <39.378548, 41.773891, 33.669655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862911, 41.674572, 34.265812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531166, 41.467480, 34.349815>,  <39.332119, 41.343224, 34.400215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531166, 41.467480, 34.349815>,  <39.862911, 41.674572, 34.265812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531166, 41.467480, 34.349815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556415, -0.731400, 0.394279,
		-0.050533, 0.443852, 0.894674,
		-0.829366, -0.517735, 0.210006,
		39.282356, 41.312160, 34.412819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839775, 41.585182, 34.983902>,  <39.862911, 41.674572, 34.265812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839775, 41.585182, 34.983902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588627, 41.304665, 34.848866>,  <39.437939, 41.136353, 34.767845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.588627, 41.304665, 34.848866>,  <39.839775, 41.585182, 34.983902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588627, 41.304665, 34.848866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549483, -0.706586, 0.445874,
		-0.551225, 0.094452, 0.828994,
		-0.627869, -0.701295, -0.337588,
		39.400265, 41.094276, 34.747589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708019, 41.126503, 35.535137>,  <39.839775, 41.585182, 34.983902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708019, 41.126503, 35.535137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602428, 40.914940, 35.212505>,  <39.539074, 40.788002, 35.018925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602428, 40.914940, 35.212505>,  <39.708019, 41.126503, 35.535137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602428, 40.914940, 35.212505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397880, -0.821487, 0.408472,
		-0.878641, -0.213097, 0.427294,
		-0.263973, -0.528912, -0.806579,
		39.523235, 40.756268, 34.970531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277802, 40.528477, 35.702278>,  <39.708019, 41.126503, 35.535137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277802, 40.528477, 35.702278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425282, 40.421944, 35.346046>,  <39.513767, 40.358025, 35.132309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.425282, 40.421944, 35.346046>,  <39.277802, 40.528477, 35.702278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425282, 40.421944, 35.346046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331196, -0.857561, 0.393571,
		-0.868547, -0.440063, -0.227969,
		0.368693, -0.266332, -0.890580,
		39.535889, 40.342045, 35.078873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156696, 39.848679, 35.720707>,  <39.277802, 40.528477, 35.702278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156696, 39.848679, 35.720707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422291, 39.889202, 35.424366>,  <39.581646, 39.913517, 35.246559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.422291, 39.889202, 35.424366>,  <39.156696, 39.848679, 35.720707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422291, 39.889202, 35.424366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491099, -0.806219, 0.329898,
		-0.563870, -0.582879, -0.585066,
		0.663982, 0.101305, -0.740854,
		39.621487, 39.919594, 35.202110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215260, 39.265709, 35.560570>,  <39.156696, 39.848679, 35.720707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215260, 39.265709, 35.560570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550999, 39.443199, 35.434959>,  <39.752441, 39.549694, 35.359592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550999, 39.443199, 35.434959>,  <39.215260, 39.265709, 35.560570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550999, 39.443199, 35.434959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540235, -0.745070, 0.391173,
		-0.060396, -0.497975, -0.865085,
		0.839344, 0.443725, -0.314023,
		39.802803, 39.576317, 35.340752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588371, 38.730076, 35.190491>,  <39.215260, 39.265709, 35.560570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588371, 38.730076, 35.190491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855392, 39.006481, 35.301399>,  <40.015606, 39.172325, 35.367943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855392, 39.006481, 35.301399>,  <39.588371, 38.730076, 35.190491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855392, 39.006481, 35.301399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627424, -0.722575, 0.290215,
		0.400889, -0.019768, -0.915913,
		0.667552, 0.691010, 0.277270,
		40.055656, 39.213783, 35.384579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134846, 38.511402, 35.031040>,  <39.588371, 38.730076, 35.190491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134846, 38.511402, 35.031040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307724, 38.785099, 35.265991>,  <40.411449, 38.949318, 35.406963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307724, 38.785099, 35.265991>,  <40.134846, 38.511402, 35.031040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307724, 38.785099, 35.265991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788524, -0.602783, 0.121992,
		0.437534, 0.410437, -0.800066,
		0.432197, 0.684247, 0.587377,
		40.437382, 38.990372, 35.442204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807430, 38.680496, 34.836899>,  <40.134846, 38.511402, 35.031040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807430, 38.680496, 34.836899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.834736, 38.770325, 35.225723>,  <40.851120, 38.824223, 35.459019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.834736, 38.770325, 35.225723>,  <40.807430, 38.680496, 34.836899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834736, 38.770325, 35.225723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747947, -0.656319, 0.099103,
		0.660239, 0.720286, -0.212772,
		0.068263, 0.224574, 0.972063,
		40.855213, 38.837696, 35.517342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486656, 38.802845, 35.054089>,  <40.807430, 38.680496, 34.836899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486656, 38.802845, 35.054089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324673, 38.702579, 35.405811>,  <41.227482, 38.642422, 35.616844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324673, 38.702579, 35.405811>,  <41.486656, 38.802845, 35.054089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324673, 38.702579, 35.405811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738176, -0.657113, 0.152641,
		0.539542, 0.710895, 0.451135,
		-0.404958, -0.250660, 0.879305,
		41.203186, 38.627380, 35.669601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032349, 38.705189, 35.506821>,  <41.486656, 38.802845, 35.054089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032349, 38.705189, 35.506821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.727982, 38.519482, 35.688129>,  <41.545361, 38.408058, 35.796917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.727982, 38.519482, 35.688129>,  <42.032349, 38.705189, 35.506821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727982, 38.519482, 35.688129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568122, -0.814180, 0.119780,
		0.313437, 0.348658, 0.883287,
		-0.760917, -0.464271, 0.453275,
		41.499706, 38.380199, 35.824112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439495, 38.083038, 35.849174>,  <42.032349, 38.705189, 35.506821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439495, 38.083038, 35.849174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061161, 37.994534, 35.944199>,  <41.834160, 37.941433, 36.001213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061161, 37.994534, 35.944199>,  <42.439495, 38.083038, 35.849174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061161, 37.994534, 35.944199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279969, -0.926378, 0.251876,
		0.164340, 0.304743, 0.938149,
		-0.945838, -0.221259, 0.237559,
		41.777409, 37.928154, 36.015465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387363, 37.803635, 36.558376>,  <42.439495, 38.083038, 35.849174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387363, 37.803635, 36.558376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.090767, 37.653793, 36.335716>,  <41.912807, 37.563889, 36.202122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.090767, 37.653793, 36.335716>,  <42.387363, 37.803635, 36.558376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090767, 37.653793, 36.335716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358423, -0.922488, 0.143349,
		-0.567202, -0.093224, 0.818285,
		-0.741495, -0.374600, -0.556651,
		41.868317, 37.541412, 36.168720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062389, 37.366955, 37.004021>,  <42.387363, 37.803635, 36.558376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062389, 37.366955, 37.004021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005943, 37.258137, 36.623268>,  <41.972076, 37.192844, 36.394817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.005943, 37.258137, 36.623268>,  <42.062389, 37.366955, 37.004021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005943, 37.258137, 36.623268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382291, -0.901897, 0.201087,
		-0.913204, -0.335520, 0.231268,
		-0.141111, -0.272045, -0.951882,
		41.963612, 37.176521, 36.337704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998608, 36.610538, 36.912430>,  <42.062389, 37.366955, 37.004021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998608, 36.610538, 36.912430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048935, 36.676174, 36.521072>,  <42.079132, 36.715557, 36.286259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.048935, 36.676174, 36.521072>,  <41.998608, 36.610538, 36.912430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048935, 36.676174, 36.521072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618756, -0.783867, -0.051899,
		-0.775443, -0.598854, -0.200154,
		0.125814, 0.164092, -0.978389,
		42.086678, 36.725403, 36.227554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810181, 36.011490, 36.589310>,  <41.998608, 36.610538, 36.912430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810181, 36.011490, 36.589310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061531, 36.209099, 36.348946>,  <42.212341, 36.327663, 36.204727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061531, 36.209099, 36.348946>,  <41.810181, 36.011490, 36.589310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061531, 36.209099, 36.348946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567827, -0.819274, -0.079768,
		-0.531716, -0.291089, -0.795328,
		0.628371, 0.494022, -0.600909,
		42.250042, 36.357307, 36.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015663, 35.534107, 36.114479>,  <41.810181, 36.011490, 36.589310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015663, 35.534107, 36.114479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298950, 35.808907, 36.049416>,  <42.468922, 35.973785, 36.010376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.298950, 35.808907, 36.049416>,  <42.015663, 35.534107, 36.114479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298950, 35.808907, 36.049416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675009, -0.726430, -0.129084,
		-0.206843, -0.018378, -0.978202,
		0.708222, 0.686995, -0.162662,
		42.511417, 36.015007, 36.000618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426464, 35.259357, 35.552341>,  <42.015663, 35.534107, 36.114479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426464, 35.259357, 35.552341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659901, 35.527679, 35.735401>,  <42.799961, 35.688675, 35.845238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659901, 35.527679, 35.735401>,  <42.426464, 35.259357, 35.552341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659901, 35.527679, 35.735401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785411, -0.609434, -0.108257,
		0.206286, 0.422619, -0.882519,
		0.583588, 0.670808, 0.457647,
		42.834976, 35.728924, 35.872696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075054, 35.222534, 35.076820>,  <42.426464, 35.259357, 35.552341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075054, 35.222534, 35.076820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.162739, 35.387169, 35.430668>,  <43.215351, 35.485950, 35.642975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.162739, 35.387169, 35.430668>,  <43.075054, 35.222534, 35.076820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162739, 35.387169, 35.430668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773061, -0.626418, 0.099884,
		0.595250, 0.661966, -0.455498,
		0.219212, 0.411584, 0.884616,
		43.228504, 35.510643, 35.696053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829807, 35.513348, 35.048965>,  <43.075054, 35.222534, 35.076820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829807, 35.513348, 35.048965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731548, 35.459110, 35.432896>,  <43.672592, 35.426567, 35.663254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.731548, 35.459110, 35.432896>,  <43.829807, 35.513348, 35.048965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731548, 35.459110, 35.432896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808307, -0.575207, 0.125607,
		0.535068, 0.806691, 0.250902,
		-0.245646, -0.135597, 0.959829,
		43.657856, 35.418430, 35.720844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594414, 35.534798, 35.150253>,  <43.829807, 35.513348, 35.048965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594414, 35.534798, 35.150253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541313, 35.326775, 34.812752>,  <44.509453, 35.201962, 34.610252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541313, 35.326775, 34.812752>,  <44.594414, 35.534798, 35.150253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541313, 35.326775, 34.812752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813448, -0.429208, 0.392534,
		-0.566285, 0.738458, -0.366061,
		-0.132753, -0.520058, -0.843751,
		44.501488, 35.170757, 34.559628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271778, 35.836052, 34.948067>,  <44.594414, 35.534798, 35.150253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271778, 35.836052, 34.948067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646187, 35.968636, 34.995388>,  <45.870831, 36.048187, 35.023781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646187, 35.968636, 34.995388>,  <45.271778, 35.836052, 34.948067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646187, 35.968636, 34.995388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340449, 0.937967, 0.065674,
		-0.089197, -0.101749, 0.990803,
		0.936023, 0.331461, 0.118304,
		45.926994, 36.068073, 35.030880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311512, 36.233654, 35.593849>,  <45.271778, 35.836052, 34.948067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311512, 36.233654, 35.593849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590771, 36.393711, 35.356373>,  <45.758327, 36.489746, 35.213886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590771, 36.393711, 35.356373>,  <45.311512, 36.233654, 35.593849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590771, 36.393711, 35.356373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356999, 0.913357, 0.195785,
		0.620594, 0.075260, 0.780512,
		0.698151, 0.400144, -0.593691,
		45.800217, 36.513756, 35.178265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608582, 36.668972, 35.982670>,  <45.311512, 36.233654, 35.593849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608582, 36.668972, 35.982670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717434, 36.791004, 35.617622>,  <45.782745, 36.864223, 35.398594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.717434, 36.791004, 35.617622>,  <45.608582, 36.668972, 35.982670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717434, 36.791004, 35.617622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299881, 0.928067, 0.220822,
		0.914340, 0.213585, 0.344041,
		0.272129, 0.305078, -0.912619,
		45.799072, 36.882526, 35.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767975, 37.411041, 36.086918>,  <45.608582, 36.668972, 35.982670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767975, 37.411041, 36.086918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711739, 37.354095, 35.695007>,  <45.677998, 37.319927, 35.459862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711739, 37.354095, 35.695007>,  <45.767975, 37.411041, 36.086918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711739, 37.354095, 35.695007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232621, 0.966654, -0.107083,
		0.962353, 0.212863, -0.169017,
		-0.140587, -0.142368, -0.979779,
		45.669563, 37.311386, 35.401073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988087, 38.062580, 35.685684>,  <45.767975, 37.411041, 36.086918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988087, 38.062580, 35.685684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767555, 37.855545, 35.423954>,  <45.635239, 37.731323, 35.266914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767555, 37.855545, 35.423954>,  <45.988087, 38.062580, 35.685684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767555, 37.855545, 35.423954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411457, 0.850962, -0.326445,
		0.725770, 0.089249, -0.682124,
		-0.551327, -0.517589, -0.654325,
		45.602158, 37.700268, 35.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163750, 38.398148, 35.042839>,  <45.988087, 38.062580, 35.685684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163750, 38.398148, 35.042839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.808296, 38.216282, 35.018795>,  <45.595024, 38.107162, 35.004368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.808296, 38.216282, 35.018795>,  <46.163750, 38.398148, 35.042839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808296, 38.216282, 35.018795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405342, 0.839941, -0.360828,
		0.214541, -0.296281, -0.930693,
		-0.888634, -0.454661, -0.060106,
		45.541706, 38.079884, 35.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847809, 38.782364, 34.593819>,  <46.163750, 38.398148, 35.042839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847809, 38.782364, 34.593819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.555935, 38.541485, 34.723385>,  <45.380810, 38.396957, 34.801125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.555935, 38.541485, 34.723385>,  <45.847809, 38.782364, 34.593819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555935, 38.541485, 34.723385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683777, 0.640165, -0.350198,
		0.003525, -0.477022, -0.878884,
		-0.729683, -0.602195, 0.323920,
		45.337029, 38.360825, 34.820560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313950, 38.793774, 34.019276>,  <45.847809, 38.782364, 34.593819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313950, 38.793774, 34.019276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125221, 38.687305, 34.355499>,  <45.011986, 38.623425, 34.557232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125221, 38.687305, 34.355499>,  <45.313950, 38.793774, 34.019276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125221, 38.687305, 34.355499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687996, 0.707358, -0.162192,
		-0.551405, -0.654826, -0.516871,
		-0.471820, -0.266172, 0.840558,
		44.983677, 38.607452, 34.607666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555374, 38.738819, 33.791920>,  <45.313950, 38.793774, 34.019276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555374, 38.738819, 33.791920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583263, 38.786476, 34.188091>,  <44.599995, 38.815071, 34.425793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583263, 38.786476, 34.188091>,  <44.555374, 38.738819, 33.791920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583263, 38.786476, 34.188091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621765, 0.781590, -0.050253,
		-0.780095, -0.612309, 0.128570,
		0.069719, 0.119143, 0.990427,
		44.604179, 38.822220, 34.485218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882500, 38.721169, 33.939205>,  <44.555374, 38.738819, 33.791920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882500, 38.721169, 33.939205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065823, 38.888969, 34.252628>,  <44.175816, 38.989651, 34.440681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.065823, 38.888969, 34.252628>,  <43.882500, 38.721169, 33.939205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065823, 38.888969, 34.252628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763857, 0.636630, 0.105945,
		-0.454392, -0.647084, 0.612217,
		0.458311, 0.419506, 0.783559,
		44.203316, 39.014820, 34.487698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426258, 38.750298, 34.549896>,  <43.882500, 38.721169, 33.939205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426258, 38.750298, 34.549896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696957, 39.035145, 34.624626>,  <43.859375, 39.206055, 34.669464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696957, 39.035145, 34.624626>,  <43.426258, 38.750298, 34.549896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696957, 39.035145, 34.624626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736040, 0.660023, 0.150381,
		-0.016219, -0.239279, 0.970815,
		0.676743, 0.712120, 0.186824,
		43.899979, 39.248779, 34.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198189, 39.041454, 35.143597>,  <43.426258, 38.750298, 34.549896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198189, 39.041454, 35.143597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437820, 39.308521, 34.966816>,  <43.581600, 39.468761, 34.860748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437820, 39.308521, 34.966816>,  <43.198189, 39.041454, 35.143597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437820, 39.308521, 34.966816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735442, 0.677089, 0.025986,
		0.316591, 0.309462, 0.896662,
		0.599079, 0.667670, -0.441952,
		43.617542, 39.508823, 34.834229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020821, 39.548580, 35.468418>,  <43.198189, 39.041454, 35.143597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020821, 39.548580, 35.468418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200459, 39.698509, 35.143993>,  <43.308243, 39.788467, 34.949337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.200459, 39.698509, 35.143993>,  <43.020821, 39.548580, 35.468418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200459, 39.698509, 35.143993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647900, 0.761696, -0.006748,
		0.615253, 0.528517, 0.584922,
		0.449099, 0.374819, -0.811062,
		43.335190, 39.810955, 34.900677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218651, 40.186577, 35.668907>,  <43.020821, 39.548580, 35.468418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218651, 40.186577, 35.668907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212414, 40.231583, 35.271496>,  <43.208672, 40.258587, 35.033051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.212414, 40.231583, 35.271496>,  <43.218651, 40.186577, 35.668907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212414, 40.231583, 35.271496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727929, 0.679925, 0.088428,
		0.685475, 0.724597, 0.071303,
		-0.015594, 0.112519, -0.993527,
		43.207737, 40.265339, 34.973438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041931, 40.844074, 35.610664>,  <43.218651, 40.186577, 35.668907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041931, 40.844074, 35.610664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964714, 40.711548, 35.241238>,  <42.918385, 40.632034, 35.019581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964714, 40.711548, 35.241238>,  <43.041931, 40.844074, 35.610664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964714, 40.711548, 35.241238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766649, 0.638374, -0.068761,
		0.612359, 0.694774, -0.377234,
		-0.193043, -0.331313, -0.923562,
		42.906803, 40.612156, 34.964169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913578, 41.426155, 35.142010>,  <43.041931, 40.844074, 35.610664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913578, 41.426155, 35.142010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770828, 41.114635, 34.935661>,  <42.685181, 40.927723, 34.811852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770828, 41.114635, 34.935661>,  <42.913578, 41.426155, 35.142010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770828, 41.114635, 34.935661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758186, 0.564074, -0.327070,
		0.545706, 0.274396, -0.791778,
		-0.356874, -0.778799, -0.515862,
		42.663769, 40.880997, 34.780903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626099, 41.692284, 34.490509>,  <42.913578, 41.426155, 35.142010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626099, 41.692284, 34.490509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423027, 41.347668, 34.489899>,  <42.301186, 41.140896, 34.489532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423027, 41.347668, 34.489899>,  <42.626099, 41.692284, 34.490509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423027, 41.347668, 34.489899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859923, 0.506832, -0.060446,
		0.052848, -0.029379, -0.998170,
		-0.507681, -0.861544, -0.001521,
		42.270721, 41.089203, 34.489441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144238, 41.744240, 33.962852>,  <42.626099, 41.692284, 34.490509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144238, 41.744240, 33.962852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991756, 41.456875, 34.195595>,  <41.900269, 41.284454, 34.335243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991756, 41.456875, 34.195595>,  <42.144238, 41.744240, 33.962852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991756, 41.456875, 34.195595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881211, 0.472681, 0.006291,
		-0.279554, -0.510344, -0.813264,
		-0.381204, -0.718416, 0.581860,
		41.877396, 41.241348, 34.370152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532562, 41.552319, 33.665661>,  <42.144238, 41.744240, 33.962852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532562, 41.552319, 33.665661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493942, 41.441509, 34.048061>,  <41.470772, 41.375023, 34.277500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493942, 41.441509, 34.048061>,  <41.532562, 41.552319, 33.665661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493942, 41.441509, 34.048061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905756, 0.422664, 0.031004,
		-0.412656, -0.862910, -0.291722,
		-0.096547, -0.277023, 0.956001,
		41.464977, 41.358402, 34.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811142, 41.407883, 33.812599>,  <41.532562, 41.552319, 33.665661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811142, 41.407883, 33.812599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987499, 41.491398, 34.161774>,  <41.093315, 41.541508, 34.371281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987499, 41.491398, 34.161774>,  <40.811142, 41.407883, 33.812599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987499, 41.491398, 34.161774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699801, 0.688975, 0.188658,
		-0.562044, -0.694061, 0.449874,
		0.440892, 0.208788, 0.872939,
		41.119766, 41.554035, 34.423656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.901859, 38.897190, 41.314678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651211, 38.585625, 41.304592>,  <37.500820, 38.398685, 41.298542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651211, 38.585625, 41.304592>,  <37.901859, 38.897190, 41.314678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651211, 38.585625, 41.304592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165978, -0.101778, -0.980863,
		0.761442, -0.618816, 0.193059,
		-0.626623, -0.778914, -0.025212,
		37.463223, 38.351952, 41.297028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284008, 38.451550, 40.876808>,  <37.901859, 38.897190, 41.314678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284008, 38.451550, 40.876808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925575, 38.274040, 40.872730>,  <37.710514, 38.167534, 40.870285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925575, 38.274040, 40.872730>,  <38.284008, 38.451550, 40.876808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925575, 38.274040, 40.872730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172742, -0.327470, -0.928937,
		0.408898, -0.834164, 0.370098,
		-0.896082, -0.443772, -0.010193,
		37.656750, 38.140907, 40.869671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462154, 37.734825, 40.706684>,  <38.284008, 38.451550, 40.876808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462154, 37.734825, 40.706684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073994, 37.799274, 40.634735>,  <37.841095, 37.837944, 40.591568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073994, 37.799274, 40.634735>,  <38.462154, 37.734825, 40.706684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073994, 37.799274, 40.634735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, -0.497433, -0.864028,
		-0.228686, -0.852408, 0.470215,
		-0.970406, 0.161122, -0.179868,
		37.782871, 37.847610, 40.580776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162037, 37.076809, 40.459675>,  <38.462154, 37.734825, 40.706684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162037, 37.076809, 40.459675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894135, 37.347321, 40.336990>,  <37.733391, 37.509628, 40.263378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894135, 37.347321, 40.336990>,  <38.162037, 37.076809, 40.459675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894135, 37.347321, 40.336990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170719, -0.542206, -0.822720,
		-0.722687, -0.498663, 0.478600,
		-0.669760, 0.676275, -0.306714,
		37.693207, 37.550201, 40.244976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648537, 36.699577, 40.221600>,  <38.162037, 37.076809, 40.459675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648537, 36.699577, 40.221600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556179, 37.050415, 40.053131>,  <37.500763, 37.260918, 39.952049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556179, 37.050415, 40.053131>,  <37.648537, 36.699577, 40.221600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556179, 37.050415, 40.053131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122836, -0.455683, -0.881626,
		-0.965193, -0.151831, 0.212956,
		-0.230898, 0.877098, -0.421172,
		37.486908, 37.313545, 39.926781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053463, 36.621349, 39.871696>,  <37.648537, 36.699577, 40.221600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053463, 36.621349, 39.871696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212719, 36.933563, 39.678928>,  <37.308273, 37.120892, 39.563267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212719, 36.933563, 39.678928>,  <37.053463, 36.621349, 39.871696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212719, 36.933563, 39.678928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233024, -0.422060, -0.876108,
		-0.887232, 0.461116, 0.013843,
		0.398144, 0.780537, -0.481917,
		37.332161, 37.167725, 39.534355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593273, 36.808929, 39.269650>,  <37.053463, 36.621349, 39.871696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593273, 36.808929, 39.269650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944065, 36.973034, 39.169579>,  <37.154541, 37.071495, 39.109535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944065, 36.973034, 39.169579>,  <36.593273, 36.808929, 39.269650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944065, 36.973034, 39.169579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129895, -0.298857, -0.945416,
		-0.462632, 0.861611, -0.208802,
		0.876983, 0.410258, -0.250180,
		37.207161, 37.096111, 39.094524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496250, 37.240040, 38.617832>,  <36.593273, 36.808929, 39.269650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496250, 37.240040, 38.617832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882977, 37.139389, 38.635494>,  <37.115013, 37.078999, 38.646091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882977, 37.139389, 38.635494>,  <36.496250, 37.240040, 38.617832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882977, 37.139389, 38.635494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022511, -0.256079, -0.966394,
		0.254479, 0.933331, -0.253246,
		0.966816, -0.251628, 0.044156,
		37.173023, 37.063900, 38.648743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697498, 37.468136, 37.970592>,  <36.496250, 37.240040, 38.617832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697498, 37.468136, 37.970592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960651, 37.199703, 38.107315>,  <37.118546, 37.038643, 38.189350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960651, 37.199703, 38.107315>,  <36.697498, 37.468136, 37.970592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960651, 37.199703, 38.107315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038594, -0.423218, -0.905205,
		0.752128, 0.608714, -0.252529,
		0.657886, -0.671084, 0.341807,
		37.158016, 36.998379, 38.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192871, 37.472969, 37.471848>,  <36.697498, 37.468136, 37.970592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192871, 37.472969, 37.471848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214718, 37.123783, 37.665733>,  <37.227825, 36.914272, 37.782066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214718, 37.123783, 37.665733>,  <37.192871, 37.472969, 37.471848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214718, 37.123783, 37.665733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084447, -0.479663, -0.873380,
		0.994930, 0.088631, 0.047523,
		0.054613, -0.872965, 0.484716,
		37.231102, 36.861893, 37.811150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706593, 37.080566, 37.170506>,  <37.192871, 37.472969, 37.471848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706593, 37.080566, 37.170506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508713, 36.788052, 37.358334>,  <37.389984, 36.612545, 37.471031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508713, 36.788052, 37.358334>,  <37.706593, 37.080566, 37.170506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508713, 36.788052, 37.358334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011622, -0.534702, -0.844961,
		0.868988, -0.423457, 0.256017,
		-0.494697, -0.731285, 0.469571,
		37.360302, 36.568665, 37.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031330, 36.388695, 36.980045>,  <37.706593, 37.080566, 37.170506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031330, 36.388695, 36.980045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667351, 36.291588, 37.114544>,  <37.448963, 36.233322, 37.195244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667351, 36.291588, 37.114544>,  <38.031330, 36.388695, 36.980045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667351, 36.291588, 37.114544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138845, -0.585651, -0.798583,
		0.390797, -0.773353, 0.499203,
		-0.909945, -0.242772, 0.336247,
		37.394367, 36.218758, 37.215420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003773, 35.711689, 36.843960>,  <38.031330, 36.388695, 36.980045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003773, 35.711689, 36.843960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619766, 35.821259, 36.867031>,  <37.389362, 35.887001, 36.880875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619766, 35.821259, 36.867031>,  <38.003773, 35.711689, 36.843960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619766, 35.821259, 36.867031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239064, -0.695077, -0.678024,
		-0.145633, -0.664707, 0.732773,
		-0.960021, 0.273922, 0.057681,
		37.331760, 35.903435, 36.884335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536591, 35.154503, 37.043633>,  <38.003773, 35.711689, 36.843960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536591, 35.154503, 37.043633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354683, 35.425510, 36.812412>,  <37.245537, 35.588116, 36.673679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354683, 35.425510, 36.812412>,  <37.536591, 35.154503, 37.043633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354683, 35.425510, 36.812412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191877, -0.708351, -0.679280,
		-0.869692, -0.198003, 0.452140,
		-0.454773, 0.677520, -0.578055,
		37.218250, 35.628765, 36.638996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358635, 34.434696, 37.129391>,  <37.536591, 35.154503, 37.043633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358635, 34.434696, 37.129391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752155, 34.430027, 37.057835>,  <37.988266, 34.427227, 37.014900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752155, 34.430027, 37.057835>,  <37.358635, 34.434696, 37.129391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752155, 34.430027, 37.057835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166748, -0.425955, -0.889246,
		-0.065819, 0.904669, -0.421000,
		0.983800, -0.011672, -0.178888,
		38.047295, 34.426525, 37.004169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276886, 33.935432, 36.502754>,  <37.358635, 34.434696, 37.129391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276886, 33.935432, 36.502754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670467, 33.874538, 36.539989>,  <37.906616, 33.838001, 36.562328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670467, 33.874538, 36.539989>,  <37.276886, 33.935432, 36.502754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670467, 33.874538, 36.539989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154733, -0.468127, 0.870008,
		-0.088867, -0.870449, -0.484170,
		0.983951, -0.152232, 0.093086,
		37.965652, 33.828869, 36.567917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309574, 33.322308, 36.707344>,  <37.276886, 33.935432, 36.502754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309574, 33.322308, 36.707344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665222, 33.464912, 36.822140>,  <37.878613, 33.550476, 36.891018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665222, 33.464912, 36.822140>,  <37.309574, 33.322308, 36.707344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665222, 33.464912, 36.822140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138877, -0.387325, 0.911423,
		0.436095, -0.850221, -0.294866,
		0.889120, 0.356517, 0.286986,
		37.931957, 33.571869, 36.908237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503216, 32.840889, 37.323833>,  <37.309574, 33.322308, 36.707344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503216, 32.840889, 37.323833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737545, 33.160980, 37.375137>,  <37.878143, 33.353035, 37.405918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737545, 33.160980, 37.375137>,  <37.503216, 32.840889, 37.323833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737545, 33.160980, 37.375137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208318, -0.004254, 0.978052,
		0.783210, -0.599681, 0.164210,
		0.585820, 0.800228, 0.128256,
		37.913292, 33.401047, 37.413612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905663, 32.640785, 37.849453>,  <37.503216, 32.840889, 37.323833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905663, 32.640785, 37.849453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903439, 33.040634, 37.860165>,  <37.902103, 33.280544, 37.866592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903439, 33.040634, 37.860165>,  <37.905663, 32.640785, 37.849453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903439, 33.040634, 37.860165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277749, -0.027266, 0.960267,
		0.960638, -0.002101, 0.277796,
		-0.005557, 0.999626, 0.026776,
		37.901772, 33.340523, 37.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331913, 32.762737, 38.417244>,  <37.905663, 32.640785, 37.849453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331913, 32.762737, 38.417244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097908, 33.080387, 38.351368>,  <37.957504, 33.270977, 38.311840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097908, 33.080387, 38.351368>,  <38.331913, 32.762737, 38.417244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097908, 33.080387, 38.351368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241456, 0.023323, 0.970132,
		0.774251, 0.607302, 0.178102,
		-0.585009, 0.794129, -0.164695,
		37.922405, 33.318626, 38.301960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537376, 33.244942, 38.880116>,  <38.331913, 32.762737, 38.417244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537376, 33.244942, 38.880116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176102, 33.380375, 38.774570>,  <37.959339, 33.461636, 38.711243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176102, 33.380375, 38.774570>,  <38.537376, 33.244942, 38.880116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176102, 33.380375, 38.774570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232555, 0.130722, 0.963758,
		0.360801, 0.931813, -0.039328,
		-0.903184, 0.338579, -0.263863,
		37.905148, 33.481949, 38.695412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440521, 33.789646, 39.187046>,  <38.537376, 33.244942, 38.880116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440521, 33.789646, 39.187046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048084, 33.757652, 39.116547>,  <37.812622, 33.738457, 39.074245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048084, 33.757652, 39.116547>,  <38.440521, 33.789646, 39.187046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048084, 33.757652, 39.116547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188841, 0.195872, 0.962275,
		-0.042441, 0.977363, -0.207271,
		-0.981090, -0.079981, -0.176253,
		37.753757, 33.733658, 39.063671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195183, 34.426830, 39.414028>,  <38.440521, 33.789646, 39.187046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195183, 34.426830, 39.414028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903732, 34.152897, 39.409859>,  <37.728863, 33.988537, 39.407356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903732, 34.152897, 39.409859>,  <38.195183, 34.426830, 39.414028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903732, 34.152897, 39.409859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161717, 0.157234, 0.974230,
		-0.665548, 0.711533, -0.225314,
		-0.728624, -0.684834, -0.010420,
		37.685146, 33.947445, 39.406734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780880, 34.581940, 39.957325>,  <38.195183, 34.426830, 39.414028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780880, 34.581940, 39.957325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642044, 34.212200, 39.893948>,  <37.558743, 33.990356, 39.855923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642044, 34.212200, 39.893948>,  <37.780880, 34.581940, 39.957325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642044, 34.212200, 39.893948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178430, -0.100773, 0.978779,
		-0.920701, 0.367998, -0.129954,
		-0.347092, -0.924350, -0.158443,
		37.537918, 33.934895, 39.846416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269604, 34.527180, 40.338924>,  <37.780880, 34.581940, 39.957325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269604, 34.527180, 40.338924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339684, 34.136486, 40.289452>,  <37.381733, 33.902069, 40.259769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339684, 34.136486, 40.289452>,  <37.269604, 34.527180, 40.338924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339684, 34.136486, 40.289452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275584, -0.169255, 0.946259,
		-0.945176, -0.131701, -0.298826,
		0.175200, -0.976733, -0.123681,
		37.392242, 33.843468, 40.252346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631516, 34.117035, 40.489708>,  <37.269604, 34.527180, 40.338924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631516, 34.117035, 40.489708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974400, 33.919025, 40.546474>,  <37.180130, 33.800220, 40.580532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974400, 33.919025, 40.546474>,  <36.631516, 34.117035, 40.489708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974400, 33.919025, 40.546474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317835, -0.291763, 0.902139,
		-0.405175, -0.818430, -0.407438,
		0.857213, -0.495022, 0.141910,
		37.231564, 33.770519, 40.589046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422607, 33.718445, 40.985794>,  <36.631516, 34.117035, 40.489708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422607, 33.718445, 40.985794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806694, 33.609940, 41.012344>,  <37.037144, 33.544838, 41.028275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806694, 33.609940, 41.012344>,  <36.422607, 33.718445, 40.985794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806694, 33.609940, 41.012344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124722, -0.203904, 0.971014,
		-0.249873, -0.940657, -0.229624,
		0.960212, -0.271269, 0.066370,
		37.094757, 33.528561, 41.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410061, 33.070591, 41.337215>,  <36.422607, 33.718445, 40.985794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410061, 33.070591, 41.337215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769829, 33.239845, 41.381035>,  <36.985691, 33.341396, 41.407326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769829, 33.239845, 41.381035>,  <36.410061, 33.070591, 41.337215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769829, 33.239845, 41.381035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060550, -0.368836, 0.927520,
		0.432874, -0.827596, -0.357359,
		0.899419, 0.423137, 0.109548,
		37.039654, 33.366787, 41.413898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820206, 32.653301, 41.443378>,  <36.410061, 33.070591, 41.337215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820206, 32.653301, 41.443378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467724, 32.553768, 41.604153>,  <35.256233, 32.494049, 41.700619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467724, 32.553768, 41.604153>,  <35.820206, 32.653301, 41.443378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467724, 32.553768, 41.604153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443313, 0.139737, -0.885408,
		0.164166, -0.958409, -0.233454,
		-0.881205, -0.248847, 0.401935,
		35.203362, 32.479118, 41.724735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535282, 32.122391, 40.961712>,  <35.820206, 32.653301, 41.443378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535282, 32.122391, 40.961712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229351, 32.284019, 41.162415>,  <35.045792, 32.380997, 41.282837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229351, 32.284019, 41.162415>,  <35.535282, 32.122391, 40.961712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229351, 32.284019, 41.162415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499806, 0.119252, -0.857889,
		-0.406487, -0.906919, 0.110752,
		-0.764828, 0.404076, 0.501758,
		34.999901, 32.405243, 41.312943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017097, 31.737446, 40.731270>,  <35.535282, 32.122391, 40.961712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017097, 31.737446, 40.731270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887691, 32.092491, 40.862408>,  <34.810047, 32.305519, 40.941090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887691, 32.092491, 40.862408>,  <35.017097, 31.737446, 40.731270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887691, 32.092491, 40.862408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299849, 0.232450, -0.925233,
		-0.897458, -0.397626, 0.190951,
		-0.323510, 0.887615, 0.327842,
		34.790638, 32.358776, 40.960762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233494, 31.786215, 40.576385>,  <35.017097, 31.737446, 40.731270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233494, 31.786215, 40.576385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370186, 32.159481, 40.620968>,  <34.452202, 32.383442, 40.647717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370186, 32.159481, 40.620968>,  <34.233494, 31.786215, 40.576385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370186, 32.159481, 40.620968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475313, 0.273927, -0.836087,
		-0.810739, 0.232740, 0.537154,
		0.341732, 0.933165, 0.111459,
		34.472706, 32.439430, 40.654404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634830, 32.083595, 40.553925>,  <34.233494, 31.786215, 40.576385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634830, 32.083595, 40.553925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916183, 32.353600, 40.464825>,  <34.084995, 32.515602, 40.411366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916183, 32.353600, 40.464825>,  <33.634830, 32.083595, 40.553925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916183, 32.353600, 40.464825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519843, 0.274767, -0.808867,
		-0.484790, 0.684735, 0.544166,
		0.703379, 0.675012, -0.222751,
		34.127197, 32.556103, 40.397999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275589, 32.781616, 40.311794>,  <33.634830, 32.083595, 40.553925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275589, 32.781616, 40.311794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649368, 32.826485, 40.176609>,  <33.873638, 32.853405, 40.095497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649368, 32.826485, 40.176609>,  <33.275589, 32.781616, 40.311794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649368, 32.826485, 40.176609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352656, 0.159984, -0.921976,
		-0.049349, 0.980726, 0.189054,
		0.934451, 0.112170, -0.337964,
		33.929703, 32.860134, 40.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279114, 33.409454, 40.022114>,  <33.275589, 32.781616, 40.311794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279114, 33.409454, 40.022114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586884, 33.211506, 39.860580>,  <33.771545, 33.092735, 39.763660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586884, 33.211506, 39.860580>,  <33.279114, 33.409454, 40.022114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586884, 33.211506, 39.860580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199887, 0.413935, -0.888089,
		0.606655, 0.764040, 0.219573,
		0.769425, -0.494874, -0.403838,
		33.817711, 33.063046, 39.739429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569328, 33.861309, 39.478493>,  <33.279114, 33.409454, 40.022114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569328, 33.861309, 39.478493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750874, 33.520767, 39.373264>,  <33.859802, 33.316444, 39.310127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750874, 33.520767, 39.373264>,  <33.569328, 33.861309, 39.478493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750874, 33.520767, 39.373264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242104, 0.166307, -0.955891,
		0.857549, 0.497538, -0.130634,
		0.453866, -0.851351, -0.263072,
		33.887032, 33.265362, 39.294342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954506, 33.941303, 38.879642>,  <33.569328, 33.861309, 39.478493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954506, 33.941303, 38.879642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874584, 33.549404, 38.884899>,  <33.826630, 33.314266, 38.888054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874584, 33.549404, 38.884899>,  <33.954506, 33.941303, 38.879642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874584, 33.549404, 38.884899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167427, 0.020927, -0.985662,
		0.965425, -0.199140, -0.168218,
		-0.199805, -0.979748, 0.013138,
		33.814644, 33.255482, 38.888840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357689, 33.632774, 38.280731>,  <33.954506, 33.941303, 38.879642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357689, 33.632774, 38.280731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086521, 33.351810, 38.367496>,  <33.923820, 33.183231, 38.419556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086521, 33.351810, 38.367496>,  <34.357689, 33.632774, 38.280731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086521, 33.351810, 38.367496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126934, -0.178793, -0.975664,
		0.724096, -0.688954, 0.032047,
		-0.677917, -0.702407, 0.216915,
		33.883144, 33.141087, 38.432571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577785, 33.005867, 37.997181>,  <34.357689, 33.632774, 38.280731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577785, 33.005867, 37.997181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181648, 32.966915, 38.036644>,  <33.943966, 32.943546, 38.060322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181648, 32.966915, 38.036644>,  <34.577785, 33.005867, 37.997181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181648, 32.966915, 38.036644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059178, -0.346593, -0.936147,
		0.125353, -0.932948, 0.337484,
		-0.990346, -0.097378, 0.098656,
		33.884544, 32.937702, 38.066242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506538, 32.461163, 37.590694>,  <34.577785, 33.005867, 37.997181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506538, 32.461163, 37.590694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145515, 32.631191, 37.618149>,  <33.928902, 32.733208, 37.634621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145515, 32.631191, 37.618149>,  <34.506538, 32.461163, 37.590694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145515, 32.631191, 37.618149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193940, -0.259010, -0.946204,
		-0.384425, -0.867312, 0.316209,
		-0.902555, 0.425070, 0.068636,
		33.874748, 32.758713, 37.638741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.779629, 31.185629, 45.408272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457951, 31.420626, 45.444313>,  <35.264942, 31.561625, 45.465939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457951, 31.420626, 45.444313>,  <35.779629, 31.185629, 45.408272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457951, 31.420626, 45.444313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062100, 0.067718, -0.995770,
		-0.591109, -0.806391, -0.017975,
		-0.804197, 0.587493, 0.090105,
		35.216690, 31.596874, 45.471344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246387, 30.852314, 45.060257>,  <35.779629, 31.185629, 45.408272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246387, 30.852314, 45.060257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119110, 31.231518, 45.062283>,  <35.042744, 31.459040, 45.063496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119110, 31.231518, 45.062283>,  <35.246387, 30.852314, 45.060257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119110, 31.231518, 45.062283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112828, -0.032570, -0.993081,
		-0.941287, -0.316567, 0.117326,
		-0.318198, 0.948011, 0.005060,
		35.023651, 31.515921, 45.063801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763016, 30.831274, 44.601143>,  <35.246387, 30.852314, 45.060257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763016, 30.831274, 44.601143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844410, 31.222475, 44.619507>,  <34.893246, 31.457195, 44.630524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.844410, 31.222475, 44.619507>,  <34.763016, 30.831274, 44.601143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844410, 31.222475, 44.619507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129936, 0.073447, -0.988798,
		-0.970418, 0.195240, 0.142023,
		0.203484, 0.978002, 0.045906,
		34.905457, 31.515875, 44.633278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317390, 31.251680, 44.168327>,  <34.763016, 30.831274, 44.601143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317390, 31.251680, 44.168327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637825, 31.489933, 44.191956>,  <34.830086, 31.632885, 44.206135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637825, 31.489933, 44.191956>,  <34.317390, 31.251680, 44.168327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637825, 31.489933, 44.191956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030159, 0.138733, -0.989871,
		-0.597792, 0.791188, 0.129101,
		0.801084, 0.595630, 0.059072,
		34.878151, 31.668623, 44.209679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187386, 32.008255, 43.777306>,  <34.317390, 31.251680, 44.168327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187386, 32.008255, 43.777306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584564, 31.968719, 43.803501>,  <34.822872, 31.944998, 43.819218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584564, 31.968719, 43.803501>,  <34.187386, 32.008255, 43.777306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584564, 31.968719, 43.803501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099864, 0.399371, -0.911334,
		0.063923, 0.911445, 0.406425,
		0.992946, -0.098843, 0.065492,
		34.882446, 31.939066, 43.823147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471786, 32.646969, 43.538403>,  <34.187386, 32.008255, 43.777306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471786, 32.646969, 43.538403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750641, 32.361275, 43.513527>,  <34.917953, 32.189857, 43.498600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750641, 32.361275, 43.513527>,  <34.471786, 32.646969, 43.538403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750641, 32.361275, 43.513527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280008, 0.351104, -0.893488,
		0.660000, 0.605467, 0.444759,
		0.697134, -0.714238, -0.062193,
		34.959782, 32.147003, 43.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987312, 33.092823, 43.288982>,  <34.471786, 32.646969, 43.538403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987312, 33.092823, 43.288982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.059158, 32.711731, 43.190968>,  <35.102264, 32.483074, 43.132156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.059158, 32.711731, 43.190968>,  <34.987312, 33.092823, 43.288982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059158, 32.711731, 43.190968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046747, 0.257076, -0.965260,
		0.982626, 0.161920, 0.090712,
		0.179615, -0.952730, -0.245040,
		35.113041, 32.425911, 43.117455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591877, 33.108364, 42.823997>,  <34.987312, 33.092823, 43.288982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591877, 33.108364, 42.823997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405842, 32.760307, 42.758835>,  <35.294220, 32.551472, 42.719738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.405842, 32.760307, 42.758835>,  <35.591877, 33.108364, 42.823997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405842, 32.760307, 42.758835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035727, 0.165422, -0.985576,
		0.884543, -0.464201, -0.045849,
		-0.465089, -0.870145, -0.162907,
		35.266315, 32.499264, 42.709961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845814, 32.912544, 42.119282>,  <35.591877, 33.108364, 42.823997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845814, 32.912544, 42.119282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567280, 32.629272, 42.165936>,  <35.400162, 32.459309, 42.193928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567280, 32.629272, 42.165936>,  <35.845814, 32.912544, 42.119282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567280, 32.629272, 42.165936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210533, 0.046186, -0.976495,
		0.686148, -0.704519, -0.181257,
		-0.696331, -0.708180, 0.116634,
		35.358379, 32.416817, 42.200924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604813, 32.852398, 41.987988>,  <35.845814, 32.912544, 42.119282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604813, 32.852398, 41.987988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904289, 33.107151, 41.914394>,  <37.083973, 33.260002, 41.870239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904289, 33.107151, 41.914394>,  <36.604813, 32.852398, 41.987988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904289, 33.107151, 41.914394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145644, 0.112727, 0.982894,
		0.646725, -0.762678, -0.008360,
		0.748689, 0.636879, -0.183983,
		37.128895, 33.298214, 41.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165283, 32.710922, 42.404770>,  <36.604813, 32.852398, 41.987988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165283, 32.710922, 42.404770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203552, 33.096645, 42.306007>,  <37.226513, 33.328079, 42.246750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203552, 33.096645, 42.306007>,  <37.165283, 32.710922, 42.404770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203552, 33.096645, 42.306007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153684, 0.230758, 0.960798,
		0.983478, -0.129863, -0.126123,
		0.095668, 0.964306, -0.246903,
		37.232254, 33.385937, 42.231937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846195, 32.917145, 42.598587>,  <37.165283, 32.710922, 42.404770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846195, 32.917145, 42.598587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607899, 33.238220, 42.587353>,  <37.464920, 33.430866, 42.580612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607899, 33.238220, 42.587353>,  <37.846195, 32.917145, 42.598587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607899, 33.238220, 42.587353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276195, 0.237569, 0.931277,
		0.754194, 0.547044, -0.363227,
		-0.595741, 0.802686, -0.028082,
		37.429176, 33.479027, 42.578930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197624, 33.426212, 43.077198>,  <37.846195, 32.917145, 42.598587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197624, 33.426212, 43.077198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829037, 33.577499, 43.041756>,  <37.607883, 33.668270, 43.020493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829037, 33.577499, 43.041756>,  <38.197624, 33.426212, 43.077198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829037, 33.577499, 43.041756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037742, 0.314179, 0.948613,
		0.386619, 0.870772, -0.303781,
		-0.921467, 0.378217, -0.088603,
		37.552597, 33.690964, 43.015175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262085, 34.154491, 43.315350>,  <38.197624, 33.426212, 43.077198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262085, 34.154491, 43.315350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.878510, 34.047699, 43.353619>,  <37.648365, 33.983624, 43.376579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.878510, 34.047699, 43.353619>,  <38.262085, 34.154491, 43.315350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878510, 34.047699, 43.353619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040547, 0.204811, 0.977961,
		-0.280692, 0.941687, -0.185576,
		-0.958941, -0.266981, 0.095671,
		37.590828, 33.967606, 43.382320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707424, 34.720551, 43.631775>,  <38.262085, 34.154491, 43.315350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707424, 34.720551, 43.631775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511494, 34.375034, 43.679012>,  <37.393936, 34.167725, 43.707355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.511494, 34.375034, 43.679012>,  <37.707424, 34.720551, 43.631775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511494, 34.375034, 43.679012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139105, 0.211156, 0.967503,
		-0.860653, 0.457478, -0.223587,
		-0.489823, -0.863786, 0.118095,
		37.364548, 34.115898, 43.714439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139465, 34.924328, 44.010883>,  <37.707424, 34.720551, 43.631775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139465, 34.924328, 44.010883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180656, 34.532639, 44.080765>,  <37.205372, 34.297626, 44.122696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.180656, 34.532639, 44.080765>,  <37.139465, 34.924328, 44.010883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180656, 34.532639, 44.080765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265437, 0.142218, 0.953581,
		-0.958613, -0.144572, -0.245276,
		0.102978, -0.979221, 0.174707,
		37.211552, 34.238873, 44.133179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550591, 34.716331, 44.482105>,  <37.139465, 34.924328, 44.010883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550591, 34.716331, 44.482105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805340, 34.410049, 44.518074>,  <36.958191, 34.226280, 44.539654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805340, 34.410049, 44.518074>,  <36.550591, 34.716331, 44.482105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805340, 34.410049, 44.518074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023423, 0.097364, 0.994973,
		-0.770611, -0.635780, 0.044074,
		0.636875, -0.765705, 0.089922,
		36.996403, 34.180336, 44.545052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210007, 34.261780, 44.899876>,  <36.550591, 34.716331, 44.482105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210007, 34.261780, 44.899876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.607025, 34.213326, 44.905228>,  <36.845238, 34.184254, 44.908440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.607025, 34.213326, 44.905228>,  <36.210007, 34.261780, 44.899876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607025, 34.213326, 44.905228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016397, 0.241522, 0.970257,
		-0.120761, -0.962805, 0.241708,
		0.992546, -0.121132, 0.013379,
		36.904789, 34.176987, 44.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282406, 33.722496, 45.412384>,  <36.210007, 34.261780, 44.899876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282406, 33.722496, 45.412384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628757, 33.916691, 45.364124>,  <36.836567, 34.033207, 45.335167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628757, 33.916691, 45.364124>,  <36.282406, 33.722496, 45.412384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628757, 33.916691, 45.364124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120226, 0.032153, 0.992226,
		0.485591, -0.873652, -0.030528,
		0.865879, 0.485487, -0.120649,
		36.888523, 34.062336, 45.327930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903416, 33.353493, 45.679806>,  <36.282406, 33.722496, 45.412384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903416, 33.353493, 45.679806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000027, 33.741528, 45.689571>,  <37.057995, 33.974350, 45.695431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000027, 33.741528, 45.689571>,  <36.903416, 33.353493, 45.679806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000027, 33.741528, 45.689571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221403, -0.079589, 0.971929,
		0.944798, -0.229346, -0.234003,
		0.241532, 0.970086, 0.024418,
		37.072487, 34.032555, 45.696896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339638, 33.413269, 46.222050>,  <36.903416, 33.353493, 45.679806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339638, 33.413269, 46.222050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277504, 33.800804, 46.144871>,  <37.240223, 34.033325, 46.098564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277504, 33.800804, 46.144871>,  <37.339638, 33.413269, 46.222050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277504, 33.800804, 46.144871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122960, 0.212760, 0.969337,
		0.980180, 0.126844, -0.152177,
		-0.155332, 0.968836, -0.192946,
		37.230904, 34.091454, 46.086987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823341, 33.746761, 46.678822>,  <37.339638, 33.413269, 46.222050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823341, 33.746761, 46.678822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589172, 34.048435, 46.559834>,  <37.448669, 34.229439, 46.488441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589172, 34.048435, 46.559834>,  <37.823341, 33.746761, 46.678822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589172, 34.048435, 46.559834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114527, 0.440166, 0.890583,
		0.802596, 0.487303, -0.344059,
		-0.585426, 0.754182, -0.297466,
		37.413544, 34.274689, 46.470592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211407, 34.306828, 46.897442>,  <37.823341, 33.746761, 46.678822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211407, 34.306828, 46.897442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839272, 34.446419, 46.852398>,  <37.615990, 34.530174, 46.825371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839272, 34.446419, 46.852398>,  <38.211407, 34.306828, 46.897442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839272, 34.446419, 46.852398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083772, 0.501235, 0.861247,
		0.356995, 0.791821, -0.495554,
		-0.930342, 0.348974, -0.112606,
		37.560169, 34.551109, 46.818615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.720530, 37.728165, 47.026924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782736, 37.333031, 47.026649>,  <31.820059, 37.095951, 47.026485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.782736, 37.333031, 47.026649>,  <31.720530, 37.728165, 47.026924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782736, 37.333031, 47.026649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156518, -0.023957, -0.987385,
		0.975355, 0.153660, -0.158339,
		0.155515, -0.987833, -0.000684,
		31.829390, 37.036682, 47.026443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109371, 37.639839, 46.516769>,  <31.720530, 37.728165, 47.026924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109371, 37.639839, 46.516769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985474, 37.263771, 46.573536>,  <31.911135, 37.038132, 46.607597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985474, 37.263771, 46.573536>,  <32.109371, 37.639839, 46.516769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985474, 37.263771, 46.573536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049623, -0.133067, -0.989864,
		0.949524, -0.313648, -0.005437,
		-0.309746, -0.940169, 0.141915,
		31.892550, 36.981720, 46.616112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493126, 37.244480, 46.041969>,  <32.109371, 37.639839, 46.516769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493126, 37.244480, 46.041969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179535, 37.007576, 46.116379>,  <31.991381, 36.865433, 46.161026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179535, 37.007576, 46.116379>,  <32.493126, 37.244480, 46.041969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179535, 37.007576, 46.116379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059497, -0.226592, -0.972171,
		0.617934, -0.773226, 0.142405,
		-0.783976, -0.592264, 0.186023,
		31.944342, 36.829895, 46.172184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693707, 36.764385, 45.732197>,  <32.493126, 37.244480, 46.041969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693707, 36.764385, 45.732197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302090, 36.692608, 45.770733>,  <32.067120, 36.649540, 45.793854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.302090, 36.692608, 45.770733>,  <32.693707, 36.764385, 45.732197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302090, 36.692608, 45.770733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007647, -0.440309, -0.897814,
		0.203528, -0.879732, 0.429707,
		-0.979039, -0.179444, 0.096342,
		32.008377, 36.638775, 45.799637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594604, 36.168900, 45.592258>,  <32.693707, 36.764385, 45.732197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594604, 36.168900, 45.592258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232124, 36.318970, 45.514240>,  <32.014637, 36.409012, 45.467430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232124, 36.318970, 45.514240>,  <32.594604, 36.168900, 45.592258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232124, 36.318970, 45.514240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009534, -0.443014, -0.896464,
		-0.422728, -0.814241, 0.397886,
		-0.906207, 0.375167, -0.195037,
		31.960264, 36.431522, 45.455727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201874, 35.660297, 45.189770>,  <32.594604, 36.168900, 45.592258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201874, 35.660297, 45.189770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995230, 35.993942, 45.112442>,  <31.871244, 36.194130, 45.066044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995230, 35.993942, 45.112442>,  <32.201874, 35.660297, 45.189770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995230, 35.993942, 45.112442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059185, -0.260027, -0.963786,
		-0.854175, -0.486456, 0.183699,
		-0.516606, 0.834114, -0.193318,
		31.840248, 36.244175, 45.054447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625837, 35.452599, 44.793350>,  <32.201874, 35.660297, 45.189770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625837, 35.452599, 44.793350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720497, 35.834400, 44.720783>,  <31.777294, 36.063480, 44.677242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.720497, 35.834400, 44.720783>,  <31.625837, 35.452599, 44.793350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720497, 35.834400, 44.720783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093578, -0.163463, -0.982101,
		-0.967078, 0.249393, 0.050637,
		0.236651, 0.954507, -0.181419,
		31.791492, 36.120750, 44.666359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235346, 35.568268, 44.222206>,  <31.625837, 35.452599, 44.793350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235346, 35.568268, 44.222206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507177, 35.861168, 44.240032>,  <31.670277, 36.036907, 44.250729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507177, 35.861168, 44.240032>,  <31.235346, 35.568268, 44.222206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507177, 35.861168, 44.240032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038726, 0.024859, -0.998940,
		-0.732580, 0.680584, -0.011464,
		0.679578, 0.732248, 0.044568,
		31.711050, 36.080841, 44.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049124, 35.953590, 43.664127>,  <31.235346, 35.568268, 44.222206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049124, 35.953590, 43.664127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427406, 36.058399, 43.741055>,  <31.654375, 36.121284, 43.787212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427406, 36.058399, 43.741055>,  <31.049124, 35.953590, 43.664127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427406, 36.058399, 43.741055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154239, 0.159053, -0.975147,
		-0.286095, 0.951866, 0.110004,
		0.945706, 0.262018, 0.192320,
		31.711119, 36.137005, 43.798752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188194, 36.496475, 43.184341>,  <31.049124, 35.953590, 43.664127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188194, 36.496475, 43.184341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548643, 36.365665, 43.298210>,  <31.764912, 36.287182, 43.366531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548643, 36.365665, 43.298210>,  <31.188194, 36.496475, 43.184341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548643, 36.365665, 43.298210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326763, 0.080695, -0.941655,
		0.284968, 0.941566, 0.179574,
		0.901121, -0.327020, 0.284673,
		31.818979, 36.267559, 43.383614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601694, 36.889690, 42.775753>,  <31.188194, 36.496475, 43.184341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601694, 36.889690, 42.775753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856096, 36.604607, 42.894100>,  <32.008739, 36.433556, 42.965107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856096, 36.604607, 42.894100>,  <31.601694, 36.889690, 42.775753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856096, 36.604607, 42.894100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378152, -0.046369, -0.924582,
		0.672679, 0.699923, 0.240022,
		0.636007, -0.712711, 0.295869,
		32.046898, 36.390793, 42.982861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333477, 37.065701, 42.618835>,  <31.601694, 36.889690, 42.775753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333477, 37.065701, 42.618835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303429, 36.667324, 42.638653>,  <32.285400, 36.428299, 42.650543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303429, 36.667324, 42.638653>,  <32.333477, 37.065701, 42.618835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303429, 36.667324, 42.638653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265666, -0.067876, -0.961673,
		0.961133, -0.059084, 0.269688,
		-0.075125, -0.995943, 0.049541,
		32.280891, 36.368542, 42.653515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014759, 36.773727, 42.326294>,  <32.333477, 37.065701, 42.618835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014759, 36.773727, 42.326294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718697, 36.505928, 42.301197>,  <32.541058, 36.345249, 42.286140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718697, 36.505928, 42.301197>,  <33.014759, 36.773727, 42.326294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718697, 36.505928, 42.301197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236731, -0.172105, -0.956211,
		0.629387, -0.722597, 0.285876,
		-0.740155, -0.669502, -0.062740,
		32.496651, 36.305077, 42.282375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326588, 36.271221, 41.909817>,  <33.014759, 36.773727, 42.326294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326588, 36.271221, 41.909817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937706, 36.177784, 41.916069>,  <32.704376, 36.121723, 41.919823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937706, 36.177784, 41.916069>,  <33.326588, 36.271221, 41.909817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937706, 36.177784, 41.916069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025270, -0.171091, -0.984931,
		0.232748, -0.957163, 0.172239,
		-0.972209, -0.233593, 0.015634,
		32.646042, 36.107708, 41.920761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185585, 36.101871, 41.884731>,  <33.326588, 36.271221, 41.909817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185585, 36.101871, 41.884731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334789, 36.441990, 41.736214>,  <34.424313, 36.646061, 41.647102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334789, 36.441990, 41.736214>,  <34.185585, 36.101871, 41.884731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334789, 36.441990, 41.736214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090982, 0.364724, 0.926660,
		0.923356, -0.379433, 0.058683,
		0.373009, 0.850298, -0.371292,
		34.446693, 36.697079, 41.624825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794327, 36.143402, 42.179947>,  <34.185585, 36.101871, 41.884731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794327, 36.143402, 42.179947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749809, 36.524887, 42.068199>,  <34.723099, 36.753777, 42.001148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749809, 36.524887, 42.068199>,  <34.794327, 36.143402, 42.179947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749809, 36.524887, 42.068199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100144, 0.290451, 0.951635,
		0.988729, 0.077934, -0.127834,
		-0.111295, 0.953711, -0.279373,
		34.716419, 36.811001, 41.984386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292248, 36.543827, 42.530205>,  <34.794327, 36.143402, 42.179947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292248, 36.543827, 42.530205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064240, 36.839813, 42.387367>,  <34.927433, 37.017406, 42.301666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064240, 36.839813, 42.387367>,  <35.292248, 36.543827, 42.530205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064240, 36.839813, 42.387367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225955, 0.559042, 0.797757,
		0.789947, 0.374054, -0.485868,
		-0.570025, 0.739970, -0.357094,
		34.893230, 37.061806, 42.280239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694164, 37.092255, 42.704422>,  <35.292248, 36.543827, 42.530205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694164, 37.092255, 42.704422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309555, 37.189442, 42.653118>,  <35.078789, 37.247753, 42.622337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.309555, 37.189442, 42.653118>,  <35.694164, 37.092255, 42.704422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309555, 37.189442, 42.653118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053202, 0.293348, 0.954524,
		0.269540, 0.924616, -0.269133,
		-0.961519, 0.242964, -0.128260,
		35.021099, 37.262329, 42.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607754, 37.817101, 42.979298>,  <35.694164, 37.092255, 42.704422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607754, 37.817101, 42.979298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239094, 37.661903, 42.977375>,  <35.017899, 37.568787, 42.976223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239094, 37.661903, 42.977375>,  <35.607754, 37.817101, 42.979298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239094, 37.661903, 42.977375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139341, 0.319391, 0.937322,
		-0.362137, 0.864554, -0.348431,
		-0.921651, -0.387990, -0.004804,
		34.962597, 37.545506, 42.975933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128639, 38.319485, 43.092701>,  <35.607754, 37.817101, 42.979298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128639, 38.319485, 43.092701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928402, 37.987480, 43.191082>,  <34.808258, 37.788277, 43.250111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928402, 37.987480, 43.191082>,  <35.128639, 38.319485, 43.092701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928402, 37.987480, 43.191082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231962, 0.402333, 0.885620,
		-0.834026, 0.386284, -0.393936,
		-0.500594, -0.830008, 0.245952,
		34.778225, 37.738480, 43.264866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617264, 38.550331, 43.585968>,  <35.128639, 38.319485, 43.092701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617264, 38.550331, 43.585968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612522, 38.153606, 43.636829>,  <34.609676, 37.915573, 43.667347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.612522, 38.153606, 43.636829>,  <34.617264, 38.550331, 43.585968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612522, 38.153606, 43.636829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096548, 0.127699, 0.987103,
		-0.995258, -0.000571, -0.097272,
		-0.011857, -0.991813, 0.127149,
		34.608963, 37.856064, 43.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067104, 38.465649, 44.163605>,  <34.617264, 38.550331, 43.585968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067104, 38.465649, 44.163605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303555, 38.143116, 44.155659>,  <34.445427, 37.949596, 44.150890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.303555, 38.143116, 44.155659>,  <34.067104, 38.465649, 44.163605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303555, 38.143116, 44.155659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072134, -0.077379, 0.994389,
		-0.803345, -0.586380, -0.103905,
		0.591129, -0.806332, -0.019864,
		34.480892, 37.901215, 44.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711979, 37.941883, 44.520889>,  <34.067104, 38.465649, 44.163605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711979, 37.941883, 44.520889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098900, 37.840740, 44.528767>,  <34.331051, 37.780052, 44.533493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.098900, 37.840740, 44.528767>,  <33.711979, 37.941883, 44.520889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098900, 37.840740, 44.528767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084509, -0.248124, 0.965035,
		-0.239125, -0.935147, -0.261380,
		0.967304, -0.252853, 0.019696,
		34.389091, 37.764881, 44.534676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769737, 37.322521, 44.963482>,  <33.711979, 37.941883, 44.520889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769737, 37.322521, 44.963482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147198, 37.453728, 44.945950>,  <34.373676, 37.532452, 44.935429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147198, 37.453728, 44.945950>,  <33.769737, 37.322521, 44.963482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147198, 37.453728, 44.945950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158288, -0.331070, 0.930235,
		0.290622, -0.884759, -0.364337,
		0.943655, 0.328017, -0.043830,
		34.430294, 37.552132, 44.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174263, 36.935932, 45.456425>,  <33.769737, 37.322521, 44.963482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174263, 36.935932, 45.456425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440857, 37.230961, 45.413002>,  <34.600815, 37.407978, 45.386948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440857, 37.230961, 45.413002>,  <34.174263, 36.935932, 45.456425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440857, 37.230961, 45.413002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339519, -0.170658, 0.924988,
		0.663721, -0.653346, -0.364161,
		0.666485, 0.737573, -0.108554,
		34.640804, 37.452232, 45.380436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763683, 36.685863, 45.738430>,  <34.174263, 36.935932, 45.456425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763683, 36.685863, 45.738430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804718, 37.083736, 45.734646>,  <34.829338, 37.322460, 45.732376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804718, 37.083736, 45.734646>,  <34.763683, 36.685863, 45.738430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804718, 37.083736, 45.734646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257700, -0.017387, 0.966069,
		0.960764, -0.101542, -0.258112,
		0.102584, 0.994679, -0.009463,
		34.835495, 37.382141, 45.731808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399582, 36.807301, 45.947353>,  <34.763683, 36.685863, 45.738430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399582, 36.807301, 45.947353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218822, 37.155624, 46.024803>,  <35.110367, 37.364616, 46.071274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.218822, 37.155624, 46.024803>,  <35.399582, 36.807301, 45.947353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218822, 37.155624, 46.024803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350526, -0.026259, 0.936185,
		0.820319, 0.490926, -0.293373,
		-0.451894, 0.870805, 0.193623,
		35.083256, 37.416866, 46.082890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890068, 37.187122, 46.297024>,  <35.399582, 36.807301, 45.947353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890068, 37.187122, 46.297024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531097, 37.335255, 46.392929>,  <35.315716, 37.424133, 46.450470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531097, 37.335255, 46.392929>,  <35.890068, 37.187122, 46.297024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531097, 37.335255, 46.392929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232520, -0.064814, 0.970429,
		0.374924, 0.926634, -0.027945,
		-0.897422, 0.370335, 0.239761,
		35.261871, 37.446354, 46.464859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191818, 37.889706, 46.623634>,  <35.890068, 37.187122, 46.297024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191818, 37.889706, 46.623634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575848, 37.883888, 46.735386>,  <36.806263, 37.880398, 46.802437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.575848, 37.883888, 46.735386>,  <36.191818, 37.889706, 46.623634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575848, 37.883888, 46.735386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269704, 0.313445, -0.910501,
		-0.074331, 0.949495, 0.304851,
		0.960070, -0.014541, 0.279381,
		36.863869, 37.879524, 46.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476421, 38.488068, 46.387012>,  <36.191818, 37.889706, 46.623634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476421, 38.488068, 46.387012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792915, 38.248005, 46.433926>,  <36.982811, 38.103970, 46.462074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.792915, 38.248005, 46.433926>,  <36.476421, 38.488068, 46.387012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792915, 38.248005, 46.433926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325322, 0.250718, -0.911760,
		0.517790, 0.759576, 0.393622,
		0.791239, -0.600154, 0.117288,
		37.030289, 38.067959, 46.469112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039749, 38.971027, 46.185272>,  <36.476421, 38.488068, 46.387012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039749, 38.971027, 46.185272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158070, 38.590065, 46.155819>,  <37.229061, 38.361488, 46.138145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.158070, 38.590065, 46.155819>,  <37.039749, 38.971027, 46.185272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158070, 38.590065, 46.155819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348779, 0.179445, -0.919865,
		0.889299, 0.246419, 0.385260,
		0.295805, -0.952406, -0.073635,
		37.246811, 38.304344, 46.133728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634956, 38.962044, 45.772270>,  <37.039749, 38.971027, 46.185272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634956, 38.962044, 45.772270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537449, 38.575035, 45.745487>,  <37.478947, 38.342831, 45.729416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.537449, 38.575035, 45.745487>,  <37.634956, 38.962044, 45.772270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537449, 38.575035, 45.745487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094021, 0.045143, -0.994546,
		0.965266, -0.248730, 0.079963,
		-0.243764, -0.967520, -0.066960,
		37.464321, 38.284779, 45.725399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107937, 38.662933, 45.399006>,  <37.634956, 38.962044, 45.772270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107937, 38.662933, 45.399006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806530, 38.404911, 45.348232>,  <37.625687, 38.250095, 45.317768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806530, 38.404911, 45.348232>,  <38.107937, 38.662933, 45.399006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806530, 38.404911, 45.348232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059360, 0.125528, -0.990313,
		0.654744, -0.753751, -0.056296,
		-0.753516, -0.645060, -0.126931,
		37.580475, 38.211391, 45.310154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385513, 38.203804, 44.900337>,  <38.107937, 38.662933, 45.399006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385513, 38.203804, 44.900337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989227, 38.157753, 44.871429>,  <37.751453, 38.130123, 44.854084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989227, 38.157753, 44.871429>,  <38.385513, 38.203804, 44.900337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989227, 38.157753, 44.871429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057299, 0.128439, -0.990061,
		0.123213, -0.985018, -0.120654,
		-0.990725, -0.115075, -0.072266,
		37.692013, 38.123215, 44.849747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366253, 37.930687, 44.331474>,  <38.385513, 38.203804, 44.900337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366253, 37.930687, 44.331474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985039, 38.046234, 44.367863>,  <37.756310, 38.115562, 44.389694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.985039, 38.046234, 44.367863>,  <38.366253, 37.930687, 44.331474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985039, 38.046234, 44.367863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061195, 0.110508, -0.991990,
		-0.296606, -0.950970, -0.087641,
		-0.953038, 0.288867, 0.090972,
		37.699127, 38.132893, 44.395153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003082, 37.489101, 43.986679>,  <38.366253, 37.930687, 44.331474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003082, 37.489101, 43.986679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795826, 37.830818, 44.003220>,  <37.671471, 38.035851, 44.013145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795826, 37.830818, 44.003220>,  <38.003082, 37.489101, 43.986679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795826, 37.830818, 44.003220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270275, -0.117669, -0.955565,
		-0.811469, -0.506294, 0.291864,
		-0.518140, 0.854295, 0.041353,
		37.640385, 38.087109, 44.015625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233421, 37.328793, 43.920670>,  <38.003082, 37.489101, 43.986679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233421, 37.328793, 43.920670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283333, 37.714748, 43.828220>,  <37.313278, 37.946323, 43.772751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.283333, 37.714748, 43.828220>,  <37.233421, 37.328793, 43.920670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283333, 37.714748, 43.828220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429724, -0.157402, -0.889136,
		-0.894298, 0.210262, 0.394996,
		0.124779, 0.964891, -0.231119,
		37.320766, 38.004215, 43.758884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638470, 37.507816, 43.521294>,  <37.233421, 37.328793, 43.920670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638470, 37.507816, 43.521294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873100, 37.818043, 43.427982>,  <37.013878, 38.004181, 43.371994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873100, 37.818043, 43.427982>,  <36.638470, 37.507816, 43.521294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873100, 37.818043, 43.427982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287209, -0.070119, -0.955298,
		-0.757258, 0.627355, 0.181621,
		0.586576, 0.775570, -0.233281,
		37.049072, 38.050713, 43.357998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308842, 37.892521, 42.907837>,  <36.638470, 37.507816, 43.521294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308842, 37.892521, 42.907837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689762, 38.013420, 42.924698>,  <36.918312, 38.085960, 42.934814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689762, 38.013420, 42.924698>,  <36.308842, 37.892521, 42.907837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689762, 38.013420, 42.924698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047181, -0.009349, -0.998843,
		-0.301501, 0.953184, -0.023163,
		0.952298, 0.302245, 0.042154,
		36.975452, 38.104095, 42.937344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359581, 38.535912, 42.584846>,  <36.308842, 37.892521, 42.907837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359581, 38.535912, 42.584846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706936, 38.337646, 42.578915>,  <36.915348, 38.218689, 42.575356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706936, 38.337646, 42.578915>,  <36.359581, 38.535912, 42.584846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706936, 38.337646, 42.578915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014188, 0.005052, -0.999887,
		0.495680, 0.868501, -0.002645,
		0.868389, -0.495662, -0.014827,
		36.967453, 38.188950, 42.574467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758904, 38.933159, 42.081650>,  <36.359581, 38.535912, 42.584846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758904, 38.933159, 42.081650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964069, 38.591904, 42.119759>,  <37.087170, 38.387150, 42.142624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964069, 38.591904, 42.119759>,  <36.758904, 38.933159, 42.081650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964069, 38.591904, 42.119759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081614, -0.062021, -0.994732,
		0.854553, 0.517985, 0.037817,
		0.512911, -0.853138, 0.095275,
		37.117943, 38.335960, 42.148342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248230, 39.086681, 41.669861>,  <36.758904, 38.933159, 42.081650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248230, 39.086681, 41.669861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278843, 38.689655, 41.707737>,  <37.297211, 38.451439, 41.730461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.278843, 38.689655, 41.707737>,  <37.248230, 39.086681, 41.669861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278843, 38.689655, 41.707737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057050, -0.090455, -0.994265,
		0.995434, 0.081492, 0.049703,
		0.076529, -0.992561, 0.094691,
		37.301800, 38.391888, 41.736145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.610245, 26.384386, 32.533459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491470, 26.312174, 32.908531>,  <26.420206, 26.268847, 33.133575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491470, 26.312174, 32.908531>,  <26.610245, 26.384386, 32.533459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491470, 26.312174, 32.908531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294070, 0.951530, 0.090074,
		-0.908489, -0.248996, -0.335633,
		-0.296936, -0.180530, 0.937677,
		26.402390, 26.258015, 33.189835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845978, 26.581308, 32.599487>,  <26.610245, 26.384386, 32.533459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845978, 26.581308, 32.599487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.041281, 26.620224, 32.946392>,  <26.158463, 26.643574, 33.154533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.041281, 26.620224, 32.946392>,  <25.845978, 26.581308, 32.599487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041281, 26.620224, 32.946392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432824, 0.889928, 0.143842,
		-0.757805, -0.445603, 0.476623,
		0.488257, 0.097290, 0.867260,
		26.187757, 26.649410, 33.206570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410440, 27.038326, 32.992317>,  <25.845978, 26.581308, 32.599487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410440, 27.038326, 32.992317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730288, 27.020786, 33.231880>,  <25.922195, 27.010262, 33.375618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730288, 27.020786, 33.231880>,  <25.410440, 27.038326, 32.992317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730288, 27.020786, 33.231880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204133, 0.918089, 0.339768,
		-0.564748, -0.393941, 0.725169,
		0.799619, -0.043852, 0.598905,
		25.970173, 27.007631, 33.411552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126974, 27.181293, 33.678452>,  <25.410440, 27.038326, 32.992317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126974, 27.181293, 33.678452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.515730, 27.275188, 33.685688>,  <25.748983, 27.331526, 33.690029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.515730, 27.275188, 33.685688>,  <25.126974, 27.181293, 33.678452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515730, 27.275188, 33.685688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218455, 0.870499, 0.441032,
		0.087779, -0.432587, 0.897309,
		0.971891, 0.234736, 0.018089,
		25.807297, 27.345610, 33.691116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192923, 27.468819, 34.326351>,  <25.126974, 27.181293, 33.678452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192923, 27.468819, 34.326351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518036, 27.607973, 34.139435>,  <25.713104, 27.691465, 34.027287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518036, 27.607973, 34.139435>,  <25.192923, 27.468819, 34.326351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518036, 27.607973, 34.139435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018119, 0.816827, 0.576597,
		0.582286, -0.460181, 0.670206,
		0.812782, 0.347888, -0.467289,
		25.761871, 27.712339, 33.999249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651905, 27.786314, 34.797245>,  <25.192923, 27.468819, 34.326351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651905, 27.786314, 34.797245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774534, 27.937119, 34.447643>,  <25.848112, 28.027601, 34.237885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.774534, 27.937119, 34.447643>,  <25.651905, 27.786314, 34.797245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774534, 27.937119, 34.447643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026280, 0.921217, 0.388160,
		0.951485, -0.096030, 0.292327,
		0.306571, 0.377010, -0.874001,
		25.866507, 28.050222, 34.185444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794949, 28.452772, 34.940609>,  <25.651905, 27.786314, 34.797245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794949, 28.452772, 34.940609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.844450, 28.500347, 34.546547>,  <25.874151, 28.528893, 34.310108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.844450, 28.500347, 34.546547>,  <25.794949, 28.452772, 34.940609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844450, 28.500347, 34.546547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063973, 0.991682, 0.111689,
		0.990248, 0.049202, 0.130338,
		0.123758, 0.118938, -0.985159,
		25.881577, 28.536028, 34.250999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449972, 28.886026, 34.779900>,  <25.794949, 28.452772, 34.940609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449972, 28.886026, 34.779900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219097, 28.921362, 34.455173>,  <26.080572, 28.942564, 34.260338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.219097, 28.921362, 34.455173>,  <26.449972, 28.886026, 34.779900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219097, 28.921362, 34.455173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, 0.995630, 0.054356,
		0.813074, -0.030269, -0.581374,
		-0.577188, 0.088340, -0.811819,
		26.045940, 28.947865, 34.211628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897018, 29.194553, 34.253025>,  <26.449972, 28.886026, 34.779900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897018, 29.194553, 34.253025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508865, 29.282270, 34.212502>,  <26.275972, 29.334902, 34.188187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508865, 29.282270, 34.212502>,  <26.897018, 29.194553, 34.253025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508865, 29.282270, 34.212502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202486, 0.967114, 0.153919,
		0.131732, 0.128847, -0.982876,
		-0.970385, 0.219294, -0.101310,
		26.217751, 29.348059, 34.182110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952801, 29.646643, 33.726433>,  <26.897018, 29.194553, 34.253025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952801, 29.646643, 33.726433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614244, 29.680656, 33.936726>,  <26.411110, 29.701065, 34.062901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.614244, 29.680656, 33.936726>,  <26.952801, 29.646643, 33.726433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614244, 29.680656, 33.936726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148384, 0.985733, 0.079453,
		-0.511472, 0.145258, -0.846933,
		-0.846391, 0.085034, 0.525729,
		26.360327, 29.706167, 34.094444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636286, 30.247095, 33.501286>,  <26.952801, 29.646643, 33.726433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636286, 30.247095, 33.501286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450762, 30.201008, 33.852650>,  <26.339447, 30.173355, 34.063469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450762, 30.201008, 33.852650>,  <26.636286, 30.247095, 33.501286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450762, 30.201008, 33.852650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104145, 0.977542, 0.183212,
		-0.879793, 0.176457, -0.441392,
		-0.463808, -0.115220, 0.878411,
		26.311619, 30.166443, 34.116173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277403, 30.964113, 33.641579>,  <26.636286, 30.247095, 33.501286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277403, 30.964113, 33.641579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235460, 30.781439, 33.994949>,  <26.210295, 30.671835, 34.206970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235460, 30.781439, 33.994949>,  <26.277403, 30.964113, 33.641579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235460, 30.781439, 33.994949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288581, 0.836129, 0.466486,
		-0.951697, 0.303854, 0.044118,
		-0.104856, -0.456685, 0.883428,
		26.204004, 30.644434, 34.259979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742512, 31.304564, 33.932327>,  <26.277403, 30.964113, 33.641579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742512, 31.304564, 33.932327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953960, 31.105402, 34.207325>,  <26.080830, 30.985905, 34.372322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953960, 31.105402, 34.207325>,  <25.742512, 31.304564, 33.932327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953960, 31.105402, 34.207325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002429, 0.809014, 0.587784,
		-0.848853, -0.312386, 0.426454,
		0.528623, -0.497906, 0.687493,
		26.112547, 30.956030, 34.413574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438017, 31.368441, 34.682068>,  <25.742512, 31.304564, 33.932327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438017, 31.368441, 34.682068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827591, 31.291880, 34.730751>,  <26.061335, 31.245943, 34.759960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827591, 31.291880, 34.730751>,  <25.438017, 31.368441, 34.682068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827591, 31.291880, 34.730751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089323, 0.816874, 0.569859,
		-0.208496, -0.544134, 0.812679,
		0.973936, -0.191404, 0.121711,
		26.119772, 31.234459, 34.767265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637962, 31.515932, 35.358032>,  <25.438017, 31.368441, 34.682068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637962, 31.515932, 35.358032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993839, 31.532158, 35.176128>,  <26.207365, 31.541893, 35.066986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993839, 31.532158, 35.176128>,  <25.637962, 31.515932, 35.358032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993839, 31.532158, 35.176128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236625, 0.810863, 0.535267,
		0.390460, -0.583829, 0.711818,
		0.889691, 0.040567, -0.454758,
		26.260746, 31.544329, 35.039700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919918, 31.818874, 35.812714>,  <25.637962, 31.515932, 35.358032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919918, 31.818874, 35.812714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184311, 31.841593, 35.513416>,  <26.342947, 31.855223, 35.333836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184311, 31.841593, 35.513416>,  <25.919918, 31.818874, 35.812714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184311, 31.841593, 35.513416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344333, 0.863001, 0.369680,
		0.666734, -0.501999, 0.550874,
		0.660984, 0.056794, -0.748247,
		26.382607, 31.858631, 35.288940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505514, 32.007736, 36.115746>,  <25.919918, 31.818874, 35.812714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505514, 32.007736, 36.115746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559872, 32.114010, 35.733971>,  <26.592485, 32.177773, 35.504906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.559872, 32.114010, 35.733971>,  <26.505514, 32.007736, 36.115746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559872, 32.114010, 35.733971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584139, 0.756618, 0.293788,
		0.800197, -0.597446, -0.052377,
		0.135893, 0.265684, -0.954434,
		26.600639, 32.193714, 35.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134918, 32.256992, 36.197918>,  <26.505514, 32.007736, 36.115746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134918, 32.256992, 36.197918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011641, 32.385479, 35.839737>,  <26.937674, 32.462570, 35.624828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011641, 32.385479, 35.839737>,  <27.134918, 32.256992, 36.197918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011641, 32.385479, 35.839737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562451, 0.820663, 0.100799,
		0.767244, -0.472583, -0.433591,
		-0.308196, 0.321212, -0.895454,
		26.919182, 32.481842, 35.571102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725533, 32.497932, 35.804314>,  <27.134918, 32.256992, 36.197918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725533, 32.497932, 35.804314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426008, 32.694824, 35.626781>,  <27.246294, 32.812962, 35.520260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426008, 32.694824, 35.626781>,  <27.725533, 32.497932, 35.804314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426008, 32.694824, 35.626781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542839, 0.839695, 0.015416,
		0.380272, -0.229386, -0.895977,
		-0.748812, 0.492234, -0.443832,
		27.201365, 32.842495, 35.493633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004379, 32.827694, 35.158344>,  <27.725533, 32.497932, 35.804314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004379, 32.827694, 35.158344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677498, 33.024376, 35.278618>,  <27.481369, 33.142384, 35.350780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.677498, 33.024376, 35.278618>,  <28.004379, 32.827694, 35.158344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677498, 33.024376, 35.278618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470273, 0.870470, -0.145342,
		-0.333199, 0.022628, -0.942585,
		-0.817204, 0.491701, 0.300681,
		27.432337, 33.171886, 35.368820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814707, 32.748390, 34.885330>,  <28.004379, 32.827694, 35.158344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814707, 32.748390, 34.885330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049538, 32.790573, 35.206383>,  <29.190437, 32.815884, 35.399014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049538, 32.790573, 35.206383>,  <28.814707, 32.748390, 34.885330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049538, 32.790573, 35.206383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256499, -0.964625, -0.060876,
		0.767819, 0.241614, -0.593360,
		0.587079, 0.105455, 0.802631,
		29.225662, 32.822208, 35.447174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424635, 32.479370, 34.690327>,  <28.814707, 32.748390, 34.885330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424635, 32.479370, 34.690327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428665, 32.484848, 35.090267>,  <29.431084, 32.488132, 35.330231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428665, 32.484848, 35.090267>,  <29.424635, 32.479370, 34.690327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428665, 32.484848, 35.090267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231192, -0.972846, 0.010990,
		0.972856, 0.231048, -0.012968,
		0.010076, 0.013690, 0.999856,
		29.431688, 32.488956, 35.390224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971910, 32.042244, 34.872856>,  <29.424635, 32.479370, 34.690327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971910, 32.042244, 34.872856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770254, 32.068195, 35.217327>,  <29.649260, 32.083767, 35.424011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770254, 32.068195, 35.217327>,  <29.971910, 32.042244, 34.872856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770254, 32.068195, 35.217327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099980, -0.986084, 0.132822,
		0.857814, 0.153062, 0.490639,
		-0.504142, 0.064882, 0.861180,
		29.619011, 32.087662, 35.475681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281914, 31.665428, 35.342098>,  <29.971910, 32.042244, 34.872856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281914, 31.665428, 35.342098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908627, 31.686275, 35.484303>,  <29.684654, 31.698784, 35.569626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.908627, 31.686275, 35.484303>,  <30.281914, 31.665428, 35.342098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908627, 31.686275, 35.484303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053138, -0.998563, 0.006903,
		0.355358, -0.012449, 0.934648,
		-0.933219, 0.052118, 0.355509,
		29.628660, 31.701910, 35.590954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359846, 31.103874, 35.769161>,  <30.281914, 31.665428, 35.342098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359846, 31.103874, 35.769161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967072, 31.175316, 35.744186>,  <29.731407, 31.218182, 35.729202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967072, 31.175316, 35.744186>,  <30.359846, 31.103874, 35.769161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967072, 31.175316, 35.744186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187029, -0.966170, 0.177582,
		-0.028612, 0.186052, 0.982123,
		-0.981938, 0.178605, -0.062441,
		29.672491, 31.228897, 35.725452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027109, 30.852112, 36.318626>,  <30.359846, 31.103874, 35.769161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027109, 30.852112, 36.318626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736055, 30.853239, 36.044243>,  <29.561422, 30.853916, 35.879612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736055, 30.853239, 36.044243>,  <30.027109, 30.852112, 36.318626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736055, 30.853239, 36.044243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212194, -0.951869, 0.221177,
		-0.652319, 0.306492, 0.693213,
		-0.727636, 0.002818, -0.685957,
		29.517765, 30.854084, 35.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548595, 30.399759, 36.613369>,  <30.027109, 30.852112, 36.318626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548595, 30.399759, 36.613369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413774, 30.441254, 36.239067>,  <29.332882, 30.466150, 36.014488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413774, 30.441254, 36.239067>,  <29.548595, 30.399759, 36.613369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413774, 30.441254, 36.239067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261983, -0.964990, -0.012614,
		-0.904301, 0.240899, 0.352431,
		-0.337054, 0.103738, -0.935753,
		29.312658, 30.472376, 35.958340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936045, 30.057833, 36.663410>,  <29.548595, 30.399759, 36.613369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936045, 30.057833, 36.663410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.036106, 30.091045, 36.277554>,  <29.096144, 30.110973, 36.046040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.036106, 30.091045, 36.277554>,  <28.936045, 30.057833, 36.663410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036106, 30.091045, 36.277554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170769, -0.976912, -0.128374,
		-0.953027, 0.196843, -0.230199,
		0.250154, 0.083033, -0.964639,
		29.111153, 30.115955, 35.988163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367067, 29.692732, 36.267704>,  <28.936045, 30.057833, 36.663410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367067, 29.692732, 36.267704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692282, 29.725414, 36.037125>,  <28.887409, 29.745024, 35.898777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692282, 29.725414, 36.037125>,  <28.367067, 29.692732, 36.267704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692282, 29.725414, 36.037125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145551, -0.930141, -0.337123,
		-0.563728, 0.357996, -0.744345,
		0.813035, 0.081705, -0.576453,
		28.936192, 29.749926, 35.864189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242374, 29.594149, 35.499374>,  <28.367067, 29.692732, 36.267704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242374, 29.594149, 35.499374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618809, 29.461805, 35.527344>,  <28.844669, 29.382399, 35.544125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618809, 29.461805, 35.527344>,  <28.242374, 29.594149, 35.499374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618809, 29.461805, 35.527344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273094, -0.865516, -0.419883,
		0.199438, 0.376051, -0.904881,
		0.941087, -0.330858, 0.069919,
		28.901134, 29.362547, 35.548321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351213, 29.247610, 34.920280>,  <28.242374, 29.594149, 35.499374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351213, 29.247610, 34.920280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659838, 29.128834, 35.145321>,  <28.845013, 29.057568, 35.280346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659838, 29.128834, 35.145321>,  <28.351213, 29.247610, 34.920280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659838, 29.128834, 35.145321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186047, -0.951038, -0.246806,
		0.608344, 0.085755, -0.789027,
		0.771560, -0.296939, 0.562604,
		28.891306, 29.039753, 35.314102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749958, 28.894922, 34.404690>,  <28.351213, 29.247610, 34.920280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749958, 28.894922, 34.404690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865334, 28.793537, 34.774025>,  <28.934559, 28.732706, 34.995628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.865334, 28.793537, 34.774025>,  <28.749958, 28.894922, 34.404690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865334, 28.793537, 34.774025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042258, -0.966757, -0.252180,
		0.956565, 0.033720, -0.289562,
		0.288439, -0.253463, 0.923341,
		28.951866, 28.717499, 35.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362459, 28.398096, 34.310608>,  <28.749958, 28.894922, 34.404690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362459, 28.398096, 34.310608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186291, 28.310638, 34.658913>,  <29.080589, 28.258163, 34.867897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186291, 28.310638, 34.658913>,  <29.362459, 28.398096, 34.310608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186291, 28.310638, 34.658913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078788, -0.975563, -0.205109,
		0.894328, -0.021729, 0.446883,
		-0.440420, -0.218643, 0.870761,
		29.054165, 28.245045, 34.920139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662951, 27.723066, 34.532387>,  <29.362459, 28.398096, 34.310608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662951, 27.723066, 34.532387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374456, 27.753641, 34.807770>,  <29.201361, 27.771986, 34.973000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374456, 27.753641, 34.807770>,  <29.662951, 27.723066, 34.532387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374456, 27.753641, 34.807770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080876, -0.996388, 0.025900,
		0.687953, -0.037000, 0.724812,
		-0.721235, 0.076438, 0.688460,
		29.158085, 27.776573, 35.014309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763189, 27.255346, 35.147240>,  <29.662951, 27.723066, 34.532387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763189, 27.255346, 35.147240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377892, 27.315361, 35.058113>,  <29.146713, 27.351370, 35.004639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377892, 27.315361, 35.058113>,  <29.763189, 27.255346, 35.147240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377892, 27.315361, 35.058113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100696, -0.970673, -0.218301,
		-0.249034, -0.187841, 0.950104,
		-0.963246, 0.150036, -0.222815,
		29.088919, 27.360373, 34.991268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490267, 26.683876, 35.336552>,  <29.763189, 27.255346, 35.147240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490267, 26.683876, 35.336552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185356, 26.826778, 35.120663>,  <29.002409, 26.912519, 34.991131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185356, 26.826778, 35.120663>,  <29.490267, 26.683876, 35.336552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185356, 26.826778, 35.120663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377820, -0.922662, -0.077121,
		-0.525532, 0.145130, 0.838304,
		-0.762278, 0.357257, -0.539721,
		28.956673, 26.933956, 34.958748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945808, 26.414984, 35.620583>,  <29.490267, 26.683876, 35.336552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945808, 26.414984, 35.620583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803419, 26.531481, 35.265400>,  <28.717985, 26.601379, 35.052292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803419, 26.531481, 35.265400>,  <28.945808, 26.414984, 35.620583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803419, 26.531481, 35.265400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345370, -0.923922, -0.164584,
		-0.868334, 0.248086, 0.429476,
		-0.355972, 0.291242, -0.887954,
		28.696629, 26.618853, 34.999012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387827, 25.987261, 35.435032>,  <28.945808, 26.414984, 35.620583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387827, 25.987261, 35.435032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459307, 26.158632, 35.080742>,  <28.502195, 26.261456, 34.868168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.459307, 26.158632, 35.080742>,  <28.387827, 25.987261, 35.435032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459307, 26.158632, 35.080742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284414, -0.839293, -0.463353,
		-0.941899, 0.334715, -0.028131,
		0.178701, 0.428431, -0.885727,
		28.512917, 26.287161, 34.815025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746393, 25.929253, 34.982071>,  <28.387827, 25.987261, 35.435032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746393, 25.929253, 34.982071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090176, 25.953033, 34.778973>,  <28.296444, 25.967302, 34.657116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090176, 25.953033, 34.778973>,  <27.746393, 25.929253, 34.982071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090176, 25.953033, 34.778973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215261, -0.858782, -0.464927,
		-0.463682, 0.508881, -0.725286,
		0.859454, 0.059452, -0.507744,
		28.348011, 25.970869, 34.626648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515160, 25.845707, 34.233406>,  <27.746393, 25.929253, 34.982071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515160, 25.845707, 34.233406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904577, 25.759279, 34.263138>,  <28.138227, 25.707422, 34.280975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904577, 25.759279, 34.263138>,  <27.515160, 25.845707, 34.233406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904577, 25.759279, 34.263138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116183, -0.748184, -0.653240,
		0.196755, 0.627323, -0.753494,
		0.973545, -0.216071, 0.074325,
		28.196640, 25.694458, 34.285435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856907, 25.857948, 33.532574>,  <27.515160, 25.845707, 34.233406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856907, 25.857948, 33.532574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103378, 25.632462, 33.752590>,  <28.251261, 25.497169, 33.884602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103378, 25.632462, 33.752590>,  <27.856907, 25.857948, 33.532574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103378, 25.632462, 33.752590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238782, -0.799211, -0.551584,
		0.750539, 0.208532, -0.627061,
		0.616177, -0.563716, 0.550045,
		28.288231, 25.463346, 33.917603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312641, 25.605925, 33.127995>,  <27.856907, 25.857948, 33.532574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312641, 25.605925, 33.127995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.335136, 25.344767, 33.430138>,  <28.348635, 25.188072, 33.611423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.335136, 25.344767, 33.430138>,  <28.312641, 25.605925, 33.127995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335136, 25.344767, 33.430138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111869, -0.755911, -0.645046,
		0.992130, -0.048223, -0.115551,
		0.056240, -0.652896, 0.755356,
		28.352009, 25.148897, 33.656746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.223549, 35.059017, 47.027344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859310, 34.901730, 47.078232>,  <37.640766, 34.807358, 47.108765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.859310, 34.901730, 47.078232>,  <38.223549, 35.059017, 47.027344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859310, 34.901730, 47.078232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063711, 0.437705, 0.896859,
		-0.408349, 0.808574, -0.423626,
		-0.910600, -0.393221, 0.127221,
		37.586132, 34.783764, 47.116398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874702, 35.661415, 47.287399>,  <38.223549, 35.059017, 47.027344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874702, 35.661415, 47.287399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651199, 35.338516, 47.363441>,  <37.517097, 35.144775, 47.409065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651199, 35.338516, 47.363441>,  <37.874702, 35.661415, 47.287399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651199, 35.338516, 47.363441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180323, 0.341997, 0.922237,
		-0.809493, 0.481023, -0.336658,
		-0.558754, -0.807251, 0.190105,
		37.483574, 35.096340, 47.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301647, 35.930077, 47.632420>,  <37.874702, 35.661415, 47.287399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301647, 35.930077, 47.632420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300331, 35.545944, 47.743950>,  <37.299541, 35.315464, 47.810867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.300331, 35.545944, 47.743950>,  <37.301647, 35.930077, 47.632420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300331, 35.545944, 47.743950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142144, 0.276448, 0.950459,
		-0.989841, -0.036502, -0.137417,
		-0.003295, -0.960336, 0.278828,
		37.299343, 35.257843, 47.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720970, 35.935623, 48.189850>,  <37.301647, 35.930077, 47.632420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720970, 35.935623, 48.189850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944519, 35.605225, 48.219231>,  <37.078648, 35.406986, 48.236858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944519, 35.605225, 48.219231>,  <36.720970, 35.935623, 48.189850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944519, 35.605225, 48.219231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195936, -0.045463, 0.979562,
		-0.805771, -0.561846, -0.187250,
		0.558876, -0.825992, 0.073453,
		37.112183, 35.357426, 48.241268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486008, 35.618198, 48.739941>,  <36.720970, 35.935623, 48.189850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486008, 35.618198, 48.739941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849880, 35.459820, 48.689800>,  <37.068203, 35.364792, 48.659718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.849880, 35.459820, 48.689800>,  <36.486008, 35.618198, 48.739941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849880, 35.459820, 48.689800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141728, 0.012251, 0.989830,
		-0.390380, -0.918194, 0.067261,
		0.909680, -0.395942, -0.125351,
		37.122784, 35.341038, 48.652195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507694, 35.094780, 49.212799>,  <36.486008, 35.618198, 48.739941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507694, 35.094780, 49.212799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887314, 35.179226, 49.119213>,  <37.115086, 35.229893, 49.063061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.887314, 35.179226, 49.119213>,  <36.507694, 35.094780, 49.212799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887314, 35.179226, 49.119213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254024, -0.073114, 0.964431,
		0.186504, -0.974722, -0.123018,
		0.949046, 0.211119, -0.233967,
		37.172028, 35.242561, 49.049023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813156, 34.611912, 49.623474>,  <36.507694, 35.094780, 49.212799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813156, 34.611912, 49.623474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092175, 34.886765, 49.542202>,  <37.259586, 35.051678, 49.493439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092175, 34.886765, 49.542202>,  <36.813156, 34.611912, 49.623474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092175, 34.886765, 49.542202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353245, -0.083065, 0.931836,
		0.623419, -0.721767, -0.300668,
		0.697543, 0.687134, -0.203176,
		37.301437, 35.092903, 49.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279293, 34.406158, 49.987938>,  <36.813156, 34.611912, 49.623474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279293, 34.406158, 49.987938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407856, 34.780926, 49.932983>,  <37.484993, 35.005787, 49.900009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407856, 34.780926, 49.932983>,  <37.279293, 34.406158, 49.987938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407856, 34.780926, 49.932983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296445, 0.038236, 0.954284,
		0.899343, -0.347442, -0.265456,
		0.321409, 0.936921, -0.137385,
		37.504280, 35.062004, 49.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982338, 34.383244, 50.138844>,  <37.279293, 34.406158, 49.987938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982338, 34.383244, 50.138844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843597, 34.754642, 50.191891>,  <37.760353, 34.977482, 50.223717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843597, 34.754642, 50.191891>,  <37.982338, 34.383244, 50.138844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843597, 34.754642, 50.191891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166379, -0.078238, 0.982953,
		0.923043, 0.363007, -0.127345,
		-0.346855, 0.928496, 0.132614,
		37.739540, 35.033192, 50.231674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538658, 34.815109, 50.519855>,  <37.982338, 34.383244, 50.138844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538658, 34.815109, 50.519855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184071, 34.987015, 50.588524>,  <37.971317, 35.090157, 50.629723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.184071, 34.987015, 50.588524>,  <38.538658, 34.815109, 50.519855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184071, 34.987015, 50.588524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263998, 0.164945, 0.950315,
		0.380096, 0.887748, -0.259676,
		-0.886472, 0.429764, 0.171669,
		37.918129, 35.115944, 50.640026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674511, 35.406971, 50.990131>,  <38.538658, 34.815109, 50.519855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674511, 35.406971, 50.990131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.285542, 35.321903, 51.028446>,  <38.052162, 35.270863, 51.051434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.285542, 35.321903, 51.028446>,  <38.674511, 35.406971, 50.990131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285542, 35.321903, 51.028446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060721, 0.165684, 0.984308,
		-0.225199, 0.962976, -0.148201,
		-0.972419, -0.212666, 0.095785,
		37.993816, 35.258102, 51.057182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494080, 35.869385, 51.433407>,  <38.674511, 35.406971, 50.990131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494080, 35.869385, 51.433407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176701, 35.627476, 51.460800>,  <37.986275, 35.482330, 51.477234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176701, 35.627476, 51.460800>,  <38.494080, 35.869385, 51.433407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176701, 35.627476, 51.460800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029812, 0.073760, 0.996830,
		-0.607911, 0.792972, -0.040495,
		-0.793445, -0.604777, 0.068480,
		37.938667, 35.446041, 51.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918621, 36.264698, 51.884541>,  <38.494080, 35.869385, 51.433407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918621, 36.264698, 51.884541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836266, 36.656071, 51.891331>,  <38.786850, 36.890892, 51.895405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.836266, 36.656071, 51.891331>,  <38.918621, 36.264698, 51.884541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836266, 36.656071, 51.891331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927864, -0.189682, -0.321075,
		-0.310929, -0.081856, 0.946902,
		-0.205892, 0.978428, 0.016974,
		38.774498, 36.949600, 51.896423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305473, 36.419830, 52.315659>,  <38.918621, 36.264698, 51.884541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305473, 36.419830, 52.315659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347542, 36.667271, 52.004204>,  <38.372784, 36.815735, 51.817333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347542, 36.667271, 52.004204>,  <38.305473, 36.419830, 52.315659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347542, 36.667271, 52.004204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916195, -0.244177, -0.317748,
		-0.386684, 0.746800, 0.541078,
		0.105176, 0.618601, -0.778634,
		38.379093, 36.852852, 51.770615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942951, 37.114666, 52.418919>,  <38.305473, 36.419830, 52.315659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942951, 37.114666, 52.418919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655777, 37.370331, 52.529213>,  <37.483471, 37.523731, 52.595390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655777, 37.370331, 52.529213>,  <37.942951, 37.114666, 52.418919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655777, 37.370331, 52.529213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126997, 0.269199, -0.954675,
		-0.684423, -0.720416, -0.112097,
		-0.717940, 0.639165, 0.275736,
		37.440395, 37.562080, 52.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305969, 36.853638, 52.122322>,  <37.942951, 37.114666, 52.418919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305969, 36.853638, 52.122322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253216, 37.247086, 52.171467>,  <37.221561, 37.483154, 52.200954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253216, 37.247086, 52.171467>,  <37.305969, 36.853638, 52.122322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253216, 37.247086, 52.171467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397556, 0.061056, -0.915544,
		-0.908050, -0.169592, 0.382992,
		-0.131885, 0.983621, 0.122864,
		37.213650, 37.542171, 52.208324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675133, 36.994404, 51.781475>,  <37.305969, 36.853638, 52.122322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675133, 36.994404, 51.781475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881027, 37.335476, 51.817200>,  <37.004566, 37.540119, 51.838634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881027, 37.335476, 51.817200>,  <36.675133, 36.994404, 51.781475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881027, 37.335476, 51.817200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334185, 0.295478, -0.894994,
		-0.789533, 0.430844, 0.437048,
		0.514740, 0.852682, 0.089308,
		37.035450, 37.591282, 51.843990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215755, 37.536716, 51.481766>,  <36.675133, 36.994404, 51.781475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215755, 37.536716, 51.481766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590885, 37.675556, 51.483112>,  <36.815964, 37.758858, 51.483921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590885, 37.675556, 51.483112>,  <36.215755, 37.536716, 51.481766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590885, 37.675556, 51.483112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078304, 0.220996, -0.972126,
		-0.338165, 0.911419, 0.234434,
		0.937824, 0.347096, 0.003365,
		36.872231, 37.779686, 51.484123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213787, 38.250500, 51.086731>,  <36.215755, 37.536716, 51.481766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213787, 38.250500, 51.086731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594002, 38.126816, 51.098557>,  <36.822128, 38.052605, 51.105652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594002, 38.126816, 51.098557>,  <36.213787, 38.250500, 51.086731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594002, 38.126816, 51.098557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111302, 0.250204, -0.961774,
		0.289997, 0.917489, 0.272243,
		0.950533, -0.309213, 0.029560,
		36.879162, 38.034054, 51.107426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510468, 38.775131, 50.908066>,  <36.213787, 38.250500, 51.086731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510468, 38.775131, 50.908066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743881, 38.465359, 50.810291>,  <36.883930, 38.279495, 50.751625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743881, 38.465359, 50.810291>,  <36.510468, 38.775131, 50.908066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743881, 38.465359, 50.810291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021084, 0.286453, -0.957862,
		0.811816, 0.564097, 0.150826,
		0.583532, -0.774428, -0.244441,
		36.918941, 38.233028, 50.736958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067051, 38.990688, 50.385624>,  <36.510468, 38.775131, 50.908066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067051, 38.990688, 50.385624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080574, 38.597992, 50.310741>,  <37.088688, 38.362373, 50.265812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080574, 38.597992, 50.310741>,  <37.067051, 38.990688, 50.385624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080574, 38.597992, 50.310741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007576, 0.187056, -0.982320,
		0.999400, 0.034632, -0.001113,
		0.033811, -0.981739, -0.187206,
		37.090717, 38.303471, 50.254581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591969, 38.863689, 49.824718>,  <37.067051, 38.990688, 50.385624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591969, 38.863689, 49.824718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384033, 38.522213, 49.812187>,  <37.259270, 38.317329, 49.804668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384033, 38.522213, 49.812187>,  <37.591969, 38.863689, 49.824718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384033, 38.522213, 49.812187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025884, 0.020916, -0.999446,
		0.853870, -0.520365, 0.011224,
		-0.519842, -0.853688, -0.031328,
		37.228081, 38.266106, 49.802788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940662, 38.467533, 49.352421>,  <37.591969, 38.863689, 49.824718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940662, 38.467533, 49.352421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587761, 38.280075, 49.370304>,  <37.376019, 38.167599, 49.381035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587761, 38.280075, 49.370304>,  <37.940662, 38.467533, 49.352421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587761, 38.280075, 49.370304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085769, -0.253391, -0.963554,
		0.462893, -0.846266, 0.263751,
		-0.882255, -0.468644, 0.044709,
		37.323086, 38.139481, 49.383717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025196, 37.812576, 49.059677>,  <37.940662, 38.467533, 49.352421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025196, 37.812576, 49.059677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630989, 37.879948, 49.051899>,  <37.394463, 37.920372, 49.047234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630989, 37.879948, 49.051899>,  <38.025196, 37.812576, 49.059677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630989, 37.879948, 49.051899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026228, -0.264743, -0.963962,
		-0.167506, -0.949496, 0.265328,
		-0.985522, 0.168428, -0.019443,
		37.335331, 37.930477, 49.046066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749561, 37.309940, 48.622787>,  <38.025196, 37.812576, 49.059677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749561, 37.309940, 48.622787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432533, 37.553318, 48.638947>,  <37.242317, 37.699345, 48.648640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432533, 37.553318, 48.638947>,  <37.749561, 37.309940, 48.622787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432533, 37.553318, 48.638947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158982, -0.142232, -0.976982,
		-0.588692, -0.780749, 0.209460,
		-0.792570, 0.608442, 0.040394,
		37.194763, 37.735851, 48.651066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182053, 36.967438, 48.348694>,  <37.749561, 37.309940, 48.622787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182053, 36.967438, 48.348694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096989, 37.349106, 48.264465>,  <37.045952, 37.578106, 48.213928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096989, 37.349106, 48.264465>,  <37.182053, 36.967438, 48.348694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096989, 37.349106, 48.264465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023336, -0.210479, -0.977320,
		-0.976848, -0.212751, 0.022494,
		-0.212660, 0.954167, -0.210571,
		37.033192, 37.635357, 48.201294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662586, 36.983227, 47.928822>,  <37.182053, 36.967438, 48.348694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662586, 36.983227, 47.928822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815056, 37.344570, 47.850185>,  <36.906536, 37.561378, 47.803005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815056, 37.344570, 47.850185>,  <36.662586, 36.983227, 47.928822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815056, 37.344570, 47.850185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037746, -0.227674, -0.973006,
		-0.923734, 0.363460, -0.120881,
		0.381170, 0.903361, -0.196592,
		36.929405, 37.615578, 47.791206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457081, 37.030567, 47.241898>,  <36.662586, 36.983227, 47.928822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457081, 37.030567, 47.241898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699394, 37.346550, 47.279839>,  <36.844780, 37.536140, 47.302605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699394, 37.346550, 47.279839>,  <36.457081, 37.030567, 47.241898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699394, 37.346550, 47.279839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171788, -0.013454, -0.985042,
		-0.776865, 0.613014, -0.143856,
		0.605780, 0.789957, 0.094856,
		36.881126, 37.583538, 47.308296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823002, 37.285934, 47.272808>,  <36.457081, 37.030567, 47.241898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823002, 37.285934, 47.272808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453609, 37.361916, 47.139477>,  <35.231976, 37.407505, 47.059479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453609, 37.361916, 47.139477>,  <35.823002, 37.285934, 47.272808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453609, 37.361916, 47.139477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330126, 0.049198, 0.942654,
		0.195461, 0.980559, 0.017276,
		-0.923478, 0.189955, -0.333325,
		35.176567, 37.418903, 47.039478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612049, 37.793144, 47.684406>,  <35.823002, 37.285934, 47.272808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612049, 37.793144, 47.684406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258526, 37.650047, 47.563808>,  <35.046410, 37.564190, 47.491451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258526, 37.650047, 47.563808>,  <35.612049, 37.793144, 47.684406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258526, 37.650047, 47.563808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398293, 0.237273, 0.886038,
		-0.245436, 0.903174, -0.352190,
		-0.883812, -0.357740, -0.301493,
		34.993382, 37.542725, 47.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007683, 38.330639, 47.795460>,  <35.612049, 37.793144, 47.684406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007683, 38.330639, 47.795460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873100, 37.954079, 47.785988>,  <34.792351, 37.728142, 47.780304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873100, 37.954079, 47.785988>,  <35.007683, 38.330639, 47.795460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873100, 37.954079, 47.785988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542168, 0.173083, 0.822250,
		-0.769969, 0.289489, -0.568633,
		-0.336454, -0.941402, -0.023683,
		34.772163, 37.671658, 47.778881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229446, 38.332993, 47.999435>,  <35.007683, 38.330639, 47.795460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229446, 38.332993, 47.999435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363201, 37.962036, 48.066521>,  <34.443455, 37.739464, 48.106773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363201, 37.962036, 48.066521>,  <34.229446, 38.332993, 47.999435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363201, 37.962036, 48.066521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341226, 0.046744, 0.938818,
		-0.878493, -0.371158, -0.300820,
		0.334388, -0.927392, 0.167713,
		34.463516, 37.683819, 48.116837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695423, 38.088791, 48.339809>,  <34.229446, 38.332993, 47.999435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695423, 38.088791, 48.339809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960003, 37.802719, 48.430153>,  <34.118752, 37.631077, 48.484360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960003, 37.802719, 48.430153>,  <33.695423, 38.088791, 48.339809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960003, 37.802719, 48.430153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238707, 0.084736, 0.967388,
		-0.710991, -0.693789, -0.114670,
		0.661446, -0.715177, 0.225858,
		34.158436, 37.588165, 48.497910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393757, 37.586727, 48.856327>,  <33.695423, 38.088791, 48.339809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393757, 37.586727, 48.856327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786583, 37.513203, 48.873085>,  <34.022278, 37.469090, 48.883141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.786583, 37.513203, 48.873085>,  <33.393757, 37.586727, 48.856327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786583, 37.513203, 48.873085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070887, -0.154134, 0.985504,
		-0.174696, -0.970801, -0.164401,
		0.982067, -0.183817, 0.041891,
		34.081203, 37.458061, 48.885654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488850, 36.925282, 49.232433>,  <33.393757, 37.586727, 48.856327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488850, 36.925282, 49.232433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809040, 37.162971, 49.263744>,  <34.001156, 37.305588, 49.282532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809040, 37.162971, 49.263744>,  <33.488850, 36.925282, 49.232433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809040, 37.162971, 49.263744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098301, 0.001324, 0.995156,
		0.591247, -0.804295, 0.059473,
		0.800477, 0.594229, 0.078280,
		34.049183, 37.341240, 49.287228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382866, 36.169838, 49.250309>,  <33.488850, 36.925282, 49.232433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382866, 36.169838, 49.250309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042980, 36.157532, 49.460850>,  <32.839050, 36.150150, 49.587173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042980, 36.157532, 49.460850>,  <33.382866, 36.169838, 49.250309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042980, 36.157532, 49.460850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521071, 0.201390, -0.829414,
		-0.080486, -0.979028, -0.187153,
		-0.849710, -0.030763, 0.526352,
		32.788067, 36.148304, 49.618755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969002, 35.684780, 48.967190>,  <33.382866, 36.169838, 49.250309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969002, 35.684780, 48.967190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699482, 35.929337, 49.133175>,  <32.537769, 36.076073, 49.232765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699482, 35.929337, 49.133175>,  <32.969002, 35.684780, 48.967190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699482, 35.929337, 49.133175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553374, -0.045380, -0.831696,
		-0.489663, -0.790024, 0.368907,
		-0.673800, 0.611395, 0.414958,
		32.497341, 36.112755, 49.257664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252712, 35.398727, 48.743469>,  <32.969002, 35.684780, 48.967190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252712, 35.398727, 48.743469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202690, 35.767784, 48.889393>,  <32.172676, 35.989220, 48.976948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202690, 35.767784, 48.889393>,  <32.252712, 35.398727, 48.743469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202690, 35.767784, 48.889393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575122, 0.232207, -0.784420,
		-0.808453, -0.307907, 0.501594,
		-0.125055, 0.922645, 0.364812,
		32.165173, 36.044579, 48.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631947, 35.499546, 48.704800>,  <32.252712, 35.398727, 48.743469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631947, 35.499546, 48.704800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822935, 35.849998, 48.678223>,  <31.937529, 36.060272, 48.662277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.822935, 35.849998, 48.678223>,  <31.631947, 35.499546, 48.704800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822935, 35.849998, 48.678223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466120, 0.188471, -0.864414,
		-0.744819, 0.443700, 0.498372,
		0.477469, 0.876133, -0.066441,
		31.966175, 36.112839, 48.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301985, 35.785202, 48.076359>,  <31.631947, 35.499546, 48.704800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301985, 35.785202, 48.076359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565628, 36.077641, 48.146873>,  <31.723814, 36.253101, 48.189182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565628, 36.077641, 48.146873>,  <31.301985, 35.785202, 48.076359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565628, 36.077641, 48.146873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207512, 0.402111, -0.891765,
		-0.722851, 0.551189, 0.416746,
		0.659109, 0.731093, 0.176288,
		31.763361, 36.296970, 48.199760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997410, 36.517006, 47.918644>,  <31.301985, 35.785202, 48.076359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997410, 36.517006, 47.918644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396151, 36.542294, 47.899494>,  <31.635395, 36.557468, 47.888004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.396151, 36.542294, 47.899494>,  <30.997410, 36.517006, 47.918644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396151, 36.542294, 47.899494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066193, 0.330945, -0.941326,
		-0.043669, 0.941530, 0.334088,
		0.996851, 0.063221, -0.047870,
		31.695206, 36.561260, 47.885132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122290, 37.233509, 47.671352>,  <30.997410, 36.517006, 47.918644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122290, 37.233509, 47.671352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428288, 36.988503, 47.591747>,  <31.611887, 36.841499, 47.543983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.428288, 36.988503, 47.591747>,  <31.122290, 37.233509, 47.671352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428288, 36.988503, 47.591747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104904, 0.423384, -0.899856,
		0.635436, 0.667508, 0.388142,
		0.764995, -0.612518, -0.199009,
		31.657785, 36.804749, 47.532043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.289558, 34.162846, 52.013023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628548, 34.353462, 51.919476>,  <34.831944, 34.467831, 51.863346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628548, 34.353462, 51.919476>,  <34.289558, 34.162846, 52.013023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628548, 34.353462, 51.919476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013641, -0.420876, -0.907015,
		-0.530656, 0.771865, -0.350183,
		0.847477, 0.476537, -0.233870,
		34.882790, 34.496422, 51.849316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218578, 34.477367, 51.356640>,  <34.289558, 34.162846, 52.013023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218578, 34.477367, 51.356640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607632, 34.418312, 51.428398>,  <34.841064, 34.382877, 51.471455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.607632, 34.418312, 51.428398>,  <34.218578, 34.477367, 51.356640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607632, 34.418312, 51.428398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105899, -0.405544, -0.907920,
		0.206798, 0.902073, -0.378812,
		0.972636, -0.147640, 0.179395,
		34.899422, 34.374020, 51.482216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627491, 34.646534, 50.734398>,  <34.218578, 34.477367, 51.356640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627491, 34.646534, 50.734398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.893330, 34.418182, 50.927235>,  <35.052834, 34.281170, 51.042934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.893330, 34.418182, 50.927235>,  <34.627491, 34.646534, 50.734398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893330, 34.418182, 50.927235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275162, -0.412861, -0.868235,
		0.694692, 0.709678, -0.117302,
		0.664597, -0.570879, 0.482088,
		35.092709, 34.246918, 51.071861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271221, 34.689873, 50.325268>,  <34.627491, 34.646534, 50.734398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271221, 34.689873, 50.325268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285667, 34.348434, 50.533138>,  <35.294334, 34.143570, 50.657860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.285667, 34.348434, 50.533138>,  <35.271221, 34.689873, 50.325268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285667, 34.348434, 50.533138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152258, -0.509249, -0.847044,
		0.987681, 0.109718, 0.111575,
		0.036117, -0.853597, 0.519681,
		35.296501, 34.092354, 50.689041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899231, 34.311035, 50.122112>,  <35.271221, 34.689873, 50.325268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899231, 34.311035, 50.122112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654938, 34.029881, 50.267967>,  <35.508362, 33.861187, 50.355480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654938, 34.029881, 50.267967>,  <35.899231, 34.311035, 50.122112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654938, 34.029881, 50.267967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091643, -0.520146, -0.849147,
		0.786519, -0.485182, 0.382082,
		-0.610729, -0.702884, 0.364641,
		35.471718, 33.819016, 50.377361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129330, 33.696659, 49.825504>,  <35.899231, 34.311035, 50.122112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129330, 33.696659, 49.825504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757122, 33.631824, 49.956871>,  <35.533798, 33.592926, 50.035690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757122, 33.631824, 49.956871>,  <36.129330, 33.696659, 49.825504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757122, 33.631824, 49.956871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131519, -0.689033, -0.712697,
		0.341808, -0.706373, 0.619842,
		-0.930521, -0.162085, 0.328419,
		35.477966, 33.583199, 50.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091812, 33.004734, 49.849579>,  <36.129330, 33.696659, 49.825504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091812, 33.004734, 49.849579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.714802, 33.135895, 49.823910>,  <35.488594, 33.214592, 49.808506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.714802, 33.135895, 49.823910>,  <36.091812, 33.004734, 49.849579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714802, 33.135895, 49.823910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180876, -0.662224, -0.727148,
		-0.280933, -0.673750, 0.683475,
		-0.942529, 0.327904, -0.064175,
		35.432045, 33.234264, 49.804657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660275, 32.516132, 49.631149>,  <36.091812, 33.004734, 49.849579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660275, 32.516132, 49.631149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380802, 32.789345, 49.545998>,  <35.213120, 32.953270, 49.494907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.380802, 32.789345, 49.545998>,  <35.660275, 32.516132, 49.631149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380802, 32.789345, 49.545998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255296, -0.515986, -0.817669,
		-0.668334, -0.516943, 0.534884,
		-0.698680, 0.683029, -0.212877,
		35.171200, 32.994255, 49.482136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106598, 32.175804, 49.384613>,  <35.660275, 32.516132, 49.631149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106598, 32.175804, 49.384613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031082, 32.545876, 49.252918>,  <34.985775, 32.767918, 49.173901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031082, 32.545876, 49.252918>,  <35.106598, 32.175804, 49.384613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031082, 32.545876, 49.252918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413368, -0.378986, -0.827947,
		-0.890779, -0.020207, 0.453988,
		-0.188785, 0.925182, -0.329240,
		34.974445, 32.823429, 49.154148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334419, 32.168598, 49.065132>,  <35.106598, 32.175804, 49.384613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334419, 32.168598, 49.065132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541080, 32.468346, 48.899475>,  <34.665077, 32.648193, 48.800079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541080, 32.468346, 48.899475>,  <34.334419, 32.168598, 49.065132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541080, 32.468346, 48.899475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270956, -0.315740, -0.909335,
		-0.812192, 0.582023, 0.039919,
		0.516650, 0.749371, -0.414145,
		34.696075, 32.693157, 48.775230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912975, 32.362469, 48.502300>,  <34.334419, 32.168598, 49.065132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912975, 32.362469, 48.502300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272495, 32.513565, 48.413330>,  <34.488205, 32.604221, 48.359947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272495, 32.513565, 48.413330>,  <33.912975, 32.362469, 48.502300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272495, 32.513565, 48.413330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062733, -0.391339, -0.918106,
		-0.433851, 0.839145, -0.328038,
		0.898798, 0.377742, -0.222425,
		34.542133, 32.626888, 48.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804771, 32.705753, 47.913010>,  <33.912975, 32.362469, 48.502300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804771, 32.705753, 47.913010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197784, 32.631462, 47.908390>,  <34.433594, 32.586887, 47.905621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197784, 32.631462, 47.908390>,  <33.804771, 32.705753, 47.913010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197784, 32.631462, 47.908390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053350, -0.221715, -0.973651,
		0.178272, 0.957261, -0.227751,
		0.982534, -0.185725, -0.011544,
		34.492546, 32.575745, 47.904926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454041, 33.345512, 47.705086>,  <33.804771, 32.705753, 47.913010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454041, 33.345512, 47.705086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076328, 33.291325, 47.585102>,  <32.849701, 33.258812, 47.513111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.076328, 33.291325, 47.585102>,  <33.454041, 33.345512, 47.705086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076328, 33.291325, 47.585102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326673, 0.274548, 0.904383,
		-0.040166, 0.951982, -0.303506,
		-0.944283, -0.135473, -0.299960,
		32.793045, 33.250683, 47.495113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152443, 33.814339, 47.999435>,  <33.454041, 33.345512, 47.705086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152443, 33.814339, 47.999435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832802, 33.603809, 47.883217>,  <32.641018, 33.477489, 47.813484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.832802, 33.603809, 47.883217>,  <33.152443, 33.814339, 47.999435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832802, 33.603809, 47.883217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444689, 0.192225, 0.874815,
		-0.404587, 0.828269, -0.387659,
		-0.799100, -0.526326, -0.290550,
		32.593071, 33.445911, 47.796051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547081, 34.219711, 48.182034>,  <33.152443, 33.814339, 47.999435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547081, 34.219711, 48.182034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.437862, 33.836254, 48.149914>,  <32.372330, 33.606178, 48.130642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.437862, 33.836254, 48.149914>,  <32.547081, 34.219711, 48.182034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437862, 33.836254, 48.149914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392937, 0.034952, 0.918901,
		-0.878091, 0.282458, -0.386230,
		-0.273050, -0.958643, -0.080297,
		32.355946, 33.548660, 48.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916794, 34.248627, 48.431831>,  <32.547081, 34.219711, 48.182034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916794, 34.248627, 48.431831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035370, 33.872593, 48.499207>,  <32.106514, 33.646973, 48.539631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035370, 33.872593, 48.499207>,  <31.916794, 34.248627, 48.431831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035370, 33.872593, 48.499207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310672, 0.071854, 0.947798,
		-0.903110, -0.333291, -0.270756,
		0.296438, -0.940082, 0.168436,
		32.124302, 33.590569, 48.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337559, 33.865128, 48.814892>,  <31.916794, 34.248627, 48.431831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337559, 33.865128, 48.814892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650263, 33.633793, 48.908169>,  <31.837885, 33.494991, 48.964134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650263, 33.633793, 48.908169>,  <31.337559, 33.865128, 48.814892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650263, 33.633793, 48.908169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159579, 0.175959, 0.971377,
		-0.602815, -0.796596, 0.045267,
		0.781760, -0.578336, 0.233191,
		31.884790, 33.460293, 48.978127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110495, 33.358112, 49.384270>,  <31.337559, 33.865128, 48.814892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110495, 33.358112, 49.384270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.508270, 33.399174, 49.393669>,  <31.746935, 33.423813, 49.399307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.508270, 33.399174, 49.393669>,  <31.110495, 33.358112, 49.384270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508270, 33.399174, 49.393669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027090, 0.033758, 0.999063,
		0.101772, -0.994143, 0.036352,
		0.994439, 0.102662, 0.023496,
		31.806602, 33.429970, 49.400719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369030, 32.978813, 49.853149>,  <31.110495, 33.358112, 49.384270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369030, 32.978813, 49.853149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.655128, 33.257179, 49.827450>,  <31.826788, 33.424198, 49.812031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.655128, 33.257179, 49.827450>,  <31.369030, 32.978813, 49.853149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655128, 33.257179, 49.827450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033577, 0.126047, 0.991456,
		0.698064, -0.706979, 0.113522,
		0.715247, 0.695911, -0.064251,
		31.869703, 33.465954, 49.808174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906897, 32.735970, 50.416405>,  <31.369030, 32.978813, 49.853149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906897, 32.735970, 50.416405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.018887, 33.112247, 50.339764>,  <32.086082, 33.338013, 50.293777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.018887, 33.112247, 50.339764>,  <31.906897, 32.735970, 50.416405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018887, 33.112247, 50.339764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132122, 0.159930, 0.978247,
		0.950872, -0.299200, -0.079510,
		0.279976, 0.940692, -0.191604,
		32.102879, 33.394455, 50.282284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581440, 32.838974, 50.829308>,  <31.906897, 32.735970, 50.416405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581440, 32.838974, 50.829308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440716, 33.204060, 50.746197>,  <32.356281, 33.423111, 50.696331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440716, 33.204060, 50.746197>,  <32.581440, 32.838974, 50.829308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440716, 33.204060, 50.746197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180846, 0.284058, 0.941598,
		0.918434, 0.293693, -0.264997,
		-0.351815, 0.912719, -0.207775,
		32.335171, 33.477875, 50.683865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136494, 33.344074, 50.950085>,  <32.581440, 32.838974, 50.829308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136494, 33.344074, 50.950085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784943, 33.534515, 50.962017>,  <32.574013, 33.648781, 50.969177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784943, 33.534515, 50.962017>,  <33.136494, 33.344074, 50.950085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784943, 33.534515, 50.962017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267832, 0.440737, 0.856748,
		0.394757, 0.760969, -0.514872,
		-0.878882, 0.476106, 0.029828,
		32.521278, 33.677349, 50.970966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276302, 34.048561, 51.373257>,  <33.136494, 33.344074, 50.950085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276302, 34.048561, 51.373257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884258, 33.970993, 51.356365>,  <32.649033, 33.924454, 51.346230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.884258, 33.970993, 51.356365>,  <33.276302, 34.048561, 51.373257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884258, 33.970993, 51.356365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091308, 0.251664, 0.963498,
		-0.176213, 0.948188, -0.264364,
		-0.980108, -0.193919, -0.042231,
		32.590225, 33.912819, 51.343697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984383, 34.655731, 51.623207>,  <33.276302, 34.048561, 51.373257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984383, 34.655731, 51.623207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.720200, 34.360409, 51.677906>,  <32.561691, 34.183216, 51.710724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.720200, 34.360409, 51.677906>,  <32.984383, 34.655731, 51.623207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720200, 34.360409, 51.677906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289980, 0.418783, 0.860542,
		-0.692612, 0.528696, -0.490683,
		-0.660455, -0.738310, 0.136743,
		32.522064, 34.138916, 51.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284691, 34.961220, 51.908226>,  <32.984383, 34.655731, 51.623207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284691, 34.961220, 51.908226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260792, 34.576427, 52.014828>,  <32.246452, 34.345551, 52.078789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260792, 34.576427, 52.014828>,  <32.284691, 34.961220, 51.908226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260792, 34.576427, 52.014828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248025, 0.272913, 0.929517,
		-0.966909, -0.010563, -0.254901,
		-0.059747, -0.961981, 0.266502,
		32.242867, 34.287834, 52.094780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724319, 34.950329, 52.361362>,  <32.284691, 34.961220, 51.908226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724319, 34.950329, 52.361362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936033, 34.617916, 52.429764>,  <32.063061, 34.418468, 52.470802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.936033, 34.617916, 52.429764>,  <31.724319, 34.950329, 52.361362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936033, 34.617916, 52.429764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152088, 0.105350, 0.982736,
		-0.834703, -0.546152, -0.070631,
		0.529282, -0.831035, 0.170999,
		32.094818, 34.368607, 52.481064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772627, 35.641697, 52.615997>,  <31.724319, 34.950329, 52.361362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772627, 35.641697, 52.615997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878298, 36.024101, 52.564999>,  <31.941700, 36.253544, 52.534397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878298, 36.024101, 52.564999>,  <31.772627, 35.641697, 52.615997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878298, 36.024101, 52.564999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263030, -0.198599, -0.944126,
		-0.927915, 0.215879, -0.303924,
		0.264176, 0.956010, -0.127500,
		31.957550, 36.310905, 52.526749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388163, 35.905228, 52.130032>,  <31.772627, 35.641697, 52.615997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388163, 35.905228, 52.130032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.710621, 36.141750, 52.121254>,  <31.904097, 36.283665, 52.115986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.710621, 36.141750, 52.121254>,  <31.388163, 35.905228, 52.130032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710621, 36.141750, 52.121254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178394, -0.278231, -0.943802,
		-0.564185, 0.756928, -0.329781,
		0.806145, 0.591310, -0.021942,
		31.952465, 36.319145, 52.114670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250248, 36.237579, 51.401501>,  <31.388163, 35.905228, 52.130032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250248, 36.237579, 51.401501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623680, 36.284836, 51.536831>,  <31.847740, 36.313190, 51.618031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623680, 36.284836, 51.536831>,  <31.250248, 36.237579, 51.401501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623680, 36.284836, 51.536831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346787, -0.059803, -0.936035,
		-0.090350, 0.991195, -0.096800,
		0.933582, 0.118140, 0.338330,
		31.903755, 36.320278, 51.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533369, 36.745293, 50.980904>,  <31.250248, 36.237579, 51.401501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533369, 36.745293, 50.980904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858311, 36.563110, 51.126583>,  <32.053276, 36.453800, 51.213989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.858311, 36.563110, 51.126583>,  <31.533369, 36.745293, 50.980904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858311, 36.563110, 51.126583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385976, -0.048227, -0.921247,
		0.437154, 0.888950, 0.136619,
		0.812354, -0.455458, 0.364196,
		32.102016, 36.426472, 51.235844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184425, 37.151283, 50.868195>,  <31.533369, 36.745293, 50.980904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184425, 37.151283, 50.868195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295475, 36.767708, 50.891376>,  <32.362103, 36.537563, 50.905285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.295475, 36.767708, 50.891376>,  <32.184425, 37.151283, 50.868195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295475, 36.767708, 50.891376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357655, 0.047174, -0.932662,
		0.891633, 0.279654, 0.356066,
		0.277620, -0.958941, 0.057958,
		32.378761, 36.480026, 50.908764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802849, 37.173534, 50.517986>,  <32.184425, 37.151283, 50.868195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802849, 37.173534, 50.517986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698746, 36.787403, 50.526012>,  <32.636284, 36.555725, 50.530830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698746, 36.787403, 50.526012>,  <32.802849, 37.173534, 50.517986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698746, 36.787403, 50.526012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276309, -0.094377, -0.956423,
		0.925158, -0.243375, 0.291292,
		-0.260261, -0.965330, 0.020067,
		32.620667, 36.497803, 50.532032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421059, 36.861801, 50.128441>,  <32.802849, 37.173534, 50.517986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421059, 36.861801, 50.128441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122967, 36.596127, 50.152073>,  <32.944111, 36.436722, 50.166252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122967, 36.596127, 50.152073>,  <33.421059, 36.861801, 50.128441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122967, 36.596127, 50.152073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207800, -0.315505, -0.925892,
		0.633607, -0.677722, 0.373141,
		-0.745226, -0.664191, 0.059076,
		32.899399, 36.396870, 50.169796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030762, 36.590862, 49.853035>,  <33.421059, 36.861801, 50.128441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030762, 36.590862, 49.853035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.150188, 36.964867, 49.776505>,  <34.221844, 37.189270, 49.730587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.150188, 36.964867, 49.776505>,  <34.030762, 36.590862, 49.853035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150188, 36.964867, 49.776505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448289, 0.039583, 0.893012,
		0.842552, -0.352396, -0.407338,
		0.298570, 0.935014, -0.191326,
		34.239758, 37.245369, 49.719109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717129, 36.569481, 50.161407>,  <34.030762, 36.590862, 49.853035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717129, 36.569481, 50.161407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.591576, 36.945477, 50.107906>,  <34.516243, 37.171074, 50.075806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.591576, 36.945477, 50.107906>,  <34.717129, 36.569481, 50.161407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591576, 36.945477, 50.107906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206863, 0.205193, 0.956610,
		0.926652, 0.272596, -0.258856,
		-0.313884, 0.939993, -0.133752,
		34.497410, 37.227474, 50.067780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236492, 37.018078, 50.490410>,  <34.717129, 36.569481, 50.161407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236492, 37.018078, 50.490410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886856, 37.211590, 50.472878>,  <34.677074, 37.327698, 50.462357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886856, 37.211590, 50.472878>,  <35.236492, 37.018078, 50.490410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886856, 37.211590, 50.472878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057432, 0.192521, 0.979611,
		0.482357, 0.853751, -0.196065,
		-0.874090, 0.483782, -0.043831,
		34.624630, 37.356724, 50.459728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325554, 37.640186, 50.795441>,  <35.236492, 37.018078, 50.490410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325554, 37.640186, 50.795441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930874, 37.577930, 50.814198>,  <34.694065, 37.540577, 50.825451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930874, 37.577930, 50.814198>,  <35.325554, 37.640186, 50.795441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930874, 37.577930, 50.814198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024392, 0.143441, 0.989358,
		-0.160707, 0.977344, -0.137737,
		-0.986701, -0.155637, 0.046891,
		34.634865, 37.531239, 50.828266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095486, 38.141659, 51.176517>,  <35.325554, 37.640186, 50.795441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095486, 38.141659, 51.176517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807476, 37.864090, 51.178730>,  <34.634670, 37.697548, 51.180058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807476, 37.864090, 51.178730>,  <35.095486, 38.141659, 51.176517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807476, 37.864090, 51.178730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026100, -0.019121, 0.999477,
		-0.693458, 0.719792, 0.031879,
		-0.720025, -0.693927, 0.005526,
		34.591469, 37.655910, 51.180389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755257, 38.320240, 51.782146>,  <35.095486, 38.141659, 51.176517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755257, 38.320240, 51.782146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623711, 37.953815, 51.690342>,  <34.544781, 37.733959, 51.635262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.623711, 37.953815, 51.690342>,  <34.755257, 38.320240, 51.782146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623711, 37.953815, 51.690342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047715, -0.258834, 0.964743,
		-0.943170, 0.306321, 0.128832,
		-0.328867, -0.916064, -0.229508,
		34.525051, 37.678997, 51.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243107, 38.114113, 52.370838>,  <34.755257, 38.320240, 51.782146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243107, 38.114113, 52.370838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366753, 37.778187, 52.192333>,  <34.440941, 37.576630, 52.085232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366753, 37.778187, 52.192333>,  <34.243107, 38.114113, 52.370838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366753, 37.778187, 52.192333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307242, -0.355894, 0.882576,
		-0.900027, -0.409931, 0.148014,
		0.309118, -0.839819, -0.446263,
		34.459488, 37.526241, 52.058453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973278, 37.575928, 52.800724>,  <34.243107, 38.114113, 52.370838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973278, 37.575928, 52.800724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275528, 37.404289, 52.602768>,  <34.456879, 37.301308, 52.483994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.275528, 37.404289, 52.602768>,  <33.973278, 37.575928, 52.800724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275528, 37.404289, 52.602768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205194, -0.562441, 0.800972,
		-0.622039, -0.706778, -0.336944,
		0.755621, -0.429097, -0.494887,
		34.502216, 37.275562, 52.454304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867706, 36.868965, 52.932152>,  <33.973278, 37.575928, 52.800724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867706, 36.868965, 52.932152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249561, 36.897232, 52.816452>,  <34.478676, 36.914192, 52.747032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249561, 36.897232, 52.816452>,  <33.867706, 36.868965, 52.932152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249561, 36.897232, 52.816452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278093, -0.558790, 0.781292,
		-0.106422, -0.826293, -0.553095,
		0.954641, 0.070665, -0.289254,
		34.535954, 36.918430, 52.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.136803, 34.853668, 37.063892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512657, 34.990299, 37.055912>,  <34.738171, 35.072277, 37.051125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512657, 34.990299, 37.055912>,  <34.136803, 34.853668, 37.063892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512657, 34.990299, 37.055912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062805, 0.229490, 0.971283,
		0.336351, -0.911403, 0.237091,
		0.939640, 0.341583, -0.019948,
		34.794548, 35.092773, 37.049927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385189, 34.662849, 37.749538>,  <34.136803, 34.853668, 37.063892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385189, 34.662849, 37.749538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654442, 34.929054, 37.620552>,  <34.815994, 35.088779, 37.543159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654442, 34.929054, 37.620552>,  <34.385189, 34.662849, 37.749538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654442, 34.929054, 37.620552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061183, 0.384440, 0.921120,
		0.736989, -0.639763, 0.218060,
		0.673130, 0.665514, -0.322471,
		34.856380, 35.128708, 37.523811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911861, 34.661098, 38.220837>,  <34.385189, 34.662849, 37.749538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911861, 34.661098, 38.220837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927589, 35.013790, 38.032791>,  <34.937027, 35.225403, 37.919964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927589, 35.013790, 38.032791>,  <34.911861, 34.661098, 38.220837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927589, 35.013790, 38.032791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145266, 0.460439, 0.875724,
		0.988611, -0.102724, -0.109981,
		0.039318, 0.881727, -0.470118,
		34.939384, 35.278309, 37.891754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308807, 34.968338, 38.590584>,  <34.911861, 34.661098, 38.220837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308807, 34.968338, 38.590584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167690, 35.299534, 38.416241>,  <35.083019, 35.498253, 38.311634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167690, 35.299534, 38.416241>,  <35.308807, 34.968338, 38.590584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167690, 35.299534, 38.416241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163034, 0.513075, 0.842718,
		0.921387, 0.226248, -0.316002,
		-0.352796, 0.827989, -0.435855,
		35.061852, 35.547932, 38.285484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834961, 35.581223, 38.621708>,  <35.308807, 34.968338, 38.590584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834961, 35.581223, 38.621708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454544, 35.702122, 38.595901>,  <35.226295, 35.774662, 38.580418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454544, 35.702122, 38.595901>,  <35.834961, 35.581223, 38.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454544, 35.702122, 38.595901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119503, 0.552151, 0.825135,
		0.285020, 0.777029, -0.561239,
		-0.951043, 0.302250, -0.064517,
		35.169231, 35.792797, 38.576546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781803, 36.110588, 39.051468>,  <35.834961, 35.581223, 38.621708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781803, 36.110588, 39.051468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392315, 36.065720, 38.972183>,  <35.158623, 36.038799, 38.924610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392315, 36.065720, 38.972183>,  <35.781803, 36.110588, 39.051468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392315, 36.065720, 38.972183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227718, 0.465087, 0.855475,
		-0.003769, 0.878130, -0.478407,
		-0.973720, -0.112167, -0.198213,
		35.100201, 36.032070, 38.912720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415615, 36.837391, 39.038734>,  <35.781803, 36.110588, 39.051468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415615, 36.837391, 39.038734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143581, 36.552124, 39.106705>,  <34.980362, 36.380962, 39.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143581, 36.552124, 39.106705>,  <35.415615, 36.837391, 39.038734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143581, 36.552124, 39.106705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253738, 0.446424, 0.858092,
		-0.687821, 0.540461, -0.484565,
		-0.680087, -0.713167, 0.169924,
		34.939556, 36.338173, 39.157681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807457, 37.239487, 39.243954>,  <35.415615, 36.837391, 39.038734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807457, 37.239487, 39.243954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759602, 36.864494, 39.374683>,  <34.730888, 36.639500, 39.453121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759602, 36.864494, 39.374683>,  <34.807457, 37.239487, 39.243954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759602, 36.864494, 39.374683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392699, 0.347026, 0.851681,
		-0.911852, -0.026451, -0.409666,
		-0.119637, -0.937482, 0.326824,
		34.723709, 36.583248, 39.472729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170086, 37.290504, 39.614700>,  <34.807457, 37.239487, 39.243954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170086, 37.290504, 39.614700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340450, 36.950432, 39.738499>,  <34.442669, 36.746387, 39.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340450, 36.950432, 39.738499>,  <34.170086, 37.290504, 39.614700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340450, 36.950432, 39.738499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198723, 0.245817, 0.948727,
		-0.882673, -0.465574, -0.064256,
		0.425908, -0.850185, 0.309496,
		34.468224, 36.695377, 39.831348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857491, 37.255787, 40.150105>,  <34.170086, 37.290504, 39.614700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857491, 37.255787, 40.150105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136566, 36.979294, 40.225391>,  <34.304012, 36.813400, 40.270565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136566, 36.979294, 40.225391>,  <33.857491, 37.255787, 40.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136566, 36.979294, 40.225391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046328, 0.218645, 0.974704,
		-0.714898, -0.688763, 0.120524,
		0.697692, -0.691231, 0.188217,
		34.345875, 36.771923, 40.281857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653912, 36.797688, 40.666855>,  <33.857491, 37.255787, 40.150105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653912, 36.797688, 40.666855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051533, 36.761204, 40.690632>,  <34.290108, 36.739315, 40.704899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051533, 36.761204, 40.690632>,  <33.653912, 36.797688, 40.666855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051533, 36.761204, 40.690632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050534, 0.097014, 0.993999,
		-0.096427, -0.991095, 0.091829,
		0.994056, -0.091208, 0.059439,
		34.349751, 36.733841, 40.708462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740704, 36.431087, 41.280128>,  <33.653912, 36.797688, 40.666855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740704, 36.431087, 41.280128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106258, 36.584187, 41.225986>,  <34.325592, 36.676044, 41.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106258, 36.584187, 41.225986>,  <33.740704, 36.431087, 41.280128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106258, 36.584187, 41.225986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131943, 0.035300, 0.990629,
		0.383940, -0.923178, -0.018240,
		0.913883, 0.382749, -0.135360,
		34.380424, 36.699013, 41.185379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299446, 35.795952, 41.347454>,  <33.740704, 36.431087, 41.280128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299446, 35.795952, 41.347454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911686, 35.865025, 41.417244>,  <32.679028, 35.906467, 41.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911686, 35.865025, 41.417244>,  <33.299446, 35.795952, 41.347454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911686, 35.865025, 41.417244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198840, -0.135581, -0.970608,
		-0.143989, -0.975595, 0.165776,
		-0.969397, 0.172720, 0.174465,
		32.620865, 35.916828, 41.469585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842979, 35.194427, 41.027500>,  <33.299446, 35.795952, 41.347454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842979, 35.194427, 41.027500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620110, 35.525848, 41.049595>,  <32.486389, 35.724701, 41.062851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620110, 35.525848, 41.049595>,  <32.842979, 35.194427, 41.027500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620110, 35.525848, 41.049595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339504, -0.166585, -0.925735,
		-0.757822, -0.534550, 0.374116,
		-0.557174, 0.828557, 0.055240,
		32.452957, 35.774414, 41.066166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158829, 35.078445, 40.819366>,  <32.842979, 35.194427, 41.027500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158829, 35.078445, 40.819366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175919, 35.475269, 40.772041>,  <32.186172, 35.713364, 40.743645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175919, 35.475269, 40.772041>,  <32.158829, 35.078445, 40.819366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175919, 35.475269, 40.772041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304587, -0.099851, -0.947236,
		-0.951525, 0.076511, 0.297901,
		0.042728, 0.992056, -0.118315,
		32.188736, 35.772884, 40.736546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651138, 35.192226, 40.400089>,  <32.158829, 35.078445, 40.819366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651138, 35.192226, 40.400089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840124, 35.543835, 40.374466>,  <31.953516, 35.754799, 40.359093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840124, 35.543835, 40.374466>,  <31.651138, 35.192226, 40.400089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840124, 35.543835, 40.374466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391444, 0.144170, -0.908838,
		-0.789652, 0.454467, 0.412202,
		0.472464, 0.879019, -0.064054,
		31.981863, 35.807541, 40.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180258, 35.628971, 40.163811>,  <31.651138, 35.192226, 40.400089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180258, 35.628971, 40.163811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521278, 35.822720, 40.085278>,  <31.725891, 35.938969, 40.038158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521278, 35.822720, 40.085278>,  <31.180258, 35.628971, 40.163811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521278, 35.822720, 40.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324179, 0.195425, -0.925590,
		-0.409957, 0.852759, 0.323631,
		0.852551, 0.484367, -0.196331,
		31.777044, 35.968029, 40.026379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990248, 36.242119, 39.848228>,  <31.180258, 35.628971, 40.163811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990248, 36.242119, 39.848228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377550, 36.211727, 39.752979>,  <31.609932, 36.193493, 39.695827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377550, 36.211727, 39.752979>,  <30.990248, 36.242119, 39.848228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377550, 36.211727, 39.752979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226699, 0.134353, -0.964654,
		0.105283, 0.988017, 0.112865,
		0.968258, -0.075975, -0.238128,
		31.668028, 36.188934, 39.681541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148495, 36.814426, 39.238754>,  <30.990248, 36.242119, 39.848228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148495, 36.814426, 39.238754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433224, 36.537594, 39.190861>,  <31.604061, 36.371494, 39.162125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433224, 36.537594, 39.190861>,  <31.148495, 36.814426, 39.238754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433224, 36.537594, 39.190861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147218, 0.019668, -0.988908,
		0.686757, 0.721554, -0.087887,
		0.711823, -0.692078, -0.119733,
		31.646770, 36.329971, 39.154942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477764, 37.108475, 38.623253>,  <31.148495, 36.814426, 39.238754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477764, 37.108475, 38.623253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556637, 36.719311, 38.671539>,  <31.603960, 36.485813, 38.700512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556637, 36.719311, 38.671539>,  <31.477764, 37.108475, 38.623253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556637, 36.719311, 38.671539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011569, -0.120817, -0.992607,
		0.980298, 0.197123, -0.012568,
		0.197184, -0.972906, 0.120717,
		31.615791, 36.427441, 38.707756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929153, 36.952091, 37.999710>,  <31.477764, 37.108475, 38.623253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929153, 36.952091, 37.999710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764473, 36.622673, 38.155800>,  <31.665665, 36.425022, 38.249454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764473, 36.622673, 38.155800>,  <31.929153, 36.952091, 37.999710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764473, 36.622673, 38.155800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184080, -0.344224, -0.920665,
		0.892534, -0.450871, -0.009882,
		-0.411700, -0.823545, 0.390228,
		31.640963, 36.375610, 38.272869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167240, 36.464176, 37.619663>,  <31.929153, 36.952091, 37.999710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167240, 36.464176, 37.619663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873940, 36.247696, 37.784321>,  <31.697960, 36.117805, 37.883114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873940, 36.247696, 37.784321>,  <32.167240, 36.464176, 37.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873940, 36.247696, 37.784321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173637, -0.436285, -0.882896,
		0.657419, -0.718857, 0.225932,
		-0.733247, -0.541202, 0.411642,
		31.653965, 36.085335, 37.907814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154537, 35.687485, 37.278641>,  <32.167240, 36.464176, 37.619663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154537, 35.687485, 37.278641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782829, 35.741158, 37.416306>,  <31.559803, 35.773361, 37.498905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782829, 35.741158, 37.416306>,  <32.154537, 35.687485, 37.278641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782829, 35.741158, 37.416306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369392, -0.340416, -0.864677,
		0.001132, -0.930651, 0.365906,
		-0.929273, 0.134184, 0.344160,
		31.504047, 35.781414, 37.519554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738173, 35.131092, 37.118958>,  <32.154537, 35.687485, 37.278641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738173, 35.131092, 37.118958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470943, 35.423981, 37.171917>,  <31.310606, 35.599712, 37.203693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470943, 35.423981, 37.171917>,  <31.738173, 35.131092, 37.118958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470943, 35.423981, 37.171917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512070, -0.323314, -0.795772,
		-0.539875, -0.599431, 0.590946,
		-0.668072, 0.732223, 0.132401,
		31.270521, 35.643646, 37.211639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122187, 34.824608, 36.892136>,  <31.738173, 35.131092, 37.118958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122187, 34.824608, 36.892136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024614, 35.212517, 36.889847>,  <30.966072, 35.445263, 36.888474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024614, 35.212517, 36.889847>,  <31.122187, 34.824608, 36.892136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024614, 35.212517, 36.889847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639519, -0.165291, -0.750796,
		-0.729050, -0.179480, 0.660510,
		-0.243929, 0.969776, -0.005724,
		30.951435, 35.503448, 36.888130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381527, 34.762878, 36.903393>,  <31.122187, 34.824608, 36.892136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381527, 34.762878, 36.903393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501251, 35.109550, 36.743752>,  <30.573086, 35.317554, 36.647968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501251, 35.109550, 36.743752>,  <30.381527, 34.762878, 36.903393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501251, 35.109550, 36.743752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520054, -0.202507, -0.829780,
		-0.799973, 0.455915, 0.390108,
		0.299310, 0.866679, -0.399101,
		30.591043, 35.369553, 36.624020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761301, 34.194626, 36.747345>,  <30.381527, 34.762878, 36.903393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761301, 34.194626, 36.747345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826797, 33.819374, 36.625290>,  <30.866096, 33.594223, 36.552059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826797, 33.819374, 36.625290>,  <30.761301, 34.194626, 36.747345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826797, 33.819374, 36.625290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101035, -0.291734, 0.951148,
		-0.981315, -0.186574, 0.047014,
		0.163743, -0.938126, -0.305134,
		30.875921, 33.537937, 36.533749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471079, 33.796391, 37.395622>,  <30.761301, 34.194626, 36.747345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471079, 33.796391, 37.395622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731815, 33.560741, 37.204609>,  <30.888258, 33.419350, 37.090000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731815, 33.560741, 37.204609>,  <30.471079, 33.796391, 37.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731815, 33.560741, 37.204609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133050, -0.531081, 0.836810,
		-0.746594, -0.609001, -0.267797,
		0.651840, -0.589127, -0.477530,
		30.927368, 33.384003, 37.061352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328672, 33.097267, 37.419899>,  <30.471079, 33.796391, 37.395622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328672, 33.097267, 37.419899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724131, 33.157337, 37.417675>,  <30.961405, 33.193378, 37.416340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724131, 33.157337, 37.417675>,  <30.328672, 33.097267, 37.419899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724131, 33.157337, 37.417675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104113, -0.657799, 0.745963,
		0.108370, -0.738070, -0.665964,
		0.988644, 0.150175, -0.005557,
		31.020723, 33.202389, 37.416008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588799, 32.469025, 37.588345>,  <30.328672, 33.097267, 37.419899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588799, 32.469025, 37.588345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887606, 32.722607, 37.668415>,  <31.066889, 32.874756, 37.716457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887606, 32.722607, 37.668415>,  <30.588799, 32.469025, 37.588345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887606, 32.722607, 37.668415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187332, -0.489634, 0.851567,
		0.637867, -0.598634, -0.484524,
		0.747016, 0.633953, 0.200178,
		31.111710, 32.912792, 37.728470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128513, 32.076241, 37.708981>,  <30.588799, 32.469025, 37.588345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128513, 32.076241, 37.708981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218952, 32.425125, 37.882477>,  <31.273216, 32.634457, 37.986572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218952, 32.425125, 37.882477>,  <31.128513, 32.076241, 37.708981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218952, 32.425125, 37.882477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189356, -0.476126, 0.858748,
		0.955523, -0.112030, -0.272809,
		0.226098, 0.872212, 0.433736,
		31.286781, 32.686790, 38.012596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802813, 32.030945, 38.045982>,  <31.128513, 32.076241, 37.708981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802813, 32.030945, 38.045982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598248, 32.330875, 38.213898>,  <31.475508, 32.510834, 38.314648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598248, 32.330875, 38.213898>,  <31.802813, 32.030945, 38.045982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598248, 32.330875, 38.213898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215378, -0.361070, 0.907326,
		0.831907, 0.554431, 0.023160,
		-0.511412, 0.749823, 0.419789,
		31.444824, 32.555820, 38.339836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165459, 32.122707, 38.584133>,  <31.802813, 32.030945, 38.045982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165459, 32.122707, 38.584133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846863, 32.348671, 38.670376>,  <31.655706, 32.484249, 38.722122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846863, 32.348671, 38.670376>,  <32.165459, 32.122707, 38.584133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846863, 32.348671, 38.670376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096004, -0.233908, 0.967507,
		0.596987, 0.791305, 0.132071,
		-0.796486, 0.564910, 0.215608,
		31.607918, 32.518143, 38.735058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395844, 32.545841, 39.132854>,  <32.165459, 32.122707, 38.584133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395844, 32.545841, 39.132854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998238, 32.502193, 39.135220>,  <31.759674, 32.476006, 39.136639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998238, 32.502193, 39.135220>,  <32.395844, 32.545841, 39.132854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998238, 32.502193, 39.135220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027703, -0.199234, 0.979560,
		-0.105710, 0.973858, 0.201063,
		-0.994011, -0.109119, 0.005917,
		31.700035, 32.469460, 39.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210766, 33.027458, 39.570660>,  <32.395844, 32.545841, 39.132854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210766, 33.027458, 39.570660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923538, 32.749542, 39.554432>,  <31.751202, 32.582794, 39.544693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923538, 32.749542, 39.554432>,  <32.210766, 33.027458, 39.570660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923538, 32.749542, 39.554432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058580, -0.118425, 0.991234,
		-0.693502, 0.709398, 0.125738,
		-0.718069, -0.694788, -0.040571,
		31.708117, 32.541107, 39.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817808, 33.194431, 40.057083>,  <32.210766, 33.027458, 39.570660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817808, 33.194431, 40.057083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682138, 32.822575, 39.999485>,  <31.600737, 32.599461, 39.964924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682138, 32.822575, 39.999485>,  <31.817808, 33.194431, 40.057083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682138, 32.822575, 39.999485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052804, -0.134016, 0.989571,
		-0.939241, 0.343240, -0.003634,
		-0.339174, -0.929637, -0.143998,
		31.580387, 32.543682, 39.956287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205469, 33.093079, 40.456455>,  <31.817808, 33.194431, 40.057083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205469, 33.093079, 40.456455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297483, 32.709564, 40.389755>,  <31.352692, 32.479454, 40.349735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297483, 32.709564, 40.389755>,  <31.205469, 33.093079, 40.456455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297483, 32.709564, 40.389755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035941, -0.179599, 0.983083,
		-0.972518, -0.220151, -0.075774,
		0.230035, -0.958790, -0.166750,
		31.366493, 32.421928, 40.339729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740314, 32.730518, 40.928772>,  <31.205469, 33.093079, 40.456455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740314, 32.730518, 40.928772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057281, 32.497581, 40.856159>,  <31.247461, 32.357819, 40.812592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057281, 32.497581, 40.856159>,  <30.740314, 32.730518, 40.928772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057281, 32.497581, 40.856159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008596, -0.286918, 0.957916,
		-0.609919, -0.760630, -0.222353,
		0.792417, -0.582340, -0.181535,
		31.295008, 32.322880, 40.801697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573338, 32.108288, 41.153542>,  <30.740314, 32.730518, 40.928772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573338, 32.108288, 41.153542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972715, 32.129112, 41.145580>,  <31.212343, 32.141605, 41.140804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972715, 32.129112, 41.145580>,  <30.573338, 32.108288, 41.153542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972715, 32.129112, 41.145580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037216, -0.356784, 0.933445,
		0.041495, -0.932735, -0.358167,
		0.998445, 0.052063, -0.019908,
		31.272249, 32.144730, 41.139606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693346, 31.558813, 41.654091>,  <30.573338, 32.108288, 41.153542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693346, 31.558813, 41.654091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032148, 31.766550, 41.608723>,  <31.235430, 31.891191, 41.581501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032148, 31.766550, 41.608723>,  <30.693346, 31.558813, 41.654091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032148, 31.766550, 41.608723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246555, -0.194777, 0.949354,
		0.470948, -0.832073, -0.293024,
		0.847006, 0.519343, -0.113422,
		31.286249, 31.922354, 41.574696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218309, 31.115412, 41.972168>,  <30.693346, 31.558813, 41.654091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218309, 31.115412, 41.972168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308176, 31.504761, 41.990387>,  <31.362095, 31.738369, 42.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308176, 31.504761, 41.990387>,  <31.218309, 31.115412, 41.972168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308176, 31.504761, 41.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235831, -0.099664, 0.966670,
		0.945468, -0.206435, -0.251942,
		0.224664, 0.973371, 0.045545,
		31.375576, 31.796772, 42.004051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751999, 31.157381, 42.469887>,  <31.218309, 31.115412, 41.972168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751999, 31.157381, 42.469887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711367, 31.554874, 42.451218>,  <31.686987, 31.793369, 42.440014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.711367, 31.554874, 42.451218>,  <31.751999, 31.157381, 42.469887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711367, 31.554874, 42.451218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350426, 0.079655, 0.933197,
		0.931065, 0.078440, -0.356321,
		-0.101582, 0.993731, -0.046677,
		31.680891, 31.852993, 42.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268272, 31.368599, 42.822083>,  <31.751999, 31.157381, 42.469887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268272, 31.368599, 42.822083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060799, 31.710566, 42.825619>,  <31.936314, 31.915747, 42.827740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060799, 31.710566, 42.825619>,  <32.268272, 31.368599, 42.822083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060799, 31.710566, 42.825619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351756, 0.203963, 0.913601,
		0.779250, 0.476984, -0.406516,
		-0.518687, 0.854918, 0.008844,
		31.905193, 31.967041, 42.828270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735531, 31.889509, 43.048870>,  <32.268272, 31.368599, 42.822083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735531, 31.889509, 43.048870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361675, 32.011803, 43.121506>,  <32.137360, 32.085178, 43.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361675, 32.011803, 43.121506>,  <32.735531, 31.889509, 43.048870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361675, 32.011803, 43.121506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254362, 0.217972, 0.942225,
		0.248487, 0.926831, -0.281492,
		-0.934641, 0.305732, 0.181588,
		32.081284, 32.103523, 43.175983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802902, 32.543827, 43.154930>,  <32.735531, 31.889509, 43.048870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802902, 32.543827, 43.154930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437351, 32.467319, 43.298176>,  <32.218021, 32.421417, 43.384125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437351, 32.467319, 43.298176>,  <32.802902, 32.543827, 43.154930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437351, 32.467319, 43.298176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200627, 0.554090, 0.807919,
		-0.352954, 0.810186, -0.467997,
		-0.913877, -0.191266, 0.358113,
		32.163189, 32.409939, 43.405609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817219, 33.092850, 43.552933>,  <32.802902, 32.543827, 43.154930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817219, 33.092850, 43.552933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499928, 32.884384, 43.678902>,  <32.309551, 32.759304, 43.754482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499928, 32.884384, 43.678902>,  <32.817219, 33.092850, 43.552933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499928, 32.884384, 43.678902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186368, 0.284579, 0.940363,
		-0.579704, 0.804614, -0.128608,
		-0.793228, -0.521164, 0.314926,
		32.261959, 32.728035, 43.773380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395504, 33.527187, 43.998531>,  <32.817219, 33.092850, 43.552933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395504, 33.527187, 43.998531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279217, 33.157269, 44.096699>,  <32.209446, 32.935318, 44.155602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279217, 33.157269, 44.096699>,  <32.395504, 33.527187, 43.998531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279217, 33.157269, 44.096699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049543, 0.270705, 0.961387,
		-0.955526, 0.267330, -0.124515,
		-0.290715, -0.924799, 0.245421,
		32.192001, 32.879829, 44.170326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922785, 33.595848, 44.518288>,  <32.395504, 33.527187, 43.998531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922785, 33.595848, 44.518288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047749, 33.218632, 44.564018>,  <32.122726, 32.992302, 44.591457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047749, 33.218632, 44.564018>,  <31.922785, 33.595848, 44.518288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047749, 33.218632, 44.564018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015918, 0.115140, 0.993222,
		-0.949814, -0.312111, 0.020960,
		0.312409, -0.943043, 0.114330,
		32.141472, 32.935719, 44.598316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511894, 33.366932, 45.111790>,  <31.922785, 33.595848, 44.518288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511894, 33.366932, 45.111790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837967, 33.136246, 45.090343>,  <32.033611, 32.997833, 45.077477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837967, 33.136246, 45.090343>,  <31.511894, 33.366932, 45.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837967, 33.136246, 45.090343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145010, 0.113602, 0.982887,
		-0.560758, -0.809007, 0.176236,
		0.815183, -0.576718, -0.053611,
		32.082523, 32.963230, 45.074261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533815, 32.955654, 45.731876>,  <31.511894, 33.366932, 45.111790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533815, 32.955654, 45.731876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913946, 32.944618, 45.607864>,  <32.142025, 32.937996, 45.533459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913946, 32.944618, 45.607864>,  <31.533815, 32.955654, 45.731876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913946, 32.944618, 45.607864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310309, 0.006377, 0.950614,
		-0.024252, -0.999599, 0.014622,
		0.950327, -0.027592, -0.310030,
		32.199043, 32.936340, 45.514854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873310, 32.452103, 46.049534>,  <31.533815, 32.955654, 45.731876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873310, 32.452103, 46.049534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162933, 32.702873, 45.934502>,  <32.336708, 32.853336, 45.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162933, 32.702873, 45.934502>,  <31.873310, 32.452103, 46.049534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162933, 32.702873, 45.934502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441728, -0.101259, 0.891416,
		0.529732, -0.772470, -0.350248,
		0.724059, 0.626926, -0.287581,
		32.380150, 32.890949, 45.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483532, 32.174255, 46.460873>,  <31.873310, 32.452103, 46.049534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483532, 32.174255, 46.460873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572327, 32.549713, 46.355297>,  <32.625603, 32.774990, 46.291954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572327, 32.549713, 46.355297>,  <32.483532, 32.174255, 46.460873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572327, 32.549713, 46.355297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336158, 0.180418, 0.924363,
		0.915270, -0.293920, -0.275484,
		0.221987, 0.938648, -0.263935,
		32.638924, 32.831306, 46.276115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138302, 32.273945, 46.732548>,  <32.483532, 32.174255, 46.460873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138302, 32.273945, 46.732548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976566, 32.636608, 46.684406>,  <32.879524, 32.854206, 46.655521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976566, 32.636608, 46.684406>,  <33.138302, 32.273945, 46.732548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976566, 32.636608, 46.684406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149453, 0.195315, 0.969286,
		0.902316, 0.373933, -0.214476,
		-0.404339, 0.906656, -0.120351,
		32.855267, 32.908604, 46.648300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536907, 32.806896, 47.246479>,  <33.138302, 32.273945, 46.732548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536907, 32.806896, 47.246479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173134, 32.947021, 47.156853>,  <32.954868, 33.031097, 47.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173134, 32.947021, 47.156853>,  <33.536907, 32.806896, 47.246479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173134, 32.947021, 47.156853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193302, 0.120930, 0.973658,
		0.368185, 0.928792, -0.042261,
		-0.909436, 0.350317, -0.224062,
		32.900303, 33.052116, 47.089634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182106, 33.135929, 47.204369>,  <33.536907, 32.806896, 47.246479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182106, 33.135929, 47.204369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453175, 32.871380, 47.332958>,  <34.615814, 32.712650, 47.410110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453175, 32.871380, 47.332958>,  <34.182106, 33.135929, 47.204369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453175, 32.871380, 47.332958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042822, -0.400922, -0.915111,
		0.734118, 0.633910, -0.243371,
		0.677671, -0.661377, 0.321469,
		34.656475, 32.672966, 47.429398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749565, 33.233501, 46.735806>,  <34.182106, 33.135929, 47.204369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749565, 33.233501, 46.735806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800060, 32.861385, 46.873573>,  <34.830357, 32.638115, 46.956234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800060, 32.861385, 46.873573>,  <34.749565, 33.233501, 46.735806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800060, 32.861385, 46.873573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214705, -0.313342, -0.925051,
		0.968486, 0.190726, 0.160182,
		0.126239, -0.930291, 0.344417,
		34.837933, 32.582298, 46.976898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337513, 32.978703, 46.404079>,  <34.749565, 33.233501, 46.735806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337513, 32.978703, 46.404079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175537, 32.631016, 46.517559>,  <35.078354, 32.422405, 46.585648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175537, 32.631016, 46.517559>,  <35.337513, 32.978703, 46.404079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175537, 32.631016, 46.517559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260918, -0.407229, -0.875264,
		0.876326, -0.280404, 0.391696,
		-0.404937, -0.869217, 0.283703,
		35.054054, 32.370251, 46.602669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876129, 32.566769, 46.146465>,  <35.337513, 32.978703, 46.404079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876129, 32.566769, 46.146465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548588, 32.347397, 46.214233>,  <35.352062, 32.215775, 46.254894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548588, 32.347397, 46.214233>,  <35.876129, 32.566769, 46.146465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548588, 32.347397, 46.214233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109824, -0.439398, -0.891554,
		0.563400, -0.711444, 0.420033,
		-0.818853, -0.548431, 0.169423,
		35.302933, 32.182869, 46.265060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969738, 31.749079, 46.066551>,  <35.876129, 32.566769, 46.146465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969738, 31.749079, 46.066551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594749, 31.859356, 45.981571>,  <35.369755, 31.925522, 45.930584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594749, 31.859356, 45.981571>,  <35.969738, 31.749079, 46.066551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594749, 31.859356, 45.981571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082664, -0.416572, -0.905337,
		-0.338098, -0.866292, 0.367735,
		-0.937473, 0.275694, -0.212453,
		35.313507, 31.942064, 45.917835>
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
