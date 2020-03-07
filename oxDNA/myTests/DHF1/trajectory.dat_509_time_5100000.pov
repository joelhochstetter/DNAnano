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
	<3.156019, 3.637382, 2.387689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.301852, 3.284267, 2.269188>,  <3.389352, 3.072399, 2.198087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.301852, 3.284267, 2.269188>,  <3.156019, 3.637382, 2.387689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.301852, 3.284267, 2.269188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090593, 0.283015, -0.954827,
		0.926753, 0.374953, 0.023208,
		0.364584, -0.882787, -0.296253,
		3.411227, 3.019431, 2.180312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.594178, 3.843843, 1.879049>,  <3.156019, 3.637382, 2.387689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.594178, 3.843843, 1.879049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.465446, 3.468418, 1.829205>,  <3.388206, 3.243163, 1.799298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.465446, 3.468418, 1.829205>,  <3.594178, 3.843843, 1.879049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.465446, 3.468418, 1.829205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161693, 0.184163, -0.969505,
		0.932889, -0.291867, -0.211028,
		-0.321830, -0.938562, -0.124610,
		3.368896, 3.186850, 1.791821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.156265, 3.391531, 1.384810>,  <3.594178, 3.843843, 1.879049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.156265, 3.391531, 1.384810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.772462, 3.279610, 1.397816>,  <3.542180, 3.212457, 1.405619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.772462, 3.279610, 1.397816>,  <4.156265, 3.391531, 1.384810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.772462, 3.279610, 1.397816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042264, 0.028884, -0.998689,
		0.278497, -0.959623, -0.039540,
		-0.959507, -0.279803, 0.032514,
		3.484610, 3.195669, 1.407570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.964025, 2.790500, 1.009779>,  <4.156265, 3.391531, 1.384810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.964025, 2.790500, 1.009779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.628072, 3.007057, 1.025223>,  <3.426500, 3.136992, 1.034489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.628072, 3.007057, 1.025223>,  <3.964025, 2.790500, 1.009779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.628072, 3.007057, 1.025223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104763, -0.091904, -0.990242,
		-0.532563, -0.835731, 0.133907,
		-0.839882, 0.541394, 0.038609,
		3.376107, 3.169475, 1.036805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.365140, 2.323800, 0.754396>,  <3.964025, 2.790500, 1.009779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.365140, 2.323800, 0.754396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.259870, 2.708733, 0.727104>,  <3.196707, 2.939692, 0.710729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.259870, 2.708733, 0.727104>,  <3.365140, 2.323800, 0.754396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.259870, 2.708733, 0.727104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024243, -0.077298, -0.996713,
		-0.964443, -0.260658, 0.043673,
		-0.263177, 0.962332, -0.068230,
		3.180917, 2.997432, 0.706635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.646142, 2.379571, 0.348810>,  <3.365140, 2.323800, 0.754396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.646142, 2.379571, 0.348810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858121, 2.718063, 0.326721>,  <2.985308, 2.921159, 0.313468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858121, 2.718063, 0.326721>,  <2.646142, 2.379571, 0.348810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858121, 2.718063, 0.326721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169574, 0.041941, -0.984625,
		-0.830904, 0.531163, 0.165725,
		0.529947, 0.846231, -0.055222,
		3.017105, 2.971933, 0.310155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.305240, 2.726420, -0.162703>,  <2.646142, 2.379571, 0.348810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.305240, 2.726420, -0.162703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.647005, 2.932781, -0.137962>,  <2.852064, 3.056598, -0.123118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.647005, 2.932781, -0.137962>,  <2.305240, 2.726420, -0.162703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.647005, 2.932781, -0.137962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027725, 0.073600, -0.996902,
		-0.518857, 0.853480, 0.048581,
		0.854411, 0.515902, 0.061851,
		2.903329, 3.087552, -0.119407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.312740, 3.223955, -0.722973>,  <2.305240, 2.726420, -0.162703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.312740, 3.223955, -0.722973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698818, 3.172462, -0.631912>,  <2.930465, 3.141567, -0.577276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.698818, 3.172462, -0.631912>,  <2.312740, 3.223955, -0.722973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.698818, 3.172462, -0.631912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218412, -0.082025, -0.972403,
		0.143852, 0.988281, -0.051054,
		0.965196, -0.128731, 0.227652,
		2.988377, 3.133843, -0.563617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.352432, 2.276161, 3.297076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.605700, 2.571503, 3.389969>,  <3.757660, 2.748707, 3.445705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.605700, 2.571503, 3.389969>,  <3.352432, 2.276161, 3.297076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.605700, 2.571503, 3.389969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447505, 0.104401, 0.888166,
		0.631535, -0.666284, 0.396520,
		0.633169, 0.738353, 0.232233,
		3.795650, 2.793009, 3.459639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.652241, 2.081872, 3.966536>,  <3.352432, 2.276161, 3.297076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.652241, 2.081872, 3.966536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666920, 2.471516, 3.877304>,  <3.675727, 2.705302, 3.823765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666920, 2.471516, 3.877304>,  <3.652241, 2.081872, 3.966536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.666920, 2.471516, 3.877304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353419, 0.221454, 0.908874,
		0.934745, 0.045488, 0.352396,
		0.036696, 0.974109, -0.223080,
		3.677929, 2.763748, 3.810380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.118204, 2.536459, 4.310271>,  <3.652241, 2.081872, 3.966536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.118204, 2.536459, 4.310271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.816660, 2.775227, 4.200447>,  <3.635733, 2.918487, 4.134552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.816660, 2.775227, 4.200447>,  <4.118204, 2.536459, 4.310271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816660, 2.775227, 4.200447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153404, 0.246422, 0.956945,
		0.638875, 0.763521, -0.094198,
		-0.753860, 0.596918, -0.274560,
		3.590502, 2.954302, 4.118079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.244332, 3.052843, 4.715988>,  <4.118204, 2.536459, 4.310271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.244332, 3.052843, 4.715988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851870, 3.085785, 4.646072>,  <3.616392, 3.105550, 4.604123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.851870, 3.085785, 4.646072>,  <4.244332, 3.052843, 4.715988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.851870, 3.085785, 4.646072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154206, 0.211302, 0.965180,
		0.116420, 0.973945, -0.194621,
		-0.981156, 0.082354, -0.174788,
		3.557523, 3.110491, 4.593636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027775, 3.740358, 4.869023>,  <4.244332, 3.052843, 4.715988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027775, 3.740358, 4.869023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.693398, 3.522522, 4.896210>,  <3.492771, 3.391820, 4.912522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.693398, 3.522522, 4.896210>,  <4.027775, 3.740358, 4.869023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.693398, 3.522522, 4.896210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116558, 0.297189, 0.947678,
		-0.536296, 0.784283, -0.311909,
		-0.835943, -0.544591, 0.067967,
		3.442615, 3.359145, 4.916600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.527276, 4.184155, 5.221641>,  <4.027775, 3.740358, 4.869023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.527276, 4.184155, 5.221641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.360035, 3.822796, 5.259720>,  <3.259691, 3.605980, 5.282567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.360035, 3.822796, 5.259720>,  <3.527276, 4.184155, 5.221641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.360035, 3.822796, 5.259720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230694, 0.206956, 0.950762,
		-0.878619, 0.375554, -0.294937,
		-0.418102, -0.903398, 0.095197,
		3.234604, 3.551776, 5.288279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.013438, 4.282807, 5.677459>,  <3.527276, 4.184155, 5.221641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.013438, 4.282807, 5.677459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.083393, 3.888973, 5.678398>,  <3.125366, 3.652673, 5.678961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.083393, 3.888973, 5.678398>,  <3.013438, 4.282807, 5.677459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.083393, 3.888973, 5.678398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142075, -0.022878, 0.989591,
		-0.974284, -0.173401, -0.143886,
		0.174888, -0.984586, 0.002347,
		3.135859, 3.593598, 5.679102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.362289, 3.824505, 5.960337>,  <3.013438, 4.282807, 5.677459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.362289, 3.824505, 5.960337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727247, 3.668144, 6.008888>,  <2.946222, 3.574328, 6.038019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727247, 3.668144, 6.008888>,  <2.362289, 3.824505, 5.960337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727247, 3.668144, 6.008888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190754, -0.143715, 0.971061,
		-0.362147, -0.909143, -0.205691,
		0.912394, -0.390903, 0.121377,
		3.000966, 3.550874, 6.045301>
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
