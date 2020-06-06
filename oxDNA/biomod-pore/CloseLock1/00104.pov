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
	<24.297421, 34.969852, 35.146793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313951, 35.114502, 34.774231>,  <24.323870, 35.201294, 34.550694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313951, 35.114502, 34.774231>,  <24.297421, 34.969852, 35.146793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313951, 35.114502, 34.774231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306090, 0.882799, 0.356336,
		0.951105, -0.299821, -0.074205,
		0.041329, 0.361626, -0.931407,
		24.326349, 35.222988, 34.494808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993837, 35.113716, 34.864830>,  <24.297421, 34.969852, 35.146793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993837, 35.113716, 34.864830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694614, 35.348751, 34.741447>,  <24.515079, 35.489773, 34.667419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.694614, 35.348751, 34.741447>,  <24.993837, 35.113716, 34.864830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694614, 35.348751, 34.741447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376024, 0.758279, 0.532559,
		0.546822, 0.282398, -0.788186,
		-0.748058, 0.587592, -0.308456,
		24.470198, 35.525028, 34.648911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335012, 35.711380, 34.665039>,  <24.993837, 35.113716, 34.864830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335012, 35.711380, 34.665039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956823, 35.752121, 34.788788>,  <24.729910, 35.776566, 34.863037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.956823, 35.752121, 34.788788>,  <25.335012, 35.711380, 34.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.956823, 35.752121, 34.788788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271790, 0.770147, 0.577065,
		-0.179483, 0.629682, -0.755835,
		-0.945472, 0.101855, 0.309369,
		24.673182, 35.782677, 34.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277426, 36.385292, 34.623802>,  <25.335012, 35.711380, 34.665039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277426, 36.385292, 34.623802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003689, 36.260956, 34.887634>,  <24.839447, 36.186352, 35.045933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003689, 36.260956, 34.887634>,  <25.277426, 36.385292, 34.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003689, 36.260956, 34.887634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286097, 0.717572, 0.635010,
		-0.670688, 0.623270, -0.402134,
		-0.684344, -0.310844, 0.659583,
		24.798386, 36.167702, 35.085510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743994, 36.835087, 34.715668>,  <25.277426, 36.385292, 34.623802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743994, 36.835087, 34.715668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852913, 36.668392, 35.062580>,  <24.918264, 36.568375, 35.270729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852913, 36.668392, 35.062580>,  <24.743994, 36.835087, 34.715668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852913, 36.668392, 35.062580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287791, 0.895358, 0.339869,
		-0.918167, 0.157052, 0.363737,
		0.272297, -0.416737, 0.867286,
		24.934603, 36.543369, 35.322765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.353607, 37.071724, 35.458275>,  <24.743994, 36.835087, 34.715668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.353607, 37.071724, 35.458275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735853, 36.964306, 35.506752>,  <24.965200, 36.899857, 35.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735853, 36.964306, 35.506752>,  <24.353607, 37.071724, 35.458275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735853, 36.964306, 35.506752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248043, 0.955288, 0.160932,
		-0.158990, -0.123728, 0.979496,
		0.955613, -0.268544, 0.121192,
		25.022537, 36.883743, 35.543110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.595610, 37.391785, 36.127766>,  <24.353607, 37.071724, 35.458275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.595610, 37.391785, 36.127766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902397, 37.296513, 35.889431>,  <25.086470, 37.239349, 35.746429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902397, 37.296513, 35.889431>,  <24.595610, 37.391785, 36.127766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902397, 37.296513, 35.889431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438301, 0.872648, 0.215353,
		0.468667, -0.426328, 0.773690,
		0.766970, -0.238180, -0.595841,
		25.132488, 37.225060, 35.710678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195795, 37.608452, 36.529106>,  <24.595610, 37.391785, 36.127766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195795, 37.608452, 36.529106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301569, 37.587849, 36.143894>,  <25.365034, 37.575489, 35.912769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301569, 37.587849, 36.143894>,  <25.195795, 37.608452, 36.529106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301569, 37.587849, 36.143894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534140, 0.839247, 0.101782,
		0.802975, -0.541306, 0.249436,
		0.264434, -0.051505, -0.963027,
		25.380899, 37.572395, 35.854984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877388, 37.852139, 36.579853>,  <25.195795, 37.608452, 36.529106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877388, 37.852139, 36.579853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781685, 37.883308, 36.192722>,  <25.724262, 37.902012, 35.960445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781685, 37.883308, 36.192722>,  <25.877388, 37.852139, 36.579853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781685, 37.883308, 36.192722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504611, 0.861569, -0.055374,
		0.829532, -0.501624, -0.245460,
		-0.239258, 0.077927, -0.967824,
		25.709908, 37.906685, 35.902374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496063, 38.034416, 36.345623>,  <25.877388, 37.852139, 36.579853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496063, 38.034416, 36.345623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228031, 38.146988, 36.070873>,  <26.067213, 38.214531, 35.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228031, 38.146988, 36.070873>,  <26.496063, 38.034416, 36.345623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228031, 38.146988, 36.070873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499096, 0.855765, -0.136267,
		0.549452, -0.434125, -0.713890,
		-0.670079, 0.281427, -0.686872,
		26.027008, 38.231415, 35.864811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899403, 38.430904, 35.931473>,  <26.496063, 38.034416, 36.345623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899403, 38.430904, 35.931473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531477, 38.520672, 35.802738>,  <26.310722, 38.574532, 35.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531477, 38.520672, 35.802738>,  <26.899403, 38.430904, 35.931473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531477, 38.520672, 35.802738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241216, 0.970388, -0.012752,
		0.309447, -0.089362, -0.946708,
		-0.919814, 0.224415, -0.321839,
		26.255533, 38.587997, 35.706188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887989, 38.927235, 35.267303>,  <26.899403, 38.430904, 35.931473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887989, 38.927235, 35.267303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540005, 38.954971, 35.462593>,  <26.331215, 38.971615, 35.579765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540005, 38.954971, 35.462593>,  <26.887989, 38.927235, 35.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540005, 38.954971, 35.462593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153291, 0.979040, 0.134098,
		-0.468693, 0.191500, -0.862354,
		-0.869959, 0.069340, 0.488225,
		26.279016, 38.975773, 35.609062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581207, 39.530144, 35.041348>,  <26.887989, 38.927235, 35.267303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581207, 39.530144, 35.041348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415161, 39.484138, 35.402336>,  <26.315533, 39.456535, 35.618927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415161, 39.484138, 35.402336>,  <26.581207, 39.530144, 35.041348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415161, 39.484138, 35.402336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000275, 0.991993, 0.126296,
		-0.909768, 0.052179, -0.411825,
		-0.415117, -0.115013, 0.902469,
		26.290627, 39.449635, 35.673077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932814, 39.866882, 34.992905>,  <26.581207, 39.530144, 35.041348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932814, 39.866882, 34.992905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037186, 39.861343, 35.379009>,  <26.099808, 39.858021, 35.610672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037186, 39.861343, 35.379009>,  <25.932814, 39.866882, 34.992905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037186, 39.861343, 35.379009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034002, 0.999145, 0.023525,
		-0.964759, -0.038959, 0.260235,
		0.260929, -0.013848, 0.965258,
		26.115465, 39.857189, 35.668587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411674, 40.224403, 35.334858>,  <25.932814, 39.866882, 34.992905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411674, 40.224403, 35.334858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735514, 40.251606, 35.568069>,  <25.929817, 40.267929, 35.707996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735514, 40.251606, 35.568069>,  <25.411674, 40.224403, 35.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735514, 40.251606, 35.568069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133708, 0.988520, 0.070361,
		-0.571555, -0.134921, 0.809396,
		0.809597, 0.068008, 0.583033,
		25.978394, 40.272007, 35.742981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311726, 40.826942, 35.681061>,  <25.411674, 40.224403, 35.334858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311726, 40.826942, 35.681061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692165, 40.778976, 35.794926>,  <25.920429, 40.750198, 35.863243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692165, 40.778976, 35.794926>,  <25.311726, 40.826942, 35.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692165, 40.778976, 35.794926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034000, 0.956612, 0.289375,
		-0.307011, -0.265546, 0.913909,
		0.951098, -0.119915, 0.284662,
		25.977495, 40.743004, 35.880325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321762, 41.137058, 36.245419>,  <25.311726, 40.826942, 35.681061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321762, 41.137058, 36.245419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711720, 41.087055, 36.171711>,  <25.945694, 41.057053, 36.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711720, 41.087055, 36.171711>,  <25.321762, 41.137058, 36.245419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711720, 41.087055, 36.171711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179325, 0.931359, 0.316880,
		0.132006, -0.341969, 0.930393,
		0.974894, -0.125012, -0.184269,
		26.004187, 41.049553, 36.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746595, 41.373566, 36.901562>,  <25.321762, 41.137058, 36.245419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746595, 41.373566, 36.901562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980049, 41.411964, 36.579033>,  <26.120121, 41.435005, 36.385517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980049, 41.411964, 36.579033>,  <25.746595, 41.373566, 36.901562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980049, 41.411964, 36.579033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205060, 0.943380, 0.260739,
		0.785699, -0.317520, 0.530903,
		0.583633, 0.095995, -0.806324,
		26.155140, 41.440762, 36.337135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193085, 41.775654, 37.193996>,  <25.746595, 41.373566, 36.901562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193085, 41.775654, 37.193996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276203, 41.811054, 36.804333>,  <26.326075, 41.832294, 36.570534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276203, 41.811054, 36.804333>,  <26.193085, 41.775654, 37.193996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276203, 41.811054, 36.804333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070610, 0.991943, 0.105180,
		0.975620, -0.090642, 0.199873,
		0.207796, 0.088502, -0.974160,
		26.338543, 41.837605, 36.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788025, 42.242252, 37.012268>,  <26.193085, 41.775654, 37.193996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788025, 42.242252, 37.012268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564631, 42.235489, 36.680531>,  <26.430593, 42.231430, 36.481487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564631, 42.235489, 36.680531>,  <26.788025, 42.242252, 37.012268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564631, 42.235489, 36.680531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089999, 0.995125, 0.040321,
		0.824617, 0.097159, -0.557285,
		-0.558486, -0.016906, -0.829342,
		26.397085, 42.230415, 36.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024841, 42.779030, 36.571663>,  <26.788025, 42.242252, 37.012268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024841, 42.779030, 36.571663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662941, 42.699047, 36.421227>,  <26.445801, 42.651058, 36.330967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662941, 42.699047, 36.421227>,  <27.024841, 42.779030, 36.571663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662941, 42.699047, 36.421227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133014, 0.971442, -0.196490,
		0.404637, -0.127749, -0.905510,
		-0.904752, -0.199953, -0.376089,
		26.391516, 42.639061, 36.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906660, 43.324924, 36.188583>,  <27.024841, 42.779030, 36.571663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906660, 43.324924, 36.188583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534744, 43.180092, 36.215076>,  <26.311594, 43.093193, 36.230972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534744, 43.180092, 36.215076>,  <26.906660, 43.324924, 36.188583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534744, 43.180092, 36.215076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365957, 0.928655, -0.060630,
		-0.039552, -0.080610, -0.995961,
		-0.929791, -0.362080, 0.066229,
		26.255806, 43.071468, 36.234943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522598, 43.614975, 35.594112>,  <26.906660, 43.324924, 36.188583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522598, 43.614975, 35.594112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264072, 43.489262, 35.872250>,  <26.108957, 43.413834, 36.039131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264072, 43.489262, 35.872250>,  <26.522598, 43.614975, 35.594112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264072, 43.489262, 35.872250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472413, 0.880415, -0.041177,
		-0.599250, -0.355104, -0.717497,
		-0.646317, -0.314279, 0.695344,
		26.070177, 43.394978, 36.080853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064901, 44.060635, 35.588924>,  <26.522598, 43.614975, 35.594112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064901, 44.060635, 35.588924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932627, 43.920147, 35.939304>,  <25.853262, 43.835854, 36.149532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932627, 43.920147, 35.939304>,  <26.064901, 44.060635, 35.588924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932627, 43.920147, 35.939304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448933, 0.874969, 0.181351,
		-0.830125, -0.333274, -0.447014,
		-0.330684, -0.351224, 0.875951,
		25.833422, 43.814781, 36.202091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.369736, 44.271351, 35.783478>,  <26.064901, 44.060635, 35.588924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.369736, 44.271351, 35.783478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545940, 44.229687, 36.140152>,  <25.651663, 44.204689, 36.354156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.545940, 44.229687, 36.140152>,  <25.369736, 44.271351, 35.783478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.545940, 44.229687, 36.140152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471554, 0.818347, 0.328550,
		-0.763928, -0.565207, 0.311375,
		0.440512, -0.104158, 0.891684,
		25.678095, 44.198441, 36.407658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974268, 44.040951, 36.423679>,  <25.369736, 44.271351, 35.783478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974268, 44.040951, 36.423679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261086, 44.310070, 36.496552>,  <25.433176, 44.471542, 36.540276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261086, 44.310070, 36.496552>,  <24.974268, 44.040951, 36.423679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261086, 44.310070, 36.496552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688945, 0.644413, 0.331793,
		0.105830, -0.363423, 0.925594,
		0.717046, 0.672797, 0.182180,
		25.476200, 44.511909, 36.551205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957880, 44.173080, 37.117981>,  <24.974268, 44.040951, 36.423679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957880, 44.173080, 37.117981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080803, 44.487946, 36.904091>,  <25.154556, 44.676865, 36.775757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080803, 44.487946, 36.904091>,  <24.957880, 44.173080, 37.117981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080803, 44.487946, 36.904091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671114, 0.577655, 0.464673,
		0.674661, 0.216063, 0.705797,
		0.307308, 0.787167, -0.534724,
		25.172997, 44.724094, 36.743675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850824, 43.601322, 37.663612>,  <24.957880, 44.173080, 37.117981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850824, 43.601322, 37.663612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198202, 43.785786, 37.736423>,  <25.406630, 43.896465, 37.780109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198202, 43.785786, 37.736423>,  <24.850824, 43.601322, 37.663612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198202, 43.785786, 37.736423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, 0.837721, -0.411949,
		-0.342465, 0.292498, 0.892840,
		0.868445, 0.461160, 0.182030,
		25.458736, 43.924133, 37.791031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447824, 43.553242, 38.284416>,  <24.850824, 43.601322, 37.663612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447824, 43.553242, 38.284416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516378, 43.890587, 38.488125>,  <24.557510, 44.092995, 38.610352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516378, 43.890587, 38.488125>,  <24.447824, 43.553242, 38.284416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516378, 43.890587, 38.488125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131093, -0.492804, 0.860209,
		0.976443, -0.214190, 0.026100,
		0.171386, 0.843367, 0.509274,
		24.567795, 44.143597, 38.640907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010773, 43.377995, 38.687702>,  <24.447824, 43.553242, 38.284416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010773, 43.377995, 38.687702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784103, 43.660309, 38.857758>,  <24.648102, 43.829697, 38.959793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784103, 43.660309, 38.857758>,  <25.010773, 43.377995, 38.687702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784103, 43.660309, 38.857758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097268, -0.569682, 0.816089,
		0.818180, 0.421105, 0.391475,
		-0.566675, 0.705785, 0.425143,
		24.614101, 43.872044, 38.985302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222099, 43.760513, 39.298286>,  <25.010773, 43.377995, 38.687702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222099, 43.760513, 39.298286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824623, 43.715813, 39.302166>,  <24.586138, 43.688992, 39.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824623, 43.715813, 39.302166>,  <25.222099, 43.760513, 39.298286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824623, 43.715813, 39.302166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064425, -0.497817, 0.864886,
		-0.091828, 0.860052, 0.501875,
		-0.993689, -0.111754, 0.009695,
		24.526516, 43.682285, 39.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723082, 44.116589, 39.786030>,  <25.222099, 43.760513, 39.298286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723082, 44.116589, 39.786030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639681, 43.742062, 39.673008>,  <24.589640, 43.517345, 39.605194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639681, 43.742062, 39.673008>,  <24.723082, 44.116589, 39.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639681, 43.742062, 39.673008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177565, -0.320344, 0.930511,
		-0.961768, 0.143841, 0.233049,
		-0.208502, -0.936317, -0.282556,
		24.577129, 43.461166, 39.588242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889236, 43.826359, 40.497444>,  <24.723082, 44.116589, 39.786030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889236, 43.826359, 40.497444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184406, 43.728161, 40.748901>,  <25.361509, 43.669243, 40.899776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184406, 43.728161, 40.748901>,  <24.889236, 43.826359, 40.497444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184406, 43.728161, 40.748901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394951, -0.598238, -0.697227,
		0.547246, 0.762787, -0.344497,
		0.737927, -0.245495, 0.628646,
		25.405785, 43.654510, 40.937496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423998, 43.769215, 40.079800>,  <24.889236, 43.826359, 40.497444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423998, 43.769215, 40.079800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526098, 43.586063, 40.420433>,  <25.587358, 43.476173, 40.624813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526098, 43.586063, 40.420433>,  <25.423998, 43.769215, 40.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526098, 43.586063, 40.420433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431389, -0.734300, -0.524125,
		0.865304, 0.501146, 0.010096,
		0.255250, -0.457883, 0.851581,
		25.602673, 43.448700, 40.675907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125601, 43.755608, 40.340500>,  <25.423998, 43.769215, 40.079800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125601, 43.755608, 40.340500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947803, 43.421684, 40.470440>,  <25.841125, 43.221333, 40.548405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947803, 43.421684, 40.470440>,  <26.125601, 43.755608, 40.340500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947803, 43.421684, 40.470440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494590, -0.531068, -0.688002,
		0.746864, -0.145146, 0.648943,
		-0.444494, -0.834805, 0.324848,
		25.814455, 43.171242, 40.567894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626719, 43.214077, 40.181000>,  <26.125601, 43.755608, 40.340500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626719, 43.214077, 40.181000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273243, 43.037708, 40.243843>,  <26.061157, 42.931889, 40.281548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273243, 43.037708, 40.243843>,  <26.626719, 43.214077, 40.181000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273243, 43.037708, 40.243843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314160, -0.807514, -0.499223,
		0.346984, -0.391802, 0.852111,
		-0.883689, -0.440922, 0.157106,
		26.008137, 42.905430, 40.290974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722687, 42.646599, 40.565163>,  <26.626719, 43.214077, 40.181000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722687, 42.646599, 40.565163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386517, 42.595352, 40.354534>,  <26.184814, 42.564606, 40.228157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386517, 42.595352, 40.354534>,  <26.722687, 42.646599, 40.565163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386517, 42.595352, 40.354534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388520, -0.819831, -0.420630,
		-0.377808, -0.558090, 0.738780,
		-0.840425, -0.128113, -0.526568,
		26.134390, 42.556919, 40.196564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579906, 41.999748, 40.641705>,  <26.722687, 42.646599, 40.565163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579906, 41.999748, 40.641705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392080, 42.129456, 40.313229>,  <26.279385, 42.207279, 40.116142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392080, 42.129456, 40.313229>,  <26.579906, 41.999748, 40.641705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392080, 42.129456, 40.313229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476757, -0.689721, -0.544965,
		-0.743110, -0.647406, 0.169270,
		-0.469563, 0.324268, -0.821194,
		26.251211, 42.226734, 40.066872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574881, 41.452297, 40.379700>,  <26.579906, 41.999748, 40.641705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574881, 41.452297, 40.379700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450764, 41.669350, 40.067478>,  <26.376293, 41.799583, 39.880146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450764, 41.669350, 40.067478>,  <26.574881, 41.452297, 40.379700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450764, 41.669350, 40.067478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301032, -0.722743, -0.622111,
		-0.901720, -0.428009, 0.060911,
		-0.310292, 0.542633, -0.780556,
		26.357676, 41.832138, 39.833313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116899, 41.041534, 40.029419>,  <26.574881, 41.452297, 40.379700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116899, 41.041534, 40.029419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250679, 41.321072, 39.776512>,  <26.330948, 41.488792, 39.624767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.250679, 41.321072, 39.776512>,  <26.116899, 41.041534, 40.029419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250679, 41.321072, 39.776512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408218, -0.712124, -0.571172,
		-0.849412, -0.067075, -0.523450,
		0.334450, 0.698842, -0.632268,
		26.351013, 41.530724, 39.586830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755695, 40.950554, 39.289906>,  <26.116899, 41.041534, 40.029419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755695, 40.950554, 39.289906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111616, 41.132862, 39.280731>,  <26.325169, 41.242249, 39.275227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111616, 41.132862, 39.280731>,  <25.755695, 40.950554, 39.289906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111616, 41.132862, 39.280731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326509, -0.670944, -0.665752,
		-0.318819, 0.584899, -0.745820,
		0.889801, 0.455771, -0.022934,
		26.378557, 41.269592, 39.273849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934950, 40.889267, 38.563251>,  <25.755695, 40.950554, 39.289906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934950, 40.889267, 38.563251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280476, 40.990051, 38.737762>,  <26.487791, 41.050522, 38.842468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280476, 40.990051, 38.737762>,  <25.934950, 40.889267, 38.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280476, 40.990051, 38.737762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471813, -0.708251, -0.525141,
		0.176674, 0.659465, -0.730680,
		0.863816, 0.251965, 0.436274,
		26.539621, 41.065639, 38.868645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403227, 40.629589, 38.067619>,  <25.934950, 40.889267, 38.563251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403227, 40.629589, 38.067619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644310, 40.710102, 38.376484>,  <26.788960, 40.758411, 38.561802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644310, 40.710102, 38.376484>,  <26.403227, 40.629589, 38.067619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644310, 40.710102, 38.376484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684465, -0.627825, -0.370600,
		0.410184, 0.751878, -0.516167,
		0.602708, 0.201284, 0.772158,
		26.825123, 40.770489, 38.608131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064329, 40.652206, 37.708611>,  <26.403227, 40.629589, 38.067619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064329, 40.652206, 37.708611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144392, 40.594425, 38.096233>,  <27.192429, 40.559757, 38.328808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144392, 40.594425, 38.096233>,  <27.064329, 40.652206, 37.708611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144392, 40.594425, 38.096233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618810, -0.748190, -0.239345,
		0.759613, 0.647568, -0.060365,
		0.200156, -0.144455, 0.969056,
		27.204439, 40.551090, 38.386951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769611, 40.471691, 37.829624>,  <27.064329, 40.652206, 37.708611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769611, 40.471691, 37.829624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602505, 40.349335, 38.171829>,  <27.502241, 40.275921, 38.377151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602505, 40.349335, 38.171829>,  <27.769611, 40.471691, 37.829624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602505, 40.349335, 38.171829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559573, -0.828462, -0.022967,
		0.715785, 0.469127, 0.517274,
		-0.417768, -0.305892, 0.855512,
		27.477175, 40.257568, 38.428482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322315, 40.221451, 38.327431>,  <27.769611, 40.471691, 37.829624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322315, 40.221451, 38.327431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974560, 40.028473, 38.370152>,  <27.765905, 39.912685, 38.395782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974560, 40.028473, 38.370152>,  <28.322315, 40.221451, 38.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974560, 40.028473, 38.370152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461934, -0.870275, -0.170993,
		0.175440, -0.099325, 0.979467,
		-0.869390, -0.482448, 0.106799,
		27.713743, 39.883739, 38.402191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558178, 39.614189, 38.575325>,  <28.322315, 40.221451, 38.327431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558178, 39.614189, 38.575325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175636, 39.538326, 38.486408>,  <27.946112, 39.492809, 38.433060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175636, 39.538326, 38.486408>,  <28.558178, 39.614189, 38.575325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175636, 39.538326, 38.486408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234704, -0.951747, -0.197718,
		-0.174067, -0.241262, 0.954722,
		-0.956355, -0.189660, -0.222293,
		27.888729, 39.481430, 38.419720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409584, 38.950100, 38.944283>,  <28.558178, 39.614189, 38.575325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409584, 38.950100, 38.944283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161329, 38.995090, 38.633884>,  <28.012377, 39.022083, 38.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161329, 38.995090, 38.633884>,  <28.409584, 38.950100, 38.944283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161329, 38.995090, 38.633884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254831, -0.907002, -0.335274,
		-0.741534, -0.405830, 0.534256,
		-0.620636, 0.112472, -0.775991,
		27.975140, 39.028831, 38.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967077, 38.372627, 39.005054>,  <28.409584, 38.950100, 38.944283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967077, 38.372627, 39.005054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925114, 38.504601, 38.629791>,  <27.899935, 38.583782, 38.404633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925114, 38.504601, 38.629791>,  <27.967077, 38.372627, 39.005054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925114, 38.504601, 38.629791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113893, -0.933171, -0.340913,
		-0.987939, -0.142614, 0.060321,
		-0.104909, 0.329931, -0.938158,
		27.893641, 38.603580, 38.348343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690716, 37.861916, 38.602623>,  <27.967077, 38.372627, 39.005054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690716, 37.861916, 38.602623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797361, 38.092239, 38.293465>,  <27.861349, 38.230434, 38.107971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797361, 38.092239, 38.293465>,  <27.690716, 37.861916, 38.602623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797361, 38.092239, 38.293465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157949, -0.817183, -0.554315,
		-0.950773, 0.025711, -0.308821,
		0.266615, 0.575805, -0.772894,
		27.877346, 38.264980, 38.061596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477072, 37.466087, 38.023315>,  <27.690716, 37.861916, 38.602623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477072, 37.466087, 38.023315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700214, 37.748249, 37.848408>,  <27.834099, 37.917545, 37.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700214, 37.748249, 37.848408>,  <27.477072, 37.466087, 38.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700214, 37.748249, 37.848408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029377, -0.543322, -0.839010,
		-0.829418, 0.455201, -0.323818,
		0.557856, 0.705403, -0.437269,
		27.867571, 37.959869, 37.717228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133858, 37.718811, 37.389553>,  <27.477072, 37.466087, 38.023315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133858, 37.718811, 37.389553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527193, 37.778366, 37.347832>,  <27.763195, 37.814098, 37.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527193, 37.778366, 37.347832>,  <27.133858, 37.718811, 37.389553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527193, 37.778366, 37.347832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005918, -0.599686, -0.800214,
		-0.181689, 0.786263, -0.590575,
		0.983338, 0.148885, -0.104303,
		27.822195, 37.823032, 37.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274246, 37.952969, 36.665245>,  <27.133858, 37.718811, 37.389553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274246, 37.952969, 36.665245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602194, 37.783329, 36.819107>,  <27.798962, 37.681545, 36.911423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602194, 37.783329, 36.819107>,  <27.274246, 37.952969, 36.665245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602194, 37.783329, 36.819107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109939, -0.542714, -0.832691,
		0.561900, 0.724985, -0.398328,
		0.819867, -0.424098, 0.384655,
		27.848154, 37.656101, 36.934505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688633, 37.938778, 36.134235>,  <27.274246, 37.952969, 36.665245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688633, 37.938778, 36.134235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850616, 37.673004, 36.385483>,  <27.947807, 37.513538, 36.536232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850616, 37.673004, 36.385483>,  <27.688633, 37.938778, 36.134235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850616, 37.673004, 36.385483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218522, -0.596732, -0.772113,
		0.887838, 0.449933, -0.096459,
		0.404959, -0.664433, 0.628122,
		27.972105, 37.473675, 36.573917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364855, 37.775597, 35.823898>,  <27.688633, 37.938778, 36.134235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364855, 37.775597, 35.823898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277679, 37.480331, 36.079281>,  <28.225374, 37.303173, 36.232510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277679, 37.480331, 36.079281>,  <28.364855, 37.775597, 35.823898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277679, 37.480331, 36.079281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074389, -0.664841, -0.743272,
		0.973123, -0.114493, 0.199805,
		-0.217938, -0.738159, 0.638455,
		28.212297, 37.258884, 36.270817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864609, 37.185211, 35.756241>,  <28.364855, 37.775597, 35.823898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864609, 37.185211, 35.756241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526949, 37.027386, 35.901421>,  <28.324352, 36.932690, 35.988529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526949, 37.027386, 35.901421>,  <28.864609, 37.185211, 35.756241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526949, 37.027386, 35.901421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025712, -0.706020, -0.707725,
		0.535490, -0.588094, 0.606133,
		-0.844150, -0.394564, 0.362945,
		28.273705, 36.909016, 36.010303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914900, 36.440098, 35.604229>,  <28.864609, 37.185211, 35.756241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914900, 36.440098, 35.604229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523968, 36.486240, 35.675243>,  <28.289408, 36.513927, 35.717854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523968, 36.486240, 35.675243>,  <28.914900, 36.440098, 35.604229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523968, 36.486240, 35.675243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206298, -0.707428, -0.676008,
		0.047612, -0.697308, 0.715188,
		-0.977330, 0.115356, 0.177535,
		28.230768, 36.520847, 35.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686214, 35.775711, 35.724842>,  <28.914900, 36.440098, 35.604229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686214, 35.775711, 35.724842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372629, 35.995789, 35.609821>,  <28.184479, 36.127834, 35.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372629, 35.995789, 35.609821>,  <28.686214, 35.775711, 35.724842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372629, 35.995789, 35.609821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283429, -0.729303, -0.622724,
		-0.552331, -0.406694, 0.727689,
		-0.783964, 0.550198, -0.287548,
		28.137440, 36.160847, 35.523556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732454, 35.834496, 36.442554>,  <28.686214, 35.775711, 35.724842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732454, 35.834496, 36.442554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091885, 35.732983, 36.299358>,  <29.307543, 35.672073, 36.213440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091885, 35.732983, 36.299358>,  <28.732454, 35.834496, 36.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091885, 35.732983, 36.299358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431449, 0.362049, 0.826300,
		-0.080095, -0.896946, 0.434824,
		0.898575, -0.253787, -0.357988,
		29.361458, 35.656845, 36.191963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208164, 35.503971, 36.988262>,  <28.732454, 35.834496, 36.442554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208164, 35.503971, 36.988262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450953, 35.680538, 36.723919>,  <29.596624, 35.786480, 36.565311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450953, 35.680538, 36.723919>,  <29.208164, 35.503971, 36.988262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450953, 35.680538, 36.723919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598566, 0.293101, 0.745527,
		0.522789, -0.848081, -0.086314,
		0.606969, 0.441418, -0.660862,
		29.633043, 35.812965, 36.525661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845102, 35.359322, 37.160149>,  <29.208164, 35.503971, 36.988262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845102, 35.359322, 37.160149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909906, 35.696426, 36.954819>,  <29.948788, 35.898689, 36.831623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909906, 35.696426, 36.954819>,  <29.845102, 35.359322, 37.160149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909906, 35.696426, 36.954819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384853, 0.425038, 0.819287,
		0.908648, -0.330284, -0.255482,
		0.162008, 0.842766, -0.513321,
		29.958509, 35.949257, 36.800823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603937, 35.634258, 37.185043>,  <29.845102, 35.359322, 37.160149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603937, 35.634258, 37.185043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321606, 35.916683, 37.162144>,  <30.152206, 36.086140, 37.148403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321606, 35.916683, 37.162144>,  <30.603937, 35.634258, 37.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321606, 35.916683, 37.162144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309614, 0.380176, 0.871554,
		0.637137, 0.597444, -0.486946,
		-0.705830, 0.706065, -0.057247,
		30.109858, 36.128502, 37.144970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792709, 36.412342, 37.059906>,  <30.603937, 35.634258, 37.185043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792709, 36.412342, 37.059906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475092, 36.341522, 37.292511>,  <30.284521, 36.299030, 37.432072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475092, 36.341522, 37.292511>,  <30.792709, 36.412342, 37.059906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475092, 36.341522, 37.292511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528700, 0.270911, 0.804415,
		-0.299957, 0.946182, -0.121509,
		-0.794042, -0.177048, 0.581508,
		30.236879, 36.288406, 37.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765965, 36.920021, 37.573883>,  <30.792709, 36.412342, 37.059906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765965, 36.920021, 37.573883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577293, 36.594643, 37.710014>,  <30.464090, 36.399414, 37.791691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577293, 36.594643, 37.710014>,  <30.765965, 36.920021, 37.573883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577293, 36.594643, 37.710014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420392, 0.131814, 0.897717,
		-0.775105, 0.566504, 0.279793,
		-0.471680, -0.813448, 0.340324,
		30.435789, 36.350609, 37.812111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223186, 37.069038, 38.054623>,  <30.765965, 36.920021, 37.573883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223186, 37.069038, 38.054623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382208, 36.712734, 38.142712>,  <30.477621, 36.498951, 38.195564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382208, 36.712734, 38.142712>,  <30.223186, 37.069038, 38.054623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382208, 36.712734, 38.142712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312999, 0.357254, 0.880000,
		-0.862543, -0.280920, 0.420835,
		0.397555, -0.890760, 0.220220,
		30.501474, 36.445507, 38.208778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004566, 36.850403, 38.694855>,  <30.223186, 37.069038, 38.054623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004566, 36.850403, 38.694855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331310, 36.620686, 38.673203>,  <30.527357, 36.482857, 38.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331310, 36.620686, 38.673203>,  <30.004566, 36.850403, 38.694855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331310, 36.620686, 38.673203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269541, 0.297051, 0.916029,
		-0.509991, -0.762855, 0.397444,
		0.816858, -0.574294, -0.054128,
		30.576368, 36.448399, 38.656963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033772, 36.502930, 39.341606>,  <30.004566, 36.850403, 38.694855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033772, 36.502930, 39.341606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405020, 36.475693, 39.195206>,  <30.627768, 36.459351, 39.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405020, 36.475693, 39.195206>,  <30.033772, 36.502930, 39.341606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405020, 36.475693, 39.195206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370367, 0.268535, 0.889223,
		0.037731, -0.960860, 0.274454,
		0.928119, -0.068098, -0.366003,
		30.683455, 36.455265, 39.085403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495426, 36.027248, 39.843121>,  <30.033772, 36.502930, 39.341606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495426, 36.027248, 39.843121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755312, 36.264614, 39.653076>,  <30.911243, 36.407032, 39.539051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755312, 36.264614, 39.653076>,  <30.495426, 36.027248, 39.843121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755312, 36.264614, 39.653076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449250, 0.204444, 0.869699,
		0.613224, -0.778502, -0.133760,
		0.649716, 0.593412, -0.475113,
		30.950226, 36.442638, 39.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101400, 35.863335, 40.171566>,  <30.495426, 36.027248, 39.843121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101400, 35.863335, 40.171566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185457, 36.213306, 39.997059>,  <31.235891, 36.423290, 39.892353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185457, 36.213306, 39.997059>,  <31.101400, 35.863335, 40.171566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185457, 36.213306, 39.997059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610294, 0.231222, 0.757679,
		0.763794, -0.425475, -0.485376,
		0.210144, 0.874933, -0.436271,
		31.248501, 36.475788, 39.866177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828754, 35.903313, 40.144173>,  <31.101400, 35.863335, 40.171566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828754, 35.903313, 40.144173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677448, 36.273476, 40.134895>,  <31.586664, 36.495575, 40.129330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677448, 36.273476, 40.134895>,  <31.828754, 35.903313, 40.144173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677448, 36.273476, 40.134895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475479, 0.215734, 0.852865,
		0.794251, 0.311580, -0.521616,
		-0.378266, 0.925406, -0.023197,
		31.563969, 36.551098, 40.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354599, 36.295559, 40.266861>,  <31.828754, 35.903313, 40.144173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354599, 36.295559, 40.266861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060791, 36.545513, 40.372696>,  <31.884508, 36.695484, 40.436195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060791, 36.545513, 40.372696>,  <32.354599, 36.295559, 40.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060791, 36.545513, 40.372696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544163, 0.309437, 0.779830,
		0.405430, 0.716776, -0.567325,
		-0.734515, 0.624884, 0.264588,
		31.840437, 36.732979, 40.452072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692944, 36.975491, 40.484562>,  <32.354599, 36.295559, 40.266861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692944, 36.975491, 40.484562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324711, 37.000797, 40.638718>,  <32.103771, 37.015984, 40.731209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324711, 37.000797, 40.638718>,  <32.692944, 36.975491, 40.484562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324711, 37.000797, 40.638718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387397, 0.272970, 0.880574,
		-0.049484, 0.959940, -0.275803,
		-0.920584, 0.063271, 0.385386,
		32.048534, 37.019779, 40.754333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782993, 37.546295, 40.966221>,  <32.692944, 36.975491, 40.484562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782993, 37.546295, 40.966221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418514, 37.415588, 41.066574>,  <32.199825, 37.337166, 41.126785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418514, 37.415588, 41.066574>,  <32.782993, 37.546295, 40.966221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418514, 37.415588, 41.066574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159748, 0.281070, 0.946298,
		-0.379730, 0.902344, -0.203911,
		-0.911200, -0.326764, 0.250879,
		32.145153, 37.317558, 41.141838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327965, 38.067974, 41.388493>,  <32.782993, 37.546295, 40.966221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327965, 38.067974, 41.388493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236122, 37.687038, 41.468822>,  <32.181015, 37.458477, 41.517021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236122, 37.687038, 41.468822>,  <32.327965, 38.067974, 41.388493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236122, 37.687038, 41.468822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081054, 0.186907, 0.979028,
		-0.969902, 0.241071, 0.034275,
		-0.229609, -0.952340, 0.200821,
		32.167240, 37.401337, 41.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233063, 38.178673, 42.052254>,  <32.327965, 38.067974, 41.388493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233063, 38.178673, 42.052254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197460, 37.780304, 42.046329>,  <32.176098, 37.541283, 42.042774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197460, 37.780304, 42.046329>,  <32.233063, 38.178673, 42.052254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197460, 37.780304, 42.046329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034521, -0.011772, 0.999335,
		-0.995432, 0.089462, -0.033332,
		-0.089010, -0.995921, -0.014806,
		32.170757, 37.481529, 42.041889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837561, 38.029022, 42.547649>,  <32.233063, 38.178673, 42.052254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837561, 38.029022, 42.547649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012486, 37.674419, 42.487175>,  <32.117439, 37.461658, 42.450890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012486, 37.674419, 42.487175>,  <31.837561, 38.029022, 42.547649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012486, 37.674419, 42.487175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156866, -0.240731, 0.957832,
		-0.885523, -0.395155, -0.244338,
		0.437311, -0.886511, -0.151187,
		32.143681, 37.408466, 42.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417656, 37.520702, 42.943279>,  <31.837561, 38.029022, 42.547649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417656, 37.520702, 42.943279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778833, 37.353817, 42.902046>,  <31.995541, 37.253685, 42.877308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778833, 37.353817, 42.902046>,  <31.417656, 37.520702, 42.943279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778833, 37.353817, 42.902046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003158, -0.233408, 0.972374,
		-0.429744, -0.878326, -0.209437,
		0.902946, -0.417210, -0.103079,
		32.049717, 37.228653, 42.871124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373436, 36.873230, 43.174469>,  <31.417656, 37.520702, 42.943279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373436, 36.873230, 43.174469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758736, 36.976940, 43.202541>,  <31.989916, 37.039165, 43.219387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758736, 36.976940, 43.202541>,  <31.373436, 36.873230, 43.174469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758736, 36.976940, 43.202541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003178, -0.272277, 0.962214,
		0.268584, -0.926630, -0.263096,
		0.963251, 0.259271, 0.070184,
		32.047710, 37.054722, 43.223598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651865, 36.324226, 43.526966>,  <31.373436, 36.873230, 43.174469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651865, 36.324226, 43.526966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926178, 36.610107, 43.581966>,  <32.090767, 36.781635, 43.614967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926178, 36.610107, 43.581966>,  <31.651865, 36.324226, 43.526966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926178, 36.610107, 43.581966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098697, -0.278501, 0.955351,
		0.721085, -0.641591, -0.261529,
		0.685781, 0.714701, 0.137500,
		32.131912, 36.824516, 43.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150658, 35.930237, 43.762150>,  <31.651865, 36.324226, 43.526966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150658, 35.930237, 43.762150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211277, 36.310596, 43.870090>,  <32.247650, 36.538815, 43.934856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211277, 36.310596, 43.870090>,  <32.150658, 35.930237, 43.762150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211277, 36.310596, 43.870090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118195, -0.288478, 0.950163,
		0.981358, -0.112102, -0.156110,
		0.151550, 0.950901, 0.269851,
		32.256741, 36.595867, 43.951046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665619, 35.871353, 44.386845>,  <32.150658, 35.930237, 43.762150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665619, 35.871353, 44.386845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487827, 36.228928, 44.409847>,  <32.381153, 36.443474, 44.423649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487827, 36.228928, 44.409847>,  <32.665619, 35.871353, 44.386845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487827, 36.228928, 44.409847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060897, -0.033897, 0.997568,
		0.893715, 0.446905, -0.039372,
		-0.444483, 0.893939, 0.057510,
		32.354481, 36.497108, 44.427101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037521, 36.267300, 44.900551>,  <32.665619, 35.871353, 44.386845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037521, 36.267300, 44.900551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669109, 36.422394, 44.885788>,  <32.448063, 36.515450, 44.876930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669109, 36.422394, 44.885788>,  <33.037521, 36.267300, 44.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669109, 36.422394, 44.885788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034537, 0.013090, 0.999318,
		0.387949, 0.921680, 0.001335,
		-0.921033, 0.387731, -0.036910,
		32.392799, 36.538712, 44.874714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062351, 36.870205, 45.259499>,  <33.037521, 36.267300, 44.900551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062351, 36.870205, 45.259499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672314, 36.782711, 45.274227>,  <32.438293, 36.730213, 45.283062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672314, 36.782711, 45.274227>,  <33.062351, 36.870205, 45.259499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672314, 36.782711, 45.274227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016615, 0.237544, 0.971235,
		-0.221190, 0.946429, -0.235261,
		-0.975089, -0.218736, 0.036817,
		32.379787, 36.717091, 45.285271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847664, 37.330688, 45.678452>,  <33.062351, 36.870205, 45.259499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847664, 37.330688, 45.678452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544163, 37.070141, 45.677242>,  <32.362061, 36.913815, 45.676517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544163, 37.070141, 45.677242>,  <32.847664, 37.330688, 45.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544163, 37.070141, 45.677242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109567, 0.123059, 0.986333,
		-0.642093, 0.748717, -0.164740,
		-0.758757, -0.651367, -0.003020,
		32.316536, 36.874729, 45.676338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342739, 37.644367, 46.019958>,  <32.847664, 37.330688, 45.678452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342739, 37.644367, 46.019958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239162, 37.258072, 46.013084>,  <32.177017, 37.026295, 46.008961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239162, 37.258072, 46.013084>,  <32.342739, 37.644367, 46.019958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239162, 37.258072, 46.013084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164545, 0.026569, 0.986012,
		-0.951774, 0.258150, -0.165788,
		-0.258943, -0.965739, -0.017190,
		32.161480, 36.968349, 46.007927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698704, 37.615700, 46.398430>,  <32.342739, 37.644367, 46.019958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698704, 37.615700, 46.398430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845552, 37.243797, 46.409611>,  <31.933661, 37.020657, 46.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845552, 37.243797, 46.409611>,  <31.698704, 37.615700, 46.398430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845552, 37.243797, 46.409611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100769, 0.069625, 0.992471,
		-0.924699, -0.361539, 0.119251,
		0.367119, -0.929754, 0.027950,
		31.955688, 36.964870, 46.417995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605860, 37.347057, 47.036160>,  <31.698704, 37.615700, 46.398430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605860, 37.347057, 47.036160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835035, 37.028084, 46.960434>,  <31.972542, 36.836700, 46.915001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835035, 37.028084, 46.960434>,  <31.605860, 37.347057, 47.036160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835035, 37.028084, 46.960434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189764, -0.095637, 0.977161,
		-0.797326, -0.595780, 0.096530,
		0.572941, -0.797433, -0.189311,
		32.006916, 36.788853, 46.903641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424782, 36.813332, 47.432022>,  <31.605860, 37.347057, 47.036160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424782, 36.813332, 47.432022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805902, 36.749329, 47.328819>,  <32.034576, 36.710926, 47.266899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805902, 36.749329, 47.328819>,  <31.424782, 36.813332, 47.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805902, 36.749329, 47.328819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255882, -0.034085, 0.966107,
		-0.163384, -0.986526, 0.008468,
		0.952801, -0.160014, -0.258003,
		32.091743, 36.701324, 47.251419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575531, 36.163509, 47.685207>,  <31.424782, 36.813332, 47.432022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575531, 36.163509, 47.685207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928448, 36.345356, 47.636398>,  <32.140198, 36.454464, 47.607113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928448, 36.345356, 47.636398>,  <31.575531, 36.163509, 47.685207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928448, 36.345356, 47.636398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245002, -0.222176, 0.943722,
		0.401920, -0.862532, -0.307405,
		0.882289, 0.454616, -0.122025,
		32.193134, 36.481739, 47.599792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144661, 35.616680, 47.880692>,  <31.575531, 36.163509, 47.685207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144661, 35.616680, 47.880692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304573, 35.981712, 47.915035>,  <32.400520, 36.200733, 47.935642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304573, 35.981712, 47.915035>,  <32.144661, 35.616680, 47.880692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304573, 35.981712, 47.915035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364390, -0.244176, 0.898664,
		0.841068, -0.327984, -0.430153,
		0.399781, 0.912581, 0.085855,
		32.424507, 36.255486, 47.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844219, 35.515984, 48.185558>,  <32.144661, 35.616680, 47.880692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844219, 35.515984, 48.185558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760376, 35.903008, 48.241985>,  <32.710072, 36.135220, 48.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760376, 35.903008, 48.241985>,  <32.844219, 35.515984, 48.185558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760376, 35.903008, 48.241985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262000, -0.083417, 0.961456,
		0.942030, 0.238486, -0.236015,
		-0.209606, 0.967557, 0.141065,
		32.697495, 36.193275, 48.284306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460007, 35.903229, 48.397469>,  <32.844219, 35.515984, 48.185558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460007, 35.903229, 48.397469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141422, 36.090717, 48.550289>,  <32.950272, 36.203209, 48.641979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141422, 36.090717, 48.550289>,  <33.460007, 35.903229, 48.397469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141422, 36.090717, 48.550289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368472, -0.124770, 0.921228,
		0.479463, 0.874492, -0.073335,
		-0.796457, 0.468717, 0.382049,
		32.902485, 36.231331, 48.664906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726017, 36.362606, 48.905487>,  <33.460007, 35.903229, 48.397469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726017, 36.362606, 48.905487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337215, 36.325924, 48.992012>,  <33.103935, 36.303913, 49.043926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337215, 36.325924, 48.992012>,  <33.726017, 36.362606, 48.905487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337215, 36.325924, 48.992012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225538, -0.106253, 0.968423,
		-0.065830, 0.990101, 0.123963,
		-0.972008, -0.091709, 0.216311,
		33.045612, 36.298412, 49.056904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622581, 36.585442, 49.592983>,  <33.726017, 36.362606, 48.905487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622581, 36.585442, 49.592983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266312, 36.413277, 49.534412>,  <33.052551, 36.309978, 49.499268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266312, 36.413277, 49.534412>,  <33.622581, 36.585442, 49.592983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266312, 36.413277, 49.534412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037765, -0.250924, 0.967270,
		-0.453068, 0.867054, 0.207237,
		-0.890676, -0.430413, -0.146430,
		32.999107, 36.284153, 49.490482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350178, 36.856354, 50.115730>,  <33.622581, 36.585442, 49.592983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350178, 36.856354, 50.115730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162952, 36.522686, 49.999058>,  <33.050617, 36.322487, 49.929054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162952, 36.522686, 49.999058>,  <33.350178, 36.856354, 50.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162952, 36.522686, 49.999058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033312, -0.346496, 0.937460,
		-0.883064, 0.429078, 0.189972,
		-0.468068, -0.834166, -0.291685,
		33.022533, 36.272438, 49.911552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797909, 36.710693, 50.634087>,  <33.350178, 36.856354, 50.115730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797909, 36.710693, 50.634087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871094, 36.350910, 50.475346>,  <32.915005, 36.135040, 50.380100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871094, 36.350910, 50.475346>,  <32.797909, 36.710693, 50.634087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871094, 36.350910, 50.475346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001863, -0.403350, 0.915044,
		-0.983118, -0.168157, -0.072121,
		0.182961, -0.899462, -0.396854,
		32.925983, 36.081070, 50.356289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335186, 36.277225, 50.921230>,  <32.797909, 36.710693, 50.634087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335186, 36.277225, 50.921230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634048, 36.037056, 50.807209>,  <32.813366, 35.892956, 50.738796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634048, 36.037056, 50.807209>,  <32.335186, 36.277225, 50.921230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634048, 36.037056, 50.807209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023563, -0.452534, 0.891436,
		-0.664231, -0.659324, -0.352262,
		0.747156, -0.600420, -0.285051,
		32.858196, 35.856930, 50.721695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323872, 35.731392, 51.410004>,  <32.335186, 36.277225, 50.921230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323872, 35.731392, 51.410004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673058, 35.632706, 51.241684>,  <32.882568, 35.573494, 51.140694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673058, 35.632706, 51.241684>,  <32.323872, 35.731392, 51.410004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673058, 35.632706, 51.241684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203879, -0.599149, 0.774244,
		-0.443141, -0.761676, -0.472732,
		0.872960, -0.246719, -0.420797,
		32.934944, 35.558689, 51.115444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379925, 34.941193, 51.409367>,  <32.323872, 35.731392, 51.410004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379925, 34.941193, 51.409367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750008, 35.092220, 51.394173>,  <32.972057, 35.182835, 51.385056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750008, 35.092220, 51.394173>,  <32.379925, 34.941193, 51.409367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750008, 35.092220, 51.394173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251957, -0.536379, 0.805490,
		0.283754, -0.754812, -0.591391,
		0.925203, 0.377566, -0.037980,
		33.027569, 35.205490, 51.382778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879303, 34.393898, 51.432671>,  <32.379925, 34.941193, 51.409367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879303, 34.393898, 51.432671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079353, 34.720573, 51.547832>,  <33.199383, 34.916580, 51.616932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079353, 34.720573, 51.547832>,  <32.879303, 34.393898, 51.432671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079353, 34.720573, 51.547832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255347, -0.456777, 0.852146,
		0.827450, -0.352663, -0.436985,
		0.500125, 0.816691, 0.287908,
		33.229389, 34.965580, 51.634205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686352, 34.297493, 51.513023>,  <32.879303, 34.393898, 51.432671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686352, 34.297493, 51.513023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564060, 34.599747, 51.744732>,  <33.490685, 34.781097, 51.883755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564060, 34.599747, 51.744732>,  <33.686352, 34.297493, 51.513023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564060, 34.599747, 51.744732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252677, -0.522191, 0.814537,
		0.917977, 0.395398, -0.031280,
		-0.305733, 0.755630, 0.579268,
		33.472340, 34.826435, 51.918510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265831, 34.453644, 52.055740>,  <33.686352, 34.297493, 51.513023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265831, 34.453644, 52.055740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946159, 34.639885, 52.207802>,  <33.754356, 34.751629, 52.299038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946159, 34.639885, 52.207802>,  <34.265831, 34.453644, 52.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946159, 34.639885, 52.207802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308344, -0.225334, 0.924201,
		0.515976, 0.855824, 0.036516,
		-0.799182, 0.465607, 0.380155,
		33.706406, 34.779568, 52.321850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406342, 34.753780, 52.654129>,  <34.265831, 34.453644, 52.055740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406342, 34.753780, 52.654129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008831, 34.724396, 52.687622>,  <33.770325, 34.706764, 52.707718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008831, 34.724396, 52.687622>,  <34.406342, 34.753780, 52.654129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008831, 34.724396, 52.687622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107519, -0.436159, 0.893423,
		-0.029109, 0.896866, 0.441343,
		-0.993777, -0.073459, 0.083735,
		33.710697, 34.702358, 52.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345203, 34.920967, 53.314667>,  <34.406342, 34.753780, 52.654129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345203, 34.920967, 53.314667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992332, 34.743305, 53.252068>,  <33.780609, 34.636707, 53.214508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992332, 34.743305, 53.252068>,  <34.345203, 34.920967, 53.314667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992332, 34.743305, 53.252068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005794, -0.342540, 0.939485,
		-0.470882, 0.827886, 0.304755,
		-0.882177, -0.444152, -0.156499,
		33.727680, 34.610058, 53.205116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948414, 35.096062, 53.912975>,  <34.345203, 34.920967, 53.314667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948414, 35.096062, 53.912975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701126, 34.806355, 53.790836>,  <33.552753, 34.632530, 53.717552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701126, 34.806355, 53.790836>,  <33.948414, 35.096062, 53.912975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701126, 34.806355, 53.790836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180323, -0.247428, 0.951978,
		-0.765041, 0.643593, 0.022363,
		-0.618220, -0.724270, -0.305347,
		33.515659, 34.589073, 53.699234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248943, 35.237537, 54.189686>,  <33.948414, 35.096062, 53.912975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248943, 35.237537, 54.189686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284004, 34.842705, 54.136024>,  <33.305038, 34.605804, 54.103828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284004, 34.842705, 54.136024>,  <33.248943, 35.237537, 54.189686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284004, 34.842705, 54.136024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162265, -0.147019, 0.975733,
		-0.982847, -0.063755, -0.173054,
		0.087650, -0.987077, -0.134152,
		33.310299, 34.546581, 54.095779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734108, 34.833702, 54.639557>,  <33.248943, 35.237537, 54.189686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734108, 34.833702, 54.639557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065151, 34.620872, 54.568039>,  <33.263779, 34.493176, 54.525127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065151, 34.620872, 54.568039>,  <32.734108, 34.833702, 54.639557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065151, 34.620872, 54.568039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127808, -0.131533, 0.983038,
		-0.546563, -0.836421, -0.040855,
		0.827607, -0.532071, -0.178793,
		33.313435, 34.461250, 54.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779457, 34.242432, 55.165874>,  <32.734108, 34.833702, 54.639557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779457, 34.242432, 55.165874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144028, 34.362617, 55.053425>,  <33.362770, 34.434731, 54.985954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144028, 34.362617, 55.053425>,  <32.779457, 34.242432, 55.165874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144028, 34.362617, 55.053425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289823, 0.016200, 0.956943,
		0.292082, -0.953655, -0.072316,
		0.911422, 0.300465, -0.281123,
		33.417454, 34.452755, 54.969090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170059, 33.936707, 55.632660>,  <32.779457, 34.242432, 55.165874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170059, 33.936707, 55.632660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399704, 34.234734, 55.496861>,  <33.537491, 34.413551, 55.415379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399704, 34.234734, 55.496861>,  <33.170059, 33.936707, 55.632660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399704, 34.234734, 55.496861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539359, -0.032181, 0.841461,
		0.616022, -0.666210, -0.420336,
		0.574116, 0.745070, -0.339502,
		33.571938, 34.458256, 55.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913982, 33.841492, 55.780575>,  <33.170059, 33.936707, 55.632660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913982, 33.841492, 55.780575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837906, 34.233925, 55.766079>,  <33.792259, 34.469383, 55.757381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837906, 34.233925, 55.766079>,  <33.913982, 33.841492, 55.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837906, 34.233925, 55.766079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264639, 0.086781, 0.960435,
		0.945407, 0.173072, -0.276136,
		-0.190188, 0.981079, -0.036242,
		33.780849, 34.528248, 55.755207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777195, 33.612049, 55.111023>,  <33.913982, 33.841492, 55.780575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777195, 33.612049, 55.111023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058765, 33.814152, 54.911343>,  <34.227707, 33.935413, 54.791534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058765, 33.814152, 54.911343>,  <33.777195, 33.612049, 55.111023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058765, 33.814152, 54.911343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394952, -0.862597, -0.316132,
		-0.590339, 0.025373, -0.806757,
		0.703927, 0.505255, -0.499203,
		34.269943, 33.965729, 54.761581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886871, 33.419975, 54.313271>,  <33.777195, 33.612049, 55.111023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886871, 33.419975, 54.313271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229767, 33.510120, 54.498466>,  <34.435505, 33.564205, 54.609585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229767, 33.510120, 54.498466>,  <33.886871, 33.419975, 54.313271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229767, 33.510120, 54.498466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384487, -0.878226, -0.284411,
		0.342513, 0.421820, -0.839495,
		0.857237, 0.225361, 0.462988,
		34.486938, 33.577728, 54.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013229, 33.300858, 53.582924>,  <33.886871, 33.419975, 54.313271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013229, 33.300858, 53.582924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767895, 32.996120, 53.666260>,  <33.620693, 32.813278, 53.716259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767895, 32.996120, 53.666260>,  <34.013229, 33.300858, 53.582924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767895, 32.996120, 53.666260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013832, -0.274096, -0.961603,
		0.789698, -0.586908, 0.178652,
		-0.613340, -0.761847, 0.208335,
		33.583893, 32.767567, 53.728760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187824, 32.722191, 53.318405>,  <34.013229, 33.300858, 53.582924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187824, 32.722191, 53.318405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791870, 32.678940, 53.355152>,  <33.554298, 32.652988, 53.377201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791870, 32.678940, 53.355152>,  <34.187824, 32.722191, 53.318405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791870, 32.678940, 53.355152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063653, -0.240246, -0.968623,
		0.126809, -0.964671, 0.230933,
		-0.989883, -0.108130, 0.091869,
		33.494904, 32.646500, 53.382713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896324, 31.997971, 53.113670>,  <34.187824, 32.722191, 53.318405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896324, 31.997971, 53.113670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683804, 32.331978, 53.056450>,  <33.556293, 32.532383, 53.022118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683804, 32.331978, 53.056450>,  <33.896324, 31.997971, 53.113670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683804, 32.331978, 53.056450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106417, -0.101734, -0.989103,
		-0.840474, -0.540732, -0.034809,
		-0.531299, 0.835020, -0.143048,
		33.524414, 32.582485, 53.013535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587437, 31.826736, 52.563484>,  <33.896324, 31.997971, 53.113670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587437, 31.826736, 52.563484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529484, 32.222515, 52.563004>,  <33.494713, 32.459984, 52.562714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529484, 32.222515, 52.563004>,  <33.587437, 31.826736, 52.563484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529484, 32.222515, 52.563004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052848, -0.008950, -0.998562,
		-0.988037, -0.144606, 0.053587,
		-0.144878, 0.989449, -0.001201,
		33.486019, 32.519348, 52.562645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903915, 31.998571, 52.142864>,  <33.587437, 31.826736, 52.563484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903915, 31.998571, 52.142864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138645, 32.322357, 52.150887>,  <33.279484, 32.516628, 52.155701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138645, 32.322357, 52.150887>,  <32.903915, 31.998571, 52.142864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138645, 32.322357, 52.150887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127298, 0.116688, -0.984977,
		-0.799643, 0.575459, 0.171519,
		0.586827, 0.809464, 0.020054,
		33.314693, 32.565197, 52.156902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621422, 32.635971, 51.705307>,  <32.903915, 31.998571, 52.142864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621422, 32.635971, 51.705307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015564, 32.692379, 51.743637>,  <33.252048, 32.726223, 51.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015564, 32.692379, 51.743637>,  <32.621422, 32.635971, 51.705307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015564, 32.692379, 51.743637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075169, 0.145140, -0.986552,
		-0.153030, 0.979310, 0.132415,
		0.985359, 0.141018, 0.095825,
		33.311172, 32.734684, 51.772385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838444, 33.139038, 51.196560>,  <32.621422, 32.635971, 51.705307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838444, 33.139038, 51.196560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195892, 32.969414, 51.255363>,  <33.410362, 32.867638, 51.290646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195892, 32.969414, 51.255363>,  <32.838444, 33.139038, 51.196560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195892, 32.969414, 51.255363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261676, 0.226151, -0.938286,
		0.364648, 0.876940, 0.313061,
		0.893620, -0.424065, 0.147008,
		33.463978, 32.842194, 51.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387932, 33.629326, 50.848732>,  <32.838444, 33.139038, 51.196560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387932, 33.629326, 50.848732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546986, 33.266197, 50.902027>,  <33.642418, 33.048321, 50.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546986, 33.266197, 50.902027>,  <33.387932, 33.629326, 50.848732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546986, 33.266197, 50.902027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231263, -0.041362, -0.972012,
		0.887920, 0.417322, 0.193497,
		0.397638, -0.907817, 0.133237,
		33.666279, 32.993851, 50.941998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987324, 33.510525, 50.400593>,  <33.387932, 33.629326, 50.848732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987324, 33.510525, 50.400593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899502, 33.128887, 50.482071>,  <33.846809, 32.899902, 50.530956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899502, 33.128887, 50.482071>,  <33.987324, 33.510525, 50.400593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899502, 33.128887, 50.482071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011931, -0.206149, -0.978448,
		0.975527, -0.217255, 0.033878,
		-0.219556, -0.954098, 0.203696,
		33.833633, 32.842659, 50.543179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428658, 33.093452, 49.948612>,  <33.987324, 33.510525, 50.400593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428658, 33.093452, 49.948612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137344, 32.841400, 50.056347>,  <33.962555, 32.690170, 50.120987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137344, 32.841400, 50.056347>,  <34.428658, 33.093452, 49.948612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137344, 32.841400, 50.056347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040997, -0.352265, -0.935002,
		0.684051, -0.691986, 0.230714,
		-0.728281, -0.630130, 0.269336,
		33.918861, 32.652363, 50.137146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681057, 32.426971, 49.705498>,  <34.428658, 33.093452, 49.948612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681057, 32.426971, 49.705498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288872, 32.400063, 49.779430>,  <34.053562, 32.383919, 49.823792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288872, 32.400063, 49.779430>,  <34.681057, 32.426971, 49.705498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288872, 32.400063, 49.779430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165163, -0.228760, -0.959370,
		0.106823, -0.971156, 0.213180,
		-0.980464, -0.067274, 0.184836,
		33.994732, 32.379879, 49.834881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454617, 31.787678, 49.393635>,  <34.681057, 32.426971, 49.705498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454617, 31.787678, 49.393635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115494, 31.994875, 49.439060>,  <33.912018, 32.119194, 49.466316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115494, 31.994875, 49.439060>,  <34.454617, 31.787678, 49.393635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115494, 31.994875, 49.439060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290087, -0.273748, -0.917012,
		-0.443920, -0.810397, 0.382350,
		-0.847812, 0.517995, 0.113563,
		33.861149, 32.150272, 49.473129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893234, 31.298555, 49.195625>,  <34.454617, 31.787678, 49.393635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893234, 31.298555, 49.195625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740391, 31.668198, 49.193588>,  <33.648685, 31.889982, 49.192368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740391, 31.668198, 49.193588>,  <33.893234, 31.298555, 49.195625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740391, 31.668198, 49.193588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247734, -0.107742, -0.962819,
		-0.890294, -0.366637, 0.270101,
		-0.382106, 0.924105, -0.005094,
		33.625759, 31.945429, 49.192059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121929, 31.184174, 48.841480>,  <33.893234, 31.298555, 49.195625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121929, 31.184174, 48.841480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219288, 31.570709, 48.808140>,  <33.277702, 31.802629, 48.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219288, 31.570709, 48.808140>,  <33.121929, 31.184174, 48.841480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219288, 31.570709, 48.808140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478514, 0.044886, -0.876932,
		-0.843671, 0.253330, 0.473332,
		0.243399, 0.966338, -0.083353,
		33.292309, 31.860611, 48.783134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591961, 31.470438, 48.436871>,  <33.121929, 31.184174, 48.841480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591961, 31.470438, 48.436871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883694, 31.739098, 48.384781>,  <33.058735, 31.900293, 48.353527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883694, 31.739098, 48.384781>,  <32.591961, 31.470438, 48.436871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883694, 31.739098, 48.384781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236007, 0.068331, -0.969346,
		-0.642162, 0.737711, 0.208350,
		0.729334, 0.671649, -0.130225,
		33.102493, 31.940592, 48.345715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327217, 32.074291, 48.031452>,  <32.591961, 31.470438, 48.436871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327217, 32.074291, 48.031452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720554, 32.044975, 47.964912>,  <32.956554, 32.027386, 47.924988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720554, 32.044975, 47.964912>,  <32.327217, 32.074291, 48.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720554, 32.044975, 47.964912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154417, 0.146074, -0.977148,
		0.095918, 0.986555, 0.132323,
		0.983339, -0.073293, -0.166352,
		33.015556, 32.022987, 47.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367321, 32.439449, 47.369209>,  <32.327217, 32.074291, 48.031452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367321, 32.439449, 47.369209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751816, 32.333996, 47.401516>,  <32.982513, 32.270721, 47.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751816, 32.333996, 47.401516>,  <32.367321, 32.439449, 47.369209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751816, 32.333996, 47.401516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185402, 0.401155, -0.897051,
		0.204095, 0.877252, 0.434483,
		0.961234, -0.263637, 0.080770,
		33.040188, 32.254906, 47.425747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796436, 33.006954, 47.152348>,  <32.367321, 32.439449, 47.369209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796436, 33.006954, 47.152348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044064, 32.696541, 47.104130>,  <33.192638, 32.510292, 47.075199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044064, 32.696541, 47.104130>,  <32.796436, 33.006954, 47.152348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044064, 32.696541, 47.104130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272179, 0.355990, -0.893974,
		0.736663, 0.520622, 0.431602,
		0.619069, -0.776030, -0.120543,
		33.229786, 32.463730, 47.067966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351341, 33.309273, 46.830372>,  <32.796436, 33.006954, 47.152348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351341, 33.309273, 46.830372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382145, 32.915123, 46.769569>,  <33.400627, 32.678635, 46.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382145, 32.915123, 46.769569>,  <33.351341, 33.309273, 46.830372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382145, 32.915123, 46.769569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250531, 0.166687, -0.953651,
		0.965041, 0.035355, 0.259703,
		0.077006, -0.985376, -0.152002,
		33.405247, 32.619511, 46.723969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835468, 33.330772, 46.394176>,  <33.351341, 33.309273, 46.830372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835468, 33.330772, 46.394176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671696, 32.968159, 46.353065>,  <33.573433, 32.750591, 46.328400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671696, 32.968159, 46.353065>,  <33.835468, 33.330772, 46.394176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671696, 32.968159, 46.353065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064906, 0.083425, -0.994398,
		0.910028, -0.413813, 0.024682,
		-0.409435, -0.906532, -0.102778,
		33.548866, 32.696198, 46.322231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321529, 32.982887, 45.996246>,  <33.835468, 33.330772, 46.394176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321529, 32.982887, 45.996246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959274, 32.817776, 45.957409>,  <33.741920, 32.718708, 45.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959274, 32.817776, 45.957409>,  <34.321529, 32.982887, 45.996246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959274, 32.817776, 45.957409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078101, 0.062680, -0.994973,
		0.416789, -0.908672, -0.024528,
		-0.905642, -0.412778, -0.097092,
		33.687580, 32.693943, 45.928280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379562, 32.555992, 45.322346>,  <34.321529, 32.982887, 45.996246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379562, 32.555992, 45.322346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995205, 32.615990, 45.415462>,  <33.764591, 32.651989, 45.471333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995205, 32.615990, 45.415462>,  <34.379562, 32.555992, 45.322346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995205, 32.615990, 45.415462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215940, 0.120486, -0.968944,
		-0.173387, -0.981318, -0.083383,
		-0.960889, 0.149996, 0.232796,
		33.706940, 32.660988, 45.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013103, 32.235432, 44.742115>,  <34.379562, 32.555992, 45.322346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013103, 32.235432, 44.742115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736668, 32.473797, 44.905712>,  <33.570805, 32.616817, 45.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736668, 32.473797, 44.905712>,  <34.013103, 32.235432, 44.742115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736668, 32.473797, 44.905712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468580, 0.061424, -0.881283,
		-0.550293, -0.800694, 0.236784,
		-0.691094, 0.595916, 0.408990,
		33.529339, 32.652573, 45.028408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432846, 32.175385, 44.307907>,  <34.013103, 32.235432, 44.742115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432846, 32.175385, 44.307907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319717, 32.495846, 44.518871>,  <33.251839, 32.688122, 44.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319717, 32.495846, 44.518871>,  <33.432846, 32.175385, 44.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319717, 32.495846, 44.518871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514849, 0.337133, -0.788208,
		-0.809285, -0.494458, 0.317126,
		-0.282822, 0.801157, 0.527407,
		33.234871, 32.736195, 44.677094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643906, 32.176846, 44.316837>,  <33.432846, 32.175385, 44.307907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643906, 32.176846, 44.316837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796692, 32.543209, 44.366173>,  <32.888363, 32.763027, 44.395775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796692, 32.543209, 44.366173>,  <32.643906, 32.176846, 44.316837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796692, 32.543209, 44.366173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443888, 0.298880, -0.844769,
		-0.810594, 0.267926, 0.520723,
		0.381969, 0.915908, 0.123341,
		32.911282, 32.817982, 44.403175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095924, 32.593048, 44.208485>,  <32.643906, 32.176846, 44.316837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095924, 32.593048, 44.208485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424454, 32.819714, 44.182209>,  <32.621571, 32.955711, 44.166443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424454, 32.819714, 44.182209>,  <32.095924, 32.593048, 44.208485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424454, 32.819714, 44.182209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423838, 0.529091, -0.735135,
		-0.381820, 0.631627, 0.674730,
		0.821325, 0.566665, -0.065690,
		32.670853, 32.989712, 44.162502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849619, 33.242558, 44.287369>,  <32.095924, 32.593048, 44.208485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849619, 33.242558, 44.287369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191582, 33.252525, 44.080097>,  <32.396759, 33.258507, 43.955734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191582, 33.252525, 44.080097>,  <31.849619, 33.242558, 44.287369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191582, 33.252525, 44.080097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442972, 0.554946, -0.704138,
		0.270013, 0.831513, 0.485468,
		0.854909, 0.024922, -0.518180,
		32.448055, 33.260002, 43.924644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750402, 33.830814, 43.921104>,  <31.849619, 33.242558, 44.287369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750402, 33.830814, 43.921104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066708, 33.661125, 43.744591>,  <32.256489, 33.559311, 43.638683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066708, 33.661125, 43.744591>,  <31.750402, 33.830814, 43.921104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066708, 33.661125, 43.744591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346884, 0.283419, -0.894061,
		0.504349, 0.860063, 0.076961,
		0.790761, -0.424222, -0.441285,
		32.303936, 33.533859, 43.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076553, 34.310051, 43.466309>,  <31.750402, 33.830814, 43.921104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076553, 34.310051, 43.466309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188381, 33.957687, 43.313553>,  <32.255478, 33.746269, 43.221897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188381, 33.957687, 43.313553>,  <32.076553, 34.310051, 43.466309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188381, 33.957687, 43.313553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243666, 0.319635, -0.915675,
		0.928692, 0.349047, -0.125288,
		0.279567, -0.880908, -0.381893,
		32.272251, 33.693417, 43.198986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481327, 34.458557, 42.879234>,  <32.076553, 34.310051, 43.466309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481327, 34.458557, 42.879234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377823, 34.075447, 42.829109>,  <32.315720, 33.845581, 42.799034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377823, 34.075447, 42.829109>,  <32.481327, 34.458557, 42.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377823, 34.075447, 42.829109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042632, 0.140933, -0.989101,
		0.965000, -0.250597, -0.077300,
		-0.258760, -0.957778, -0.125317,
		32.300194, 33.788113, 42.791515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974373, 34.249599, 42.411297>,  <32.481327, 34.458557, 42.879234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974373, 34.249599, 42.411297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657051, 34.007378, 42.386066>,  <32.466660, 33.862045, 42.370930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657051, 34.007378, 42.386066>,  <32.974373, 34.249599, 42.411297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657051, 34.007378, 42.386066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030728, 0.063647, -0.997499,
		0.608052, -0.793256, -0.031884,
		-0.793302, -0.605552, -0.063076,
		32.419060, 33.825710, 42.367146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143215, 33.989338, 41.848255>,  <32.974373, 34.249599, 42.411297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143215, 33.989338, 41.848255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775288, 33.842731, 41.904251>,  <32.554531, 33.754768, 41.937847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775288, 33.842731, 41.904251>,  <33.143215, 33.989338, 41.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775288, 33.842731, 41.904251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072177, -0.192632, -0.978613,
		0.385643, -0.910252, 0.150733,
		-0.919821, -0.366515, 0.139986,
		32.499340, 33.732777, 41.946247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188065, 33.307949, 41.535328>,  <33.143215, 33.989338, 41.848255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188065, 33.307949, 41.535328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 33.467278, 41.517128>,  <32.601749, 33.562874, 41.506210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821617, 33.467278, 41.517128>,  <33.188065, 33.307949, 41.535328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821617, 33.467278, 41.517128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009580, -0.135200, -0.990772,
		-0.400794, -0.907229, 0.127675,
		-0.916119, 0.398318, -0.045497,
		32.546783, 33.586773, 41.503479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907604, 32.982342, 41.010170>,  <33.188065, 33.307949, 41.535328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907604, 32.982342, 41.010170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649204, 33.284370, 41.054989>,  <32.494164, 33.465588, 41.081879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649204, 33.284370, 41.054989>,  <32.907604, 32.982342, 41.010170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649204, 33.284370, 41.054989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122989, 0.041910, -0.991523,
		-0.753367, -0.654301, 0.065792,
		-0.645997, 0.755072, 0.112046,
		32.455406, 33.510891, 41.088604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320541, 32.828495, 40.572224>,  <32.907604, 32.982342, 41.010170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320541, 32.828495, 40.572224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337383, 33.222038, 40.641792>,  <32.347488, 33.458164, 40.683533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337383, 33.222038, 40.641792>,  <32.320541, 32.828495, 40.572224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337383, 33.222038, 40.641792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062138, 0.176316, -0.982370,
		-0.997179, 0.030553, 0.068558,
		0.042102, 0.983859, 0.173920,
		32.350014, 33.517197, 40.693970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710123, 33.069382, 40.146782>,  <32.320541, 32.828495, 40.572224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710123, 33.069382, 40.146782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949406, 33.381016, 40.221806>,  <32.092976, 33.567997, 40.266819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949406, 33.381016, 40.221806>,  <31.710123, 33.069382, 40.146782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949406, 33.381016, 40.221806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092984, 0.164985, -0.981903,
		-0.795928, 0.604821, 0.026252,
		0.598207, 0.779084, 0.187555,
		32.128868, 33.614742, 40.278072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486347, 33.659782, 39.766403>,  <31.710123, 33.069382, 40.146782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486347, 33.659782, 39.766403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867443, 33.763920, 39.829021>,  <32.096100, 33.826405, 39.866592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867443, 33.763920, 39.829021>,  <31.486347, 33.659782, 39.766403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867443, 33.763920, 39.829021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058268, 0.349141, -0.935257,
		-0.298147, 0.900178, 0.317471,
		0.952740, 0.260346, 0.156547,
		32.153267, 33.842022, 39.875984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514027, 34.253521, 39.302517>,  <31.486347, 33.659782, 39.766403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514027, 34.253521, 39.302517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881496, 34.144005, 39.416416>,  <32.101978, 34.078297, 39.484756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881496, 34.144005, 39.416416>,  <31.514027, 34.253521, 39.302517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881496, 34.144005, 39.416416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347298, 0.216349, -0.912457,
		0.188213, 0.937142, 0.293840,
		0.918673, -0.273786, 0.284747,
		32.157097, 34.061871, 39.501839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922831, 34.870430, 39.175144>,  <31.514027, 34.253521, 39.302517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922831, 34.870430, 39.175144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136189, 34.532089, 39.173458>,  <32.264202, 34.329082, 39.172447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136189, 34.532089, 39.173458>,  <31.922831, 34.870430, 39.175144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136189, 34.532089, 39.173458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244383, 0.158879, -0.956574,
		0.809793, 0.509202, 0.291459,
		0.533397, -0.845855, -0.004219,
		32.296207, 34.278332, 39.172192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556793, 35.076672, 38.806549>,  <31.922831, 34.870430, 39.175144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556793, 35.076672, 38.806549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586197, 34.677834, 38.814571>,  <32.603840, 34.438530, 38.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586197, 34.677834, 38.814571>,  <32.556793, 35.076672, 38.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586197, 34.677834, 38.814571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630181, 0.030858, -0.775835,
		0.772961, 0.069668, 0.630617,
		0.073510, -0.997093, 0.020052,
		32.608250, 34.378704, 38.820587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269669, 34.945660, 38.585449>,  <32.556793, 35.076672, 38.806549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269669, 34.945660, 38.585449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025097, 34.632000, 38.542992>,  <32.878353, 34.443806, 38.517517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025097, 34.632000, 38.542992>,  <33.269669, 34.945660, 38.585449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025097, 34.632000, 38.542992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170349, 0.000558, -0.985384,
		0.772747, -0.620572, 0.133238,
		-0.611427, -0.784149, -0.106145,
		32.841667, 34.396755, 38.511147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640747, 34.459290, 38.166306>,  <33.269669, 34.945660, 38.585449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640747, 34.459290, 38.166306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248665, 34.384392, 38.140598>,  <33.013416, 34.339451, 38.125175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248665, 34.384392, 38.140598>,  <33.640747, 34.459290, 38.166306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248665, 34.384392, 38.140598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064273, 0.006052, -0.997914,
		0.187248, -0.982294, 0.006103,
		-0.980208, -0.187249, -0.064268,
		32.954601, 34.328217, 38.121319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587868, 33.767048, 37.841473>,  <33.640747, 34.459290, 38.166306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587868, 33.767048, 37.841473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250229, 33.966003, 37.761364>,  <33.047646, 34.085377, 37.713299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250229, 33.966003, 37.761364>,  <33.587868, 33.767048, 37.841473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250229, 33.966003, 37.761364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074375, -0.261285, -0.962392,
		-0.531014, -0.827243, 0.183555,
		-0.844093, 0.497392, -0.200272,
		32.997002, 34.115219, 37.701283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529068, 33.074203, 38.223579>,  <33.587868, 33.767048, 37.841473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529068, 33.074203, 38.223579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629601, 32.772594, 37.980835>,  <33.689922, 32.591629, 37.835190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629601, 32.772594, 37.980835>,  <33.529068, 33.074203, 38.223579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629601, 32.772594, 37.980835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386172, -0.496800, 0.777213,
		-0.887526, -0.429692, 0.166321,
		0.251335, -0.754025, -0.606858,
		33.705002, 32.546387, 37.798779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106991, 32.380165, 38.329426>,  <33.529068, 33.074203, 38.223579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106991, 32.380165, 38.329426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493732, 32.376614, 38.227360>,  <33.725777, 32.374481, 38.166119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493732, 32.376614, 38.227360>,  <33.106991, 32.380165, 38.329426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493732, 32.376614, 38.227360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224489, -0.446499, 0.866166,
		-0.121624, -0.894740, -0.429707,
		0.966857, -0.008882, -0.255164,
		33.783791, 32.373947, 38.150810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368374, 31.671354, 38.502419>,  <33.106991, 32.380165, 38.329426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368374, 31.671354, 38.502419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702496, 31.888905, 38.470253>,  <33.902969, 32.019436, 38.450954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702496, 31.888905, 38.470253>,  <33.368374, 31.671354, 38.502419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702496, 31.888905, 38.470253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305281, -0.337186, 0.890567,
		0.457245, -0.768442, -0.447688,
		0.835303, 0.543878, -0.080414,
		33.953087, 32.052067, 38.446129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843761, 31.279150, 38.785736>,  <33.368374, 31.671354, 38.502419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843761, 31.279150, 38.785736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037018, 31.628031, 38.755192>,  <34.152973, 31.837360, 38.736866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037018, 31.628031, 38.755192>,  <33.843761, 31.279150, 38.785736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037018, 31.628031, 38.755192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621421, -0.280171, 0.731670,
		0.616771, -0.400955, -0.677369,
		0.483146, 0.872204, -0.076360,
		34.181961, 31.889692, 38.732285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628433, 31.150032, 38.660183>,  <33.843761, 31.279150, 38.785736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628433, 31.150032, 38.660183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539776, 31.498331, 38.835762>,  <34.486584, 31.707310, 38.941109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539776, 31.498331, 38.835762>,  <34.628433, 31.150032, 38.660183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539776, 31.498331, 38.835762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464448, -0.301542, 0.832683,
		0.857417, 0.388426, -0.337582,
		-0.221640, 0.870745, 0.438951,
		34.473282, 31.759554, 38.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216686, 31.215206, 38.982834>,  <34.628433, 31.150032, 38.660183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216686, 31.215206, 38.982834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995377, 31.503738, 39.149483>,  <34.862591, 31.676859, 39.249470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995377, 31.503738, 39.149483>,  <35.216686, 31.215206, 38.982834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995377, 31.503738, 39.149483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505130, -0.107166, 0.856364,
		0.662371, 0.684247, -0.305075,
		-0.553271, 0.721333, 0.416618,
		34.829395, 31.720139, 39.274467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702362, 31.603840, 39.451908>,  <35.216686, 31.215206, 38.982834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702362, 31.603840, 39.451908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330292, 31.688673, 39.571766>,  <35.107048, 31.739573, 39.643681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330292, 31.688673, 39.571766>,  <35.702362, 31.603840, 39.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330292, 31.688673, 39.571766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272867, -0.146598, 0.950817,
		0.245577, 0.966194, 0.078492,
		-0.930180, 0.212081, 0.299644,
		35.051239, 31.752296, 39.661659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780415, 32.048115, 40.022835>,  <35.702362, 31.603840, 39.451908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780415, 32.048115, 40.022835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406738, 31.909754, 40.057789>,  <35.182533, 31.826736, 40.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406738, 31.909754, 40.057789>,  <35.780415, 32.048115, 40.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406738, 31.909754, 40.057789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137307, -0.122504, 0.982924,
		-0.329295, 0.930237, 0.161937,
		-0.934190, -0.345907, 0.087388,
		35.126480, 31.805983, 40.084003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535225, 32.310501, 40.647644>,  <35.780415, 32.048115, 40.022835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535225, 32.310501, 40.647644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273621, 32.014236, 40.586075>,  <35.116657, 31.836477, 40.549133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273621, 32.014236, 40.586075>,  <35.535225, 32.310501, 40.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273621, 32.014236, 40.586075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182196, -0.351707, 0.918208,
		-0.734217, 0.572473, 0.364965,
		-0.654010, -0.740660, -0.153927,
		35.077419, 31.792038, 40.539898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038128, 32.286457, 41.272236>,  <35.535225, 32.310501, 40.647644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038128, 32.286457, 41.272236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043121, 31.927704, 41.095402>,  <35.046120, 31.712452, 40.989300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043121, 31.927704, 41.095402>,  <35.038128, 32.286457, 41.272236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043121, 31.927704, 41.095402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169764, -0.433803, 0.884870,
		-0.985406, -0.086100, 0.146842,
		0.012487, -0.896885, -0.442088,
		35.046867, 31.658638, 40.962776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521175, 31.856932, 41.568104>,  <35.038128, 32.286457, 41.272236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521175, 31.856932, 41.568104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754208, 31.576340, 41.403896>,  <34.894028, 31.407986, 41.305374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754208, 31.576340, 41.403896>,  <34.521175, 31.856932, 41.568104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754208, 31.576340, 41.403896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050626, -0.535422, 0.843066,
		-0.811192, -0.470374, -0.347442,
		0.582584, -0.701478, -0.410517,
		34.928982, 31.365896, 41.280743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228024, 31.257889, 41.774876>,  <34.521175, 31.856932, 41.568104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228024, 31.257889, 41.774876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593678, 31.135824, 41.668121>,  <34.813072, 31.062586, 41.604069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593678, 31.135824, 41.668121>,  <34.228024, 31.257889, 41.774876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593678, 31.135824, 41.668121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014702, -0.632942, 0.774060,
		-0.405139, -0.711520, -0.574109,
		0.914137, -0.305161, -0.266890,
		34.867920, 31.044275, 41.588055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153233, 30.566576, 41.808762>,  <34.228024, 31.257889, 41.774876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153233, 30.566576, 41.808762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538116, 30.673449, 41.829830>,  <34.769047, 30.737572, 41.842472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538116, 30.673449, 41.829830>,  <34.153233, 30.566576, 41.808762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538116, 30.673449, 41.829830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104699, -0.541492, 0.834161,
		0.251390, -0.797121, -0.549000,
		0.962207, 0.267179, 0.052668,
		34.826778, 30.753603, 41.845631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489613, 30.009413, 42.028992>,  <34.153233, 30.566576, 41.808762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489613, 30.009413, 42.028992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710751, 30.325323, 42.135284>,  <34.843433, 30.514870, 42.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710751, 30.325323, 42.135284>,  <34.489613, 30.009413, 42.028992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710751, 30.325323, 42.135284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156697, -0.411747, 0.897725,
		0.818416, -0.454665, -0.351389,
		0.552848, 0.789775, 0.265736,
		34.876606, 30.562256, 42.215004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848698, 29.750952, 42.512554>,  <34.489613, 30.009413, 42.028992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848698, 29.750952, 42.512554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893578, 30.140886, 42.589607>,  <34.920506, 30.374847, 42.635838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893578, 30.140886, 42.589607>,  <34.848698, 29.750952, 42.512554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893578, 30.140886, 42.589607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150419, -0.208281, 0.966433,
		0.982235, -0.079455, -0.170003,
		0.112196, 0.974836, 0.192629,
		34.927235, 30.433338, 42.647396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316578, 29.795673, 42.999977>,  <34.848698, 29.750952, 42.512554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316578, 29.795673, 42.999977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173824, 30.169058, 43.014301>,  <35.088173, 30.393089, 43.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173824, 30.169058, 43.014301>,  <35.316578, 29.795673, 42.999977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173824, 30.169058, 43.014301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055576, -0.017054, 0.998309,
		0.932495, 0.358268, -0.045792,
		-0.356881, 0.933463, 0.035814,
		35.066761, 30.449097, 43.025047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729168, 30.116058, 43.365662>,  <35.316578, 29.795673, 42.999977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729168, 30.116058, 43.365662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443314, 30.392513, 43.408783>,  <35.271801, 30.558386, 43.434654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443314, 30.392513, 43.408783>,  <35.729168, 30.116058, 43.365662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443314, 30.392513, 43.408783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131384, -0.018748, 0.991154,
		0.687045, 0.722480, -0.077406,
		-0.714638, 0.691137, 0.107803,
		35.228924, 30.599854, 43.441124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956528, 30.672796, 43.835617>,  <35.729168, 30.116058, 43.365662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956528, 30.672796, 43.835617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556606, 30.677700, 43.841827>,  <35.316654, 30.680643, 43.845554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556606, 30.677700, 43.841827>,  <35.956528, 30.672796, 43.835617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556606, 30.677700, 43.841827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017926, 0.229439, 0.973158,
		0.008370, 0.973246, -0.229614,
		-0.999804, 0.012261, 0.015526,
		35.256664, 30.681379, 43.846485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823261, 31.263130, 44.212345>,  <35.956528, 30.672796, 43.835617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823261, 31.263130, 44.212345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502922, 31.023594, 44.214397>,  <35.310719, 30.879871, 44.215630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502922, 31.023594, 44.214397>,  <35.823261, 31.263130, 44.212345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502922, 31.023594, 44.214397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006038, 0.016643, 0.999843,
		-0.598834, 0.800694, -0.016945,
		-0.800851, -0.598842, 0.005132,
		35.262669, 30.843941, 44.215939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423935, 31.502724, 44.768421>,  <35.823261, 31.263130, 44.212345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423935, 31.502724, 44.768421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261440, 31.145687, 44.690189>,  <35.163944, 30.931465, 44.643250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261440, 31.145687, 44.690189>,  <35.423935, 31.502724, 44.768421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261440, 31.145687, 44.690189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139809, -0.150798, 0.978628,
		-0.903008, 0.424901, -0.063533,
		-0.406239, -0.892591, -0.195577,
		35.139568, 30.877911, 44.631516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783825, 31.502346, 45.056854>,  <35.423935, 31.502724, 44.768421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783825, 31.502346, 45.056854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885632, 31.119425, 45.002018>,  <34.946716, 30.889671, 44.969116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885632, 31.119425, 45.002018>,  <34.783825, 31.502346, 45.056854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885632, 31.119425, 45.002018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196197, -0.189922, 0.961996,
		-0.946958, -0.217944, -0.236158,
		0.254513, -0.957304, -0.137088,
		34.961987, 30.832233, 44.960892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242012, 30.981075, 45.275928>,  <34.783825, 31.502346, 45.056854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242012, 30.981075, 45.275928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604866, 30.820419, 45.326199>,  <34.822578, 30.724026, 45.356361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604866, 30.820419, 45.326199>,  <34.242012, 30.981075, 45.275928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604866, 30.820419, 45.326199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189581, -0.123389, 0.974081,
		-0.375725, -0.907447, -0.188073,
		0.907133, -0.401642, 0.125674,
		34.877007, 30.699926, 45.363899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221581, 30.367071, 45.681282>,  <34.242012, 30.981075, 45.275928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221581, 30.367071, 45.681282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605835, 30.466345, 45.731228>,  <34.836388, 30.525909, 45.761196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605835, 30.466345, 45.731228>,  <34.221581, 30.367071, 45.681282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605835, 30.466345, 45.731228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090296, -0.146145, 0.985134,
		0.262743, -0.957625, -0.117981,
		0.960632, 0.248184, 0.124869,
		34.894024, 30.540800, 45.768688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528301, 29.828054, 46.162144>,  <34.221581, 30.367071, 45.681282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528301, 29.828054, 46.162144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779213, 30.138691, 46.138733>,  <34.929760, 30.325073, 46.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779213, 30.138691, 46.138733>,  <34.528301, 29.828054, 46.162144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779213, 30.138691, 46.138733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356563, -0.219565, 0.908105,
		0.692377, -0.590504, -0.414632,
		0.627278, 0.776593, -0.058530,
		34.967396, 30.371668, 46.121174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085133, 29.583948, 46.363583>,  <34.528301, 29.828054, 46.162144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085133, 29.583948, 46.363583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164673, 29.973034, 46.411388>,  <35.212399, 30.206486, 46.440071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164673, 29.973034, 46.411388>,  <35.085133, 29.583948, 46.363583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164673, 29.973034, 46.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313416, -0.178662, 0.932657,
		0.928562, -0.148007, -0.340393,
		0.198855, 0.972715, 0.119511,
		35.224331, 30.264849, 46.447243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805069, 29.679806, 46.619904>,  <35.085133, 29.583948, 46.363583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805069, 29.679806, 46.619904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622501, 30.026342, 46.701023>,  <35.512959, 30.234264, 46.749695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622501, 30.026342, 46.701023>,  <35.805069, 29.679806, 46.619904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622501, 30.026342, 46.701023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445698, 0.025345, 0.894825,
		0.770086, 0.498806, -0.397695,
		-0.456423, 0.866343, 0.202799,
		35.485573, 30.286245, 46.761864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248173, 30.131584, 46.852821>,  <35.805069, 29.679806, 46.619904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248173, 30.131584, 46.852821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905624, 30.283455, 46.992809>,  <35.700096, 30.374577, 47.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905624, 30.283455, 46.992809>,  <36.248173, 30.131584, 46.852821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905624, 30.283455, 46.992809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408786, 0.084417, 0.908718,
		0.315475, 0.921260, -0.227498,
		-0.856370, 0.379676, 0.349967,
		35.648712, 30.397358, 47.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480450, 30.589996, 47.224365>,  <36.248173, 30.131584, 46.852821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480450, 30.589996, 47.224365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102833, 30.604170, 47.355530>,  <35.876263, 30.612673, 47.434227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.102833, 30.604170, 47.355530>,  <36.480450, 30.589996, 47.224365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102833, 30.604170, 47.355530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323653, 0.290837, 0.900368,
		-0.063466, 0.956116, -0.286031,
		-0.944045, 0.035432, 0.327909,
		35.819618, 30.614799, 47.453903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455807, 31.195747, 47.580700>,  <36.480450, 30.589996, 47.224365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455807, 31.195747, 47.580700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 30.964844, 47.702251>,  <35.970741, 30.826302, 47.775185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 30.964844, 47.702251>,  <36.455807, 31.195747, 47.580700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152641, 30.964844, 47.702251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145619, 0.304362, 0.941360,
		-0.635899, 0.757717, -0.146619,
		-0.757910, -0.577260, 0.303881,
		35.925270, 30.791666, 47.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971512, 31.656919, 48.021381>,  <36.455807, 31.195747, 47.580700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971512, 31.656919, 48.021381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919762, 31.275082, 48.128719>,  <35.888714, 31.045979, 48.193123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919762, 31.275082, 48.128719>,  <35.971512, 31.656919, 48.021381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919762, 31.275082, 48.128719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006328, 0.269821, 0.962890,
		-0.991576, 0.126270, -0.028867,
		-0.129372, -0.954596, 0.268347,
		35.880951, 30.988703, 48.209225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441185, 31.629164, 48.578762>,  <35.971512, 31.656919, 48.021381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441185, 31.629164, 48.578762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634182, 31.279562, 48.601799>,  <35.749981, 31.069801, 48.615620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634182, 31.279562, 48.601799>,  <35.441185, 31.629164, 48.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634182, 31.279562, 48.601799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416006, 0.286524, 0.863043,
		-0.770804, -0.392454, 0.501837,
		0.482493, -0.874004, 0.057590,
		35.778931, 31.017361, 48.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259800, 31.397284, 49.194736>,  <35.441185, 31.629164, 48.578762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259800, 31.397284, 49.194736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596821, 31.198547, 49.111549>,  <35.799034, 31.079306, 49.061638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596821, 31.198547, 49.111549>,  <35.259800, 31.397284, 49.194736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596821, 31.198547, 49.111549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188079, -0.090422, 0.977983,
		-0.504707, -0.863118, 0.017260,
		0.842554, -0.496841, -0.207971,
		35.849586, 31.049496, 49.049160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330467, 30.875467, 49.763783>,  <35.259800, 31.397284, 49.194736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330467, 30.875467, 49.763783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691574, 30.879963, 49.591785>,  <35.908237, 30.882660, 49.488586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691574, 30.879963, 49.591785>,  <35.330467, 30.875467, 49.763783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691574, 30.879963, 49.591785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428604, 0.060831, 0.901442,
		0.036276, -0.998085, 0.050105,
		0.902764, 0.011226, -0.429990,
		35.962402, 30.883335, 49.462788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590900, 30.272955, 49.961716>,  <35.330467, 30.875467, 49.763783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590900, 30.272955, 49.961716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887939, 30.522938, 49.865395>,  <36.066162, 30.672928, 49.807602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887939, 30.522938, 49.865395>,  <35.590900, 30.272955, 49.961716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887939, 30.522938, 49.865395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405655, -0.133615, 0.904207,
		0.532916, -0.769140, -0.352738,
		0.742593, 0.624957, -0.240800,
		36.110718, 30.710424, 49.793156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162556, 29.913923, 50.156731>,  <35.590900, 30.272955, 49.961716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162556, 29.913923, 50.156731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275215, 30.297033, 50.133621>,  <36.342812, 30.526899, 50.119755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275215, 30.297033, 50.133621>,  <36.162556, 29.913923, 50.156731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275215, 30.297033, 50.133621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366531, -0.051745, 0.928966,
		0.886753, -0.282816, -0.365629,
		0.281646, 0.957778, -0.057776,
		36.359711, 30.584366, 50.116287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882973, 29.950277, 50.352978>,  <36.162556, 29.913923, 50.156731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882973, 29.950277, 50.352978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749741, 30.324959, 50.396145>,  <36.669800, 30.549767, 50.422043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749741, 30.324959, 50.396145>,  <36.882973, 29.950277, 50.352978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749741, 30.324959, 50.396145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596864, 0.120857, 0.793188,
		0.729939, 0.328606, -0.599339,
		-0.333081, 0.936702, 0.107915,
		36.649815, 30.605970, 50.428520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422558, 30.268402, 50.542698>,  <36.882973, 29.950277, 50.352978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422558, 30.268402, 50.542698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113148, 30.490295, 50.665295>,  <36.927502, 30.623430, 50.738853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113148, 30.490295, 50.665295>,  <37.422558, 30.268402, 50.542698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113148, 30.490295, 50.665295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409238, 0.067927, 0.909896,
		0.483930, 0.829252, -0.279560,
		-0.773522, 0.554732, 0.306489,
		36.881092, 30.656715, 50.757240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755043, 30.951946, 50.840855>,  <37.422558, 30.268402, 50.542698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755043, 30.951946, 50.840855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388817, 30.902613, 50.993969>,  <37.169079, 30.873013, 51.085838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388817, 30.902613, 50.993969>,  <37.755043, 30.951946, 50.840855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388817, 30.902613, 50.993969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367125, 0.132250, 0.920722,
		-0.164181, 0.983513, -0.075805,
		-0.915568, -0.123335, 0.382785,
		37.114147, 30.865612, 51.108803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468006, 30.853388, 51.194263>,  <37.755043, 30.951946, 50.840855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468006, 30.853388, 51.194263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821671, 31.036720, 51.158043>,  <39.033867, 31.146719, 51.136311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821671, 31.036720, 51.158043>,  <38.468006, 30.853388, 51.194263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821671, 31.036720, 51.158043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091089, -0.020983, -0.995622,
		-0.458224, 0.888534, 0.023197,
		0.884157, 0.458331, -0.090551,
		39.086918, 31.174219, 51.130878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408703, 31.474155, 50.719467>,  <38.468006, 30.853388, 51.194263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408703, 31.474155, 50.719467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794842, 31.371370, 50.701233>,  <39.026524, 31.309700, 50.690292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794842, 31.371370, 50.701233>,  <38.408703, 31.474155, 50.719467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794842, 31.371370, 50.701233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049289, -0.007988, -0.998753,
		0.256277, 0.966389, -0.020377,
		0.965346, -0.256962, -0.045585,
		39.084446, 31.294281, 50.687557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729492, 31.884026, 50.190784>,  <38.408703, 31.474155, 50.719467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729492, 31.884026, 50.190784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004681, 31.594139, 50.206158>,  <39.169796, 31.420208, 50.215382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004681, 31.594139, 50.206158>,  <38.729492, 31.884026, 50.190784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004681, 31.594139, 50.206158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040107, -0.090844, -0.995057,
		0.724626, 0.683032, -0.091565,
		0.687974, -0.724717, 0.038434,
		39.211071, 31.376724, 50.217690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321999, 31.996872, 49.678532>,  <38.729492, 31.884026, 50.190784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321999, 31.996872, 49.678532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338501, 31.606220, 49.762905>,  <39.348404, 31.371830, 49.813530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338501, 31.606220, 49.762905>,  <39.321999, 31.996872, 49.678532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338501, 31.606220, 49.762905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008342, -0.211440, -0.977355,
		0.999114, 0.038564, -0.016870,
		0.041258, -0.976630, 0.210931,
		39.350880, 31.313231, 49.826183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887276, 31.711622, 49.270477>,  <39.321999, 31.996872, 49.678532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887276, 31.711622, 49.270477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657207, 31.390800, 49.334843>,  <39.519169, 31.198307, 49.373463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657207, 31.390800, 49.334843>,  <39.887276, 31.711622, 49.270477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657207, 31.390800, 49.334843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006338, -0.201074, -0.979556,
		0.818012, -0.562387, 0.120734,
		-0.575166, -0.802054, 0.160917,
		39.484657, 31.150185, 49.383118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038456, 31.299454, 48.710625>,  <39.887276, 31.711622, 49.270477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038456, 31.299454, 48.710625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718403, 31.105103, 48.851315>,  <39.526371, 30.988491, 48.935726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718403, 31.105103, 48.851315>,  <40.038456, 31.299454, 48.710625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718403, 31.105103, 48.851315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267077, -0.236452, -0.934216,
		0.537081, -0.841434, 0.059427,
		-0.800133, -0.485879, 0.351722,
		39.478363, 30.959339, 48.956833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052120, 30.634977, 48.565319>,  <40.038456, 31.299454, 48.710625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052120, 30.634977, 48.565319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660297, 30.703651, 48.607250>,  <39.425201, 30.744856, 48.632408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660297, 30.703651, 48.607250>,  <40.052120, 30.634977, 48.565319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660297, 30.703651, 48.607250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135087, -0.175307, -0.975202,
		-0.149040, -0.969430, 0.194915,
		-0.979560, 0.171675, 0.104829,
		39.366428, 30.755156, 48.638699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653160, 30.119307, 48.149986>,  <40.052120, 30.634977, 48.565319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653160, 30.119307, 48.149986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370426, 30.395437, 48.211735>,  <39.200787, 30.561115, 48.248783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370426, 30.395437, 48.211735>,  <39.653160, 30.119307, 48.149986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370426, 30.395437, 48.211735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326928, -0.125277, -0.936709,
		-0.627295, -0.712570, 0.314238,
		-0.706837, 0.690326, 0.154373,
		39.158375, 30.602535, 48.258045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002758, 29.858624, 47.748241>,  <39.653160, 30.119307, 48.149986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002758, 29.858624, 47.748241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960667, 30.248156, 47.828823>,  <38.935410, 30.481874, 47.877171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960667, 30.248156, 47.828823>,  <39.002758, 29.858624, 47.748241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960667, 30.248156, 47.828823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467371, 0.130381, -0.874394,
		-0.877776, -0.186169, 0.441419,
		-0.105232, 0.973828, 0.201455,
		38.929096, 30.540304, 47.889259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364521, 30.022408, 47.503742>,  <39.002758, 29.858624, 47.748241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364521, 30.022408, 47.503742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515667, 30.391405, 47.535301>,  <38.606354, 30.612804, 47.554237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515667, 30.391405, 47.535301>,  <38.364521, 30.022408, 47.503742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515667, 30.391405, 47.535301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471251, 0.264981, -0.841253,
		-0.796957, 0.280699, 0.534853,
		0.377864, 0.922493, 0.078899,
		38.629025, 30.668154, 47.558971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793350, 30.542233, 47.525856>,  <38.364521, 30.022408, 47.503742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793350, 30.542233, 47.525856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129845, 30.713869, 47.394276>,  <38.331741, 30.816851, 47.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129845, 30.713869, 47.394276>,  <37.793350, 30.542233, 47.525856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129845, 30.713869, 47.394276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453652, 0.229174, -0.861208,
		-0.294151, 0.873704, 0.387448,
		0.841234, 0.429091, -0.328946,
		38.382214, 30.842596, 47.295593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542980, 31.127865, 47.123924>,  <37.793350, 30.542233, 47.525856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542980, 31.127865, 47.123924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917213, 31.043474, 47.010666>,  <38.141754, 30.992840, 46.942711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917213, 31.043474, 47.010666>,  <37.542980, 31.127865, 47.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917213, 31.043474, 47.010666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244835, 0.190200, -0.950726,
		0.254436, 0.958808, 0.126293,
		0.935584, -0.210978, -0.283143,
		38.197887, 30.980181, 46.925724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747238, 31.646303, 46.688545>,  <37.542980, 31.127865, 47.123924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747238, 31.646303, 46.688545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966385, 31.327038, 46.588326>,  <38.097874, 31.135479, 46.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966385, 31.327038, 46.588326>,  <37.747238, 31.646303, 46.688545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966385, 31.327038, 46.588326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240416, 0.136646, -0.961004,
		0.801276, 0.586738, -0.117028,
		0.547866, -0.798164, -0.250552,
		38.130745, 31.087589, 46.513161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114815, 31.945953, 46.181091>,  <37.747238, 31.646303, 46.688545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114815, 31.945953, 46.181091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160606, 31.550833, 46.138874>,  <38.188080, 31.313761, 46.113544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160606, 31.550833, 46.138874>,  <38.114815, 31.945953, 46.181091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160606, 31.550833, 46.138874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211218, 0.079608, -0.974192,
		0.970712, 0.133814, -0.199529,
		0.114476, -0.987804, -0.105541,
		38.194950, 31.254492, 46.107212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579247, 31.830830, 45.625759>,  <38.114815, 31.945953, 46.181091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579247, 31.830830, 45.625759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440277, 31.455893, 45.636215>,  <38.356895, 31.230930, 45.642490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440277, 31.455893, 45.636215>,  <38.579247, 31.830830, 45.625759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440277, 31.455893, 45.636215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187785, 0.042233, -0.981302,
		0.918714, -0.345836, -0.190692,
		-0.347422, -0.937344, 0.026143,
		38.336052, 31.174690, 45.644058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008907, 31.329603, 45.223553>,  <38.579247, 31.830830, 45.625759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008907, 31.329603, 45.223553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648018, 31.157148, 45.227757>,  <38.431484, 31.053677, 45.230278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648018, 31.157148, 45.227757>,  <39.008907, 31.329603, 45.223553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648018, 31.157148, 45.227757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002918, -0.018276, -0.999829,
		0.431253, -0.902102, 0.015231,
		-0.902226, -0.431135, 0.010514,
		38.377350, 31.027807, 45.230911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059845, 30.757812, 44.705215>,  <39.008907, 31.329603, 45.223553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059845, 30.757812, 44.705215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673603, 30.851223, 44.750942>,  <38.441856, 30.907269, 44.778378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673603, 30.851223, 44.750942>,  <39.059845, 30.757812, 44.705215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673603, 30.851223, 44.750942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110226, 0.030541, -0.993437,
		-0.235485, -0.971871, -0.003750,
		-0.965607, 0.233526, 0.114318,
		38.383923, 30.921280, 44.785236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643055, 30.257662, 44.295811>,  <39.059845, 30.757812, 44.705215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643055, 30.257662, 44.295811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365536, 30.539581, 44.355007>,  <38.199024, 30.708733, 44.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365536, 30.539581, 44.355007>,  <38.643055, 30.257662, 44.295811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365536, 30.539581, 44.355007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264946, -0.058713, -0.962474,
		-0.669661, -0.706974, 0.227469,
		-0.693799, 0.704799, 0.147991,
		38.157394, 30.751020, 44.399406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966728, 29.958187, 43.904045>,  <38.643055, 30.257662, 44.295811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966728, 29.958187, 43.904045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970730, 30.356478, 43.940769>,  <37.973129, 30.595451, 43.962803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970730, 30.356478, 43.940769>,  <37.966728, 29.958187, 43.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970730, 30.356478, 43.940769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304075, 0.090498, -0.948340,
		-0.952596, -0.018432, 0.303681,
		0.010003, 0.995726, 0.091813,
		37.973732, 30.655195, 43.968311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287537, 30.092617, 43.721897>,  <37.966728, 29.958187, 43.904045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287537, 30.092617, 43.721897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555389, 30.387718, 43.687691>,  <37.716103, 30.564779, 43.667168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555389, 30.387718, 43.687691>,  <37.287537, 30.092617, 43.721897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555389, 30.387718, 43.687691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279613, 0.143762, -0.949288,
		-0.688048, 0.659584, 0.302554,
		0.669631, 0.737754, -0.085513,
		37.756279, 30.609045, 43.662037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982548, 30.627319, 43.419861>,  <37.287537, 30.092617, 43.721897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982548, 30.627319, 43.419861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351070, 30.776405, 43.375538>,  <37.572186, 30.865858, 43.348946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351070, 30.776405, 43.375538>,  <36.982548, 30.627319, 43.419861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351070, 30.776405, 43.375538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197669, 0.203534, -0.958906,
		-0.334847, 0.905349, 0.261191,
		0.921306, 0.372716, -0.110807,
		37.627460, 30.888220, 43.342297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873764, 31.307224, 43.128956>,  <36.982548, 30.627319, 43.419861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873764, 31.307224, 43.128956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248516, 31.190863, 43.051373>,  <37.473370, 31.121046, 43.004822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248516, 31.190863, 43.051373>,  <36.873764, 31.307224, 43.128956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248516, 31.190863, 43.051373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145338, 0.180527, -0.972773,
		0.318001, 0.939566, 0.126853,
		0.936884, -0.290906, -0.193963,
		37.529583, 31.103590, 42.993183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186035, 31.796160, 42.600792>,  <36.873764, 31.307224, 43.128956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186035, 31.796160, 42.600792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418365, 31.471077, 42.582237>,  <37.557762, 31.276028, 42.571106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418365, 31.471077, 42.582237>,  <37.186035, 31.796160, 42.600792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418365, 31.471077, 42.582237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017480, 0.044514, -0.998856,
		0.813841, 0.580971, 0.011649,
		0.580824, -0.812706, -0.046382,
		37.592613, 31.227264, 42.568321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698673, 32.019611, 42.160728>,  <37.186035, 31.796160, 42.600792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698673, 32.019611, 42.160728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749393, 31.622898, 42.153938>,  <37.779827, 31.384871, 42.149864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749393, 31.622898, 42.153938>,  <37.698673, 32.019611, 42.160728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749393, 31.622898, 42.153938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189470, 0.041011, -0.981030,
		0.973665, 0.121179, 0.193113,
		0.126800, -0.991783, -0.016972,
		37.787434, 31.325363, 42.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328480, 31.866520, 41.856396>,  <37.698673, 32.019611, 42.160728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328480, 31.866520, 41.856396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089169, 31.548740, 41.814594>,  <37.945583, 31.358072, 41.789513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089169, 31.548740, 41.814594>,  <38.328480, 31.866520, 41.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089169, 31.548740, 41.814594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008226, 0.136504, -0.990605,
		0.801249, -0.591795, -0.088202,
		-0.598275, -0.794447, -0.104506,
		37.909687, 31.310406, 41.783241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617954, 31.526468, 41.300842>,  <38.328480, 31.866520, 41.856396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617954, 31.526468, 41.300842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257690, 31.361067, 41.354244>,  <38.041531, 31.261826, 41.386288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257690, 31.361067, 41.354244>,  <38.617954, 31.526468, 41.300842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257690, 31.361067, 41.354244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095105, -0.112211, -0.989123,
		0.423989, -0.903561, 0.061737,
		-0.900660, -0.413505, 0.133509,
		37.987492, 31.237015, 41.394299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589684, 30.990623, 40.848690>,  <38.617954, 31.526468, 41.300842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589684, 30.990623, 40.848690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199558, 31.046028, 40.917484>,  <37.965485, 31.079271, 40.958759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199558, 31.046028, 40.917484>,  <38.589684, 30.990623, 40.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199558, 31.046028, 40.917484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177160, -0.025868, -0.983842,
		-0.131827, -0.990023, 0.049768,
		-0.975314, 0.138514, 0.171982,
		37.906963, 31.087582, 40.969078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227951, 30.481775, 40.510094>,  <38.589684, 30.990623, 40.848690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227951, 30.481775, 40.510094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937241, 30.750774, 40.566013>,  <37.762814, 30.912174, 40.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937241, 30.750774, 40.566013>,  <38.227951, 30.481775, 40.510094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937241, 30.750774, 40.566013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133022, 0.061877, -0.989180,
		-0.673871, -0.737508, 0.044486,
		-0.726776, 0.672497, 0.139802,
		37.719208, 30.952524, 40.607952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662029, 30.285872, 40.055672>,  <38.227951, 30.481775, 40.510094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662029, 30.285872, 40.055672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591026, 30.674006, 40.121330>,  <37.548424, 30.906885, 40.160725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591026, 30.674006, 40.121330>,  <37.662029, 30.285872, 40.055672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591026, 30.674006, 40.121330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166525, 0.134771, -0.976783,
		-0.969928, -0.200718, 0.137663,
		-0.177505, 0.970334, 0.164143,
		37.537773, 30.965105, 40.170574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046219, 30.539560, 39.690704>,  <37.662029, 30.285872, 40.055672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046219, 30.539560, 39.690704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232986, 30.890800, 39.732517>,  <37.345047, 31.101545, 39.757607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232986, 30.890800, 39.732517>,  <37.046219, 30.539560, 39.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232986, 30.890800, 39.732517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251608, 0.245245, -0.936241,
		-0.847751, 0.410844, 0.335447,
		0.466916, 0.878101, 0.104535,
		37.373062, 31.154230, 39.763878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707512, 30.997644, 39.361603>,  <37.046219, 30.539560, 39.690704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707512, 30.997644, 39.361603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066883, 31.172438, 39.378937>,  <37.282505, 31.277313, 39.389339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066883, 31.172438, 39.378937>,  <36.707512, 30.997644, 39.361603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066883, 31.172438, 39.378937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027518, 0.154524, -0.987606,
		-0.438263, 0.886098, 0.150854,
		0.898426, 0.436982, 0.043338,
		37.336411, 31.303532, 39.391937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585968, 31.461061, 38.916191>,  <36.707512, 30.997644, 39.361603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585968, 31.461061, 38.916191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984352, 31.447369, 38.949379>,  <37.223385, 31.439154, 38.969292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984352, 31.447369, 38.949379>,  <36.585968, 31.461061, 38.916191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984352, 31.447369, 38.949379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089605, 0.432746, -0.897052,
		-0.005200, 0.900866, 0.434066,
		0.995964, -0.034230, 0.082973,
		37.283142, 31.437099, 38.974270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932537, 32.165665, 38.822590>,  <36.585968, 31.461061, 38.916191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932537, 32.165665, 38.822590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217785, 31.901695, 38.727962>,  <37.388931, 31.743313, 38.671185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217785, 31.901695, 38.727962>,  <36.932537, 32.165665, 38.822590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217785, 31.901695, 38.727962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220931, 0.531807, -0.817539,
		0.665323, 0.530735, 0.525038,
		0.713116, -0.659925, -0.236568,
		37.431721, 31.703718, 38.656990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384411, 32.585567, 38.471149>,  <36.932537, 32.165665, 38.822590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384411, 32.585567, 38.471149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530220, 32.221176, 38.393963>,  <37.617706, 32.002541, 38.347652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530220, 32.221176, 38.393963>,  <37.384411, 32.585567, 38.471149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530220, 32.221176, 38.393963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271602, 0.302227, -0.913724,
		0.890707, 0.280659, 0.357592,
		0.364519, -0.910983, -0.192968,
		37.639576, 31.947882, 38.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083622, 32.666344, 38.220577>,  <37.384411, 32.585567, 38.471149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083622, 32.666344, 38.220577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958679, 32.313503, 38.079536>,  <37.883713, 32.101799, 37.994911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958679, 32.313503, 38.079536>,  <38.083622, 32.666344, 38.220577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958679, 32.313503, 38.079536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406690, 0.211268, -0.888802,
		0.858509, -0.421021, 0.292752,
		-0.312355, -0.882104, -0.352600,
		37.864971, 32.048874, 37.973755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606220, 32.465660, 37.819004>,  <38.083622, 32.666344, 38.220577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606220, 32.465660, 37.819004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324146, 32.211220, 37.693722>,  <38.154903, 32.058556, 37.618553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324146, 32.211220, 37.693722>,  <38.606220, 32.465660, 37.819004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324146, 32.211220, 37.693722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512574, -0.152151, -0.845055,
		0.489886, -0.756457, 0.433342,
		-0.705181, -0.636100, -0.313203,
		38.112591, 32.020390, 37.599762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915024, 31.790947, 37.543163>,  <38.606220, 32.465660, 37.819004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915024, 31.790947, 37.543163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556450, 31.866329, 37.382721>,  <38.341305, 31.911558, 37.286457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556450, 31.866329, 37.382721>,  <38.915024, 31.790947, 37.543163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556450, 31.866329, 37.382721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398259, -0.054443, -0.915656,
		-0.194399, -0.980571, -0.026250,
		-0.896437, 0.188457, -0.401105,
		38.287518, 31.922867, 37.262390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739876, 31.204245, 36.983540>,  <38.915024, 31.790947, 37.543163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739876, 31.204245, 36.983540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539497, 31.539202, 36.896065>,  <38.419270, 31.740175, 36.843578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539497, 31.539202, 36.896065>,  <38.739876, 31.204245, 36.983540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539497, 31.539202, 36.896065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517316, 0.087141, -0.851346,
		-0.693854, -0.539612, -0.476850,
		-0.500950, 0.837392, -0.218686,
		38.389214, 31.790419, 36.830460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626671, 31.168451, 36.310116>,  <38.739876, 31.204245, 36.983540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626671, 31.168451, 36.310116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580132, 31.559586, 36.379749>,  <38.552208, 31.794266, 36.421528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580132, 31.559586, 36.379749>,  <38.626671, 31.168451, 36.310116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580132, 31.559586, 36.379749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607841, 0.208718, -0.766137,
		-0.785488, 0.016674, -0.618652,
		-0.116349, 0.977834, 0.174081,
		38.545227, 31.852936, 36.431973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622253, 31.492451, 35.663284>,  <38.626671, 31.168451, 36.310116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622253, 31.492451, 35.663284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721832, 31.755619, 35.947586>,  <38.781578, 31.913521, 36.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721832, 31.755619, 35.947586>,  <38.622253, 31.492451, 35.663284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721832, 31.755619, 35.947586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650024, 0.430521, -0.626195,
		-0.717981, 0.617892, -0.320489,
		0.248944, 0.657922, 0.710750,
		38.796516, 31.952995, 36.160812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526684, 32.279713, 35.534237>,  <38.622253, 31.492451, 35.663284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526684, 32.279713, 35.534237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839130, 32.168045, 35.757641>,  <39.026596, 32.101044, 35.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839130, 32.168045, 35.757641>,  <38.526684, 32.279713, 35.534237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839130, 32.168045, 35.757641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622488, 0.417915, -0.661707,
		-0.048683, 0.864531, 0.500216,
		0.781114, -0.279165, 0.558506,
		39.073463, 32.084297, 35.925194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964947, 32.871147, 35.558167>,  <38.526684, 32.279713, 35.534237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964947, 32.871147, 35.558167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161972, 32.526527, 35.607338>,  <39.280186, 32.319756, 35.636841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161972, 32.526527, 35.607338>,  <38.964947, 32.871147, 35.558167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161972, 32.526527, 35.607338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671060, 0.286059, -0.683995,
		0.554132, 0.419402, 0.719055,
		0.492561, -0.861552, 0.122930,
		39.309742, 32.268063, 35.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761280, 32.848122, 35.842270>,  <38.964947, 32.871147, 35.558167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761280, 32.848122, 35.842270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612808, 32.583324, 35.581810>,  <39.523727, 32.424446, 35.425533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612808, 32.583324, 35.581810>,  <39.761280, 32.848122, 35.842270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612808, 32.583324, 35.581810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426383, 0.501437, -0.752834,
		0.824879, -0.557074, 0.096139,
		-0.371176, -0.661989, -0.651152,
		39.501453, 32.384727, 35.386463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346348, 32.787056, 35.338737>,  <39.761280, 32.848122, 35.842270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346348, 32.787056, 35.338737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006062, 32.731407, 35.135983>,  <39.801891, 32.698017, 35.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006062, 32.731407, 35.135983>,  <40.346348, 32.787056, 35.338737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006062, 32.731407, 35.135983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370326, 0.525724, -0.765815,
		0.373019, -0.839203, -0.395722,
		-0.850715, -0.139117, -0.506883,
		39.750847, 32.689671, 34.983917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771057, 33.380768, 35.305222>,  <40.346348, 32.787056, 35.338737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771057, 33.380768, 35.305222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782261, 33.085491, 35.035618>,  <40.788982, 32.908325, 34.873856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782261, 33.085491, 35.035618>,  <40.771057, 33.380768, 35.305222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782261, 33.085491, 35.035618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909103, 0.299168, -0.289880,
		0.415629, -0.604623, 0.679473,
		0.028008, -0.738193, -0.674007,
		40.790665, 32.864033, 34.833416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491959, 33.125126, 35.313282>,  <40.771057, 33.380768, 35.305222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491959, 33.125126, 35.313282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321636, 33.054577, 34.958298>,  <41.219440, 33.012249, 34.745308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321636, 33.054577, 34.958298>,  <41.491959, 33.125126, 35.313282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321636, 33.054577, 34.958298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849597, 0.259449, -0.459207,
		0.311241, -0.949515, 0.039369,
		-0.425809, -0.176372, -0.887457,
		41.193893, 33.001667, 34.692062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223728, 32.741817, 35.127922>,  <41.491959, 33.125126, 35.313282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223728, 32.741817, 35.127922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400135, 33.078850, 35.004269>,  <42.505978, 33.281071, 34.930077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400135, 33.078850, 35.004269>,  <42.223728, 32.741817, 35.127922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400135, 33.078850, 35.004269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011921, -0.338905, -0.940745,
		-0.897421, 0.418568, -0.139417,
		0.441015, 0.842582, -0.309130,
		42.532440, 33.331623, 34.911530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820091, 32.965641, 34.563503>,  <42.223728, 32.741817, 35.127922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820091, 32.965641, 34.563503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205914, 33.069881, 34.546883>,  <42.437405, 33.132427, 34.536911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205914, 33.069881, 34.546883>,  <41.820091, 32.965641, 34.563503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205914, 33.069881, 34.546883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058583, -0.364997, -0.929164,
		-0.257309, 0.893792, -0.367325,
		0.964552, 0.260601, -0.041556,
		42.495277, 33.148060, 34.534416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919014, 33.375694, 33.882675>,  <41.820091, 32.965641, 34.563503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919014, 33.375694, 33.882675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269539, 33.220707, 33.997185>,  <42.479855, 33.127716, 34.065891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269539, 33.220707, 33.997185>,  <41.919014, 33.375694, 33.882675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269539, 33.220707, 33.997185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137647, -0.368094, -0.919543,
		0.461669, 0.845208, -0.269230,
		0.876307, -0.387466, 0.286278,
		42.532433, 33.104465, 34.083069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389053, 33.484238, 33.307175>,  <41.919014, 33.375694, 33.882675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389053, 33.484238, 33.307175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550190, 33.184628, 33.517578>,  <42.646870, 33.004864, 33.643822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550190, 33.184628, 33.517578>,  <42.389053, 33.484238, 33.307175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550190, 33.184628, 33.517578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217879, -0.479707, -0.849947,
		0.888960, 0.456997, -0.030048,
		0.402838, -0.749022, 0.526011,
		42.671040, 32.959919, 33.675381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939175, 33.273754, 32.939571>,  <42.389053, 33.484238, 33.307175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939175, 33.273754, 32.939571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884254, 32.949986, 33.167953>,  <42.851303, 32.755726, 33.304985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884254, 32.949986, 33.167953>,  <42.939175, 33.273754, 32.939571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884254, 32.949986, 33.167953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162482, -0.587013, -0.793105,
		0.977113, -0.016122, 0.212111,
		-0.137298, -0.809417, 0.570958,
		42.843063, 32.707161, 33.339241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555691, 32.800442, 32.903969>,  <42.939175, 33.273754, 32.939571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555691, 32.800442, 32.903969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269093, 32.542145, 33.009533>,  <43.097134, 32.387165, 33.072872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269093, 32.542145, 33.009533>,  <43.555691, 32.800442, 32.903969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269093, 32.542145, 33.009533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305310, -0.630437, -0.713678,
		0.627232, -0.430773, 0.648857,
		-0.716496, -0.645743, 0.263911,
		43.054142, 32.348423, 33.088707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915569, 32.097820, 33.008816>,  <43.555691, 32.800442, 32.903969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915569, 32.097820, 33.008816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529774, 32.004520, 32.959244>,  <43.298298, 31.948542, 32.929501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529774, 32.004520, 32.959244>,  <43.915569, 32.097820, 33.008816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529774, 32.004520, 32.959244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261074, -0.770730, -0.581218,
		0.040048, -0.592934, 0.804255,
		-0.964487, -0.233247, -0.123934,
		43.240429, 31.934546, 32.922062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822151, 31.347185, 33.045486>,  <43.915569, 32.097820, 33.008816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822151, 31.347185, 33.045486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500191, 31.469616, 32.842136>,  <43.307014, 31.543074, 32.720127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.500191, 31.469616, 32.842136>,  <43.822151, 31.347185, 33.045486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.500191, 31.469616, 32.842136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221852, -0.639374, -0.736194,
		-0.550378, -0.705349, 0.446729,
		-0.804901, 0.306077, -0.508381,
		43.258720, 31.561440, 32.689621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467072, 30.687105, 32.803997>,  <43.822151, 31.347185, 33.045486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467072, 30.687105, 32.803997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333366, 30.976336, 32.562195>,  <43.253143, 31.149874, 32.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333366, 30.976336, 32.562195>,  <43.467072, 30.687105, 32.803997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333366, 30.976336, 32.562195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028670, -0.648908, -0.760327,
		-0.942044, -0.236817, 0.237635,
		-0.334262, 0.723074, -0.604510,
		43.233089, 31.193258, 32.380840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902744, 30.456264, 32.485619>,  <43.467072, 30.687105, 32.803997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902744, 30.456264, 32.485619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030693, 30.760210, 32.259243>,  <43.107464, 30.942577, 32.123417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030693, 30.760210, 32.259243>,  <42.902744, 30.456264, 32.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030693, 30.760210, 32.259243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098732, -0.567334, -0.817548,
		-0.942302, 0.317389, -0.106453,
		0.319875, 0.759866, -0.565936,
		43.126656, 30.988171, 32.089462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408291, 30.515408, 31.807732>,  <42.902744, 30.456264, 32.485619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408291, 30.515408, 31.807732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742210, 30.712488, 31.709463>,  <42.942562, 30.830736, 31.650501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742210, 30.712488, 31.709463>,  <42.408291, 30.515408, 31.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742210, 30.712488, 31.709463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034751, -0.398181, -0.916648,
		-0.549453, 0.773756, -0.315281,
		0.834801, 0.492699, -0.245671,
		42.992649, 30.860298, 31.635761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339203, 30.737843, 31.077543>,  <42.408291, 30.515408, 31.807732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339203, 30.737843, 31.077543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734772, 30.770111, 31.127378>,  <42.972115, 30.789473, 31.157280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734772, 30.770111, 31.127378>,  <42.339203, 30.737843, 31.077543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734772, 30.770111, 31.127378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145849, -0.372538, -0.916484,
		-0.027521, 0.924504, -0.380177,
		0.988924, 0.080671, 0.124586,
		43.031448, 30.794312, 31.164755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631882, 31.189508, 30.515060>,  <42.339203, 30.737843, 31.077543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631882, 31.189508, 30.515060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955292, 30.988558, 30.637634>,  <43.149338, 30.867987, 30.711178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955292, 30.988558, 30.637634>,  <42.631882, 31.189508, 30.515060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955292, 30.988558, 30.637634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099317, -0.396772, -0.912528,
		0.580019, 0.768237, -0.270906,
		0.808526, -0.502378, 0.306435,
		43.197849, 30.837845, 30.729565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055782, 31.253199, 29.940763>,  <42.631882, 31.189508, 30.515060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055782, 31.253199, 29.940763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211788, 30.962109, 30.166437>,  <43.305393, 30.787455, 30.301842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211788, 30.962109, 30.166437>,  <43.055782, 31.253199, 29.940763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211788, 30.962109, 30.166437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213495, -0.524542, -0.824182,
		0.895715, 0.441896, -0.049215,
		0.390018, -0.727725, 0.564183,
		43.328793, 30.743792, 30.335691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754032, 31.153004, 29.734102>,  <43.055782, 31.253199, 29.940763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754032, 31.153004, 29.734102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662155, 30.803394, 29.905365>,  <43.607029, 30.593628, 30.008123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662155, 30.803394, 29.905365>,  <43.754032, 31.153004, 29.734102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662155, 30.803394, 29.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205649, -0.473573, -0.856409,
		0.951287, -0.108663, 0.288521,
		-0.229696, -0.874026, 0.428157,
		43.593246, 30.541187, 30.033812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365467, 30.728579, 29.603132>,  <43.754032, 31.153004, 29.734102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365467, 30.728579, 29.603132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030991, 30.516895, 29.660719>,  <43.830307, 30.389885, 29.695271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030991, 30.516895, 29.660719>,  <44.365467, 30.728579, 29.603132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030991, 30.516895, 29.660719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158585, -0.484598, -0.860242,
		0.525013, -0.696494, 0.489140,
		-0.836189, -0.529208, 0.143967,
		43.780132, 30.358133, 29.703909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599365, 29.964785, 29.637493>,  <44.365467, 30.728579, 29.603132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599365, 29.964785, 29.637493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210033, 29.999504, 29.552557>,  <43.976433, 30.020336, 29.501596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210033, 29.999504, 29.552557>,  <44.599365, 29.964785, 29.637493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210033, 29.999504, 29.552557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131304, -0.548213, -0.825968,
		-0.188098, -0.831823, 0.522197,
		-0.973333, 0.086797, -0.212339,
		43.918034, 30.025543, 29.488855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407528, 29.270971, 29.410498>,  <44.599365, 29.964785, 29.637493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407528, 29.270971, 29.410498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132580, 29.531315, 29.281561>,  <43.967609, 29.687521, 29.204199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132580, 29.531315, 29.281561>,  <44.407528, 29.270971, 29.410498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132580, 29.531315, 29.281561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078652, -0.507901, -0.857818,
		-0.722038, -0.564284, 0.400306,
		-0.687369, 0.650861, -0.322342,
		43.926369, 29.726574, 29.184858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916725, 28.832867, 29.058197>,  <44.407528, 29.270971, 29.410498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916725, 28.832867, 29.058197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824821, 29.195568, 28.916771>,  <43.769680, 29.413189, 28.831915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824821, 29.195568, 28.916771>,  <43.916725, 28.832867, 29.058197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824821, 29.195568, 28.916771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177198, -0.396186, -0.900909,
		-0.956980, -0.144344, 0.251704,
		-0.229762, 0.906753, -0.353565,
		43.755894, 29.467594, 28.810701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188969, 28.850773, 28.711555>,  <43.916725, 28.832867, 29.058197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188969, 28.850773, 28.711555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410675, 29.152763, 28.571383>,  <43.543697, 29.333958, 28.487278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410675, 29.152763, 28.571383>,  <43.188969, 28.850773, 28.711555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410675, 29.152763, 28.571383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102001, -0.356238, -0.928811,
		-0.826066, 0.550553, -0.120443,
		0.554266, 0.754974, -0.350433,
		43.576954, 29.379255, 28.466253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795307, 29.218517, 28.225006>,  <43.188969, 28.850773, 28.711555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795307, 29.218517, 28.225006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186146, 29.254364, 28.147802>,  <43.420650, 29.275871, 28.101480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186146, 29.254364, 28.147802>,  <42.795307, 29.218517, 28.225006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186146, 29.254364, 28.147802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137732, -0.425081, -0.894615,
		-0.162217, 0.900708, -0.403002,
		0.977095, 0.089615, -0.193012,
		43.479275, 29.281248, 28.089899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936199, 29.542397, 27.591867>,  <42.795307, 29.218517, 28.225006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936199, 29.542397, 27.591867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225697, 29.276855, 27.667231>,  <43.399395, 29.117531, 27.712448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225697, 29.276855, 27.667231>,  <42.936199, 29.542397, 27.591867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225697, 29.276855, 27.667231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155902, -0.423262, -0.892493,
		0.672232, 0.616560, -0.409828,
		0.723740, -0.663855, 0.188408,
		43.442818, 29.077700, 27.723753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793209, 29.356844, 27.002235>,  <42.936199, 29.542397, 27.591867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793209, 29.356844, 27.002235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056705, 29.069042, 27.090208>,  <43.214802, 28.896360, 27.142992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056705, 29.069042, 27.090208>,  <42.793209, 29.356844, 27.002235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056705, 29.069042, 27.090208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095841, -0.370187, -0.924000,
		0.746240, 0.587599, -0.312816,
		0.658741, -0.719506, 0.219933,
		43.254330, 28.853189, 27.156187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235210, 29.308743, 26.479555>,  <42.793209, 29.356844, 27.002235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235210, 29.308743, 26.479555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304779, 28.949835, 26.641869>,  <43.346519, 28.734489, 26.739256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304779, 28.949835, 26.641869>,  <43.235210, 29.308743, 26.479555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304779, 28.949835, 26.641869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025114, -0.415969, -0.909032,
		0.984439, 0.147910, -0.094880,
		0.173922, -0.897269, 0.405782,
		43.356956, 28.680655, 26.763603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942261, 29.900667, 26.215818>,  <43.235210, 29.308743, 26.479555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942261, 29.900667, 26.215818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133156, 30.242079, 26.299467>,  <43.247692, 30.446926, 26.349657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133156, 30.242079, 26.299467>,  <42.942261, 29.900667, 26.215818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133156, 30.242079, 26.299467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878771, -0.464295, -0.110419,
		0.002849, 0.236466, -0.971635,
		0.477236, 0.853530, 0.209122,
		43.276325, 30.498138, 26.362204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470959, 30.099400, 25.690569>,  <42.942261, 29.900667, 26.215818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470959, 30.099400, 25.690569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579224, 30.222864, 26.055309>,  <43.644184, 30.296942, 26.274153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579224, 30.222864, 26.055309>,  <43.470959, 30.099400, 25.690569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579224, 30.222864, 26.055309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839919, -0.538559, -0.067010,
		0.470401, 0.784018, -0.405017,
		0.270663, 0.308660, 0.911850,
		43.660423, 30.315462, 26.328865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270088, 30.145681, 25.658133>,  <43.470959, 30.099400, 25.690569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270088, 30.145681, 25.658133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143932, 30.115522, 26.036518>,  <44.068241, 30.097427, 26.263550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143932, 30.115522, 26.036518>,  <44.270088, 30.145681, 25.658133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143932, 30.115522, 26.036518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867155, -0.427797, 0.255014,
		0.385454, 0.900725, 0.200301,
		-0.315385, -0.075396, 0.945964,
		44.049316, 30.092903, 26.320307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715347, 30.796642, 25.481571>,  <44.270088, 30.145681, 25.658133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715347, 30.796642, 25.481571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851376, 30.438295, 25.367184>,  <44.932991, 30.223288, 25.298552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851376, 30.438295, 25.367184>,  <44.715347, 30.796642, 25.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851376, 30.438295, 25.367184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611375, 0.020444, -0.791077,
		0.714545, 0.443855, -0.540758,
		0.340068, -0.895865, -0.285970,
		44.953396, 30.169537, 25.281393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533276, 30.826229, 26.215500>,  <44.715347, 30.796642, 25.481571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533276, 30.826229, 26.215500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903053, 30.932873, 26.324543>,  <45.124920, 30.996859, 26.389969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903053, 30.932873, 26.324543>,  <44.533276, 30.826229, 26.215500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903053, 30.932873, 26.324543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379576, 0.711464, 0.591389,
		-0.036280, -0.650184, 0.758910,
		0.924449, 0.266609, 0.272606,
		45.180389, 31.012856, 26.406324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474766, 31.007195, 26.889723>,  <44.533276, 30.826229, 26.215500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474766, 31.007195, 26.889723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829433, 31.170170, 26.802254>,  <45.042233, 31.267956, 26.749771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829433, 31.170170, 26.802254>,  <44.474766, 31.007195, 26.889723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829433, 31.170170, 26.802254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178414, 0.737718, 0.651107,
		0.426605, -0.538300, 0.726802,
		0.886666, 0.407438, -0.218674,
		45.095432, 31.292400, 26.736650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930206, 31.178272, 27.488913>,  <44.474766, 31.007195, 26.889723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930206, 31.178272, 27.488913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973862, 31.455788, 27.204166>,  <45.000053, 31.622297, 27.033319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973862, 31.455788, 27.204166>,  <44.930206, 31.178272, 27.488913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973862, 31.455788, 27.204166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228594, 0.714464, 0.661276,
		0.967385, 0.090560, 0.236569,
		0.109135, 0.693787, -0.711863,
		45.006603, 31.663923, 26.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394463, 31.738192, 27.654280>,  <44.930206, 31.178272, 27.488913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394463, 31.738192, 27.654280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143261, 31.889601, 27.382299>,  <44.992538, 31.980446, 27.219112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143261, 31.889601, 27.382299>,  <45.394463, 31.738192, 27.654280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143261, 31.889601, 27.382299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170712, 0.785445, 0.594923,
		0.759254, 0.489690, -0.428645,
		-0.628005, 0.378523, -0.679949,
		44.954861, 32.003159, 27.178314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695816, 32.431751, 27.401028>,  <45.394463, 31.738192, 27.654280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695816, 32.431751, 27.401028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299488, 32.379784, 27.386074>,  <45.061691, 32.348602, 27.377102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299488, 32.379784, 27.386074>,  <45.695816, 32.431751, 27.401028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299488, 32.379784, 27.386074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129712, 0.835694, 0.533658,
		-0.038092, 0.533608, -0.844874,
		-0.990820, -0.129918, -0.037382,
		45.002243, 32.340809, 27.374859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410984, 33.065289, 27.363184>,  <45.695816, 32.431751, 27.401028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410984, 33.065289, 27.363184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109138, 32.837994, 27.494429>,  <44.928032, 32.701614, 27.573175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.109138, 32.837994, 27.494429>,  <45.410984, 33.065289, 27.363184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109138, 32.837994, 27.494429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225810, 0.694393, 0.683248,
		-0.616089, 0.441498, -0.652314,
		-0.754615, -0.568241, 0.328113,
		44.882755, 32.667522, 27.592863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769722, 33.478790, 27.371521>,  <45.410984, 33.065289, 27.363184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769722, 33.478790, 27.371521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756908, 33.174114, 27.630381>,  <44.749222, 32.991310, 27.785696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.756908, 33.174114, 27.630381>,  <44.769722, 33.478790, 27.371521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756908, 33.174114, 27.630381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225498, 0.636294, 0.737754,
		-0.973717, -0.122300, -0.192140,
		-0.032029, -0.761691, 0.647148,
		44.747299, 32.945606, 27.824526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459221, 33.762547, 27.936218>,  <44.769722, 33.478790, 27.371521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459221, 33.762547, 27.936218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564735, 33.407692, 28.087694>,  <44.628044, 33.194778, 28.178579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564735, 33.407692, 28.087694>,  <44.459221, 33.762547, 27.936218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564735, 33.407692, 28.087694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242636, 0.318942, 0.916190,
		-0.933565, -0.333565, -0.131117,
		0.263790, -0.887136, 0.378688,
		44.643871, 33.141552, 28.201300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923004, 33.609558, 28.463686>,  <44.459221, 33.762547, 27.936218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923004, 33.609558, 28.463686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251247, 33.413769, 28.581676>,  <44.448193, 33.296295, 28.652472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251247, 33.413769, 28.581676>,  <43.923004, 33.609558, 28.463686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251247, 33.413769, 28.581676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093124, 0.394728, 0.914067,
		-0.563846, -0.777564, 0.278337,
		0.820613, -0.489473, 0.294976,
		44.497433, 33.266926, 28.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773056, 33.245453, 29.118906>,  <43.923004, 33.609558, 28.463686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773056, 33.245453, 29.118906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171398, 33.280903, 29.110773>,  <44.410404, 33.302174, 29.105894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171398, 33.280903, 29.110773>,  <43.773056, 33.245453, 29.118906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171398, 33.280903, 29.110773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009268, 0.321375, 0.946906,
		0.090455, -0.942796, 0.320865,
		0.995857, 0.088626, -0.020333,
		44.470154, 33.307491, 29.104673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969120, 32.828835, 29.632778>,  <43.773056, 33.245453, 29.118906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969120, 32.828835, 29.632778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266399, 33.092560, 29.587240>,  <44.444767, 33.250797, 29.559917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266399, 33.092560, 29.587240>,  <43.969120, 32.828835, 29.632778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266399, 33.092560, 29.587240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059684, 0.104146, 0.992770,
		0.666406, -0.744617, 0.038050,
		0.743196, 0.659317, -0.113845,
		44.489357, 33.290356, 29.553087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318768, 32.783951, 30.249538>,  <43.969120, 32.828835, 29.632778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318768, 32.783951, 30.249538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506542, 33.115681, 30.128305>,  <44.619205, 33.314716, 30.055565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506542, 33.115681, 30.128305>,  <44.318768, 32.783951, 30.249538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506542, 33.115681, 30.128305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255352, 0.201077, 0.945708,
		0.845239, -0.521338, -0.117377,
		0.469432, 0.829322, -0.303083,
		44.647373, 33.364475, 30.037380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154747, 32.872227, 30.485821>,  <44.318768, 32.783951, 30.249538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154747, 32.872227, 30.485821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001087, 33.236637, 30.425875>,  <44.908890, 33.455284, 30.389908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001087, 33.236637, 30.425875>,  <45.154747, 32.872227, 30.485821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001087, 33.236637, 30.425875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305221, 0.278506, 0.910645,
		0.871359, 0.304084, -0.385053,
		-0.384152, 0.911026, -0.149866,
		44.885841, 33.509945, 30.380915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726284, 33.432690, 30.566505>,  <45.154747, 32.872227, 30.485821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726284, 33.432690, 30.566505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381775, 33.626286, 30.628418>,  <45.175068, 33.742443, 30.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381775, 33.626286, 30.628418>,  <45.726284, 33.432690, 30.566505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381775, 33.626286, 30.628418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376168, 0.402511, 0.834555,
		0.341615, 0.777007, -0.528735,
		-0.861277, 0.483989, 0.154781,
		45.123390, 33.771481, 30.674852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938942, 34.076767, 30.892113>,  <45.726284, 33.432690, 30.566505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938942, 34.076767, 30.892113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551067, 34.049408, 30.985939>,  <45.318340, 34.032993, 31.042234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551067, 34.049408, 30.985939>,  <45.938942, 34.076767, 30.892113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551067, 34.049408, 30.985939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183126, 0.432113, 0.883031,
		-0.161752, 0.899222, -0.406491,
		-0.969691, -0.068393, 0.234567,
		45.260159, 34.028889, 31.056309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835136, 34.732662, 31.280067>,  <45.938942, 34.076767, 30.892113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835136, 34.732662, 31.280067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534901, 34.477928, 31.350565>,  <45.354759, 34.325089, 31.392862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534901, 34.477928, 31.350565>,  <45.835136, 34.732662, 31.280067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534901, 34.477928, 31.350565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138029, 0.109727, 0.984331,
		-0.646197, 0.763151, 0.005543,
		-0.750585, -0.636837, 0.176242,
		45.309727, 34.286877, 31.403439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380913, 34.951431, 31.759850>,  <45.835136, 34.732662, 31.280067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380913, 34.951431, 31.759850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287712, 34.562565, 31.769686>,  <45.231792, 34.329247, 31.775587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287712, 34.562565, 31.769686>,  <45.380913, 34.951431, 31.759850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287712, 34.562565, 31.769686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172220, -0.016364, 0.984923,
		-0.957104, 0.233728, 0.171239,
		-0.233006, -0.972164, 0.024591,
		45.217812, 34.270916, 31.777063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821552, 34.871712, 32.228653>,  <45.380913, 34.951431, 31.759850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821552, 34.871712, 32.228653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017731, 34.525330, 32.189499>,  <45.135437, 34.317501, 32.166008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017731, 34.525330, 32.189499>,  <44.821552, 34.871712, 32.228653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017731, 34.525330, 32.189499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015086, -0.103870, 0.994476,
		-0.871341, -0.489214, -0.037878,
		0.490446, -0.865956, -0.097886,
		45.164864, 34.265541, 32.160133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563488, 34.430191, 32.739704>,  <44.821552, 34.871712, 32.228653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563488, 34.430191, 32.739704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899677, 34.226238, 32.666351>,  <45.101391, 34.103867, 32.622337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899677, 34.226238, 32.666351>,  <44.563488, 34.430191, 32.739704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899677, 34.226238, 32.666351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009635, -0.324320, 0.945898,
		-0.541770, -0.796768, -0.267669,
		0.840472, -0.509880, -0.183384,
		45.151817, 34.073273, 32.611336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380344, 33.706406, 32.834698>,  <44.563488, 34.430191, 32.739704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380344, 33.706406, 32.834698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776566, 33.756550, 32.856953>,  <45.014297, 33.786636, 32.870304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776566, 33.756550, 32.856953>,  <44.380344, 33.706406, 32.834698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776566, 33.756550, 32.856953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010595, -0.474358, 0.880268,
		0.136746, -0.871360, -0.471204,
		0.990550, 0.125365, 0.055634,
		45.073730, 33.794159, 32.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585052, 32.996067, 33.004333>,  <44.380344, 33.706406, 32.834698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585052, 32.996067, 33.004333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894939, 33.232101, 33.095215>,  <45.080872, 33.373722, 33.149742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894939, 33.232101, 33.095215>,  <44.585052, 32.996067, 33.004333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894939, 33.232101, 33.095215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158289, -0.528862, 0.833816,
		0.612178, -0.610006, -0.503121,
		0.774715, 0.590082, 0.227200,
		45.127354, 33.409126, 33.163376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024193, 32.585327, 33.372562>,  <44.585052, 32.996067, 33.004333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024193, 32.585327, 33.372562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171417, 32.936172, 33.495979>,  <45.259750, 33.146679, 33.570030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171417, 32.936172, 33.495979>,  <45.024193, 32.585327, 33.372562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171417, 32.936172, 33.495979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061081, -0.353929, 0.933276,
		0.927794, -0.324654, -0.183841,
		0.368059, 0.877117, 0.308543,
		45.281834, 33.199306, 33.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535042, 32.396587, 33.944149>,  <45.024193, 32.585327, 33.372562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535042, 32.396587, 33.944149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498245, 32.793110, 33.981785>,  <45.476170, 33.031025, 34.004364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498245, 32.793110, 33.981785>,  <45.535042, 32.396587, 33.944149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498245, 32.793110, 33.981785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097070, -0.102965, 0.989937,
		0.991017, 0.081930, 0.105697,
		-0.091989, 0.991305, 0.094087,
		45.470650, 33.090500, 34.010010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.030598, 32.618919, 34.347694>,  <45.535042, 32.396587, 33.944149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.030598, 32.618919, 34.347694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754711, 32.900406, 34.415894>,  <45.589180, 33.069298, 34.456814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754711, 32.900406, 34.415894>,  <46.030598, 32.618919, 34.347694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754711, 32.900406, 34.415894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148662, -0.092821, 0.984522,
		0.708652, 0.704389, -0.040595,
		-0.689719, 0.703718, 0.170494,
		45.547794, 33.111523, 34.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356430, 33.195118, 34.671097>,  <46.030598, 32.618919, 34.347694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356430, 33.195118, 34.671097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968941, 33.138676, 34.752743>,  <45.736446, 33.104813, 34.801731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968941, 33.138676, 34.752743>,  <46.356430, 33.195118, 34.671097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968941, 33.138676, 34.752743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228470, -0.186196, 0.955580,
		-0.096829, 0.972328, 0.212610,
		-0.968724, -0.141103, 0.204118,
		45.678322, 33.096344, 34.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035118, 33.517567, 34.852779>,  <46.356430, 33.195118, 34.671097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035118, 33.517567, 34.852779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394516, 33.685684, 34.802074>,  <47.610153, 33.786552, 34.771652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.394516, 33.685684, 34.802074>,  <47.035118, 33.517567, 34.852779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394516, 33.685684, 34.802074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327629, 0.834191, 0.443605,
		0.292185, -0.357045, 0.887213,
		0.898492, 0.420292, -0.126760,
		47.664062, 33.811771, 34.764046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.390541, 33.820816, 35.477821>,  <47.035118, 33.517567, 34.852779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.390541, 33.820816, 35.477821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496559, 34.011723, 35.142689>,  <47.560169, 34.126266, 34.941608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.496559, 34.011723, 35.142689>,  <47.390541, 33.820816, 35.477821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.496559, 34.011723, 35.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270830, 0.870780, 0.410359,
		0.925420, 0.118148, 0.360053,
		0.265044, 0.477268, -0.837835,
		47.576073, 34.154903, 34.891338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913593, 34.375256, 35.616028>,  <47.390541, 33.820816, 35.477821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913593, 34.375256, 35.616028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682938, 34.472980, 35.304180>,  <47.544544, 34.531616, 35.117073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682938, 34.472980, 35.304180>,  <47.913593, 34.375256, 35.616028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682938, 34.472980, 35.304180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216917, 0.874212, 0.434397,
		0.787676, 0.419602, -0.451110,
		-0.576639, 0.244311, -0.779615,
		47.509945, 34.546272, 35.070297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.038910, 35.102188, 35.257298>,  <47.913593, 34.375256, 35.616028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.038910, 35.102188, 35.257298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653755, 34.994370, 35.251728>,  <47.422661, 34.929680, 35.248386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.653755, 34.994370, 35.251728>,  <48.038910, 35.102188, 35.257298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.653755, 34.994370, 35.251728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260959, 0.916559, 0.303018,
		-0.068918, 0.295405, -0.952883,
		-0.962887, -0.269547, -0.013921,
		47.364891, 34.913506, 35.247551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.624378, 35.383614, 45.973637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396935, 35.677143, 46.122330>,  <35.260468, 35.853260, 46.211544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.396935, 35.677143, 46.122330>,  <35.624378, 35.383614, 45.973637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396935, 35.677143, 46.122330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276192, 0.255357, -0.926558,
		-0.774858, -0.629516, 0.057480,
		-0.568606, 0.733827, 0.371733,
		35.226353, 35.897293, 46.233849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999001, 35.324535, 45.697521>,  <35.624378, 35.383614, 45.973637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999001, 35.324535, 45.697521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991856, 35.706280, 45.816769>,  <34.987568, 35.935326, 45.888317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991856, 35.706280, 45.816769>,  <34.999001, 35.324535, 45.697521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991856, 35.706280, 45.816769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276841, 0.281791, -0.918669,
		-0.960750, -0.098944, 0.259172,
		-0.017865, 0.954360, 0.298122,
		34.986496, 35.992588, 45.906204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439552, 35.521378, 45.416225>,  <34.999001, 35.324535, 45.697521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439552, 35.521378, 45.416225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645180, 35.856480, 45.489861>,  <34.768559, 36.057541, 45.534042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645180, 35.856480, 45.489861>,  <34.439552, 35.521378, 45.416225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645180, 35.856480, 45.489861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139317, 0.293319, -0.945809,
		-0.846357, 0.460568, 0.267501,
		0.514073, 0.837759, 0.184087,
		34.799400, 36.107807, 45.545086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055122, 36.084545, 45.095695>,  <34.439552, 35.521378, 45.416225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055122, 36.084545, 45.095695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438725, 36.189365, 45.138832>,  <34.668888, 36.252258, 45.164715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.438725, 36.189365, 45.138832>,  <34.055122, 36.084545, 45.095695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438725, 36.189365, 45.138832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014164, 0.335756, -0.941842,
		-0.283019, 0.904763, 0.318282,
		0.959010, 0.262051, 0.107840,
		34.726429, 36.267982, 45.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029720, 36.843903, 44.880768>,  <34.055122, 36.084545, 45.095695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029720, 36.843903, 44.880768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409817, 36.719791, 44.869663>,  <34.637875, 36.645325, 44.863003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409817, 36.719791, 44.869663>,  <34.029720, 36.843903, 44.880768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409817, 36.719791, 44.869663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122333, 0.453626, -0.882756,
		0.286489, 0.835436, 0.469011,
		0.950242, -0.310275, -0.027758,
		34.694889, 36.626709, 44.861336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456844, 37.386051, 44.664745>,  <34.029720, 36.843903, 44.880768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456844, 37.386051, 44.664745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675659, 37.062664, 44.577911>,  <34.806950, 36.868629, 44.525810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.675659, 37.062664, 44.577911>,  <34.456844, 37.386051, 44.664745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675659, 37.062664, 44.577911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202018, 0.379162, -0.903009,
		0.812366, 0.450124, 0.370742,
		0.547037, -0.808470, -0.217085,
		34.839771, 36.820122, 44.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874794, 37.639675, 44.195969>,  <34.456844, 37.386051, 44.664745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874794, 37.639675, 44.195969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924419, 37.244701, 44.156815>,  <34.954197, 37.007717, 44.133324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924419, 37.244701, 44.156815>,  <34.874794, 37.639675, 44.195969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924419, 37.244701, 44.156815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039209, 0.093689, -0.994829,
		0.991499, 0.127264, -0.027093,
		0.124067, -0.987434, -0.097883,
		34.961639, 36.948471, 44.127449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449844, 37.506851, 43.759144>,  <34.874794, 37.639675, 44.195969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449844, 37.506851, 43.759144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230877, 37.172485, 43.743195>,  <35.099499, 36.971867, 43.733624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230877, 37.172485, 43.743195>,  <35.449844, 37.506851, 43.759144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230877, 37.172485, 43.743195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076267, -0.002382, -0.997084,
		0.833379, -0.548859, 0.065056,
		-0.547415, -0.835911, -0.039874,
		35.066654, 36.921711, 43.731232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842403, 37.000175, 43.410690>,  <35.449844, 37.506851, 43.759144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842403, 37.000175, 43.410690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459908, 36.889843, 43.371670>,  <35.230408, 36.823643, 43.348259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459908, 36.889843, 43.371670>,  <35.842403, 37.000175, 43.410690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459908, 36.889843, 43.371670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112202, -0.037814, -0.992966,
		0.270205, -0.960461, 0.067108,
		-0.956243, -0.275834, -0.097548,
		35.173035, 36.807095, 43.342403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807724, 36.747551, 42.823406>,  <35.842403, 37.000175, 43.410690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807724, 36.747551, 42.823406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412819, 36.747414, 42.887035>,  <35.175877, 36.747334, 42.925213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412819, 36.747414, 42.887035>,  <35.807724, 36.747551, 42.823406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412819, 36.747414, 42.887035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155968, -0.194483, -0.968427,
		0.031265, -0.980906, 0.191954,
		-0.987267, -0.000339, 0.159070,
		35.116638, 36.747311, 42.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616951, 36.157738, 42.541103>,  <35.807724, 36.747551, 42.823406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616951, 36.157738, 42.541103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281727, 36.375774, 42.550266>,  <35.080593, 36.506596, 42.555763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.281727, 36.375774, 42.550266>,  <35.616951, 36.157738, 42.541103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281727, 36.375774, 42.550266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162190, -0.208828, -0.964409,
		-0.520912, -0.811949, 0.263419,
		-0.838060, 0.545096, 0.022910,
		35.030308, 36.539303, 42.557140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989811, 35.805473, 42.364071>,  <35.616951, 36.157738, 42.541103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989811, 35.805473, 42.364071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887478, 36.185253, 42.291306>,  <34.826077, 36.413120, 42.247646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887478, 36.185253, 42.291306>,  <34.989811, 35.805473, 42.364071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887478, 36.185253, 42.291306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079672, -0.208243, -0.974827,
		-0.963432, -0.234900, 0.128920,
		-0.255834, 0.949451, -0.181913,
		34.810726, 36.470089, 42.236732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472858, 35.643776, 41.981300>,  <34.989811, 35.805473, 42.364071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472858, 35.643776, 41.981300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563232, 36.028049, 41.916763>,  <34.617458, 36.258614, 41.878040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563232, 36.028049, 41.916763>,  <34.472858, 35.643776, 41.981300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563232, 36.028049, 41.916763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042144, -0.155830, -0.986884,
		-0.973230, 0.229772, 0.005280,
		0.225935, 0.960688, -0.161342,
		34.631012, 36.316257, 41.868362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006165, 35.823421, 41.498074>,  <34.472858, 35.643776, 41.981300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006165, 35.823421, 41.498074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302074, 36.091301, 41.472023>,  <34.479622, 36.252029, 41.456394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.302074, 36.091301, 41.472023>,  <34.006165, 35.823421, 41.498074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302074, 36.091301, 41.472023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020685, -0.119381, -0.992633,
		-0.672536, 0.732979, -0.102168,
		0.739776, 0.669694, -0.065126,
		34.524006, 36.292210, 41.452484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828442, 36.259544, 40.900116>,  <34.006165, 35.823421, 41.498074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828442, 36.259544, 40.900116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210564, 36.357941, 40.965698>,  <34.439838, 36.416977, 41.005047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210564, 36.357941, 40.965698>,  <33.828442, 36.259544, 40.900116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210564, 36.357941, 40.965698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169144, 0.000052, -0.985591,
		-0.242456, 0.969272, -0.041559,
		0.955304, 0.245992, 0.163959,
		34.497154, 36.431740, 41.014885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951939, 36.921864, 40.479824>,  <33.828442, 36.259544, 40.900116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951939, 36.921864, 40.479824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295547, 36.724766, 40.535374>,  <34.501713, 36.606506, 40.568703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295547, 36.724766, 40.535374>,  <33.951939, 36.921864, 40.479824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295547, 36.724766, 40.535374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090865, -0.120216, -0.988581,
		0.503814, 0.861830, -0.058495,
		0.859020, -0.492745, 0.138876,
		34.553253, 36.576942, 40.577038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454979, 37.260674, 39.978863>,  <33.951939, 36.921864, 40.479824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454979, 37.260674, 39.978863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584591, 36.891953, 40.063980>,  <34.662357, 36.670719, 40.115051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584591, 36.891953, 40.063980>,  <34.454979, 37.260674, 39.978863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584591, 36.891953, 40.063980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073977, -0.199549, -0.977091,
		0.943151, 0.332346, 0.003533,
		0.324027, -0.921806, 0.212791,
		34.681801, 36.615410, 40.127819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056137, 37.158096, 39.525772>,  <34.454979, 37.260674, 39.978863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056137, 37.158096, 39.525772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940750, 36.788719, 39.626995>,  <34.871517, 36.567093, 39.687729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940750, 36.788719, 39.626995>,  <35.056137, 37.158096, 39.525772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940750, 36.788719, 39.626995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079970, -0.240134, -0.967440,
		0.954144, -0.299314, -0.004577,
		-0.288469, -0.923443, 0.253059,
		34.854210, 36.511688, 39.702911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423573, 36.677822, 39.140579>,  <35.056137, 37.158096, 39.525772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423573, 36.677822, 39.140579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076836, 36.509163, 39.247017>,  <34.868793, 36.407967, 39.310879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076836, 36.509163, 39.247017>,  <35.423573, 36.677822, 39.140579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076836, 36.509163, 39.247017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203507, -0.187997, -0.960855,
		0.455163, -0.887059, 0.077156,
		-0.866840, -0.421644, 0.266092,
		34.816784, 36.382671, 39.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407345, 36.149265, 38.636204>,  <35.423573, 36.677822, 39.140579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407345, 36.149265, 38.636204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038551, 36.158367, 38.790829>,  <34.817276, 36.163826, 38.883602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038551, 36.158367, 38.790829>,  <35.407345, 36.149265, 38.636204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038551, 36.158367, 38.790829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349839, -0.476905, -0.806334,
		0.166007, -0.878660, 0.447658,
		-0.921984, 0.022751, 0.386559,
		34.761955, 36.165192, 38.906796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198952, 35.453609, 38.597343>,  <35.407345, 36.149265, 38.636204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198952, 35.453609, 38.597343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878056, 35.691319, 38.620144>,  <34.685516, 35.833942, 38.633823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878056, 35.691319, 38.620144>,  <35.198952, 35.453609, 38.597343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878056, 35.691319, 38.620144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375684, -0.428331, -0.821824,
		-0.463976, -0.680712, 0.566884,
		-0.802239, 0.594276, 0.056998,
		34.637383, 35.869598, 38.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902508, 34.840965, 38.652470>,  <35.198952, 35.453609, 38.597343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902508, 34.840965, 38.652470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743649, 34.582127, 38.912788>,  <34.648331, 34.426823, 39.068981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.743649, 34.582127, 38.912788>,  <34.902508, 34.840965, 38.652470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743649, 34.582127, 38.912788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388195, 0.524113, 0.758031,
		-0.831610, 0.553689, 0.043047,
		-0.397152, -0.647096, 0.650797,
		34.624504, 34.387997, 39.108028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281570, 34.631084, 38.023010>,  <34.902508, 34.840965, 38.652470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281570, 34.631084, 38.023010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.643688, 34.748035, 37.899746>,  <35.860958, 34.818207, 37.825787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.643688, 34.748035, 37.899746>,  <35.281570, 34.631084, 38.023010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643688, 34.748035, 37.899746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416308, -0.466431, 0.780468,
		0.084455, -0.834841, -0.543975,
		0.905293, 0.292376, -0.308158,
		35.915276, 34.835747, 37.807297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689972, 34.161697, 38.450111>,  <35.281570, 34.631084, 38.023010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689972, 34.161697, 38.450111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949890, 34.418404, 38.287186>,  <36.105839, 34.572426, 38.189430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949890, 34.418404, 38.287186>,  <35.689972, 34.161697, 38.450111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949890, 34.418404, 38.287186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680442, -0.252286, 0.688005,
		0.338777, -0.724215, -0.600618,
		0.649791, 0.641766, -0.407318,
		36.144829, 34.610935, 38.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276615, 33.763802, 38.336964>,  <35.689972, 34.161697, 38.450111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276615, 33.763802, 38.336964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384781, 34.144279, 38.396431>,  <36.449680, 34.372566, 38.432110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384781, 34.144279, 38.396431>,  <36.276615, 33.763802, 38.336964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384781, 34.144279, 38.396431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548795, -0.279172, 0.787964,
		0.791012, -0.131488, -0.597504,
		0.270414, 0.951196, 0.148668,
		36.465904, 34.429638, 38.441032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985516, 33.754692, 38.458374>,  <36.276615, 33.763802, 38.336964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985516, 33.754692, 38.458374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843197, 34.093605, 38.616119>,  <36.757805, 34.296955, 38.710766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.843197, 34.093605, 38.616119>,  <36.985516, 33.754692, 38.458374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843197, 34.093605, 38.616119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470335, -0.202303, 0.858987,
		0.807586, 0.491104, -0.326529,
		-0.355794, 0.847284, 0.394361,
		36.736458, 34.347790, 38.734428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512577, 33.940712, 38.911175>,  <36.985516, 33.754692, 38.458374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512577, 33.940712, 38.911175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173130, 34.112026, 39.035381>,  <36.969463, 34.214813, 39.109905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173130, 34.112026, 39.035381>,  <37.512577, 33.940712, 38.911175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173130, 34.112026, 39.035381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257310, -0.178694, 0.949663,
		0.462214, 0.885799, 0.041440,
		-0.848616, 0.428285, 0.310520,
		36.918545, 34.240513, 39.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699955, 34.248974, 39.559475>,  <37.512577, 33.940712, 38.911175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699955, 34.248974, 39.559475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300613, 34.249767, 39.582397>,  <37.061008, 34.250244, 39.596149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300613, 34.249767, 39.582397>,  <37.699955, 34.248974, 39.559475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300613, 34.249767, 39.582397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056060, -0.176369, 0.982726,
		0.012052, 0.984322, 0.175967,
		-0.998355, 0.001979, 0.057307,
		37.001106, 34.250362, 39.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502720, 34.812378, 39.961235>,  <37.699955, 34.248974, 39.559475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502720, 34.812378, 39.961235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214920, 34.534588, 39.963032>,  <37.042240, 34.367912, 39.964108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214920, 34.534588, 39.963032>,  <37.502720, 34.812378, 39.961235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214920, 34.534588, 39.963032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019783, 0.026957, 0.999441,
		-0.694208, 0.719011, -0.033134,
		-0.719502, -0.694475, 0.004490,
		36.999069, 34.326244, 39.964378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154732, 34.991440, 40.534386>,  <37.502720, 34.812378, 39.961235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154732, 34.991440, 40.534386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037781, 34.612190, 40.484451>,  <36.967609, 34.384640, 40.454491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037781, 34.612190, 40.484451>,  <37.154732, 34.991440, 40.534386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037781, 34.612190, 40.484451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013848, -0.134723, 0.990786,
		-0.956204, 0.287952, 0.052520,
		-0.292374, -0.948121, -0.124835,
		36.950069, 34.327755, 40.447002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759632, 34.929852, 41.154331>,  <37.154732, 34.991440, 40.534386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759632, 34.929852, 41.154331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849689, 34.569279, 41.006420>,  <36.903725, 34.352936, 40.917675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849689, 34.569279, 41.006420>,  <36.759632, 34.929852, 41.154331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849689, 34.569279, 41.006420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014272, -0.376431, 0.926335,
		-0.974221, -0.213837, -0.071887,
		0.225145, -0.901429, -0.369778,
		36.917233, 34.298851, 40.895485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487667, 34.462418, 41.642315>,  <36.759632, 34.929852, 41.154331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487667, 34.462418, 41.642315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744797, 34.220203, 41.454655>,  <36.899075, 34.074875, 41.342060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744797, 34.220203, 41.454655>,  <36.487667, 34.462418, 41.642315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744797, 34.220203, 41.454655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231518, -0.430230, 0.872526,
		-0.730192, -0.669495, -0.136368,
		0.642822, -0.605540, -0.469150,
		36.937645, 34.038540, 41.313911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278927, 33.715847, 41.737480>,  <36.487667, 34.462418, 41.642315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278927, 33.715847, 41.737480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668983, 33.720596, 41.648968>,  <36.903015, 33.723446, 41.595860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668983, 33.720596, 41.648968>,  <36.278927, 33.715847, 41.737480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668983, 33.720596, 41.648968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187566, -0.575994, 0.795644,
		-0.118007, -0.817367, -0.563901,
		0.975137, 0.011877, -0.221282,
		36.961525, 33.724159, 41.582584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526989, 33.040409, 41.836811>,  <36.278927, 33.715847, 41.737480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526989, 33.040409, 41.836811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849194, 33.275150, 41.869694>,  <37.042515, 33.415993, 41.889423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849194, 33.275150, 41.869694>,  <36.526989, 33.040409, 41.836811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849194, 33.275150, 41.869694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140825, -0.324335, 0.935401,
		0.575602, -0.741900, -0.343898,
		0.805513, 0.586849, 0.082210,
		37.090847, 33.451206, 41.894356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946331, 32.714573, 42.303040>,  <36.526989, 33.040409, 41.836811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946331, 32.714573, 42.303040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 33.067570, 42.297569>,  <37.247215, 33.279366, 42.294285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134384, 33.067570, 42.297569>,  <36.946331, 32.714573, 42.303040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134384, 33.067570, 42.297569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193942, -0.088176, 0.977042,
		0.861024, -0.461992, -0.212606,
		0.470133, 0.882490, -0.013678,
		37.275425, 33.332317, 42.293465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578636, 32.733803, 42.741848>,  <36.946331, 32.714573, 42.303040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578636, 32.733803, 42.741848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498962, 33.124790, 42.713890>,  <37.451157, 33.359383, 42.697117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.498962, 33.124790, 42.713890>,  <37.578636, 32.733803, 42.741848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498962, 33.124790, 42.713890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203210, 0.110971, 0.972826,
		0.958661, 0.179573, -0.220735,
		-0.199188, 0.977466, -0.069893,
		37.439205, 33.418030, 42.692921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153709, 33.114384, 43.049801>,  <37.578636, 32.733803, 42.741848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153709, 33.114384, 43.049801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832657, 33.352169, 43.069366>,  <37.640022, 33.494839, 43.081108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832657, 33.352169, 43.069366>,  <38.153709, 33.114384, 43.049801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832657, 33.352169, 43.069366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110922, 0.068177, 0.991488,
		0.586065, 0.801230, -0.120660,
		-0.802636, 0.594460, 0.048918,
		37.591866, 33.530506, 43.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445786, 33.738277, 43.513653>,  <38.153709, 33.114384, 43.049801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445786, 33.738277, 43.513653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048943, 33.779766, 43.541821>,  <37.810837, 33.804661, 43.558720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.048943, 33.779766, 43.541821>,  <38.445786, 33.738277, 43.513653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048943, 33.779766, 43.541821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088943, 0.186510, 0.978419,
		0.088354, 0.976962, -0.194264,
		-0.992110, 0.103726, 0.070415,
		37.751308, 33.810883, 43.562946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260357, 34.377567, 43.842983>,  <38.445786, 33.738277, 43.513653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260357, 34.377567, 43.842983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947071, 34.140526, 43.918240>,  <37.759098, 33.998302, 43.963394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947071, 34.140526, 43.918240>,  <38.260357, 34.377567, 43.842983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947071, 34.140526, 43.918240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055380, 0.234899, 0.970441,
		-0.619280, 0.770483, -0.151158,
		-0.783215, -0.592603, 0.188138,
		37.712105, 33.962746, 43.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819302, 34.779358, 44.274242>,  <38.260357, 34.377567, 43.842983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819302, 34.779358, 44.274242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713062, 34.397102, 44.325180>,  <37.649319, 34.167751, 44.355743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713062, 34.397102, 44.325180>,  <37.819302, 34.779358, 44.274242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713062, 34.397102, 44.325180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149584, 0.171340, 0.973790,
		-0.952409, 0.239586, -0.188456,
		-0.265597, -0.955636, 0.127347,
		37.633385, 34.110413, 44.363384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.124359, 34.782360, 44.651672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254459, 34.406864, 44.697247>,  <37.332520, 34.181568, 44.724590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254459, 34.406864, 44.697247>,  <37.124359, 34.782360, 44.651672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254459, 34.406864, 44.697247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325026, 0.002172, 0.945703,
		-0.888016, -0.344620, -0.304408,
		0.325247, -0.938740, 0.113940,
		37.352032, 34.125244, 44.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512600, 34.475285, 44.909485>,  <37.124359, 34.782360, 44.651672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512600, 34.475285, 44.909485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838268, 34.265774, 45.009716>,  <37.033669, 34.140068, 45.069855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838268, 34.265774, 45.009716>,  <36.512600, 34.475285, 44.909485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838268, 34.265774, 45.009716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260242, 0.056602, 0.963883,
		-0.519045, -0.849972, -0.090226,
		0.814166, -0.523779, 0.250578,
		37.082520, 34.108639, 45.084888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245159, 33.996613, 45.372856>,  <36.512600, 34.475285, 44.909485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245159, 33.996613, 45.372856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639629, 33.989056, 45.438717>,  <36.876312, 33.984520, 45.478233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.639629, 33.989056, 45.438717>,  <36.245159, 33.996613, 45.372856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639629, 33.989056, 45.438717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158101, 0.190694, 0.968834,
		-0.049701, -0.981468, 0.185070,
		0.986172, -0.018892, 0.164649,
		36.935482, 33.983387, 45.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251656, 33.675240, 46.068237>,  <36.245159, 33.996613, 45.372856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251656, 33.675240, 46.068237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.604900, 33.851364, 46.003441>,  <36.816849, 33.957039, 45.964561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.604900, 33.851364, 46.003441>,  <36.251656, 33.675240, 46.068237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604900, 33.851364, 46.003441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012282, 0.323470, 0.946159,
		0.469004, -0.837552, 0.280252,
		0.883111, 0.440311, -0.161996,
		36.869835, 33.983456, 45.954842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614388, 33.416115, 46.627594>,  <36.251656, 33.675240, 46.068237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614388, 33.416115, 46.627594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807343, 33.738201, 46.489651>,  <36.923115, 33.931454, 46.406883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807343, 33.738201, 46.489651>,  <36.614388, 33.416115, 46.627594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807343, 33.738201, 46.489651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097909, 0.341662, 0.934709,
		0.870468, -0.484659, 0.085976,
		0.482390, 0.805216, -0.344858,
		36.952061, 33.979767, 46.386192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145363, 33.435429, 47.039894>,  <36.614388, 33.416115, 46.627594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145363, 33.435429, 47.039894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112930, 33.809116, 46.900948>,  <37.093472, 34.033329, 46.817581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112930, 33.809116, 46.900948>,  <37.145363, 33.435429, 47.039894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112930, 33.809116, 46.900948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038522, 0.351190, 0.935512,
		0.995963, 0.062475, -0.064464,
		-0.081086, 0.934218, -0.347365,
		37.088604, 34.089382, 46.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719578, 33.768517, 47.340652>,  <37.145363, 33.435429, 47.039894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719578, 33.768517, 47.340652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458622, 34.050621, 47.229660>,  <37.302048, 34.219883, 47.163063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458622, 34.050621, 47.229660>,  <37.719578, 33.768517, 47.340652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458622, 34.050621, 47.229660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153604, 0.481575, 0.862839,
		0.742154, 0.520286, -0.422505,
		-0.652391, 0.705258, -0.277485,
		37.262905, 34.262199, 47.146416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078335, 34.302921, 47.422989>,  <37.719578, 33.768517, 47.340652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078335, 34.302921, 47.422989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695290, 34.416561, 47.442013>,  <37.465462, 34.484745, 47.453426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.695290, 34.416561, 47.442013>,  <38.078335, 34.302921, 47.422989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695290, 34.416561, 47.442013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156955, 0.376197, 0.913149,
		0.241533, 0.881909, -0.404843,
		-0.957615, 0.284098, 0.047556,
		37.408005, 34.501789, 47.456280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046276, 34.936993, 47.736732>,  <38.078335, 34.302921, 47.422989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046276, 34.936993, 47.736732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669285, 34.819439, 47.800449>,  <37.443092, 34.748905, 47.838680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669285, 34.819439, 47.800449>,  <38.046276, 34.936993, 47.736732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669285, 34.819439, 47.800449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101202, 0.203303, 0.973872,
		-0.318592, 0.933969, -0.161866,
		-0.942474, -0.293887, 0.159290,
		37.386543, 34.731274, 47.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733059, 35.447098, 48.156235>,  <38.046276, 34.936993, 47.736732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733059, 35.447098, 48.156235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529091, 35.113926, 48.242218>,  <37.406712, 34.914021, 48.293808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529091, 35.113926, 48.242218>,  <37.733059, 35.447098, 48.156235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529091, 35.113926, 48.242218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261361, 0.088060, 0.961216,
		-0.819557, 0.546323, 0.172793,
		-0.509918, -0.832933, 0.214958,
		37.376114, 34.864044, 48.306705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397831, 35.457104, 48.935688>,  <37.733059, 35.447098, 48.156235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397831, 35.457104, 48.935688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376595, 35.070084, 48.836872>,  <37.363853, 34.837872, 48.777584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376595, 35.070084, 48.836872>,  <37.397831, 35.457104, 48.935688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376595, 35.070084, 48.836872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278791, -0.251913, 0.926723,
		-0.958883, -0.019674, 0.283118,
		-0.053089, -0.967550, -0.247040,
		37.360668, 34.779819, 48.762760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977322, 35.167770, 49.418777>,  <37.397831, 35.457104, 48.935688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977322, 35.167770, 49.418777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185368, 34.856773, 49.277370>,  <37.310196, 34.670174, 49.192524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185368, 34.856773, 49.277370>,  <36.977322, 35.167770, 49.418777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185368, 34.856773, 49.277370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399756, -0.144168, 0.905213,
		-0.754766, -0.612140, 0.235825,
		0.520118, -0.777496, -0.353519,
		37.341404, 34.623524, 49.171314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816433, 34.539173, 49.882633>,  <36.977322, 35.167770, 49.418777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816433, 34.539173, 49.882633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139950, 34.446827, 49.666279>,  <37.334061, 34.391418, 49.536465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139950, 34.446827, 49.666279>,  <36.816433, 34.539173, 49.882633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139950, 34.446827, 49.666279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430212, -0.394817, 0.811811,
		-0.400997, -0.889274, -0.219985,
		0.808776, -0.230894, -0.540897,
		37.382587, 34.377567, 49.504013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925648, 33.891148, 50.072113>,  <36.816433, 34.539173, 49.882633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925648, 33.891148, 50.072113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282730, 33.999138, 49.927788>,  <37.496979, 34.063934, 49.841194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282730, 33.999138, 49.927788>,  <36.925648, 33.891148, 50.072113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282730, 33.999138, 49.927788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450440, -0.511033, 0.732085,
		0.013262, -0.816062, -0.577812,
		0.892708, 0.269979, -0.360810,
		37.550541, 34.080132, 49.819546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348068, 33.297897, 49.940540>,  <36.925648, 33.891148, 50.072113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348068, 33.297897, 49.940540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589146, 33.608559, 50.013824>,  <37.733791, 33.794956, 50.057796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589146, 33.608559, 50.013824>,  <37.348068, 33.297897, 49.940540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589146, 33.608559, 50.013824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430868, -0.509982, 0.744494,
		0.671649, -0.369764, -0.641999,
		0.602695, 0.776655, 0.183209,
		37.769955, 33.841557, 50.068787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923836, 32.873890, 50.086212>,  <37.348068, 33.297897, 49.940540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923836, 32.873890, 50.086212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982906, 33.249001, 50.211918>,  <38.018349, 33.474068, 50.287342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982906, 33.249001, 50.211918>,  <37.923836, 32.873890, 50.086212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982906, 33.249001, 50.211918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617733, -0.335600, 0.711181,
		0.772398, 0.089109, -0.628856,
		0.147672, 0.937780, 0.314263,
		38.027206, 33.530334, 50.306198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543736, 32.855843, 50.329475>,  <37.923836, 32.873890, 50.086212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543736, 32.855843, 50.329475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417805, 33.180347, 50.526550>,  <38.342247, 33.375050, 50.644794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.417805, 33.180347, 50.526550>,  <38.543736, 32.855843, 50.329475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417805, 33.180347, 50.526550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433493, -0.338889, 0.835008,
		0.844375, 0.476461, -0.244983,
		-0.314827, 0.811258, 0.492691,
		38.323357, 33.423725, 50.674358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134098, 33.103119, 50.739368>,  <38.543736, 32.855843, 50.329475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134098, 33.103119, 50.739368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829380, 33.298622, 50.909447>,  <38.646549, 33.415924, 51.011494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829380, 33.298622, 50.909447>,  <39.134098, 33.103119, 50.739368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829380, 33.298622, 50.909447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388506, -0.180539, 0.903587,
		0.518398, 0.853535, -0.052352,
		-0.761791, 0.488757, 0.425195,
		38.600842, 33.445248, 51.037006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480995, 33.451862, 51.202229>,  <39.134098, 33.103119, 50.739368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480995, 33.451862, 51.202229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103039, 33.438194, 51.332466>,  <38.876263, 33.429993, 51.410606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103039, 33.438194, 51.332466>,  <39.480995, 33.451862, 51.202229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103039, 33.438194, 51.332466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324081, 0.043170, 0.945044,
		-0.046345, 0.998483, -0.029719,
		-0.944893, -0.034167, 0.325591,
		38.819572, 33.427944, 51.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414593, 33.995251, 51.736824>,  <39.480995, 33.451862, 51.202229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414593, 33.995251, 51.736824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117809, 33.735985, 51.805382>,  <38.939739, 33.580425, 51.846516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117809, 33.735985, 51.805382>,  <39.414593, 33.995251, 51.736824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117809, 33.735985, 51.805382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310789, -0.105990, 0.944551,
		-0.594061, 0.754085, 0.280083,
		-0.741958, -0.648168, 0.171397,
		38.895222, 33.541534, 51.856800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102333, 34.195080, 52.428806>,  <39.414593, 33.995251, 51.736824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102333, 34.195080, 52.428806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918026, 33.842060, 52.391273>,  <38.807442, 33.630249, 52.368755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.918026, 33.842060, 52.391273>,  <39.102333, 34.195080, 52.428806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918026, 33.842060, 52.391273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067313, -0.140168, 0.987837,
		-0.884967, 0.448843, 0.123992,
		-0.460764, -0.882549, -0.093831,
		38.779797, 33.577297, 52.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715366, 34.102314, 53.103252>,  <39.102333, 34.195080, 52.428806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715366, 34.102314, 53.103252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766190, 33.742157, 52.936806>,  <38.796684, 33.526062, 52.836937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.766190, 33.742157, 52.936806>,  <38.715366, 34.102314, 53.103252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766190, 33.742157, 52.936806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212681, -0.385025, 0.898066,
		-0.968825, -0.202609, 0.142574,
		0.127062, -0.900391, -0.416113,
		38.804310, 33.472038, 52.811974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330048, 33.609283, 53.421921>,  <38.715366, 34.102314, 53.103252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330048, 33.609283, 53.421921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645874, 33.415592, 53.271133>,  <38.835369, 33.299377, 53.180660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645874, 33.415592, 53.271133>,  <38.330048, 33.609283, 53.421921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645874, 33.415592, 53.271133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244345, -0.315421, 0.916954,
		-0.562923, -0.816105, -0.130726,
		0.789565, -0.484233, -0.376969,
		38.882744, 33.270321, 53.158043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685112, 34.126419, 53.568851>,  <38.330048, 33.609283, 53.421921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685112, 34.126419, 53.568851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398918, 34.230671, 53.828129>,  <37.227200, 34.293221, 53.983696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398918, 34.230671, 53.828129>,  <37.685112, 34.126419, 53.568851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398918, 34.230671, 53.828129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596762, 0.254414, -0.761018,
		-0.363252, -0.931314, -0.026497,
		-0.715489, 0.260629, 0.648189,
		37.184273, 34.308861, 54.022587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993027, 33.747448, 53.463161>,  <37.685112, 34.126419, 53.568851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993027, 33.747448, 53.463161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914703, 34.105694, 53.622929>,  <36.867710, 34.320641, 53.718788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914703, 34.105694, 53.622929>,  <36.993027, 33.747448, 53.463161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914703, 34.105694, 53.622929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674937, 0.172400, -0.717453,
		-0.711422, -0.410060, 0.570728,
		-0.195805, 0.895617, 0.399413,
		36.855961, 34.374378, 53.742752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283291, 33.789356, 53.315914>,  <36.993027, 33.747448, 53.463161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283291, 33.789356, 53.315914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357834, 34.164394, 53.433346>,  <36.402557, 34.389416, 53.503803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357834, 34.164394, 53.433346>,  <36.283291, 33.789356, 53.315914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357834, 34.164394, 53.433346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512068, 0.347706, -0.785422,
		-0.838486, -0.003965, 0.544908,
		0.186353, 0.937595, 0.293577,
		36.413738, 34.445671, 53.521420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606041, 34.173492, 53.334679>,  <36.283291, 33.789356, 53.315914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606041, 34.173492, 53.334679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906956, 34.433201, 53.289928>,  <36.087505, 34.589024, 53.263077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.906956, 34.433201, 53.289928>,  <35.606041, 34.173492, 53.334679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906956, 34.433201, 53.289928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474937, 0.416742, -0.775088,
		-0.456616, 0.636223, 0.621871,
		0.752288, 0.649266, -0.111875,
		36.132641, 34.627979, 53.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275684, 34.797867, 53.256535>,  <35.606041, 34.173492, 53.334679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275684, 34.797867, 53.256535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644604, 34.854450, 53.112675>,  <35.865955, 34.888401, 53.026360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644604, 34.854450, 53.112675>,  <35.275684, 34.797867, 53.256535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644604, 34.854450, 53.112675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379567, 0.506684, -0.774081,
		0.072732, 0.850448, 0.521007,
		0.922301, 0.141457, -0.359654,
		35.921295, 34.896889, 53.004780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073112, 35.319443, 52.880054>,  <35.275684, 34.797867, 53.256535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073112, 35.319443, 52.880054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431625, 35.206619, 52.743156>,  <35.646732, 35.138927, 52.661018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431625, 35.206619, 52.743156>,  <35.073112, 35.319443, 52.880054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431625, 35.206619, 52.743156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177838, 0.478367, -0.859964,
		0.406275, 0.831631, 0.378590,
		0.896278, -0.282054, -0.342244,
		35.700508, 35.122002, 52.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259754, 35.816624, 52.555439>,  <35.073112, 35.319443, 52.880054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259754, 35.816624, 52.555439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492584, 35.536228, 52.390606>,  <35.632282, 35.367992, 52.291706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492584, 35.536228, 52.390606>,  <35.259754, 35.816624, 52.555439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492584, 35.536228, 52.390606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250683, 0.327395, -0.911027,
		0.773532, 0.633584, 0.014841,
		0.582071, -0.700988, -0.412079,
		35.667206, 35.325932, 52.266983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789734, 36.192337, 52.044392>,  <35.259754, 35.816624, 52.555439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789734, 36.192337, 52.044392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785908, 35.816696, 51.906986>,  <35.783611, 35.591312, 51.824543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785908, 35.816696, 51.906986>,  <35.789734, 36.192337, 52.044392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785908, 35.816696, 51.906986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132124, 0.341700, -0.930475,
		0.991187, 0.036489, -0.127345,
		-0.009561, -0.939100, -0.343509,
		35.783039, 35.534966, 51.803932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372845, 36.106953, 51.511925>,  <35.789734, 36.192337, 52.044392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372845, 36.106953, 51.511925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067432, 35.850216, 51.483498>,  <35.884186, 35.696175, 51.466442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067432, 35.850216, 51.483498>,  <36.372845, 36.106953, 51.511925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067432, 35.850216, 51.483498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064469, 0.185264, -0.980572,
		0.642541, -0.744118, -0.182835,
		-0.763534, -0.641845, -0.071067,
		35.838371, 35.657661, 51.462177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495758, 35.785286, 50.857758>,  <36.372845, 36.106953, 51.511925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495758, 35.785286, 50.857758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117878, 35.672779, 50.925205>,  <35.891151, 35.605274, 50.965675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117878, 35.672779, 50.925205>,  <36.495758, 35.785286, 50.857758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117878, 35.672779, 50.925205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187217, 0.040395, -0.981488,
		0.269254, -0.958777, -0.090820,
		-0.944697, -0.281272, 0.168623,
		35.834469, 35.588398, 50.975792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499664, 35.314743, 50.494766>,  <36.495758, 35.785286, 50.857758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499664, 35.314743, 50.494766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118046, 35.424011, 50.544052>,  <35.889076, 35.489571, 50.573624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118046, 35.424011, 50.544052>,  <36.499664, 35.314743, 50.494766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118046, 35.424011, 50.544052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146073, -0.064911, -0.987142,
		-0.261660, -0.959773, 0.101831,
		-0.954042, 0.273170, 0.123213,
		35.831833, 35.505962, 50.581017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165806, 34.833858, 50.086716>,  <36.499664, 35.314743, 50.494766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165806, 34.833858, 50.086716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954952, 35.171490, 50.126038>,  <35.828442, 35.374069, 50.149632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954952, 35.171490, 50.126038>,  <36.165806, 34.833858, 50.086716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954952, 35.171490, 50.126038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264804, -0.053241, -0.962831,
		-0.807473, -0.533568, 0.251581,
		-0.527130, 0.844080, 0.098301,
		35.796814, 35.424713, 50.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715649, 34.697609, 49.542942>,  <36.165806, 34.833858, 50.086716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715649, 34.697609, 49.542942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692307, 35.084152, 49.643147>,  <35.678299, 35.316078, 49.703270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.692307, 35.084152, 49.643147>,  <35.715649, 34.697609, 49.542942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692307, 35.084152, 49.643147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153153, 0.239299, -0.958791,
		-0.986478, -0.094318, 0.134036,
		-0.058357, 0.966354, 0.250508,
		35.674801, 35.374058, 49.718300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112774, 34.765461, 49.309822>,  <35.715649, 34.697609, 49.542942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112774, 34.765461, 49.309822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295616, 35.118492, 49.353855>,  <35.405323, 35.330311, 49.380276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295616, 35.118492, 49.353855>,  <35.112774, 34.765461, 49.309822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295616, 35.118492, 49.353855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204817, 0.224903, -0.952612,
		-0.865509, 0.412895, 0.283570,
		0.457104, 0.882574, 0.110087,
		35.432747, 35.383263, 49.386883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635612, 35.282219, 49.090240>,  <35.112774, 34.765461, 49.309822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635612, 35.282219, 49.090240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006561, 35.429909, 49.066032>,  <35.229130, 35.518520, 49.051506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006561, 35.429909, 49.066032>,  <34.635612, 35.282219, 49.090240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006561, 35.429909, 49.066032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177630, 0.292111, -0.939744,
		-0.329294, 0.882240, 0.336479,
		0.927369, 0.369220, -0.060522,
		35.284771, 35.540676, 49.047874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583595, 35.948395, 48.889606>,  <34.635612, 35.282219, 49.090240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583595, 35.948395, 48.889606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959774, 35.850819, 48.794910>,  <35.185482, 35.792274, 48.738094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959774, 35.850819, 48.794910>,  <34.583595, 35.948395, 48.889606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959774, 35.850819, 48.794910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163243, 0.286784, -0.943984,
		0.298171, 0.926416, 0.229885,
		0.940450, -0.243942, -0.236741,
		35.241909, 35.777637, 48.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852192, 36.547649, 48.526764>,  <34.583595, 35.948395, 48.889606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852192, 36.547649, 48.526764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102985, 36.250118, 48.434139>,  <35.253460, 36.071602, 48.378563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102985, 36.250118, 48.434139>,  <34.852192, 36.547649, 48.526764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102985, 36.250118, 48.434139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004332, 0.300564, -0.953752,
		0.779021, 0.596982, 0.191671,
		0.626982, -0.743823, -0.231560,
		35.291080, 36.026970, 48.364670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378468, 36.833874, 48.086647>,  <34.852192, 36.547649, 48.526764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378468, 36.833874, 48.086647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387184, 36.439068, 48.022995>,  <35.392414, 36.202183, 47.984802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387184, 36.439068, 48.022995>,  <35.378468, 36.833874, 48.086647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387184, 36.439068, 48.022995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003818, 0.159250, -0.987231,
		0.999755, 0.020902, 0.007239,
		0.021788, -0.987017, -0.159131,
		35.393719, 36.142963, 47.975254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935436, 36.763435, 47.584812>,  <35.378468, 36.833874, 48.086647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935436, 36.763435, 47.584812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696186, 36.442963, 47.577240>,  <35.552635, 36.250679, 47.572697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696186, 36.442963, 47.577240>,  <35.935436, 36.763435, 47.584812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696186, 36.442963, 47.577240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222875, 0.188979, -0.956354,
		0.769790, -0.567799, -0.291596,
		-0.598123, -0.801181, -0.018926,
		35.516750, 36.202610, 47.571564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165436, 36.235260, 47.064697>,  <35.935436, 36.763435, 47.584812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165436, 36.235260, 47.064697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775909, 36.151211, 47.099415>,  <35.542194, 36.100780, 47.120247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775909, 36.151211, 47.099415>,  <36.165436, 36.235260, 47.064697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775909, 36.151211, 47.099415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085149, -0.016893, -0.996225,
		0.210797, -0.977529, -0.001441,
		-0.973814, -0.210124, 0.086797,
		35.483765, 36.088173, 47.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990158, 35.877964, 46.440193>,  <36.165436, 36.235260, 47.064697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990158, 35.877964, 46.440193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631115, 35.982311, 46.582317>,  <35.415688, 36.044918, 46.667591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631115, 35.982311, 46.582317>,  <35.990158, 35.877964, 46.440193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631115, 35.982311, 46.582317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306417, 0.210177, -0.928404,
		-0.316867, -0.942218, -0.108723,
		-0.897610, 0.260866, 0.355310,
		35.361832, 36.060570, 46.688911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.985081, 29.354393, 27.514591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861179, 29.734467, 27.528473>,  <43.786839, 29.962511, 27.536802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861179, 29.734467, 27.528473>,  <43.985081, 29.354393, 27.514591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861179, 29.734467, 27.528473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101748, -0.069416, 0.992386,
		0.945356, 0.303868, 0.118181,
		-0.309758, 0.950182, 0.034705,
		43.768253, 30.019522, 27.538885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439411, 29.964201, 27.739244>,  <43.985081, 29.354393, 27.514591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439411, 29.964201, 27.739244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048618, 29.895248, 27.789503>,  <43.814140, 29.853876, 27.819658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048618, 29.895248, 27.789503>,  <44.439411, 29.964201, 27.739244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048618, 29.895248, 27.789503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153750, -0.160770, 0.974943,
		-0.147863, 0.971822, 0.183573,
		-0.976984, -0.172382, 0.125646,
		43.755524, 29.843534, 27.827196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112862, 30.502157, 28.162144>,  <44.439411, 29.964201, 27.739244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112862, 30.502157, 28.162144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919395, 30.155094, 28.208162>,  <43.803314, 29.946856, 28.235773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919395, 30.155094, 28.208162>,  <44.112862, 30.502157, 28.162144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919395, 30.155094, 28.208162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059038, 0.098804, 0.993354,
		-0.873258, 0.487246, 0.003437,
		-0.483668, -0.867657, 0.115048,
		43.774296, 29.894796, 28.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441448, 30.702129, 28.469131>,  <44.112862, 30.502157, 28.162144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441448, 30.702129, 28.469131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512222, 30.316463, 28.548208>,  <43.554688, 30.085064, 28.595655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512222, 30.316463, 28.548208>,  <43.441448, 30.702129, 28.469131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512222, 30.316463, 28.548208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111027, 0.180028, 0.977376,
		-0.977940, -0.194883, -0.075195,
		0.176936, -0.964163, 0.197694,
		43.565304, 30.027214, 28.607517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914440, 30.434071, 28.763897>,  <43.441448, 30.702129, 28.469131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914440, 30.434071, 28.763897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231537, 30.227316, 28.893133>,  <43.421795, 30.103264, 28.970675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231537, 30.227316, 28.893133>,  <42.914440, 30.434071, 28.763897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231537, 30.227316, 28.893133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276107, 0.168058, 0.946320,
		-0.543437, -0.839397, -0.009489,
		0.792743, -0.516885, 0.323092,
		43.469360, 30.072250, 28.990061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629227, 29.957563, 29.328714>,  <42.914440, 30.434071, 28.763897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629227, 29.957563, 29.328714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027405, 29.979860, 29.359648>,  <43.266312, 29.993238, 29.378208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.027405, 29.979860, 29.359648>,  <42.629227, 29.957563, 29.328714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027405, 29.979860, 29.359648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080831, 0.063511, 0.994702,
		0.050524, -0.996424, 0.067726,
		0.995446, 0.055731, 0.077333,
		43.326038, 29.996582, 29.382847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783203, 29.607925, 30.020655>,  <42.629227, 29.957563, 29.328714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783203, 29.607925, 30.020655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110039, 29.824476, 29.941383>,  <43.306141, 29.954407, 29.893820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110039, 29.824476, 29.941383>,  <42.783203, 29.607925, 30.020655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110039, 29.824476, 29.941383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119206, 0.177672, 0.976843,
		0.564052, -0.821792, 0.080639,
		0.817090, 0.541377, -0.198179,
		43.355167, 29.986889, 29.881929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178146, 29.475830, 30.640148>,  <42.783203, 29.607925, 30.020655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178146, 29.475830, 30.640148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311954, 29.808056, 30.462042>,  <43.392239, 30.007391, 30.355179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311954, 29.808056, 30.462042>,  <43.178146, 29.475830, 30.640148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311954, 29.808056, 30.462042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058525, 0.453265, 0.889453,
		0.940570, -0.323598, 0.103016,
		0.334519, 0.830563, -0.445266,
		43.412312, 30.057224, 30.328463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863453, 29.703802, 31.044617>,  <43.178146, 29.475830, 30.640148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863453, 29.703802, 31.044617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688980, 29.999563, 30.839470>,  <43.584297, 30.177019, 30.716381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688980, 29.999563, 30.839470>,  <43.863453, 29.703802, 31.044617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688980, 29.999563, 30.839470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037443, 0.584361, 0.810630,
		0.899080, 0.334378, -0.282572,
		-0.436181, 0.739401, -0.512867,
		43.558125, 30.221384, 30.685610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191757, 30.327232, 31.375870>,  <43.863453, 29.703802, 31.044617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191757, 30.327232, 31.375870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887753, 30.467365, 31.156906>,  <43.705349, 30.551445, 31.025528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887753, 30.467365, 31.156906>,  <44.191757, 30.327232, 31.375870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887753, 30.467365, 31.156906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289815, 0.571210, 0.767936,
		0.581716, 0.742285, -0.332593,
		-0.760009, 0.350330, -0.547408,
		43.659748, 30.572464, 30.992683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239258, 31.039732, 31.464882>,  <44.191757, 30.327232, 31.375870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239258, 31.039732, 31.464882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859516, 30.968256, 31.361496>,  <43.631672, 30.925371, 31.299465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.859516, 30.968256, 31.361496>,  <44.239258, 31.039732, 31.464882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859516, 30.968256, 31.361496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310647, 0.657423, 0.686508,
		0.047248, 0.732027, -0.679635,
		-0.949350, -0.178690, -0.258464,
		43.574711, 30.914648, 31.283957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944458, 31.665283, 31.488943>,  <44.239258, 31.039732, 31.464882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944458, 31.665283, 31.488943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647842, 31.401306, 31.537258>,  <43.469872, 31.242920, 31.566248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647842, 31.401306, 31.537258>,  <43.944458, 31.665283, 31.488943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647842, 31.401306, 31.537258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400336, 0.579726, 0.709682,
		-0.538376, 0.477902, -0.694090,
		-0.741541, -0.659945, 0.120789,
		43.425381, 31.203323, 31.573496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328442, 31.980301, 31.286043>,  <43.944458, 31.665283, 31.488943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328442, 31.980301, 31.286043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265823, 31.678213, 31.540644>,  <43.228252, 31.496960, 31.693403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265823, 31.678213, 31.540644>,  <43.328442, 31.980301, 31.286043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265823, 31.678213, 31.540644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412552, 0.635535, 0.652607,
		-0.897381, -0.160425, -0.411060,
		-0.156549, -0.755221, 0.636501,
		43.218861, 31.451647, 31.731594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674343, 32.147743, 31.643042>,  <43.328442, 31.980301, 31.286043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674343, 32.147743, 31.643042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843754, 31.857601, 31.860111>,  <42.945400, 31.683517, 31.990353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843754, 31.857601, 31.860111>,  <42.674343, 32.147743, 31.643042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843754, 31.857601, 31.860111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331965, 0.433109, 0.837983,
		-0.842869, -0.535054, -0.057359,
		0.423523, -0.725351, 0.542673,
		42.970810, 31.639996, 32.022915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189671, 31.898758, 31.991920>,  <42.674343, 32.147743, 31.643042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189671, 31.898758, 31.991920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515224, 31.817724, 32.209747>,  <42.710556, 31.769104, 32.340443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.515224, 31.817724, 32.209747>,  <42.189671, 31.898758, 31.991920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515224, 31.817724, 32.209747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438048, 0.401795, 0.804161,
		-0.381713, -0.893040, 0.238274,
		0.813885, -0.202583, 0.544565,
		42.759392, 31.756948, 32.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986046, 31.736103, 32.762764>,  <42.189671, 31.898758, 31.991920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986046, 31.736103, 32.762764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376095, 31.804081, 32.819695>,  <42.610123, 31.844868, 32.853855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376095, 31.804081, 32.819695>,  <41.986046, 31.736103, 32.762764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376095, 31.804081, 32.819695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203098, 0.427645, 0.880836,
		0.088825, -0.887828, 0.451520,
		0.975121, 0.169943, 0.142330,
		42.668633, 31.855064, 32.862392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157261, 31.608273, 33.570316>,  <41.986046, 31.736103, 32.762764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157261, 31.608273, 33.570316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456577, 31.828838, 33.422806>,  <42.636169, 31.961178, 33.334297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456577, 31.828838, 33.422806>,  <42.157261, 31.608273, 33.570316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456577, 31.828838, 33.422806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098658, 0.642245, 0.760124,
		0.655994, -0.532410, 0.534987,
		0.748290, 0.551418, -0.368782,
		42.681065, 31.994263, 33.312172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701908, 31.642109, 34.046696>,  <42.157261, 31.608273, 33.570316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701908, 31.642109, 34.046696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750282, 31.972153, 33.825943>,  <42.779308, 32.170177, 33.693493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750282, 31.972153, 33.825943>,  <42.701908, 31.642109, 34.046696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750282, 31.972153, 33.825943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081403, 0.545843, 0.833924,
		0.989317, -0.145776, -0.001154,
		0.120936, 0.825109, -0.551878,
		42.786564, 32.219685, 33.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198608, 31.993872, 34.429470>,  <42.701908, 31.642109, 34.046696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198608, 31.993872, 34.429470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047688, 32.280018, 34.194218>,  <42.957134, 32.451706, 34.053066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047688, 32.280018, 34.194218>,  <43.198608, 31.993872, 34.429470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047688, 32.280018, 34.194218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026514, 0.643152, 0.765279,
		0.925711, 0.273147, -0.261629,
		-0.377301, 0.715365, -0.588131,
		42.934498, 32.494629, 34.017780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667759, 32.580631, 34.477924>,  <43.198608, 31.993872, 34.429470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667759, 32.580631, 34.477924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311840, 32.715813, 34.355259>,  <43.098289, 32.796921, 34.281658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311840, 32.715813, 34.355259>,  <43.667759, 32.580631, 34.477924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311840, 32.715813, 34.355259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057945, 0.750230, 0.658633,
		0.452654, 0.568283, -0.687138,
		-0.889801, 0.337949, -0.306666,
		43.044899, 32.817196, 34.263260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759567, 33.258297, 34.473984>,  <43.667759, 32.580631, 34.477924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759567, 33.258297, 34.473984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362667, 33.214569, 34.497597>,  <43.124527, 33.188332, 34.511765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.362667, 33.214569, 34.497597>,  <43.759567, 33.258297, 34.473984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362667, 33.214569, 34.497597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015250, 0.578705, 0.815394,
		-0.123298, 0.808177, -0.575888,
		-0.992252, -0.109319, 0.059029,
		43.064991, 33.181774, 34.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339069, 33.385860, 34.794205>,  <43.759567, 33.258297, 34.473984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339069, 33.385860, 34.794205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735374, 33.412663, 34.841377>,  <44.973156, 33.428741, 34.869678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735374, 33.412663, 34.841377>,  <44.339069, 33.385860, 34.794205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735374, 33.412663, 34.841377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080643, 0.408098, -0.909369,
		-0.109056, 0.910476, 0.398924,
		0.990759, 0.067002, 0.117929,
		45.032600, 33.432762, 34.876755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605690, 33.964218, 34.550106>,  <44.339069, 33.385860, 34.794205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605690, 33.964218, 34.550106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.923786, 33.722103, 34.536079>,  <45.114643, 33.576836, 34.527664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.923786, 33.722103, 34.536079>,  <44.605690, 33.964218, 34.550106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923786, 33.722103, 34.536079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236361, 0.362763, -0.901408,
		0.558329, 0.708544, 0.431548,
		0.795237, -0.605284, -0.035069,
		45.162357, 33.540520, 34.525558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127804, 34.322056, 34.156830>,  <44.605690, 33.964218, 34.550106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127804, 34.322056, 34.156830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262493, 33.947308, 34.119099>,  <45.343307, 33.722458, 34.096462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.262493, 33.947308, 34.119099>,  <45.127804, 34.322056, 34.156830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262493, 33.947308, 34.119099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338801, 0.214011, -0.916195,
		0.878540, 0.276546, 0.389474,
		0.336721, -0.936868, -0.094323,
		45.363510, 33.666248, 34.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880833, 34.287819, 33.991734>,  <45.127804, 34.322056, 34.156830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880833, 34.287819, 33.991734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707115, 33.958412, 33.845741>,  <45.602886, 33.760769, 33.758148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707115, 33.958412, 33.845741>,  <45.880833, 34.287819, 33.991734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707115, 33.958412, 33.845741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283790, 0.259458, -0.923117,
		0.854901, -0.504477, 0.121026,
		-0.434291, -0.823519, -0.364976,
		45.576828, 33.711357, 33.736248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259010, 34.197346, 33.448208>,  <45.880833, 34.287819, 33.991734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259010, 34.197346, 33.448208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945011, 33.961365, 33.372608>,  <45.756611, 33.819775, 33.327248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.945011, 33.961365, 33.372608>,  <46.259010, 34.197346, 33.448208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945011, 33.961365, 33.372608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202531, 0.043925, -0.978290,
		0.585451, -0.806239, 0.085003,
		-0.785002, -0.589957, -0.189004,
		45.709511, 33.784378, 33.315907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391003, 33.966274, 32.774986>,  <46.259010, 34.197346, 33.448208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391003, 33.966274, 32.774986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003681, 33.884098, 32.831814>,  <45.771290, 33.834793, 32.865910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.003681, 33.884098, 32.831814>,  <46.391003, 33.966274, 32.774986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003681, 33.884098, 32.831814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142977, -0.010516, -0.989670,
		0.204818, -0.978612, -0.019192,
		-0.968301, -0.205446, 0.142073,
		45.713192, 33.822464, 32.874435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194996, 33.406403, 32.324139>,  <46.391003, 33.966274, 32.774986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194996, 33.406403, 32.324139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860954, 33.613705, 32.397907>,  <45.660530, 33.738087, 32.442169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860954, 33.613705, 32.397907>,  <46.194996, 33.406403, 32.324139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860954, 33.613705, 32.397907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250852, -0.060421, -0.966138,
		-0.489567, -0.853086, 0.180464,
		-0.835103, 0.518259, 0.184418,
		45.610424, 33.769184, 32.453232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722496, 33.089981, 31.917040>,  <46.194996, 33.406403, 32.324139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722496, 33.089981, 31.917040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545502, 33.433655, 32.019806>,  <45.439304, 33.639858, 32.081467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545502, 33.433655, 32.019806>,  <45.722496, 33.089981, 31.917040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545502, 33.433655, 32.019806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438296, 0.042742, -0.897814,
		-0.782371, -0.509874, 0.357665,
		-0.442485, 0.859187, 0.256915,
		45.412758, 33.691410, 32.096882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025520, 33.028709, 31.773684>,  <45.722496, 33.089981, 31.917040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025520, 33.028709, 31.773684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075211, 33.425560, 31.780117>,  <45.105022, 33.663670, 31.783978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075211, 33.425560, 31.780117>,  <45.025520, 33.028709, 31.773684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075211, 33.425560, 31.780117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506912, 0.077386, -0.858517,
		-0.853000, 0.098494, 0.512533,
		0.124222, 0.992124, 0.016083,
		45.112476, 33.723198, 31.784943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406773, 33.325222, 31.603247>,  <45.025520, 33.028709, 31.773684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406773, 33.325222, 31.603247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663586, 33.627655, 31.552454>,  <44.817673, 33.809116, 31.521978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.663586, 33.627655, 31.552454>,  <44.406773, 33.325222, 31.603247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663586, 33.627655, 31.552454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277983, 0.075220, -0.957637,
		-0.714504, 0.650135, 0.258473,
		0.642035, 0.756086, -0.126982,
		44.856197, 33.854481, 31.514360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034897, 33.847885, 31.300632>,  <44.406773, 33.325222, 31.603247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034897, 33.847885, 31.300632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421246, 33.921700, 31.227928>,  <44.653053, 33.965988, 31.184305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421246, 33.921700, 31.227928>,  <44.034897, 33.847885, 31.300632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421246, 33.921700, 31.227928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198359, 0.075717, -0.977200,
		-0.166571, 0.979904, 0.109739,
		0.965872, 0.184541, -0.181760,
		44.711006, 33.977062, 31.173401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940617, 34.345341, 30.723324>,  <44.034897, 33.847885, 31.300632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940617, 34.345341, 30.723324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291840, 34.154144, 30.732676>,  <44.502571, 34.039425, 30.738287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.291840, 34.154144, 30.732676>,  <43.940617, 34.345341, 30.723324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291840, 34.154144, 30.732676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015109, -0.021140, -0.999662,
		0.478325, 0.878110, -0.011340,
		0.878053, -0.477992, 0.023380,
		44.555256, 34.010746, 30.739689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344997, 34.659760, 30.154692>,  <43.940617, 34.345341, 30.723324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344997, 34.659760, 30.154692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522293, 34.306854, 30.218130>,  <44.628670, 34.095112, 30.256193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.522293, 34.306854, 30.218130>,  <44.344997, 34.659760, 30.154692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522293, 34.306854, 30.218130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159764, -0.096341, -0.982443,
		0.882053, 0.460792, 0.098252,
		0.443236, -0.882264, 0.158596,
		44.655262, 34.042175, 30.265709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857601, 34.583656, 29.631123>,  <44.344997, 34.659760, 30.154692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857601, 34.583656, 29.631123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816216, 34.205677, 29.755297>,  <44.791382, 33.978889, 29.829802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.816216, 34.205677, 29.755297>,  <44.857601, 34.583656, 29.631123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816216, 34.205677, 29.755297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113759, -0.321303, -0.940119,
		0.988106, -0.061958, 0.140741,
		-0.103468, -0.944948, 0.310433,
		44.785175, 33.922192, 29.848427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441410, 34.121319, 29.224344>,  <44.857601, 34.583656, 29.631123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441410, 34.121319, 29.224344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156227, 33.868305, 29.345404>,  <44.985119, 33.716496, 29.418039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156227, 33.868305, 29.345404>,  <45.441410, 34.121319, 29.224344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156227, 33.868305, 29.345404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145672, -0.555795, -0.818457,
		0.685913, -0.539435, 0.488399,
		-0.712954, -0.632536, 0.302647,
		44.942341, 33.678543, 29.436197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728325, 33.439442, 29.107037>,  <45.441410, 34.121319, 29.224344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728325, 33.439442, 29.107037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339096, 33.349426, 29.126991>,  <45.105560, 33.295418, 29.138964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339096, 33.349426, 29.126991>,  <45.728325, 33.439442, 29.107037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339096, 33.349426, 29.126991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064692, -0.474358, -0.877952,
		0.221240, -0.851083, 0.476142,
		-0.973072, -0.225041, 0.049888,
		45.047176, 33.281914, 29.141958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507179, 32.680504, 29.108162>,  <45.728325, 33.439442, 29.107037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507179, 32.680504, 29.108162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189663, 32.874607, 28.961506>,  <44.999153, 32.991070, 28.873512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189663, 32.874607, 28.961506>,  <45.507179, 32.680504, 29.108162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189663, 32.874607, 28.961506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027534, -0.573547, -0.818710,
		-0.607571, -0.659977, 0.441913,
		-0.793788, 0.485257, -0.366642,
		44.951527, 33.020184, 28.851515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997673, 32.177662, 28.911514>,  <45.507179, 32.680504, 29.108162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997673, 32.177662, 28.911514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901131, 32.496014, 28.689405>,  <44.843204, 32.687023, 28.556141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.901131, 32.496014, 28.689405>,  <44.997673, 32.177662, 28.911514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901131, 32.496014, 28.689405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133909, -0.594028, -0.793221,
		-0.961153, -0.117094, 0.249948,
		-0.241357, 0.795876, -0.555272,
		44.828724, 32.734776, 28.522823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439255, 31.973524, 28.548729>,  <44.997673, 32.177662, 28.911514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439255, 31.973524, 28.548729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586681, 32.280670, 28.339144>,  <44.675137, 32.464958, 28.213392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586681, 32.280670, 28.339144>,  <44.439255, 31.973524, 28.548729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586681, 32.280670, 28.339144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030101, -0.553491, -0.832311,
		-0.929114, 0.322533, -0.180884,
		0.368565, 0.767867, -0.523965,
		44.697250, 32.511032, 28.181953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900055, 31.885799, 27.984690>,  <44.439255, 31.973524, 28.548729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900055, 31.885799, 27.984690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207821, 32.116924, 27.875782>,  <44.392483, 32.255600, 27.810438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207821, 32.116924, 27.875782>,  <43.900055, 31.885799, 27.984690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207821, 32.116924, 27.875782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013828, -0.411087, -0.911491,
		-0.638595, 0.705083, -0.308308,
		0.769418, 0.577811, -0.272268,
		44.438648, 32.290268, 27.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682125, 32.271179, 27.297388>,  <43.900055, 31.885799, 27.984690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682125, 32.271179, 27.297388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079811, 32.263409, 27.339624>,  <44.318424, 32.258747, 27.364967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079811, 32.263409, 27.339624>,  <43.682125, 32.271179, 27.297388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079811, 32.263409, 27.339624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080302, -0.518272, -0.851438,
		0.071266, 0.854995, -0.513716,
		0.994220, -0.019426, 0.105593,
		44.378078, 32.257580, 27.371302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.179893, 34.248260, 41.763412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862202, 34.010689, 41.814716>,  <37.671589, 33.868145, 41.845497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862202, 34.010689, 41.814716>,  <38.179893, 34.248260, 41.763412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862202, 34.010689, 41.814716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205490, 0.063897, -0.976571,
		0.571821, -0.801974, -0.172796,
		-0.794226, -0.593931, 0.128260,
		37.623936, 33.832508, 41.853195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244663, 33.776566, 41.297607>,  <38.179893, 34.248260, 41.763412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244663, 33.776566, 41.297607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852257, 33.759808, 41.373348>,  <37.616814, 33.749752, 41.418793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852257, 33.759808, 41.373348>,  <38.244663, 33.776566, 41.297607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852257, 33.759808, 41.373348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190470, 0.024615, -0.981384,
		0.036495, -0.998817, -0.032135,
		-0.981015, -0.041936, 0.189346,
		37.557953, 33.747238, 41.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937386, 33.286331, 40.876316>,  <38.244663, 33.776566, 41.297607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937386, 33.286331, 40.876316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622200, 33.509251, 40.981022>,  <37.433086, 33.643002, 41.043846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622200, 33.509251, 40.981022>,  <37.937386, 33.286331, 40.876316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622200, 33.509251, 40.981022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251412, 0.096868, -0.963021,
		-0.562051, -0.824640, 0.063784,
		-0.787967, 0.557302, 0.261769,
		37.385811, 33.676441, 41.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229198, 33.067497, 40.559982>,  <37.937386, 33.286331, 40.876316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229198, 33.067497, 40.559982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136639, 33.449509, 40.634151>,  <37.081104, 33.678715, 40.678654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136639, 33.449509, 40.634151>,  <37.229198, 33.067497, 40.559982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136639, 33.449509, 40.634151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352064, 0.095470, -0.931094,
		-0.906921, -0.280734, 0.314139,
		-0.231399, 0.955025, 0.185420,
		37.067219, 33.736015, 40.689777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538021, 33.117500, 40.300343>,  <37.229198, 33.067497, 40.559982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538021, 33.117500, 40.300343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681061, 33.489357, 40.335869>,  <36.766884, 33.712471, 40.357185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681061, 33.489357, 40.335869>,  <36.538021, 33.117500, 40.300343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681061, 33.489357, 40.335869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276775, 0.196333, -0.940664,
		-0.891917, 0.311801, 0.327511,
		0.357601, 0.929641, 0.088814,
		36.788342, 33.768250, 40.362514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957882, 33.593426, 40.022911>,  <36.538021, 33.117500, 40.300343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957882, 33.593426, 40.022911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265934, 33.848461, 40.030689>,  <36.450768, 34.001484, 40.035358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265934, 33.848461, 40.030689>,  <35.957882, 33.593426, 40.022911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265934, 33.848461, 40.030689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362335, 0.462345, -0.809290,
		-0.524986, 0.616213, 0.587087,
		0.770132, 0.637588, 0.019450,
		36.496975, 34.039738, 40.036526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729580, 34.320553, 39.827076>,  <35.957882, 33.593426, 40.022911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729580, 34.320553, 39.827076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122135, 34.315464, 39.750435>,  <36.357670, 34.312412, 39.704449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122135, 34.315464, 39.750435>,  <35.729580, 34.320553, 39.827076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122135, 34.315464, 39.750435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176788, 0.329715, -0.927380,
		0.074970, 0.943995, 0.321331,
		0.981390, -0.012718, -0.191606,
		36.416553, 34.311649, 39.692955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938675, 34.908424, 39.460533>,  <35.729580, 34.320553, 39.827076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938675, 34.908424, 39.460533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231731, 34.659351, 39.350620>,  <36.407566, 34.509907, 39.284672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231731, 34.659351, 39.350620>,  <35.938675, 34.908424, 39.460533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231731, 34.659351, 39.350620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112359, 0.508843, -0.853496,
		0.671275, 0.594433, 0.442763,
		0.732643, -0.622679, -0.274783,
		36.451523, 34.472549, 39.268185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341923, 35.468376, 39.146049>,  <35.938675, 34.908424, 39.460533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341923, 35.468376, 39.146049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446259, 35.106586, 39.011055>,  <36.508862, 34.889515, 38.930058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446259, 35.106586, 39.011055>,  <36.341923, 35.468376, 39.146049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446259, 35.106586, 39.011055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127738, 0.378847, -0.916601,
		0.956893, 0.195979, 0.214355,
		0.260842, -0.904471, -0.337482,
		36.524509, 34.835247, 38.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829235, 35.640335, 38.647026>,  <36.341923, 35.468376, 39.146049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829235, 35.640335, 38.647026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704067, 35.265495, 38.585163>,  <36.628967, 35.040592, 38.548046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704067, 35.265495, 38.585163>,  <36.829235, 35.640335, 38.647026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704067, 35.265495, 38.585163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065117, 0.183618, -0.980839,
		0.947545, -0.296854, -0.118479,
		-0.312920, -0.937103, -0.154656,
		36.610191, 34.984364, 38.538765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062885, 35.515862, 38.010197>,  <36.829235, 35.640335, 38.647026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062885, 35.515862, 38.010197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822002, 35.197395, 38.033737>,  <36.677471, 35.006313, 38.047863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822002, 35.197395, 38.033737>,  <37.062885, 35.515862, 38.010197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822002, 35.197395, 38.033737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197939, 0.077489, -0.977147,
		0.773413, -0.600092, -0.204258,
		-0.602206, -0.796169, 0.058851,
		36.641342, 34.958546, 38.051392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167923, 35.049198, 37.385723>,  <37.062885, 35.515862, 38.010197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167923, 35.049198, 37.385723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791988, 35.019524, 37.519112>,  <36.566425, 35.001720, 37.599144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791988, 35.019524, 37.519112>,  <37.167923, 35.049198, 37.385723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791988, 35.019524, 37.519112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341441, 0.172422, -0.923953,
		0.011047, -0.982226, -0.187378,
		-0.939838, -0.074186, 0.333467,
		36.510036, 34.997269, 37.619152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897625, 34.667660, 36.880600>,  <37.167923, 35.049198, 37.385723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897625, 34.667660, 36.880600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592663, 34.851822, 37.062485>,  <36.409683, 34.962318, 37.171616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592663, 34.851822, 37.062485>,  <36.897625, 34.667660, 36.880600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592663, 34.851822, 37.062485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533955, -0.050648, -0.843994,
		-0.365550, -0.886262, 0.284451,
		-0.762407, 0.460407, 0.454710,
		36.363941, 34.989944, 37.198898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967739, 33.995235, 36.740002>,  <36.897625, 34.667660, 36.880600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967739, 33.995235, 36.740002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145859, 33.896889, 37.084389>,  <37.252731, 33.837883, 37.291019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145859, 33.896889, 37.084389>,  <36.967739, 33.995235, 36.740002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145859, 33.896889, 37.084389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490986, -0.871152, 0.005169,
		0.748759, -0.425023, -0.508640,
		0.445300, -0.245865, 0.860964,
		37.279449, 33.823128, 37.342678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607773, 33.513294, 36.920242>,  <36.967739, 33.995235, 36.740002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607773, 33.513294, 36.920242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691170, 33.729259, 36.594048>,  <37.741207, 33.858837, 36.398331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691170, 33.729259, 36.594048>,  <37.607773, 33.513294, 36.920242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691170, 33.729259, 36.594048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027552, 0.830241, 0.556723,
		0.977637, -0.138538, 0.158219,
		0.208487, 0.539914, -0.815491,
		37.753716, 33.891235, 36.349400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214283, 33.131371, 36.629528>,  <37.607773, 33.513294, 36.920242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214283, 33.131371, 36.629528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292843, 32.746777, 36.552620>,  <38.339981, 32.516018, 36.506474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292843, 32.746777, 36.552620>,  <38.214283, 33.131371, 36.629528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292843, 32.746777, 36.552620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623536, -0.273804, 0.732281,
		-0.756723, -0.023935, -0.653298,
		0.196403, -0.961487, -0.192269,
		38.351765, 32.458332, 36.494938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584801, 32.810059, 36.570118>,  <38.214283, 33.131371, 36.629528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584801, 32.810059, 36.570118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837708, 32.509197, 36.644424>,  <37.989452, 32.328682, 36.689007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837708, 32.509197, 36.644424>,  <37.584801, 32.810059, 36.570118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837708, 32.509197, 36.644424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617258, -0.344143, 0.707502,
		-0.468219, -0.561993, -0.681861,
		0.632268, -0.752150, 0.185760,
		38.027390, 32.283554, 36.700153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141674, 32.239483, 36.731907>,  <37.584801, 32.810059, 36.570118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141674, 32.239483, 36.731907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489784, 32.136345, 36.899776>,  <37.698650, 32.074463, 37.000500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489784, 32.136345, 36.899776>,  <37.141674, 32.239483, 36.731907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489784, 32.136345, 36.899776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486071, -0.311767, 0.816417,
		-0.079671, -0.914503, -0.396657,
		0.870280, -0.257848, 0.419675,
		37.750870, 32.058990, 37.025681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053352, 31.456989, 37.046059>,  <37.141674, 32.239483, 36.731907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053352, 31.456989, 37.046059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377357, 31.618500, 37.216160>,  <37.571762, 31.715406, 37.318222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377357, 31.618500, 37.216160>,  <37.053352, 31.456989, 37.046059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377357, 31.618500, 37.216160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254199, -0.411732, 0.875134,
		0.528449, -0.816971, -0.230869,
		0.810015, 0.403777, 0.425253,
		37.620361, 31.739634, 37.343735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314194, 30.965300, 37.488750>,  <37.053352, 31.456989, 37.046059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314194, 30.965300, 37.488750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486675, 31.298756, 37.626797>,  <37.590164, 31.498829, 37.709625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486675, 31.298756, 37.626797>,  <37.314194, 30.965300, 37.488750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486675, 31.298756, 37.626797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061002, -0.354696, 0.932990,
		0.900191, -0.423359, -0.102091,
		0.431201, 0.833641, 0.345120,
		37.616035, 31.548847, 37.730331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929806, 30.716095, 38.007092>,  <37.314194, 30.965300, 37.488750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929806, 30.716095, 38.007092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813007, 31.085894, 38.105106>,  <37.742928, 31.307774, 38.163914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813007, 31.085894, 38.105106>,  <37.929806, 30.716095, 38.007092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813007, 31.085894, 38.105106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008631, -0.253645, 0.967259,
		0.956381, 0.284550, 0.066084,
		-0.291995, 0.924497, 0.245038,
		37.725410, 31.363243, 38.178619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384682, 30.882597, 38.493267>,  <37.929806, 30.716095, 38.007092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384682, 30.882597, 38.493267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074596, 31.130754, 38.540863>,  <37.888546, 31.279650, 38.569420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074596, 31.130754, 38.540863>,  <38.384682, 30.882597, 38.493267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074596, 31.130754, 38.540863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129081, -0.028818, 0.991215,
		0.618375, 0.783759, -0.057741,
		-0.775210, 0.620396, 0.118989,
		37.842033, 31.316874, 38.576561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607777, 31.313297, 39.038929>,  <38.384682, 30.882597, 38.493267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607777, 31.313297, 39.038929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210445, 31.354530, 39.018261>,  <37.972046, 31.379271, 39.005859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210445, 31.354530, 39.018261>,  <38.607777, 31.313297, 39.038929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210445, 31.354530, 39.018261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045676, 0.059670, 0.997173,
		0.105873, 0.992881, -0.054564,
		-0.993330, 0.103081, -0.051668,
		37.912445, 31.385454, 39.002762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414818, 31.982548, 39.398361>,  <38.607777, 31.313297, 39.038929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414818, 31.982548, 39.398361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093906, 31.743774, 39.396343>,  <37.901360, 31.600510, 39.395130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093906, 31.743774, 39.396343>,  <38.414818, 31.982548, 39.398361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093906, 31.743774, 39.396343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006188, -0.016772, 0.999840,
		-0.596924, 0.802114, 0.017149,
		-0.802274, -0.596935, -0.005048,
		37.853226, 31.564693, 39.394829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933674, 32.301292, 39.939178>,  <38.414818, 31.982548, 39.398361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933674, 32.301292, 39.939178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781521, 31.933788, 39.896862>,  <37.690228, 31.713285, 39.871471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781521, 31.933788, 39.896862>,  <37.933674, 32.301292, 39.939178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781521, 31.933788, 39.896862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214458, -0.023647, 0.976447,
		-0.899621, 0.394111, -0.188040,
		-0.380382, -0.918759, -0.105794,
		37.667408, 31.658161, 39.865124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284618, 32.211990, 40.344604>,  <37.933674, 32.301292, 39.939178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284618, 32.211990, 40.344604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391987, 31.828909, 40.303135>,  <37.456409, 31.599060, 40.278255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391987, 31.828909, 40.303135>,  <37.284618, 32.211990, 40.344604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391987, 31.828909, 40.303135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203705, -0.161621, 0.965600,
		-0.941516, -0.238072, -0.238472,
		0.268425, -0.957706, -0.103672,
		37.472515, 31.541597, 40.272034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959244, 31.964188, 40.890182>,  <37.284618, 32.211990, 40.344604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959244, 31.964188, 40.890182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169651, 31.640760, 40.784714>,  <37.295895, 31.446705, 40.721432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169651, 31.640760, 40.784714>,  <36.959244, 31.964188, 40.890182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169651, 31.640760, 40.784714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063558, -0.346535, 0.935881,
		-0.848094, -0.475534, -0.233675,
		0.526020, -0.808567, -0.263671,
		37.327457, 31.398190, 40.705612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676311, 31.417181, 41.287685>,  <36.959244, 31.964188, 40.890182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676311, 31.417181, 41.287685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 31.317713, 41.187153>,  <37.274975, 31.258032, 41.126831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050476, 31.317713, 41.187153>,  <36.676311, 31.417181, 41.287685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050476, 31.317713, 41.187153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175150, -0.291595, 0.940370,
		-0.307141, -0.923651, -0.229204,
		0.935408, -0.248681, -0.251338,
		37.331100, 31.243111, 41.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142342, 30.933064, 41.207306>,  <36.676311, 31.417181, 41.287685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142342, 30.933064, 41.207306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761894, 30.954601, 41.328941>,  <35.533627, 30.967524, 41.401924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761894, 30.954601, 41.328941>,  <36.142342, 30.933064, 41.207306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761894, 30.954601, 41.328941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265915, 0.357904, -0.895094,
		-0.157030, -0.932205, -0.326092,
		-0.951121, 0.053844, 0.304089,
		35.476559, 30.970755, 41.420170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746731, 30.533201, 40.765942>,  <36.142342, 30.933064, 41.207306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746731, 30.533201, 40.765942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491280, 30.791971, 40.932625>,  <35.338009, 30.947233, 41.032635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491280, 30.791971, 40.932625>,  <35.746731, 30.533201, 40.765942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491280, 30.791971, 40.932625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263768, 0.324680, -0.908300,
		-0.722899, -0.689978, -0.036711,
		-0.638626, 0.646926, 0.416705,
		35.299690, 30.986050, 41.057636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031075, 30.471020, 40.432659>,  <35.746731, 30.533201, 40.765942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031075, 30.471020, 40.432659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040585, 30.843790, 40.577404>,  <35.046291, 31.067453, 40.664253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040585, 30.843790, 40.577404>,  <35.031075, 30.471020, 40.432659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040585, 30.843790, 40.577404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447205, 0.333647, -0.829872,
		-0.894115, -0.142100, 0.424694,
		0.023774, 0.931927, 0.361867,
		35.047718, 31.123367, 40.685963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443790, 30.685179, 40.145267>,  <35.031075, 30.471020, 40.432659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443790, 30.685179, 40.145267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620262, 31.018982, 40.277302>,  <34.726147, 31.219263, 40.356522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620262, 31.018982, 40.277302>,  <34.443790, 30.685179, 40.145267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620262, 31.018982, 40.277302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306824, 0.485914, -0.818380,
		-0.843337, 0.259777, 0.470423,
		0.441182, 0.834508, 0.330084,
		34.752617, 31.269335, 40.376328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907394, 31.292053, 40.108398>,  <34.443790, 30.685179, 40.145267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907394, 31.292053, 40.108398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279507, 31.438555, 40.116783>,  <34.502773, 31.526457, 40.121815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279507, 31.438555, 40.116783>,  <33.907394, 31.292053, 40.108398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279507, 31.438555, 40.116783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218049, 0.597979, -0.771282,
		-0.295020, 0.712936, 0.636148,
		0.930278, 0.366255, 0.020961,
		34.558590, 31.548431, 40.123070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893848, 32.062084, 40.141861>,  <33.907394, 31.292053, 40.108398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893848, 32.062084, 40.141861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230331, 31.939657, 39.963562>,  <34.432220, 31.866199, 39.856583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230331, 31.939657, 39.963562>,  <33.893848, 32.062084, 40.141861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230331, 31.939657, 39.963562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205775, 0.581127, -0.787368,
		0.500024, 0.754065, 0.425868,
		0.841209, -0.306070, -0.445744,
		34.482693, 31.847836, 39.829838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304874, 32.672558, 40.000832>,  <33.893848, 32.062084, 40.141861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304874, 32.672558, 40.000832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366787, 32.356953, 39.763004>,  <34.403934, 32.167591, 39.620308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366787, 32.356953, 39.763004>,  <34.304874, 32.672558, 40.000832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366787, 32.356953, 39.763004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162056, 0.573389, -0.803096,
		0.974567, 0.220655, -0.039115,
		0.154779, -0.789010, -0.594565,
		34.413219, 32.120251, 39.584637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090595, 32.982243, 39.422390>,  <34.304874, 32.672558, 40.000832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090595, 32.982243, 39.422390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238716, 32.631001, 39.301186>,  <34.327587, 32.420258, 39.228462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238716, 32.631001, 39.301186>,  <34.090595, 32.982243, 39.422390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238716, 32.631001, 39.301186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092472, 0.289730, -0.952631,
		0.924297, 0.380782, 0.026089,
		0.370303, -0.878101, -0.303009,
		34.349808, 32.367569, 39.210281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746445, 33.059662, 39.020809>,  <34.090595, 32.982243, 39.422390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746445, 33.059662, 39.020809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578720, 32.713112, 38.912308>,  <34.478085, 32.505184, 38.847206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578720, 32.713112, 38.912308>,  <34.746445, 33.059662, 39.020809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578720, 32.713112, 38.912308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125459, 0.351219, -0.927850,
		0.899131, -0.355030, -0.255965,
		-0.419314, -0.866371, -0.271249,
		34.452927, 32.453201, 38.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039215, 32.812332, 38.388058>,  <34.746445, 33.059662, 39.020809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039215, 32.812332, 38.388058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696732, 32.607403, 38.414688>,  <34.491241, 32.484444, 38.430668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696732, 32.607403, 38.414688>,  <35.039215, 32.812332, 38.388058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696732, 32.607403, 38.414688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175454, 0.167148, -0.970195,
		0.485926, -0.842369, -0.233003,
		-0.856208, -0.512324, 0.066575,
		34.439869, 32.453705, 38.434662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057556, 32.354191, 37.855160>,  <35.039215, 32.812332, 38.388058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057556, 32.354191, 37.855160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662731, 32.363636, 37.918591>,  <34.425835, 32.369301, 37.956650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662731, 32.363636, 37.918591>,  <35.057556, 32.354191, 37.855160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662731, 32.363636, 37.918591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150486, 0.204785, -0.967170,
		-0.055309, -0.978522, -0.198583,
		-0.987064, 0.023610, 0.158580,
		34.366611, 32.370720, 37.966164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691860, 31.857378, 37.344578>,  <35.057556, 32.354191, 37.855160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691860, 31.857378, 37.344578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483940, 32.181183, 37.453751>,  <34.359188, 32.375465, 37.519257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483940, 32.181183, 37.453751>,  <34.691860, 31.857378, 37.344578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483940, 32.181183, 37.453751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237506, 0.169953, -0.956403,
		-0.820606, -0.561966, 0.103922,
		-0.519804, 0.809512, 0.272935,
		34.327999, 32.424038, 37.535629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.363056, 29.641918, 44.697235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219646, 29.999556, 44.804607>,  <35.133602, 30.214138, 44.869030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219646, 29.999556, 44.804607>,  <35.363056, 29.641918, 44.697235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219646, 29.999556, 44.804607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234488, 0.192076, -0.952954,
		-0.903590, -0.404601, 0.140791,
		-0.358524, 0.894094, 0.268433,
		35.112091, 30.267784, 44.885136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637440, 29.681019, 44.408951>,  <35.363056, 29.641918, 44.697235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637440, 29.681019, 44.408951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.770344, 30.050898, 44.483284>,  <34.850086, 30.272825, 44.527885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.770344, 30.050898, 44.483284>,  <34.637440, 29.681019, 44.408951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770344, 30.050898, 44.483284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096712, 0.229390, -0.968518,
		-0.938215, 0.303830, 0.165647,
		0.332263, 0.924698, 0.185834,
		34.870022, 30.328308, 44.539036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127983, 30.142437, 44.129360>,  <34.637440, 29.681019, 44.408951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127983, 30.142437, 44.129360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.464077, 30.355951, 44.167480>,  <34.665733, 30.484058, 44.190353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.464077, 30.355951, 44.167480>,  <34.127983, 30.142437, 44.129360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464077, 30.355951, 44.167480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090447, 0.311272, -0.946007,
		-0.534627, 0.786247, 0.309821,
		0.840234, 0.533783, 0.095301,
		34.716148, 30.516087, 44.196072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975750, 30.771166, 43.897285>,  <34.127983, 30.142437, 44.129360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975750, 30.771166, 43.897285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375416, 30.774906, 43.881332>,  <34.615215, 30.777151, 43.871761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375416, 30.774906, 43.881332>,  <33.975750, 30.771166, 43.897285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375416, 30.774906, 43.881332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040452, 0.378715, -0.924629,
		0.006457, 0.925466, 0.378775,
		0.999161, 0.009352, -0.039882,
		34.675163, 30.777712, 43.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227348, 31.372370, 43.594616>,  <33.975750, 30.771166, 43.897285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227348, 31.372370, 43.594616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542637, 31.131695, 43.542969>,  <34.731812, 30.987289, 43.511982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542637, 31.131695, 43.542969>,  <34.227348, 31.372370, 43.594616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542637, 31.131695, 43.542969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068535, 0.294341, -0.953240,
		0.611559, 0.742519, 0.273244,
		0.788225, -0.601689, -0.129118,
		34.779106, 30.951189, 43.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662495, 31.671221, 43.151516>,  <34.227348, 31.372370, 43.594616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662495, 31.671221, 43.151516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802780, 31.301388, 43.091995>,  <34.886951, 31.079487, 43.056282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802780, 31.301388, 43.091995>,  <34.662495, 31.671221, 43.151516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802780, 31.301388, 43.091995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065952, 0.182887, -0.980919,
		0.934157, 0.334210, 0.125119,
		0.350716, -0.924584, -0.148803,
		34.907993, 31.024012, 43.047356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288239, 31.678221, 42.770027>,  <34.662495, 31.671221, 43.151516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288239, 31.678221, 42.770027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156918, 31.301670, 42.738964>,  <35.078125, 31.075741, 42.720325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.156918, 31.301670, 42.738964>,  <35.288239, 31.678221, 42.770027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156918, 31.301670, 42.738964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234157, -0.001457, -0.972198,
		0.915089, -0.337359, 0.220908,
		-0.328301, -0.941375, -0.077662,
		35.058426, 31.019258, 42.715664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744659, 31.542511, 42.313187>,  <35.288239, 31.678221, 42.770027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744659, 31.542511, 42.313187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487503, 31.236565, 42.296841>,  <35.333210, 31.052998, 42.287033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487503, 31.236565, 42.296841>,  <35.744659, 31.542511, 42.313187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487503, 31.236565, 42.296841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137762, -0.062976, -0.988461,
		0.753465, -0.641105, 0.145856,
		-0.642893, -0.764865, -0.040870,
		35.294636, 31.007105, 42.284580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056938, 30.948517, 41.960823>,  <35.744659, 31.542511, 42.313187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056938, 30.948517, 41.960823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663738, 30.904217, 41.902248>,  <35.427818, 30.877636, 41.867104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.663738, 30.904217, 41.902248>,  <36.056938, 30.948517, 41.960823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663738, 30.904217, 41.902248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159041, -0.115090, -0.980541,
		0.091742, -0.987162, 0.130748,
		-0.983000, -0.110751, -0.146441,
		35.368839, 30.870991, 41.858315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790058, 30.798178, 41.647644>,  <36.056938, 30.948517, 41.960823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790058, 30.798178, 41.647644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166561, 30.896683, 41.555229>,  <37.392464, 30.955786, 41.499779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166561, 30.896683, 41.555229>,  <36.790058, 30.798178, 41.647644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166561, 30.896683, 41.555229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303242, -0.315432, 0.899193,
		0.148562, -0.916437, -0.371582,
		0.941262, 0.246265, -0.231041,
		37.448940, 30.970562, 41.485916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206783, 30.208017, 41.764427>,  <36.790058, 30.798178, 41.647644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206783, 30.208017, 41.764427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451618, 30.523857, 41.781780>,  <37.598518, 30.713362, 41.792194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451618, 30.523857, 41.781780>,  <37.206783, 30.208017, 41.764427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451618, 30.523857, 41.781780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097062, -0.129463, 0.986822,
		0.784811, -0.599810, -0.155882,
		0.612087, 0.789599, 0.043385,
		37.635242, 30.760736, 41.794796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768864, 30.007271, 42.191967>,  <37.206783, 30.208017, 41.764427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768864, 30.007271, 42.191967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745819, 30.406317, 42.176743>,  <37.731991, 30.645744, 42.167606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745819, 30.406317, 42.176743>,  <37.768864, 30.007271, 42.191967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745819, 30.406317, 42.176743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146681, 0.046173, 0.988105,
		0.987505, 0.051344, -0.148991,
		-0.057613, 0.997613, -0.038065,
		37.728535, 30.705601, 42.165321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355789, 30.211744, 42.560936>,  <37.768864, 30.007271, 42.191967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355789, 30.211744, 42.560936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109264, 30.526581, 42.550777>,  <37.961349, 30.715483, 42.544682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109264, 30.526581, 42.550777>,  <38.355789, 30.211744, 42.560936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109264, 30.526581, 42.550777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259919, 0.233761, 0.936909,
		0.743368, 0.570830, -0.348650,
		-0.616316, 0.787089, -0.025401,
		37.924370, 30.762707, 42.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728271, 30.796181, 42.696297>,  <38.355789, 30.211744, 42.560936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728271, 30.796181, 42.696297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345772, 30.847769, 42.801331>,  <38.116272, 30.878721, 42.864349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.345772, 30.847769, 42.801331>,  <38.728271, 30.796181, 42.696297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345772, 30.847769, 42.801331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291173, 0.332782, 0.896925,
		0.028296, 0.934143, -0.355777,
		-0.956252, 0.128972, 0.262581,
		38.058895, 30.886461, 42.880104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814568, 31.415079, 43.160057>,  <38.728271, 30.796181, 42.696297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814568, 31.415079, 43.160057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444988, 31.272305, 43.215084>,  <38.223240, 31.186640, 43.248100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.444988, 31.272305, 43.215084>,  <38.814568, 31.415079, 43.160057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444988, 31.272305, 43.215084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092394, 0.140745, 0.985725,
		-0.371202, 0.923465, -0.097062,
		-0.923944, -0.356935, 0.137567,
		38.167805, 31.165224, 43.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484245, 31.692924, 43.753014>,  <38.814568, 31.415079, 43.160057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484245, 31.692924, 43.753014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252460, 31.368900, 43.717167>,  <38.113392, 31.174486, 43.695660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252460, 31.368900, 43.717167>,  <38.484245, 31.692924, 43.753014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252460, 31.368900, 43.717167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121426, -0.022918, 0.992336,
		-0.805904, 0.585901, -0.085082,
		-0.579460, -0.810059, -0.089614,
		38.078621, 31.125883, 43.690285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854767, 31.922928, 44.125996>,  <38.484245, 31.692924, 43.753014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854767, 31.922928, 44.125996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888599, 31.527617, 44.075165>,  <37.908897, 31.290430, 44.044666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888599, 31.527617, 44.075165>,  <37.854767, 31.922928, 44.125996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888599, 31.527617, 44.075165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199425, -0.141741, 0.969608,
		-0.976256, -0.056670, -0.209076,
		0.084582, -0.988280, -0.127074,
		37.913975, 31.231133, 44.037041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214027, 31.612196, 44.456512>,  <37.854767, 31.922928, 44.125996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214027, 31.612196, 44.456512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524185, 31.359617, 44.459221>,  <37.710278, 31.208071, 44.460846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524185, 31.359617, 44.459221>,  <37.214027, 31.612196, 44.456512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524185, 31.359617, 44.459221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059194, -0.062004, 0.996319,
		-0.628702, -0.772937, -0.085455,
		0.775391, -0.631446, 0.006771,
		37.756802, 31.170183, 44.461254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078796, 30.977650, 44.797710>,  <37.214027, 31.612196, 44.456512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078796, 30.977650, 44.797710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478046, 30.999668, 44.808399>,  <37.717598, 31.012878, 44.814812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478046, 30.999668, 44.808399>,  <37.078796, 30.977650, 44.797710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478046, 30.999668, 44.808399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005393, -0.355857, 0.934525,
		0.060951, -0.932918, -0.354893,
		0.998126, 0.055046, 0.026721,
		37.777485, 31.016182, 44.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188377, 30.500675, 45.273697>,  <37.078796, 30.977650, 44.797710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188377, 30.500675, 45.273697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551022, 30.667986, 45.251392>,  <37.768608, 30.768372, 45.238010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551022, 30.667986, 45.251392>,  <37.188377, 30.500675, 45.273697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551022, 30.667986, 45.251392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171307, -0.244052, 0.954512,
		0.385641, -0.874919, -0.292913,
		0.906606, 0.418277, -0.055763,
		37.823002, 30.793468, 45.234665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646957, 30.101219, 45.680527>,  <37.188377, 30.500675, 45.273697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646957, 30.101219, 45.680527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853580, 30.443333, 45.664223>,  <37.977554, 30.648602, 45.654442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853580, 30.443333, 45.664223>,  <37.646957, 30.101219, 45.680527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853580, 30.443333, 45.664223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486468, -0.253969, 0.835972,
		0.704642, -0.451653, -0.547257,
		0.516555, 0.855284, -0.040757,
		38.008549, 30.699917, 45.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324303, 29.966095, 45.920780>,  <37.646957, 30.101219, 45.680527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324303, 29.966095, 45.920780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.266308, 30.354502, 45.996780>,  <38.231510, 30.587545, 46.042381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.266308, 30.354502, 45.996780>,  <38.324303, 29.966095, 45.920780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266308, 30.354502, 45.996780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443086, -0.107982, 0.889952,
		0.884677, 0.213221, -0.414588,
		-0.144988, 0.971018, 0.190005,
		38.222813, 30.645807, 46.053783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047123, 30.148849, 46.232765>,  <38.324303, 29.966095, 45.920780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047123, 30.148849, 46.232765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771454, 30.430119, 46.302723>,  <38.606052, 30.598879, 46.344700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771454, 30.430119, 46.302723>,  <39.047123, 30.148849, 46.232765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771454, 30.430119, 46.302723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399903, 0.167824, 0.901062,
		0.604249, 0.690930, -0.396860,
		-0.689174, 0.703172, 0.174898,
		38.564701, 30.641069, 46.355190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.336056, 37.451130, 48.524857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450420, 37.072758, 48.463566>,  <32.519039, 36.845734, 48.426792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.450420, 37.072758, 48.463566>,  <32.336056, 37.451130, 48.524857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450420, 37.072758, 48.463566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081104, 0.135438, -0.987461,
		0.954818, 0.294753, -0.037995,
		0.285911, -0.945927, -0.153224,
		32.536194, 36.788979, 48.417599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840584, 37.510803, 47.930725>,  <32.336056, 37.451130, 48.524857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840584, 37.510803, 47.930725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722488, 37.128658, 47.935051>,  <32.651630, 36.899372, 47.937645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722488, 37.128658, 47.935051>,  <32.840584, 37.510803, 47.930725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722488, 37.128658, 47.935051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017869, -0.016839, -0.999699,
		0.955258, -0.294952, 0.022043,
		-0.295235, -0.955364, 0.010815,
		32.633919, 36.842049, 47.938297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309212, 37.132969, 47.442379>,  <32.840584, 37.510803, 47.930725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309212, 37.132969, 47.442379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976486, 36.914219, 47.480362>,  <32.776852, 36.782970, 47.503151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976486, 36.914219, 47.480362>,  <33.309212, 37.132969, 47.442379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976486, 36.914219, 47.480362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050661, -0.095554, -0.994134,
		0.552741, -0.831743, 0.051778,
		-0.831811, -0.546876, 0.094953,
		32.726944, 36.750156, 47.508846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320423, 36.493618, 46.983311>,  <33.309212, 37.132969, 47.442379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320423, 36.493618, 46.983311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934338, 36.557774, 47.065903>,  <32.702686, 36.596268, 47.115456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934338, 36.557774, 47.065903>,  <33.320423, 36.493618, 46.983311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934338, 36.557774, 47.065903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229958, -0.145004, -0.962337,
		-0.124400, -0.976346, 0.176841,
		-0.965217, 0.160381, 0.206480,
		32.644772, 36.605892, 47.127846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985229, 36.008312, 46.645191>,  <33.320423, 36.493618, 46.983311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985229, 36.008312, 46.645191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675842, 36.251606, 46.716526>,  <32.490211, 36.397583, 46.759327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675842, 36.251606, 46.716526>,  <32.985229, 36.008312, 46.645191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675842, 36.251606, 46.716526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249386, -0.033355, -0.967830,
		-0.582716, -0.793058, 0.177483,
		-0.773465, 0.608232, 0.178342,
		32.443802, 36.434074, 46.770027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397549, 35.704350, 46.336365>,  <32.985229, 36.008312, 46.645191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397549, 35.704350, 46.336365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314766, 36.094528, 46.366486>,  <32.265095, 36.328636, 46.384556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314766, 36.094528, 46.366486>,  <32.397549, 35.704350, 46.336365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314766, 36.094528, 46.366486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280475, 0.014581, -0.959751,
		-0.937285, -0.219746, 0.270572,
		-0.206956, 0.975448, 0.075299,
		32.252678, 36.387161, 46.389076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728743, 35.694397, 46.070122>,  <32.397549, 35.704350, 46.336365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728743, 35.694397, 46.070122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864933, 36.069153, 46.038326>,  <31.946648, 36.294006, 46.019249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.864933, 36.069153, 46.038326>,  <31.728743, 35.694397, 46.070122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864933, 36.069153, 46.038326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155473, -0.027275, -0.987463,
		-0.927309, 0.348567, 0.136374,
		0.340478, 0.936887, -0.079485,
		31.967077, 36.350220, 46.014481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282270, 36.042194, 45.687004>,  <31.728743, 35.694397, 46.070122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282270, 36.042194, 45.687004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581137, 36.307739, 45.674107>,  <31.760456, 36.467064, 45.666367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581137, 36.307739, 45.674107>,  <31.282270, 36.042194, 45.687004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581137, 36.307739, 45.674107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105940, 0.071057, -0.991830,
		-0.656143, 0.744475, 0.123420,
		0.747163, 0.663858, -0.032246,
		31.805286, 36.506897, 45.664433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067499, 36.529987, 45.270187>,  <31.282270, 36.042194, 45.687004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067499, 36.529987, 45.270187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466103, 36.563225, 45.273529>,  <31.705265, 36.583168, 45.275536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466103, 36.563225, 45.273529>,  <31.067499, 36.529987, 45.270187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466103, 36.563225, 45.273529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003290, 0.060911, -0.998138,
		-0.083452, 0.994678, 0.060425,
		0.996506, 0.083098, 0.008356,
		31.765055, 36.588154, 45.276035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251043, 37.172234, 44.825020>,  <31.067499, 36.529987, 45.270187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251043, 37.172234, 44.825020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.610058, 36.996586, 44.841068>,  <31.825466, 36.891197, 44.850697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.610058, 36.996586, 44.841068>,  <31.251043, 37.172234, 44.825020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610058, 36.996586, 44.841068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115037, 0.145357, -0.982669,
		0.425675, 0.886593, 0.180978,
		0.897534, -0.439117, 0.040116,
		31.879318, 36.864849, 44.853104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750423, 37.627350, 44.600517>,  <31.251043, 37.172234, 44.825020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750423, 37.627350, 44.600517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932478, 37.276966, 44.536579>,  <32.041710, 37.066734, 44.498219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932478, 37.276966, 44.536579>,  <31.750423, 37.627350, 44.600517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932478, 37.276966, 44.536579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249224, 0.297657, -0.921568,
		0.854833, 0.379601, 0.353784,
		0.455134, -0.875959, -0.159841,
		32.069019, 37.014179, 44.488628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400639, 37.851265, 44.280312>,  <31.750423, 37.627350, 44.600517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400639, 37.851265, 44.280312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355896, 37.463562, 44.192657>,  <32.329052, 37.230938, 44.140064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355896, 37.463562, 44.192657>,  <32.400639, 37.851265, 44.280312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355896, 37.463562, 44.192657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253865, 0.185330, -0.949318,
		0.960750, -0.161816, 0.225331,
		-0.111855, -0.969262, -0.219135,
		32.322338, 37.172783, 44.126919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969444, 37.736198, 43.871376>,  <32.400639, 37.851265, 44.280312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969444, 37.736198, 43.871376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708961, 37.443489, 43.790939>,  <32.552673, 37.267864, 43.742680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.708961, 37.443489, 43.790939>,  <32.969444, 37.736198, 43.871376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708961, 37.443489, 43.790939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266267, 0.027812, -0.963498,
		0.710654, -0.680981, 0.176736,
		-0.651208, -0.731773, -0.201088,
		32.513599, 37.223957, 43.730614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333393, 37.297764, 43.441807>,  <32.969444, 37.736198, 43.871376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333393, 37.297764, 43.441807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941910, 37.239918, 43.383541>,  <32.707020, 37.205212, 43.348579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.941910, 37.239918, 43.383541>,  <33.333393, 37.297764, 43.441807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941910, 37.239918, 43.383541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128554, 0.121392, -0.984245,
		0.160018, -0.982014, -0.100217,
		-0.978708, -0.144614, -0.145666,
		32.648296, 37.196533, 43.339840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860748, 36.763618, 43.109058>,  <33.333393, 37.297764, 43.441807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860748, 36.763618, 43.109058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251366, 36.747623, 43.024429>,  <34.485737, 36.738026, 42.973652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251366, 36.747623, 43.024429>,  <33.860748, 36.763618, 43.109058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251366, 36.747623, 43.024429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172768, -0.440900, 0.880772,
		-0.128504, -0.896665, -0.423649,
		0.976544, -0.039989, -0.211572,
		34.544331, 36.735626, 42.960957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022408, 36.126713, 43.330132>,  <33.860748, 36.763618, 43.109058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022408, 36.126713, 43.330132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352322, 36.352859, 43.326286>,  <34.550270, 36.488548, 43.323978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352322, 36.352859, 43.326286>,  <34.022408, 36.126713, 43.330132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352322, 36.352859, 43.326286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248461, -0.347089, 0.904321,
		0.507939, -0.748256, -0.426745,
		0.824782, 0.565370, -0.009612,
		34.599754, 36.522469, 43.323402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406948, 35.777752, 43.768700>,  <34.022408, 36.126713, 43.330132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406948, 35.777752, 43.768700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614761, 36.118439, 43.741405>,  <34.739449, 36.322853, 43.725029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614761, 36.118439, 43.741405>,  <34.406948, 35.777752, 43.768700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614761, 36.118439, 43.741405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283792, -0.096676, 0.954000,
		0.805944, -0.515002, -0.291938,
		0.519535, 0.851720, -0.068238,
		34.770622, 36.373955, 43.720936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085949, 35.655685, 44.005215>,  <34.406948, 35.777752, 43.768700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085949, 35.655685, 44.005215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048328, 36.051289, 44.050861>,  <35.025757, 36.288651, 44.078251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.048328, 36.051289, 44.050861>,  <35.085949, 35.655685, 44.005215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048328, 36.051289, 44.050861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146467, -0.099633, 0.984185,
		0.984735, 0.109276, -0.135486,
		-0.094049, 0.989006, 0.114117,
		35.020115, 36.347992, 44.085098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675636, 35.852028, 44.313148>,  <35.085949, 35.655685, 44.005215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675636, 35.852028, 44.313148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413250, 36.148129, 44.372128>,  <35.255817, 36.325790, 44.407516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413250, 36.148129, 44.372128>,  <35.675636, 35.852028, 44.313148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413250, 36.148129, 44.372128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205298, -0.013001, 0.978613,
		0.726335, 0.672206, -0.143444,
		-0.655965, 0.740250, 0.147446,
		35.216461, 36.370205, 44.416363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980530, 36.291645, 44.784885>,  <35.675636, 35.852028, 44.313148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980530, 36.291645, 44.784885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.586964, 36.361691, 44.798958>,  <35.350822, 36.403717, 44.807404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.586964, 36.361691, 44.798958>,  <35.980530, 36.291645, 44.784885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586964, 36.361691, 44.798958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009900, -0.143218, 0.989642,
		0.178342, 0.974075, 0.139181,
		-0.983919, 0.175116, 0.035185,
		35.291786, 36.414227, 44.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908482, 36.748798, 45.349018>,  <35.980530, 36.291645, 44.784885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908482, 36.748798, 45.349018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.541775, 36.596195, 45.301704>,  <35.321751, 36.504635, 45.273315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.541775, 36.596195, 45.301704>,  <35.908482, 36.748798, 45.349018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541775, 36.596195, 45.301704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154854, 0.066507, 0.985696,
		-0.368186, 0.921969, -0.120049,
		-0.916766, -0.381509, -0.118284,
		35.266747, 36.481743, 45.266220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487865, 37.204025, 45.807781>,  <35.908482, 36.748798, 45.349018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487865, 37.204025, 45.807781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269905, 36.878094, 45.728645>,  <35.139130, 36.682537, 45.681164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269905, 36.878094, 45.728645>,  <35.487865, 37.204025, 45.807781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269905, 36.878094, 45.728645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224518, -0.085542, 0.970708,
		-0.807881, 0.573361, -0.136330,
		-0.544904, -0.814825, -0.197838,
		35.106434, 36.633648, 45.669292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906155, 37.254005, 46.214302>,  <35.487865, 37.204025, 45.807781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906155, 37.254005, 46.214302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.933125, 36.861855, 46.140213>,  <34.949306, 36.626564, 46.095760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.933125, 36.861855, 46.140213>,  <34.906155, 37.254005, 46.214302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933125, 36.861855, 46.140213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100439, -0.191372, 0.976365,
		-0.992656, -0.047229, -0.111371,
		0.067426, -0.980381, -0.185223,
		34.953354, 36.567741, 46.084644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544621, 36.938587, 46.719139>,  <34.906155, 37.254005, 46.214302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544621, 36.938587, 46.719139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 36.628857, 46.594296>,  <34.896915, 36.443016, 46.519390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 36.628857, 46.594296>,  <34.544621, 36.938587, 46.719139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764805, 36.628857, 46.594296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080387, -0.421265, 0.903368,
		-0.830984, -0.472177, -0.294135,
		0.550458, -0.774329, -0.312107,
		34.929943, 36.396557, 46.500664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231319, 36.444347, 47.134003>,  <34.544621, 36.938587, 46.719139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231319, 36.444347, 47.134003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591694, 36.322708, 47.010166>,  <34.807919, 36.249725, 46.935863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591694, 36.322708, 47.010166>,  <34.231319, 36.444347, 47.134003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591694, 36.322708, 47.010166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139382, -0.472834, 0.870058,
		-0.410964, -0.827016, -0.383607,
		0.900934, -0.304094, -0.309588,
		34.861973, 36.231480, 46.917290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294533, 35.724087, 47.309025>,  <34.231319, 36.444347, 47.134003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294533, 35.724087, 47.309025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676006, 35.829926, 47.251781>,  <34.904888, 35.893429, 47.217438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676006, 35.829926, 47.251781>,  <34.294533, 35.724087, 47.309025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676006, 35.829926, 47.251781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245188, -0.408110, 0.879391,
		0.174284, -0.873747, -0.454084,
		0.953681, 0.264600, -0.143105,
		34.962112, 35.909306, 47.208851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791508, 35.108227, 47.505207>,  <34.294533, 35.724087, 47.309025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791508, 35.108227, 47.505207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016434, 35.437828, 47.532963>,  <35.151390, 35.635590, 47.549614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016434, 35.437828, 47.532963>,  <34.791508, 35.108227, 47.505207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016434, 35.437828, 47.532963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376304, -0.329705, 0.865847,
		0.736340, -0.460769, -0.495475,
		0.562315, 0.824007, 0.069386,
		35.185127, 35.685032, 47.553780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480068, 34.880554, 47.680130>,  <34.791508, 35.108227, 47.505207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480068, 34.880554, 47.680130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464428, 35.265118, 47.789059>,  <35.455044, 35.495857, 47.854416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464428, 35.265118, 47.789059>,  <35.480068, 34.880554, 47.680130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464428, 35.265118, 47.789059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311636, -0.247204, 0.917482,
		0.949397, 0.120735, -0.289945,
		-0.039097, 0.961412, 0.272320,
		35.452698, 35.553543, 47.870754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155239, 35.092682, 47.419895>,  <35.480068, 34.880554, 47.680130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155239, 35.092682, 47.419895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509785, 34.909603, 47.447803>,  <36.722511, 34.799755, 47.464550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.509785, 34.909603, 47.447803>,  <36.155239, 35.092682, 47.419895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509785, 34.909603, 47.447803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152401, -0.430731, -0.889519,
		0.437185, 0.777806, -0.451539,
		0.886365, -0.457700, 0.069771,
		36.775696, 34.772293, 47.468735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326378, 35.043365, 46.719009>,  <36.155239, 35.092682, 47.419895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326378, 35.043365, 46.719009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618500, 34.808552, 46.858749>,  <36.793774, 34.667664, 46.942593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618500, 34.808552, 46.858749>,  <36.326378, 35.043365, 46.719009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618500, 34.808552, 46.858749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241615, -0.256372, -0.935893,
		0.638967, 0.767894, -0.045392,
		0.730304, -0.587037, 0.349347,
		36.837589, 34.632439, 46.963554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944084, 35.272667, 46.329166>,  <36.326378, 35.043365, 46.719009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944084, 35.272667, 46.329166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976402, 34.903988, 46.480923>,  <36.995792, 34.682781, 46.571976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.976402, 34.903988, 46.480923>,  <36.944084, 35.272667, 46.329166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976402, 34.903988, 46.480923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188787, -0.359598, -0.913810,
		0.978689, 0.145454, 0.144952,
		0.080793, -0.921701, 0.379394,
		37.000641, 34.627476, 46.594742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612068, 35.071812, 46.045456>,  <36.944084, 35.272667, 46.329166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612068, 35.071812, 46.045456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383686, 34.754452, 46.129856>,  <37.246658, 34.564034, 46.180496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383686, 34.754452, 46.129856>,  <37.612068, 35.071812, 46.045456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383686, 34.754452, 46.129856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207841, -0.388326, -0.897778,
		0.794236, -0.468738, 0.386618,
		-0.570957, -0.793403, 0.211000,
		37.212399, 34.516430, 46.193157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010914, 34.597565, 45.847752>,  <37.612068, 35.071812, 46.045456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010914, 34.597565, 45.847752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670784, 34.388050, 45.868141>,  <37.466705, 34.262341, 45.880375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670784, 34.388050, 45.868141>,  <38.010914, 34.597565, 45.847752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670784, 34.388050, 45.868141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194605, -0.402962, -0.894288,
		0.488953, -0.750516, 0.444579,
		-0.850326, -0.523782, 0.050976,
		37.415688, 34.230915, 45.883434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238529, 34.083145, 45.493942>,  <38.010914, 34.597565, 45.847752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238529, 34.083145, 45.493942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.841877, 34.032570, 45.483444>,  <37.603886, 34.002224, 45.477146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.841877, 34.032570, 45.483444>,  <38.238529, 34.083145, 45.493942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841877, 34.032570, 45.483444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094842, -0.575201, -0.812495,
		0.087631, -0.808182, 0.582377,
		-0.991628, -0.126434, -0.026244,
		37.544388, 33.994640, 45.475571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136066, 33.362625, 45.311790>,  <38.238529, 34.083145, 45.493942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136066, 33.362625, 45.311790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801243, 33.569763, 45.241180>,  <37.600349, 33.694046, 45.198814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801243, 33.569763, 45.241180>,  <38.136066, 33.362625, 45.311790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801243, 33.569763, 45.241180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009513, -0.336383, -0.941677,
		-0.547024, -0.786564, 0.286500,
		-0.837063, 0.517846, -0.176526,
		37.550125, 33.725117, 45.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784523, 32.951996, 44.890381>,  <38.136066, 33.362625, 45.311790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784523, 32.951996, 44.890381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612949, 33.310528, 44.845467>,  <37.510006, 33.525646, 44.818520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.612949, 33.310528, 44.845467>,  <37.784523, 32.951996, 44.890381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612949, 33.310528, 44.845467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047975, -0.101520, -0.993676,
		-0.902059, -0.431612, 0.000544,
		-0.428938, 0.896329, -0.112283,
		37.484268, 33.579426, 44.811783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212746, 32.870281, 44.438244>,  <37.784523, 32.951996, 44.890381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212746, 32.870281, 44.438244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326530, 33.252953, 44.413452>,  <37.394802, 33.482555, 44.398579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326530, 33.252953, 44.413452>,  <37.212746, 32.870281, 44.438244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326530, 33.252953, 44.413452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066338, -0.044851, -0.996789,
		-0.956389, 0.287661, 0.050706,
		0.284463, 0.956682, -0.061978,
		37.411869, 33.539955, 44.394859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647350, 33.257343, 44.005787>,  <37.212746, 32.870281, 44.438244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647350, 33.257343, 44.005787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971077, 33.492210, 44.011871>,  <37.165314, 33.633133, 44.015522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.971077, 33.492210, 44.011871>,  <36.647350, 33.257343, 44.005787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971077, 33.492210, 44.011871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041937, 0.083592, -0.995617,
		-0.585868, 0.805136, 0.092277,
		0.809321, 0.587170, 0.015209,
		37.213875, 33.668362, 44.016434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462193, 33.912010, 43.681816>,  <36.647350, 33.257343, 44.005787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462193, 33.912010, 43.681816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855167, 33.867043, 43.622257>,  <37.090954, 33.840061, 43.586521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855167, 33.867043, 43.622257>,  <36.462193, 33.912010, 43.681816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855167, 33.867043, 43.622257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127802, 0.175922, -0.976073,
		0.135926, 0.977964, 0.158465,
		0.982441, -0.112422, -0.148898,
		37.149899, 33.833317, 43.577587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608459, 34.394775, 43.188156>,  <36.462193, 33.912010, 43.681816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608459, 34.394775, 43.188156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929886, 34.160156, 43.147678>,  <37.122742, 34.019386, 43.123394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.929886, 34.160156, 43.147678>,  <36.608459, 34.394775, 43.188156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929886, 34.160156, 43.147678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015903, 0.191107, -0.981440,
		0.594998, 0.787047, 0.162896,
		0.803570, -0.586545, -0.101192,
		37.170956, 33.984192, 43.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057789, 34.633736, 42.656578>,  <36.608459, 34.394775, 43.188156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057789, 34.633736, 42.656578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184444, 34.254742, 42.674507>,  <37.260437, 34.027344, 42.685265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184444, 34.254742, 42.674507>,  <37.057789, 34.633736, 42.656578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184444, 34.254742, 42.674507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096068, -0.014977, -0.995262,
		0.943667, 0.319449, 0.086281,
		0.316643, -0.947485, 0.044822,
		37.279438, 33.970497, 42.687954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688328, 34.575199, 42.169029>,  <37.057789, 34.633736, 42.656578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688328, 34.575199, 42.169029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.550781, 34.206581, 42.241146>,  <37.468254, 33.985409, 42.284416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.550781, 34.206581, 42.241146>,  <37.688328, 34.575199, 42.169029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550781, 34.206581, 42.241146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033759, -0.204005, -0.978388,
		0.938412, -0.330347, 0.101261,
		-0.343866, -0.921549, 0.180288,
		37.447620, 33.930115, 42.295231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.183025, 43.909138, 37.284935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879869, 43.969685, 37.031101>,  <25.697975, 44.006012, 36.878803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879869, 43.969685, 37.031101>,  <26.183025, 43.909138, 37.284935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879869, 43.969685, 37.031101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084909, -0.941552, -0.325992,
		-0.646833, -0.300948, 0.700741,
		-0.757890, 0.151363, -0.634580,
		25.652502, 44.015095, 36.840729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653332, 43.409077, 37.380112>,  <26.183025, 43.909138, 37.284935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653332, 43.409077, 37.380112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.685316, 43.546371, 37.005775>,  <25.704506, 43.628750, 36.781174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.685316, 43.546371, 37.005775>,  <25.653332, 43.409077, 37.380112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685316, 43.546371, 37.005775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359555, -0.885570, -0.294083,
		-0.929692, -0.312969, -0.194226,
		0.079962, 0.343242, -0.935837,
		25.709305, 43.649345, 36.725025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121370, 43.055725, 36.907295>,  <25.653332, 43.409077, 37.380112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121370, 43.055725, 36.907295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434050, 43.182484, 36.692436>,  <25.621656, 43.258537, 36.563522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.434050, 43.182484, 36.692436>,  <25.121370, 43.055725, 36.907295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434050, 43.182484, 36.692436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250197, -0.948283, -0.195347,
		-0.571272, 0.018310, -0.820557,
		0.781697, 0.316897, -0.537146,
		25.668558, 43.277554, 36.531292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038391, 42.613380, 36.349529>,  <25.121370, 43.055725, 36.907295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038391, 42.613380, 36.349529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409531, 42.757019, 36.309227>,  <25.632214, 42.843201, 36.285046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.409531, 42.757019, 36.309227>,  <25.038391, 42.613380, 36.349529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409531, 42.757019, 36.309227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309652, -0.892281, -0.328557,
		-0.207882, 0.273653, -0.939095,
		0.927847, 0.359094, -0.100752,
		25.687885, 42.864746, 36.279003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282597, 42.524525, 35.604313>,  <25.038391, 42.613380, 36.349529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282597, 42.524525, 35.604313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616709, 42.545879, 35.823204>,  <25.817175, 42.558693, 35.954540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.616709, 42.545879, 35.823204>,  <25.282597, 42.524525, 35.604313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616709, 42.545879, 35.823204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230348, -0.937697, -0.260123,
		0.499248, 0.343329, -0.795536,
		0.835279, 0.053384, 0.547228,
		25.867292, 42.561893, 35.987373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715042, 42.110245, 35.308170>,  <25.282597, 42.524525, 35.604313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715042, 42.110245, 35.308170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949060, 42.165485, 35.627831>,  <26.089472, 42.198631, 35.819626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949060, 42.165485, 35.627831>,  <25.715042, 42.110245, 35.308170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949060, 42.165485, 35.627831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329260, -0.940976, -0.078432,
		0.741153, 0.309016, -0.595987,
		0.585047, 0.138104, 0.799154,
		26.124575, 42.206917, 35.867577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436049, 41.945778, 35.242630>,  <25.715042, 42.110245, 35.308170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436049, 41.945778, 35.242630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438889, 41.899899, 35.639980>,  <26.440594, 41.872372, 35.878391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.438889, 41.899899, 35.639980>,  <26.436049, 41.945778, 35.242630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438889, 41.899899, 35.639980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165463, -0.979572, -0.114285,
		0.986190, 0.165178, 0.012021,
		0.007102, -0.114696, 0.993375,
		26.441019, 41.865490, 35.937992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033848, 41.493187, 35.402000>,  <26.436049, 41.945778, 35.242630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033848, 41.493187, 35.402000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.763750, 41.478146, 35.696655>,  <26.601692, 41.469120, 35.873447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.763750, 41.478146, 35.696655>,  <27.033848, 41.493187, 35.402000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763750, 41.478146, 35.696655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111221, -0.992472, 0.051287,
		0.729162, 0.116561, 0.674342,
		-0.675243, -0.037604, 0.736636,
		26.561176, 41.466866, 35.917645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335131, 40.979042, 35.850025>,  <27.033848, 41.493187, 35.402000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335131, 40.979042, 35.850025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944756, 41.020691, 35.926655>,  <26.710529, 41.045681, 35.972633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944756, 41.020691, 35.926655>,  <27.335131, 40.979042, 35.850025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944756, 41.020691, 35.926655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063411, -0.976170, 0.207538,
		0.208616, 0.190396, 0.959286,
		-0.975940, 0.104125, 0.191571,
		26.651974, 41.051929, 35.984127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268787, 40.399559, 36.150196>,  <27.335131, 40.979042, 35.850025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268787, 40.399559, 36.150196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889080, 40.513832, 36.097614>,  <26.661257, 40.582394, 36.066067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889080, 40.513832, 36.097614>,  <27.268787, 40.399559, 36.150196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889080, 40.513832, 36.097614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304695, -0.938962, 0.159724,
		-0.077798, 0.191673, 0.978371,
		-0.949267, 0.285679, -0.131451,
		26.604300, 40.599537, 36.058178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910252, 40.191200, 36.702782>,  <27.268787, 40.399559, 36.150196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910252, 40.191200, 36.702782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631395, 40.211372, 36.416718>,  <26.464081, 40.223476, 36.245079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631395, 40.211372, 36.416718>,  <26.910252, 40.191200, 36.702782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631395, 40.211372, 36.416718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224213, -0.962822, 0.150671,
		-0.680971, 0.265387, 0.682531,
		-0.697142, 0.050429, -0.715157,
		26.422253, 40.226501, 36.202171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464851, 39.726254, 36.900074>,  <26.910252, 40.191200, 36.702782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464851, 39.726254, 36.900074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333927, 39.774757, 36.525234>,  <26.255373, 39.803860, 36.300331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.333927, 39.774757, 36.525234>,  <26.464851, 39.726254, 36.900074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333927, 39.774757, 36.525234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347542, -0.937665, 0.000061,
		-0.878682, 0.325703, 0.349050,
		-0.327312, 0.121256, -0.937104,
		26.235733, 39.811134, 36.244102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795753, 39.396370, 36.845894>,  <26.464851, 39.726254, 36.900074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795753, 39.396370, 36.845894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917894, 39.403194, 36.465057>,  <25.991179, 39.407288, 36.236557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917894, 39.403194, 36.465057>,  <25.795753, 39.396370, 36.845894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917894, 39.403194, 36.465057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278788, -0.954427, -0.106515,
		-0.910515, 0.297955, -0.286678,
		0.305350, 0.017061, -0.952087,
		26.009499, 39.408314, 36.179432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246008, 39.148163, 36.339504>,  <25.795753, 39.396370, 36.845894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246008, 39.148163, 36.339504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.597996, 39.088146, 36.159222>,  <25.809189, 39.052135, 36.051052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.597996, 39.088146, 36.159222>,  <25.246008, 39.148163, 36.339504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597996, 39.088146, 36.159222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318327, -0.890508, -0.325060,
		-0.352589, 0.429516, -0.831383,
		0.879971, -0.150039, -0.450710,
		25.861986, 39.043133, 36.024010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024357, 38.934803, 35.665493>,  <25.246008, 39.148163, 36.339504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024357, 38.934803, 35.665493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.411142, 38.832840, 35.666000>,  <25.643213, 38.771664, 35.666306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.411142, 38.832840, 35.666000>,  <25.024357, 38.934803, 35.665493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411142, 38.832840, 35.666000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243742, -0.926048, -0.288141,
		0.074624, 0.278313, -0.957587,
		0.966965, -0.254907, 0.001268,
		25.701231, 38.756367, 35.666382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073734, 38.608173, 35.034012>,  <25.024357, 38.934803, 35.665493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073734, 38.608173, 35.034012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.376425, 38.496525, 35.270470>,  <25.558039, 38.429535, 35.412346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.376425, 38.496525, 35.270470>,  <25.073734, 38.608173, 35.034012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376425, 38.496525, 35.270470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257179, -0.958459, -0.123347,
		0.601017, -0.058690, -0.797078,
		0.756728, -0.279125, 0.591145,
		25.603443, 38.412788, 35.447811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.414541, 38.072746, 34.704876>,  <25.073734, 38.608173, 35.034012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.414541, 38.072746, 34.704876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.555313, 37.987228, 35.069389>,  <25.639776, 37.935917, 35.288097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.555313, 37.987228, 35.069389>,  <25.414541, 38.072746, 34.704876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555313, 37.987228, 35.069389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249846, -0.959699, -0.128667,
		0.902065, -0.182398, -0.391164,
		0.351930, -0.213797, 0.911282,
		25.660892, 37.923088, 35.342773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985313, 37.567104, 34.680248>,  <25.414541, 38.072746, 34.704876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985313, 37.567104, 34.680248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795219, 37.552986, 35.031910>,  <25.681162, 37.544514, 35.242905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795219, 37.552986, 35.031910>,  <25.985313, 37.567104, 34.680248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795219, 37.552986, 35.031910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052100, -0.996313, -0.068163,
		0.878315, -0.078197, 0.471645,
		-0.475236, -0.035296, 0.879150,
		25.652649, 37.542397, 35.295654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274803, 36.992367, 35.136967>,  <25.985313, 37.567104, 34.680248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274803, 36.992367, 35.136967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.912867, 37.065056, 35.290974>,  <25.695705, 37.108669, 35.383377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.912867, 37.065056, 35.290974>,  <26.274803, 36.992367, 35.136967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912867, 37.065056, 35.290974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155744, -0.982932, 0.097916,
		0.396241, 0.028633, 0.917700,
		-0.904840, 0.181725, 0.385019,
		25.641415, 37.119572, 35.406479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263166, 36.570175, 35.751606>,  <26.274803, 36.992367, 35.136967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263166, 36.570175, 35.751606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.881247, 36.643150, 35.657738>,  <25.652094, 36.686935, 35.601418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.881247, 36.643150, 35.657738>,  <26.263166, 36.570175, 35.751606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881247, 36.643150, 35.657738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202190, -0.977327, 0.062861,
		-0.217883, 0.107468, 0.970040,
		-0.954802, 0.182436, -0.234672,
		25.594807, 36.697880, 35.587337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997927, 36.599781, 36.173840>,  <26.263166, 36.570175, 35.751606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997927, 36.599781, 36.173840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370876, 36.562778, 36.034054>,  <27.594646, 36.540577, 35.950184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370876, 36.562778, 36.034054>,  <26.997927, 36.599781, 36.173840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370876, 36.562778, 36.034054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330161, 0.611601, 0.718984,
		0.147221, -0.785740, 0.600783,
		0.932373, -0.092505, -0.349461,
		27.650589, 36.535027, 35.929214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371979, 36.312813, 36.698433>,  <26.997927, 36.599781, 36.173840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371979, 36.312813, 36.698433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663433, 36.489716, 36.489246>,  <27.838306, 36.595856, 36.363735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.663433, 36.489716, 36.489246>,  <27.371979, 36.312813, 36.698433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663433, 36.489716, 36.489246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236187, 0.554480, 0.797977,
		0.642890, -0.704952, 0.299558,
		0.728635, 0.442260, -0.522970,
		27.882025, 36.622395, 36.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988762, 36.231556, 37.104279>,  <27.371979, 36.312813, 36.698433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988762, 36.231556, 37.104279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048740, 36.538921, 36.855423>,  <28.084728, 36.723339, 36.706108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048740, 36.538921, 36.855423>,  <27.988762, 36.231556, 37.104279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048740, 36.538921, 36.855423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140422, 0.606326, 0.782720,
		0.978671, -0.204729, -0.016985,
		0.149947, 0.768410, -0.622142,
		28.093725, 36.769444, 36.668781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558939, 36.581581, 37.362068>,  <27.988762, 36.231556, 37.104279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558939, 36.581581, 37.362068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402750, 36.840511, 37.100227>,  <28.309036, 36.995869, 36.943123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402750, 36.840511, 37.100227>,  <28.558939, 36.581581, 37.362068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402750, 36.840511, 37.100227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099865, 0.736638, 0.668873,
		0.915183, 0.195803, -0.352280,
		-0.390471, 0.647322, -0.654605,
		28.285608, 37.034706, 36.903847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985796, 37.183163, 37.349754>,  <28.558939, 36.581581, 37.362068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985796, 37.183163, 37.349754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636820, 37.332436, 37.223522>,  <28.427435, 37.421997, 37.147785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636820, 37.332436, 37.223522>,  <28.985796, 37.183163, 37.349754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636820, 37.332436, 37.223522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001171, 0.644116, 0.764927,
		0.488723, 0.667721, -0.561515,
		-0.872438, 0.373180, -0.315576,
		28.375088, 37.444389, 37.128849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123814, 37.934715, 37.398331>,  <28.985796, 37.183163, 37.349754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123814, 37.934715, 37.398331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727280, 37.918087, 37.348484>,  <28.489359, 37.908112, 37.318577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727280, 37.918087, 37.348484>,  <29.123814, 37.934715, 37.398331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727280, 37.918087, 37.348484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102784, 0.836162, 0.538766,
		0.081802, 0.546905, -0.833189,
		-0.991334, -0.041566, -0.124612,
		28.429880, 37.905617, 37.311100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859655, 38.603802, 37.191578>,  <29.123814, 37.934715, 37.398331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859655, 38.603802, 37.191578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557003, 38.405716, 37.362350>,  <28.375412, 38.286865, 37.464813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557003, 38.405716, 37.362350>,  <28.859655, 38.603802, 37.191578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557003, 38.405716, 37.362350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270358, 0.831479, 0.485334,
		-0.595330, 0.251794, -0.763009,
		-0.756630, -0.495219, 0.426930,
		28.330013, 38.257149, 37.490429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291624, 39.034801, 37.115849>,  <28.859655, 38.603802, 37.191578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291624, 39.034801, 37.115849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182032, 38.785015, 37.408417>,  <28.116276, 38.635143, 37.583958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182032, 38.785015, 37.408417>,  <28.291624, 39.034801, 37.115849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182032, 38.785015, 37.408417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341088, 0.774176, 0.533208,
		-0.899219, -0.103390, -0.425107,
		-0.273980, -0.624469, 0.731419,
		28.099838, 38.597675, 37.627842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651585, 39.075207, 37.143543>,  <28.291624, 39.034801, 37.115849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651585, 39.075207, 37.143543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723553, 38.912128, 37.501629>,  <27.766733, 38.814281, 37.716480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723553, 38.912128, 37.501629>,  <27.651585, 39.075207, 37.143543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723553, 38.912128, 37.501629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444961, 0.777908, 0.443698,
		-0.877290, -0.478167, -0.041447,
		0.179920, -0.407694, 0.895217,
		27.777529, 38.789822, 37.770195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093241, 39.160679, 37.501152>,  <27.651585, 39.075207, 37.143543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093241, 39.160679, 37.501152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375418, 39.120304, 37.781769>,  <27.544724, 39.096081, 37.950138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.375418, 39.120304, 37.781769>,  <27.093241, 39.160679, 37.501152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375418, 39.120304, 37.781769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441149, 0.712179, 0.546066,
		-0.554743, -0.694703, 0.457873,
		0.705441, -0.100936, 0.701544,
		27.587049, 39.090023, 37.992233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628242, 39.231220, 38.111290>,  <27.093241, 39.160679, 37.501152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628242, 39.231220, 38.111290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013498, 39.288860, 38.202148>,  <27.244652, 39.323444, 38.256664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.013498, 39.288860, 38.202148>,  <26.628242, 39.231220, 38.111290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013498, 39.288860, 38.202148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232745, 0.869776, 0.435109,
		-0.134873, -0.471939, 0.871253,
		0.963140, 0.144096, 0.227151,
		27.302441, 39.332088, 38.270294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582203, 39.410889, 38.777740>,  <26.628242, 39.231220, 38.111290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582203, 39.410889, 38.777740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942600, 39.545025, 38.667641>,  <27.158838, 39.625507, 38.601582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942600, 39.545025, 38.667641>,  <26.582203, 39.410889, 38.777740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942600, 39.545025, 38.667641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165226, 0.851871, 0.497007,
		0.401139, -0.402322, 0.822936,
		0.900992, 0.335340, -0.275245,
		27.212898, 39.645626, 38.585068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853935, 39.714909, 39.432610>,  <26.582203, 39.410889, 38.777740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853935, 39.714909, 39.432610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057081, 39.870441, 39.125134>,  <27.178968, 39.963760, 38.940647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057081, 39.870441, 39.125134>,  <26.853935, 39.714909, 39.432610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057081, 39.870441, 39.125134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165774, 0.919771, 0.355726,
		0.845335, -0.053232, 0.531578,
		0.507866, 0.388830, -0.768690,
		27.209440, 39.987091, 38.894527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296570, 40.137577, 39.640877>,  <26.853935, 39.714909, 39.432610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296570, 40.137577, 39.640877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274586, 40.257820, 39.260014>,  <27.261396, 40.329967, 39.031494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274586, 40.257820, 39.260014>,  <27.296570, 40.137577, 39.640877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274586, 40.257820, 39.260014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184693, 0.934088, 0.305563,
		0.981258, 0.192651, 0.004184,
		-0.054958, 0.300609, -0.952163,
		27.258099, 40.348003, 38.974365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542912, 40.772984, 39.673454>,  <27.296570, 40.137577, 39.640877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542912, 40.772984, 39.673454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335667, 40.796207, 39.332119>,  <27.211319, 40.810143, 39.127316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335667, 40.796207, 39.332119>,  <27.542912, 40.772984, 39.673454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335667, 40.796207, 39.332119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273782, 0.933943, 0.229768,
		0.810311, 0.352675, -0.467993,
		-0.518112, 0.058055, -0.853340,
		27.180233, 40.813625, 39.076118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671837, 41.457798, 39.440922>,  <27.542912, 40.772984, 39.673454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671837, 41.457798, 39.440922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325581, 41.348953, 39.272816>,  <27.117826, 41.283646, 39.171951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325581, 41.348953, 39.272816>,  <27.671837, 41.457798, 39.440922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325581, 41.348953, 39.272816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385569, 0.897788, 0.212868,
		0.319385, 0.346308, -0.882079,
		-0.865638, -0.272115, -0.420265,
		27.065889, 41.267319, 39.146736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381256, 42.017010, 39.116005>,  <27.671837, 41.457798, 39.440922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381256, 42.017010, 39.116005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062773, 41.779491, 39.162407>,  <26.871683, 41.636978, 39.190247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062773, 41.779491, 39.162407>,  <27.381256, 42.017010, 39.116005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062773, 41.779491, 39.162407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548462, 0.789329, 0.275951,
		-0.255424, 0.156091, -0.954146,
		-0.796208, -0.593797, 0.116004,
		26.823910, 41.601353, 39.197208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789471, 42.375122, 38.667408>,  <27.381256, 42.017010, 39.116005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789471, 42.375122, 38.667408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645287, 42.119450, 38.939148>,  <26.558777, 41.966045, 39.102192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.645287, 42.119450, 38.939148>,  <26.789471, 42.375122, 38.667408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645287, 42.119450, 38.939148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502835, 0.746579, 0.435634,
		-0.785638, -0.184573, -0.590514,
		-0.360459, -0.639181, 0.679350,
		26.537149, 41.927696, 39.142952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056908, 42.454807, 38.692432>,  <26.789471, 42.375122, 38.667408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056908, 42.454807, 38.692432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120588, 42.258736, 39.035217>,  <26.158796, 42.141094, 39.240887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.120588, 42.258736, 39.035217>,  <26.056908, 42.454807, 38.692432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120588, 42.258736, 39.035217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599235, 0.641865, 0.478463,
		-0.784584, -0.589693, -0.191546,
		0.159200, -0.490175, 0.856962,
		26.168348, 42.111683, 39.292305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474401, 42.405704, 39.021156>,  <26.056908, 42.454807, 38.692432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474401, 42.405704, 39.021156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719503, 42.328495, 39.327690>,  <25.866564, 42.282169, 39.511612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719503, 42.328495, 39.327690>,  <25.474401, 42.405704, 39.021156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719503, 42.328495, 39.327690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563637, 0.572965, 0.594999,
		-0.553936, -0.796524, 0.242289,
		0.612755, -0.193028, 0.766337,
		25.903330, 42.270588, 39.557590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066849, 42.230865, 39.566875>,  <25.474401, 42.405704, 39.021156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066849, 42.230865, 39.566875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.404324, 42.390774, 39.710194>,  <25.606808, 42.486717, 39.796185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.404324, 42.390774, 39.710194>,  <25.066849, 42.230865, 39.566875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404324, 42.390774, 39.710194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533048, 0.544691, 0.647434,
		0.063664, -0.737221, 0.672646,
		0.843686, 0.399770, 0.358297,
		25.657429, 42.510704, 39.817684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835934, 42.341255, 40.188248>,  <25.066849, 42.230865, 39.566875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835934, 42.341255, 40.188248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182238, 42.541042, 40.200871>,  <25.390020, 42.660915, 40.208443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.182238, 42.541042, 40.200871>,  <24.835934, 42.341255, 40.188248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182238, 42.541042, 40.200871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366834, 0.590443, 0.718895,
		0.340432, -0.633965, 0.694402,
		0.865759, 0.499465, 0.031555,
		25.441965, 42.690884, 40.210339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.393940, 30.726400, 46.556629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021107, 30.838907, 46.647938>,  <38.797405, 30.906412, 46.702724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021107, 30.838907, 46.647938>,  <39.393940, 30.726400, 46.556629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021107, 30.838907, 46.647938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315229, 0.319319, 0.893681,
		0.178471, 0.904944, -0.386295,
		-0.932083, 0.281268, 0.228275,
		38.741482, 30.923288, 46.716419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508556, 31.369385, 46.843872>,  <39.393940, 30.726400, 46.556629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508556, 31.369385, 46.843872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155758, 31.233057, 46.974056>,  <38.944080, 31.151260, 47.052166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.155758, 31.233057, 46.974056>,  <39.508556, 31.369385, 46.843872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155758, 31.233057, 46.974056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281846, 0.172010, 0.943915,
		-0.377686, 0.924260, -0.055654,
		-0.881996, -0.340818, 0.325464,
		38.891159, 31.130812, 47.071697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365086, 31.762211, 47.483349>,  <39.508556, 31.369385, 46.843872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365086, 31.762211, 47.483349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127129, 31.442503, 47.517460>,  <38.984356, 31.250679, 47.537926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.127129, 31.442503, 47.517460>,  <39.365086, 31.762211, 47.483349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127129, 31.442503, 47.517460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113911, 0.021198, 0.993265,
		-0.795694, 0.600598, 0.078435,
		-0.594890, -0.799270, 0.085282,
		38.948662, 31.202723, 47.543045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811436, 31.841190, 48.023838>,  <39.365086, 31.762211, 47.483349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811436, 31.841190, 48.023838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852913, 31.445665, 47.980949>,  <38.877800, 31.208351, 47.955215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852913, 31.445665, 47.980949>,  <38.811436, 31.841190, 48.023838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852913, 31.445665, 47.980949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029207, -0.110785, 0.993415,
		-0.994181, -0.099875, -0.040368,
		0.103689, -0.988813, -0.107223,
		38.884018, 31.149021, 47.948784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303947, 31.564611, 48.376747>,  <38.811436, 31.841190, 48.023838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303947, 31.564611, 48.376747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570389, 31.266319, 48.371265>,  <38.730255, 31.087343, 48.367977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570389, 31.266319, 48.371265>,  <38.303947, 31.564611, 48.376747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570389, 31.266319, 48.371265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022795, 0.001987, 0.999738,
		-0.745510, -0.666243, 0.018323,
		0.666105, -0.745732, -0.013706,
		38.770222, 31.042601, 48.367153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130650, 31.098011, 48.876278>,  <38.303947, 31.564611, 48.376747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130650, 31.098011, 48.876278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513615, 31.012526, 48.798630>,  <38.743393, 30.961235, 48.752041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513615, 31.012526, 48.798630>,  <38.130650, 31.098011, 48.876278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513615, 31.012526, 48.798630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171048, -0.121782, 0.977707,
		-0.232589, -0.969276, -0.080040,
		0.957416, -0.213713, -0.194118,
		38.800838, 30.948412, 48.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313419, 30.556110, 49.228973>,  <38.130650, 31.098011, 48.876278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313419, 30.556110, 49.228973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680702, 30.704258, 49.172810>,  <38.901073, 30.793146, 49.139111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680702, 30.704258, 49.172810>,  <38.313419, 30.556110, 49.228973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680702, 30.704258, 49.172810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215800, -0.170512, 0.961434,
		0.332145, -0.913100, -0.236492,
		0.918210, 0.370371, -0.140412,
		38.956165, 30.815369, 49.130688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747360, 30.175308, 49.684784>,  <38.313419, 30.556110, 49.228973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747360, 30.175308, 49.684784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965443, 30.504942, 49.623295>,  <39.096294, 30.702723, 49.586399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965443, 30.504942, 49.623295>,  <38.747360, 30.175308, 49.684784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965443, 30.504942, 49.623295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266718, 0.003324, 0.963769,
		0.794738, -0.566456, -0.217986,
		0.545209, 0.824085, -0.153726,
		39.129005, 30.752167, 49.577179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423939, 30.053169, 50.068161>,  <38.747360, 30.175308, 49.684784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423939, 30.053169, 50.068161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392754, 30.447107, 50.006195>,  <39.374043, 30.683470, 49.969013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392754, 30.447107, 50.006195>,  <39.423939, 30.053169, 50.068161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392754, 30.447107, 50.006195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347672, 0.172492, 0.921613,
		0.934370, 0.017988, -0.355851,
		-0.077959, 0.984847, -0.154917,
		39.369366, 30.742561, 49.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962257, 30.310427, 50.388733>,  <39.423939, 30.053169, 50.068161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962257, 30.310427, 50.388733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742653, 30.640913, 50.338200>,  <39.610889, 30.839205, 50.307880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742653, 30.640913, 50.338200>,  <39.962257, 30.310427, 50.388733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742653, 30.640913, 50.338200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246790, 0.304656, 0.919935,
		0.798553, 0.473872, -0.371159,
		-0.549007, 0.826215, -0.126337,
		39.577950, 30.888777, 50.300297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386467, 30.948448, 50.640800>,  <39.962257, 30.310427, 50.388733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386467, 30.948448, 50.640800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999359, 31.047960, 50.656437>,  <39.767094, 31.107668, 50.665817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999359, 31.047960, 50.656437>,  <40.386467, 30.948448, 50.640800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999359, 31.047960, 50.656437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173655, 0.546842, 0.819029,
		0.182383, 0.799420, -0.572420,
		-0.967771, 0.248780, 0.039088,
		39.709026, 31.122595, 50.668163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389393, 31.682817, 51.074699>,  <40.386467, 30.948448, 50.640800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389393, 31.682817, 51.074699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021763, 31.525436, 51.083645>,  <39.801186, 31.431007, 51.089012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.021763, 31.525436, 51.083645>,  <40.389393, 31.682817, 51.074699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021763, 31.525436, 51.083645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146085, 0.392847, 0.907927,
		-0.366012, 0.831184, -0.418532,
		-0.919073, -0.393453, 0.022363,
		39.746040, 31.407400, 51.090355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006954, 32.120514, 51.542324>,  <40.389393, 31.682817, 51.074699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006954, 32.120514, 51.542324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716492, 31.856506, 51.465317>,  <39.542213, 31.698101, 51.419113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716492, 31.856506, 51.465317>,  <40.006954, 32.120514, 51.542324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716492, 31.856506, 51.465317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462140, 0.261256, 0.847450,
		-0.509036, 0.704357, -0.494736,
		-0.726160, -0.660020, -0.192523,
		39.498642, 31.658501, 51.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249657, 32.366367, 51.534111>,  <40.006954, 32.120514, 51.542324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249657, 32.366367, 51.534111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214375, 31.988758, 51.661255>,  <39.193207, 31.762192, 51.737541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214375, 31.988758, 51.661255>,  <39.249657, 32.366367, 51.534111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214375, 31.988758, 51.661255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512113, 0.316677, 0.798408,
		-0.854378, -0.092360, -0.511379,
		-0.088201, -0.944026, 0.317860,
		39.187916, 31.705551, 51.756615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076740, 32.329628, 52.317272>,  <39.249657, 32.366367, 51.534111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076740, 32.329628, 52.317272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978848, 32.686016, 52.470257>,  <38.920113, 32.899849, 52.562046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978848, 32.686016, 52.470257>,  <39.076740, 32.329628, 52.317272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978848, 32.686016, 52.470257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430652, 0.253522, -0.866179,
		-0.868703, -0.376690, 0.321653,
		-0.244735, 0.890972, 0.382458,
		38.905426, 32.953308, 52.584995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323143, 32.339455, 52.217857>,  <39.076740, 32.329628, 52.317272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323143, 32.339455, 52.217857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465843, 32.711788, 52.249542>,  <38.551464, 32.935188, 52.268551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465843, 32.711788, 52.249542>,  <38.323143, 32.339455, 52.217857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465843, 32.711788, 52.249542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427250, 0.237970, -0.872254,
		-0.830776, 0.277332, 0.482596,
		0.356748, 0.930837, 0.079210,
		38.572868, 32.991039, 52.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880367, 32.678810, 51.920807>,  <38.323143, 32.339455, 52.217857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880367, 32.678810, 51.920807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176956, 32.947151, 51.915596>,  <38.354908, 33.108158, 51.912468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176956, 32.947151, 51.915596>,  <37.880367, 32.678810, 51.920807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176956, 32.947151, 51.915596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295457, 0.308998, -0.904005,
		-0.602432, 0.674144, 0.427323,
		0.741472, 0.670857, -0.013030,
		38.399399, 33.148407, 51.911686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553097, 33.289986, 51.768616>,  <37.880367, 32.678810, 51.920807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553097, 33.289986, 51.768616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932003, 33.346344, 51.653488>,  <38.159348, 33.380157, 51.584412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932003, 33.346344, 51.653488>,  <37.553097, 33.289986, 51.768616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932003, 33.346344, 51.653488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320156, 0.454747, -0.831086,
		0.013790, 0.879405, 0.475874,
		0.947264, 0.140893, -0.287818,
		38.216183, 33.388611, 51.567142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608143, 34.013062, 51.602119>,  <37.553097, 33.289986, 51.768616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608143, 34.013062, 51.602119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928196, 33.852314, 51.423996>,  <38.120228, 33.755867, 51.317123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928196, 33.852314, 51.423996>,  <37.608143, 34.013062, 51.602119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928196, 33.852314, 51.423996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346032, 0.297158, -0.889921,
		0.489955, 0.866142, 0.098706,
		0.800129, -0.401866, -0.445307,
		38.168236, 33.731754, 51.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898911, 34.533272, 51.223927>,  <37.608143, 34.013062, 51.602119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898911, 34.533272, 51.223927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026726, 34.191563, 51.059917>,  <38.103413, 33.986538, 50.961510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026726, 34.191563, 51.059917>,  <37.898911, 34.533272, 51.223927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026726, 34.191563, 51.059917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212140, 0.357235, -0.909604,
		0.923522, 0.377634, -0.067076,
		0.319536, -0.854269, -0.410026,
		38.122585, 33.935284, 50.936909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345417, 34.741417, 50.772896>,  <37.898911, 34.533272, 51.223927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345417, 34.741417, 50.772896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.264549, 34.374687, 50.635162>,  <38.216026, 34.154652, 50.552525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.264549, 34.374687, 50.635162>,  <38.345417, 34.741417, 50.772896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264549, 34.374687, 50.635162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143514, 0.375531, -0.915631,
		0.968777, -0.135700, -0.207499,
		-0.202174, -0.916822, -0.344331,
		38.203896, 34.099640, 50.531864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651859, 34.794014, 50.122116>,  <38.345417, 34.741417, 50.772896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651859, 34.794014, 50.122116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383785, 34.497139, 50.121468>,  <38.222942, 34.319012, 50.121078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.383785, 34.497139, 50.121468>,  <38.651859, 34.794014, 50.122116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383785, 34.497139, 50.121468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296276, 0.269533, -0.916282,
		0.680494, -0.613599, -0.400531,
		-0.670185, -0.742192, -0.001621,
		38.182728, 34.274483, 50.120983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703220, 34.530891, 49.444050>,  <38.651859, 34.794014, 50.122116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703220, 34.530891, 49.444050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351902, 34.399929, 49.583424>,  <38.141109, 34.321350, 49.667046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351902, 34.399929, 49.583424>,  <38.703220, 34.530891, 49.444050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351902, 34.399929, 49.583424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377903, 0.028936, -0.925393,
		0.292898, -0.944440, -0.149143,
		-0.878294, -0.327407, 0.348431,
		38.088413, 34.301708, 49.687954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492809, 34.204136, 48.829414>,  <38.703220, 34.530891, 49.444050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492809, 34.204136, 48.829414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163738, 34.219467, 49.056297>,  <37.966293, 34.228668, 49.192429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163738, 34.219467, 49.056297>,  <38.492809, 34.204136, 48.829414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163738, 34.219467, 49.056297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553969, 0.170117, -0.814972,
		-0.127730, -0.984678, -0.118718,
		-0.822681, 0.038331, 0.567210,
		37.916935, 34.230968, 49.226460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980469, 33.644844, 48.658253>,  <38.492809, 34.204136, 48.829414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980469, 33.644844, 48.658253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788010, 33.960407, 48.811153>,  <37.672535, 34.149746, 48.902893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.788010, 33.960407, 48.811153>,  <37.980469, 33.644844, 48.658253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788010, 33.960407, 48.811153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529798, 0.085726, -0.843781,
		-0.698436, -0.608500, 0.376716,
		-0.481146, 0.788910, 0.382256,
		37.643665, 34.197079, 48.925831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306679, 33.492428, 48.460609>,  <37.980469, 33.644844, 48.658253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306679, 33.492428, 48.460609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334267, 33.883793, 48.538528>,  <37.350819, 34.118614, 48.585281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.334267, 33.883793, 48.538528>,  <37.306679, 33.492428, 48.460609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334267, 33.883793, 48.538528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463637, 0.204335, -0.862142,
		-0.883337, -0.030852, 0.467722,
		0.068973, 0.978415, 0.194801,
		37.354958, 34.177319, 48.596970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616608, 33.814423, 48.375778>,  <37.306679, 33.492428, 48.460609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616608, 33.814423, 48.375778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850315, 34.138973, 48.368992>,  <36.990540, 34.333706, 48.364922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850315, 34.138973, 48.368992>,  <36.616608, 33.814423, 48.375778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850315, 34.138973, 48.368992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323868, 0.213950, -0.921594,
		-0.744133, 0.543956, 0.387785,
		0.584273, 0.811380, -0.016962,
		37.025597, 34.382385, 48.363903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184776, 34.321648, 48.256748>,  <36.616608, 33.814423, 48.375778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184776, 34.321648, 48.256748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537483, 34.444851, 48.113853>,  <36.749107, 34.518772, 48.028114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.537483, 34.444851, 48.113853>,  <36.184776, 34.321648, 48.256748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537483, 34.444851, 48.113853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439814, 0.263202, -0.858655,
		-0.170443, 0.914253, 0.367548,
		0.881767, 0.308005, -0.357240,
		36.802013, 34.537251, 48.006680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070343, 35.037682, 48.153023>,  <36.184776, 34.321648, 48.256748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070343, 35.037682, 48.153023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821407, 35.344208, 48.216835>,  <35.672047, 35.528122, 48.255123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821407, 35.344208, 48.216835>,  <36.070343, 35.037682, 48.153023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821407, 35.344208, 48.216835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221613, -0.022971, 0.974864,
		0.750719, 0.642053, -0.155530,
		-0.622342, 0.766316, 0.159532,
		35.634705, 35.574104, 48.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546417, 35.587708, 48.513584>,  <36.070343, 35.037682, 48.153023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546417, 35.587708, 48.513584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157413, 35.665840, 48.564285>,  <35.924011, 35.712719, 48.594707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157413, 35.665840, 48.564285>,  <36.546417, 35.587708, 48.513584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157413, 35.665840, 48.564285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144755, 0.080758, 0.986166,
		0.182391, 0.977407, -0.106813,
		-0.972512, 0.195329, 0.126755,
		35.865662, 35.724438, 48.602310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436447, 36.119823, 49.030666>,  <36.546417, 35.587708, 48.513584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436447, 36.119823, 49.030666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072578, 35.953747, 49.026466>,  <35.854256, 35.854103, 49.023945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.072578, 35.953747, 49.026466>,  <36.436447, 36.119823, 49.030666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072578, 35.953747, 49.026466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060641, 0.107762, 0.992326,
		-0.410870, 0.903331, -0.123206,
		-0.909675, -0.415188, -0.010503,
		35.799675, 35.829189, 49.023315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147507, 36.538757, 49.473614>,  <36.436447, 36.119823, 49.030666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147507, 36.538757, 49.473614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916969, 36.212791, 49.449146>,  <35.778648, 36.017212, 49.434467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916969, 36.212791, 49.449146>,  <36.147507, 36.538757, 49.473614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916969, 36.212791, 49.449146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031890, -0.097217, 0.994752,
		-0.816585, 0.571368, 0.082018,
		-0.576343, -0.814916, -0.061165,
		35.744068, 35.968315, 49.430798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640358, 36.600620, 49.933273>,  <36.147507, 36.538757, 49.473614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640358, 36.600620, 49.933273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644363, 36.204319, 49.879147>,  <35.646767, 35.966537, 49.846668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644363, 36.204319, 49.879147>,  <35.640358, 36.600620, 49.933273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644363, 36.204319, 49.879147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083727, -0.135681, 0.987208,
		-0.996439, 0.001449, -0.084310,
		0.010009, -0.990752, -0.135319,
		35.647366, 35.907093, 49.838551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937523, 36.323593, 50.292179>,  <35.640358, 36.600620, 49.933273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937523, 36.323593, 50.292179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214478, 36.038239, 50.248962>,  <35.380650, 35.867027, 50.223034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214478, 36.038239, 50.248962>,  <34.937523, 36.323593, 50.292179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214478, 36.038239, 50.248962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016198, -0.165072, 0.986149,
		-0.721341, -0.681050, -0.125850,
		0.692391, -0.713388, -0.108042,
		35.422195, 35.824223, 50.216549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597775, 35.764446, 50.613419>,  <34.937523, 36.323593, 50.292179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597775, 35.764446, 50.613419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994881, 35.722961, 50.589249>,  <35.233147, 35.698071, 50.574745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994881, 35.722961, 50.589249>,  <34.597775, 35.764446, 50.613419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994881, 35.722961, 50.589249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040290, -0.186306, 0.981665,
		-0.113070, -0.977002, -0.180780,
		0.992770, -0.103713, -0.060429,
		35.292713, 35.691845, 50.571121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086880, 35.181023, 50.679646>,  <34.597775, 35.764446, 50.613419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086880, 35.181023, 50.679646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724976, 35.288883, 50.811516>,  <33.507832, 35.353600, 50.890640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724976, 35.288883, 50.811516>,  <34.086880, 35.181023, 50.679646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724976, 35.288883, 50.811516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289402, 0.178689, -0.940381,
		-0.312489, -0.946233, -0.083632,
		-0.904763, 0.269655, 0.329680,
		33.453545, 35.369781, 50.910419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683582, 35.076485, 50.161926>,  <34.086880, 35.181023, 50.679646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683582, 35.076485, 50.161926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430752, 35.333664, 50.334942>,  <33.279053, 35.487972, 50.438751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430752, 35.333664, 50.334942>,  <33.683582, 35.076485, 50.161926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430752, 35.333664, 50.334942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359400, 0.251277, -0.898717,
		-0.686519, -0.723514, 0.072250,
		-0.632079, 0.642953, 0.432537,
		33.241127, 35.526550, 50.464703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060104, 34.957733, 49.842056>,  <33.683582, 35.076485, 50.161926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060104, 34.957733, 49.842056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018715, 35.316227, 50.014591>,  <32.993881, 35.531322, 50.118114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.018715, 35.316227, 50.014591>,  <33.060104, 34.957733, 49.842056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018715, 35.316227, 50.014591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490678, 0.331229, -0.805930,
		-0.865175, -0.295040, 0.405490,
		-0.103472, 0.896236, 0.431341,
		32.987675, 35.585098, 50.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304680, 35.217510, 49.632000>,  <33.060104, 34.957733, 49.842056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304680, 35.217510, 49.632000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531036, 35.536667, 49.715069>,  <32.666851, 35.728161, 49.764912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.531036, 35.536667, 49.715069>,  <32.304680, 35.217510, 49.632000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531036, 35.536667, 49.715069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353740, 0.462491, -0.813000,
		-0.744735, 0.386611, 0.543969,
		0.565895, 0.797894, 0.207674,
		32.700806, 35.776035, 49.777370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880217, 35.688126, 49.538063>,  <32.304680, 35.217510, 49.632000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880217, 35.688126, 49.538063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224518, 35.891487, 49.528030>,  <32.431099, 36.013504, 49.522011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.224518, 35.891487, 49.528030>,  <31.880217, 35.688126, 49.538063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224518, 35.891487, 49.528030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226431, 0.338293, -0.913393,
		-0.455885, 0.791887, 0.406305,
		0.860754, 0.508402, -0.025085,
		32.482742, 36.044006, 49.520504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755306, 36.302395, 49.281483>,  <31.880217, 35.688126, 49.538063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755306, 36.302395, 49.281483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149132, 36.310604, 49.211956>,  <32.385426, 36.315529, 49.170238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149132, 36.310604, 49.211956>,  <31.755306, 36.302395, 49.281483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149132, 36.310604, 49.211956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170313, 0.341183, -0.924439,
		0.040334, 0.939773, 0.339412,
		0.984564, 0.020520, -0.173817,
		32.444500, 36.316761, 49.159809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931776, 36.984196, 48.976509>,  <31.755306, 36.302395, 49.281483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931776, 36.984196, 48.976509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247234, 36.766811, 48.861481>,  <32.436508, 36.636383, 48.792465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.247234, 36.766811, 48.861481>,  <31.931776, 36.984196, 48.976509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247234, 36.766811, 48.861481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142586, 0.293302, -0.945327,
		0.598089, 0.786530, 0.153822,
		0.788644, -0.543456, -0.287569,
		32.483826, 36.603775, 48.775211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.922626, 30.864656, 51.537685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300938, 30.899540, 51.412533>,  <36.527924, 30.920471, 51.337440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300938, 30.899540, 51.412533>,  <35.922626, 30.864656, 51.537685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300938, 30.899540, 51.412533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323604, 0.170240, -0.930752,
		-0.027906, 0.981536, 0.189231,
		0.945781, 0.087210, -0.312879,
		36.584671, 30.925703, 51.318668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966862, 31.462002, 51.168877>,  <35.922626, 30.864656, 51.537685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966862, 31.462002, 51.168877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261539, 31.222044, 51.044033>,  <36.438347, 31.078070, 50.969128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261539, 31.222044, 51.044033>,  <35.966862, 31.462002, 51.168877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261539, 31.222044, 51.044033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351175, 0.055038, -0.934691,
		0.577893, 0.798185, -0.170121,
		0.736693, -0.599893, -0.312109,
		36.482548, 31.042076, 50.950401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297657, 31.818531, 50.541962>,  <35.966862, 31.462002, 51.168877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297657, 31.818531, 50.541962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393539, 31.431602, 50.508892>,  <36.451069, 31.199446, 50.489052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393539, 31.431602, 50.508892>,  <36.297657, 31.818531, 50.541962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393539, 31.431602, 50.508892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191038, 0.036493, -0.980904,
		0.951865, 0.250918, -0.176047,
		0.239702, -0.967320, -0.082672,
		36.465450, 31.141407, 50.484089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708054, 31.816833, 49.978672>,  <36.297657, 31.818531, 50.541962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708054, 31.816833, 49.978672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590935, 31.436581, 50.019791>,  <36.520664, 31.208429, 50.044460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590935, 31.436581, 50.019791>,  <36.708054, 31.816833, 49.978672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590935, 31.436581, 50.019791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070381, -0.085787, -0.993824,
		0.953579, -0.298228, -0.041788,
		-0.292801, -0.950631, 0.102795,
		36.503094, 31.151392, 50.050629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014282, 31.602257, 49.394730>,  <36.708054, 31.816833, 49.978672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014282, 31.602257, 49.394730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.766232, 31.310911, 49.511299>,  <36.617401, 31.136105, 49.581242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.766232, 31.310911, 49.511299>,  <37.014282, 31.602257, 49.394730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766232, 31.310911, 49.511299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191596, -0.219615, -0.956588,
		0.760744, -0.649043, -0.003362,
		-0.620129, -0.728363, 0.291424,
		36.580193, 31.092402, 49.598728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211338, 30.957920, 48.904663>,  <37.014282, 31.602257, 49.394730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211338, 30.957920, 48.904663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841473, 30.944992, 49.056423>,  <36.619553, 30.937235, 49.147480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841473, 30.944992, 49.056423>,  <37.211338, 30.957920, 48.904663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841473, 30.944992, 49.056423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365187, -0.206933, -0.907644,
		0.107846, -0.977821, 0.179541,
		-0.924666, -0.032320, 0.379405,
		36.564072, 30.935295, 49.170246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915791, 30.424900, 48.683887>,  <37.211338, 30.957920, 48.904663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915791, 30.424900, 48.683887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587749, 30.617422, 48.807674>,  <36.390923, 30.732935, 48.881947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587749, 30.617422, 48.807674>,  <36.915791, 30.424900, 48.683887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587749, 30.617422, 48.807674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497538, -0.332660, -0.801120,
		-0.282628, -0.810980, 0.512282,
		-0.820108, 0.481299, 0.309474,
		36.341717, 30.761812, 48.900517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347153, 29.891558, 48.723949>,  <36.915791, 30.424900, 48.683887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347153, 29.891558, 48.723949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204357, 30.261019, 48.668201>,  <36.118679, 30.482695, 48.634754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.204357, 30.261019, 48.668201>,  <36.347153, 29.891558, 48.723949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204357, 30.261019, 48.668201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334228, -0.265626, -0.904287,
		-0.872268, -0.276238, 0.403536,
		-0.356988, 0.923653, -0.139371,
		36.097260, 30.538115, 48.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659115, 29.731754, 48.478142>,  <36.347153, 29.891558, 48.723949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659115, 29.731754, 48.478142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711990, 30.118134, 48.389179>,  <35.743717, 30.349962, 48.335800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.711990, 30.118134, 48.389179>,  <35.659115, 29.731754, 48.478142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711990, 30.118134, 48.389179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392292, -0.155077, -0.906674,
		-0.910293, 0.207102, 0.358436,
		0.132189, 0.965950, -0.222410,
		35.751648, 30.407919, 48.322456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982307, 30.001598, 48.241745>,  <35.659115, 29.731754, 48.478142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982307, 30.001598, 48.241745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260563, 30.261593, 48.119366>,  <35.427517, 30.417589, 48.045940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260563, 30.261593, 48.119366>,  <34.982307, 30.001598, 48.241745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260563, 30.261593, 48.119366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405234, 0.003388, -0.914207,
		-0.593184, 0.759940, 0.265753,
		0.695642, 0.649984, -0.305944,
		35.469257, 30.456589, 48.027584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616402, 30.552971, 47.963474>,  <34.982307, 30.001598, 48.241745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616402, 30.552971, 47.963474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.984562, 30.563702, 47.807453>,  <35.205460, 30.570139, 47.713840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.984562, 30.563702, 47.807453>,  <34.616402, 30.552971, 47.963474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984562, 30.563702, 47.807453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386902, 0.206168, -0.898778,
		0.056308, 0.978149, 0.200136,
		0.920400, 0.026825, -0.390056,
		35.260681, 30.571749, 47.690437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495655, 30.953728, 47.415455>,  <34.616402, 30.552971, 47.963474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495655, 30.953728, 47.415455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862186, 30.814384, 47.336483>,  <35.082108, 30.730778, 47.289101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.862186, 30.814384, 47.336483>,  <34.495655, 30.953728, 47.415455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862186, 30.814384, 47.336483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118653, 0.234696, -0.964800,
		0.382434, 0.907504, 0.173726,
		0.916333, -0.348359, -0.197433,
		35.137085, 30.709877, 47.277252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227810, 31.694164, 47.660164>,  <34.495655, 30.953728, 47.415455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227810, 31.694164, 47.660164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887283, 31.881950, 47.566475>,  <33.682968, 31.994621, 47.510262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887283, 31.881950, 47.566475>,  <34.227810, 31.694164, 47.660164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887283, 31.881950, 47.566475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119548, 0.261108, 0.957878,
		0.510846, 0.843460, -0.166163,
		-0.851319, 0.469464, -0.234220,
		33.631889, 32.022789, 47.496208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315117, 32.300892, 47.963074>,  <34.227810, 31.694164, 47.660164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315117, 32.300892, 47.963074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928303, 32.213840, 47.910175>,  <33.696217, 32.161610, 47.878437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928303, 32.213840, 47.910175>,  <34.315117, 32.300892, 47.963074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928303, 32.213840, 47.910175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182470, 0.229892, 0.955957,
		-0.177638, 0.948572, -0.262023,
		-0.967031, -0.217626, -0.132248,
		33.638195, 32.148552, 47.870502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093250, 32.759911, 48.300423>,  <34.315117, 32.300892, 47.963074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093250, 32.759911, 48.300423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.777817, 32.514103, 48.291454>,  <33.588554, 32.366619, 48.286072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.777817, 32.514103, 48.291454>,  <34.093250, 32.759911, 48.300423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777817, 32.514103, 48.291454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113968, 0.110220, 0.987352,
		-0.604271, 0.781168, -0.156953,
		-0.788586, -0.614515, -0.022425,
		33.541241, 32.329750, 48.284725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559311, 33.102631, 48.607052>,  <34.093250, 32.759911, 48.300423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559311, 33.102631, 48.607052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479527, 32.713009, 48.649811>,  <33.431656, 32.479237, 48.675468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.479527, 32.713009, 48.649811>,  <33.559311, 33.102631, 48.607052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479527, 32.713009, 48.649811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144088, 0.137060, 0.980027,
		-0.969255, 0.180073, -0.167688,
		-0.199460, -0.974058, 0.106900,
		33.419689, 32.420792, 48.681881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008087, 33.127827, 49.107704>,  <33.559311, 33.102631, 48.607052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008087, 33.127827, 49.107704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203415, 32.779404, 49.128891>,  <33.320610, 32.570351, 49.141602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203415, 32.779404, 49.128891>,  <33.008087, 33.127827, 49.107704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203415, 32.779404, 49.128891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008859, 0.055740, 0.998406,
		-0.872621, -0.488008, 0.019502,
		0.488318, -0.871058, 0.052963,
		33.349911, 32.518085, 49.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704731, 32.756218, 49.636295>,  <33.008087, 33.127827, 49.107704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704731, 32.756218, 49.636295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058765, 32.574944, 49.593884>,  <33.271187, 32.466179, 49.568436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058765, 32.574944, 49.593884>,  <32.704731, 32.756218, 49.636295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058765, 32.574944, 49.593884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082762, -0.070939, 0.994041,
		-0.458004, -0.888591, -0.025281,
		0.885089, -0.453182, -0.106032,
		33.324291, 32.438988, 49.562073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662159, 32.346889, 50.166424>,  <32.704731, 32.756218, 49.636295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662159, 32.346889, 50.166424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047222, 32.333313, 50.058990>,  <33.278259, 32.325165, 49.994530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047222, 32.333313, 50.058990>,  <32.662159, 32.346889, 50.166424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047222, 32.333313, 50.058990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265749, -0.070820, 0.961438,
		-0.051657, -0.996911, -0.059155,
		0.962657, -0.033945, -0.268586,
		33.336018, 32.323132, 49.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049725, 31.858315, 50.562191>,  <32.662159, 32.346889, 50.166424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049725, 31.858315, 50.562191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337212, 32.105293, 50.434315>,  <33.509705, 32.253479, 50.357590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337212, 32.105293, 50.434315>,  <33.049725, 31.858315, 50.562191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337212, 32.105293, 50.434315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392480, 0.019259, 0.919559,
		0.573936, -0.786376, -0.228494,
		0.718719, 0.617447, -0.319691,
		33.552826, 32.290527, 50.338406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636005, 31.649025, 50.826500>,  <33.049725, 31.858315, 50.562191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636005, 31.649025, 50.826500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726086, 32.033901, 50.765209>,  <33.780132, 32.264828, 50.728436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.726086, 32.033901, 50.765209>,  <33.636005, 31.649025, 50.826500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726086, 32.033901, 50.765209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241224, 0.097307, 0.965579,
		0.943979, -0.254409, -0.210190,
		0.225199, 0.962189, -0.153226,
		33.793644, 32.322559, 50.719242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239876, 31.805956, 51.169861>,  <33.636005, 31.649025, 50.826500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239876, 31.805956, 51.169861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077637, 32.165329, 51.102562>,  <33.980293, 32.380955, 51.062183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.077637, 32.165329, 51.102562>,  <34.239876, 31.805956, 51.169861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077637, 32.165329, 51.102562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094021, 0.224095, 0.970021,
		0.909202, 0.377622, -0.175364,
		-0.405600, 0.898434, -0.168243,
		33.955956, 32.434860, 51.052090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532532, 32.227192, 51.694588>,  <34.239876, 31.805956, 51.169861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532532, 32.227192, 51.694588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207573, 32.434902, 51.588478>,  <34.012596, 32.559528, 51.524815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.207573, 32.434902, 51.588478>,  <34.532532, 32.227192, 51.694588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207573, 32.434902, 51.588478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215497, 0.155350, 0.964068,
		0.541825, 0.840370, -0.014304,
		-0.812396, 0.519274, -0.265270,
		33.963856, 32.590683, 51.508896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556362, 32.948002, 51.951160>,  <34.532532, 32.227192, 51.694588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556362, 32.948002, 51.951160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165802, 32.892670, 51.884830>,  <33.931465, 32.859470, 51.845032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165802, 32.892670, 51.884830>,  <34.556362, 32.948002, 51.951160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165802, 32.892670, 51.884830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203061, 0.326842, 0.923006,
		-0.073481, 0.934900, -0.347220,
		-0.976405, -0.138330, -0.165825,
		33.872879, 32.851170, 51.835083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214870, 33.581829, 52.131084>,  <34.556362, 32.948002, 51.951160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214870, 33.581829, 52.131084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947155, 33.284634, 52.132507>,  <33.786526, 33.106316, 52.133362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947155, 33.284634, 52.132507>,  <34.214870, 33.581829, 52.131084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947155, 33.284634, 52.132507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240984, 0.221607, 0.944890,
		-0.702833, 0.631550, -0.327368,
		-0.669292, -0.742991, 0.003560,
		33.746368, 33.061737, 52.133575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608639, 33.826241, 52.605389>,  <34.214870, 33.581829, 52.131084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608639, 33.826241, 52.605389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.584408, 33.427704, 52.581306>,  <33.569870, 33.188580, 52.566856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.584408, 33.427704, 52.581306>,  <33.608639, 33.826241, 52.605389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584408, 33.427704, 52.581306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059289, -0.056621, 0.996634,
		-0.996401, 0.063939, -0.055643,
		-0.060573, -0.996346, -0.060208,
		33.566235, 33.128799, 52.563244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052734, 33.551620, 53.010475>,  <33.608639, 33.826241, 52.605389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052734, 33.551620, 53.010475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.185745, 33.863068, 53.223335>,  <33.265553, 34.049934, 53.351051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.185745, 33.863068, 53.223335>,  <33.052734, 33.551620, 53.010475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185745, 33.863068, 53.223335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076035, 0.584555, -0.807784,
		-0.940024, 0.228146, 0.253581,
		0.332524, 0.778618, 0.532149,
		33.285503, 34.096653, 53.382980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540787, 34.124176, 52.972649>,  <33.052734, 33.551620, 53.010475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540787, 34.124176, 52.972649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907059, 34.272682, 53.034225>,  <33.126820, 34.361786, 53.071171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907059, 34.272682, 53.034225>,  <32.540787, 34.124176, 52.972649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907059, 34.272682, 53.034225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134324, 0.643693, -0.753403,
		-0.378803, 0.669196, 0.639285,
		0.915678, 0.371262, 0.153944,
		33.181763, 34.384060, 53.080410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436062, 34.834915, 53.021118>,  <32.540787, 34.124176, 52.972649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436062, 34.834915, 53.021118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818314, 34.791645, 52.911526>,  <33.047665, 34.765682, 52.845772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.818314, 34.791645, 52.911526>,  <32.436062, 34.834915, 53.021118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818314, 34.791645, 52.911526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141073, 0.648445, -0.748076,
		0.258581, 0.753537, 0.604415,
		0.955633, -0.108171, -0.273979,
		33.105003, 34.759193, 52.829330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671860, 35.446003, 52.753513>,  <32.436062, 34.834915, 53.021118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671860, 35.446003, 52.753513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982113, 35.232578, 52.618637>,  <33.168266, 35.104523, 52.537712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.982113, 35.232578, 52.618637>,  <32.671860, 35.446003, 52.753513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982113, 35.232578, 52.618637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057830, 0.592050, -0.803823,
		0.628524, 0.603976, 0.490072,
		0.775637, -0.533563, -0.337190,
		33.214806, 35.072510, 52.517479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240734, 35.945591, 52.450226>,  <32.671860, 35.446003, 52.753513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240734, 35.945591, 52.450226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344982, 35.591480, 52.296158>,  <33.407532, 35.379013, 52.203716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344982, 35.591480, 52.296158>,  <33.240734, 35.945591, 52.450226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344982, 35.591480, 52.296158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166746, 0.434239, -0.885230,
		0.950933, 0.166483, 0.260788,
		0.260620, -0.885280, -0.385171,
		33.423168, 35.325897, 52.180607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846958, 36.036388, 51.923103>,  <33.240734, 35.945591, 52.450226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846958, 36.036388, 51.923103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643951, 35.700443, 51.846107>,  <33.522148, 35.498875, 51.799908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643951, 35.700443, 51.846107>,  <33.846958, 36.036388, 51.923103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643951, 35.700443, 51.846107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038228, 0.201236, -0.978796,
		0.860791, -0.504118, -0.070025,
		-0.507521, -0.839862, -0.192494,
		33.491695, 35.448486, 51.788361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221127, 35.616695, 51.350815>,  <33.846958, 36.036388, 51.923103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221127, 35.616695, 51.350815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839443, 35.497887, 51.365028>,  <33.610432, 35.426601, 51.373558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.839443, 35.497887, 51.365028>,  <34.221127, 35.616695, 51.350815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839443, 35.497887, 51.365028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094264, 0.185818, -0.978052,
		0.283900, -0.936616, -0.205308,
		-0.954209, -0.297022, 0.035535,
		33.553181, 35.408783, 51.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653027, 35.138783, 51.129959>,  <34.221127, 35.616695, 51.350815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653027, 35.138783, 51.129959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033012, 35.255253, 51.084724>,  <35.261002, 35.325134, 51.057583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033012, 35.255253, 51.084724>,  <34.653027, 35.138783, 51.129959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033012, 35.255253, 51.084724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200769, -0.291813, 0.935167,
		0.239301, -0.911076, -0.335671,
		0.949961, 0.291179, -0.113084,
		35.318001, 35.342606, 51.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099941, 34.573574, 51.334415>,  <34.653027, 35.138783, 51.129959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099941, 34.573574, 51.334415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339653, 34.893486, 51.348412>,  <35.483479, 35.085434, 51.356812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.339653, 34.893486, 51.348412>,  <35.099941, 34.573574, 51.334415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339653, 34.893486, 51.348412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334681, -0.290006, 0.896596,
		0.727226, -0.525596, -0.441464,
		0.599275, 0.799778, 0.034993,
		35.519436, 35.133419, 51.358910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713905, 34.298355, 51.503605>,  <35.099941, 34.573574, 51.334415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713905, 34.298355, 51.503605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.751797, 34.687183, 51.589489>,  <35.774532, 34.920483, 51.641022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.751797, 34.687183, 51.589489>,  <35.713905, 34.298355, 51.503605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751797, 34.687183, 51.589489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404806, -0.234659, 0.883780,
		0.909483, 0.003200, -0.415729,
		0.094727, 0.972073, 0.214714,
		35.780216, 34.978806, 51.653904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506512, 34.450142, 51.743080>,  <35.713905, 34.298355, 51.503605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506512, 34.450142, 51.743080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.252499, 34.725323, 51.883625>,  <36.100090, 34.890430, 51.967953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.252499, 34.725323, 51.883625>,  <36.506512, 34.450142, 51.743080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252499, 34.725323, 51.883625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486613, 0.002993, 0.873613,
		0.599948, 0.725754, -0.336665,
		-0.635036, 0.687948, 0.351366,
		36.061989, 34.931705, 51.989037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906303, 34.753441, 52.154106>,  <36.506512, 34.450142, 51.743080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906303, 34.753441, 52.154106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553291, 34.857960, 52.310497>,  <36.341484, 34.920670, 52.404331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.553291, 34.857960, 52.310497>,  <36.906303, 34.753441, 52.154106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553291, 34.857960, 52.310497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382980, -0.083098, 0.920011,
		0.272887, 0.961675, -0.026735,
		-0.882530, 0.261298, 0.390979,
		36.288532, 34.936348, 52.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208130, 35.110119, 52.582203>,  <36.906303, 34.753441, 52.154106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208130, 35.110119, 52.582203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.834270, 35.042622, 52.707390>,  <36.609955, 35.002121, 52.782501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.834270, 35.042622, 52.707390>,  <37.208130, 35.110119, 52.582203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834270, 35.042622, 52.707390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336034, -0.131536, 0.932620,
		-0.116210, 0.976843, 0.179645,
		-0.934653, -0.168747, 0.312967,
		36.553875, 34.991997, 52.801281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234169, 35.317417, 53.243378>,  <37.208130, 35.110119, 52.582203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234169, 35.317417, 53.243378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874382, 35.142834, 53.234810>,  <36.658508, 35.038082, 53.229668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874382, 35.142834, 53.234810>,  <37.234169, 35.317417, 53.243378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874382, 35.142834, 53.234810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110702, -0.275008, 0.955047,
		-0.422728, 0.856665, 0.295678,
		-0.899470, -0.436457, -0.021419,
		36.604542, 35.011898, 53.228386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934486, 35.590725, 53.783157>,  <37.234169, 35.317417, 53.243378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934486, 35.590725, 53.783157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758732, 35.241882, 53.697018>,  <36.653278, 35.032578, 53.645332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758732, 35.241882, 53.697018>,  <36.934486, 35.590725, 53.783157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758732, 35.241882, 53.697018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220430, -0.337075, 0.915309,
		-0.870832, 0.354707, 0.340344,
		-0.439388, -0.872103, -0.215348,
		36.626915, 34.980251, 53.632412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559578, 35.441437, 54.372047>,  <36.934486, 35.590725, 53.783157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559578, 35.441437, 54.372047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633114, 35.099781, 54.177460>,  <36.677235, 34.894787, 54.060707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633114, 35.099781, 54.177460>,  <36.559578, 35.441437, 54.372047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633114, 35.099781, 54.177460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438176, -0.371801, 0.818392,
		-0.879888, -0.363616, 0.305908,
		0.183843, -0.854135, -0.486471,
		36.688267, 34.843540, 54.031517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.023506, 36.668457, 38.115227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034546, 36.287518, 38.236732>,  <34.041168, 36.058952, 38.309635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034546, 36.287518, 38.236732>,  <34.023506, 36.668457, 38.115227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034546, 36.287518, 38.236732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282242, 0.298937, 0.911579,
		-0.958946, 0.060577, 0.277043,
		0.027597, -0.952348, 0.303762,
		34.042824, 36.001812, 38.327862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506836, 36.553928, 38.791950>,  <34.023506, 36.668457, 38.115227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506836, 36.553928, 38.791950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846481, 36.350254, 38.735744>,  <34.050266, 36.228050, 38.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846481, 36.350254, 38.735744>,  <33.506836, 36.553928, 38.791950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846481, 36.350254, 38.735744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328823, 0.301347, 0.895023,
		-0.413387, -0.806177, 0.423308,
		0.849109, -0.509184, -0.140517,
		34.101215, 36.197498, 38.693588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588676, 36.238945, 39.467121>,  <33.506836, 36.553928, 38.791950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588676, 36.238945, 39.467121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949146, 36.196594, 39.298988>,  <34.165428, 36.171185, 39.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949146, 36.196594, 39.298988>,  <33.588676, 36.238945, 39.467121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949146, 36.196594, 39.298988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430131, 0.098416, 0.897386,
		-0.053648, -0.989496, 0.134232,
		0.901171, -0.105881, -0.420333,
		34.219498, 36.164829, 39.172890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849998, 35.711304, 39.825886>,  <33.588676, 36.238945, 39.467121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849998, 35.711304, 39.825886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151161, 35.911762, 39.655251>,  <34.331860, 36.032040, 39.552872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151161, 35.911762, 39.655251>,  <33.849998, 35.711304, 39.825886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151161, 35.911762, 39.655251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504353, -0.022964, 0.863192,
		0.422793, -0.865056, -0.270047,
		0.752911, 0.501150, -0.426584,
		34.377033, 36.062107, 39.527275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622265, 35.275867, 39.908485>,  <33.849998, 35.711304, 39.825886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622265, 35.275867, 39.908485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670471, 35.669003, 39.852608>,  <34.699394, 35.904884, 39.819080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670471, 35.669003, 39.852608>,  <34.622265, 35.275867, 39.908485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670471, 35.669003, 39.852608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230828, 0.109121, 0.966856,
		0.965502, -0.148766, -0.213715,
		0.120515, 0.982833, -0.139696,
		34.706627, 35.963852, 39.810699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186470, 35.454086, 40.297173>,  <34.622265, 35.275867, 39.908485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186470, 35.454086, 40.297173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035835, 35.823326, 40.266014>,  <34.945454, 36.044872, 40.247318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035835, 35.823326, 40.266014>,  <35.186470, 35.454086, 40.297173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035835, 35.823326, 40.266014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378540, 0.230080, 0.896532,
		0.845512, 0.308135, -0.436076,
		-0.376586, 0.923101, -0.077894,
		34.922859, 36.100258, 40.242645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612640, 35.919945, 40.780819>,  <35.186470, 35.454086, 40.297173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612640, 35.919945, 40.780819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299831, 36.151680, 40.688892>,  <35.112144, 36.290722, 40.633736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299831, 36.151680, 40.688892>,  <35.612640, 35.919945, 40.780819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299831, 36.151680, 40.688892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020889, 0.344167, 0.938676,
		0.622902, 0.738865, -0.257044,
		-0.782021, 0.579334, -0.229816,
		35.065224, 36.325481, 40.619949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751854, 36.715630, 40.932629>,  <35.612640, 35.919945, 40.780819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751854, 36.715630, 40.932629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365265, 36.623516, 40.978043>,  <35.133312, 36.568249, 41.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365265, 36.623516, 40.978043>,  <35.751854, 36.715630, 40.932629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365265, 36.623516, 40.978043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025817, 0.352792, 0.935346,
		-0.255453, 0.906921, -0.335020,
		-0.966477, -0.230287, 0.113536,
		35.075321, 36.554428, 41.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432392, 37.221931, 41.372139>,  <35.751854, 36.715630, 40.932629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432392, 37.221931, 41.372139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152538, 36.936283, 41.381523>,  <34.984627, 36.764893, 41.387154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152538, 36.936283, 41.381523>,  <35.432392, 37.221931, 41.372139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152538, 36.936283, 41.381523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169662, 0.197936, 0.965420,
		-0.694069, 0.671457, -0.259642,
		-0.699631, -0.714119, 0.023461,
		34.942650, 36.722046, 41.388561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854576, 37.581116, 41.656738>,  <35.432392, 37.221931, 41.372139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854576, 37.581116, 41.656738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809368, 37.192020, 41.737736>,  <34.782246, 36.958561, 41.786335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809368, 37.192020, 41.737736>,  <34.854576, 37.581116, 41.656738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809368, 37.192020, 41.737736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163399, 0.219220, 0.961896,
		-0.980065, 0.075624, -0.183720,
		-0.113018, -0.972740, 0.202493,
		34.775463, 36.900200, 41.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283466, 37.611107, 42.083645>,  <34.854576, 37.581116, 41.656738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283466, 37.611107, 42.083645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465290, 37.259209, 42.139393>,  <34.574383, 37.048069, 42.172840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465290, 37.259209, 42.139393>,  <34.283466, 37.611107, 42.083645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465290, 37.259209, 42.139393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203814, 0.049586, 0.977753,
		-0.867086, -0.472850, -0.156765,
		0.454558, -0.879746, 0.139369,
		34.601658, 36.995285, 42.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968945, 37.315468, 42.679428>,  <34.283466, 37.611107, 42.083645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968945, 37.315468, 42.679428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300777, 37.095703, 42.639549>,  <34.499878, 36.963844, 42.615623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300777, 37.095703, 42.639549>,  <33.968945, 37.315468, 42.679428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300777, 37.095703, 42.639549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009907, -0.192994, 0.981150,
		-0.558294, -0.812958, -0.165548,
		0.829584, -0.549410, -0.099694,
		34.549652, 36.930882, 42.609642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289421, 36.898453, 42.697018>,  <33.968945, 37.315468, 42.679428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289421, 36.898453, 42.697018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911388, 37.014793, 42.756664>,  <32.684570, 37.084599, 42.792450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911388, 37.014793, 42.756664>,  <33.289421, 36.898453, 42.697018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911388, 37.014793, 42.756664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142254, 0.044716, -0.988820,
		-0.294264, -0.955724, -0.000885,
		-0.945078, 0.290848, 0.149114,
		32.627865, 37.102047, 42.801399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907532, 36.385143, 42.347149>,  <33.289421, 36.898453, 42.697018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907532, 36.385143, 42.347149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672108, 36.704987, 42.394863>,  <32.530853, 36.896893, 42.423492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672108, 36.704987, 42.394863>,  <32.907532, 36.385143, 42.347149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672108, 36.704987, 42.394863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248793, -0.038750, -0.967781,
		-0.769221, -0.599274, 0.221743,
		-0.588558, 0.799606, 0.119288,
		32.495541, 36.944870, 42.430649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348759, 36.212906, 41.961407>,  <32.907532, 36.385143, 42.347149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348759, 36.212906, 41.961407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272301, 36.603504, 42.001244>,  <32.226425, 36.837864, 42.025146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272301, 36.603504, 42.001244>,  <32.348759, 36.212906, 41.961407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272301, 36.603504, 42.001244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463945, -0.000463, -0.885864,
		-0.864998, -0.215531, 0.453129,
		-0.191141, 0.976497, 0.099594,
		32.214958, 36.896454, 42.031120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648214, 36.275070, 41.817909>,  <32.348759, 36.212906, 41.961407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648214, 36.275070, 41.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806791, 36.631767, 41.730618>,  <31.901937, 36.845787, 41.678242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806791, 36.631767, 41.730618>,  <31.648214, 36.275070, 41.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806791, 36.631767, 41.730618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436729, -0.025905, -0.899220,
		-0.807528, 0.451796, 0.379181,
		0.396441, 0.891745, -0.218232,
		31.925724, 36.899292, 41.665150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071918, 36.614452, 41.528103>,  <31.648214, 36.275070, 41.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071918, 36.614452, 41.528103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395319, 36.821514, 41.416130>,  <31.589359, 36.945751, 41.348946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395319, 36.821514, 41.416130>,  <31.071918, 36.614452, 41.528103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395319, 36.821514, 41.416130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351471, 0.043208, -0.935201,
		-0.472014, 0.854499, 0.216874,
		0.808499, 0.517652, -0.279937,
		31.637869, 36.976810, 41.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926254, 37.327480, 41.216965>,  <31.071918, 36.614452, 41.528103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926254, 37.327480, 41.216965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279480, 37.209106, 41.071297>,  <31.491415, 37.138081, 40.983894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279480, 37.209106, 41.071297>,  <30.926254, 37.327480, 41.216965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279480, 37.209106, 41.071297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348130, 0.107211, -0.931296,
		0.314650, 0.949171, -0.008351,
		0.883063, -0.295939, -0.364169,
		31.544399, 37.120323, 40.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966854, 37.694859, 40.705265>,  <30.926254, 37.327480, 41.216965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966854, 37.694859, 40.705265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236027, 37.406342, 40.639668>,  <31.397532, 37.233231, 40.600307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236027, 37.406342, 40.639668>,  <30.966854, 37.694859, 40.705265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236027, 37.406342, 40.639668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269759, -0.032865, -0.962367,
		0.688761, 0.691847, -0.216692,
		0.672933, -0.721295, -0.163996,
		31.437906, 37.189953, 40.590469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178263, 37.766872, 39.961277>,  <30.966854, 37.694859, 40.705265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178263, 37.766872, 39.961277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296152, 37.388119, 40.012745>,  <31.366886, 37.160866, 40.043625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296152, 37.388119, 40.012745>,  <31.178263, 37.766872, 39.961277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296152, 37.388119, 40.012745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269374, -0.211513, -0.939521,
		0.916830, 0.242237, -0.317402,
		0.294721, -0.946881, 0.128670,
		31.384569, 37.104053, 40.051346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446833, 37.625565, 39.315792>,  <31.178263, 37.766872, 39.961277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446833, 37.625565, 39.315792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406441, 37.255413, 39.461929>,  <31.382206, 37.033321, 39.549614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406441, 37.255413, 39.461929>,  <31.446833, 37.625565, 39.315792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406441, 37.255413, 39.461929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340839, -0.312823, -0.886550,
		0.934683, -0.214045, -0.283817,
		-0.100977, -0.925379, 0.365346,
		31.376148, 36.977798, 39.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780634, 37.097935, 38.812004>,  <31.446833, 37.625565, 39.315792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780634, 37.097935, 38.812004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538784, 36.873890, 39.038528>,  <31.393675, 36.739464, 39.174442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538784, 36.873890, 39.038528>,  <31.780634, 37.097935, 38.812004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538784, 36.873890, 39.038528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360886, -0.441180, -0.821657,
		0.710065, -0.701165, 0.064610,
		-0.604622, -0.560114, 0.566308,
		31.357397, 36.705856, 39.208420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858496, 36.443890, 38.576595>,  <31.780634, 37.097935, 38.812004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858496, 36.443890, 38.576595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491282, 36.464951, 38.733788>,  <31.270952, 36.477589, 38.828102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491282, 36.464951, 38.733788>,  <31.858496, 36.443890, 38.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491282, 36.464951, 38.733788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381765, -0.385042, -0.840237,
		0.107074, -0.921396, 0.373584,
		-0.918036, 0.052654, 0.392985,
		31.215870, 36.480747, 38.851685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644951, 35.780838, 38.418598>,  <31.858496, 36.443890, 38.576595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644951, 35.780838, 38.418598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320303, 35.995926, 38.509922>,  <31.125515, 36.124981, 38.564716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320303, 35.995926, 38.509922>,  <31.644951, 35.780838, 38.418598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320303, 35.995926, 38.509922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525870, -0.502285, -0.686419,
		-0.254427, -0.677173, 0.690437,
		-0.811621, 0.537724, 0.228310,
		31.076817, 36.157242, 38.578415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176300, 35.310658, 38.577248>,  <31.644951, 35.780838, 38.418598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176300, 35.310658, 38.577248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010576, 35.643120, 38.428909>,  <30.911142, 35.842598, 38.339905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010576, 35.643120, 38.428909>,  <31.176300, 35.310658, 38.577248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010576, 35.643120, 38.428909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503532, -0.548750, -0.667330,
		-0.758157, -0.089748, 0.645866,
		-0.414310, 0.831155, -0.370848,
		30.886284, 35.892467, 38.317654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662130, 34.732136, 38.468124>,  <31.176300, 35.310658, 38.577248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662130, 34.732136, 38.468124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970671, 34.537281, 38.631939>,  <32.155796, 34.420368, 38.730228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970671, 34.537281, 38.631939>,  <31.662130, 34.732136, 38.468124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970671, 34.537281, 38.631939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532393, 0.141355, -0.834612,
		0.348680, 0.861810, 0.368383,
		0.771349, -0.487137, 0.409534,
		32.202076, 34.391140, 38.754799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128231, 35.048641, 38.080750>,  <31.662130, 34.732136, 38.468124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128231, 35.048641, 38.080750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290955, 34.719967, 38.240417>,  <32.388588, 34.522762, 38.336220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290955, 34.719967, 38.240417>,  <32.128231, 35.048641, 38.080750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290955, 34.719967, 38.240417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617232, -0.074893, -0.783209,
		0.673446, 0.565000, 0.476703,
		0.406812, -0.821685, 0.399172,
		32.412998, 34.473461, 38.360168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466537, 35.001232, 37.270786>,  <32.128231, 35.048641, 38.080750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466537, 35.001232, 37.270786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524334, 34.605736, 37.255211>,  <32.559013, 34.368439, 37.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524334, 34.605736, 37.255211>,  <32.466537, 35.001232, 37.270786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524334, 34.605736, 37.255211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005986, -0.040220, 0.999173,
		-0.989488, -0.144137, -0.011730,
		0.144490, -0.988740, -0.038934,
		32.567680, 34.309113, 37.243530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780256, 34.687870, 37.539654>,  <32.466537, 35.001232, 37.270786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780256, 34.687870, 37.539654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153999, 34.551430, 37.580902>,  <32.378246, 34.469566, 37.605652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153999, 34.551430, 37.580902>,  <31.780256, 34.687870, 37.539654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153999, 34.551430, 37.580902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104929, 0.013185, 0.994392,
		-0.340543, -0.939936, -0.023472,
		0.934355, -0.341096, 0.103117,
		32.434307, 34.449100, 37.611835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695396, 33.985764, 37.967190>,  <31.780256, 34.687870, 37.539654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695396, 33.985764, 37.967190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084270, 34.073124, 38.001030>,  <32.317596, 34.125542, 38.021332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084270, 34.073124, 38.001030>,  <31.695396, 33.985764, 37.967190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084270, 34.073124, 38.001030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033245, -0.228865, 0.972890,
		0.231842, -0.948642, -0.215238,
		0.972185, 0.218402, 0.084598,
		32.375927, 34.138645, 38.026409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069084, 33.422169, 38.184074>,  <31.695396, 33.985764, 37.967190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069084, 33.422169, 38.184074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311077, 33.720047, 38.296806>,  <32.456272, 33.898773, 38.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311077, 33.720047, 38.296806>,  <32.069084, 33.422169, 38.184074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311077, 33.720047, 38.296806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038633, -0.326077, 0.944553,
		0.795302, -0.582325, -0.168501,
		0.604982, 0.744695, 0.281826,
		32.492573, 33.943455, 38.381355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611687, 33.084888, 38.609535>,  <32.069084, 33.422169, 38.184074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611687, 33.084888, 38.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586308, 33.475834, 38.690258>,  <32.571079, 33.710403, 38.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586308, 33.475834, 38.690258>,  <32.611687, 33.084888, 38.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586308, 33.475834, 38.690258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, -0.199164, 0.978906,
		0.996944, 0.071311, -0.031902,
		-0.063453, 0.977368, 0.201805,
		32.567272, 33.769043, 38.750801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027065, 33.212673, 39.208340>,  <32.611687, 33.084888, 38.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027065, 33.212673, 39.208340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799400, 33.541172, 39.192310>,  <32.662800, 33.738270, 39.182693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799400, 33.541172, 39.192310>,  <33.027065, 33.212673, 39.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799400, 33.541172, 39.192310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054043, 0.086003, 0.994828,
		0.820448, 0.564052, -0.093332,
		-0.569162, 0.821248, -0.040078,
		32.628651, 33.787548, 39.180286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418110, 33.701771, 39.639641>,  <33.027065, 33.212673, 39.208340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418110, 33.701771, 39.639641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027031, 33.782253, 39.615547>,  <32.792385, 33.830544, 39.601089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027031, 33.782253, 39.615547>,  <33.418110, 33.701771, 39.639641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027031, 33.782253, 39.615547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046795, 0.070902, 0.996385,
		0.204754, 0.976978, -0.059905,
		-0.977694, 0.201210, -0.060235,
		32.733723, 33.842617, 39.597477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342655, 34.139126, 40.233597>,  <33.418110, 33.701771, 39.639641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342655, 34.139126, 40.233597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959652, 34.073883, 40.138458>,  <32.729851, 34.034737, 40.081375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959652, 34.073883, 40.138458>,  <33.342655, 34.139126, 40.233597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959652, 34.073883, 40.138458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251564, 0.069048, 0.965375,
		-0.141036, 0.984189, -0.107146,
		-0.957510, -0.163107, -0.237848,
		32.672398, 34.024952, 40.067104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944626, 34.606888, 40.565418>,  <33.342655, 34.139126, 40.233597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944626, 34.606888, 40.565418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668594, 34.331577, 40.475914>,  <32.502975, 34.166393, 40.422211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668594, 34.331577, 40.475914>,  <32.944626, 34.606888, 40.565418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668594, 34.331577, 40.475914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260874, -0.051842, 0.963980,
		-0.675081, 0.723598, -0.143777,
		-0.690080, -0.688272, -0.223765,
		32.461571, 34.125095, 40.408783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258778, 34.793175, 40.962563>,  <32.944626, 34.606888, 40.565418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258778, 34.793175, 40.962563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313400, 34.405403, 40.881012>,  <32.346172, 34.172741, 40.832081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313400, 34.405403, 40.881012>,  <32.258778, 34.793175, 40.962563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313400, 34.405403, 40.881012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321947, -0.238066, 0.916338,
		-0.936858, -0.059494, -0.344613,
		0.136557, -0.969425, -0.203880,
		32.354366, 34.114574, 40.819847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634153, 34.543606, 41.154137>,  <32.258778, 34.793175, 40.962563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634153, 34.543606, 41.154137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913877, 34.257687, 41.151768>,  <32.081711, 34.086136, 41.150345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913877, 34.257687, 41.151768>,  <31.634153, 34.543606, 41.154137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913877, 34.257687, 41.151768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232299, -0.235088, 0.943807,
		-0.676021, -0.658636, -0.330445,
		0.699309, -0.714795, -0.005924,
		32.123669, 34.043247, 41.149990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338320, 34.065678, 41.576717>,  <31.634153, 34.543606, 41.154137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338320, 34.065678, 41.576717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718922, 33.942776, 41.570637>,  <31.947283, 33.869034, 41.566990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718922, 33.942776, 41.570637>,  <31.338320, 34.065678, 41.576717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718922, 33.942776, 41.570637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111147, -0.389432, 0.914325,
		-0.286848, -0.868296, -0.404697,
		0.951507, -0.307253, -0.015200,
		32.004372, 33.850601, 41.566078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269161, 33.407558, 41.966869>,  <31.338320, 34.065678, 41.576717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269161, 33.407558, 41.966869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664474, 33.468609, 41.966774>,  <31.901663, 33.505238, 41.966717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664474, 33.468609, 41.966774>,  <31.269161, 33.407558, 41.966869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664474, 33.468609, 41.966774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070432, -0.454681, 0.887865,
		0.135401, -0.877480, -0.460104,
		0.988284, 0.152624, -0.000239,
		31.960960, 33.514397, 41.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512018, 32.874699, 42.302677>,  <31.269161, 33.407558, 41.966869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512018, 32.874699, 42.302677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803207, 33.148350, 42.320694>,  <31.977921, 33.312542, 42.331505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803207, 33.148350, 42.320694>,  <31.512018, 32.874699, 42.302677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803207, 33.148350, 42.320694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116034, -0.187685, 0.975352,
		0.675717, -0.704802, -0.216011,
		0.727971, 0.684127, 0.045041,
		32.021599, 33.353588, 42.334206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098518, 32.545456, 42.633457>,  <31.512018, 32.874699, 42.302677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098518, 32.545456, 42.633457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157471, 32.940151, 42.660637>,  <32.192841, 33.176968, 42.676945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157471, 32.940151, 42.660637>,  <32.098518, 32.545456, 42.633457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157471, 32.940151, 42.660637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503999, -0.134038, 0.853240,
		0.851036, -0.091503, -0.517072,
		0.147381, 0.986743, 0.067954,
		32.201687, 33.236176, 42.681023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771389, 32.646172, 42.721092>,  <32.098518, 32.545456, 42.633457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771389, 32.646172, 42.721092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633186, 32.984200, 42.884300>,  <32.550266, 33.187016, 42.982227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633186, 32.984200, 42.884300>,  <32.771389, 32.646172, 42.721092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633186, 32.984200, 42.884300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545582, -0.172875, 0.820034,
		0.763523, 0.505936, -0.401325,
		-0.345505, 0.845070, 0.408023,
		32.529533, 33.237720, 43.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309025, 32.931602, 43.073063>,  <32.771389, 32.646172, 42.721092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309025, 32.931602, 43.073063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011250, 33.152328, 43.223431>,  <32.832584, 33.284763, 43.313652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011250, 33.152328, 43.223431>,  <33.309025, 32.931602, 43.073063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011250, 33.152328, 43.223431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512508, 0.111376, 0.851429,
		0.427961, 0.826497, -0.365722,
		-0.744436, 0.551814, 0.375922,
		32.787918, 33.317871, 43.336208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653988, 33.560154, 43.299522>,  <33.309025, 32.931602, 43.073063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653988, 33.560154, 43.299522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308689, 33.464951, 43.477577>,  <33.101509, 33.407829, 43.584412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308689, 33.464951, 43.477577>,  <33.653988, 33.560154, 43.299522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308689, 33.464951, 43.477577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450771, 0.033376, 0.892015,
		-0.227168, 0.970688, 0.078477,
		-0.863250, -0.238013, 0.445140,
		33.049713, 33.393547, 43.611118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629723, 33.899498, 43.968609>,  <33.653988, 33.560154, 43.299522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629723, 33.899498, 43.968609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335693, 33.633263, 44.020252>,  <33.159275, 33.473522, 44.051239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335693, 33.633263, 44.020252>,  <33.629723, 33.899498, 43.968609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335693, 33.633263, 44.020252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266108, -0.108089, 0.957864,
		-0.623585, 0.738454, 0.256570,
		-0.735070, -0.665585, 0.129106,
		33.115173, 33.433586, 44.058983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194393, 34.074387, 44.582027>,  <33.629723, 33.899498, 43.968609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194393, 34.074387, 44.582027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138763, 33.683235, 44.519531>,  <33.105385, 33.448544, 44.482033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138763, 33.683235, 44.519531>,  <33.194393, 34.074387, 44.582027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138763, 33.683235, 44.519531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360290, -0.196930, 0.911817,
		-0.922415, 0.070517, 0.379708,
		-0.139075, -0.977878, -0.156244,
		33.097042, 33.389874, 44.472656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133759, 33.867199, 45.312195>,  <33.194393, 34.074387, 44.582027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133759, 33.867199, 45.312195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136921, 33.518475, 45.116283>,  <33.138821, 33.309238, 44.998737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136921, 33.518475, 45.116283>,  <33.133759, 33.867199, 45.312195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136921, 33.518475, 45.116283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239951, -0.473829, 0.847295,
		-0.970753, -0.124225, 0.205444,
		0.007910, -0.871811, -0.489779,
		33.139294, 33.256931, 44.969349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721489, 33.435097, 45.638035>,  <33.133759, 33.867199, 45.312195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721489, 33.435097, 45.638035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950394, 33.178989, 45.433067>,  <33.087738, 33.025326, 45.310085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950394, 33.178989, 45.433067>,  <32.721489, 33.435097, 45.638035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950394, 33.178989, 45.433067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040290, -0.602142, 0.797372,
		-0.819081, -0.476951, -0.318787,
		0.572262, -0.640268, -0.512419,
		33.122074, 32.986908, 45.279343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451206, 32.706806, 45.705631>,  <32.721489, 33.435097, 45.638035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451206, 32.706806, 45.705631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845337, 32.700279, 45.637661>,  <33.081814, 32.696362, 45.596878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845337, 32.700279, 45.637661>,  <32.451206, 32.706806, 45.705631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845337, 32.700279, 45.637661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139301, -0.498489, 0.855631,
		-0.098667, -0.866742, -0.488899,
		0.985322, -0.016318, -0.169923,
		33.140934, 32.695385, 45.586685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630272, 31.952866, 45.823643>,  <32.451206, 32.706806, 45.705631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630272, 31.952866, 45.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958214, 32.178543, 45.862667>,  <33.154980, 32.313950, 45.886082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958214, 32.178543, 45.862667>,  <32.630272, 31.952866, 45.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958214, 32.178543, 45.862667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196506, -0.437301, 0.877584,
		0.537792, -0.700322, -0.469392,
		0.819857, 0.564196, 0.097560,
		33.204170, 32.347801, 45.891933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028568, 31.520094, 46.075756>,  <32.630272, 31.952866, 45.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028568, 31.520094, 46.075756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185097, 31.881191, 46.147221>,  <33.279015, 32.097851, 46.190098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185097, 31.881191, 46.147221>,  <33.028568, 31.520094, 46.075756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185097, 31.881191, 46.147221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246801, -0.289978, 0.924663,
		0.886543, -0.317746, -0.336273,
		0.391320, 0.902746, 0.178658,
		33.302494, 32.152016, 46.200817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559780, 31.363991, 46.358566>,  <33.028568, 31.520094, 46.075756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559780, 31.363991, 46.358566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501720, 31.739077, 46.484818>,  <33.466885, 31.964128, 46.560570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501720, 31.739077, 46.484818>,  <33.559780, 31.363991, 46.358566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501720, 31.739077, 46.484818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154821, -0.293555, 0.943322,
		0.977222, 0.185788, -0.102568,
		-0.145149, 0.937714, 0.315632,
		33.458176, 32.020390, 46.579506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007301, 31.427008, 46.908772>,  <33.559780, 31.363991, 46.358566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007301, 31.427008, 46.908772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756908, 31.735291, 46.956371>,  <33.606674, 31.920261, 46.984932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756908, 31.735291, 46.956371>,  <34.007301, 31.427008, 46.908772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756908, 31.735291, 46.956371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017620, -0.138576, 0.990195,
		0.779642, 0.621937, 0.073166,
		-0.625978, 0.770708, 0.118998,
		33.569115, 31.966503, 46.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864727, 31.399221, 47.007687>,  <34.007301, 31.427008, 46.908772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864727, 31.399221, 47.007687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072517, 31.064939, 46.936428>,  <35.197193, 30.864370, 46.893673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072517, 31.064939, 46.936428>,  <34.864727, 31.399221, 47.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072517, 31.064939, 46.936428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038632, 0.231245, -0.972128,
		0.853610, 0.498118, 0.152412,
		0.519478, -0.835706, -0.178150,
		35.228359, 30.814228, 46.882984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371971, 31.540960, 46.580826>,  <34.864727, 31.399221, 47.007687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371971, 31.540960, 46.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349571, 31.142483, 46.554119>,  <35.336132, 30.903397, 46.538094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349571, 31.142483, 46.554119>,  <35.371971, 31.540960, 46.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349571, 31.142483, 46.554119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235632, 0.051795, -0.970461,
		0.970227, -0.070077, 0.231835,
		-0.055999, -0.996196, -0.066766,
		35.332771, 30.843624, 46.534088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926426, 31.276211, 46.097473>,  <35.371971, 31.540960, 46.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926426, 31.276211, 46.097473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652142, 30.985085, 46.093910>,  <35.487572, 30.810410, 46.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652142, 30.985085, 46.093910>,  <35.926426, 31.276211, 46.097473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652142, 30.985085, 46.093910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127044, -0.107622, -0.986041,
		0.716697, -0.677276, 0.166262,
		-0.685715, -0.727815, -0.008912,
		35.446426, 30.766741, 46.091236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166832, 30.738113, 45.633156>,  <35.926426, 31.276211, 46.097473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166832, 30.738113, 45.633156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775974, 30.663548, 45.674011>,  <35.541458, 30.618807, 45.698524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775974, 30.663548, 45.674011>,  <36.166832, 30.738113, 45.633156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775974, 30.663548, 45.674011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036268, -0.327236, -0.944246,
		0.209447, -0.926372, 0.312997,
		-0.977147, -0.186417, 0.102136,
		35.482830, 30.607622, 45.704651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046597, 30.100176, 45.528839>,  <36.166832, 30.738113, 45.633156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046597, 30.100176, 45.528839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694016, 30.272770, 45.452042>,  <35.482468, 30.376326, 45.405964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694016, 30.272770, 45.452042>,  <36.046597, 30.100176, 45.528839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694016, 30.272770, 45.452042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067196, -0.287803, -0.955329,
		-0.467466, -0.854979, 0.224690,
		-0.881453, 0.431486, -0.191990,
		35.429581, 30.402216, 45.394444>
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
