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
	<2.095615, 5.167610, 3.912501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831329, 5.009960, 3.656963>,  <1.672758, 4.915370, 3.503641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.831329, 5.009960, 3.656963>,  <2.095615, 5.167610, 3.912501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.831329, 5.009960, 3.656963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510656, -0.859782, 0.002292,
		-0.550170, -0.324715, 0.769333,
		-0.660714, -0.394125, -0.638844,
		1.633115, 4.891723, 3.465310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.887816, 4.525512, 4.237819>,  <2.095615, 5.167610, 3.912501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.887816, 4.525512, 4.237819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802204, 4.541248, 3.847405>,  <1.750837, 4.550690, 3.613157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.802204, 4.541248, 3.847405>,  <1.887816, 4.525512, 4.237819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802204, 4.541248, 3.847405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587458, -0.793120, -0.160790,
		-0.780438, -0.607793, 0.146641,
		-0.214031, 0.039341, -0.976034,
		1.737995, 4.553051, 3.554595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.514528, 3.897710, 3.853109>,  <1.887816, 4.525512, 4.237819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.514528, 3.897710, 3.853109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778931, 4.103405, 3.634520>,  <1.937572, 4.226822, 3.503367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778931, 4.103405, 3.634520>,  <1.514528, 3.897710, 3.853109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778931, 4.103405, 3.634520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629217, -0.776640, 0.030264,
		-0.408849, -0.363854, -0.836930,
		0.661006, 0.514237, -0.546472,
		1.977232, 4.257676, 3.470578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.742841, 3.515103, 3.166753>,  <1.514528, 3.897710, 3.853109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.742841, 3.515103, 3.166753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.026440, 3.742153, 3.334145>,  <2.196599, 3.878383, 3.434580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.026440, 3.742153, 3.334145>,  <1.742841, 3.515103, 3.166753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.026440, 3.742153, 3.334145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675068, -0.717918, -0.169932,
		0.203976, 0.402984, -0.892187,
		0.708997, 0.567625, 0.418480,
		2.239139, 3.912441, 3.459688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.398832, 3.405341, 2.711459>,  <1.742841, 3.515103, 3.166753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.398832, 3.405341, 2.711459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.542301, 3.566303, 3.048368>,  <2.628382, 3.662881, 3.250514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.542301, 3.566303, 3.048368>,  <2.398832, 3.405341, 2.711459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.542301, 3.566303, 3.048368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820261, -0.566562, -0.078617,
		0.445564, 0.719081, -0.533287,
		0.358672, 0.402406, 0.842273,
		2.649903, 3.687025, 3.301050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016631, 3.581629, 2.556263>,  <2.398832, 3.405341, 2.711459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016631, 3.581629, 2.556263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.021584, 3.551962, 2.955131>,  <3.024555, 3.534162, 3.194451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.021584, 3.551962, 2.955131>,  <3.016631, 3.581629, 2.556263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.021584, 3.551962, 2.955131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874342, -0.483050, -0.046785,
		0.485152, 0.872446, 0.058866,
		0.012382, -0.074167, 0.997169,
		3.025298, 3.529711, 3.254281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763194, 3.646451, 2.766838>,  <3.016631, 3.581629, 2.556263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763194, 3.646451, 2.766838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563583, 3.460472, 3.059358>,  <3.443817, 3.348885, 3.234869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563583, 3.460472, 3.059358>,  <3.763194, 3.646451, 2.766838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563583, 3.460472, 3.059358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677532, -0.735474, -0.005265,
		0.540300, 0.492852, 0.682036,
		-0.499025, -0.464946, 0.731299,
		3.413876, 3.320988, 3.278748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.314416, 3.415544, 3.161136>,  <3.763194, 3.646451, 2.766838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.314416, 3.415544, 3.161136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.001713, 3.175993, 3.230648>,  <3.814091, 3.032262, 3.272355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.001713, 3.175993, 3.230648>,  <4.314416, 3.415544, 3.161136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.001713, 3.175993, 3.230648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587325, -0.800775, -0.117507,
		0.209532, 0.010203, 0.977749,
		-0.781758, -0.598878, 0.173781,
		3.767185, 2.996330, 3.282782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.444978, 1.564843, 2.966206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.325920, 1.608948, 3.345521>,  <4.254485, 1.635412, 3.573110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.325920, 1.608948, 3.345521>,  <4.444978, 1.564843, 2.966206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.325920, 1.608948, 3.345521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494392, 0.831935, -0.251913,
		-0.816691, -0.543806, -0.193108,
		-0.297645, 0.110264, 0.948288,
		4.236627, 1.642027, 3.630007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.849639, 1.741550, 2.860272>,  <4.444978, 1.564843, 2.966206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.849639, 1.741550, 2.860272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.886124, 1.823602, 3.250062>,  <3.908015, 1.872833, 3.483936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.886124, 1.823602, 3.250062>,  <3.849639, 1.741550, 2.860272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.886124, 1.823602, 3.250062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795018, 0.604284, -0.052788,
		-0.599689, -0.769911, 0.218199,
		0.091212, 0.205128, 0.974476,
		3.913487, 1.885140, 3.542405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.190541, 2.082327, 2.897627>,  <3.849639, 1.741550, 2.860272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.190541, 2.082327, 2.897627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396561, 2.227445, 3.208266>,  <3.520172, 2.314515, 3.394650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396561, 2.227445, 3.208266>,  <3.190541, 2.082327, 2.897627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396561, 2.227445, 3.208266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685676, 0.718065, 0.119298,
		-0.514367, -0.593939, 0.618598,
		0.515049, 0.362795, 0.776598,
		3.551075, 2.336283, 3.441246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.695998, 2.167666, 3.579447>,  <3.190541, 2.082327, 2.897627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.695998, 2.167666, 3.579447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002495, 2.421225, 3.537403>,  <3.186393, 2.573360, 3.512177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.002495, 2.421225, 3.537403>,  <2.695998, 2.167666, 3.579447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.002495, 2.421225, 3.537403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629998, 0.773329, 0.071160,
		0.126391, 0.011692, 0.991912,
		0.766242, 0.633897, -0.105108,
		3.232368, 2.611394, 3.505871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.750963, 2.670224, 4.159120>,  <2.695998, 2.167666, 3.579447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.750963, 2.670224, 4.159120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944336, 2.881929, 3.880216>,  <3.060360, 3.008953, 3.712873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.944336, 2.881929, 3.880216>,  <2.750963, 2.670224, 4.159120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.944336, 2.881929, 3.880216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477952, 0.826905, 0.296293,
		0.733385, 0.190019, 0.652717,
		0.483434, 0.529265, -0.697260,
		3.089366, 3.040709, 3.671038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.983325, 3.324951, 4.503602>,  <2.750963, 2.670224, 4.159120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.983325, 3.324951, 4.503602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.978157, 3.384991, 4.108168>,  <2.975057, 3.421015, 3.870907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.978157, 3.384991, 4.108168>,  <2.983325, 3.324951, 4.503602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.978157, 3.384991, 4.108168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486316, 0.862917, 0.137373,
		0.873688, 0.482540, 0.061848,
		-0.012919, 0.150099, -0.988587,
		2.974282, 3.430020, 3.811592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.097768, 4.021117, 4.442718>,  <2.983325, 3.324951, 4.503602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.097768, 4.021117, 4.442718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.935989, 3.937483, 4.086581>,  <2.838922, 3.887302, 3.872900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.935989, 3.937483, 4.086581>,  <3.097768, 4.021117, 4.442718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.935989, 3.937483, 4.086581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513132, 0.857725, 0.031670,
		0.757046, 0.469671, -0.454192,
		-0.404447, -0.209085, -0.890340,
		2.814655, 3.874757, 3.819479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.198969, 4.609933, 3.935287>,  <3.097768, 4.021117, 4.442718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.198969, 4.609933, 3.935287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.887825, 4.389006, 3.815367>,  <2.701139, 4.256449, 3.743415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.887825, 4.389006, 3.815367>,  <3.198969, 4.609933, 3.935287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.887825, 4.389006, 3.815367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518712, 0.833597, -0.189880,
		0.354786, 0.007810, -0.934915,
		-0.777859, -0.552318, -0.299800,
		2.654467, 4.223310, 3.725427>
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
