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
	<23.834551, 35.239285, 35.001366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177481, 35.035225, 34.973835>,  <24.383240, 34.912788, 34.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177481, 35.035225, 34.973835>,  <23.834551, 35.239285, 35.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177481, 35.035225, 34.973835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244161, -0.285285, -0.926821,
		0.453187, 0.811392, -0.369141,
		0.857325, -0.510153, -0.068823,
		24.434679, 34.882179, 34.953190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256609, 35.447575, 34.460606>,  <23.834551, 35.239285, 35.001366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256609, 35.447575, 34.460606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412146, 35.087124, 34.537308>,  <24.505468, 34.870853, 34.583328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412146, 35.087124, 34.537308>,  <24.256609, 35.447575, 34.460606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412146, 35.087124, 34.537308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180952, -0.278782, -0.943153,
		0.903359, 0.332040, -0.271463,
		0.388843, -0.901127, 0.191757,
		24.528799, 34.816784, 34.594833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817322, 35.429165, 34.056831>,  <24.256609, 35.447575, 34.460606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817322, 35.429165, 34.056831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619669, 35.084923, 34.106133>,  <24.501078, 34.878376, 34.135712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.619669, 35.084923, 34.106133>,  <24.817322, 35.429165, 34.056831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.619669, 35.084923, 34.106133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056111, -0.173041, -0.983315,
		0.867574, -0.478973, 0.133795,
		-0.494133, -0.860606, 0.123250,
		24.471430, 34.826740, 34.143108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151525, 34.852345, 33.924244>,  <24.817322, 35.429165, 34.056831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151525, 34.852345, 33.924244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765648, 34.786053, 33.842369>,  <24.534121, 34.746277, 33.793243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765648, 34.786053, 33.842369>,  <25.151525, 34.852345, 33.924244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765648, 34.786053, 33.842369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174617, 0.179328, -0.968168,
		0.197163, -0.969729, -0.144057,
		-0.964695, -0.165732, -0.204688,
		24.476240, 34.736332, 33.780964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074476, 34.264622, 33.379124>,  <25.151525, 34.852345, 33.924244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074476, 34.264622, 33.379124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782925, 34.536968, 33.350410>,  <24.607994, 34.700375, 33.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782925, 34.536968, 33.350410>,  <25.074476, 34.264622, 33.379124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782925, 34.536968, 33.350410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261489, 0.179951, -0.948283,
		-0.632737, -0.709956, -0.309202,
		-0.728881, 0.680867, -0.071784,
		24.564260, 34.741230, 33.328876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643305, 34.083603, 32.804451>,  <25.074476, 34.264622, 33.379124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643305, 34.083603, 32.804451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671675, 34.474369, 32.885048>,  <24.688696, 34.708828, 32.933407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.671675, 34.474369, 32.885048>,  <24.643305, 34.083603, 32.804451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.671675, 34.474369, 32.885048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321109, 0.168887, -0.931862,
		-0.944383, 0.130791, -0.301720,
		0.070923, 0.976919, 0.201492,
		24.692951, 34.767445, 32.945496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.187654, 34.576321, 32.396042>,  <24.643305, 34.083603, 32.804451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.187654, 34.576321, 32.396042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534285, 34.743507, 32.505108>,  <24.742264, 34.843819, 32.570545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534285, 34.743507, 32.505108>,  <24.187654, 34.576321, 32.396042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534285, 34.743507, 32.505108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238459, 0.133149, -0.961982,
		-0.438385, 0.898650, 0.015715,
		0.866577, 0.417971, 0.272662,
		24.794258, 34.868900, 32.586906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.410120, 35.013058, 31.859648>,  <24.187654, 34.576321, 32.396042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.410120, 35.013058, 31.859648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747749, 34.930153, 32.057468>,  <24.950327, 34.880409, 32.176159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747749, 34.930153, 32.057468>,  <24.410120, 35.013058, 31.859648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747749, 34.930153, 32.057468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501827, -0.019682, -0.864744,
		0.188966, 0.978087, 0.087399,
		0.844074, -0.207266, 0.494550,
		25.000971, 34.867973, 32.205833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954901, 35.375381, 31.611732>,  <24.410120, 35.013058, 31.859648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954901, 35.375381, 31.611732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082682, 35.022633, 31.750446>,  <25.159349, 34.810986, 31.833673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082682, 35.022633, 31.750446>,  <24.954901, 35.375381, 31.611732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082682, 35.022633, 31.750446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453596, -0.179002, -0.873046,
		0.831987, 0.436195, 0.342829,
		0.319451, -0.881868, 0.346784,
		25.178516, 34.758072, 31.854481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703812, 35.281044, 31.571568>,  <24.954901, 35.375381, 31.611732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703812, 35.281044, 31.571568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538111, 34.917961, 31.544855>,  <25.438690, 34.700111, 31.528828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538111, 34.917961, 31.544855>,  <25.703812, 35.281044, 31.571568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538111, 34.917961, 31.544855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507097, -0.169250, -0.845108,
		0.755809, -0.383952, 0.530409,
		-0.414252, -0.907709, -0.066780,
		25.413836, 34.645649, 31.524820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262882, 34.901581, 31.265482>,  <25.703812, 35.281044, 31.571568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262882, 34.901581, 31.265482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926300, 34.686466, 31.244558>,  <25.724350, 34.557396, 31.232004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926300, 34.686466, 31.244558>,  <26.262882, 34.901581, 31.265482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926300, 34.686466, 31.244558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269872, -0.334433, -0.902953,
		0.468106, -0.773910, 0.426545,
		-0.841455, -0.537790, -0.052307,
		25.673864, 34.525131, 31.228867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071112, 34.409283, 30.722013>,  <26.262882, 34.901581, 31.265482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071112, 34.409283, 30.722013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289875, 34.074409, 30.720263>,  <26.421133, 33.873486, 30.719212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289875, 34.074409, 30.720263>,  <26.071112, 34.409283, 30.722013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289875, 34.074409, 30.720263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045494, -0.024499, -0.998664,
		0.835957, 0.546375, -0.051486,
		0.546906, -0.837183, -0.004377,
		26.453947, 33.823254, 30.718950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159660, 34.862389, 30.105810>,  <26.071112, 34.409283, 30.722013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159660, 34.862389, 30.105810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004015, 34.520844, 29.967527>,  <25.910629, 34.315918, 29.884558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.004015, 34.520844, 29.967527>,  <26.159660, 34.862389, 30.105810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.004015, 34.520844, 29.967527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748702, 0.074495, 0.658707,
		-0.536691, 0.515142, -0.668275,
		-0.389111, -0.853861, -0.345707,
		25.887281, 34.264687, 29.863815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526896, 34.911495, 30.002851>,  <26.159660, 34.862389, 30.105810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526896, 34.911495, 30.002851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639507, 34.539764, 30.098427>,  <25.707073, 34.316727, 30.155771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639507, 34.539764, 30.098427>,  <25.526896, 34.911495, 30.002851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639507, 34.539764, 30.098427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564324, 0.041038, 0.824533,
		-0.776067, -0.366967, -0.512889,
		0.281528, -0.929329, 0.238937,
		25.723967, 34.260967, 30.170107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139872, 34.905506, 30.522861>,  <25.526896, 34.911495, 30.002851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139872, 34.905506, 30.522861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327637, 34.552784, 30.504652>,  <25.440296, 34.341152, 30.493727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327637, 34.552784, 30.504652>,  <25.139872, 34.905506, 30.522861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327637, 34.552784, 30.504652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442687, -0.279637, 0.851957,
		-0.763989, -0.379768, -0.521629,
		0.469413, -0.881805, -0.045521,
		25.468460, 34.288242, 30.490995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620396, 34.307545, 30.600077>,  <25.139872, 34.905506, 30.522861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620396, 34.307545, 30.600077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995457, 34.241081, 30.722189>,  <25.220493, 34.201202, 30.795456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995457, 34.241081, 30.722189>,  <24.620396, 34.307545, 30.600077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995457, 34.241081, 30.722189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313448, -0.024733, 0.949283,
		-0.150183, -0.985789, -0.075274,
		0.937654, -0.166160, 0.305279,
		25.276752, 34.191235, 30.813772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.661123, 33.732613, 31.096542>,  <24.620396, 34.307545, 30.600077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.661123, 33.732613, 31.096542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960119, 33.994816, 31.139559>,  <25.139517, 34.152138, 31.165369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960119, 33.994816, 31.139559>,  <24.661123, 33.732613, 31.096542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960119, 33.994816, 31.139559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253280, 0.131584, 0.958402,
		0.614092, -0.743634, 0.264385,
		0.747489, 0.655511, 0.107542,
		25.184366, 34.191467, 31.171822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040678, 33.471321, 31.653276>,  <24.661123, 33.732613, 31.096542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040678, 33.471321, 31.653276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176455, 33.846176, 31.620886>,  <25.257921, 34.071087, 31.601452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176455, 33.846176, 31.620886>,  <25.040678, 33.471321, 31.653276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176455, 33.846176, 31.620886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061186, 0.107905, 0.992276,
		0.938635, -0.331865, 0.093967,
		0.339441, 0.937135, -0.080978,
		25.278286, 34.127316, 31.596592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355244, 33.489494, 32.249744>,  <25.040678, 33.471321, 31.653276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355244, 33.489494, 32.249744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352863, 33.877888, 32.154114>,  <25.351435, 34.110924, 32.096737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352863, 33.877888, 32.154114>,  <25.355244, 33.489494, 32.249744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352863, 33.877888, 32.154114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083905, 0.238723, 0.967456,
		0.996456, -0.014303, -0.082891,
		-0.005950, 0.970982, -0.239078,
		25.351078, 34.169182, 32.082390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744919, 33.312199, 31.613960>,  <25.355244, 33.489494, 32.249744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744919, 33.312199, 31.613960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483135, 33.188625, 31.337919>,  <25.326065, 33.114479, 31.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483135, 33.188625, 31.337919>,  <25.744919, 33.312199, 31.613960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483135, 33.188625, 31.337919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697844, 0.104512, -0.708583,
		0.291033, -0.945322, 0.147192,
		-0.654456, -0.308938, -0.690104,
		25.286798, 33.095943, 31.130888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039505, 32.698654, 31.323807>,  <25.744919, 33.312199, 31.613960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039505, 32.698654, 31.323807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800194, 32.866383, 31.050680>,  <25.656607, 32.967018, 30.886805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800194, 32.866383, 31.050680>,  <26.039505, 32.698654, 31.323807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800194, 32.866383, 31.050680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721182, -0.089610, -0.686925,
		-0.349227, -0.903406, -0.248793,
		-0.598278, 0.419318, -0.682814,
		25.620710, 32.992180, 30.845837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577164, 32.395840, 31.558388>,  <26.039505, 32.698654, 31.323807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577164, 32.395840, 31.558388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578428, 32.778687, 31.442513>,  <26.579187, 33.008396, 31.372988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578428, 32.778687, 31.442513>,  <26.577164, 32.395840, 31.558388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578428, 32.778687, 31.442513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084748, 0.288905, 0.953600,
		0.996397, 0.021537, 0.082026,
		0.003160, 0.957116, -0.289689,
		26.579376, 33.065823, 31.355606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683203, 32.215702, 32.379082>,  <26.577164, 32.395840, 31.558388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683203, 32.215702, 32.379082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919418, 32.285603, 32.694225>,  <27.061148, 32.327545, 32.883312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919418, 32.285603, 32.694225>,  <26.683203, 32.215702, 32.379082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919418, 32.285603, 32.694225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803841, -0.213815, -0.555088,
		0.071454, 0.961116, -0.266739,
		0.590537, 0.174753, 0.787863,
		27.096579, 32.338028, 32.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335049, 32.001972, 32.020149>,  <26.683203, 32.215702, 32.379082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335049, 32.001972, 32.020149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433584, 32.185520, 32.361618>,  <27.492706, 32.295650, 32.566498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433584, 32.185520, 32.361618>,  <27.335049, 32.001972, 32.020149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433584, 32.185520, 32.361618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966618, -0.180368, -0.181980,
		0.070469, 0.870002, -0.487986,
		0.246340, 0.458872, 0.853670,
		27.507486, 32.323181, 32.617718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883558, 32.564949, 31.914185>,  <27.335049, 32.001972, 32.020149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883558, 32.564949, 31.914185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884243, 32.413017, 32.284206>,  <27.884653, 32.321857, 32.506218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884243, 32.413017, 32.284206>,  <27.883558, 32.564949, 31.914185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884243, 32.413017, 32.284206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948865, -0.291402, -0.121407,
		0.315677, 0.877959, 0.359912,
		0.001711, -0.379833, 0.925053,
		27.884756, 32.299068, 32.561722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499245, 32.670383, 32.268322>,  <27.883558, 32.564949, 31.914185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499245, 32.670383, 32.268322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357452, 32.341309, 32.446098>,  <28.272377, 32.143864, 32.552765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357452, 32.341309, 32.446098>,  <28.499245, 32.670383, 32.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357452, 32.341309, 32.446098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836011, -0.491745, -0.243460,
		0.418843, 0.285256, 0.862090,
		-0.354480, -0.822689, 0.444441,
		28.251108, 32.094501, 32.579430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879705, 32.565758, 32.960964>,  <28.499245, 32.670383, 32.268322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879705, 32.565758, 32.960964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790495, 32.272251, 32.704266>,  <28.736969, 32.096146, 32.550247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790495, 32.272251, 32.704266>,  <28.879705, 32.565758, 32.960964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790495, 32.272251, 32.704266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950020, -0.311139, 0.025592,
		-0.218452, -0.603968, 0.766487,
		-0.223027, -0.733768, -0.641750,
		28.723587, 32.052120, 32.511742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119455, 31.948889, 33.213661>,  <28.879705, 32.565758, 32.960964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119455, 31.948889, 33.213661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077454, 31.851143, 32.828068>,  <29.052252, 31.792496, 32.596714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077454, 31.851143, 32.828068>,  <29.119455, 31.948889, 33.213661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077454, 31.851143, 32.828068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853015, -0.520427, 0.039007,
		-0.511214, -0.818194, 0.263095,
		-0.105007, -0.244365, -0.963981,
		29.045952, 31.777834, 32.538872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083426, 31.225079, 33.083656>,  <29.119455, 31.948889, 33.213661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083426, 31.225079, 33.083656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237099, 31.355171, 32.738026>,  <29.329302, 31.433228, 32.530647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237099, 31.355171, 32.738026>,  <29.083426, 31.225079, 33.083656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237099, 31.355171, 32.738026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739219, -0.669068, 0.076835,
		-0.553136, -0.668260, -0.497462,
		0.384182, 0.325233, -0.864076,
		29.352354, 31.452742, 32.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053169, 30.687668, 32.641487>,  <29.083426, 31.225079, 33.083656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053169, 30.687668, 32.641487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362381, 30.914726, 32.528206>,  <29.547909, 31.050961, 32.460239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362381, 30.914726, 32.528206>,  <29.053169, 30.687668, 32.641487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362381, 30.914726, 32.528206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613705, -0.782205, 0.107341,
		-0.160589, -0.256779, -0.953035,
		0.773031, 0.567645, -0.283200,
		29.594290, 31.085020, 32.443245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398420, 30.314049, 32.121639>,  <29.053169, 30.687668, 32.641487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398420, 30.314049, 32.121639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672394, 30.564146, 32.271275>,  <29.836777, 30.714205, 32.361053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672394, 30.564146, 32.271275>,  <29.398420, 30.314049, 32.121639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672394, 30.564146, 32.271275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642491, -0.760431, 0.094609,
		0.343620, 0.175546, -0.922556,
		0.684931, 0.625243, 0.374085,
		29.877872, 30.751719, 32.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151037, 30.272322, 31.848152>,  <29.398420, 30.314049, 32.121639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151037, 30.272322, 31.848152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158514, 30.401014, 32.226810>,  <30.163000, 30.478230, 32.454006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158514, 30.401014, 32.226810>,  <30.151037, 30.272322, 31.848152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158514, 30.401014, 32.226810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609322, -0.754337, 0.244341,
		0.792702, 0.572246, -0.210136,
		0.018690, 0.321731, 0.946647,
		30.164122, 30.497534, 32.510803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797192, 30.152945, 31.966114>,  <30.151037, 30.272322, 31.848152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797192, 30.152945, 31.966114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666475, 30.209175, 32.339947>,  <30.588045, 30.242914, 32.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666475, 30.209175, 32.339947>,  <30.797192, 30.152945, 31.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666475, 30.209175, 32.339947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612008, -0.722061, 0.322606,
		0.720177, 0.677397, 0.149927,
		-0.326789, 0.140576, 0.934584,
		30.568439, 30.251348, 32.620323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263088, 30.321529, 32.559608>,  <30.797192, 30.152945, 31.966114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263088, 30.321529, 32.559608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951851, 30.100000, 32.678169>,  <30.765108, 29.967083, 32.749306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951851, 30.100000, 32.678169>,  <31.263088, 30.321529, 32.559608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951851, 30.100000, 32.678169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626660, -0.651897, 0.426999,
		-0.043259, 0.517987, 0.854294,
		-0.778091, -0.553823, 0.296401,
		30.718424, 29.933853, 32.767090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081873, 29.549561, 32.494644>,  <31.263088, 30.321529, 32.559608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081873, 29.549561, 32.494644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317234, 29.520369, 32.816750>,  <31.458450, 29.502853, 33.010014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317234, 29.520369, 32.816750>,  <31.081873, 29.549561, 32.494644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317234, 29.520369, 32.816750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764527, 0.273986, 0.583464,
		-0.263212, -0.958961, 0.105420,
		0.588403, -0.072978, 0.805268,
		31.493755, 29.498476, 33.058331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692045, 29.156179, 32.953392>,  <31.081873, 29.549561, 32.494644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692045, 29.156179, 32.953392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959345, 29.403660, 33.118633>,  <31.119724, 29.552149, 33.217777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959345, 29.403660, 33.118633>,  <30.692045, 29.156179, 32.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959345, 29.403660, 33.118633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743027, 0.527590, 0.411777,
		0.036818, -0.582116, 0.812272,
		0.668248, 0.618701, 0.413102,
		31.159819, 29.589270, 33.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458633, 29.302279, 33.596943>,  <30.692045, 29.156179, 32.953392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458633, 29.302279, 33.596943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680330, 29.600588, 33.449081>,  <30.813349, 29.779573, 33.360367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680330, 29.600588, 33.449081>,  <30.458633, 29.302279, 33.596943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680330, 29.600588, 33.449081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667689, 0.663519, 0.337540,
		0.496997, 0.059731, 0.865694,
		0.554243, 0.745771, -0.369648,
		30.846603, 29.824320, 33.338188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054132, 29.917727, 33.770607>,  <30.458633, 29.302279, 33.596943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054132, 29.917727, 33.770607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359438, 30.053844, 33.550926>,  <30.542622, 30.135515, 33.419117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359438, 30.053844, 33.550926>,  <30.054132, 29.917727, 33.770607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359438, 30.053844, 33.550926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467203, 0.877848, -0.105376,
		0.446261, 0.337021, 0.829017,
		0.763265, 0.340294, -0.549206,
		30.588417, 30.155933, 33.386166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077030, 30.638685, 33.762558>,  <30.054132, 29.917727, 33.770607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077030, 30.638685, 33.762558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245289, 30.517839, 33.420380>,  <30.346245, 30.445332, 33.215073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245289, 30.517839, 33.420380>,  <30.077030, 30.638685, 33.762558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245289, 30.517839, 33.420380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247705, 0.868849, -0.428654,
		0.872754, 0.392209, 0.290643,
		0.420647, -0.302116, -0.855443,
		30.371483, 30.427204, 33.163746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559555, 31.162508, 33.499180>,  <30.077030, 30.638685, 33.762558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559555, 31.162508, 33.499180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474455, 30.956415, 33.167091>,  <30.423395, 30.832760, 32.967838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474455, 30.956415, 33.167091>,  <30.559555, 31.162508, 33.499180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474455, 30.956415, 33.167091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203441, 0.854414, -0.478108,
		0.955693, 0.067184, -0.286597,
		-0.212752, -0.515231, -0.830226,
		30.410629, 30.801846, 32.918022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752352, 31.537392, 32.889267>,  <30.559555, 31.162508, 33.499180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752352, 31.537392, 32.889267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477478, 31.303921, 32.716248>,  <30.312553, 31.163837, 32.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477478, 31.303921, 32.716248>,  <30.752352, 31.537392, 32.889267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477478, 31.303921, 32.716248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382030, 0.796760, -0.468216,
		0.617922, -0.156506, -0.770505,
		-0.687186, -0.583677, -0.432546,
		30.271322, 31.128819, 32.586483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687950, 31.811041, 32.294212>,  <30.752352, 31.537392, 32.889267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687950, 31.811041, 32.294212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344995, 31.610321, 32.339970>,  <30.139223, 31.489889, 32.367424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344995, 31.610321, 32.339970>,  <30.687950, 31.811041, 32.294212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344995, 31.610321, 32.339970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507464, 0.861302, -0.025260,
		-0.085849, -0.079707, -0.993115,
		-0.857385, -0.501802, 0.114391,
		30.087780, 31.459780, 32.374287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324673, 32.190739, 31.752588>,  <30.687950, 31.811041, 32.294212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324673, 32.190739, 31.752588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105827, 31.970375, 32.004673>,  <29.974520, 31.838158, 32.155922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105827, 31.970375, 32.004673>,  <30.324673, 32.190739, 31.752588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105827, 31.970375, 32.004673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737270, 0.673657, -0.051171,
		-0.396355, -0.492632, -0.774736,
		-0.547115, -0.550908, 0.630211,
		29.941692, 31.805103, 32.193737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173470, 32.950993, 31.859646>,  <30.324673, 32.190739, 31.752588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173470, 32.950993, 31.859646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168386, 32.656769, 32.130581>,  <30.165337, 32.480232, 32.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168386, 32.656769, 32.130581>,  <30.173470, 32.950993, 31.859646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168386, 32.656769, 32.130581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969301, 0.157285, 0.188990,
		-0.245549, 0.658947, 0.710981,
		-0.012708, -0.735561, 0.677339,
		30.164574, 32.436100, 32.333782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446545, 33.280132, 32.436951>,  <30.173470, 32.950993, 31.859646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446545, 33.280132, 32.436951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487490, 32.884079, 32.398689>,  <30.512056, 32.646446, 32.375732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487490, 32.884079, 32.398689>,  <30.446545, 33.280132, 32.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487490, 32.884079, 32.398689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994430, 0.104285, -0.015308,
		0.025133, -0.093554, 0.995297,
		0.102362, -0.990138, -0.095654,
		30.518198, 32.587036, 32.369991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937296, 33.093464, 32.867023>,  <30.446545, 33.280132, 32.436951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937296, 33.093464, 32.867023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927134, 32.771305, 32.630146>,  <30.921036, 32.578011, 32.488018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927134, 32.771305, 32.630146>,  <30.937296, 33.093464, 32.867023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927134, 32.771305, 32.630146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952072, -0.200120, 0.231323,
		-0.304816, -0.557936, 0.771877,
		-0.025405, -0.805394, -0.592195,
		30.919512, 32.529686, 32.452488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383553, 32.666725, 33.211872>,  <30.937296, 33.093464, 32.867023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383553, 32.666725, 33.211872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387363, 32.550346, 32.829197>,  <31.389650, 32.480518, 32.599590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387363, 32.550346, 32.829197>,  <31.383553, 32.666725, 33.211872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387363, 32.550346, 32.829197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959715, -0.266017, 0.090458,
		-0.280814, -0.919013, 0.276691,
		0.009528, -0.290946, -0.956692,
		31.390223, 32.463062, 32.542191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804159, 33.233444, 33.315594>,  <31.383553, 32.666725, 33.211872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804159, 33.233444, 33.315594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946299, 33.323669, 33.678436>,  <32.031582, 33.377804, 33.896141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946299, 33.323669, 33.678436>,  <31.804159, 33.233444, 33.315594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946299, 33.323669, 33.678436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259109, 0.908647, -0.327449,
		-0.898103, 0.351399, 0.264441,
		0.355349, 0.225564, 0.907110,
		32.052902, 33.391338, 33.950569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612265, 33.889206, 33.339436>,  <31.804159, 33.233444, 33.315594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612265, 33.889206, 33.339436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919634, 33.810894, 33.583138>,  <32.104057, 33.763908, 33.729359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919634, 33.810894, 33.583138>,  <31.612265, 33.889206, 33.339436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919634, 33.810894, 33.583138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408364, 0.883028, -0.231302,
		-0.492708, 0.426537, 0.758488,
		0.768425, -0.195776, 0.609257,
		32.150162, 33.752163, 33.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588362, 34.214592, 32.664581>,  <31.612265, 33.889206, 33.339436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588362, 34.214592, 32.664581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567028, 34.070580, 32.292015>,  <31.554228, 33.984173, 32.068474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567028, 34.070580, 32.292015>,  <31.588362, 34.214592, 32.664581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567028, 34.070580, 32.292015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896605, 0.393360, -0.203391,
		0.439608, -0.845959, 0.301823,
		-0.053335, -0.360029, -0.931415,
		31.551027, 33.962570, 32.012589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189304, 33.953697, 32.540665>,  <31.588362, 34.214592, 32.664581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189304, 33.953697, 32.540665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069359, 34.030338, 32.166847>,  <31.997393, 34.076321, 31.942556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069359, 34.030338, 32.166847>,  <32.189304, 33.953697, 32.540665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069359, 34.030338, 32.166847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932832, 0.264028, -0.245180,
		0.199769, -0.945293, -0.257902,
		-0.299860, 0.191600, -0.934544,
		31.979401, 34.087818, 31.886484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543381, 33.566216, 32.026463>,  <32.189304, 33.953697, 32.540665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543381, 33.566216, 32.026463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416756, 33.925243, 31.903723>,  <32.340782, 34.140659, 31.830078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416756, 33.925243, 31.903723>,  <32.543381, 33.566216, 32.026463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416756, 33.925243, 31.903723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944303, 0.267536, -0.191613,
		-0.089892, -0.350420, -0.932269,
		-0.316561, 0.897569, -0.306854,
		32.321789, 34.194515, 31.811666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704296, 33.835289, 31.258472>,  <32.543381, 33.566216, 32.026463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704296, 33.835289, 31.258472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691162, 34.140984, 31.516113>,  <32.683281, 34.324398, 31.670698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691162, 34.140984, 31.516113>,  <32.704296, 33.835289, 31.258472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691162, 34.140984, 31.516113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971398, 0.176044, -0.159354,
		-0.235174, 0.620448, -0.748156,
		-0.032838, 0.764234, 0.644103,
		32.681313, 34.370255, 31.709345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153526, 34.376846, 31.044779>,  <32.704296, 33.835289, 31.258472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153526, 34.376846, 31.044779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305618, 34.615314, 31.327623>,  <33.396873, 34.758396, 31.497330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305618, 34.615314, 31.327623>,  <33.153526, 34.376846, 31.044779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305618, 34.615314, 31.327623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924680, -0.261389, -0.276843,
		0.019786, 0.759117, -0.650654,
		0.380230, 0.596169, 0.707112,
		33.419685, 34.794167, 31.539757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442562, 34.073460, 31.680111>,  <33.153526, 34.376846, 31.044779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442562, 34.073460, 31.680111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840755, 34.089573, 31.714485>,  <34.079674, 34.099239, 31.735109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840755, 34.089573, 31.714485>,  <33.442562, 34.073460, 31.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840755, 34.089573, 31.714485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083487, -0.059003, 0.994761,
		0.045144, -0.997445, -0.055373,
		0.995486, 0.040285, 0.085937,
		34.139400, 34.101658, 31.740267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563038, 33.543056, 32.119202>,  <33.442562, 34.073460, 31.680111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563038, 33.543056, 32.119202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869152, 33.799644, 32.140560>,  <34.052822, 33.953598, 32.153378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869152, 33.799644, 32.140560>,  <33.563038, 33.543056, 32.119202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869152, 33.799644, 32.140560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022098, -0.109092, 0.993786,
		0.643309, -0.759352, -0.097662,
		0.765288, 0.641469, 0.053399,
		34.098740, 33.992085, 32.156582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893291, 33.262550, 32.603260>,  <33.563038, 33.543056, 32.119202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893291, 33.262550, 32.603260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005577, 33.646435, 32.598267>,  <34.072948, 33.876766, 32.595268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005577, 33.646435, 32.598267>,  <33.893291, 33.262550, 32.603260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005577, 33.646435, 32.598267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076994, 0.035485, 0.996400,
		0.956699, -0.278741, 0.083853,
		0.280713, 0.959710, -0.012487,
		34.089790, 33.934349, 32.594521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271538, 33.410973, 33.184071>,  <33.893291, 33.262550, 32.603260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271538, 33.410973, 33.184071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135170, 33.777855, 33.101597>,  <34.053349, 33.997982, 33.052113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135170, 33.777855, 33.101597>,  <34.271538, 33.410973, 33.184071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135170, 33.777855, 33.101597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037417, 0.205910, 0.977855,
		0.939346, 0.341089, -0.035880,
		-0.340924, 0.917202, -0.206183,
		34.032894, 34.053017, 33.039742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478992, 33.804665, 33.736511>,  <34.271538, 33.410973, 33.184071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478992, 33.804665, 33.736511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194637, 34.018013, 33.553139>,  <34.024025, 34.146023, 33.443115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194637, 34.018013, 33.553139>,  <34.478992, 33.804665, 33.736511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194637, 34.018013, 33.553139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160600, 0.511493, 0.844146,
		0.684726, 0.673715, -0.277954,
		-0.710885, 0.533370, -0.458431,
		33.981373, 34.178024, 33.415611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671768, 34.552094, 33.616558>,  <34.478992, 33.804665, 33.736511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671768, 34.552094, 33.616558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284187, 34.479221, 33.683434>,  <34.051640, 34.435497, 33.723557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284187, 34.479221, 33.683434>,  <34.671768, 34.552094, 33.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284187, 34.479221, 33.683434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044298, 0.537298, 0.842228,
		-0.243265, 0.823481, -0.512544,
		-0.968948, -0.182180, 0.167184,
		33.993504, 34.424568, 33.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258747, 35.161911, 33.899422>,  <34.671768, 34.552094, 33.616558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258747, 35.161911, 33.899422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010216, 34.854980, 33.962883>,  <33.861099, 34.670822, 34.000957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010216, 34.854980, 33.962883>,  <34.258747, 35.161911, 33.899422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010216, 34.854980, 33.962883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500476, 0.544428, 0.673144,
		-0.602893, 0.338840, -0.722293,
		-0.621325, -0.767324, 0.158650,
		33.823818, 34.624783, 34.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565899, 35.369602, 33.736801>,  <34.258747, 35.161911, 33.899422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565899, 35.369602, 33.736801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587704, 35.078018, 34.009754>,  <33.600788, 34.903069, 34.173527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587704, 35.078018, 34.009754>,  <33.565899, 35.369602, 33.736801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587704, 35.078018, 34.009754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459191, 0.588549, 0.665398,
		-0.886664, -0.349617, -0.302648,
		0.054511, -0.728957, 0.682386,
		33.604057, 34.859333, 34.214470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971779, 34.956059, 33.146561>,  <33.565899, 35.369602, 33.736801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971779, 34.956059, 33.146561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189384, 34.630405, 33.065327>,  <34.319946, 34.435013, 33.016586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189384, 34.630405, 33.065327>,  <33.971779, 34.956059, 33.146561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189384, 34.630405, 33.065327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010924, 0.235145, -0.971899,
		0.839008, 0.530941, 0.119028,
		0.544010, -0.814131, -0.203088,
		34.352589, 34.386166, 33.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503193, 35.207211, 32.592041>,  <33.971779, 34.956059, 33.146561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503193, 35.207211, 32.592041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409534, 34.818344, 32.588860>,  <34.353340, 34.585022, 32.586952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409534, 34.818344, 32.588860>,  <34.503193, 35.207211, 32.592041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409534, 34.818344, 32.588860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158563, -0.030120, -0.986889,
		0.959184, -0.232336, 0.161203,
		-0.234145, -0.972169, -0.007950,
		34.339291, 34.526695, 32.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033466, 34.829174, 32.205055>,  <34.503193, 35.207211, 32.592041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033466, 34.829174, 32.205055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731762, 34.566551, 32.203136>,  <34.550739, 34.408978, 32.201984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731762, 34.566551, 32.203136>,  <35.033466, 34.829174, 32.205055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731762, 34.566551, 32.203136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150099, -0.165309, -0.974753,
		0.639184, -0.735942, 0.223234,
		-0.754264, -0.656554, -0.004801,
		34.505482, 34.369587, 32.201694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414787, 34.198658, 31.910921>,  <35.033466, 34.829174, 32.205055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414787, 34.198658, 31.910921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019176, 34.195911, 31.851887>,  <34.781811, 34.194263, 31.816465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019176, 34.195911, 31.851887>,  <35.414787, 34.198658, 31.910921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019176, 34.195911, 31.851887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147669, -0.078595, -0.985909,
		-0.004826, -0.996883, 0.078747,
		-0.989025, -0.006871, -0.147588,
		34.722469, 34.193851, 31.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135769, 33.547829, 31.476135>,  <35.414787, 34.198658, 31.910921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135769, 33.547829, 31.476135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927670, 33.885445, 31.424076>,  <34.802811, 34.088017, 31.392839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927670, 33.885445, 31.424076>,  <35.135769, 33.547829, 31.476135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927670, 33.885445, 31.424076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262825, 0.013235, -0.964753,
		-0.812570, -0.536113, -0.228721,
		-0.520244, 0.844042, -0.130150,
		34.771595, 34.138657, 31.385031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578522, 33.443539, 30.868326>,  <35.135769, 33.547829, 31.476135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578522, 33.443539, 30.868326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688087, 33.827866, 30.851389>,  <34.753826, 34.058464, 30.841227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688087, 33.827866, 30.851389>,  <34.578522, 33.443539, 30.868326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688087, 33.827866, 30.851389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206472, -0.101746, -0.973148,
		-0.939330, 0.257816, -0.226252,
		0.273914, 0.960822, -0.042342,
		34.770260, 34.116112, 30.838686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110188, 33.807602, 30.443844>,  <34.578522, 33.443539, 30.868326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110188, 33.807602, 30.443844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447121, 34.022621, 30.428225>,  <34.649281, 34.151634, 30.418852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447121, 34.022621, 30.428225>,  <34.110188, 33.807602, 30.443844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447121, 34.022621, 30.428225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079517, -0.195609, -0.977453,
		-0.533065, 0.820232, -0.207511,
		0.842329, 0.537547, -0.039050,
		34.699818, 34.183884, 30.416510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093605, 34.278107, 29.834618>,  <34.110188, 33.807602, 30.443844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093605, 34.278107, 29.834618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478703, 34.277950, 29.942789>,  <34.709759, 34.277855, 30.007692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478703, 34.277950, 29.942789>,  <34.093605, 34.278107, 29.834618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478703, 34.277950, 29.942789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267471, -0.146074, -0.952429,
		0.039876, 0.989274, -0.140527,
		0.962741, -0.000392, 0.270427,
		34.767525, 34.277832, 30.023916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361359, 34.797146, 29.473267>,  <34.093605, 34.278107, 29.834618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361359, 34.797146, 29.473267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672695, 34.554859, 29.539341>,  <34.859497, 34.409485, 29.578985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672695, 34.554859, 29.539341>,  <34.361359, 34.797146, 29.473267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672695, 34.554859, 29.539341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290000, 0.113498, -0.950273,
		0.556851, 0.787541, 0.263999,
		0.778343, -0.605720, 0.165185,
		34.906197, 34.373142, 29.588896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027668, 35.101265, 29.189077>,  <34.361359, 34.797146, 29.473267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027668, 35.101265, 29.189077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093502, 34.707405, 29.212332>,  <35.133003, 34.471088, 29.226284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093502, 34.707405, 29.212332>,  <35.027668, 35.101265, 29.189077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093502, 34.707405, 29.212332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309456, -0.004417, -0.950904,
		0.936561, 0.174499, 0.303978,
		0.164589, -0.984648, 0.058137,
		35.142879, 34.412010, 29.229773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748455, 35.043289, 28.967920>,  <35.027668, 35.101265, 29.189077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748455, 35.043289, 28.967920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570457, 34.687630, 28.925211>,  <35.463661, 34.474236, 28.899586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570457, 34.687630, 28.925211>,  <35.748455, 35.043289, 28.967920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570457, 34.687630, 28.925211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332533, -0.053353, -0.941581,
		0.831507, -0.454501, 0.319413,
		-0.444992, -0.889147, -0.106773,
		35.436958, 34.420887, 28.893179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301456, 34.527405, 28.728771>,  <35.748455, 35.043289, 28.967920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301456, 34.527405, 28.728771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970707, 34.335041, 28.612150>,  <35.772259, 34.219624, 28.542177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970707, 34.335041, 28.612150>,  <36.301456, 34.527405, 28.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970707, 34.335041, 28.612150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332720, -0.000370, -0.943025,
		0.453406, -0.876768, 0.160316,
		-0.826874, -0.480914, -0.291551,
		35.722645, 34.190765, 28.524685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545250, 33.898087, 28.412245>,  <36.301456, 34.527405, 28.728771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545250, 33.898087, 28.412245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179123, 33.985058, 28.276640>,  <35.959446, 34.037239, 28.195278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179123, 33.985058, 28.276640>,  <36.545250, 33.898087, 28.412245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179123, 33.985058, 28.276640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350265, 0.014279, -0.936542,
		-0.198788, -0.975973, -0.089226,
		-0.915313, 0.217426, -0.339010,
		35.904530, 34.050285, 28.174936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549946, 33.596382, 27.812046>,  <36.545250, 33.898087, 28.412245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549946, 33.596382, 27.812046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230480, 33.833500, 27.770618>,  <36.038799, 33.975773, 27.745762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230480, 33.833500, 27.770618>,  <36.549946, 33.596382, 27.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230480, 33.833500, 27.770618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197239, 0.095267, -0.975716,
		-0.568534, -0.799698, -0.193010,
		-0.798665, 0.592797, -0.103569,
		35.990879, 34.011337, 27.739548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107258, 33.339382, 27.166496>,  <36.549946, 33.596382, 27.812046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107258, 33.339382, 27.166496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053307, 33.730480, 27.230766>,  <36.020935, 33.965141, 27.269327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053307, 33.730480, 27.230766>,  <36.107258, 33.339382, 27.166496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053307, 33.730480, 27.230766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009079, 0.163367, -0.986524,
		-0.990820, -0.131604, -0.030912,
		-0.134880, 0.977748, 0.160673,
		36.012844, 34.023804, 27.278969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067238, 33.529598, 26.480516>,  <36.107258, 33.339382, 27.166496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067238, 33.529598, 26.480516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050488, 33.903618, 26.621334>,  <36.040440, 34.128029, 26.705824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050488, 33.903618, 26.621334>,  <36.067238, 33.529598, 26.480516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050488, 33.903618, 26.621334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037148, 0.350651, -0.935769,
		-0.998432, -0.052262, 0.020052,
		-0.041874, 0.935047, 0.352042,
		36.037926, 34.184132, 26.726946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558098, 33.893482, 26.061302>,  <36.067238, 33.529598, 26.480516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558098, 33.893482, 26.061302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792747, 34.164452, 26.238827>,  <35.933537, 34.327034, 26.345341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792747, 34.164452, 26.238827>,  <35.558098, 33.893482, 26.061302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792747, 34.164452, 26.238827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099097, 0.483849, -0.869523,
		-0.803774, 0.554063, 0.216706,
		0.586623, 0.677425, 0.443811,
		35.968735, 34.367680, 26.371969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200214, 34.549393, 25.991753>,  <35.558098, 33.893482, 26.061302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200214, 34.549393, 25.991753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597233, 34.583641, 26.026461>,  <35.835442, 34.604191, 26.047285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597233, 34.583641, 26.026461>,  <35.200214, 34.549393, 25.991753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597233, 34.583641, 26.026461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053001, 0.337898, -0.939689,
		-0.109773, 0.937280, 0.330840,
		0.992543, 0.085618, 0.086769,
		35.894997, 34.609325, 26.052492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339813, 35.011276, 25.457087>,  <35.200214, 34.549393, 25.991753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339813, 35.011276, 25.457087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706360, 34.875137, 25.541403>,  <35.926289, 34.793453, 25.591991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706360, 34.875137, 25.541403>,  <35.339813, 35.011276, 25.457087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706360, 34.875137, 25.541403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333813, 0.358952, -0.871620,
		0.220991, 0.869090, 0.442545,
		0.916369, -0.340347, 0.210789,
		35.981270, 34.773033, 25.604639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785645, 35.661938, 25.368057>,  <35.339813, 35.011276, 25.457087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785645, 35.661938, 25.368057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050343, 35.363636, 25.337217>,  <36.209160, 35.184654, 25.318712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050343, 35.363636, 25.337217>,  <35.785645, 35.661938, 25.368057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050343, 35.363636, 25.337217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433190, 0.464263, -0.772532,
		0.611913, 0.477821, 0.630277,
		0.661746, -0.745753, -0.077101,
		36.248867, 35.139912, 25.314087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364574, 36.051891, 25.336823>,  <35.785645, 35.661938, 25.368057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364574, 36.051891, 25.336823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487057, 35.693058, 25.209396>,  <36.560547, 35.477760, 25.132940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487057, 35.693058, 25.209396>,  <36.364574, 36.051891, 25.336823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487057, 35.693058, 25.209396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356827, 0.418400, -0.835234,
		0.882559, 0.142083, 0.448220,
		0.306208, -0.897081, -0.318564,
		36.578918, 35.423935, 25.113827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098793, 36.156837, 25.104271>,  <36.364574, 36.051891, 25.336823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098793, 36.156837, 25.104271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963821, 35.831528, 24.914652>,  <36.882839, 35.636341, 24.800880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963821, 35.831528, 24.914652>,  <37.098793, 36.156837, 25.104271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963821, 35.831528, 24.914652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411720, 0.325357, -0.851252,
		0.846538, -0.482415, 0.225055,
		-0.337433, -0.813276, -0.474047,
		36.862591, 35.587543, 24.772438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667545, 35.832886, 24.848572>,  <37.098793, 36.156837, 25.104271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667545, 35.832886, 24.848572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369980, 35.669743, 24.636816>,  <37.191441, 35.571857, 24.509764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369980, 35.669743, 24.636816>,  <37.667545, 35.832886, 24.848572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369980, 35.669743, 24.636816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522361, 0.139205, -0.841285,
		0.416815, -0.902373, 0.109491,
		-0.743911, -0.407854, -0.529388,
		37.146805, 35.547386, 24.478001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934792, 35.310024, 24.361834>,  <37.667545, 35.832886, 24.848572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934792, 35.310024, 24.361834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586159, 35.399776, 24.187477>,  <37.376980, 35.453629, 24.082863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586159, 35.399776, 24.187477>,  <37.934792, 35.310024, 24.361834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586159, 35.399776, 24.187477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466956, 0.109134, -0.877520,
		-0.149330, -0.968371, -0.199896,
		-0.871580, 0.224383, -0.435890,
		37.324684, 35.467091, 24.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003933, 35.099194, 23.753117>,  <37.934792, 35.310024, 24.361834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003933, 35.099194, 23.753117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685085, 35.335648, 23.703869>,  <37.493774, 35.477520, 23.674320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685085, 35.335648, 23.703869>,  <38.003933, 35.099194, 23.753117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685085, 35.335648, 23.703869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357312, 0.297425, -0.885362,
		-0.486749, -0.749733, -0.448303,
		-0.797122, 0.591133, -0.123117,
		37.445950, 35.512989, 23.666933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839615, 35.059963, 23.033136>,  <38.003933, 35.099194, 23.753117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839615, 35.059963, 23.033136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646267, 35.392929, 23.141541>,  <37.530258, 35.592709, 23.206583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646267, 35.392929, 23.141541>,  <37.839615, 35.059963, 23.033136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646267, 35.392929, 23.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009434, 0.304609, -0.952431,
		-0.875367, -0.462930, -0.139385,
		-0.483366, 0.832412, 0.271012,
		37.501259, 35.642654, 23.222843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244732, 35.175781, 22.531755>,  <37.839615, 35.059963, 23.033136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244732, 35.175781, 22.531755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318691, 35.532391, 22.697163>,  <37.363068, 35.746357, 22.796408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318691, 35.532391, 22.697163>,  <37.244732, 35.175781, 22.531755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318691, 35.532391, 22.697163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088954, 0.434230, -0.896399,
		-0.978724, 0.128958, 0.159593,
		0.184897, 0.891524, 0.413519,
		37.374161, 35.799847, 22.821218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875912, 35.602833, 22.116400>,  <37.244732, 35.175781, 22.531755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875912, 35.602833, 22.116400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138752, 35.868698, 22.258635>,  <37.296455, 36.028217, 22.343975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138752, 35.868698, 22.258635>,  <36.875912, 35.602833, 22.116400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138752, 35.868698, 22.258635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028298, 0.449641, -0.892761,
		-0.753275, 0.596692, 0.276649,
		0.657096, 0.664666, 0.355589,
		37.335880, 36.068096, 22.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844501, 36.275906, 21.730665>,  <36.875912, 35.602833, 22.116400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844501, 36.275906, 21.730665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193253, 36.336430, 21.916967>,  <37.402504, 36.372746, 22.028749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193253, 36.336430, 21.916967>,  <36.844501, 36.275906, 21.730665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193253, 36.336430, 21.916967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348347, 0.476853, -0.807010,
		-0.344206, 0.865861, 0.363051,
		0.871881, 0.151310, 0.465756,
		37.454819, 36.381824, 22.056694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993999, 37.019611, 21.599319>,  <36.844501, 36.275906, 21.730665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993999, 37.019611, 21.599319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332546, 36.831127, 21.698616>,  <37.535675, 36.718037, 21.758194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332546, 36.831127, 21.698616>,  <36.993999, 37.019611, 21.599319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332546, 36.831127, 21.698616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494333, 0.521524, -0.695448,
		0.198238, 0.711318, 0.674335,
		0.846367, -0.471210, 0.248242,
		37.586456, 36.689766, 21.773088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437466, 37.501972, 21.849777>,  <36.993999, 37.019611, 21.599319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437466, 37.501972, 21.849777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661018, 37.195866, 21.722015>,  <37.795151, 37.012203, 21.645359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661018, 37.195866, 21.722015>,  <37.437466, 37.501972, 21.849777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661018, 37.195866, 21.722015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555898, 0.631559, -0.540473,
		0.615327, 0.124505, 0.778377,
		0.558883, -0.765266, -0.319403,
		37.828682, 36.966286, 21.626194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047302, 37.782494, 21.931675>,  <37.437466, 37.501972, 21.849777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047302, 37.782494, 21.931675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082207, 37.488426, 21.662777>,  <38.103149, 37.311985, 21.501438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082207, 37.488426, 21.662777>,  <38.047302, 37.782494, 21.931675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082207, 37.488426, 21.662777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566837, 0.591566, -0.573363,
		0.819196, -0.331022, 0.468341,
		0.087259, -0.735169, -0.672244,
		38.108383, 37.267876, 21.461103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776348, 37.602543, 21.787437>,  <38.047302, 37.782494, 21.931675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776348, 37.602543, 21.787437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574711, 37.474213, 21.466698>,  <38.453728, 37.397217, 21.274254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574711, 37.474213, 21.466698>,  <38.776348, 37.602543, 21.787437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574711, 37.474213, 21.466698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611158, 0.523499, -0.593662,
		0.610229, -0.789317, -0.067817,
		-0.504089, -0.320823, -0.801852,
		38.423485, 37.377964, 21.226143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302238, 37.445255, 21.300180>,  <38.776348, 37.602543, 21.787437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302238, 37.445255, 21.300180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962292, 37.509842, 21.099520>,  <38.758324, 37.548592, 20.979122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962292, 37.509842, 21.099520>,  <39.302238, 37.445255, 21.300180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962292, 37.509842, 21.099520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503189, 0.531504, -0.681399,
		0.156609, -0.831524, -0.532954,
		-0.849867, 0.161463, -0.501653,
		38.707333, 37.558281, 20.949024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504814, 37.456066, 20.632929>,  <39.302238, 37.445255, 21.300180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504814, 37.456066, 20.632929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150185, 37.637360, 20.595917>,  <38.937405, 37.746136, 20.573709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150185, 37.637360, 20.595917>,  <39.504814, 37.456066, 20.632929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150185, 37.637360, 20.595917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363442, 0.558748, -0.745460,
		-0.286168, -0.694536, -0.660097,
		-0.886577, 0.453233, -0.092528,
		38.884212, 37.773331, 20.568159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356266, 37.401501, 19.874592>,  <39.504814, 37.456066, 20.632929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356266, 37.401501, 19.874592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152283, 37.702126, 20.041973>,  <39.029892, 37.882500, 20.142401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152283, 37.702126, 20.041973>,  <39.356266, 37.401501, 19.874592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152283, 37.702126, 20.041973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243031, 0.592521, -0.768020,
		-0.825154, -0.289960, -0.484813,
		-0.509957, 0.751559, 0.418452,
		38.999294, 37.927593, 20.167509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106865, 37.855648, 19.271944>,  <39.356266, 37.401501, 19.874592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106865, 37.855648, 19.271944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064751, 38.077419, 19.602161>,  <39.039482, 38.210484, 19.800293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064751, 38.077419, 19.602161>,  <39.106865, 37.855648, 19.271944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064751, 38.077419, 19.602161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265404, 0.815714, -0.513976,
		-0.958371, 0.164988, -0.233032,
		-0.105287, 0.554428, 0.825545,
		39.033165, 38.243748, 19.849825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618690, 38.406494, 18.977203>,  <39.106865, 37.855648, 19.271944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618690, 38.406494, 18.977203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841412, 38.523438, 19.288202>,  <38.975044, 38.593605, 19.474802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841412, 38.523438, 19.288202>,  <38.618690, 38.406494, 18.977203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841412, 38.523438, 19.288202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272855, 0.819697, -0.503634,
		-0.784553, 0.492567, 0.376635,
		0.556800, 0.292361, 0.777495,
		39.008453, 38.611145, 19.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423832, 39.019733, 19.034515>,  <38.618690, 38.406494, 18.977203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423832, 39.019733, 19.034515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767181, 39.024025, 19.239679>,  <38.973190, 39.026600, 19.362778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767181, 39.024025, 19.239679>,  <38.423832, 39.019733, 19.034515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767181, 39.024025, 19.239679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226749, 0.888887, -0.398075,
		-0.460190, 0.458000, 0.760567,
		0.858377, 0.010733, 0.512908,
		39.024693, 39.027245, 19.393551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444977, 39.736877, 19.199999>,  <38.423832, 39.019733, 19.034515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444977, 39.736877, 19.199999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823990, 39.617565, 19.245964>,  <39.051399, 39.545979, 19.273544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823990, 39.617565, 19.245964>,  <38.444977, 39.736877, 19.199999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823990, 39.617565, 19.245964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319626, 0.888517, -0.329208,
		-0.003907, 0.348666, 0.937239,
		0.947536, -0.298279, 0.114914,
		39.108250, 39.528080, 19.280437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917286, 40.354511, 19.332052>,  <38.444977, 39.736877, 19.199999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917286, 40.354511, 19.332052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147221, 40.062847, 19.183519>,  <39.285183, 39.887848, 19.094400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147221, 40.062847, 19.183519>,  <38.917286, 40.354511, 19.332052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147221, 40.062847, 19.183519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544826, 0.679650, -0.491162,
		0.610511, 0.080027, 0.787954,
		0.574839, -0.729158, -0.371333,
		39.319672, 39.844101, 19.072119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518917, 40.700478, 19.384029>,  <38.917286, 40.354511, 19.332052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518917, 40.700478, 19.384029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558193, 40.415726, 19.105867>,  <39.581757, 40.244877, 18.938971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558193, 40.415726, 19.105867>,  <39.518917, 40.700478, 19.384029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558193, 40.415726, 19.105867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396343, 0.668945, -0.628828,
		0.912837, -0.213877, 0.347828,
		0.098187, -0.711877, -0.695407,
		39.587650, 40.202164, 18.897245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202908, 40.720036, 19.188635>,  <39.518917, 40.700478, 19.384029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202908, 40.720036, 19.188635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001617, 40.545719, 18.890144>,  <39.880844, 40.441128, 18.711050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001617, 40.545719, 18.890144>,  <40.202908, 40.720036, 19.188635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001617, 40.545719, 18.890144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533417, 0.522735, -0.664991,
		0.679874, -0.732690, -0.030596,
		-0.503227, -0.435790, -0.746224,
		39.850651, 40.414982, 18.666277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702080, 40.709442, 18.714514>,  <40.202908, 40.720036, 19.188635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702080, 40.709442, 18.714514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353485, 40.672684, 18.521822>,  <40.144329, 40.650631, 18.406206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353485, 40.672684, 18.521822>,  <40.702080, 40.709442, 18.714514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353485, 40.672684, 18.521822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232687, 0.787205, -0.571109,
		0.431702, -0.609807, -0.664657,
		-0.871487, -0.091892, -0.481732,
		40.092037, 40.645115, 18.377302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916542, 40.813427, 18.070988>,  <40.702080, 40.709442, 18.714514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916542, 40.813427, 18.070988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525230, 40.879318, 18.020645>,  <40.290443, 40.918854, 17.990440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525230, 40.879318, 18.020645>,  <40.916542, 40.813427, 18.070988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525230, 40.879318, 18.020645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206140, 0.708807, -0.674610,
		-0.021919, -0.685900, -0.727366,
		-0.978277, 0.164726, -0.125855,
		40.231747, 40.928738, 17.982889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780998, 40.907051, 17.363087>,  <40.916542, 40.813427, 18.070988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780998, 40.907051, 17.363087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468792, 41.087482, 17.536209>,  <40.281467, 41.195740, 17.640083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468792, 41.087482, 17.536209>,  <40.780998, 40.907051, 17.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468792, 41.087482, 17.536209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119940, 0.787537, -0.604483,
		-0.613519, -0.419900, -0.668789,
		-0.780519, 0.451076, 0.432806,
		40.234634, 41.222805, 17.666050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367416, 41.151810, 16.868860>,  <40.780998, 40.907051, 17.363087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367416, 41.151810, 16.868860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293751, 41.399162, 17.174456>,  <40.249550, 41.547573, 17.357813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293751, 41.399162, 17.174456>,  <40.367416, 41.151810, 16.868860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293751, 41.399162, 17.174456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029313, 0.773485, -0.633137,
		-0.982458, -0.138998, -0.124324,
		-0.184168, 0.618386, 0.763990,
		40.238499, 41.584679, 17.403652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101566, 41.628735, 16.412146>,  <40.367416, 41.151810, 16.868860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101566, 41.628735, 16.412146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114578, 41.812000, 16.767454>,  <40.122387, 41.921959, 16.980640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114578, 41.812000, 16.767454>,  <40.101566, 41.628735, 16.412146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114578, 41.812000, 16.767454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220332, 0.863591, -0.453503,
		-0.974882, 0.210467, -0.072856,
		0.032529, 0.458164, 0.888272,
		40.124336, 41.949451, 17.033936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634075, 42.120895, 16.499498>,  <40.101566, 41.628735, 16.412146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634075, 42.120895, 16.499498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950500, 42.220650, 16.722937>,  <40.140354, 42.280502, 16.857000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950500, 42.220650, 16.722937>,  <39.634075, 42.120895, 16.499498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950500, 42.220650, 16.722937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067076, 0.872266, -0.484410,
		-0.608047, 0.420667, 0.673289,
		0.791062, 0.249383, 0.558595,
		40.187820, 42.295464, 16.890514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474659, 42.618282, 17.027283>,  <39.634075, 42.120895, 16.499498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474659, 42.618282, 17.027283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833138, 42.629799, 16.850191>,  <40.048225, 42.636707, 16.743937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833138, 42.629799, 16.850191>,  <39.474659, 42.618282, 17.027283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833138, 42.629799, 16.850191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232854, 0.879924, -0.414142,
		0.377643, 0.474242, 0.795286,
		0.896194, 0.028788, -0.442727,
		40.101997, 42.638435, 16.717373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305500, 43.317886, 16.842875>,  <39.474659, 42.618282, 17.027283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305500, 43.317886, 16.842875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258358, 43.581131, 17.140329>,  <39.230072, 43.739079, 17.318802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258358, 43.581131, 17.140329>,  <39.305500, 43.317886, 16.842875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258358, 43.581131, 17.140329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318079, 0.734418, -0.599547,
		-0.940710, 0.165874, -0.295890,
		-0.117857, 0.658116, 0.743635,
		39.223000, 43.778564, 17.363420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125076, 43.863701, 16.435167>,  <39.305500, 43.317886, 16.842875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125076, 43.863701, 16.435167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227840, 44.022156, 16.787775>,  <39.289497, 44.117229, 16.999340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227840, 44.022156, 16.787775>,  <39.125076, 43.863701, 16.435167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227840, 44.022156, 16.787775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404872, 0.784118, -0.470359,
		-0.877540, 0.477742, 0.041065,
		0.256910, 0.396133, 0.881519,
		39.304913, 44.140995, 17.052231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322086, 44.576519, 16.406176>,  <39.125076, 43.863701, 16.435167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322086, 44.576519, 16.406176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079613, 44.681789, 16.105968>,  <38.934128, 44.744953, 15.925844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079613, 44.681789, 16.105968>,  <39.322086, 44.576519, 16.406176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079613, 44.681789, 16.105968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674771, 0.669681, -0.310179,
		0.420976, -0.694454, -0.583535,
		-0.606188, 0.263175, -0.750517,
		38.897755, 44.760742, 15.880814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840187, 44.677776, 16.089317>,  <39.322086, 44.576519, 16.406176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840187, 44.677776, 16.089317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513321, 44.813240, 15.902749>,  <39.317200, 44.894520, 15.790809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513321, 44.813240, 15.902749>,  <39.840187, 44.677776, 16.089317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513321, 44.813240, 15.902749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537230, 0.740700, -0.403420,
		0.208855, -0.580236, -0.787214,
		-0.817168, 0.338659, -0.466419,
		39.268169, 44.914837, 15.762823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087482, 44.906052, 16.779255>,  <39.840187, 44.677776, 16.089317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087482, 44.906052, 16.779255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749332, 45.020683, 16.959570>,  <39.546440, 45.089462, 17.067759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749332, 45.020683, 16.959570>,  <40.087482, 44.906052, 16.779255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749332, 45.020683, 16.959570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110857, -0.919657, 0.376752,
		0.522538, 0.268525, 0.809227,
		-0.845379, 0.286576, 0.450788,
		39.495720, 45.106655, 17.094807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137054, 44.697777, 17.559050>,  <40.087482, 44.906052, 16.779255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137054, 44.697777, 17.559050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749104, 44.702042, 17.461712>,  <39.516331, 44.704601, 17.403309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749104, 44.702042, 17.461712>,  <40.137054, 44.697777, 17.559050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749104, 44.702042, 17.461712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, -0.905684, 0.408750,
		-0.216034, 0.423819, 0.879606,
		-0.969881, 0.010666, -0.243345,
		39.458138, 44.705242, 17.388708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707779, 44.638786, 18.143812>,  <40.137054, 44.697777, 17.559050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707779, 44.638786, 18.143812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489796, 44.500160, 17.838419>,  <39.359005, 44.416985, 17.655184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489796, 44.500160, 17.838419>,  <39.707779, 44.638786, 18.143812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489796, 44.500160, 17.838419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264221, -0.793200, 0.548654,
		-0.795740, 0.500724, 0.340694,
		-0.544963, -0.346568, -0.763483,
		39.326305, 44.396191, 17.609373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016701, 44.715374, 18.320831>,  <39.707779, 44.638786, 18.143812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016701, 44.715374, 18.320831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054379, 44.424965, 18.048355>,  <39.076984, 44.250721, 17.884869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054379, 44.424965, 18.048355>,  <39.016701, 44.715374, 18.320831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054379, 44.424965, 18.048355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464046, -0.637374, 0.615155,
		-0.880789, 0.258163, -0.396941,
		0.094190, -0.726021, -0.681192,
		39.082634, 44.207157, 17.843998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306934, 44.389751, 18.285341>,  <39.016701, 44.715374, 18.320831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306934, 44.389751, 18.285341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638477, 44.168468, 18.251974>,  <38.837402, 44.035698, 18.231955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638477, 44.168468, 18.251974>,  <38.306934, 44.389751, 18.285341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638477, 44.168468, 18.251974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393569, -0.682532, 0.615835,
		-0.397621, -0.477608, -0.783446,
		0.828856, -0.553209, -0.083417,
		38.887135, 44.002506, 18.226950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086037, 43.628082, 18.171112>,  <38.306934, 44.389751, 18.285341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086037, 43.628082, 18.171112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458008, 43.607513, 18.316761>,  <38.681190, 43.595173, 18.404150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458008, 43.607513, 18.316761>,  <38.086037, 43.628082, 18.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458008, 43.607513, 18.316761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299282, -0.681189, 0.668141,
		0.213678, -0.730300, -0.648848,
		0.929931, -0.051422, 0.364121,
		38.736988, 43.592087, 18.425997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188606, 42.896427, 18.327759>,  <38.086037, 43.628082, 18.171112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188606, 42.896427, 18.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477272, 43.094128, 18.521629>,  <38.650471, 43.212749, 18.637951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477272, 43.094128, 18.521629>,  <38.188606, 42.896427, 18.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477272, 43.094128, 18.521629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039166, -0.728185, 0.684260,
		0.691133, -0.474824, -0.544864,
		0.721665, 0.494255, 0.484676,
		38.693771, 43.242405, 18.667032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729656, 42.364090, 18.578476>,  <38.188606, 42.896427, 18.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729656, 42.364090, 18.578476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799946, 42.694992, 18.791933>,  <38.842117, 42.893532, 18.920006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799946, 42.694992, 18.791933>,  <38.729656, 42.364090, 18.578476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799946, 42.694992, 18.791933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113691, -0.555501, 0.823707,
		0.977853, -0.084071, -0.191664,
		0.175720, 0.827255, 0.533640,
		38.852661, 42.943169, 18.952024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275906, 42.165039, 19.000793>,  <38.729656, 42.364090, 18.578476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275906, 42.165039, 19.000793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064770, 42.451164, 19.183973>,  <38.938087, 42.622837, 19.293882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064770, 42.451164, 19.183973>,  <39.275906, 42.165039, 19.000793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064770, 42.451164, 19.183973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187663, -0.427635, 0.884258,
		0.828353, 0.552686, 0.091486,
		-0.527839, 0.715309, 0.457951,
		38.906418, 42.665756, 19.321358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594425, 42.227497, 19.634203>,  <39.275906, 42.165039, 19.000793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594425, 42.227497, 19.634203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257648, 42.433514, 19.698542>,  <39.055584, 42.557125, 19.737144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257648, 42.433514, 19.698542>,  <39.594425, 42.227497, 19.634203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257648, 42.433514, 19.698542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033055, -0.346772, 0.937367,
		0.538558, 0.783890, 0.308986,
		-0.841940, 0.515040, 0.160845,
		39.005066, 42.588024, 19.746796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705711, 42.624264, 20.346746>,  <39.594425, 42.227497, 19.634203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705711, 42.624264, 20.346746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320686, 42.570351, 20.252670>,  <39.089672, 42.538002, 20.196224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320686, 42.570351, 20.252670>,  <39.705711, 42.624264, 20.346746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320686, 42.570351, 20.252670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195454, -0.256078, 0.946690,
		-0.187826, 0.957213, 0.220146,
		-0.962559, -0.134784, -0.235190,
		39.031918, 42.529915, 20.182114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296001, 43.042637, 20.826427>,  <39.705711, 42.624264, 20.346746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296001, 43.042637, 20.826427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068733, 42.746567, 20.682579>,  <38.932373, 42.568924, 20.596270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068733, 42.746567, 20.682579>,  <39.296001, 43.042637, 20.826427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068733, 42.746567, 20.682579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409963, -0.124323, 0.903590,
		-0.713521, 0.660825, -0.232806,
		-0.568171, -0.740172, -0.359621,
		38.898281, 42.524517, 20.574694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810570, 43.041512, 21.291319>,  <39.296001, 43.042637, 20.826427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810570, 43.041512, 21.291319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689316, 42.714653, 21.095203>,  <38.616562, 42.518539, 20.977535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689316, 42.714653, 21.095203>,  <38.810570, 43.041512, 21.291319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689316, 42.714653, 21.095203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448602, -0.331555, 0.829956,
		-0.840752, 0.471536, -0.266065,
		-0.303139, -0.817144, -0.490288,
		38.598373, 42.469509, 20.948116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082657, 42.860363, 21.453766>,  <38.810570, 43.041512, 21.291319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082657, 42.860363, 21.453766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243736, 42.513645, 21.336123>,  <38.340385, 42.305614, 21.265537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243736, 42.513645, 21.336123>,  <38.082657, 42.860363, 21.453766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243736, 42.513645, 21.336123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280523, -0.422724, 0.861749,
		-0.871286, -0.264523, -0.413387,
		0.402701, -0.866794, -0.294108,
		38.364548, 42.253609, 21.247890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556438, 42.359745, 21.461357>,  <38.082657, 42.860363, 21.453766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556438, 42.359745, 21.461357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894238, 42.146046, 21.476307>,  <38.096916, 42.017826, 21.485277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894238, 42.146046, 21.476307>,  <37.556438, 42.359745, 21.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894238, 42.146046, 21.476307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290121, -0.397708, 0.870435,
		-0.450169, -0.745924, -0.490862,
		0.844498, -0.534252, 0.037373,
		38.147587, 41.985771, 21.487520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490074, 41.633205, 21.552626>,  <37.556438, 42.359745, 21.461357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490074, 41.633205, 21.552626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858578, 41.678032, 21.701603>,  <38.079681, 41.704929, 21.790989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858578, 41.678032, 21.701603>,  <37.490074, 41.633205, 21.552626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858578, 41.678032, 21.701603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262587, -0.527193, 0.808156,
		0.286918, -0.842323, -0.456256,
		0.921263, 0.112068, 0.372444,
		38.134956, 41.711651, 21.813335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609112, 40.932274, 21.753506>,  <37.490074, 41.633205, 21.552626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609112, 40.932274, 21.753506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869270, 41.167763, 21.945501>,  <38.025364, 41.309055, 22.060699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869270, 41.167763, 21.945501>,  <37.609112, 40.932274, 21.753506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869270, 41.167763, 21.945501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072500, -0.580904, 0.810737,
		0.756127, -0.562100, -0.335136,
		0.650397, 0.588723, 0.479989,
		38.064388, 41.344379, 22.089499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120613, 40.417999, 21.994894>,  <37.609112, 40.932274, 21.753506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120613, 40.417999, 21.994894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165737, 40.760460, 22.196598>,  <38.192810, 40.965935, 22.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165737, 40.760460, 22.196598>,  <38.120613, 40.417999, 21.994894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165737, 40.760460, 22.196598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272595, -0.514692, 0.812886,
		0.955493, 0.045759, -0.291444,
		0.112807, 0.856153, 0.504259,
		38.199577, 41.017307, 22.347876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587227, 40.264175, 22.465700>,  <38.120613, 40.417999, 21.994894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587227, 40.264175, 22.465700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404633, 40.586575, 22.616426>,  <38.295074, 40.780014, 22.706861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404633, 40.586575, 22.616426>,  <38.587227, 40.264175, 22.465700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404633, 40.586575, 22.616426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046877, -0.401142, 0.914816,
		0.888493, 0.435267, 0.145334,
		-0.456489, 0.805995, 0.376816,
		38.267685, 40.828373, 22.729471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727577, 40.159241, 23.122393>,  <38.587227, 40.264175, 22.465700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727577, 40.159241, 23.122393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452824, 40.439911, 23.198124>,  <38.287971, 40.608315, 23.243563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452824, 40.439911, 23.198124>,  <38.727577, 40.159241, 23.122393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452824, 40.439911, 23.198124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157929, -0.398387, 0.903519,
		0.709404, 0.590709, 0.384459,
		-0.686880, 0.701677, 0.189327,
		38.246761, 40.650414, 23.254923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798580, 40.293476, 23.767878>,  <38.727577, 40.159241, 23.122393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798580, 40.293476, 23.767878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430492, 40.435509, 23.702019>,  <38.209641, 40.520729, 23.662502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430492, 40.435509, 23.702019>,  <38.798580, 40.293476, 23.767878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430492, 40.435509, 23.702019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339513, -0.514868, 0.787173,
		0.194739, 0.780274, 0.594347,
		-0.920222, 0.355082, -0.164648,
		38.154427, 40.542034, 23.652624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580624, 40.648415, 24.419924>,  <38.798580, 40.293476, 23.767878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580624, 40.648415, 24.419924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288944, 40.480988, 24.203382>,  <38.113937, 40.380531, 24.073458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288944, 40.480988, 24.203382>,  <38.580624, 40.648415, 24.419924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288944, 40.480988, 24.203382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313323, -0.499079, 0.807929,
		-0.608352, 0.758762, 0.232782,
		-0.729202, -0.418569, -0.541353,
		38.070183, 40.355415, 24.040976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092606, 40.567337, 24.876982>,  <38.580624, 40.648415, 24.419924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092606, 40.567337, 24.876982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950268, 40.323147, 24.593943>,  <37.864864, 40.176632, 24.424120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950268, 40.323147, 24.593943>,  <38.092606, 40.567337, 24.876982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950268, 40.323147, 24.593943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051416, -0.743220, 0.667069,
		-0.933131, 0.273752, 0.233079,
		-0.355840, -0.610479, -0.707597,
		37.843517, 40.140003, 24.381664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423691, 40.303123, 25.157824>,  <38.092606, 40.567337, 24.876982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423691, 40.303123, 25.157824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548820, 40.049595, 24.874863>,  <37.623898, 39.897480, 24.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548820, 40.049595, 24.874863>,  <37.423691, 40.303123, 25.157824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548820, 40.049595, 24.874863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114376, -0.764499, 0.634396,
		-0.942900, -0.117543, -0.311645,
		0.312821, -0.633817, -0.707403,
		37.642666, 39.859451, 24.662642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979053, 39.806313, 25.158176>,  <37.423691, 40.303123, 25.157824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979053, 39.806313, 25.158176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302982, 39.642902, 24.989748>,  <37.497337, 39.544857, 24.888691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302982, 39.642902, 24.989748>,  <36.979053, 39.806313, 25.158176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302982, 39.642902, 24.989748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048289, -0.761702, 0.646126,
		-0.584686, -0.502913, -0.636569,
		0.809821, -0.408520, -0.421071,
		37.545929, 39.520348, 24.863426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806831, 39.137196, 25.067680>,  <36.979053, 39.806313, 25.158176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806831, 39.137196, 25.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205128, 39.174061, 25.066519>,  <37.444107, 39.196182, 25.065823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205128, 39.174061, 25.066519>,  <36.806831, 39.137196, 25.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205128, 39.174061, 25.066519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070258, -0.737897, 0.671246,
		0.059726, -0.668590, -0.741229,
		0.995739, 0.092168, -0.002902,
		37.503849, 39.201710, 25.065649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030727, 38.417706, 25.041220>,  <36.806831, 39.137196, 25.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030727, 38.417706, 25.041220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315849, 38.633141, 25.220924>,  <37.486923, 38.762402, 25.328747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315849, 38.633141, 25.220924>,  <37.030727, 38.417706, 25.041220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315849, 38.633141, 25.220924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079504, -0.698473, 0.711206,
		0.696846, -0.471230, -0.540692,
		0.712801, 0.538588, 0.449264,
		37.529690, 38.794716, 25.355703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187618, 37.939716, 25.440218>,  <37.030727, 38.417706, 25.041220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187618, 37.939716, 25.440218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439072, 38.220390, 25.574354>,  <37.589943, 38.388794, 25.654835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439072, 38.220390, 25.574354>,  <37.187618, 37.939716, 25.440218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439072, 38.220390, 25.574354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154487, -0.535269, 0.830434,
		0.762204, -0.470233, -0.444889,
		0.628633, 0.701690, 0.335339,
		37.627663, 38.430897, 25.674955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831512, 37.568287, 25.621576>,  <37.187618, 37.939716, 25.440218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831512, 37.568287, 25.621576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821503, 37.920544, 25.810823>,  <37.815498, 38.131897, 25.924372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821503, 37.920544, 25.810823>,  <37.831512, 37.568287, 25.621576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821503, 37.920544, 25.810823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145292, -0.465036, 0.873288,
		0.989072, 0.090593, -0.116313,
		-0.025024, 0.880644, 0.473117,
		37.813995, 38.184738, 25.952759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260395, 37.468040, 26.227015>,  <37.831512, 37.568287, 25.621576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260395, 37.468040, 26.227015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057133, 37.799145, 26.322165>,  <37.935173, 37.997807, 26.379255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057133, 37.799145, 26.322165>,  <38.260395, 37.468040, 26.227015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057133, 37.799145, 26.322165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069150, -0.314514, 0.946731,
		0.858483, 0.464640, 0.217063,
		-0.508159, 0.827762, 0.237875,
		37.904686, 38.047474, 26.393528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575443, 37.754635, 26.853748>,  <38.260395, 37.468040, 26.227015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575443, 37.754635, 26.853748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205605, 37.905075, 26.829502>,  <37.983704, 37.995338, 26.814955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205605, 37.905075, 26.829502>,  <38.575443, 37.754635, 26.853748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205605, 37.905075, 26.829502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201966, -0.349021, 0.915092,
		0.323015, 0.858329, 0.398663,
		-0.924592, 0.376105, -0.060614,
		37.928226, 38.017906, 26.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481762, 38.007511, 27.581839>,  <38.575443, 37.754635, 26.853748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481762, 38.007511, 27.581839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135864, 37.944130, 27.391214>,  <37.928326, 37.906101, 27.276840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135864, 37.944130, 27.391214>,  <38.481762, 38.007511, 27.581839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135864, 37.944130, 27.391214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434122, -0.241256, 0.867948,
		-0.252503, 0.957438, 0.139835,
		-0.864743, -0.158454, -0.476563,
		37.876442, 37.896595, 27.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011345, 38.323063, 28.003490>,  <38.481762, 38.007511, 27.581839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011345, 38.323063, 28.003490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794510, 38.063747, 27.789625>,  <37.664410, 37.908157, 27.661306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794510, 38.063747, 27.789625>,  <38.011345, 38.323063, 28.003490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794510, 38.063747, 27.789625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474559, -0.288913, 0.831459,
		-0.693493, 0.704455, -0.151033,
		-0.542090, -0.648285, -0.534664,
		37.631882, 37.869263, 27.629227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249428, 38.369213, 28.328352>,  <38.011345, 38.323063, 28.003490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249428, 38.369213, 28.328352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287495, 38.026997, 28.124788>,  <37.310337, 37.821667, 28.002651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287495, 38.026997, 28.124788>,  <37.249428, 38.369213, 28.328352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287495, 38.026997, 28.124788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549594, -0.471408, 0.689725,
		-0.829993, 0.214052, -0.515066,
		0.095169, -0.855544, -0.508908,
		37.316044, 37.770332, 27.972116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569447, 38.159176, 28.258440>,  <37.249428, 38.369213, 28.328352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569447, 38.159176, 28.258440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787159, 37.826317, 28.215942>,  <36.917786, 37.626602, 28.190443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787159, 37.826317, 28.215942>,  <36.569447, 38.159176, 28.258440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787159, 37.826317, 28.215942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633276, -0.490622, 0.598541,
		-0.550203, -0.258490, -0.794015,
		0.544278, -0.832150, -0.106246,
		36.950443, 37.576672, 28.184069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085781, 37.696270, 28.106743>,  <36.569447, 38.159176, 28.258440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085781, 37.696270, 28.106743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405647, 37.469269, 28.185205>,  <36.597569, 37.333069, 28.232283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405647, 37.469269, 28.185205>,  <36.085781, 37.696270, 28.106743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405647, 37.469269, 28.185205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583626, -0.657838, 0.476056,
		-0.141124, -0.495167, -0.857259,
		0.799665, -0.567501, 0.196156,
		36.645546, 37.299019, 28.244053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945457, 37.077335, 27.820454>,  <36.085781, 37.696270, 28.106743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945457, 37.077335, 27.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203506, 37.027321, 28.121965>,  <36.358337, 36.997311, 28.302872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203506, 37.027321, 28.121965>,  <35.945457, 37.077335, 27.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203506, 37.027321, 28.121965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657885, -0.592619, 0.464748,
		0.388593, -0.795719, -0.464571,
		0.645122, -0.125036, 0.753779,
		36.397045, 36.989811, 28.348099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777107, 36.361462, 28.134235>,  <35.945457, 37.077335, 27.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777107, 36.361462, 28.134235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007893, 36.534485, 28.411366>,  <36.146362, 36.638298, 28.577644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007893, 36.534485, 28.411366>,  <35.777107, 36.361462, 28.134235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007893, 36.534485, 28.411366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482180, -0.504277, 0.716385,
		0.659257, -0.747392, -0.082375,
		0.576960, 0.432562, 0.692826,
		36.180981, 36.664253, 28.619213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924946, 35.853626, 28.554672>,  <35.777107, 36.361462, 28.134235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924946, 35.853626, 28.554672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973881, 36.184628, 28.773857>,  <36.003242, 36.383228, 28.905369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973881, 36.184628, 28.773857>,  <35.924946, 35.853626, 28.554672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973881, 36.184628, 28.773857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522287, -0.415801, 0.744530,
		0.843949, -0.377280, 0.381327,
		0.122340, 0.827508, 0.547963,
		36.010582, 36.432880, 28.938246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129807, 35.609867, 29.251040>,  <35.924946, 35.853626, 28.554672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129807, 35.609867, 29.251040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974209, 35.976063, 29.292160>,  <35.880852, 36.195778, 29.316832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974209, 35.976063, 29.292160>,  <36.129807, 35.609867, 29.251040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974209, 35.976063, 29.292160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613127, -0.340561, 0.712807,
		0.687575, 0.214248, 0.693786,
		-0.388994, 0.915487, 0.102800,
		35.857510, 36.250710, 29.323000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227470, 35.792458, 29.904739>,  <36.129807, 35.609867, 29.251040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227470, 35.792458, 29.904739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938889, 36.055553, 29.818127>,  <35.765739, 36.213409, 29.766159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938889, 36.055553, 29.818127>,  <36.227470, 35.792458, 29.904739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938889, 36.055553, 29.818127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579824, -0.402851, 0.708177,
		0.378567, 0.636465, 0.672011,
		-0.721450, 0.657741, -0.216532,
		35.722454, 36.252876, 29.753166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143387, 36.129711, 30.698872>,  <36.227470, 35.792458, 29.904739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143387, 36.129711, 30.698872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828781, 36.234138, 30.475002>,  <35.640018, 36.296795, 30.340681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828781, 36.234138, 30.475002>,  <36.143387, 36.129711, 30.698872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828781, 36.234138, 30.475002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611536, -0.202843, 0.764774,
		0.086135, 0.943767, 0.319194,
		-0.786514, 0.261073, -0.559675,
		35.592827, 36.312462, 30.307100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891335, 36.872940, 30.939381>,  <36.143387, 36.129711, 30.698872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891335, 36.872940, 30.939381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582161, 36.691849, 30.761570>,  <35.396656, 36.583195, 30.654884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582161, 36.691849, 30.761570>,  <35.891335, 36.872940, 30.939381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582161, 36.691849, 30.761570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429135, -0.143028, 0.891844,
		-0.467345, 0.880101, -0.083731,
		-0.772937, -0.452731, -0.444526,
		35.350281, 36.556030, 30.628212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629993, 37.620979, 31.160557>,  <35.891335, 36.872940, 30.939381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629993, 37.620979, 31.160557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896591, 37.624081, 31.458744>,  <36.056549, 37.625942, 31.637657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896591, 37.624081, 31.458744>,  <35.629993, 37.620979, 31.160557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896591, 37.624081, 31.458744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554946, 0.662555, -0.503046,
		-0.497814, 0.748973, 0.437289,
		0.666496, 0.007751, 0.745469,
		36.096539, 37.626408, 31.682384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772083, 38.408077, 31.302414>,  <35.629993, 37.620979, 31.160557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772083, 38.408077, 31.302414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068089, 38.175156, 31.437054>,  <36.245693, 38.035404, 31.517838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068089, 38.175156, 31.437054>,  <35.772083, 38.408077, 31.302414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068089, 38.175156, 31.437054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669914, 0.593544, -0.446005,
		0.059923, 0.555544, 0.829325,
		0.740016, -0.582303, 0.336599,
		36.290092, 38.000465, 31.538033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244274, 38.825634, 31.761126>,  <35.772083, 38.408077, 31.302414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244274, 38.825634, 31.761126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432034, 38.525497, 31.574938>,  <36.544689, 38.345417, 31.463226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432034, 38.525497, 31.574938>,  <36.244274, 38.825634, 31.761126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432034, 38.525497, 31.574938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583344, 0.659249, -0.474448,
		0.662856, -0.048824, 0.747153,
		0.469396, -0.750338, -0.465468,
		36.572853, 38.300396, 31.435297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893402, 39.140419, 31.673889>,  <36.244274, 38.825634, 31.761126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893402, 39.140419, 31.673889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908493, 38.820518, 31.434231>,  <36.917549, 38.628578, 31.290436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908493, 38.820518, 31.434231>,  <36.893402, 39.140419, 31.673889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908493, 38.820518, 31.434231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604454, 0.495713, -0.623622,
		0.795746, -0.338628, 0.502114,
		0.037729, -0.799750, -0.599147,
		36.919811, 38.580593, 31.254486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580078, 39.031425, 31.483223>,  <36.893402, 39.140419, 31.673889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580078, 39.031425, 31.483223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375591, 38.835979, 31.200403>,  <37.252899, 38.718712, 31.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375591, 38.835979, 31.200403>,  <37.580078, 39.031425, 31.483223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375591, 38.835979, 31.200403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546362, 0.450285, -0.706210,
		0.663437, -0.747328, 0.036768,
		-0.511214, -0.488615, -0.707047,
		37.222225, 38.689396, 30.988289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010849, 38.888931, 31.045033>,  <37.580078, 39.031425, 31.483223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010849, 38.888931, 31.045033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715378, 38.819550, 30.784489>,  <37.538094, 38.777920, 30.628162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715378, 38.819550, 30.784489>,  <38.010849, 38.888931, 31.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715378, 38.819550, 30.784489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559124, 0.382037, -0.735818,
		0.376454, -0.907728, -0.185238,
		-0.738690, -0.173430, -0.651352,
		37.493774, 38.767513, 30.589081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263107, 38.537872, 30.456511>,  <38.010849, 38.888931, 31.045033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263107, 38.537872, 30.456511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954193, 38.759697, 30.332558>,  <37.768845, 38.892792, 30.258186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954193, 38.759697, 30.332558>,  <38.263107, 38.537872, 30.456511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954193, 38.759697, 30.332558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504922, 0.239823, -0.829180,
		-0.385518, -0.796832, -0.465225,
		-0.772289, 0.554566, -0.309882,
		37.722507, 38.926067, 30.239594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365757, 38.409790, 29.748312>,  <38.263107, 38.537872, 30.456511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365757, 38.409790, 29.748312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110126, 38.712318, 29.804264>,  <37.956749, 38.893833, 29.837835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110126, 38.712318, 29.804264>,  <38.365757, 38.409790, 29.748312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110126, 38.712318, 29.804264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422832, 0.497387, -0.757509,
		-0.642491, -0.424961, -0.637663,
		-0.639077, 0.756316, 0.139879,
		37.918404, 38.939213, 29.846228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053997, 38.528385, 29.099474>,  <38.365757, 38.409790, 29.748312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053997, 38.528385, 29.099474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994083, 38.861706, 29.312330>,  <37.958134, 39.061699, 29.440044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994083, 38.861706, 29.312330>,  <38.053997, 38.528385, 29.099474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994083, 38.861706, 29.312330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344630, 0.548463, -0.761852,
		-0.926711, 0.069278, -0.369332,
		-0.149786, 0.833300, 0.532142,
		37.949146, 39.111694, 29.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740025, 38.886135, 28.590073>,  <38.053997, 38.528385, 29.099474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740025, 38.886135, 28.590073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882690, 39.147125, 28.857525>,  <37.968288, 39.303719, 29.017996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882690, 39.147125, 28.857525>,  <37.740025, 38.886135, 28.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882690, 39.147125, 28.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421249, 0.526493, -0.738481,
		-0.833870, 0.545049, -0.087073,
		0.356665, 0.652477, 0.668628,
		37.989689, 39.342869, 29.058113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561142, 39.415096, 28.348421>,  <37.740025, 38.886135, 28.590073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561142, 39.415096, 28.348421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851952, 39.540596, 28.592714>,  <38.026440, 39.615894, 28.739290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851952, 39.540596, 28.592714>,  <37.561142, 39.415096, 28.348421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851952, 39.540596, 28.592714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278502, 0.678280, -0.679980,
		-0.627590, 0.664454, 0.405749,
		0.727026, 0.313747, 0.610733,
		38.070061, 39.634720, 28.775934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543987, 40.108246, 28.310724>,  <37.561142, 39.415096, 28.348421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543987, 40.108246, 28.310724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910587, 40.046188, 28.458218>,  <38.130547, 40.008953, 28.546713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910587, 40.046188, 28.458218>,  <37.543987, 40.108246, 28.310724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910587, 40.046188, 28.458218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373542, 0.661777, -0.650013,
		-0.143176, 0.733473, 0.664469,
		0.916497, -0.155140, 0.368734,
		38.185535, 39.999645, 28.568838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792957, 40.704037, 28.420624>,  <37.543987, 40.108246, 28.310724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792957, 40.704037, 28.420624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120895, 40.479424, 28.375832>,  <38.317657, 40.344654, 28.348957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120895, 40.479424, 28.375832>,  <37.792957, 40.704037, 28.420624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120895, 40.479424, 28.375832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359446, 0.656954, -0.662729,
		0.445710, 0.503082, 0.740440,
		0.819842, -0.561533, -0.111980,
		38.366848, 40.310963, 28.342237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395718, 41.068558, 28.433886>,  <37.792957, 40.704037, 28.420624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395718, 41.068558, 28.433886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543228, 40.746159, 28.248686>,  <38.631733, 40.552719, 28.137566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543228, 40.746159, 28.248686>,  <38.395718, 41.068558, 28.433886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543228, 40.746159, 28.248686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385241, 0.585843, -0.713006,
		0.845927, 0.084575, 0.526550,
		0.368778, -0.806000, -0.462998,
		38.653862, 40.504360, 28.109787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093433, 41.295017, 28.246992>,  <38.395718, 41.068558, 28.433886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093433, 41.295017, 28.246992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007259, 40.980183, 28.015793>,  <38.955555, 40.791283, 27.877073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007259, 40.980183, 28.015793>,  <39.093433, 41.295017, 28.246992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007259, 40.980183, 28.015793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326764, 0.499669, -0.802219,
		0.920225, -0.361691, 0.149548,
		-0.215431, -0.787090, -0.577996,
		38.942631, 40.744057, 27.842394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554611, 41.260818, 27.805689>,  <39.093433, 41.295017, 28.246992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554611, 41.260818, 27.805689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307331, 41.023979, 27.598906>,  <39.158962, 40.881874, 27.474834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307331, 41.023979, 27.598906>,  <39.554611, 41.260818, 27.805689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307331, 41.023979, 27.598906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384290, 0.346055, -0.855901,
		0.685674, -0.727781, 0.013606,
		-0.618200, -0.592098, -0.516961,
		39.121872, 40.846352, 27.443817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950607, 41.070797, 27.177061>,  <39.554611, 41.260818, 27.805689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950607, 41.070797, 27.177061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574341, 40.981274, 27.075043>,  <39.348579, 40.927559, 27.013832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574341, 40.981274, 27.075043>,  <39.950607, 41.070797, 27.177061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574341, 40.981274, 27.075043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206307, 0.219517, -0.953546,
		0.269402, -0.949590, -0.160319,
		-0.940670, -0.223812, -0.255045,
		39.292141, 40.914131, 26.998529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941608, 40.682854, 26.496927>,  <39.950607, 41.070797, 27.177061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941608, 40.682854, 26.496927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585457, 40.857601, 26.548117>,  <39.371765, 40.962448, 26.578831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585457, 40.857601, 26.548117>,  <39.941608, 40.682854, 26.496927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585457, 40.857601, 26.548117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047848, 0.369380, -0.928046,
		-0.452702, -0.820188, -0.349791,
		-0.890377, 0.436865, 0.127974,
		39.318344, 40.988659, 26.586510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458038, 40.561550, 25.849466>,  <39.941608, 40.682854, 26.496927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458038, 40.561550, 25.849466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349361, 40.905830, 26.021687>,  <39.284157, 41.112400, 26.125019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349361, 40.905830, 26.021687>,  <39.458038, 40.561550, 25.849466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349361, 40.905830, 26.021687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079426, 0.465908, -0.881261,
		-0.959102, -0.205232, -0.194945,
		-0.271689, 0.860703, 0.430552,
		39.267853, 41.164040, 26.150852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963474, 40.835728, 25.410069>,  <39.458038, 40.561550, 25.849466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963474, 40.835728, 25.410069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073849, 41.160847, 25.615292>,  <39.140072, 41.355919, 25.738424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073849, 41.160847, 25.615292>,  <38.963474, 40.835728, 25.410069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073849, 41.160847, 25.615292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114812, 0.502086, -0.857163,
		-0.954295, 0.295425, 0.045223,
		0.275933, 0.812794, 0.513056,
		39.156628, 41.404686, 25.769209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459484, 41.448524, 25.239237>,  <38.963474, 40.835728, 25.410069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459484, 41.448524, 25.239237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780636, 41.631855, 25.391724>,  <38.973328, 41.741852, 25.483215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780636, 41.631855, 25.391724>,  <38.459484, 41.448524, 25.239237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780636, 41.631855, 25.391724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050352, 0.585051, -0.809432,
		-0.594014, 0.669069, 0.446647,
		0.802877, 0.458324, 0.381218,
		39.021500, 41.769352, 25.506088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441887, 42.214439, 24.993870>,  <38.459484, 41.448524, 25.239237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441887, 42.214439, 24.993870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820587, 42.184315, 25.119081>,  <39.047810, 42.166241, 25.194208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820587, 42.184315, 25.119081>,  <38.441887, 42.214439, 24.993870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820587, 42.184315, 25.119081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301434, 0.548937, -0.779619,
		-0.113120, 0.832464, 0.542409,
		0.946753, -0.075310, 0.313028,
		39.104614, 42.161720, 25.212990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791687, 42.879734, 25.006077>,  <38.441887, 42.214439, 24.993870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791687, 42.879734, 25.006077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054127, 42.586472, 24.934502>,  <39.211590, 42.410515, 24.891556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054127, 42.586472, 24.934502>,  <38.791687, 42.879734, 25.006077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054127, 42.586472, 24.934502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405362, 0.542364, -0.735882,
		0.636564, 0.410278, 0.653038,
		0.656100, -0.733153, -0.178938,
		39.250957, 42.366528, 24.880819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223122, 43.248207, 24.776779>,  <38.791687, 42.879734, 25.006077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223122, 43.248207, 24.776779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378628, 42.892162, 24.681648>,  <39.471931, 42.678535, 24.624569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378628, 42.892162, 24.681648>,  <39.223122, 43.248207, 24.776779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378628, 42.892162, 24.681648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569594, 0.435095, -0.697320,
		0.724171, 0.135629, 0.676152,
		0.388767, -0.890111, -0.237829,
		39.495258, 42.625130, 24.610300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777744, 43.452831, 24.519464>,  <39.223122, 43.248207, 24.776779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777744, 43.452831, 24.519464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773418, 43.078243, 24.379229>,  <39.770821, 42.853493, 24.295088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773418, 43.078243, 24.379229>,  <39.777744, 43.452831, 24.519464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773418, 43.078243, 24.379229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350712, 0.324784, -0.878360,
		0.936421, -0.132457, 0.324917,
		-0.010817, -0.936467, -0.350589,
		39.770172, 42.797302, 24.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358757, 43.404808, 24.094549>,  <39.777744, 43.452831, 24.519464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358757, 43.404808, 24.094549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156158, 43.084297, 23.967161>,  <40.034599, 42.891991, 23.890728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156158, 43.084297, 23.967161>,  <40.358757, 43.404808, 24.094549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156158, 43.084297, 23.967161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338510, 0.154908, -0.928124,
		0.793014, -0.577897, 0.192779,
		-0.506497, -0.801273, -0.318468,
		40.004208, 42.843914, 23.871620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849010, 42.993889, 23.764284>,  <40.358757, 43.404808, 24.094549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849010, 42.993889, 23.764284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474316, 42.944290, 23.633347>,  <40.249500, 42.914532, 23.554783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474316, 42.944290, 23.633347>,  <40.849010, 42.993889, 23.764284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474316, 42.944290, 23.633347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307076, 0.157810, -0.938510,
		0.168044, -0.979652, -0.109744,
		-0.936731, -0.124011, -0.327347,
		40.193295, 42.907089, 23.535143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873978, 42.586430, 23.239702>,  <40.849010, 42.993889, 23.764284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873978, 42.586430, 23.239702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515285, 42.747574, 23.166409>,  <40.300068, 42.844261, 23.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515285, 42.747574, 23.166409>,  <40.873978, 42.586430, 23.239702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515285, 42.747574, 23.166409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237550, 0.088803, -0.967308,
		-0.373417, -0.910944, -0.175332,
		-0.896733, 0.402859, -0.183234,
		40.246265, 42.868431, 23.111439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704903, 42.191574, 22.698795>,  <40.873978, 42.586430, 23.239702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704903, 42.191574, 22.698795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491619, 42.529900, 22.705523>,  <40.363651, 42.732895, 22.709558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491619, 42.529900, 22.705523>,  <40.704903, 42.191574, 22.698795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491619, 42.529900, 22.705523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286967, 0.199536, -0.936929,
		-0.795828, -0.494749, -0.349116,
		-0.533206, 0.845818, 0.016820,
		40.331657, 42.783646, 22.710569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318130, 42.321682, 21.977715>,  <40.704903, 42.191574, 22.698795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318130, 42.321682, 21.977715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368130, 42.672478, 22.163301>,  <40.398129, 42.882954, 22.274654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368130, 42.672478, 22.163301>,  <40.318130, 42.321682, 21.977715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368130, 42.672478, 22.163301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405535, 0.381629, -0.830603,
		-0.905493, 0.291977, -0.307948,
		0.124995, 0.876989, 0.463969,
		40.405628, 42.935574, 22.302492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216389, 42.772972, 21.397619>,  <40.318130, 42.321682, 21.977715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216389, 42.772972, 21.397619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356075, 43.011772, 21.686516>,  <40.439888, 43.155052, 21.859854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356075, 43.011772, 21.686516>,  <40.216389, 42.772972, 21.397619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356075, 43.011772, 21.686516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466126, 0.557961, -0.686590,
		-0.812880, 0.576425, -0.083430,
		0.349217, 0.597005, 0.722242,
		40.460842, 43.190872, 21.903189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075825, 43.390072, 21.149469>,  <40.216389, 42.772972, 21.397619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075825, 43.390072, 21.149469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381004, 43.431435, 21.404722>,  <40.564114, 43.456253, 21.557875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381004, 43.431435, 21.404722>,  <40.075825, 43.390072, 21.149469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381004, 43.431435, 21.404722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553080, 0.406627, -0.727157,
		-0.334677, 0.907723, 0.253042,
		0.762950, 0.103411, 0.638132,
		40.609890, 43.462460, 21.596163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254864, 44.036446, 21.045301>,  <40.075825, 43.390072, 21.149469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254864, 44.036446, 21.045301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571342, 43.842293, 21.194120>,  <40.761230, 43.725803, 21.283411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571342, 43.842293, 21.194120>,  <40.254864, 44.036446, 21.045301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571342, 43.842293, 21.194120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592715, 0.458724, -0.662013,
		0.150660, 0.744299, 0.650631,
		0.791195, -0.485378, 0.372046,
		40.808701, 43.696678, 21.305735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820068, 44.481441, 21.000933>,  <40.254864, 44.036446, 21.045301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820068, 44.481441, 21.000933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005440, 44.133854, 21.070368>,  <41.116661, 43.925301, 21.112028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005440, 44.133854, 21.070368>,  <40.820068, 44.481441, 21.000933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005440, 44.133854, 21.070368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714428, 0.250498, -0.653332,
		0.524241, 0.426786, 0.736902,
		0.463426, -0.868967, 0.173587,
		41.144466, 43.873165, 21.122444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488396, 44.733032, 20.967247>,  <40.820068, 44.481441, 21.000933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488396, 44.733032, 20.967247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479443, 44.338943, 20.899326>,  <41.474072, 44.102489, 20.858574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479443, 44.338943, 20.899326>,  <41.488396, 44.733032, 20.967247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479443, 44.338943, 20.899326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626972, 0.118460, -0.769983,
		0.778720, -0.123694, 0.615057,
		-0.022383, -0.985224, -0.169799,
		41.472729, 44.043377, 20.848387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232853, 44.452034, 20.952740>,  <41.488396, 44.733032, 20.967247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232853, 44.452034, 20.952740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014950, 44.199951, 20.731443>,  <41.884209, 44.048702, 20.598665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014950, 44.199951, 20.731443>,  <42.232853, 44.452034, 20.952740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014950, 44.199951, 20.731443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585238, 0.186800, -0.789052,
		0.600611, -0.753621, 0.267060,
		-0.544759, -0.630207, -0.553242,
		41.851521, 44.010891, 20.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672234, 44.279091, 20.413280>,  <42.232853, 44.452034, 20.952740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672234, 44.279091, 20.413280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328362, 44.128796, 20.274845>,  <42.122040, 44.038620, 20.191784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328362, 44.128796, 20.274845>,  <42.672234, 44.279091, 20.413280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328362, 44.128796, 20.274845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298467, 0.180384, -0.937219,
		0.414579, -0.909000, -0.042926,
		-0.859675, -0.375739, -0.346090,
		42.070457, 44.016075, 20.171019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877373, 43.793217, 19.987358>,  <42.672234, 44.279091, 20.413280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877373, 43.793217, 19.987358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509747, 43.914967, 19.887218>,  <42.289169, 43.988018, 19.827135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509747, 43.914967, 19.887218>,  <42.877373, 43.793217, 19.987358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509747, 43.914967, 19.887218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290968, 0.095606, -0.951944,
		-0.265815, -0.947742, -0.176432,
		-0.919065, 0.304377, -0.250349,
		42.234028, 44.006279, 19.812113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129486, 43.097301, 19.610592>,  <42.877373, 43.793217, 19.987358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129486, 43.097301, 19.610592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502441, 43.011951, 19.727301>,  <43.726215, 42.960743, 19.797325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502441, 43.011951, 19.727301>,  <43.129486, 43.097301, 19.610592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502441, 43.011951, 19.727301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356206, -0.405160, 0.841999,
		-0.061445, -0.888998, -0.453769,
		0.932385, -0.213372, 0.291772,
		43.782158, 42.947941, 19.814833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201694, 42.467758, 20.101109>,  <43.129486, 43.097301, 19.610592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201694, 42.467758, 20.101109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544945, 42.661587, 20.169006>,  <43.750896, 42.777885, 20.209745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544945, 42.661587, 20.169006>,  <43.201694, 42.467758, 20.101109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544945, 42.661587, 20.169006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034222, -0.275889, 0.960580,
		0.512301, -0.830106, -0.220164,
		0.858124, 0.484571, 0.169746,
		43.802383, 42.806957, 20.219931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714298, 41.976051, 20.369326>,  <43.201694, 42.467758, 20.101109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714298, 41.976051, 20.369326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802254, 42.343292, 20.501223>,  <43.855026, 42.563637, 20.580360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802254, 42.343292, 20.501223>,  <43.714298, 41.976051, 20.369326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802254, 42.343292, 20.501223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085232, -0.318644, 0.944035,
		0.971794, -0.235690, 0.008184,
		0.219892, 0.918105, 0.329744,
		43.868221, 42.618725, 20.600145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040642, 41.813477, 21.002720>,  <43.714298, 41.976051, 20.369326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040642, 41.813477, 21.002720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973053, 42.207710, 20.999456>,  <43.932499, 42.444252, 20.997498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973053, 42.207710, 20.999456>,  <44.040642, 41.813477, 21.002720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973053, 42.207710, 20.999456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065220, 0.019441, 0.997682,
		0.983460, 0.168051, -0.067565,
		-0.168975, 0.985587, -0.008159,
		43.922359, 42.503387, 20.997009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423904, 42.023506, 21.587179>,  <44.040642, 41.813477, 21.002720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423904, 42.023506, 21.587179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169201, 42.328182, 21.539234>,  <44.016376, 42.510986, 21.510468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169201, 42.328182, 21.539234>,  <44.423904, 42.023506, 21.587179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169201, 42.328182, 21.539234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120857, 0.054934, 0.991149,
		0.761529, 0.645613, 0.057076,
		-0.636763, 0.761686, -0.119861,
		43.978172, 42.556686, 21.503277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627804, 42.460228, 22.070042>,  <44.423904, 42.023506, 21.587179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627804, 42.460228, 22.070042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251633, 42.574974, 21.997046>,  <44.025928, 42.643822, 21.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251633, 42.574974, 21.997046>,  <44.627804, 42.460228, 22.070042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251633, 42.574974, 21.997046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161063, 0.096813, 0.982184,
		0.299421, 0.953067, -0.044842,
		-0.940428, 0.286864, -0.182492,
		43.969505, 42.661034, 21.942299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489761, 42.878395, 22.649015>,  <44.627804, 42.460228, 22.070042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489761, 42.878395, 22.649015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155369, 42.735554, 22.482349>,  <43.954735, 42.649849, 22.382349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155369, 42.735554, 22.482349>,  <44.489761, 42.878395, 22.649015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155369, 42.735554, 22.482349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385763, -0.157586, 0.909040,
		-0.390283, 0.920675, -0.006018,
		-0.835982, -0.357104, -0.416666,
		43.904575, 42.628422, 22.357349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987587, 43.337746, 22.937147>,  <44.489761, 42.878395, 22.649015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987587, 43.337746, 22.937147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820816, 42.988342, 22.836626>,  <43.720753, 42.778702, 22.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820816, 42.988342, 22.836626>,  <43.987587, 43.337746, 22.937147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820816, 42.988342, 22.836626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347424, -0.102335, 0.932108,
		-0.839919, 0.475934, -0.260810,
		-0.416932, -0.873507, -0.251304,
		43.695736, 42.726292, 22.761234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404243, 43.218857, 23.388611>,  <43.987587, 43.337746, 22.937147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404243, 43.218857, 23.388611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443314, 42.843353, 23.256432>,  <43.466755, 42.618053, 23.177124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443314, 42.843353, 23.256432>,  <43.404243, 43.218857, 23.388611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443314, 42.843353, 23.256432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452801, -0.337602, 0.825225,
		-0.886245, 0.069021, -0.458046,
		0.097680, -0.938755, -0.330450,
		43.472618, 42.561726, 23.157297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835808, 43.032364, 23.685087>,  <43.404243, 43.218857, 23.388611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835808, 43.032364, 23.685087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051235, 42.712124, 23.580027>,  <43.180492, 42.519981, 23.516991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051235, 42.712124, 23.580027>,  <42.835808, 43.032364, 23.685087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051235, 42.712124, 23.580027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338760, -0.491161, 0.802498,
		-0.771484, -0.343222, -0.535734,
		0.538567, -0.800599, -0.262653,
		43.212807, 42.471943, 23.501230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437683, 42.532494, 23.814907>,  <42.835808, 43.032364, 23.685087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437683, 42.532494, 23.814907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773289, 42.315090, 23.804636>,  <42.974651, 42.184650, 23.798473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773289, 42.315090, 23.804636>,  <42.437683, 42.532494, 23.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773289, 42.315090, 23.804636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365278, -0.597603, 0.713752,
		-0.403270, -0.589470, -0.699928,
		0.839014, -0.543503, -0.025675,
		43.024994, 42.152039, 23.796934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207218, 41.863201, 23.877087>,  <42.437683, 42.532494, 23.814907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207218, 41.863201, 23.877087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586979, 41.858635, 24.002630>,  <42.814835, 41.855896, 24.077957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586979, 41.858635, 24.002630>,  <42.207218, 41.863201, 23.877087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586979, 41.858635, 24.002630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250487, -0.630358, 0.734782,
		0.189459, -0.776221, -0.601321,
		0.949401, -0.011412, 0.313860,
		42.871799, 41.855209, 24.096788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494621, 41.203278, 23.975620>,  <42.207218, 41.863201, 23.877087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494621, 41.203278, 23.975620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701958, 41.443417, 24.219229>,  <42.826359, 41.587502, 24.365395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701958, 41.443417, 24.219229>,  <42.494621, 41.203278, 23.975620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701958, 41.443417, 24.219229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156516, -0.633530, 0.757722,
		0.840731, -0.488077, -0.234418,
		0.518337, 0.600350, 0.609020,
		42.857460, 41.623520, 24.401936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030430, 40.785767, 24.372494>,  <42.494621, 41.203278, 23.975620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030430, 40.785767, 24.372494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989582, 41.124516, 24.581249>,  <42.965073, 41.327766, 24.706503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989582, 41.124516, 24.581249>,  <43.030430, 40.785767, 24.372494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989582, 41.124516, 24.581249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138229, -0.531625, 0.835624,
		0.985121, 0.013197, 0.171354,
		-0.102123, 0.846877, 0.521891,
		42.958946, 41.378578, 24.737816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349823, 40.604977, 24.980343>,  <43.030430, 40.785767, 24.372494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349823, 40.604977, 24.980343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137417, 40.935463, 25.055605>,  <43.009975, 41.133755, 25.100761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137417, 40.935463, 25.055605>,  <43.349823, 40.604977, 24.980343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137417, 40.935463, 25.055605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282281, -0.381842, 0.880065,
		0.798965, 0.414212, 0.435986,
		-0.531011, 0.826211, 0.188154,
		42.978115, 41.183327, 25.112051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682205, 40.809238, 25.563469>,  <43.349823, 40.604977, 24.980343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682205, 40.809238, 25.563469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307659, 40.947128, 25.536989>,  <43.082932, 41.029861, 25.521101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307659, 40.947128, 25.536989>,  <43.682205, 40.809238, 25.563469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307659, 40.947128, 25.536989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226410, -0.448990, 0.864376,
		0.268252, 0.824360, 0.498469,
		-0.936365, 0.344729, -0.066201,
		43.026749, 41.050549, 25.517130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451309, 40.826439, 26.244656>,  <43.682205, 40.809238, 25.563469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451309, 40.826439, 26.244656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094456, 40.878265, 26.071543>,  <42.880341, 40.909363, 25.967674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094456, 40.878265, 26.071543>,  <43.451309, 40.826439, 26.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094456, 40.878265, 26.071543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431787, -0.526269, 0.732530,
		-0.132850, 0.840389, 0.525450,
		-0.892138, 0.129565, -0.432784,
		42.826813, 40.917133, 25.941708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983936, 40.919369, 26.839571>,  <43.451309, 40.826439, 26.244656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983936, 40.919369, 26.839571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709064, 40.840271, 26.559948>,  <42.544140, 40.792812, 26.392174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709064, 40.840271, 26.559948>,  <42.983936, 40.919369, 26.839571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709064, 40.840271, 26.559948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469681, -0.613175, 0.635150,
		-0.554243, 0.764796, 0.328483,
		-0.687178, -0.197745, -0.699059,
		42.502911, 40.780949, 26.350231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304585, 41.223801, 26.975452>,  <42.983936, 40.919369, 26.839571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304585, 41.223801, 26.975452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231701, 40.918770, 26.727169>,  <42.187969, 40.735752, 26.578199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231701, 40.918770, 26.727169>,  <42.304585, 41.223801, 26.975452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231701, 40.918770, 26.727169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522881, -0.459469, 0.717972,
		-0.832703, 0.455379, -0.315015,
		-0.182210, -0.762573, -0.620710,
		42.177036, 40.689999, 26.540956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572853, 41.084698, 27.019684>,  <42.304585, 41.223801, 26.975452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572853, 41.084698, 27.019684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709248, 40.737816, 26.874527>,  <41.791084, 40.529686, 26.787434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709248, 40.737816, 26.874527>,  <41.572853, 41.084698, 27.019684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709248, 40.737816, 26.874527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584845, -0.497918, 0.640339,
		-0.735994, -0.006109, -0.676960,
		0.340983, -0.867203, -0.362892,
		41.811543, 40.477654, 26.765659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929970, 40.648342, 26.995522>,  <41.572853, 41.084698, 27.019684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929970, 40.648342, 26.995522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251301, 40.410480, 26.982542>,  <41.444099, 40.267761, 26.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251301, 40.410480, 26.982542>,  <40.929970, 40.648342, 26.995522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251301, 40.410480, 26.982542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350981, -0.516756, 0.780881,
		-0.481123, -0.615913, -0.623836,
		0.803326, -0.594655, -0.032450,
		41.492298, 40.232082, 26.972807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650043, 40.029743, 26.884672>,  <40.929970, 40.648342, 26.995522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650043, 40.029743, 26.884672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006420, 39.935390, 27.039892>,  <41.220245, 39.878780, 27.133024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006420, 39.935390, 27.039892>,  <40.650043, 40.029743, 26.884672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006420, 39.935390, 27.039892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453207, -0.515951, 0.726910,
		0.028749, -0.823501, -0.566586,
		0.890941, -0.235882, 0.388049,
		41.273705, 39.864624, 27.156307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543720, 39.363094, 27.055485>,  <40.650043, 40.029743, 26.884672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543720, 39.363094, 27.055485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872063, 39.447227, 27.267883>,  <41.069069, 39.497707, 27.395323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872063, 39.447227, 27.267883>,  <40.543720, 39.363094, 27.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872063, 39.447227, 27.267883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310125, -0.616572, 0.723645,
		0.479600, -0.758684, -0.440889,
		0.820858, 0.210329, 0.530994,
		41.118320, 39.510326, 27.427181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732670, 38.712620, 27.277082>,  <40.543720, 39.363094, 27.055485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732670, 38.712620, 27.277082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907604, 38.977108, 27.520895>,  <41.012566, 39.135799, 27.667183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907604, 38.977108, 27.520895>,  <40.732670, 38.712620, 27.277082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907604, 38.977108, 27.520895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191891, -0.593562, 0.781577,
		0.878587, -0.458775, -0.132704,
		0.437336, 0.661219, 0.609530,
		41.038807, 39.175472, 27.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081379, 38.349796, 27.749338>,  <40.732670, 38.712620, 27.277082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081379, 38.349796, 27.749338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032295, 38.700630, 27.935097>,  <41.002846, 38.911129, 28.046553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032295, 38.700630, 27.935097>,  <41.081379, 38.349796, 27.749338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032295, 38.700630, 27.935097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269843, -0.479792, 0.834856,
		0.955053, -0.022871, 0.295550,
		-0.122709, 0.877084, 0.464399,
		40.995483, 38.963757, 28.074417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420731, 38.263638, 28.388311>,  <41.081379, 38.349796, 27.749338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420731, 38.263638, 28.388311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186653, 38.583172, 28.444036>,  <41.046207, 38.774895, 28.477470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186653, 38.583172, 28.444036>,  <41.420731, 38.263638, 28.388311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186653, 38.583172, 28.444036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252434, -0.342726, 0.904885,
		0.770603, 0.494363, 0.402214,
		-0.585190, 0.798840, 0.139311,
		41.011097, 38.822823, 28.485830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644089, 38.632717, 28.971811>,  <41.420731, 38.263638, 28.388311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644089, 38.632717, 28.971811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255226, 38.710476, 28.919479>,  <41.021908, 38.757133, 28.888081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255226, 38.710476, 28.919479>,  <41.644089, 38.632717, 28.971811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255226, 38.710476, 28.919479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195985, -0.368532, 0.908721,
		0.128441, 0.909062, 0.396371,
		-0.972159, 0.194400, -0.130828,
		40.963577, 38.768795, 28.880232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472897, 38.879402, 29.647228>,  <41.644089, 38.632717, 28.971811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472897, 38.879402, 29.647228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121666, 38.790607, 29.477665>,  <40.910927, 38.737331, 29.375927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121666, 38.790607, 29.477665>,  <41.472897, 38.879402, 29.647228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121666, 38.790607, 29.477665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291153, -0.455178, 0.841453,
		-0.379744, 0.862285, 0.335050,
		-0.878080, -0.221986, -0.423908,
		40.858242, 38.724010, 29.350492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960045, 39.073696, 30.147303>,  <41.472897, 38.879402, 29.647228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960045, 39.073696, 30.147303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819157, 38.805740, 29.885860>,  <40.734623, 38.644966, 29.728996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819157, 38.805740, 29.885860>,  <40.960045, 39.073696, 30.147303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819157, 38.805740, 29.885860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441360, -0.496942, 0.747162,
		-0.825315, 0.551637, -0.120630,
		-0.352216, -0.669885, -0.653604,
		40.713493, 38.604774, 29.689779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347839, 39.017334, 30.415432>,  <40.960045, 39.073696, 30.147303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347839, 39.017334, 30.415432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356594, 38.694588, 30.179300>,  <40.361847, 38.500938, 30.037621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356594, 38.694588, 30.179300>,  <40.347839, 39.017334, 30.415432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356594, 38.694588, 30.179300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402674, -0.547575, 0.733496,
		-0.915082, 0.221655, -0.336889,
		0.021889, -0.806865, -0.590330,
		40.363159, 38.452530, 30.002201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660339, 38.699471, 30.363495>,  <40.347839, 39.017334, 30.415432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660339, 38.699471, 30.363495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935776, 38.418232, 30.292515>,  <40.101040, 38.249489, 30.249926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935776, 38.418232, 30.292515>,  <39.660339, 38.699471, 30.363495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935776, 38.418232, 30.292515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505883, -0.641104, 0.577119,
		-0.519536, -0.307633, -0.797148,
		0.688596, -0.703098, -0.177451,
		40.142353, 38.207302, 30.239279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331257, 37.969189, 30.249386>,  <39.660339, 38.699471, 30.363495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331257, 37.969189, 30.249386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708763, 37.858875, 30.322329>,  <39.935268, 37.792686, 30.366095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708763, 37.858875, 30.322329>,  <39.331257, 37.969189, 30.249386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708763, 37.858875, 30.322329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325279, -0.675783, 0.661446,
		-0.059179, -0.683567, -0.727485,
		0.943764, -0.275779, 0.182358,
		39.991894, 37.776142, 30.377035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235329, 37.299152, 30.275208>,  <39.331257, 37.969189, 30.249386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235329, 37.299152, 30.275208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594635, 37.350613, 30.443291>,  <39.810219, 37.381489, 30.544140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594635, 37.350613, 30.443291>,  <39.235329, 37.299152, 30.275208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594635, 37.350613, 30.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249660, -0.637518, 0.728863,
		0.361656, -0.759619, -0.540540,
		0.898262, 0.128646, 0.420208,
		39.864113, 37.389206, 30.569353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494328, 36.605991, 30.408600>,  <39.235329, 37.299152, 30.275208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494328, 36.605991, 30.408600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703468, 36.838512, 30.657986>,  <39.828953, 36.978027, 30.807617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703468, 36.838512, 30.657986>,  <39.494328, 36.605991, 30.408600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703468, 36.838512, 30.657986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093630, -0.687813, 0.719824,
		0.847263, -0.434740, -0.305199,
		0.522856, 0.581305, 0.623463,
		39.860325, 37.012905, 30.845024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748379, 36.070232, 30.843102>,  <39.494328, 36.605991, 30.408600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748379, 36.070232, 30.843102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803509, 36.407383, 31.051165>,  <39.836586, 36.609673, 31.176003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803509, 36.407383, 31.051165>,  <39.748379, 36.070232, 30.843102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803509, 36.407383, 31.051165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133076, -0.504650, 0.853006,
		0.981476, -0.186784, 0.042615,
		0.137822, 0.842877, 0.520158,
		39.844856, 36.660248, 31.207212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381786, 36.030479, 31.273075>,  <39.748379, 36.070232, 30.843102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381786, 36.030479, 31.273075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132389, 36.295971, 31.438349>,  <39.982750, 36.455265, 31.537512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132389, 36.295971, 31.438349>,  <40.381786, 36.030479, 31.273075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132389, 36.295971, 31.438349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113354, -0.446155, 0.887748,
		0.773569, 0.600339, 0.202937,
		-0.623492, 0.663731, 0.413183,
		39.945343, 36.495090, 31.562304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740238, 36.305279, 31.816608>,  <40.381786, 36.030479, 31.273075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740238, 36.305279, 31.816608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350204, 36.363144, 31.883877>,  <40.116184, 36.397861, 31.924238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350204, 36.363144, 31.883877>,  <40.740238, 36.305279, 31.816608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350204, 36.363144, 31.883877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070670, -0.516024, 0.853654,
		0.210270, 0.844270, 0.492945,
		-0.975086, 0.144661, 0.168169,
		40.057678, 36.406544, 31.934328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636143, 36.570724, 32.576427>,  <40.740238, 36.305279, 31.816608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636143, 36.570724, 32.576427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293026, 36.421516, 32.434978>,  <40.087154, 36.331993, 32.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293026, 36.421516, 32.434978>,  <40.636143, 36.570724, 32.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293026, 36.421516, 32.434978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075513, -0.589068, 0.804548,
		-0.508417, 0.716839, 0.477131,
		-0.857794, -0.373016, -0.353622,
		40.035686, 36.309612, 32.328892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333893, 36.370605, 33.145065>,  <40.636143, 36.570724, 32.576427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333893, 36.370605, 33.145065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098892, 36.213390, 32.862122>,  <39.957890, 36.119061, 32.692356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098892, 36.213390, 32.862122>,  <40.333893, 36.370605, 33.145065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098892, 36.213390, 32.862122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234946, -0.753622, 0.613884,
		-0.774364, 0.526850, 0.350413,
		-0.587504, -0.393042, -0.707359,
		39.922642, 36.095478, 32.649914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767147, 36.165592, 33.513126>,  <40.333893, 36.370605, 33.145065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767147, 36.165592, 33.513126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758602, 35.944786, 33.179703>,  <39.753475, 35.812302, 32.979649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758602, 35.944786, 33.179703>,  <39.767147, 36.165592, 33.513126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758602, 35.944786, 33.179703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179870, -0.818021, 0.546341,
		-0.983459, 0.161603, -0.081817,
		-0.021362, -0.552020, -0.833557,
		39.752193, 35.779179, 32.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116295, 35.809574, 33.344860>,  <39.767147, 36.165592, 33.513126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116295, 35.809574, 33.344860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436520, 35.604557, 33.220661>,  <39.628654, 35.481548, 33.146141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436520, 35.604557, 33.220661>,  <39.116295, 35.809574, 33.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436520, 35.604557, 33.220661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218642, -0.732241, 0.644995,
		-0.557943, -0.448470, -0.698265,
		0.800559, -0.512540, -0.310495,
		39.676689, 35.450794, 33.127514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886406, 35.185352, 33.108452>,  <39.116295, 35.809574, 33.344860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886406, 35.185352, 33.108452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269859, 35.140137, 33.212948>,  <39.499931, 35.113007, 33.275646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269859, 35.140137, 33.212948>,  <38.886406, 35.185352, 33.108452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269859, 35.140137, 33.212948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263733, -0.697991, 0.665773,
		0.107082, -0.707129, -0.698929,
		0.958634, -0.113038, 0.261235,
		39.557449, 35.106224, 33.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961052, 34.413372, 33.242310>,  <38.886406, 35.185352, 33.108452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961052, 34.413372, 33.242310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239616, 34.638069, 33.420956>,  <39.406754, 34.772888, 33.528141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239616, 34.638069, 33.420956>,  <38.961052, 34.413372, 33.242310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239616, 34.638069, 33.420956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139622, -0.504383, 0.852117,
		0.703932, -0.655779, -0.272825,
		0.696409, 0.561740, 0.446613,
		39.448540, 34.806591, 33.554939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352650, 33.941902, 33.693279>,  <38.961052, 34.413372, 33.242310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352650, 33.941902, 33.693279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565269, 34.241035, 33.852383>,  <39.692841, 34.420513, 33.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565269, 34.241035, 33.852383>,  <39.352650, 33.941902, 33.693279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565269, 34.241035, 33.852383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252683, -0.308209, 0.917147,
		0.808462, -0.588012, 0.025136,
		0.531546, 0.747830, 0.397756,
		39.724735, 34.465385, 33.971710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883183, 33.613594, 34.213959>,  <39.352650, 33.941902, 33.693279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883183, 33.613594, 34.213959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768864, 33.987591, 34.297970>,  <39.700272, 34.211990, 34.348377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768864, 33.987591, 34.297970>,  <39.883183, 33.613594, 34.213959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768864, 33.987591, 34.297970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130641, -0.255137, 0.958038,
		0.949344, 0.246364, 0.195065,
		-0.285795, 0.934992, 0.210028,
		39.683125, 34.268089, 34.360977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318615, 33.997738, 34.737499>,  <39.883183, 33.613594, 34.213959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318615, 33.997738, 34.737499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957699, 34.169579, 34.751961>,  <39.741150, 34.272682, 34.760639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957699, 34.169579, 34.751961>,  <40.318615, 33.997738, 34.737499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957699, 34.169579, 34.751961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053969, -0.195755, 0.979167,
		0.427729, 0.881545, 0.199813,
		-0.902294, 0.429602, 0.036154,
		39.687012, 34.298458, 34.762806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279007, 34.248535, 35.431396>,  <40.318615, 33.997738, 34.737499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279007, 34.248535, 35.431396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901222, 34.303799, 35.312130>,  <39.674553, 34.336956, 35.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901222, 34.303799, 35.312130>,  <40.279007, 34.248535, 35.431396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901222, 34.303799, 35.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316435, -0.137568, 0.938586,
		0.088658, 0.980809, 0.173647,
		-0.944462, 0.138161, -0.298166,
		39.617882, 34.345245, 35.222679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997593, 34.596710, 35.992527>,  <40.279007, 34.248535, 35.431396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997593, 34.596710, 35.992527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689949, 34.455181, 35.779629>,  <39.505363, 34.370262, 35.651890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689949, 34.455181, 35.779629>,  <39.997593, 34.596710, 35.992527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689949, 34.455181, 35.779629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518612, -0.141196, 0.843271,
		-0.373521, 0.924593, -0.074903,
		-0.769106, -0.353825, -0.532245,
		39.459217, 34.349033, 35.619957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601746, 34.915176, 36.529354>,  <39.997593, 34.596710, 35.992527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601746, 34.915176, 36.529354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392532, 34.627098, 36.347038>,  <39.267002, 34.454250, 36.237648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392532, 34.627098, 36.347038>,  <39.601746, 34.915176, 36.529354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392532, 34.627098, 36.347038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694613, 0.050290, 0.717623,
		-0.493910, 0.691943, -0.526563,
		-0.523035, -0.720199, -0.455794,
		39.235622, 34.411037, 36.210300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837860, 35.138226, 36.456165>,  <39.601746, 34.915176, 36.529354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837860, 35.138226, 36.456165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864357, 34.739437, 36.472427>,  <38.880253, 34.500164, 36.482185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864357, 34.739437, 36.472427>,  <38.837860, 35.138226, 36.456165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864357, 34.739437, 36.472427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770201, -0.025182, 0.637304,
		-0.634352, -0.073530, -0.769539,
		0.066240, -0.996975, 0.040659,
		38.884228, 34.440346, 36.484627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166096, 34.901562, 36.581093>,  <38.837860, 35.138226, 36.456165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166096, 34.901562, 36.581093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359318, 34.558491, 36.651573>,  <38.475250, 34.352650, 36.693863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359318, 34.558491, 36.651573>,  <38.166096, 34.901562, 36.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359318, 34.558491, 36.651573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775036, -0.325199, 0.541816,
		-0.407404, -0.398289, -0.821820,
		0.483054, -0.857678, 0.176201,
		38.504234, 34.301189, 36.704433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741318, 34.358028, 36.425804>,  <38.166096, 34.901562, 36.581093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741318, 34.358028, 36.425804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991150, 34.292007, 36.731133>,  <38.141048, 34.252396, 36.914330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991150, 34.292007, 36.731133>,  <37.741318, 34.358028, 36.425804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991150, 34.292007, 36.731133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778329, -0.211755, 0.591070,
		0.064082, -0.963285, -0.260720,
		0.624577, -0.165049, 0.763323,
		38.178524, 34.242493, 36.960129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292030, 33.943359, 36.746304>,  <37.741318, 34.358028, 36.425804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292030, 33.943359, 36.746304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622890, 33.929329, 36.970657>,  <37.821407, 33.920910, 37.105270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622890, 33.929329, 36.970657>,  <37.292030, 33.943359, 36.746304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622890, 33.929329, 36.970657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517183, -0.437998, 0.735309,
		0.219875, -0.898291, -0.380431,
		0.827150, -0.035076, 0.560886,
		37.871037, 33.918804, 37.138924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458809, 33.284405, 36.888680>,  <37.292030, 33.943359, 36.746304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458809, 33.284405, 36.888680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585148, 33.519844, 37.186348>,  <37.660954, 33.661110, 37.364948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585148, 33.519844, 37.186348>,  <37.458809, 33.284405, 36.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585148, 33.519844, 37.186348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630932, -0.455486, 0.628058,
		0.708635, -0.667892, 0.227503,
		0.315850, 0.588602, 0.744168,
		37.679901, 33.696426, 37.409599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721985, 32.827881, 37.446686>,  <37.458809, 33.284405, 36.888680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721985, 32.827881, 37.446686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627380, 33.180435, 37.610256>,  <37.570618, 33.391968, 37.708401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627380, 33.180435, 37.610256>,  <37.721985, 32.827881, 37.446686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627380, 33.180435, 37.610256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548024, -0.468544, 0.692918,
		0.802330, -0.060223, 0.593835,
		-0.236509, 0.881385, 0.408930,
		37.556427, 33.444851, 37.732937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882038, 32.789223, 38.067356>,  <37.721985, 32.827881, 37.446686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882038, 32.789223, 38.067356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600727, 33.073147, 38.051517>,  <37.431942, 33.243504, 38.042015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600727, 33.073147, 38.051517>,  <37.882038, 32.789223, 38.067356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600727, 33.073147, 38.051517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487192, -0.440639, 0.753977,
		0.517734, 0.549546, 0.655705,
		-0.703275, 0.709814, -0.039601,
		37.389744, 33.286091, 38.039639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764698, 33.085152, 38.795265>,  <37.882038, 32.789223, 38.067356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764698, 33.085152, 38.795265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447742, 33.205246, 38.582859>,  <37.257568, 33.277302, 38.455418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447742, 33.205246, 38.582859>,  <37.764698, 33.085152, 38.795265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447742, 33.205246, 38.582859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609555, -0.423487, 0.670151,
		-0.023671, 0.854702, 0.518579,
		-0.792391, 0.300240, -0.531012,
		37.210026, 33.295319, 38.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249237, 33.269485, 39.256668>,  <37.764698, 33.085152, 38.795265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249237, 33.269485, 39.256668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044724, 33.226288, 38.915630>,  <36.922016, 33.200371, 38.711006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044724, 33.226288, 38.915630>,  <37.249237, 33.269485, 39.256668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044724, 33.226288, 38.915630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808170, -0.277018, 0.519733,
		-0.292313, 0.954776, 0.054359,
		-0.511287, -0.107994, -0.852598,
		36.891338, 33.193890, 38.659851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581772, 33.588547, 39.350029>,  <37.249237, 33.269485, 39.256668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581772, 33.588547, 39.350029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 33.313332, 39.062958>,  <36.513016, 33.148201, 38.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 33.313332, 39.062958>,  <36.581772, 33.588547, 39.350029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538799, 33.313332, 39.062958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872535, -0.280788, 0.399801,
		-0.476595, 0.669149, -0.570173,
		-0.107429, -0.688039, -0.717678,
		36.506569, 33.106918, 38.847656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981079, 33.159977, 39.630890>,  <36.581772, 33.588547, 39.350029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981079, 33.159977, 39.630890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313084, 32.956882, 39.538563>,  <36.512287, 32.835026, 39.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313084, 32.956882, 39.538563>,  <35.981079, 33.159977, 39.630890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313084, 32.956882, 39.538563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176668, -0.631874, 0.754668,
		-0.529022, -0.585607, -0.614166,
		0.830015, -0.507740, -0.230817,
		36.562088, 32.804562, 39.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944489, 32.462177, 39.736324>,  <35.981079, 33.159977, 39.630890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944489, 32.462177, 39.736324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306335, 32.605042, 39.829372>,  <36.523441, 32.690758, 39.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306335, 32.605042, 39.829372>,  <35.944489, 32.462177, 39.736324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306335, 32.605042, 39.829372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043320, -0.465899, 0.883777,
		0.424025, -0.809554, -0.405986,
		0.904614, 0.357156, 0.232622,
		36.577721, 32.712189, 39.899158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394096, 31.904245, 39.786430>,  <35.944489, 32.462177, 39.736324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394096, 31.904245, 39.786430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521637, 32.196972, 40.027355>,  <36.598160, 32.372608, 40.171909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521637, 32.196972, 40.027355>,  <36.394096, 31.904245, 39.786430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521637, 32.196972, 40.027355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180524, -0.576954, 0.796577,
		0.930454, -0.362720, -0.051851,
		0.318850, 0.731818, 0.602309,
		36.617290, 32.416519, 40.208046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997684, 31.314081, 39.566158>,  <36.394096, 31.904245, 39.786430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997684, 31.314081, 39.566158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936348, 30.921495, 39.520172>,  <35.899544, 30.685944, 39.492580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936348, 30.921495, 39.520172>,  <35.997684, 31.314081, 39.566158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936348, 30.921495, 39.520172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406442, 0.043400, -0.912645,
		0.900716, -0.186675, 0.392253,
		-0.153344, -0.981463, -0.114963,
		35.890343, 30.627056, 39.485683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773270, 31.107563, 39.570820>,  <35.997684, 31.314081, 39.566158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773270, 31.107563, 39.570820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656349, 30.788635, 39.359596>,  <36.586197, 30.597279, 39.232864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656349, 30.788635, 39.359596>,  <36.773270, 31.107563, 39.570820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656349, 30.788635, 39.359596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906094, -0.407502, 0.113734,
		-0.305866, -0.445223, 0.841560,
		-0.292300, -0.797320, -0.528055,
		36.568661, 30.549438, 39.201180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672802, 31.641436, 39.102215>,  <36.773270, 31.107563, 39.570820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672802, 31.641436, 39.102215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055401, 31.702717, 39.002907>,  <37.284962, 31.739485, 38.943321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055401, 31.702717, 39.002907>,  <36.672802, 31.641436, 39.102215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055401, 31.702717, 39.002907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021358, 0.811958, 0.583326,
		0.290953, -0.563253, 0.773364,
		0.956499, 0.153203, -0.248272,
		37.342350, 31.748678, 38.928425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534184, 31.937340, 38.447239>,  <36.672802, 31.641436, 39.102215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534184, 31.937340, 38.447239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362667, 32.274494, 38.577274>,  <36.259758, 32.476788, 38.655296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362667, 32.274494, 38.577274>,  <36.534184, 31.937340, 38.447239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362667, 32.274494, 38.577274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515974, 0.523876, -0.677735,
		-0.741557, -0.122873, -0.659542,
		-0.428793, 0.842886, 0.325084,
		36.234028, 32.527359, 38.674801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394909, 32.298134, 37.859718>,  <36.534184, 31.937340, 38.447239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394909, 32.298134, 37.859718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422588, 32.571873, 38.150063>,  <36.439198, 32.736118, 38.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422588, 32.571873, 38.150063>,  <36.394909, 32.298134, 37.859718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422588, 32.571873, 38.150063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500697, 0.605499, -0.618606,
		-0.862852, 0.406245, -0.300752,
		0.069200, 0.684351, 0.725862,
		36.443348, 32.777180, 38.367821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120361, 32.962402, 37.620438>,  <36.394909, 32.298134, 37.859718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120361, 32.962402, 37.620438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372261, 33.038967, 37.921577>,  <36.523399, 33.084904, 38.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372261, 33.038967, 37.921577>,  <36.120361, 32.962402, 37.620438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372261, 33.038967, 37.921577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483091, 0.662451, -0.572523,
		-0.608311, 0.724239, 0.324709,
		0.629747, 0.191408, 0.752849,
		36.561184, 33.096390, 38.147430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191936, 33.700348, 37.698139>,  <36.120361, 32.962402, 37.620438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191936, 33.700348, 37.698139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499687, 33.577431, 37.922146>,  <36.684338, 33.503681, 38.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499687, 33.577431, 37.922146>,  <36.191936, 33.700348, 37.698139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499687, 33.577431, 37.922146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610600, 0.611352, -0.503405,
		-0.187676, 0.729258, 0.657997,
		0.769380, -0.307295, 0.560021,
		36.730503, 33.485241, 38.090153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472485, 34.249683, 38.059547>,  <36.191936, 33.700348, 37.698139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472485, 34.249683, 38.059547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766483, 33.979065, 38.041378>,  <36.942883, 33.816692, 38.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766483, 33.979065, 38.041378>,  <36.472485, 34.249683, 38.059547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766483, 33.979065, 38.041378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619057, 0.696852, -0.362168,
		0.276679, 0.238072, 0.931005,
		0.734995, -0.676550, -0.045424,
		36.986980, 33.776100, 38.027752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095585, 34.570946, 38.166447>,  <36.472485, 34.249683, 38.059547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095585, 34.570946, 38.166447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241795, 34.225357, 38.027916>,  <37.329521, 34.018005, 37.944798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241795, 34.225357, 38.027916>,  <37.095585, 34.570946, 38.166447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241795, 34.225357, 38.027916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795600, 0.483125, -0.365528,
		0.483125, -0.141927, 0.863971,
		0.365528, -0.863971, -0.346327,
		37.351452, 33.966167, 37.924019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871948, 34.616562, 38.296654>,  <37.095585, 34.570946, 38.166447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871948, 34.616562, 38.296654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814426, 34.325790, 38.028057>,  <37.779911, 34.151329, 37.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814426, 34.325790, 38.028057>,  <37.871948, 34.616562, 38.296654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814426, 34.325790, 38.028057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796234, 0.317939, -0.514711,
		0.587649, -0.608681, 0.533081,
		-0.143807, -0.726926, -0.671489,
		37.771286, 34.107712, 37.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446915, 34.623348, 37.938801>,  <37.871948, 34.616562, 38.296654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446915, 34.623348, 37.938801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292366, 34.317177, 37.732952>,  <38.199638, 34.133472, 37.609444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292366, 34.317177, 37.732952>,  <38.446915, 34.623348, 37.938801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292366, 34.317177, 37.732952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762125, 0.049324, -0.645548,
		0.519504, -0.641628, 0.564295,
		-0.386369, -0.765428, -0.514625,
		38.176456, 34.087547, 37.578564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945232, 34.040024, 37.876522>,  <38.446915, 34.623348, 37.938801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945232, 34.040024, 37.876522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714466, 34.053978, 37.550098>,  <38.576004, 34.062351, 37.354244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714466, 34.053978, 37.550098>,  <38.945232, 34.040024, 37.876522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714466, 34.053978, 37.550098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816128, -0.015928, -0.577652,
		-0.033153, -0.999264, -0.019286,
		-0.576920, 0.034891, -0.816056,
		38.541389, 34.064442, 37.305283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171364, 33.499737, 37.368721>,  <38.945232, 34.040024, 37.876522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171364, 33.499737, 37.368721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939808, 33.748535, 37.157814>,  <38.800877, 33.897812, 37.031269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939808, 33.748535, 37.157814>,  <39.171364, 33.499737, 37.368721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939808, 33.748535, 37.157814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617053, -0.088555, -0.781923,
		-0.533042, -0.778000, -0.332539,
		-0.578888, 0.621993, -0.527271,
		38.766140, 33.935135, 36.999634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019875, 33.212608, 36.729828>,  <39.171364, 33.499737, 37.368721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019875, 33.212608, 36.729828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000740, 33.602757, 36.643692>,  <38.989262, 33.836845, 36.592010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000740, 33.602757, 36.643692>,  <39.019875, 33.212608, 36.729828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000740, 33.602757, 36.643692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566231, -0.151125, -0.810274,
		-0.822857, -0.160693, -0.545054,
		-0.047834, 0.975366, -0.215343,
		38.986389, 33.895367, 36.579090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761494, 33.227669, 36.063290>,  <39.019875, 33.212608, 36.729828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761494, 33.227669, 36.063290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953465, 33.566010, 36.156414>,  <39.068649, 33.769012, 36.212288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953465, 33.566010, 36.156414>,  <38.761494, 33.227669, 36.063290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953465, 33.566010, 36.156414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434060, 0.001677, -0.900882,
		-0.762402, 0.533417, -0.366346,
		0.479931, 0.845851, 0.232813,
		39.097443, 33.819763, 36.226257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018005, 33.431583, 35.407688>,  <38.761494, 33.227669, 36.063290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018005, 33.431583, 35.407688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960171, 33.787880, 35.580048>,  <38.925472, 34.001659, 35.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960171, 33.787880, 35.580048>,  <39.018005, 33.431583, 35.407688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960171, 33.787880, 35.580048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304782, 0.454392, -0.837040,
		-0.941384, 0.010308, -0.337180,
		-0.144583, 0.890742, 0.430899,
		38.916794, 34.055103, 35.709316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510342, 33.813488, 35.052048>,  <39.018005, 33.431583, 35.407688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510342, 33.813488, 35.052048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766964, 34.058479, 35.236774>,  <38.920937, 34.205475, 35.347610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766964, 34.058479, 35.236774>,  <38.510342, 33.813488, 35.052048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766964, 34.058479, 35.236774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350546, 0.301403, -0.886720,
		-0.682291, 0.730769, -0.021335,
		0.641557, 0.612480, 0.461813,
		38.959431, 34.242222, 35.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504520, 34.420605, 34.667782>,  <38.510342, 33.813488, 35.052048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504520, 34.420605, 34.667782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846851, 34.422298, 34.874683>,  <39.052250, 34.423313, 34.998825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846851, 34.422298, 34.874683>,  <38.504520, 34.420605, 34.667782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846851, 34.422298, 34.874683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461314, 0.446110, -0.766926,
		-0.233997, 0.894968, 0.379838,
		0.855824, 0.004234, 0.517250,
		39.103600, 34.423569, 35.029858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737698, 35.064449, 34.518093>,  <38.504520, 34.420605, 34.667782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737698, 35.064449, 34.518093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044842, 34.829514, 34.620411>,  <39.229126, 34.688553, 34.681801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044842, 34.829514, 34.620411>,  <38.737698, 35.064449, 34.518093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044842, 34.829514, 34.620411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518505, 0.335299, -0.786592,
		0.376226, 0.736622, 0.561999,
		0.767858, -0.587335, 0.255794,
		39.275200, 34.653313, 34.697147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315701, 35.516560, 34.545288>,  <38.737698, 35.064449, 34.518093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315701, 35.516560, 34.545288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446533, 35.143414, 34.484913>,  <39.525032, 34.919525, 34.448689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446533, 35.143414, 34.484913>,  <39.315701, 35.516560, 34.545288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446533, 35.143414, 34.484913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327520, 0.261731, -0.907870,
		0.886423, 0.247517, 0.391139,
		0.327086, -0.932863, -0.150938,
		39.544659, 34.863556, 34.439632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099567, 35.615078, 34.368702>,  <39.315701, 35.516560, 34.545288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099567, 35.615078, 34.368702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929394, 35.272453, 34.251869>,  <39.827290, 35.066879, 34.181770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929394, 35.272453, 34.251869>,  <40.099567, 35.615078, 34.368702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929394, 35.272453, 34.251869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311175, 0.164615, -0.935987,
		0.849811, -0.489087, 0.196508,
		-0.425431, -0.856560, -0.292083,
		39.801765, 35.015484, 34.164246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559505, 35.331947, 34.002491>,  <40.099567, 35.615078, 34.368702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559505, 35.331947, 34.002491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221603, 35.163921, 33.869869>,  <40.018860, 35.063107, 33.790295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221603, 35.163921, 33.869869>,  <40.559505, 35.331947, 34.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221603, 35.163921, 33.869869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349263, 0.036651, -0.936307,
		0.405463, -0.906753, 0.115753,
		-0.844757, -0.420066, -0.331556,
		39.968178, 35.037903, 33.770401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845936, 34.914074, 33.593777>,  <40.559505, 35.331947, 34.002491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845936, 34.914074, 33.593777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462444, 34.950691, 33.486103>,  <40.232349, 34.972660, 33.421497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462444, 34.950691, 33.486103>,  <40.845936, 34.914074, 33.593777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462444, 34.950691, 33.486103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283839, 0.363398, -0.887343,
		0.016593, -0.927126, -0.374383,
		-0.958728, 0.091541, -0.269185,
		40.174828, 34.978153, 33.405346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820499, 34.848747, 32.843575>,  <40.845936, 34.914074, 33.593777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820499, 34.848747, 32.843575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465767, 35.012287, 32.929714>,  <40.252930, 35.110413, 32.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465767, 35.012287, 32.929714>,  <40.820499, 34.848747, 32.843575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465767, 35.012287, 32.929714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028000, 0.512707, -0.858107,
		-0.461249, -0.754964, -0.466132,
		-0.886829, 0.408853, 0.215346,
		40.199718, 35.134941, 32.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576294, 34.613907, 32.649734>,  <40.820499, 34.848747, 32.843575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576294, 34.613907, 32.649734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898575, 34.454960, 32.474033>,  <42.091946, 34.359592, 32.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898575, 34.454960, 32.474033>,  <41.576294, 34.613907, 32.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898575, 34.454960, 32.474033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326037, -0.916648, 0.231205,
		-0.494509, -0.043072, -0.868104,
		0.805705, -0.397367, -0.439248,
		42.140285, 34.335751, 32.342258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375984, 34.061192, 32.415604>,  <41.576294, 34.613907, 32.649734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375984, 34.061192, 32.415604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756725, 33.945496, 32.374981>,  <41.985172, 33.876080, 32.350609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756725, 33.945496, 32.374981>,  <41.375984, 34.061192, 32.415604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756725, 33.945496, 32.374981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246064, -0.918481, 0.309590,
		-0.182819, -0.269697, -0.945432,
		0.951856, -0.289236, -0.101553,
		42.042282, 33.858727, 32.344517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434406, 33.447044, 31.935535>,  <41.375984, 34.061192, 32.415604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434406, 33.447044, 31.935535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690590, 33.480637, 32.240891>,  <41.844299, 33.500793, 32.424103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690590, 33.480637, 32.240891>,  <41.434406, 33.447044, 31.935535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690590, 33.480637, 32.240891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442278, -0.772292, 0.456021,
		0.627854, -0.629692, -0.457479,
		0.640460, 0.083981, 0.763386,
		41.882729, 33.505833, 32.469906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058624, 32.965225, 32.067146>,  <41.434406, 33.447044, 31.935535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058624, 32.965225, 32.067146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846901, 33.128250, 32.364796>,  <41.719868, 33.226067, 32.543385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846901, 33.128250, 32.364796>,  <42.058624, 32.965225, 32.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846901, 33.128250, 32.364796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494846, -0.860733, 0.119440,
		0.689173, -0.305007, 0.657276,
		-0.529309, 0.407565, 0.744125,
		41.688107, 33.250519, 32.588032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107738, 32.505028, 32.720577>,  <42.058624, 32.965225, 32.067146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107738, 32.505028, 32.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753765, 32.691059, 32.710884>,  <41.541382, 32.802677, 32.705067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753765, 32.691059, 32.710884>,  <42.107738, 32.505028, 32.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753765, 32.691059, 32.710884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465690, -0.883222, 0.055246,
		0.004291, 0.060174, 0.998179,
		-0.884938, 0.465079, -0.024233,
		41.488285, 32.830582, 32.703613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762768, 32.277023, 33.411205>,  <42.107738, 32.505028, 32.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762768, 32.277023, 33.411205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546272, 32.397285, 33.097092>,  <41.416374, 32.469440, 32.908623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546272, 32.397285, 33.097092>,  <41.762768, 32.277023, 33.411205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546272, 32.397285, 33.097092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527411, -0.848735, 0.038560,
		-0.654903, 0.435037, 0.617937,
		-0.541239, 0.300653, -0.785282,
		41.383900, 32.487480, 32.861507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204262, 31.874325, 33.853142>,  <41.762768, 32.277023, 33.411205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204262, 31.874325, 33.853142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406776, 31.786457, 33.519573>,  <42.528286, 31.733736, 33.319431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406776, 31.786457, 33.519573>,  <42.204262, 31.874325, 33.853142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406776, 31.786457, 33.519573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851858, 0.277890, 0.443976,
		0.134210, -0.935159, 0.327818,
		0.506286, -0.219669, -0.833919,
		42.558662, 31.720556, 33.269398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748009, 31.486643, 33.976028>,  <42.204262, 31.874325, 33.853142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748009, 31.486643, 33.976028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836288, 31.721802, 33.664730>,  <42.889256, 31.862896, 33.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836288, 31.721802, 33.664730>,  <42.748009, 31.486643, 33.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836288, 31.721802, 33.664730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775348, 0.378328, 0.505671,
		0.591715, -0.715015, -0.372326,
		0.220701, 0.587895, -0.778248,
		42.902500, 31.898170, 33.431255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445190, 31.450809, 33.810757>,  <42.748009, 31.486643, 33.976028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445190, 31.450809, 33.810757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315655, 31.815107, 33.708252>,  <43.237934, 32.033688, 33.646748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315655, 31.815107, 33.708252>,  <43.445190, 31.450809, 33.810757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315655, 31.815107, 33.708252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721800, 0.412936, 0.555418,
		0.611664, -0.005104, -0.791101,
		-0.323839, 0.910746, -0.256262,
		43.218502, 32.088329, 33.631374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008686, 31.831682, 33.415512>,  <43.445190, 31.450809, 33.810757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008686, 31.831682, 33.415512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748264, 32.080444, 33.589573>,  <43.592010, 32.229702, 33.694008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748264, 32.080444, 33.589573>,  <44.008686, 31.831682, 33.415512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748264, 32.080444, 33.589573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758512, 0.554213, 0.342794,
		-0.027982, 0.553247, -0.832547,
		-0.651058, 0.621904, 0.435153,
		43.552948, 32.267017, 33.720119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.441654, 32.443523, 33.457836>,  <44.008686, 31.831682, 33.415512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.441654, 32.443523, 33.457836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135738, 32.520302, 33.703846>,  <43.952190, 32.566368, 33.851452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135738, 32.520302, 33.703846>,  <44.441654, 32.443523, 33.457836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135738, 32.520302, 33.703846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570199, 0.646076, 0.507404,
		-0.299960, 0.738743, -0.603558,
		-0.764785, 0.191948, 0.615028,
		43.906303, 32.577885, 33.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173775, 33.186665, 33.544830>,  <44.441654, 32.443523, 33.457836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173775, 33.186665, 33.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123672, 32.975803, 33.881027>,  <44.093613, 32.849285, 34.082745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123672, 32.975803, 33.881027>,  <44.173775, 33.186665, 33.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123672, 32.975803, 33.881027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610717, 0.626669, 0.484057,
		-0.781880, 0.573931, 0.243448,
		-0.125254, -0.527153, 0.840489,
		44.086098, 32.817657, 34.133175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216747, 33.702129, 34.062916>,  <44.173775, 33.186665, 33.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216747, 33.702129, 34.062916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307617, 33.354809, 34.239300>,  <44.362141, 33.146416, 34.345131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307617, 33.354809, 34.239300>,  <44.216747, 33.702129, 34.062916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307617, 33.354809, 34.239300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727983, 0.452180, 0.515339,
		-0.646863, 0.203940, 0.734832,
		0.227178, -0.868299, 0.440963,
		44.375771, 33.094318, 34.371590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159206, 33.628807, 34.798702>,  <44.216747, 33.702129, 34.062916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159206, 33.628807, 34.798702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456474, 33.394817, 34.668777>,  <44.634834, 33.254425, 34.590820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.456474, 33.394817, 34.668777>,  <44.159206, 33.628807, 34.798702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456474, 33.394817, 34.668777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653298, 0.529481, 0.541157,
		-0.144580, -0.614372, 0.775657,
		0.743168, -0.584975, -0.324815,
		44.679424, 33.219326, 34.571331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484623, 33.376446, 35.473194>,  <44.159206, 33.628807, 34.798702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484623, 33.376446, 35.473194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733719, 33.426922, 35.164322>,  <44.883175, 33.457207, 34.978996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733719, 33.426922, 35.164322>,  <44.484623, 33.376446, 35.473194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733719, 33.426922, 35.164322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531071, 0.656588, 0.535589,
		0.574594, -0.743618, 0.341867,
		0.622740, 0.126191, -0.772186,
		44.920540, 33.464779, 34.932667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204826, 33.472519, 35.684689>,  <44.484623, 33.376446, 35.473194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204826, 33.472519, 35.684689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201736, 33.669430, 35.336529>,  <45.199883, 33.787579, 35.127632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201736, 33.669430, 35.336529>,  <45.204826, 33.472519, 35.684689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201736, 33.669430, 35.336529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513074, 0.749070, 0.419104,
		0.858309, -0.443344, -0.258363,
		-0.007725, 0.492280, -0.870402,
		45.199417, 33.817116, 35.075409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813499, 33.840065, 35.561733>,  <45.204826, 33.472519, 35.684689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813499, 33.840065, 35.561733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012470, 33.493439, 35.577881>,  <46.131855, 33.285465, 35.587570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012470, 33.493439, 35.577881>,  <45.813499, 33.840065, 35.561733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012470, 33.493439, 35.577881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392164, 0.266137, 0.880556,
		-0.773802, -0.422184, 0.472220,
		0.497432, -0.866563, 0.040372,
		46.161701, 33.233471, 35.589993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204704, 34.476562, 35.305481>,  <45.813499, 33.840065, 35.561733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204704, 34.476562, 35.305481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465641, 34.480682, 35.002338>,  <46.622204, 34.483154, 34.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465641, 34.480682, 35.002338>,  <46.204704, 34.476562, 35.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465641, 34.480682, 35.002338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403223, 0.841943, 0.358530,
		0.641763, -0.539469, 0.545081,
		0.652343, 0.010302, -0.757854,
		46.661343, 34.483772, 34.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936062, 34.600792, 35.588791>,  <46.204704, 34.476562, 35.305481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936062, 34.600792, 35.588791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934536, 34.706268, 35.202950>,  <46.933620, 34.769554, 34.971447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934536, 34.706268, 35.202950>,  <46.936062, 34.600792, 35.588791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934536, 34.706268, 35.202950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624524, 0.753989, 0.203642,
		0.780996, -0.601639, -0.167556,
		-0.003816, 0.263687, -0.964601,
		46.933392, 34.785374, 34.913570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.654102, 34.531796, 35.241371>,  <46.936062, 34.600792, 35.588791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.654102, 34.531796, 35.241371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418274, 34.815918, 35.087551>,  <47.276775, 34.986389, 34.995258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418274, 34.815918, 35.087551>,  <47.654102, 34.531796, 35.241371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418274, 34.815918, 35.087551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662282, 0.697649, 0.273256,
		0.462375, -0.093577, -0.881733,
		-0.589570, 0.710302, -0.384550,
		47.241402, 35.029007, 34.972187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.099060, 35.014446, 34.832325>,  <47.654102, 34.531796, 35.241371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.099060, 35.014446, 34.832325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771835, 35.185894, 34.985722>,  <47.575500, 35.288761, 35.077759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771835, 35.185894, 34.985722>,  <48.099060, 35.014446, 34.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771835, 35.185894, 34.985722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492368, 0.866533, 0.081818,
		-0.297239, 0.255750, -0.919913,
		-0.818060, 0.428617, 0.383491,
		47.526417, 35.314480, 35.100769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.037910, 37.350147, 23.870802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.752731, 37.210468, 23.627569>,  <40.581623, 37.126659, 23.481628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.752731, 37.210468, 23.627569>,  <41.037910, 37.350147, 23.870802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752731, 37.210468, 23.627569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492294, -0.368281, 0.788680,
		-0.499354, 0.861642, 0.090655,
		-0.712946, -0.349202, -0.608084,
		40.538849, 37.105709, 23.445145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426350, 37.548691, 24.163254>,  <41.037910, 37.350147, 23.870802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426350, 37.548691, 24.163254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339539, 37.226723, 23.942345>,  <40.287453, 37.033543, 23.809799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.339539, 37.226723, 23.942345>,  <40.426350, 37.548691, 24.163254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339539, 37.226723, 23.942345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578689, -0.349538, 0.736846,
		-0.786141, 0.479512, -0.389937,
		-0.217029, -0.804917, -0.552275,
		40.274429, 36.985249, 23.776663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690495, 37.355541, 24.287249>,  <40.426350, 37.548691, 24.163254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690495, 37.355541, 24.287249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837593, 37.023888, 24.118820>,  <39.925854, 36.824894, 24.017763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837593, 37.023888, 24.118820>,  <39.690495, 37.355541, 24.287249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837593, 37.023888, 24.118820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628056, -0.555375, 0.545074,
		-0.685791, 0.064009, -0.724978,
		0.367745, -0.829133, -0.421072,
		39.947918, 36.775146, 23.992498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162521, 36.972755, 23.943525>,  <39.690495, 37.355541, 24.287249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162521, 36.972755, 23.943525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452034, 36.707947, 24.021368>,  <39.625740, 36.549061, 24.068073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.452034, 36.707947, 24.021368>,  <39.162521, 36.972755, 23.943525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452034, 36.707947, 24.021368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684457, -0.653017, 0.324172,
		-0.087527, -0.367829, -0.925765,
		0.723780, -0.662020, 0.194606,
		39.669167, 36.509342, 24.079750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806293, 36.306923, 23.903027>,  <39.162521, 36.972755, 23.943525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806293, 36.306923, 23.903027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132744, 36.197033, 24.106384>,  <39.328613, 36.131100, 24.228399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132744, 36.197033, 24.106384>,  <38.806293, 36.306923, 23.903027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132744, 36.197033, 24.106384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548024, -0.647057, 0.530082,
		0.183333, -0.711225, -0.678636,
		0.816124, -0.274728, 0.508396,
		39.377583, 36.114616, 24.258904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668926, 35.645523, 23.908304>,  <38.806293, 36.306923, 23.903027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668926, 35.645523, 23.908304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.940495, 35.683201, 24.199560>,  <39.103436, 35.705807, 24.374313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.940495, 35.683201, 24.199560>,  <38.668926, 35.645523, 23.908304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940495, 35.683201, 24.199560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465618, -0.711559, 0.526197,
		0.567680, -0.696283, -0.439236,
		0.678925, 0.094195, 0.728140,
		39.144173, 35.711460, 24.418003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680805, 35.007229, 24.041359>,  <38.668926, 35.645523, 23.908304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680805, 35.007229, 24.041359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810944, 35.204315, 24.364191>,  <38.889027, 35.322567, 24.557890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810944, 35.204315, 24.364191>,  <38.680805, 35.007229, 24.041359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810944, 35.204315, 24.364191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360913, -0.724196, 0.587607,
		0.874010, -0.482460, -0.057783,
		0.325343, 0.492719, 0.807081,
		38.908546, 35.352131, 24.606316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032967, 34.418217, 24.454687>,  <38.680805, 35.007229, 24.041359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032967, 34.418217, 24.454687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935501, 34.717884, 24.701061>,  <38.877022, 34.897686, 24.848885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935501, 34.717884, 24.701061>,  <39.032967, 34.418217, 24.454687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935501, 34.717884, 24.701061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277493, -0.662376, 0.695884,
		0.929315, -0.001357, 0.369285,
		-0.243661, 0.749170, 0.615933,
		38.862404, 34.942635, 24.885841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486534, 34.362339, 25.025949>,  <39.032967, 34.418217, 24.454687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486534, 34.362339, 25.025949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188446, 34.594837, 25.156668>,  <39.009594, 34.734337, 25.235098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.188446, 34.594837, 25.156668>,  <39.486534, 34.362339, 25.025949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188446, 34.594837, 25.156668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034153, -0.522712, 0.851825,
		0.665939, 0.623639, 0.409389,
		-0.745224, 0.581245, 0.326795,
		38.964878, 34.769211, 25.254705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682568, 34.475948, 25.695333>,  <39.486534, 34.362339, 25.025949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682568, 34.475948, 25.695333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.288551, 34.541035, 25.672640>,  <39.052143, 34.580086, 25.659023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.288551, 34.541035, 25.672640>,  <39.682568, 34.475948, 25.695333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288551, 34.541035, 25.672640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112015, -0.354434, 0.928347,
		0.130949, 0.920815, 0.367359,
		-0.985041, 0.162716, -0.056732,
		38.993038, 34.589848, 25.655621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419960, 34.993504, 26.294067>,  <39.682568, 34.475948, 25.695333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419960, 34.993504, 26.294067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134830, 34.738567, 26.176987>,  <38.963753, 34.585606, 26.106739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134830, 34.738567, 26.176987>,  <39.419960, 34.993504, 26.294067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134830, 34.738567, 26.176987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019162, -0.434890, 0.900280,
		-0.701078, 0.636135, 0.322214,
		-0.712827, -0.637341, -0.292702,
		38.920982, 34.547363, 26.089176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019348, 34.966187, 26.890564>,  <39.419960, 34.993504, 26.294067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019348, 34.966187, 26.890564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831039, 34.677574, 26.687481>,  <38.718056, 34.504406, 26.565632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831039, 34.677574, 26.687481>,  <39.019348, 34.966187, 26.890564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831039, 34.677574, 26.687481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187545, -0.480467, 0.856725,
		-0.862092, 0.498538, 0.090869,
		-0.470769, -0.721534, -0.507705,
		38.689808, 34.461113, 26.535170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305058, 34.855968, 27.250025>,  <39.019348, 34.966187, 26.890564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305058, 34.855968, 27.250025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369480, 34.526165, 27.033047>,  <38.408134, 34.328281, 26.902861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.369480, 34.526165, 27.033047>,  <38.305058, 34.855968, 27.250025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369480, 34.526165, 27.033047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276844, -0.565295, 0.777045,
		-0.947322, 0.025028, -0.319303,
		0.161053, -0.824509, -0.542445,
		38.417797, 34.278812, 26.870314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796093, 34.554359, 27.295399>,  <38.305058, 34.855968, 27.250025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796093, 34.554359, 27.295399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079754, 34.283138, 27.218094>,  <38.249950, 34.120403, 27.171711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079754, 34.283138, 27.218094>,  <37.796093, 34.554359, 27.295399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079754, 34.283138, 27.218094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327635, -0.559628, 0.761231,
		-0.624312, -0.476505, -0.619013,
		0.709147, -0.678056, -0.193263,
		38.292500, 34.079723, 27.160116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494728, 33.917271, 27.394571>,  <37.796093, 34.554359, 27.295399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494728, 33.917271, 27.394571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885242, 33.832508, 27.412258>,  <38.119553, 33.781651, 27.422871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885242, 33.832508, 27.412258>,  <37.494728, 33.917271, 27.394571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885242, 33.832508, 27.412258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163366, -0.587234, 0.792759,
		-0.142023, -0.781186, -0.607929,
		0.976289, -0.211905, 0.044219,
		38.178131, 33.768936, 27.425524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467522, 33.115612, 27.395327>,  <37.494728, 33.917271, 27.394571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467522, 33.115612, 27.395327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840500, 33.202793, 27.510588>,  <38.064289, 33.255104, 27.579744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840500, 33.202793, 27.510588>,  <37.467522, 33.115612, 27.395327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840500, 33.202793, 27.510588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101734, -0.606886, 0.788251,
		0.346682, -0.764319, -0.543717,
		0.932450, 0.217958, 0.288153,
		38.120235, 33.268181, 27.597034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863392, 32.495914, 27.700748>,  <37.467522, 33.115612, 27.395327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863392, 32.495914, 27.700748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075665, 32.791157, 27.867401>,  <38.203030, 32.968300, 27.967392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075665, 32.791157, 27.867401>,  <37.863392, 32.495914, 27.700748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075665, 32.791157, 27.867401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111971, -0.426196, 0.897674,
		0.840143, -0.523029, -0.143528,
		0.530680, 0.738104, 0.416630,
		38.234867, 33.012589, 27.992390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434338, 32.206615, 27.996477>,  <37.863392, 32.495914, 27.700748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434338, 32.206615, 27.996477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414803, 32.546852, 28.205898>,  <38.403080, 32.750996, 28.331551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.414803, 32.546852, 28.205898>,  <38.434338, 32.206615, 27.996477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414803, 32.546852, 28.205898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033442, -0.522494, 0.851987,
		0.998247, 0.059119, -0.002928,
		-0.048839, 0.850591, 0.523555,
		38.400150, 32.802029, 28.362965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923271, 32.132469, 28.562874>,  <38.434338, 32.206615, 27.996477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923271, 32.132469, 28.562874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670101, 32.422070, 28.672586>,  <38.518200, 32.595829, 28.738413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.670101, 32.422070, 28.672586>,  <38.923271, 32.132469, 28.562874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670101, 32.422070, 28.672586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067833, -0.404766, 0.911901,
		0.771233, 0.558563, 0.305299,
		-0.632928, 0.723997, 0.274280,
		38.480221, 32.639267, 28.754869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139328, 32.333111, 29.244705>,  <38.923271, 32.132469, 28.562874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139328, 32.333111, 29.244705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768742, 32.481602, 29.219868>,  <38.546391, 32.570694, 29.204966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.768742, 32.481602, 29.219868>,  <39.139328, 32.333111, 29.244705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768742, 32.481602, 29.219868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243844, -0.466324, 0.850342,
		0.286711, 0.802954, 0.522553,
		-0.926465, 0.371223, -0.062095,
		38.490803, 32.592968, 29.201239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888180, 32.580978, 29.905046>,  <39.139328, 32.333111, 29.244705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888180, 32.580978, 29.905046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572140, 32.469231, 29.686800>,  <38.382515, 32.402184, 29.555853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572140, 32.469231, 29.686800>,  <38.888180, 32.580978, 29.905046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572140, 32.469231, 29.686800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253454, -0.661563, 0.705759,
		-0.558124, 0.695908, 0.451895,
		-0.790100, -0.279367, -0.545615,
		38.335110, 32.385422, 29.523115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080608, 32.862724, 30.457142>,  <38.888180, 32.580978, 29.905046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080608, 32.862724, 30.457142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303436, 33.090870, 30.698591>,  <39.437134, 33.227757, 30.843460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.303436, 33.090870, 30.698591>,  <39.080608, 32.862724, 30.457142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303436, 33.090870, 30.698591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295322, 0.543283, -0.785893,
		-0.776179, 0.616063, 0.134208,
		0.557073, 0.570360, 0.603622,
		39.470558, 33.261978, 30.879679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936855, 33.639660, 30.415539>,  <39.080608, 32.862724, 30.457142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936855, 33.639660, 30.415539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322636, 33.618011, 30.519009>,  <39.554104, 33.605022, 30.581091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322636, 33.618011, 30.519009>,  <38.936855, 33.639660, 30.415539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322636, 33.618011, 30.519009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252457, 0.478126, -0.841226,
		-0.078153, 0.876622, 0.474790,
		0.964447, -0.054120, 0.258677,
		39.611969, 33.601776, 30.596611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222500, 34.339897, 30.390915>,  <38.936855, 33.639660, 30.415539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222500, 34.339897, 30.390915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538292, 34.096615, 30.357889>,  <39.727768, 33.950645, 30.338074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.538292, 34.096615, 30.357889>,  <39.222500, 34.339897, 30.390915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538292, 34.096615, 30.357889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328305, 0.532102, -0.780438,
		0.518597, 0.589031, 0.619758,
		0.789477, -0.608202, -0.082565,
		39.775135, 33.914154, 30.333120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709614, 34.758022, 30.480431>,  <39.222500, 34.339897, 30.390915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709614, 34.758022, 30.480431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871948, 34.436790, 30.305908>,  <39.969349, 34.244053, 30.201195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871948, 34.436790, 30.305908>,  <39.709614, 34.758022, 30.480431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871948, 34.436790, 30.305908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459376, 0.591942, -0.662252,
		0.790107, 0.068338, 0.609147,
		0.405837, -0.803078, -0.436305,
		39.993698, 34.195866, 30.175016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456810, 34.806087, 30.520140>,  <39.709614, 34.758022, 30.480431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456810, 34.806087, 30.520140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410496, 34.559196, 30.208851>,  <40.382710, 34.411064, 30.022078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410496, 34.559196, 30.208851>,  <40.456810, 34.806087, 30.520140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410496, 34.559196, 30.208851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547531, 0.614044, -0.568472,
		0.828737, -0.491920, 0.266852,
		-0.115783, -0.617223, -0.778222,
		40.375759, 34.374031, 29.975384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064949, 34.811710, 30.249886>,  <40.456810, 34.806087, 30.520140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064949, 34.811710, 30.249886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.822098, 34.673325, 29.963751>,  <40.676388, 34.590294, 29.792070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.822098, 34.673325, 29.963751>,  <41.064949, 34.811710, 30.249886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822098, 34.673325, 29.963751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407406, 0.637381, -0.654038,
		0.682216, -0.688516, -0.246023,
		-0.607126, -0.345964, -0.715337,
		40.639961, 34.569534, 29.749149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459194, 34.791615, 29.693003>,  <41.064949, 34.811710, 30.249886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459194, 34.791615, 29.693003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094109, 34.771053, 29.530863>,  <40.875057, 34.758717, 29.433578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.094109, 34.771053, 29.530863>,  <41.459194, 34.791615, 29.693003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094109, 34.771053, 29.530863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282175, 0.638206, -0.716289,
		0.295513, -0.768148, -0.567997,
		-0.912715, -0.051398, -0.405351,
		40.820293, 34.755634, 29.409258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535824, 34.590206, 28.964706>,  <41.459194, 34.791615, 29.693003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535824, 34.590206, 28.964706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185577, 34.779861, 29.001551>,  <40.975430, 34.893654, 29.023657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.185577, 34.779861, 29.001551>,  <41.535824, 34.590206, 28.964706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185577, 34.779861, 29.001551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324462, 0.718672, -0.615008,
		-0.357798, -0.508625, -0.783123,
		-0.875617, 0.474142, 0.092110,
		40.922894, 34.922104, 29.029184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263447, 34.678715, 28.318586>,  <41.535824, 34.590206, 28.964706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263447, 34.678715, 28.318586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.066921, 34.965591, 28.516272>,  <40.949005, 35.137718, 28.634884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.066921, 34.965591, 28.516272>,  <41.263447, 34.678715, 28.318586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066921, 34.965591, 28.516272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332195, 0.678828, -0.654859,
		-0.805147, -0.157564, -0.571763,
		-0.491310, 0.717194, 0.494214,
		40.919529, 35.180748, 28.664536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713867, 34.969475, 27.918032>,  <41.263447, 34.678715, 28.318586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713867, 34.969475, 27.918032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794594, 35.237583, 28.203690>,  <40.843029, 35.398449, 28.375084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.794594, 35.237583, 28.203690>,  <40.713867, 34.969475, 27.918032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794594, 35.237583, 28.203690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334807, 0.638009, -0.693432,
		-0.920422, 0.379044, -0.095654,
		0.201814, 0.670276, 0.714144,
		40.855137, 35.438667, 28.417933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516239, 35.646229, 27.641090>,  <40.713867, 34.969475, 27.918032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516239, 35.646229, 27.641090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764828, 35.740589, 27.939920>,  <40.913982, 35.797207, 28.119219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.764828, 35.740589, 27.939920>,  <40.516239, 35.646229, 27.641090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764828, 35.740589, 27.939920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341964, 0.776266, -0.529596,
		-0.704862, 0.584603, 0.401758,
		0.621475, 0.235905, 0.747073,
		40.951271, 35.811359, 28.164042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321304, 36.307941, 27.809048>,  <40.516239, 35.646229, 27.641090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321304, 36.307941, 27.809048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.687771, 36.259762, 27.961952>,  <40.907650, 36.230854, 28.053696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.687771, 36.259762, 27.961952>,  <40.321304, 36.307941, 27.809048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687771, 36.259762, 27.961952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312858, 0.811066, -0.494259,
		-0.250506, 0.572419, 0.780758,
		0.916170, -0.120452, 0.382263,
		40.962624, 36.223625, 28.076632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545406, 36.987862, 27.946846>,  <40.321304, 36.307941, 27.809048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545406, 36.987862, 27.946846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874508, 36.761509, 27.925447>,  <41.071968, 36.625698, 27.912609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874508, 36.761509, 27.925447>,  <40.545406, 36.987862, 27.946846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874508, 36.761509, 27.925447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498908, 0.764052, -0.409042,
		0.272342, 0.309850, 0.910946,
		0.822752, -0.565878, -0.053497,
		41.121334, 36.591747, 27.909399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170326, 37.337936, 28.285463>,  <40.545406, 36.987862, 27.946846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170326, 37.337936, 28.285463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.311710, 37.066166, 28.028263>,  <41.396542, 36.903103, 27.873943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.311710, 37.066166, 28.028263>,  <41.170326, 37.337936, 28.285463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311710, 37.066166, 28.028263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613961, 0.687095, -0.388526,
		0.705776, -0.257449, 0.660000,
		0.353458, -0.679426, -0.642999,
		41.417747, 36.862339, 27.835363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762878, 37.488991, 28.194862>,  <41.170326, 37.337936, 28.285463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762878, 37.488991, 28.194862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.758789, 37.275772, 27.856453>,  <41.756336, 37.147842, 27.653406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.758789, 37.275772, 27.856453>,  <41.762878, 37.488991, 28.194862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758789, 37.275772, 27.856453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321552, 0.799379, -0.507540,
		0.946837, -0.277232, 0.163226,
		-0.010227, -0.533044, -0.846026,
		41.755722, 37.115860, 27.602646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263996, 37.883678, 27.719183>,  <41.762878, 37.488991, 28.194862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263996, 37.883678, 27.719183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.106667, 37.615395, 27.467646>,  <42.012268, 37.454426, 27.316723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.106667, 37.615395, 27.467646>,  <42.263996, 37.883678, 27.719183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106667, 37.615395, 27.467646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373475, 0.508442, -0.775888,
		0.840128, -0.540032, 0.050512,
		-0.393321, -0.670710, -0.628845,
		41.988670, 37.414181, 27.278992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809174, 37.623108, 27.294523>,  <42.263996, 37.883678, 27.719183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809174, 37.623108, 27.294523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.469818, 37.553265, 27.094620>,  <42.266205, 37.511360, 26.974678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.469818, 37.553265, 27.094620>,  <42.809174, 37.623108, 27.294523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469818, 37.553265, 27.094620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357969, 0.506272, -0.784568,
		0.390002, -0.844513, -0.367010,
		-0.848385, -0.174605, -0.499756,
		42.215302, 37.500885, 26.944693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967754, 37.262623, 26.598742>,  <42.809174, 37.623108, 27.294523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967754, 37.262623, 26.598742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.598568, 37.412209, 26.562359>,  <42.377056, 37.501961, 26.540529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.598568, 37.412209, 26.562359>,  <42.967754, 37.262623, 26.598742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598568, 37.412209, 26.562359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142809, 0.113315, -0.983242,
		-0.357394, -0.920493, -0.157992,
		-0.922970, 0.373968, -0.090956,
		42.321678, 37.524399, 26.535072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657288, 36.895794, 26.149588>,  <42.967754, 37.262623, 26.598742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657288, 36.895794, 26.149588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.448818, 37.237129, 26.144133>,  <42.323738, 37.441933, 26.140860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.448818, 37.237129, 26.144133>,  <42.657288, 36.895794, 26.149588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448818, 37.237129, 26.144133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003579, -0.013794, -0.999898,
		-0.853444, -0.521168, 0.004135,
		-0.521173, 0.853343, -0.013637,
		42.292465, 37.493134, 26.140041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.007946, 36.826092, 25.555523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060886, 37.215820, 25.628387>,  <42.092651, 37.449657, 25.672106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.060886, 37.215820, 25.628387>,  <42.007946, 36.826092, 25.555523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060886, 37.215820, 25.628387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096323, 0.170267, -0.980679,
		-0.986511, 0.147344, -0.071314,
		0.132355, 0.974320, 0.182163,
		42.100594, 37.508118, 25.683037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518257, 37.155994, 25.098501>,  <42.007946, 36.826092, 25.555523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518257, 37.155994, 25.098501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748913, 37.465183, 25.204327>,  <41.887306, 37.650696, 25.267822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.748913, 37.465183, 25.204327>,  <41.518257, 37.155994, 25.098501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748913, 37.465183, 25.204327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000217, 0.323681, -0.946166,
		-0.816997, 0.545656, 0.186480,
		0.576642, 0.772975, 0.264565,
		41.921906, 37.697075, 25.283695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278301, 37.774952, 24.854681>,  <41.518257, 37.155994, 25.098501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278301, 37.774952, 24.854681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662933, 37.875004, 24.899918>,  <41.893715, 37.935036, 24.927059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662933, 37.875004, 24.899918>,  <41.278301, 37.774952, 24.854681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662933, 37.875004, 24.899918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022016, 0.480919, -0.876488,
		-0.273625, 0.840328, 0.467951,
		0.961584, 0.250132, 0.113091,
		41.951408, 37.950043, 24.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354256, 38.476891, 24.695501>,  <41.278301, 37.774952, 24.854681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354256, 38.476891, 24.695501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721752, 38.325943, 24.649025>,  <41.942249, 38.235374, 24.621140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721752, 38.325943, 24.649025>,  <41.354256, 38.476891, 24.695501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721752, 38.325943, 24.649025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118067, 0.543357, -0.831158,
		0.376788, 0.749903, 0.543761,
		0.918744, -0.377371, -0.116192,
		41.997375, 38.212730, 24.614168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774002, 39.035160, 24.416151>,  <41.354256, 38.476891, 24.695501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774002, 39.035160, 24.416151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023418, 38.729046, 24.352228>,  <42.173069, 38.545380, 24.313875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023418, 38.729046, 24.352228>,  <41.774002, 39.035160, 24.416151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023418, 38.729046, 24.352228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225601, 0.371850, -0.900462,
		0.748531, 0.525425, 0.404512,
		0.623543, -0.765282, -0.159805,
		42.210480, 38.499462, 24.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480694, 39.265884, 24.347582>,  <41.774002, 39.035160, 24.416151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480694, 39.265884, 24.347582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.469429, 38.914959, 24.155947>,  <42.462669, 38.704403, 24.040966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.469429, 38.914959, 24.155947>,  <42.480694, 39.265884, 24.347582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469429, 38.914959, 24.155947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337763, 0.442737, -0.830603,
		0.940810, -0.185205, 0.283858,
		-0.028157, -0.877316, -0.479087,
		42.460983, 38.651764, 24.012220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163273, 39.243855, 24.003786>,  <42.480694, 39.265884, 24.347582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163273, 39.243855, 24.003786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912128, 38.999657, 23.810669>,  <42.761444, 38.853138, 23.694798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.912128, 38.999657, 23.810669>,  <43.163273, 39.243855, 24.003786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912128, 38.999657, 23.810669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393807, 0.285867, -0.873611,
		0.671351, -0.738630, 0.060935,
		-0.627856, -0.610496, -0.482795,
		42.723770, 38.816509, 23.665831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549309, 38.971619, 23.424286>,  <43.163273, 39.243855, 24.003786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549309, 38.971619, 23.424286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.184978, 38.855942, 23.306461>,  <42.966381, 38.786537, 23.235767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.184978, 38.855942, 23.306461>,  <43.549309, 38.971619, 23.424286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184978, 38.855942, 23.306461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237966, 0.215220, -0.947128,
		0.337294, -0.932765, -0.127211,
		-0.910827, -0.289188, -0.294559,
		42.911732, 38.769184, 23.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604877, 38.353313, 22.996418>,  <43.549309, 38.971619, 23.424286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604877, 38.353313, 22.996418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.244343, 38.508240, 22.918884>,  <43.028023, 38.601196, 22.872364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.244343, 38.508240, 22.918884>,  <43.604877, 38.353313, 22.996418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244343, 38.508240, 22.918884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259771, 0.125334, -0.957502,
		-0.346561, -0.913388, -0.213582,
		-0.901340, 0.387316, -0.193836,
		42.973942, 38.624435, 22.860733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478973, 38.052410, 22.364759>,  <43.604877, 38.353313, 22.996418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478973, 38.052410, 22.364759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.254368, 38.380802, 22.406109>,  <43.119602, 38.577839, 22.430918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.254368, 38.380802, 22.406109>,  <43.478973, 38.052410, 22.364759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254368, 38.380802, 22.406109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263668, 0.295939, -0.918095,
		-0.784333, -0.488270, -0.382642,
		-0.561517, 0.820983, 0.103374,
		43.085915, 38.627098, 22.437120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305798, 38.123676, 21.651024>,  <43.478973, 38.052410, 22.364759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305798, 38.123676, 21.651024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218304, 38.484180, 21.800634>,  <43.165810, 38.700481, 21.890400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.218304, 38.484180, 21.800634>,  <43.305798, 38.123676, 21.651024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218304, 38.484180, 21.800634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409955, 0.432714, -0.802929,
		-0.885490, -0.022294, -0.464123,
		-0.218733, 0.901256, 0.374024,
		43.152683, 38.754559, 21.912842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998867, 38.528599, 21.088387>,  <43.305798, 38.123676, 21.651024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998867, 38.528599, 21.088387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107147, 38.826645, 21.332199>,  <43.172115, 39.005470, 21.478487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107147, 38.826645, 21.332199>,  <42.998867, 38.528599, 21.088387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107147, 38.826645, 21.332199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219552, 0.568699, -0.792703,
		-0.937294, 0.348407, -0.009646,
		0.270697, 0.745113, 0.609532,
		43.188358, 39.050179, 21.515059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644051, 39.176765, 20.950966>,  <42.998867, 38.528599, 21.088387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644051, 39.176765, 20.950966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955338, 39.330498, 21.149626>,  <43.142109, 39.422737, 21.268822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.955338, 39.330498, 21.149626>,  <42.644051, 39.176765, 20.950966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955338, 39.330498, 21.149626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192301, 0.607024, -0.771066,
		-0.597823, 0.695566, 0.398492,
		0.778221, 0.384330, 0.496651,
		43.188805, 39.445797, 21.298620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608929, 39.832829, 20.868267>,  <42.644051, 39.176765, 20.950966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608929, 39.832829, 20.868267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995773, 39.780453, 20.955498>,  <43.227879, 39.749027, 21.007835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.995773, 39.780453, 20.955498>,  <42.608929, 39.832829, 20.868267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995773, 39.780453, 20.955498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252833, 0.588774, -0.767737,
		-0.027873, 0.797622, 0.602513,
		0.967108, -0.130936, 0.218076,
		43.285908, 39.741173, 21.020920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899918, 40.456795, 20.778027>,  <42.608929, 39.832829, 20.868267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899918, 40.456795, 20.778027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.192348, 40.187706, 20.732483>,  <43.367809, 40.026253, 20.705156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.192348, 40.187706, 20.732483>,  <42.899918, 40.456795, 20.778027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192348, 40.187706, 20.732483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334486, 0.498826, -0.799557,
		0.594677, 0.546457, 0.589698,
		0.731080, -0.672724, -0.113859,
		43.411671, 39.985889, 20.698326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436497, 40.854446, 20.488110>,  <42.899918, 40.456795, 20.778027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436497, 40.854446, 20.488110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577877, 40.482292, 20.449230>,  <43.662704, 40.258999, 20.425903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.577877, 40.482292, 20.449230>,  <43.436497, 40.854446, 20.488110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577877, 40.482292, 20.449230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511567, 0.279237, -0.812604,
		0.783179, 0.237495, 0.574654,
		0.353454, -0.930389, -0.097198,
		43.683914, 40.203175, 20.420071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147442, 40.932941, 20.635971>,  <43.436497, 40.854446, 20.488110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147442, 40.932941, 20.635971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088387, 40.598652, 20.424400>,  <44.052952, 40.398079, 20.297459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088387, 40.598652, 20.424400>,  <44.147442, 40.932941, 20.635971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088387, 40.598652, 20.424400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626599, 0.334732, -0.703796,
		0.765229, -0.435334, 0.474245,
		-0.147642, -0.835727, -0.528926,
		44.044094, 40.347935, 20.265722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745014, 40.782631, 20.370037>,  <44.147442, 40.932941, 20.635971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745014, 40.782631, 20.370037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.477966, 40.600567, 20.134375>,  <44.317738, 40.491329, 19.992977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.477966, 40.600567, 20.134375>,  <44.745014, 40.782631, 20.370037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477966, 40.600567, 20.134375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489269, 0.328228, -0.808011,
		0.561155, -0.827703, 0.003565,
		-0.667623, -0.455164, -0.589156,
		44.277679, 40.464016, 19.957628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156208, 40.491764, 19.811464>,  <44.745014, 40.782631, 20.370037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156208, 40.491764, 19.811464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786430, 40.496220, 19.659004>,  <44.564564, 40.498894, 19.567528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786430, 40.496220, 19.659004>,  <45.156208, 40.491764, 19.811464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786430, 40.496220, 19.659004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374682, 0.212154, -0.902554,
		0.070812, -0.977173, -0.200297,
		-0.924446, 0.011136, -0.381152,
		44.509098, 40.499561, 19.544659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235355, 40.264374, 19.056692>,  <45.156208, 40.491764, 19.811464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235355, 40.264374, 19.056692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.871445, 40.428581, 19.081278>,  <44.653099, 40.527107, 19.096029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.871445, 40.428581, 19.081278>,  <45.235355, 40.264374, 19.056692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871445, 40.428581, 19.081278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024606, 0.201145, -0.979252,
		-0.414364, -0.889391, -0.193099,
		-0.909779, 0.410518, 0.061463,
		44.598511, 40.551735, 19.099716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859653, 39.965954, 18.516199>,  <45.235355, 40.264374, 19.056692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859653, 39.965954, 18.516199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687469, 40.317284, 18.599388>,  <44.584160, 40.528080, 18.649302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687469, 40.317284, 18.599388>,  <44.859653, 39.965954, 18.516199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687469, 40.317284, 18.599388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033511, 0.245804, -0.968740,
		-0.901988, -0.410032, -0.135242,
		-0.430458, 0.878324, 0.207972,
		44.558331, 40.580780, 18.661779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258709, 39.916222, 18.104282>,  <44.859653, 39.965954, 18.516199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258709, 39.916222, 18.104282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.331001, 40.301716, 18.182819>,  <44.374378, 40.533012, 18.229942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.331001, 40.301716, 18.182819>,  <44.258709, 39.916222, 18.104282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331001, 40.301716, 18.182819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232887, 0.152020, -0.960549,
		-0.955562, 0.219328, -0.196967,
		0.180733, 0.963735, 0.196343,
		44.385220, 40.590836, 18.241722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033417, 40.349503, 17.512403>,  <44.258709, 39.916222, 18.104282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033417, 40.349503, 17.512403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.329205, 40.533466, 17.709044>,  <44.506676, 40.643845, 17.827028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.329205, 40.533466, 17.709044>,  <44.033417, 40.349503, 17.512403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329205, 40.533466, 17.709044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426303, 0.245264, -0.870696,
		-0.521012, 0.853423, -0.014695,
		0.739467, 0.459908, 0.491602,
		44.551044, 40.671440, 17.856524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918877, 40.473816, 16.666189>,  <44.033417, 40.349503, 17.512403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918877, 40.473816, 16.666189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.626301, 40.483913, 16.393612>,  <43.450756, 40.489971, 16.230066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.626301, 40.483913, 16.393612>,  <43.918877, 40.473816, 16.666189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626301, 40.483913, 16.393612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636001, -0.385727, 0.668369,
		-0.245978, 0.922267, 0.298190,
		-0.731435, 0.025245, -0.681443,
		43.406872, 40.491486, 16.189178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423176, 40.897045, 16.971006>,  <43.918877, 40.473816, 16.666189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423176, 40.897045, 16.971006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.274769, 40.632698, 16.710056>,  <43.185726, 40.474091, 16.553486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.274769, 40.632698, 16.710056>,  <43.423176, 40.897045, 16.971006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274769, 40.632698, 16.710056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608546, -0.357618, 0.708365,
		-0.701440, 0.659817, -0.269488,
		-0.371017, -0.660872, -0.652377,
		43.163464, 40.434437, 16.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681988, 40.937683, 16.976463>,  <43.423176, 40.897045, 16.971006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681988, 40.937683, 16.976463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.748203, 40.572594, 16.827045>,  <42.787933, 40.353542, 16.737394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.748203, 40.572594, 16.827045>,  <42.681988, 40.937683, 16.976463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748203, 40.572594, 16.827045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644433, -0.386832, 0.659596,
		-0.746527, 0.131535, -0.652224,
		0.165541, -0.912721, -0.373546,
		42.797867, 40.298779, 16.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011524, 40.657772, 16.846825>,  <42.681988, 40.937683, 16.976463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011524, 40.657772, 16.846825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257114, 40.342075, 16.851313>,  <42.404469, 40.152657, 16.854006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257114, 40.342075, 16.851313>,  <42.011524, 40.657772, 16.846825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257114, 40.342075, 16.851313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557852, -0.423825, 0.713564,
		-0.558422, -0.444369, -0.700500,
		0.613975, -0.789246, 0.011220,
		42.441307, 40.105301, 16.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587765, 40.179424, 16.961731>,  <42.011524, 40.657772, 16.846825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587765, 40.179424, 16.961731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.936657, 40.016006, 17.069294>,  <42.145992, 39.917953, 17.133831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.936657, 40.016006, 17.069294>,  <41.587765, 40.179424, 16.961731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936657, 40.016006, 17.069294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481194, -0.618316, 0.621399,
		-0.087600, -0.671398, -0.735902,
		0.872226, -0.408546, 0.268908,
		42.198326, 39.893444, 17.149967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520344, 39.391937, 16.945473>,  <41.587765, 40.179424, 16.961731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520344, 39.391937, 16.945473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.841404, 39.435230, 17.180094>,  <42.034039, 39.461205, 17.320866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.841404, 39.435230, 17.180094>,  <41.520344, 39.391937, 16.945473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841404, 39.435230, 17.180094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472908, -0.483804, 0.736405,
		0.363476, -0.868459, -0.337142,
		0.802648, 0.108229, 0.586552,
		42.082199, 39.467697, 17.356060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606358, 38.809349, 17.261366>,  <41.520344, 39.391937, 16.945473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606358, 38.809349, 17.261366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761082, 39.078224, 17.513885>,  <41.853916, 39.239552, 17.665398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761082, 39.078224, 17.513885>,  <41.606358, 38.809349, 17.261366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761082, 39.078224, 17.513885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388181, -0.502290, 0.772671,
		0.836478, -0.543934, 0.066641,
		0.386809, 0.672190, 0.631300,
		41.877125, 39.279881, 17.703276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919441, 38.348804, 17.714445>,  <41.606358, 38.809349, 17.261366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919441, 38.348804, 17.714445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924030, 38.702076, 17.902006>,  <41.926785, 38.914040, 18.014544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924030, 38.702076, 17.902006>,  <41.919441, 38.348804, 17.714445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924030, 38.702076, 17.902006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091198, -0.466056, 0.880042,
		0.995766, -0.052863, 0.075195,
		0.011477, 0.883175, 0.468904,
		41.927475, 38.967030, 18.042677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376801, 38.234989, 18.261942>,  <41.919441, 38.348804, 17.714445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376801, 38.234989, 18.261942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147568, 38.547894, 18.359623>,  <42.010029, 38.735638, 18.418232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147568, 38.547894, 18.359623>,  <42.376801, 38.234989, 18.261942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147568, 38.547894, 18.359623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071751, -0.344741, 0.935951,
		0.816348, 0.518858, 0.253695,
		-0.573085, 0.782265, 0.244200,
		41.975643, 38.782574, 18.432882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584217, 38.323292, 18.930513>,  <42.376801, 38.234989, 18.261942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584217, 38.323292, 18.930513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252102, 38.545254, 18.909708>,  <42.052834, 38.678432, 18.897224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.252102, 38.545254, 18.909708>,  <42.584217, 38.323292, 18.930513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252102, 38.545254, 18.909708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218931, -0.238907, 0.946041,
		0.512536, 0.796872, 0.319847,
		-0.830287, 0.554904, -0.052011,
		42.003017, 38.711723, 18.894104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593365, 38.824986, 19.499199>,  <42.584217, 38.323292, 18.930513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593365, 38.824986, 19.499199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214108, 38.752247, 19.394928>,  <41.986553, 38.708603, 19.332365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.214108, 38.752247, 19.394928>,  <42.593365, 38.824986, 19.499199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214108, 38.752247, 19.394928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206287, -0.271862, 0.939967,
		-0.241796, 0.944999, 0.220252,
		-0.948146, -0.181845, -0.260676,
		41.929665, 38.697693, 19.316725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186424, 39.251411, 20.024933>,  <42.593365, 38.824986, 19.499199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186424, 39.251411, 20.024933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930164, 38.993061, 19.858843>,  <41.776409, 38.838051, 19.759188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930164, 38.993061, 19.858843>,  <42.186424, 39.251411, 20.024933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930164, 38.993061, 19.858843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364644, -0.219986, 0.904788,
		-0.675723, 0.731063, -0.094580,
		-0.640651, -0.645874, -0.415227,
		41.737968, 38.799297, 19.734274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437275, 39.446117, 20.375101>,  <42.186424, 39.251411, 20.024933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437275, 39.446117, 20.375101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442291, 39.067593, 20.245899>,  <41.445301, 38.840477, 20.168379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442291, 39.067593, 20.245899>,  <41.437275, 39.446117, 20.375101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442291, 39.067593, 20.245899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244676, -0.316116, 0.916627,
		-0.969524, 0.067532, -0.235506,
		0.012545, -0.946314, -0.323005,
		41.446056, 38.783699, 20.148998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848080, 39.173138, 20.699055>,  <41.437275, 39.446117, 20.375101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848080, 39.173138, 20.699055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064156, 38.848583, 20.609743>,  <41.193802, 38.653851, 20.556156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064156, 38.848583, 20.609743>,  <40.848080, 39.173138, 20.699055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064156, 38.848583, 20.609743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348188, -0.457039, 0.818462,
		-0.766134, -0.364379, -0.529401,
		0.540188, -0.811383, -0.223281,
		41.226212, 38.605167, 20.542759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430855, 38.685833, 20.946861>,  <40.848080, 39.173138, 20.699055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430855, 38.685833, 20.946861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798199, 38.529369, 20.922823>,  <41.018604, 38.435490, 20.908400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798199, 38.529369, 20.922823>,  <40.430855, 38.685833, 20.946861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798199, 38.529369, 20.922823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189196, -0.567320, 0.801469,
		-0.347599, -0.724665, -0.595009,
		0.918357, -0.391163, -0.060096,
		41.073708, 38.412022, 20.904795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303570, 38.017628, 21.073614>,  <40.430855, 38.685833, 20.946861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303570, 38.017628, 21.073614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693192, 38.074451, 21.144089>,  <40.926964, 38.108547, 21.186373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693192, 38.074451, 21.144089>,  <40.303570, 38.017628, 21.073614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693192, 38.074451, 21.144089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053471, -0.611991, 0.789055,
		0.219917, -0.778002, -0.588515,
		0.974052, 0.142058, 0.176187,
		40.985409, 38.117069, 21.196945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557247, 37.339905, 21.124039>,  <40.303570, 38.017628, 21.073614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557247, 37.339905, 21.124039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799500, 37.592728, 21.317413>,  <40.944851, 37.744423, 21.433437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799500, 37.592728, 21.317413>,  <40.557247, 37.339905, 21.124039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799500, 37.592728, 21.317413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008205, -0.602536, 0.798050,
		0.795700, -0.487294, -0.359730,
		0.605635, 0.632057, 0.483436,
		40.981190, 37.782345, 21.462444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077953, 36.919060, 21.309137>,  <40.557247, 37.339905, 21.124039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077953, 36.919060, 21.309137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087830, 37.237720, 21.550709>,  <41.093754, 37.428917, 21.695652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087830, 37.237720, 21.550709>,  <41.077953, 36.919060, 21.309137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087830, 37.237720, 21.550709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049125, -0.602415, 0.796670,
		0.998487, -0.049339, 0.024262,
		0.024691, 0.796656, 0.603928,
		41.095238, 37.476719, 21.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235603, 36.631428, 21.927046>,  <41.077953, 36.919060, 21.309137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235603, 36.631428, 21.927046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111023, 36.983486, 22.070345>,  <41.036274, 37.194721, 22.156324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.111023, 36.983486, 22.070345>,  <41.235603, 36.631428, 21.927046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111023, 36.983486, 22.070345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197803, -0.428787, 0.881485,
		0.929447, 0.203677, 0.307641,
		-0.311451, 0.880146, 0.358247,
		41.017590, 37.247532, 22.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512268, 36.625713, 22.607351>,  <41.235603, 36.631428, 21.927046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512268, 36.625713, 22.607351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209457, 36.885246, 22.576569>,  <41.027771, 37.040966, 22.558100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.209457, 36.885246, 22.576569>,  <41.512268, 36.625713, 22.607351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209457, 36.885246, 22.576569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324354, -0.270946, 0.906302,
		0.567190, 0.711056, 0.415566,
		-0.757027, 0.648836, -0.076955,
		40.982349, 37.079899, 22.553482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466877, 36.971035, 23.234102>,  <41.512268, 36.625713, 22.607351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466877, 36.971035, 23.234102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098740, 37.037903, 23.092667>,  <40.877857, 37.078022, 23.007805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098740, 37.037903, 23.092667>,  <41.466877, 36.971035, 23.234102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098740, 37.037903, 23.092667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390835, -0.358960, 0.847582,
		0.014767, 0.918260, 0.395702,
		-0.920342, 0.167171, -0.353587,
		40.822636, 37.088055, 22.986589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.253880, 35.847599, 27.945522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926487, 36.075111, 27.913095>,  <41.730049, 36.211620, 27.893641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926487, 36.075111, 27.913095>,  <42.253880, 35.847599, 27.945522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926487, 36.075111, 27.913095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376767, -0.424857, 0.823130,
		0.433741, 0.704261, 0.562036,
		-0.818483, 0.568782, -0.081065,
		41.680943, 36.245747, 27.888777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157959, 36.153412, 28.572622>,  <42.253880, 35.847599, 27.945522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157959, 36.153412, 28.572622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791294, 36.150566, 28.412783>,  <41.571297, 36.148861, 28.316879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791294, 36.150566, 28.412783>,  <42.157959, 36.153412, 28.572622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791294, 36.150566, 28.412783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353298, -0.453001, 0.818517,
		-0.186839, 0.891482, 0.412737,
		-0.916663, -0.007111, -0.399597,
		41.516296, 36.148434, 28.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676407, 36.186977, 29.194107>,  <42.157959, 36.153412, 28.572622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676407, 36.186977, 29.194107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.450531, 36.072090, 28.884623>,  <41.315006, 36.003159, 28.698933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.450531, 36.072090, 28.884623>,  <41.676407, 36.186977, 29.194107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450531, 36.072090, 28.884623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588065, -0.517737, 0.621393,
		-0.579056, 0.805887, 0.123456,
		-0.564689, -0.287221, -0.773712,
		41.281124, 35.985924, 28.652510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059975, 36.207645, 29.455832>,  <41.676407, 36.186977, 29.194107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059975, 36.207645, 29.455832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006397, 35.972015, 29.137072>,  <40.974251, 35.830635, 28.945816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006397, 35.972015, 29.137072>,  <41.059975, 36.207645, 29.455832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006397, 35.972015, 29.137072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544085, -0.628389, 0.555966,
		-0.828269, 0.508050, -0.236338,
		-0.133946, -0.589078, -0.796898,
		40.966213, 35.795292, 28.898003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369247, 35.969749, 29.515369>,  <41.059975, 36.207645, 29.455832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369247, 35.969749, 29.515369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558945, 35.737469, 29.250681>,  <40.672764, 35.598103, 29.091867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558945, 35.737469, 29.250681>,  <40.369247, 35.969749, 29.515369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558945, 35.737469, 29.250681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413875, -0.810444, 0.414593,
		-0.777044, 0.077252, -0.624687,
		0.474246, -0.580700, -0.661724,
		40.701218, 35.563259, 29.052164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822006, 35.568832, 29.286766>,  <40.369247, 35.969749, 29.515369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822006, 35.568832, 29.286766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152710, 35.364906, 29.191641>,  <40.351131, 35.242550, 29.134565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.152710, 35.364906, 29.191641>,  <39.822006, 35.568832, 29.286766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152710, 35.364906, 29.191641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338648, -0.788599, 0.513254,
		-0.449205, -0.343802, -0.824630,
		0.826760, -0.509815, -0.237815,
		40.400738, 35.211960, 29.120296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605621, 34.781078, 28.952446>,  <39.822006, 35.568832, 29.286766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605621, 34.781078, 28.952446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986343, 34.769863, 29.074615>,  <40.214775, 34.763134, 29.147917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986343, 34.769863, 29.074615>,  <39.605621, 34.781078, 28.952446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986343, 34.769863, 29.074615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141463, -0.923701, 0.356041,
		0.272136, -0.382088, -0.883149,
		0.951804, -0.028042, 0.305424,
		40.271885, 34.761452, 29.166243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917797, 34.137791, 28.740328>,  <39.605621, 34.781078, 28.952446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917797, 34.137791, 28.740328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124660, 34.270790, 29.055794>,  <40.248779, 34.350590, 29.245073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124660, 34.270790, 29.055794>,  <39.917797, 34.137791, 28.740328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124660, 34.270790, 29.055794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193397, -0.852226, 0.486116,
		0.833755, -0.403924, -0.376429,
		0.517156, 0.332501, 0.788665,
		40.279808, 34.370541, 29.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095772, 33.535057, 29.048571>,  <39.917797, 34.137791, 28.740328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095772, 33.535057, 29.048571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197128, 33.805283, 29.325527>,  <40.257942, 33.967419, 29.491701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197128, 33.805283, 29.325527>,  <40.095772, 33.535057, 29.048571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197128, 33.805283, 29.325527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013368, -0.713236, 0.700796,
		0.967271, -0.186834, -0.171699,
		0.253395, 0.675564, 0.692390,
		40.273148, 34.007954, 29.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495037, 33.147316, 29.548820>,  <40.095772, 33.535057, 29.048571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495037, 33.147316, 29.548820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384689, 33.476482, 29.747498>,  <40.318481, 33.673985, 29.866703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.384689, 33.476482, 29.747498>,  <40.495037, 33.147316, 29.548820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384689, 33.476482, 29.747498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123660, -0.542835, 0.830686,
		0.953207, 0.167741, 0.251514,
		-0.275870, 0.822918, 0.496691,
		40.301929, 33.723358, 29.896505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837921, 33.234604, 30.213827>,  <40.495037, 33.147316, 29.548820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837921, 33.234604, 30.213827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496029, 33.437790, 30.256552>,  <40.290894, 33.559700, 30.282187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496029, 33.437790, 30.256552>,  <40.837921, 33.234604, 30.213827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496029, 33.437790, 30.256552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172711, -0.472352, 0.864323,
		0.489499, 0.720315, 0.491464,
		-0.854729, 0.507967, 0.106809,
		40.239609, 33.590179, 30.288595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802807, 33.395180, 30.964334>,  <40.837921, 33.234604, 30.213827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802807, 33.395180, 30.964334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431686, 33.514084, 30.874163>,  <40.209015, 33.585426, 30.820061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431686, 33.514084, 30.874163>,  <40.802807, 33.395180, 30.964334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431686, 33.514084, 30.874163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289541, -0.192699, 0.937568,
		0.235266, 0.935148, 0.264856,
		-0.927802, 0.297264, -0.225429,
		40.153347, 33.603264, 30.806534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544662, 33.908245, 31.408710>,  <40.802807, 33.395180, 30.964334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544662, 33.908245, 31.408710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212181, 33.732258, 31.272749>,  <40.012691, 33.626667, 31.191174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.212181, 33.732258, 31.272749>,  <40.544662, 33.908245, 31.408710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212181, 33.732258, 31.272749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303240, -0.153659, 0.940444,
		-0.465991, 0.884771, -0.005693,
		-0.831203, -0.439965, -0.339901,
		39.962822, 33.600269, 31.170778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857841, 34.357277, 31.592392>,  <40.544662, 33.908245, 31.408710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857841, 34.357277, 31.592392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815529, 33.960503, 31.564484>,  <39.790142, 33.722439, 31.547739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815529, 33.960503, 31.564484>,  <39.857841, 34.357277, 31.592392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815529, 33.960503, 31.564484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109942, -0.058066, 0.992241,
		-0.988293, 0.112630, -0.102913,
		-0.105781, -0.991939, -0.069769,
		39.783794, 33.662922, 31.543552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686646, 35.048084, 31.910692>,  <39.857841, 34.357277, 31.592392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686646, 35.048084, 31.910692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700642, 35.289463, 32.229347>,  <39.709042, 35.434288, 32.420540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700642, 35.289463, 32.229347>,  <39.686646, 35.048084, 31.910692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700642, 35.289463, 32.229347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164082, 0.789777, -0.591042,
		-0.985826, -0.110031, 0.126651,
		0.034993, 0.603445, 0.796636,
		39.711140, 35.470497, 32.468338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258541, 35.612926, 31.664398>,  <39.686646, 35.048084, 31.910692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258541, 35.612926, 31.664398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471680, 35.758640, 31.969913>,  <39.599564, 35.846069, 32.153221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471680, 35.758640, 31.969913>,  <39.258541, 35.612926, 31.664398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471680, 35.758640, 31.969913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050008, 0.914576, -0.401311,
		-0.844732, 0.175642, 0.505546,
		0.532847, 0.364282, 0.763788,
		39.631535, 35.867924, 32.199051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818615, 36.183571, 31.914995>,  <39.258541, 35.612926, 31.664398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818615, 36.183571, 31.914995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202408, 36.213272, 32.023724>,  <39.432682, 36.231091, 32.088963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202408, 36.213272, 32.023724>,  <38.818615, 36.183571, 31.914995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202408, 36.213272, 32.023724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021672, 0.942355, -0.333912,
		-0.280947, 0.326272, 0.902561,
		0.959479, 0.074251, 0.271822,
		39.490250, 36.235546, 32.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847103, 36.893936, 31.991249>,  <38.818615, 36.183571, 31.914995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847103, 36.893936, 31.991249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224403, 36.762486, 32.010380>,  <39.450783, 36.683617, 32.021858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224403, 36.762486, 32.010380>,  <38.847103, 36.893936, 31.991249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224403, 36.762486, 32.010380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267173, 0.665423, -0.697015,
		0.197234, 0.670236, 0.715459,
		0.943248, -0.328626, 0.047825,
		39.507378, 36.663898, 32.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266743, 37.523273, 32.098553>,  <38.847103, 36.893936, 31.991249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266743, 37.523273, 32.098553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483238, 37.228050, 31.937391>,  <39.613136, 37.050915, 31.840694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483238, 37.228050, 31.937391>,  <39.266743, 37.523273, 32.098553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483238, 37.228050, 31.937391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342727, 0.631173, -0.695815,
		0.767853, 0.238517, 0.594568,
		0.541239, -0.738058, -0.402902,
		39.645611, 37.006634, 31.816521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000313, 37.782154, 31.965940>,  <39.266743, 37.523273, 32.098553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000313, 37.782154, 31.965940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954094, 37.471855, 31.717791>,  <39.926365, 37.285675, 31.568901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954094, 37.471855, 31.717791>,  <40.000313, 37.782154, 31.965940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954094, 37.471855, 31.717791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492270, 0.497744, -0.714088,
		0.862740, -0.387900, 0.324366,
		-0.115544, -0.775748, -0.620375,
		39.919430, 37.239132, 31.531677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532753, 37.892769, 31.597225>,  <40.000313, 37.782154, 31.965940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532753, 37.892769, 31.597225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328453, 37.625290, 31.381084>,  <40.205872, 37.464802, 31.251400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328453, 37.625290, 31.381084>,  <40.532753, 37.892769, 31.597225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328453, 37.625290, 31.381084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365088, 0.400326, -0.840505,
		0.778359, -0.626565, 0.039665,
		-0.510752, -0.668696, -0.540349,
		40.175228, 37.424683, 31.218979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065697, 37.523941, 31.179712>,  <40.532753, 37.892769, 31.597225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065697, 37.523941, 31.179712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.703831, 37.518814, 31.009336>,  <40.486713, 37.515739, 30.907112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.703831, 37.518814, 31.009336>,  <41.065697, 37.523941, 31.179712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703831, 37.518814, 31.009336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392403, 0.364683, -0.844409,
		0.166157, -0.931043, -0.324885,
		-0.904661, -0.012819, -0.425939,
		40.432434, 37.514969, 30.881556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198418, 37.376514, 30.548006>,  <41.065697, 37.523941, 31.179712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198418, 37.376514, 30.548006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825840, 37.513103, 30.497702>,  <40.602295, 37.595058, 30.467518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825840, 37.513103, 30.497702>,  <41.198418, 37.376514, 30.548006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825840, 37.513103, 30.497702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291946, 0.494928, -0.818422,
		-0.217226, -0.799026, -0.560687,
		-0.931440, 0.341473, -0.125762,
		40.546410, 37.615543, 30.459972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029095, 37.323090, 29.869310>,  <41.198418, 37.376514, 30.548006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029095, 37.323090, 29.869310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765656, 37.595150, 29.998085>,  <40.607590, 37.758385, 30.075350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765656, 37.595150, 29.998085>,  <41.029095, 37.323090, 29.869310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765656, 37.595150, 29.998085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055831, 0.470813, -0.880465,
		-0.750418, -0.561901, -0.348052,
		-0.658601, 0.680149, 0.321935,
		40.568077, 37.799194, 30.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551826, 37.354687, 29.283003>,  <41.029095, 37.323090, 29.869310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551826, 37.354687, 29.283003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493839, 37.691128, 29.491436>,  <40.459049, 37.892994, 29.616495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.493839, 37.691128, 29.491436>,  <40.551826, 37.354687, 29.283003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493839, 37.691128, 29.491436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150342, 0.539256, -0.828613,
		-0.977948, -0.041780, -0.204627,
		-0.144966, 0.841105, 0.521083,
		40.450348, 37.943459, 29.647760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175491, 37.728508, 28.859600>,  <40.551826, 37.354687, 29.283003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175491, 37.728508, 28.859600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332237, 38.009541, 29.097197>,  <40.426285, 38.178162, 29.239754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.332237, 38.009541, 29.097197>,  <40.175491, 37.728508, 28.859600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332237, 38.009541, 29.097197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151974, 0.587323, -0.794956,
		-0.907386, 0.401783, 0.123375,
		0.391861, 0.702582, 0.593989,
		40.449795, 38.220314, 29.275393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804924, 38.353691, 28.683636>,  <40.175491, 37.728508, 28.859600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804924, 38.353691, 28.683636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127724, 38.463776, 28.892639>,  <40.321404, 38.529827, 29.018042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.127724, 38.463776, 28.892639>,  <39.804924, 38.353691, 28.683636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127724, 38.463776, 28.892639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128213, 0.782022, -0.609921,
		-0.576470, 0.559196, 0.595803,
		0.806997, 0.275211, 0.522508,
		40.369823, 38.546341, 29.049391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720619, 39.037594, 28.783239>,  <39.804924, 38.353691, 28.683636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720619, 39.037594, 28.783239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104988, 38.927048, 28.789663>,  <40.335609, 38.860722, 28.793518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104988, 38.927048, 28.789663>,  <39.720619, 39.037594, 28.783239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104988, 38.927048, 28.789663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232465, 0.774061, -0.588888,
		0.150313, 0.569608, 0.808055,
		0.960919, -0.276362, 0.016062,
		40.393265, 38.844139, 28.794481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300583, 39.594505, 29.002039>,  <39.720619, 39.037594, 28.783239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300583, 39.594505, 29.002039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963829, 39.759689, 28.863070>,  <38.761776, 39.858799, 28.779688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.963829, 39.759689, 28.863070>,  <39.300583, 39.594505, 29.002039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963829, 39.759689, 28.863070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491286, -0.320051, 0.810065,
		0.223328, 0.852663, 0.472325,
		-0.841880, 0.412957, -0.347425,
		38.711266, 39.883575, 28.758842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059883, 39.866432, 29.618242>,  <39.300583, 39.594505, 29.002039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059883, 39.866432, 29.618242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759926, 39.817287, 29.358225>,  <38.579952, 39.787800, 29.202213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759926, 39.817287, 29.358225>,  <39.059883, 39.866432, 29.618242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759926, 39.817287, 29.358225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609524, -0.253654, 0.751093,
		-0.257168, 0.959460, 0.115326,
		-0.749897, -0.122863, -0.650045,
		38.534958, 39.780430, 29.163212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482689, 40.139713, 29.942495>,  <39.059883, 39.866432, 29.618242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482689, 40.139713, 29.942495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337284, 39.895927, 29.660669>,  <38.250042, 39.749657, 29.491573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337284, 39.895927, 29.660669>,  <38.482689, 40.139713, 29.942495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337284, 39.895927, 29.660669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589373, -0.435252, 0.680584,
		-0.721455, 0.662653, -0.200982,
		-0.363514, -0.609464, -0.704565,
		38.228230, 39.713089, 29.449299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806931, 40.193783, 30.122004>,  <38.482689, 40.139713, 29.942495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806931, 40.193783, 30.122004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853775, 39.859486, 29.907408>,  <37.881882, 39.658909, 29.778650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853775, 39.859486, 29.907408>,  <37.806931, 40.193783, 30.122004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853775, 39.859486, 29.907408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583724, -0.494969, 0.643640,
		-0.803463, 0.237785, -0.545808,
		0.117110, -0.835741, -0.536490,
		37.888908, 39.608765, 29.746460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061977, 39.954578, 30.017899>,  <37.806931, 40.193783, 30.122004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061977, 39.954578, 30.017899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307682, 39.647118, 29.946508>,  <37.455105, 39.462639, 29.903673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307682, 39.647118, 29.946508>,  <37.061977, 39.954578, 30.017899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307682, 39.647118, 29.946508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669956, -0.627506, 0.396731,
		-0.416945, -0.124125, -0.900417,
		0.614261, -0.768654, -0.178477,
		37.491959, 39.416523, 29.892965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650517, 39.419689, 29.624166>,  <37.061977, 39.954578, 30.017899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650517, 39.419689, 29.624166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943157, 39.251781, 29.839035>,  <37.118740, 39.151039, 29.967957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943157, 39.251781, 29.839035>,  <36.650517, 39.419689, 29.624166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943157, 39.251781, 29.839035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649887, -0.667443, 0.363546,
		0.205928, -0.615073, -0.761104,
		0.731601, -0.419767, 0.537174,
		37.162636, 39.125851, 30.000187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483437, 38.711529, 29.812292>,  <36.650517, 39.419689, 29.624166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483437, 38.711529, 29.812292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798523, 38.747711, 30.056036>,  <36.987576, 38.769421, 30.202282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798523, 38.747711, 30.056036>,  <36.483437, 38.711529, 29.812292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798523, 38.747711, 30.056036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461992, -0.567598, 0.681466,
		0.407513, -0.818322, -0.405317,
		0.787716, 0.090454, 0.609362,
		37.034840, 38.774849, 30.238844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562893, 38.056576, 30.043352>,  <36.483437, 38.711529, 29.812292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562893, 38.056576, 30.043352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761909, 38.245892, 30.334131>,  <36.881321, 38.359482, 30.508598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761909, 38.245892, 30.334131>,  <36.562893, 38.056576, 30.043352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761909, 38.245892, 30.334131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311188, -0.684868, 0.658876,
		0.809699, -0.554037, -0.193471,
		0.497544, 0.473285, 0.726946,
		36.911171, 38.387878, 30.552216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936462, 37.506805, 30.491287>,  <36.562893, 38.056576, 30.043352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936462, 37.506805, 30.491287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927208, 37.829556, 30.727394>,  <36.921654, 38.023205, 30.869059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927208, 37.829556, 30.727394>,  <36.936462, 37.506805, 30.491287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927208, 37.829556, 30.727394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104963, -0.589124, 0.801196,
		0.994207, -0.043419, 0.098322,
		-0.023136, 0.806875, 0.590269,
		36.920265, 38.071617, 30.904474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316025, 37.266281, 31.141006>,  <36.936462, 37.506805, 30.491287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316025, 37.266281, 31.141006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.085682, 37.583668, 31.219793>,  <36.947475, 37.774101, 31.267065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.085682, 37.583668, 31.219793>,  <37.316025, 37.266281, 31.141006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085682, 37.583668, 31.219793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397020, -0.482021, 0.781045,
		0.714675, 0.371572, 0.592599,
		-0.575860, 0.793467, 0.196967,
		36.912926, 37.821709, 31.278883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361458, 37.409443, 31.823677>,  <37.316025, 37.266281, 31.141006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361458, 37.409443, 31.823677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008457, 37.583355, 31.751955>,  <36.796658, 37.687702, 31.708921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.008457, 37.583355, 31.751955>,  <37.361458, 37.409443, 31.823677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008457, 37.583355, 31.751955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408355, -0.519259, 0.750744,
		0.233304, 0.735755, 0.635794,
		-0.882505, 0.434781, -0.179304,
		36.743706, 37.713791, 31.698164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100967, 37.609192, 32.512676>,  <37.361458, 37.409443, 31.823677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100967, 37.609192, 32.512676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791592, 37.595314, 32.259510>,  <36.605965, 37.586987, 32.107609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791592, 37.595314, 32.259510>,  <37.100967, 37.609192, 32.512676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791592, 37.595314, 32.259510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553321, -0.450161, 0.700850,
		-0.309231, 0.892273, 0.328976,
		-0.773442, -0.034696, -0.632917,
		36.559559, 37.584904, 32.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.002029, 42.315510, 26.104631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694828, 42.156239, 25.903984>,  <39.510506, 42.060677, 25.783596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694828, 42.156239, 25.903984>,  <40.002029, 42.315510, 26.104631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694828, 42.156239, 25.903984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322340, -0.436479, 0.839990,
		-0.553410, 0.806810, 0.206871,
		-0.768007, -0.398176, -0.501619,
		39.464424, 42.036785, 25.753498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269089, 42.499908, 26.435629>,  <40.002029, 42.315510, 26.104631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269089, 42.499908, 26.435629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234032, 42.153225, 26.239204>,  <39.212997, 41.945217, 26.121349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234032, 42.153225, 26.239204>,  <39.269089, 42.499908, 26.435629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234032, 42.153225, 26.239204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415638, -0.416179, 0.808727,
		-0.905297, 0.274986, -0.323758,
		-0.087647, -0.866705, -0.491060,
		39.207737, 41.893215, 26.091887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737049, 42.182358, 26.803062>,  <39.269089, 42.499908, 26.435629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737049, 42.182358, 26.803062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878456, 41.870281, 26.596638>,  <38.963299, 41.683033, 26.472782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878456, 41.870281, 26.596638>,  <38.737049, 42.182358, 26.803062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878456, 41.870281, 26.596638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334380, -0.620633, 0.709228,
		-0.873622, -0.078163, -0.480287,
		0.353518, -0.780196, -0.516062,
		38.984512, 41.636223, 26.441820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205952, 41.655853, 26.716524>,  <38.737049, 42.182358, 26.803062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205952, 41.655853, 26.716524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556435, 41.463837, 26.699463>,  <38.766724, 41.348625, 26.689226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556435, 41.463837, 26.699463>,  <38.205952, 41.655853, 26.716524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556435, 41.463837, 26.699463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376754, -0.737478, 0.560520,
		-0.300530, -0.475062, -0.827041,
		0.876207, -0.480045, -0.042653,
		38.819298, 41.319824, 26.686666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053413, 40.940586, 26.740574>,  <38.205952, 41.655853, 26.716524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053413, 40.940586, 26.740574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444267, 40.947601, 26.825338>,  <38.678780, 40.951809, 26.876198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444267, 40.947601, 26.825338>,  <38.053413, 40.940586, 26.740574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444267, 40.947601, 26.825338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143657, -0.680311, 0.718707,
		0.156771, -0.732714, -0.662234,
		0.977131, 0.017538, 0.211913,
		38.737408, 40.952862, 26.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226177, 40.224117, 26.772617>,  <38.053413, 40.940586, 26.740574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226177, 40.224117, 26.772617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509853, 40.409317, 26.985289>,  <38.680061, 40.520435, 27.112890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509853, 40.409317, 26.985289>,  <38.226177, 40.224117, 26.772617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509853, 40.409317, 26.985289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071288, -0.703176, 0.707433,
		0.701402, -0.539608, -0.465681,
		0.709192, 0.462997, 0.531676,
		38.722610, 40.548218, 27.144791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510735, 39.769276, 27.158731>,  <38.226177, 40.224117, 26.772617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510735, 39.769276, 27.158731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690975, 40.069977, 27.351324>,  <38.799122, 40.250397, 27.466879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690975, 40.069977, 27.351324>,  <38.510735, 39.769276, 27.158731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690975, 40.069977, 27.351324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122010, -0.586138, 0.800972,
		0.884347, -0.302176, -0.355837,
		0.450604, 0.751753, 0.481481,
		38.826157, 40.295502, 27.495768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113342, 39.468910, 27.457075>,  <38.510735, 39.769276, 27.158731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113342, 39.468910, 27.457075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974136, 39.781330, 27.664480>,  <38.890614, 39.968781, 27.788923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974136, 39.781330, 27.664480>,  <39.113342, 39.468910, 27.457075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974136, 39.781330, 27.664480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111951, -0.514505, 0.850148,
		0.930781, 0.353912, 0.091616,
		-0.348015, 0.781045, 0.518512,
		38.869732, 40.015644, 27.820034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441360, 39.480679, 28.143631>,  <39.113342, 39.468910, 27.457075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441360, 39.480679, 28.143631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098343, 39.681164, 28.189936>,  <38.892532, 39.801453, 28.217718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098343, 39.681164, 28.189936>,  <39.441360, 39.480679, 28.143631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098343, 39.681164, 28.189936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103265, -0.388197, 0.915772,
		0.503933, 0.773364, 0.384655,
		-0.857548, 0.501209, 0.115764,
		38.841080, 39.831528, 28.224665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126961, 39.785580, 28.522650>,  <39.441360, 39.480679, 28.143631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126961, 39.785580, 28.522650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374138, 39.471264, 28.512201>,  <40.522442, 39.282673, 28.505932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374138, 39.471264, 28.512201>,  <40.126961, 39.785580, 28.522650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374138, 39.471264, 28.512201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504065, 0.421451, -0.753855,
		0.603381, 0.452671, 0.656522,
		0.617940, -0.785791, -0.026120,
		40.559521, 39.235527, 28.504366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836658, 40.135181, 28.495743>,  <40.126961, 39.785580, 28.522650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836658, 40.135181, 28.495743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894314, 39.762917, 28.361223>,  <40.928905, 39.539558, 28.280512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894314, 39.762917, 28.361223>,  <40.836658, 40.135181, 28.495743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894314, 39.762917, 28.361223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651724, 0.345009, -0.675444,
		0.744635, -0.121817, 0.656262,
		0.144136, -0.930661, -0.336297,
		40.937553, 39.483719, 28.260334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520691, 40.092926, 28.396799>,  <40.836658, 40.135181, 28.495743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520691, 40.092926, 28.396799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355091, 39.810318, 28.167213>,  <41.255730, 39.640755, 28.029461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355091, 39.810318, 28.167213>,  <41.520691, 40.092926, 28.396799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355091, 39.810318, 28.167213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447979, 0.390759, -0.804128,
		0.792411, -0.590037, 0.154728,
		-0.414004, -0.706515, -0.573966,
		41.230888, 39.598362, 27.995024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100323, 39.759151, 28.135374>,  <41.520691, 40.092926, 28.396799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100323, 39.759151, 28.135374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795357, 39.684692, 27.887482>,  <41.612377, 39.640018, 27.738747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795357, 39.684692, 27.887482>,  <42.100323, 39.759151, 28.135374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795357, 39.684692, 27.887482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582265, 0.220446, -0.782541,
		0.282285, -0.957472, -0.059685,
		-0.762418, -0.186147, -0.619731,
		41.566631, 39.628849, 27.701563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286125, 39.235554, 27.613625>,  <42.100323, 39.759151, 28.135374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286125, 39.235554, 27.613625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988140, 39.443615, 27.446548>,  <41.809349, 39.568451, 27.346302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988140, 39.443615, 27.446548>,  <42.286125, 39.235554, 27.613625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988140, 39.443615, 27.446548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620012, 0.308794, -0.721271,
		-0.246189, -0.796297, -0.552541,
		-0.744967, 0.520151, -0.417692,
		41.764648, 39.599659, 27.321241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386673, 39.147705, 26.872095>,  <42.286125, 39.235554, 27.613625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386673, 39.147705, 26.872095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126583, 39.449787, 26.905256>,  <41.970531, 39.631039, 26.925154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126583, 39.449787, 26.905256>,  <42.386673, 39.147705, 26.872095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126583, 39.449787, 26.905256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448663, 0.469750, -0.760287,
		-0.613119, -0.457158, -0.644276,
		-0.650220, 0.755210, 0.082903,
		41.931519, 39.676350, 26.930126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354385, 39.477463, 26.159071>,  <42.386673, 39.147705, 26.872095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354385, 39.477463, 26.159071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189709, 39.784344, 26.355810>,  <42.090904, 39.968472, 26.473854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189709, 39.784344, 26.355810>,  <42.354385, 39.477463, 26.159071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189709, 39.784344, 26.355810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223981, 0.608334, -0.761422,
		-0.883369, -0.203308, -0.422285,
		-0.411693, 0.767200, 0.491846,
		42.066200, 40.014503, 26.503365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009087, 39.763554, 25.646568>,  <42.354385, 39.477463, 26.159071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009087, 39.763554, 25.646568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070019, 40.029987, 25.938629>,  <42.106579, 40.189850, 26.113867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070019, 40.029987, 25.938629>,  <42.009087, 39.763554, 25.646568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070019, 40.029987, 25.938629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214715, 0.698827, -0.682304,
		-0.964725, 0.260708, -0.036569,
		0.152327, 0.666087, 0.730154,
		42.115715, 40.229813, 26.157675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732574, 40.329044, 25.311375>,  <42.009087, 39.763554, 25.646568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732574, 40.329044, 25.311375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984299, 40.448792, 25.598246>,  <42.135334, 40.520641, 25.770369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984299, 40.448792, 25.598246>,  <41.732574, 40.329044, 25.311375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984299, 40.448792, 25.598246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431867, 0.632507, -0.642981,
		-0.646108, 0.714362, 0.268758,
		0.629313, 0.299367, 0.717178,
		42.173092, 40.538601, 25.813398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775673, 41.060905, 25.183090>,  <41.732574, 40.329044, 25.311375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775673, 41.060905, 25.183090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091721, 41.002548, 25.421223>,  <42.281349, 40.967533, 25.564102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091721, 41.002548, 25.421223>,  <41.775673, 41.060905, 25.183090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091721, 41.002548, 25.421223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498720, 0.717671, -0.486031,
		-0.356347, 0.680929, 0.639807,
		0.790123, -0.145889, 0.595333,
		42.328758, 40.958782, 25.599823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950737, 41.683205, 25.548977>,  <41.775673, 41.060905, 25.183090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950737, 41.683205, 25.548977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286179, 41.468803, 25.510101>,  <42.487442, 41.340160, 25.486776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286179, 41.468803, 25.510101>,  <41.950737, 41.683205, 25.548977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286179, 41.468803, 25.510101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393408, 0.719315, -0.572552,
		0.376799, 0.441908, 0.814088,
		0.838601, -0.536006, -0.097187,
		42.537758, 41.308002, 25.480946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311043, 42.240028, 25.261515>,  <41.950737, 41.683205, 25.548977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311043, 42.240028, 25.261515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538345, 41.911247, 25.246168>,  <42.674728, 41.713978, 25.236959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538345, 41.911247, 25.246168>,  <42.311043, 42.240028, 25.261515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538345, 41.911247, 25.246168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519705, 0.394668, -0.757723,
		0.637956, 0.410643, 0.651448,
		0.568259, -0.821955, -0.038368,
		42.708824, 41.664661, 25.234657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006939, 42.534412, 25.427744>,  <42.311043, 42.240028, 25.261515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006939, 42.534412, 25.427744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993874, 42.202515, 25.204866>,  <42.986034, 42.003376, 25.071140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993874, 42.202515, 25.204866>,  <43.006939, 42.534412, 25.427744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993874, 42.202515, 25.204866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468404, 0.479768, -0.741903,
		0.882910, -0.285227, 0.372982,
		-0.032666, -0.829740, -0.557193,
		42.984074, 41.953594, 25.037708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628941, 42.449890, 25.109301>,  <43.006939, 42.534412, 25.427744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628941, 42.449890, 25.109301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408562, 42.197140, 24.891237>,  <43.276337, 42.045490, 24.760399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408562, 42.197140, 24.891237>,  <43.628941, 42.449890, 25.109301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408562, 42.197140, 24.891237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519216, 0.251886, -0.816681,
		0.653358, -0.732999, 0.189304,
		-0.550944, -0.631875, -0.545156,
		43.243279, 42.007576, 24.727690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.742470, 36.859459, 20.266590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968658, 37.032753, 20.547319>,  <38.104370, 37.136730, 20.715757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968658, 37.032753, 20.547319>,  <37.742470, 36.859459, 20.266590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968658, 37.032753, 20.547319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421852, -0.579277, 0.697481,
		0.708721, -0.690468, -0.144802,
		0.565469, 0.433234, 0.701821,
		38.138298, 37.162724, 20.757866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224586, 36.350571, 20.480640>,  <37.742470, 36.859459, 20.266590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224586, 36.350571, 20.480640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159256, 36.616249, 20.772442>,  <38.120056, 36.775654, 20.947523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159256, 36.616249, 20.772442>,  <38.224586, 36.350571, 20.480640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159256, 36.616249, 20.772442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248232, -0.743309, 0.621187,
		0.954832, -0.079628, 0.286277,
		-0.163329, 0.664192, 0.729502,
		38.110256, 36.815506, 20.991293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468655, 35.946911, 21.142622>,  <38.224586, 36.350571, 20.480640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468655, 35.946911, 21.142622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296562, 36.271156, 21.301519>,  <38.193306, 36.465706, 21.396858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296562, 36.271156, 21.301519>,  <38.468655, 35.946911, 21.142622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296562, 36.271156, 21.301519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189115, -0.511224, 0.838382,
		0.882687, 0.285572, 0.373244,
		-0.430230, 0.810616, 0.397245,
		38.167492, 36.514339, 21.420692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718063, 36.051083, 21.887106>,  <38.468655, 35.946911, 21.142622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718063, 36.051083, 21.887106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.366798, 36.239182, 21.852020>,  <38.156040, 36.352043, 21.830969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.366798, 36.239182, 21.852020>,  <38.718063, 36.051083, 21.887106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366798, 36.239182, 21.852020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335720, -0.475233, 0.813294,
		0.340766, 0.743652, 0.575204,
		-0.878163, 0.470250, -0.087716,
		38.103348, 36.380257, 21.825706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648113, 36.425995, 22.555079>,  <38.718063, 36.051083, 21.887106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648113, 36.425995, 22.555079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.287746, 36.385796, 22.386204>,  <38.071526, 36.361675, 22.284880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.287746, 36.385796, 22.386204>,  <38.648113, 36.425995, 22.555079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287746, 36.385796, 22.386204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324576, -0.489737, 0.809202,
		-0.288082, 0.866059, 0.408596,
		-0.900921, -0.100496, -0.422186,
		38.017471, 36.355648, 22.259548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292347, 36.699955, 23.035650>,  <38.648113, 36.425995, 22.555079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292347, 36.699955, 23.035650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001194, 36.512020, 22.835876>,  <37.826504, 36.399258, 22.716013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001194, 36.512020, 22.835876>,  <38.292347, 36.699955, 23.035650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001194, 36.512020, 22.835876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429371, -0.255583, 0.866209,
		-0.534628, 0.844942, -0.015702,
		-0.727883, -0.469841, -0.499435,
		37.782829, 36.371067, 22.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657631, 36.955029, 23.344540>,  <38.292347, 36.699955, 23.035650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657631, 36.955029, 23.344540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580544, 36.599472, 23.178297>,  <37.534290, 36.386139, 23.078552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.580544, 36.599472, 23.178297>,  <37.657631, 36.955029, 23.344540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580544, 36.599472, 23.178297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335506, -0.338327, 0.879187,
		-0.922115, 0.308873, -0.233028,
		-0.192718, -0.888894, -0.415605,
		37.522728, 36.332806, 23.053616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016457, 36.769577, 23.628874>,  <37.657631, 36.955029, 23.344540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016457, 36.769577, 23.628874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154469, 36.419796, 23.492470>,  <37.237274, 36.209927, 23.410627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.154469, 36.419796, 23.492470>,  <37.016457, 36.769577, 23.628874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154469, 36.419796, 23.492470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258981, -0.437915, 0.860906,
		-0.902156, -0.208721, -0.377559,
		0.345028, -0.874452, -0.341013,
		37.257977, 36.157459, 23.390165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451012, 36.333824, 23.658342>,  <37.016457, 36.769577, 23.628874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451012, 36.333824, 23.658342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769161, 36.091747, 23.644880>,  <36.960049, 35.946503, 23.636803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.769161, 36.091747, 23.644880>,  <36.451012, 36.333824, 23.658342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769161, 36.091747, 23.644880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440780, -0.615624, 0.653238,
		-0.416051, -0.504731, -0.756404,
		0.795370, -0.605189, -0.033656,
		37.007771, 35.910191, 23.634783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113415, 35.723022, 23.645502>,  <36.451012, 36.333824, 23.658342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113415, 35.723022, 23.645502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488758, 35.622936, 23.740892>,  <36.713966, 35.562885, 23.798126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488758, 35.622936, 23.740892>,  <36.113415, 35.723022, 23.645502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488758, 35.622936, 23.740892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342009, -0.572120, 0.745458,
		-0.050091, -0.781070, -0.622432,
		0.938360, -0.250218, 0.238475,
		36.770267, 35.547871, 23.812435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192772, 35.004459, 23.768156>,  <36.113415, 35.723022, 23.645502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192772, 35.004459, 23.768156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498314, 35.154366, 23.978331>,  <36.681637, 35.244308, 24.104435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.498314, 35.154366, 23.978331>,  <36.192772, 35.004459, 23.768156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498314, 35.154366, 23.978331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258801, -0.567944, 0.781320,
		0.591231, -0.732795, -0.336834,
		0.763851, 0.374767, 0.525434,
		36.727470, 35.266796, 24.135962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604195, 34.493954, 24.111361>,  <36.192772, 35.004459, 23.768156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604195, 34.493954, 24.111361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674332, 34.825233, 24.324282>,  <36.716412, 35.024002, 24.452034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674332, 34.825233, 24.324282>,  <36.604195, 34.493954, 24.111361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674332, 34.825233, 24.324282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177202, -0.505298, 0.844555,
		0.968429, -0.242410, 0.058159,
		0.175340, 0.828198, 0.532301,
		36.726933, 35.073692, 24.483973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939659, 34.230877, 24.668951>,  <36.604195, 34.493954, 24.111361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939659, 34.230877, 24.668951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807442, 34.582130, 24.807297>,  <36.728111, 34.792881, 24.890305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807442, 34.582130, 24.807297>,  <36.939659, 34.230877, 24.668951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807442, 34.582130, 24.807297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060034, -0.385286, 0.920842,
		0.941879, 0.283617, 0.180072,
		-0.330546, 0.878132, 0.345866,
		36.708279, 34.845570, 24.911057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328663, 34.406570, 25.275631>,  <36.939659, 34.230877, 24.668951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328663, 34.406570, 25.275631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986202, 34.612659, 25.291367>,  <36.780724, 34.736313, 25.300808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986202, 34.612659, 25.291367>,  <37.328663, 34.406570, 25.275631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986202, 34.612659, 25.291367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141892, -0.307627, 0.940868,
		0.496857, 0.799946, 0.336482,
		-0.856154, 0.515221, 0.039341,
		36.729355, 34.767227, 25.303169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717010, 34.904396, 25.638012>,  <37.328663, 34.406570, 25.275631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717010, 34.904396, 25.638012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103642, 34.802593, 25.625710>,  <38.335621, 34.741512, 25.618328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103642, 34.802593, 25.625710>,  <37.717010, 34.904396, 25.638012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103642, 34.802593, 25.625710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189143, 0.788972, -0.584592,
		0.173052, 0.559238, 0.810744,
		0.966581, -0.254511, -0.030758,
		38.393616, 34.726238, 25.616482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977203, 35.514240, 25.631834>,  <37.717010, 34.904396, 25.638012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977203, 35.514240, 25.631834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279469, 35.276997, 25.520706>,  <38.460831, 35.134651, 25.454029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279469, 35.276997, 25.520706>,  <37.977203, 35.514240, 25.631834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279469, 35.276997, 25.520706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410420, 0.759388, -0.504861,
		0.510414, 0.267484, 0.817270,
		0.755668, -0.593112, -0.277821,
		38.506168, 35.099064, 25.437359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640423, 35.914127, 25.719376>,  <37.977203, 35.514240, 25.631834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640423, 35.914127, 25.719376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703815, 35.613770, 25.462925>,  <38.741852, 35.433556, 25.309055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.703815, 35.613770, 25.462925>,  <38.640423, 35.914127, 25.719376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703815, 35.613770, 25.462925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632944, 0.575627, -0.517722,
		0.757803, -0.323745, 0.566501,
		0.158483, -0.750895, -0.641124,
		38.751362, 35.388500, 25.270588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320183, 36.005630, 25.693020>,  <38.640423, 35.914127, 25.719376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320183, 36.005630, 25.693020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196892, 35.813362, 25.364641>,  <39.122917, 35.698002, 25.167614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.196892, 35.813362, 25.364641>,  <39.320183, 36.005630, 25.693020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196892, 35.813362, 25.364641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694189, 0.476407, -0.539572,
		0.650460, -0.736203, 0.186834,
		-0.308226, -0.480668, -0.820948,
		39.104424, 35.669163, 25.118357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961304, 35.938847, 25.390642>,  <39.320183, 36.005630, 25.693020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961304, 35.938847, 25.390642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700451, 35.866268, 25.096212>,  <39.543941, 35.822723, 24.919556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700451, 35.866268, 25.096212>,  <39.961304, 35.938847, 25.390642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700451, 35.866268, 25.096212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580153, 0.505564, -0.638614,
		0.488006, -0.843494, -0.224426,
		-0.652129, -0.181446, -0.736074,
		39.504810, 35.811836, 24.875391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430233, 35.745014, 24.895452>,  <39.961304, 35.938847, 25.390642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430233, 35.745014, 24.895452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103085, 35.864136, 24.698517>,  <39.906796, 35.935608, 24.580357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.103085, 35.864136, 24.698517>,  <40.430233, 35.745014, 24.895452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103085, 35.864136, 24.698517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569943, 0.536808, -0.622095,
		0.079031, -0.789400, -0.608771,
		-0.817875, 0.297800, -0.492338,
		39.857723, 35.953476, 24.550816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632656, 35.636879, 24.167633>,  <40.430233, 35.745014, 24.895452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632656, 35.636879, 24.167633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334877, 35.903522, 24.152489>,  <40.156208, 36.063507, 24.143402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.334877, 35.903522, 24.152489>,  <40.632656, 35.636879, 24.167633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334877, 35.903522, 24.152489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479668, 0.494517, -0.724825,
		-0.464449, -0.557755, -0.687892,
		-0.744449, 0.666605, -0.037859,
		40.111542, 36.103504, 24.141130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492260, 35.715324, 23.452539>,  <40.632656, 35.636879, 24.167633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492260, 35.715324, 23.452539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330650, 36.038685, 23.623775>,  <40.233685, 36.232700, 23.726517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330650, 36.038685, 23.623775>,  <40.492260, 35.715324, 23.452539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330650, 36.038685, 23.623775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275660, 0.553825, -0.785678,
		-0.872226, -0.199423, -0.446600,
		-0.404020, 0.808399, 0.428088,
		40.209446, 36.281204, 23.752201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084301, 36.033768, 22.942173>,  <40.492260, 35.715324, 23.452539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084301, 36.033768, 22.942173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.134186, 36.319904, 23.217197>,  <40.164116, 36.491585, 23.382212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.134186, 36.319904, 23.217197>,  <40.084301, 36.033768, 22.942173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134186, 36.319904, 23.217197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180163, 0.665125, -0.724673,
		-0.975699, 0.214246, -0.045931,
		0.124708, 0.715338, 0.687561,
		40.171597, 36.534504, 23.423466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599503, 36.627640, 22.734692>,  <40.084301, 36.033768, 22.942173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599503, 36.627640, 22.734692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908566, 36.752254, 22.955944>,  <40.094002, 36.827023, 23.088696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.908566, 36.752254, 22.955944>,  <39.599503, 36.627640, 22.734692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908566, 36.752254, 22.955944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269282, 0.628198, -0.729969,
		-0.574887, 0.712960, 0.401488,
		0.772653, 0.311536, 0.553130,
		40.140362, 36.845715, 23.121883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629829, 37.336674, 22.482038>,  <39.599503, 36.627640, 22.734692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629829, 37.336674, 22.482038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986515, 37.286602, 22.656019>,  <40.200527, 37.256557, 22.760408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986515, 37.286602, 22.656019>,  <39.629829, 37.336674, 22.482038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986515, 37.286602, 22.656019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430316, 0.532355, -0.728990,
		-0.140291, 0.837214, 0.528575,
		0.891710, -0.125184, 0.434951,
		40.254028, 37.249046, 22.786505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963142, 37.922691, 22.413088>,  <39.629829, 37.336674, 22.482038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963142, 37.922691, 22.413088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262398, 37.661400, 22.459700>,  <40.441952, 37.504623, 22.487667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.262398, 37.661400, 22.459700>,  <39.963142, 37.922691, 22.413088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262398, 37.661400, 22.459700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549100, 0.510892, -0.661422,
		0.372526, 0.558823, 0.740906,
		0.748140, -0.653228, 0.116529,
		40.486839, 37.465431, 22.494658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570774, 38.401169, 22.515776>,  <39.963142, 37.922691, 22.413088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570774, 38.401169, 22.515776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.723972, 38.044582, 22.418943>,  <40.815891, 37.830631, 22.360844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.723972, 38.044582, 22.418943>,  <40.570774, 38.401169, 22.515776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723972, 38.044582, 22.418943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610551, 0.440956, -0.657865,
		0.693210, 0.104157, 0.713170,
		0.382998, -0.891465, -0.242082,
		40.838871, 37.777142, 22.346319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182243, 38.603016, 22.390368>,  <40.570774, 38.401169, 22.515776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182243, 38.603016, 22.390368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153934, 38.256573, 22.192442>,  <41.136948, 38.048706, 22.073687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.153934, 38.256573, 22.192442>,  <41.182243, 38.603016, 22.390368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153934, 38.256573, 22.192442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352085, 0.442439, -0.824793,
		0.933289, -0.232590, 0.273632,
		-0.070773, -0.866112, -0.494815,
		41.132702, 37.996738, 22.043997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676014, 38.403240, 22.896086>,  <41.182243, 38.603016, 22.390368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676014, 38.403240, 22.896086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.055225, 38.496418, 22.982790>,  <42.282753, 38.552322, 23.034813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.055225, 38.496418, 22.982790>,  <41.676014, 38.403240, 22.896086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055225, 38.496418, 22.982790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110181, -0.398761, 0.910412,
		0.298508, -0.886977, -0.352370,
		0.948026, 0.232941, 0.216761,
		42.339634, 38.566299, 23.047819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978634, 37.818077, 23.211372>,  <41.676014, 38.403240, 22.896086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978634, 37.818077, 23.211372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.210712, 38.116310, 23.342505>,  <42.349960, 38.295250, 23.421183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.210712, 38.116310, 23.342505>,  <41.978634, 37.818077, 23.211372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210712, 38.116310, 23.342505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015540, -0.392296, 0.919708,
		0.814327, -0.538707, -0.216023,
		0.580198, 0.745586, 0.327829,
		42.384773, 38.339985, 23.440853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534309, 37.469765, 23.484335>,  <41.978634, 37.818077, 23.211372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534309, 37.469765, 23.484335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503872, 37.836342, 23.641479>,  <42.485611, 38.056290, 23.735767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503872, 37.836342, 23.641479>,  <42.534309, 37.469765, 23.484335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503872, 37.836342, 23.641479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062988, -0.388800, 0.919167,
		0.995110, 0.094684, -0.028142,
		-0.076089, 0.916444, 0.392863,
		42.481045, 38.111275, 23.759338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898933, 37.389923, 24.125618>,  <42.534309, 37.469765, 23.484335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898933, 37.389923, 24.125618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.678165, 37.721230, 24.164333>,  <42.545704, 37.920013, 24.187563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.678165, 37.721230, 24.164333>,  <42.898933, 37.389923, 24.125618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678165, 37.721230, 24.164333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052847, -0.150574, 0.987185,
		0.832224, 0.539728, 0.126876,
		-0.551916, 0.828264, 0.096788,
		42.512592, 37.969707, 24.193369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241714, 37.848221, 24.587284>,  <42.898933, 37.389923, 24.125618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241714, 37.848221, 24.587284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855423, 37.950642, 24.604244>,  <42.623646, 38.012093, 24.614420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855423, 37.950642, 24.604244>,  <43.241714, 37.848221, 24.587284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855423, 37.950642, 24.604244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016224, -0.103491, 0.994498,
		0.259032, 0.961107, 0.095790,
		-0.965733, 0.256052, 0.042401,
		42.565704, 38.027458, 24.616964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208973, 38.176498, 25.197762>,  <43.241714, 37.848221, 24.587284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208973, 38.176498, 25.197762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818680, 38.135784, 25.120224>,  <42.584503, 38.111355, 25.073702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.818680, 38.135784, 25.120224>,  <43.208973, 38.176498, 25.197762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818680, 38.135784, 25.120224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192215, -0.025660, 0.981017,
		-0.104832, 0.994475, 0.005472,
		-0.975737, -0.101790, -0.193843,
		42.525959, 38.105247, 25.062071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799171, 38.626038, 25.596094>,  <43.208973, 38.176498, 25.197762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799171, 38.626038, 25.596094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.535179, 38.339100, 25.506796>,  <42.376785, 38.166935, 25.453217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.535179, 38.339100, 25.506796>,  <42.799171, 38.626038, 25.596094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535179, 38.339100, 25.506796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247126, -0.073330, 0.966205,
		-0.709474, 0.692847, -0.128879,
		-0.659981, -0.717347, -0.223246,
		42.337185, 38.123898, 25.439821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124336, 38.777893, 25.868902>,  <42.799171, 38.626038, 25.596094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124336, 38.777893, 25.868902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.148701, 38.380432, 25.831053>,  <42.163319, 38.141956, 25.808342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.148701, 38.380432, 25.831053>,  <42.124336, 38.777893, 25.868902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148701, 38.380432, 25.831053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237510, -0.106506, 0.965528,
		-0.969473, -0.036335, -0.242489,
		0.060909, -0.993648, -0.094625,
		42.166973, 38.082336, 25.802666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522892, 38.558285, 26.075356>,  <42.124336, 38.777893, 25.868902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522892, 38.558285, 26.075356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759239, 38.237698, 26.112293>,  <41.901047, 38.045345, 26.134457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759239, 38.237698, 26.112293>,  <41.522892, 38.558285, 26.075356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759239, 38.237698, 26.112293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491449, -0.266794, 0.829035,
		-0.639804, -0.535235, -0.551520,
		0.590871, -0.801464, 0.092345,
		41.936501, 37.997257, 26.139997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144421, 38.121742, 26.470251>,  <41.522892, 38.558285, 26.075356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144421, 38.121742, 26.470251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.491844, 37.925243, 26.444086>,  <41.700298, 37.807343, 26.428387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.491844, 37.925243, 26.444086>,  <41.144421, 38.121742, 26.470251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491844, 37.925243, 26.444086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344800, -0.693809, 0.632252,
		-0.355977, -0.526594, -0.771996,
		0.868558, -0.491252, -0.065410,
		41.752411, 37.777866, 26.424463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091370, 37.413040, 26.357674>,  <41.144421, 38.121742, 26.470251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091370, 37.413040, 26.357674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.462368, 37.406754, 26.507076>,  <41.684967, 37.402981, 26.596718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.462368, 37.406754, 26.507076>,  <41.091370, 37.413040, 26.357674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462368, 37.406754, 26.507076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316886, -0.563127, 0.763198,
		0.198337, -0.826221, -0.527277,
		0.927494, -0.015717, 0.373506,
		41.740616, 37.402039, 26.619129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230202, 36.744267, 26.411510>,  <41.091370, 37.413040, 26.357674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230202, 36.744267, 26.411510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479923, 36.931629, 26.661579>,  <41.629757, 37.044048, 26.811621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479923, 36.931629, 26.661579>,  <41.230202, 36.744267, 26.411510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479923, 36.931629, 26.661579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272749, -0.619224, 0.736322,
		0.732019, -0.630204, -0.258828,
		0.624305, 0.468406, 0.625171,
		41.667213, 37.072151, 26.849131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582451, 36.265636, 26.643007>,  <41.230202, 36.744267, 26.411510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582451, 36.265636, 26.643007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624744, 36.551479, 26.919601>,  <41.650120, 36.722984, 27.085558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.624744, 36.551479, 26.919601>,  <41.582451, 36.265636, 26.643007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624744, 36.551479, 26.919601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157658, -0.674542, 0.721205,
		0.981816, -0.185277, 0.041339,
		0.105738, 0.714608, 0.691487,
		41.656467, 36.765862, 27.127048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011608, 35.896851, 27.163307>,  <41.582451, 36.265636, 26.643007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011608, 35.896851, 27.163307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.835064, 36.203678, 27.349556>,  <41.729137, 36.387775, 27.461306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.835064, 36.203678, 27.349556>,  <42.011608, 35.896851, 27.163307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835064, 36.203678, 27.349556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283047, -0.611418, 0.738954,
		0.851520, 0.194351, 0.486972,
		-0.441360, 0.767070, 0.465624,
		41.702656, 36.433800, 27.489243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.092625, 41.908012, 24.468302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.707352, 41.901791, 24.360943>,  <43.476189, 41.898060, 24.296528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.707352, 41.901791, 24.360943>,  <44.092625, 41.908012, 24.468302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707352, 41.901791, 24.360943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237405, 0.419309, -0.876253,
		0.126168, -0.907710, -0.400180,
		-0.963183, -0.015550, -0.268398,
		43.418396, 41.897125, 24.280424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229805, 41.677013, 23.824600>,  <44.092625, 41.908012, 24.468302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229805, 41.677013, 23.824600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.849689, 41.801498, 23.820751>,  <43.621620, 41.876190, 23.818441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.849689, 41.801498, 23.820751>,  <44.229805, 41.677013, 23.824600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849689, 41.801498, 23.820751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154785, 0.445367, -0.881867,
		-0.270160, -0.839521, -0.471400,
		-0.950292, 0.311211, -0.009624,
		43.564602, 41.894863, 23.817863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966286, 41.433716, 23.304638>,  <44.229805, 41.677013, 23.824600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966286, 41.433716, 23.304638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.721451, 41.746410, 23.352367>,  <43.574551, 41.934029, 23.381004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.721451, 41.746410, 23.352367>,  <43.966286, 41.433716, 23.304638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721451, 41.746410, 23.352367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172404, 0.279177, -0.944636,
		-0.771772, -0.557624, -0.305655,
		-0.612083, 0.781739, 0.119324,
		43.537827, 41.980930, 23.388165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669281, 41.407673, 22.667747>,  <43.966286, 41.433716, 23.304638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669281, 41.407673, 22.667747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.577873, 41.761532, 22.830315>,  <43.523029, 41.973846, 22.927855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.577873, 41.761532, 22.830315>,  <43.669281, 41.407673, 22.667747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577873, 41.761532, 22.830315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037278, 0.425107, -0.904375,
		-0.972826, -0.191514, -0.130122,
		-0.228516, 0.884651, 0.406416,
		43.509319, 42.026928, 22.952240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108757, 41.714058, 22.265028>,  <43.669281, 41.407673, 22.667747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108757, 41.714058, 22.265028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.287720, 42.030388, 22.432085>,  <43.395096, 42.220184, 22.532320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.287720, 42.030388, 22.432085>,  <43.108757, 41.714058, 22.265028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287720, 42.030388, 22.432085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161211, 0.388026, -0.907440,
		-0.879681, 0.473322, 0.046116,
		0.447406, 0.790824, 0.417644,
		43.421940, 42.267635, 22.557379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744331, 42.209000, 22.050583>,  <43.108757, 41.714058, 22.265028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744331, 42.209000, 22.050583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.115040, 42.338657, 22.126505>,  <43.337463, 42.416451, 22.172058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.115040, 42.338657, 22.126505>,  <42.744331, 42.209000, 22.050583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115040, 42.338657, 22.126505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031366, 0.436751, -0.899035,
		-0.374315, 0.839153, 0.394601,
		0.926771, 0.324146, 0.189803,
		43.393070, 42.435902, 22.183445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758823, 42.768307, 21.602821>,  <42.744331, 42.209000, 22.050583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758823, 42.768307, 21.602821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141323, 42.745770, 21.717657>,  <43.370823, 42.732246, 21.786558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141323, 42.745770, 21.717657>,  <42.758823, 42.768307, 21.602821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141323, 42.745770, 21.717657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290172, 0.307877, -0.906097,
		-0.037338, 0.949757, 0.310754,
		0.956246, -0.056340, 0.287088,
		43.428196, 42.728867, 21.803783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113392, 43.478512, 21.587603>,  <42.758823, 42.768307, 21.602821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113392, 43.478512, 21.587603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.371891, 43.185173, 21.503153>,  <43.526989, 43.009171, 21.452482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.371891, 43.185173, 21.503153>,  <43.113392, 43.478512, 21.587603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371891, 43.185173, 21.503153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147463, 0.391447, -0.908308,
		0.748747, 0.555856, 0.361112,
		0.646245, -0.733344, -0.211127,
		43.565765, 42.965168, 21.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697521, 43.822472, 21.195036>,  <43.113392, 43.478512, 21.587603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697521, 43.822472, 21.195036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.758469, 43.432442, 21.130518>,  <43.795036, 43.198425, 21.091806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.758469, 43.432442, 21.130518>,  <43.697521, 43.822472, 21.195036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758469, 43.432442, 21.130518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267079, 0.197750, -0.943167,
		0.951554, 0.100626, 0.290552,
		0.152364, -0.975074, -0.161295,
		43.804176, 43.139919, 21.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412724, 43.753387, 20.873634>,  <43.697521, 43.822472, 21.195036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412724, 43.753387, 20.873634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.244232, 43.396019, 20.811197>,  <44.143139, 43.181599, 20.773735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.244232, 43.396019, 20.811197>,  <44.412724, 43.753387, 20.873634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244232, 43.396019, 20.811197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253002, 0.049522, -0.966197,
		0.870954, -0.446477, 0.205178,
		-0.421223, -0.893424, -0.156091,
		44.117867, 43.127991, 20.764370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965771, 43.329865, 20.530695>,  <44.412724, 43.753387, 20.873634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965771, 43.329865, 20.530695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.608932, 43.170517, 20.445391>,  <44.394829, 43.074909, 20.394209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.608932, 43.170517, 20.445391>,  <44.965771, 43.329865, 20.530695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608932, 43.170517, 20.445391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246048, -0.032406, -0.968716,
		0.378992, -0.916654, 0.126925,
		-0.892091, -0.398365, -0.213259,
		44.341305, 43.051006, 20.381413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031578, 42.639931, 20.139009>,  <44.965771, 43.329865, 20.530695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031578, 42.639931, 20.139009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.659565, 42.764168, 20.060450>,  <44.436356, 42.838711, 20.013313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.659565, 42.764168, 20.060450>,  <45.031578, 42.639931, 20.139009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659565, 42.764168, 20.060450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206834, 0.000675, -0.978376,
		-0.303747, -0.950542, -0.064869,
		-0.930031, 0.310595, -0.196400,
		44.380554, 42.857346, 20.001530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908222, 42.448143, 19.390249>,  <45.031578, 42.639931, 20.139009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908222, 42.448143, 19.390249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.655022, 42.740444, 19.492468>,  <44.503101, 42.915825, 19.553799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.655022, 42.740444, 19.492468>,  <44.908222, 42.448143, 19.390249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655022, 42.740444, 19.492468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029783, 0.352844, -0.935208,
		-0.773574, -0.584381, -0.245116,
		-0.633006, 0.730753, 0.255547,
		44.465118, 42.959671, 19.569132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246979, 42.366226, 18.963531>,  <44.908222, 42.448143, 19.390249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246979, 42.366226, 18.963531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360558, 42.733887, 19.072739>,  <44.428707, 42.954483, 19.138264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.360558, 42.733887, 19.072739>,  <44.246979, 42.366226, 18.963531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360558, 42.733887, 19.072739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085465, 0.307866, -0.947583,
		-0.955023, 0.245733, 0.165974,
		0.283950, 0.919148, 0.273017,
		44.445744, 43.009632, 19.154644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513935, 41.876553, 18.430363>,  <44.246979, 42.366226, 18.963531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513935, 41.876553, 18.430363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.469501, 41.486919, 18.351545>,  <44.442841, 41.253139, 18.304255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.469501, 41.486919, 18.351545>,  <44.513935, 41.876553, 18.430363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469501, 41.486919, 18.351545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262254, -0.162512, 0.951216,
		-0.958584, 0.157337, -0.237405,
		-0.111081, -0.974081, -0.197044,
		44.436176, 41.194695, 18.292433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925507, 41.686462, 18.771475>,  <44.513935, 41.876553, 18.430363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925507, 41.686462, 18.771475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.139614, 41.350269, 18.737835>,  <44.268078, 41.148552, 18.717651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.139614, 41.350269, 18.737835>,  <43.925507, 41.686462, 18.771475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139614, 41.350269, 18.737835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371886, -0.323884, 0.869943,
		-0.758414, -0.434374, -0.485929,
		0.535265, -0.840487, -0.084100,
		44.300194, 41.098122, 18.712605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423035, 41.082813, 19.119476>,  <43.925507, 41.686462, 18.771475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423035, 41.082813, 19.119476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.781502, 40.905621, 19.109278>,  <43.996582, 40.799305, 19.103159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.781502, 40.905621, 19.109278>,  <43.423035, 41.082813, 19.119476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781502, 40.905621, 19.109278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219534, -0.492593, 0.842115,
		-0.385599, -0.749080, -0.538696,
		0.896169, -0.442981, -0.025495,
		44.050354, 40.772724, 19.101629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269684, 40.389809, 19.117828>,  <43.423035, 41.082813, 19.119476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269684, 40.389809, 19.117828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.647953, 40.422459, 19.243715>,  <43.874912, 40.442047, 19.319248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.647953, 40.422459, 19.243715>,  <43.269684, 40.389809, 19.117828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647953, 40.422459, 19.243715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220229, -0.551288, 0.804724,
		0.239183, -0.830313, -0.503361,
		0.945669, 0.081622, 0.314718,
		43.931652, 40.446945, 19.338131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509354, 39.669754, 19.276531>,  <43.269684, 40.389809, 19.117828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509354, 39.669754, 19.276531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.743412, 39.915836, 19.487860>,  <43.883846, 40.063488, 19.614656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.743412, 39.915836, 19.487860>,  <43.509354, 39.669754, 19.276531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743412, 39.915836, 19.487860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248144, -0.484411, 0.838910,
		0.772029, -0.621984, -0.130790,
		0.585145, 0.615209, 0.528321,
		43.918957, 40.100399, 19.646357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787685, 39.219826, 19.658571>,  <43.509354, 39.669754, 19.276531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787685, 39.219826, 19.658571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862080, 39.569630, 19.837746>,  <43.906715, 39.779510, 19.945250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.862080, 39.569630, 19.837746>,  <43.787685, 39.219826, 19.658571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862080, 39.569630, 19.837746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062737, -0.444390, 0.893634,
		0.980548, -0.194305, -0.027786,
		0.185985, 0.874507, 0.447936,
		43.917873, 39.831982, 19.972126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193081, 39.094593, 20.150322>,  <43.787685, 39.219826, 19.658571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193081, 39.094593, 20.150322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041122, 39.448959, 20.256773>,  <43.949947, 39.661579, 20.320642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.041122, 39.448959, 20.256773>,  <44.193081, 39.094593, 20.150322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041122, 39.448959, 20.256773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139170, -0.339160, 0.930377,
		0.914499, 0.316413, 0.252140,
		-0.379900, 0.885919, 0.266127,
		43.927151, 39.714737, 20.336611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377277, 39.105961, 20.786381>,  <44.193081, 39.094593, 20.150322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377277, 39.105961, 20.786381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.099945, 39.391174, 20.744663>,  <43.933544, 39.562302, 20.719633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.099945, 39.391174, 20.744663>,  <44.377277, 39.105961, 20.786381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099945, 39.391174, 20.744663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368604, -0.226550, 0.901558,
		0.619209, 0.663524, 0.419900,
		-0.693334, 0.713029, -0.104296,
		43.891945, 39.605083, 20.713375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497520, 39.447643, 21.310438>,  <44.377277, 39.105961, 20.786381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497520, 39.447643, 21.310438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.117680, 39.532429, 21.218071>,  <43.889774, 39.583298, 21.162651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.117680, 39.532429, 21.218071>,  <44.497520, 39.447643, 21.310438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117680, 39.532429, 21.218071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296839, -0.371461, 0.879718,
		0.100688, 0.903930, 0.415659,
		-0.949605, 0.211961, -0.230920,
		43.832798, 39.596016, 21.148794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252701, 39.755669, 21.900501>,  <44.497520, 39.447643, 21.310438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252701, 39.755669, 21.900501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905773, 39.671249, 21.720179>,  <43.697617, 39.620598, 21.611986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.905773, 39.671249, 21.720179>,  <44.252701, 39.755669, 21.900501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905773, 39.671249, 21.720179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259027, -0.582014, 0.770821,
		-0.425053, 0.785315, 0.450122,
		-0.867314, -0.211046, -0.450805,
		43.645580, 39.607937, 21.584936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734112, 39.907169, 22.375330>,  <44.252701, 39.755669, 21.900501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734112, 39.907169, 22.375330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551826, 39.673332, 22.106831>,  <43.442455, 39.533031, 21.945730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551826, 39.673332, 22.106831>,  <43.734112, 39.907169, 22.375330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551826, 39.673332, 22.106831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497284, -0.458246, 0.736695,
		-0.738264, 0.669523, -0.081881,
		-0.455713, -0.584594, -0.671250,
		43.415112, 39.497955, 21.905457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915916, 39.977322, 22.295929>,  <43.734112, 39.907169, 22.375330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915916, 39.977322, 22.295929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.000458, 39.597897, 22.201651>,  <43.051182, 39.370239, 22.145082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.000458, 39.597897, 22.201651>,  <42.915916, 39.977322, 22.295929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000458, 39.597897, 22.201651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456887, -0.309060, 0.834108,
		-0.864050, -0.068606, -0.498708,
		0.211356, -0.948565, -0.235698,
		43.063866, 39.313328, 22.130941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300774, 39.699486, 22.598934>,  <42.915916, 39.977322, 22.295929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300774, 39.699486, 22.598934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.522324, 39.375027, 22.523825>,  <42.655254, 39.180351, 22.478758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.522324, 39.375027, 22.523825>,  <42.300774, 39.699486, 22.598934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522324, 39.375027, 22.523825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543734, -0.523188, 0.656222,
		-0.630535, -0.261366, -0.730830,
		0.553876, -0.811149, -0.187775,
		42.688488, 39.131683, 22.467493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811150, 39.123089, 22.639051>,  <42.300774, 39.699486, 22.598934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811150, 39.123089, 22.639051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168739, 38.952194, 22.693138>,  <42.383293, 38.849659, 22.725590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168739, 38.952194, 22.693138>,  <41.811150, 39.123089, 22.639051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168739, 38.952194, 22.693138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339344, -0.448345, 0.826941,
		-0.292673, -0.785148, -0.545788,
		0.893973, -0.427234, 0.135217,
		42.436932, 38.824024, 22.733704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826450, 38.586414, 22.071461>,  <41.811150, 39.123089, 22.639051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826450, 38.586414, 22.071461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555542, 38.352180, 21.893293>,  <41.392998, 38.211639, 21.786392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555542, 38.352180, 21.893293>,  <41.826450, 38.586414, 22.071461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555542, 38.352180, 21.893293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320165, 0.310506, -0.895031,
		0.662421, -0.748785, -0.022813,
		-0.677269, -0.585583, -0.445420,
		41.352360, 38.176506, 21.759666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191738, 38.301556, 21.494225>,  <41.826450, 38.586414, 22.071461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191738, 38.301556, 21.494225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807381, 38.240383, 21.401880>,  <41.576767, 38.203678, 21.346474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.807381, 38.240383, 21.401880>,  <42.191738, 38.301556, 21.494225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807381, 38.240383, 21.401880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179019, 0.292992, -0.939206,
		0.211273, -0.943805, -0.254157,
		-0.960893, -0.152929, -0.230861,
		41.519112, 38.194504, 21.332623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261688, 37.904392, 20.789312>,  <42.191738, 38.301556, 21.494225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261688, 37.904392, 20.789312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.892979, 38.054996, 20.826326>,  <41.671753, 38.145359, 20.848534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.892979, 38.054996, 20.826326>,  <42.261688, 37.904392, 20.789312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892979, 38.054996, 20.826326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046589, 0.344493, -0.937632,
		-0.384908, -0.859978, -0.335088,
		-0.921779, 0.376514, 0.092533,
		41.616444, 38.167950, 20.854086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033943, 37.649002, 20.124062>,  <42.261688, 37.904392, 20.789312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033943, 37.649002, 20.124062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.774323, 37.920803, 20.260887>,  <41.618549, 38.083885, 20.342983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.774323, 37.920803, 20.260887>,  <42.033943, 37.649002, 20.124062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774323, 37.920803, 20.260887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128455, 0.345295, -0.929662,
		-0.749822, -0.647337, -0.136828,
		-0.649050, 0.679505, 0.342063,
		41.579609, 38.124653, 20.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492661, 37.552994, 19.659325>,  <42.033943, 37.649002, 20.124062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492661, 37.552994, 19.659325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.480473, 37.922550, 19.811903>,  <41.473160, 38.144283, 19.903450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.480473, 37.922550, 19.811903>,  <41.492661, 37.552994, 19.659325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480473, 37.922550, 19.811903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127854, 0.374888, -0.918212,
		-0.991325, -0.076744, 0.106701,
		-0.030467, 0.923888, 0.381448,
		41.471333, 38.199718, 19.926338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955551, 37.824364, 19.333748>,  <41.492661, 37.552994, 19.659325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955551, 37.824364, 19.333748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.197060, 38.120716, 19.451431>,  <41.341965, 38.298527, 19.522041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.197060, 38.120716, 19.451431>,  <40.955551, 37.824364, 19.333748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197060, 38.120716, 19.451431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033452, 0.392296, -0.919231,
		-0.796454, 0.545165, 0.261641,
		0.603773, 0.740878, 0.294209,
		41.378193, 38.342979, 19.539694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747543, 38.471024, 18.914040>,  <40.955551, 37.824364, 19.333748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747543, 38.471024, 18.914040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.110870, 38.548786, 19.062183>,  <41.328865, 38.595444, 19.151070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.110870, 38.548786, 19.062183>,  <40.747543, 38.471024, 18.914040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110870, 38.548786, 19.062183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206274, 0.562082, -0.800946,
		-0.363882, 0.803909, 0.470447,
		0.908318, 0.194409, 0.370357,
		41.383366, 38.607109, 19.173290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374348, 39.045681, 19.394409>,  <40.747543, 38.471024, 18.914040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374348, 39.045681, 19.394409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.003345, 39.192177, 19.364445>,  <39.780746, 39.280075, 19.346466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.003345, 39.192177, 19.364445>,  <40.374348, 39.045681, 19.394409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003345, 39.192177, 19.364445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243463, -0.439746, 0.864493,
		0.283668, 0.820057, 0.497031,
		-0.927501, 0.366238, -0.074912,
		39.725094, 39.302048, 19.341970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189663, 39.150742, 20.031626>,  <40.374348, 39.045681, 19.394409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189663, 39.150742, 20.031626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844856, 39.110554, 19.832899>,  <39.637970, 39.086441, 19.713663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.844856, 39.110554, 19.832899>,  <40.189663, 39.150742, 20.031626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844856, 39.110554, 19.832899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360461, -0.567580, 0.740217,
		-0.356355, 0.817164, 0.453049,
		-0.862020, -0.100474, -0.496816,
		39.586250, 39.080410, 19.683855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715958, 39.085430, 20.601145>,  <40.189663, 39.150742, 20.031626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715958, 39.085430, 20.601145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517982, 38.951298, 20.280499>,  <39.399197, 38.870819, 20.088112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517982, 38.951298, 20.280499>,  <39.715958, 39.085430, 20.601145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517982, 38.951298, 20.280499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489263, -0.654845, 0.576021,
		-0.718092, 0.677296, 0.160043,
		-0.494940, -0.335333, -0.801615,
		39.369499, 38.850697, 20.040014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076790, 38.956669, 20.906298>,  <39.715958, 39.085430, 20.601145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076790, 38.956669, 20.906298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056831, 38.736069, 20.573225>,  <39.044857, 38.603710, 20.373381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.056831, 38.736069, 20.573225>,  <39.076790, 38.956669, 20.906298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056831, 38.736069, 20.573225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472992, -0.721251, 0.506039,
		-0.879653, 0.419099, -0.224870,
		-0.049893, -0.551500, -0.832681,
		39.041862, 38.570618, 20.323421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372589, 38.862141, 20.734474>,  <39.076790, 38.956669, 20.906298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372589, 38.862141, 20.734474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585503, 38.565144, 20.571802>,  <38.713249, 38.386948, 20.474199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585503, 38.565144, 20.571802>,  <38.372589, 38.862141, 20.734474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585503, 38.565144, 20.571802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499000, -0.663234, 0.557781,
		-0.683873, -0.093960, -0.723526,
		0.532276, -0.742491, -0.406682,
		38.745186, 38.342396, 20.449799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808338, 38.463413, 20.420771>,  <38.372589, 38.862141, 20.734474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808338, 38.463413, 20.420771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130062, 38.232933, 20.478836>,  <38.323097, 38.094646, 20.513676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.130062, 38.232933, 20.478836>,  <37.808338, 38.463413, 20.420771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130062, 38.232933, 20.478836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578569, -0.703749, 0.412305,
		-0.135410, -0.415611, -0.899406,
		0.804315, -0.576199, 0.145165,
		38.371357, 38.060074, 20.522385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771950, 37.714458, 20.169323>,  <37.808338, 38.463413, 20.420771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771950, 37.714458, 20.169323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042301, 37.710865, 20.464106>,  <38.204514, 37.708710, 20.640976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042301, 37.710865, 20.464106>,  <37.771950, 37.714458, 20.169323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042301, 37.710865, 20.464106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523435, -0.709787, 0.471400,
		0.518848, -0.704359, -0.484432,
		0.675879, -0.008984, 0.736958,
		38.245064, 37.708168, 20.685192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.035801, 44.554432, 19.761410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372749, 44.340813, 19.732540>,  <41.574917, 44.212643, 19.715218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.372749, 44.340813, 19.732540>,  <41.035801, 44.554432, 19.761410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372749, 44.340813, 19.732540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202516, -0.437815, 0.875960,
		-0.499409, -0.723261, -0.476954,
		0.842365, -0.534053, -0.072177,
		41.625458, 44.180599, 19.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948780, 43.776093, 19.663174>,  <41.035801, 44.554432, 19.761410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948780, 43.776093, 19.663174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.308792, 43.822914, 19.831104>,  <41.524799, 43.851006, 19.931862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.308792, 43.822914, 19.831104>,  <40.948780, 43.776093, 19.663174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308792, 43.822914, 19.831104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329155, -0.448833, 0.830786,
		0.285677, -0.885916, -0.365433,
		0.900026, 0.117053, 0.419825,
		41.578800, 43.858028, 19.957052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169094, 43.145817, 19.909182>,  <40.948780, 43.776093, 19.663174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169094, 43.145817, 19.909182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.389366, 43.395714, 20.130611>,  <41.521530, 43.545650, 20.263470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.389366, 43.395714, 20.130611>,  <41.169094, 43.145817, 19.909182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389366, 43.395714, 20.130611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405698, -0.379269, 0.831603,
		0.729491, -0.682535, 0.044599,
		0.550684, 0.624741, 0.553577,
		41.554573, 43.583138, 20.296684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604794, 42.757065, 20.407614>,  <41.169094, 43.145817, 19.909182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604794, 42.757065, 20.407614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.526039, 43.118538, 20.559719>,  <41.478786, 43.335423, 20.650982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.526039, 43.118538, 20.559719>,  <41.604794, 42.757065, 20.407614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526039, 43.118538, 20.559719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168537, -0.413275, 0.894874,
		0.965833, 0.112096, 0.233670,
		-0.196882, 0.903680, 0.380262,
		41.466976, 43.389641, 20.673798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810535, 42.794384, 21.190874>,  <41.604794, 42.757065, 20.407614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810535, 42.794384, 21.190874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582497, 43.122963, 21.185030>,  <41.445675, 43.320110, 21.181522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582497, 43.122963, 21.185030>,  <41.810535, 42.794384, 21.190874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582497, 43.122963, 21.185030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316580, -0.203230, 0.926539,
		0.758135, 0.532842, 0.375914,
		-0.570096, 0.821448, -0.014611,
		41.411469, 43.369396, 21.180647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846909, 43.039650, 21.846781>,  <41.810535, 42.794384, 21.190874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846909, 43.039650, 21.846781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.529991, 43.238544, 21.705347>,  <41.339840, 43.357880, 21.620487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.529991, 43.238544, 21.705347>,  <41.846909, 43.039650, 21.846781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529991, 43.238544, 21.705347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459970, -0.106024, 0.881582,
		0.400863, 0.861114, 0.312715,
		-0.792298, 0.497233, -0.353585,
		41.292301, 43.387714, 21.599272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619400, 43.573051, 22.409769>,  <41.846909, 43.039650, 21.846781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619400, 43.573051, 22.409769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.307632, 43.527718, 22.163303>,  <41.120571, 43.500519, 22.015425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.307632, 43.527718, 22.163303>,  <41.619400, 43.573051, 22.409769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307632, 43.527718, 22.163303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622551, 0.029835, 0.782011,
		-0.070245, 0.993109, -0.093810,
		-0.779420, -0.113334, -0.616165,
		41.073807, 43.493717, 21.978455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107891, 43.913090, 22.711561>,  <41.619400, 43.573051, 22.409769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107891, 43.913090, 22.711561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.879292, 43.690685, 22.470154>,  <40.742130, 43.557243, 22.325310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.879292, 43.690685, 22.470154>,  <41.107891, 43.913090, 22.711561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879292, 43.690685, 22.470154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572719, -0.256457, 0.778603,
		-0.587691, 0.790619, -0.171875,
		-0.571499, -0.556014, -0.603520,
		40.707840, 43.523880, 22.289097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321362, 44.141979, 22.679735>,  <41.107891, 43.913090, 22.711561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321362, 44.141979, 22.679735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357841, 43.749767, 22.610182>,  <40.379730, 43.514439, 22.568449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.357841, 43.749767, 22.610182>,  <40.321362, 44.141979, 22.679735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357841, 43.749767, 22.610182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697911, -0.187492, 0.691207,
		-0.710354, 0.058315, -0.701425,
		0.091203, -0.980534, -0.173884,
		40.385204, 43.455608, 22.558016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623573, 43.875820, 22.813690>,  <40.321362, 44.141979, 22.679735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623573, 43.875820, 22.813690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851780, 43.550785, 22.766010>,  <39.988705, 43.355762, 22.737402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851780, 43.550785, 22.766010>,  <39.623573, 43.875820, 22.813690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851780, 43.550785, 22.766010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624076, -0.523280, 0.580265,
		-0.533885, -0.256671, -0.805659,
		0.570522, -0.812587, -0.119189,
		40.022934, 43.307007, 22.730251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120667, 43.464947, 22.993256>,  <39.623573, 43.875820, 22.813690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120667, 43.464947, 22.993256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469467, 43.270271, 23.014206>,  <39.678749, 43.153465, 23.026775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469467, 43.270271, 23.014206>,  <39.120667, 43.464947, 22.993256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469467, 43.270271, 23.014206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257499, -0.365085, 0.894655,
		-0.416301, -0.793627, -0.443678,
		0.872002, -0.486693, 0.052373,
		39.731068, 43.124264, 23.029919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962486, 42.702309, 23.098181>,  <39.120667, 43.464947, 22.993256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962486, 42.702309, 23.098181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328724, 42.788738, 23.233822>,  <39.548466, 42.840595, 23.315207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.328724, 42.788738, 23.233822>,  <38.962486, 42.702309, 23.098181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328724, 42.788738, 23.233822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250436, -0.353345, 0.901349,
		0.314583, -0.910196, -0.269408,
		0.915598, 0.216079, 0.339102,
		39.603405, 42.853561, 23.335552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908016, 42.093746, 22.689243>,  <38.962486, 42.702309, 23.098181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908016, 42.093746, 22.689243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698483, 41.816574, 22.491076>,  <38.572762, 41.650269, 22.372175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698483, 41.816574, 22.491076>,  <38.908016, 42.093746, 22.689243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698483, 41.816574, 22.491076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274574, 0.413199, -0.868260,
		0.806352, -0.590856, -0.026188,
		-0.523837, -0.692933, -0.495417,
		38.541332, 41.608696, 22.342451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314106, 41.873028, 22.187838>,  <38.908016, 42.093746, 22.689243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314106, 41.873028, 22.187838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939426, 41.798096, 22.069519>,  <38.714619, 41.753136, 21.998528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939426, 41.798096, 22.069519>,  <39.314106, 41.873028, 22.187838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939426, 41.798096, 22.069519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176397, 0.477286, -0.860861,
		0.302444, -0.858549, -0.414031,
		-0.936703, -0.187329, -0.295797,
		38.658417, 41.741898, 21.980780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285782, 41.381275, 21.537977>,  <39.314106, 41.873028, 22.187838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285782, 41.381275, 21.537977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928131, 41.560040, 21.526651>,  <38.713539, 41.667297, 21.519855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928131, 41.560040, 21.526651>,  <39.285782, 41.381275, 21.537977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928131, 41.560040, 21.526651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129418, 0.197357, -0.971752,
		-0.428703, -0.872535, -0.234302,
		-0.894128, 0.446915, -0.028314,
		38.659893, 41.694115, 21.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958729, 41.179848, 20.889294>,  <39.285782, 41.381275, 21.537977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958729, 41.179848, 20.889294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758682, 41.507526, 21.001574>,  <38.638653, 41.704136, 21.068941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758682, 41.507526, 21.001574>,  <38.958729, 41.179848, 20.889294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758682, 41.507526, 21.001574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083639, 0.368333, -0.925924,
		-0.861908, -0.439595, -0.252728,
		-0.500120, 0.819199, 0.280702,
		38.608646, 41.753284, 21.085785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574703, 41.303246, 20.268518>,  <38.958729, 41.179848, 20.889294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574703, 41.303246, 20.268518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559769, 41.644890, 20.476021>,  <38.550808, 41.849876, 20.600523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559769, 41.644890, 20.476021>,  <38.574703, 41.303246, 20.268518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559769, 41.644890, 20.476021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089118, 0.519895, -0.849568,
		-0.995321, 0.014510, -0.095527,
		-0.037337, 0.854107, 0.518756,
		38.548569, 41.901123, 20.631647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105766, 41.796062, 19.903856>,  <38.574703, 41.303246, 20.268518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105766, 41.796062, 19.903856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343105, 42.018135, 20.136995>,  <38.485508, 42.151379, 20.276878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.343105, 42.018135, 20.136995>,  <38.105766, 41.796062, 19.903856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343105, 42.018135, 20.136995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129187, 0.649015, -0.749726,
		-0.794511, 0.520146, 0.313370,
		0.593349, 0.555182, 0.582846,
		38.521111, 42.184689, 20.311850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765705, 42.439823, 20.066946>,  <38.105766, 41.796062, 19.903856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765705, 42.439823, 20.066946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162418, 42.489124, 20.080656>,  <38.400448, 42.518707, 20.088882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.162418, 42.489124, 20.080656>,  <37.765705, 42.439823, 20.066946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162418, 42.489124, 20.080656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051150, 0.627591, -0.776861,
		-0.117263, 0.768724, 0.628739,
		0.991783, 0.123257, 0.034273,
		38.459953, 42.526100, 20.090939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858425, 43.108162, 19.921192>,  <37.765705, 42.439823, 20.066946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858425, 43.108162, 19.921192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222809, 42.953022, 19.865011>,  <38.441441, 42.859940, 19.831303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222809, 42.953022, 19.865011>,  <37.858425, 43.108162, 19.921192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222809, 42.953022, 19.865011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117235, 0.569886, -0.813318,
		0.395482, 0.724435, 0.564612,
		0.910961, -0.387845, -0.140451,
		38.496098, 42.836670, 19.822876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238243, 43.683250, 19.818468>,  <37.858425, 43.108162, 19.921192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238243, 43.683250, 19.818468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447346, 43.376129, 19.670300>,  <38.572807, 43.191856, 19.581398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.447346, 43.376129, 19.670300>,  <38.238243, 43.683250, 19.818468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447346, 43.376129, 19.670300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285841, 0.567234, -0.772360,
		0.803134, 0.297872, 0.515992,
		0.522752, -0.767801, -0.370421,
		38.604172, 43.145790, 19.559174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877434, 44.022930, 19.590242>,  <38.238243, 43.683250, 19.818468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877434, 44.022930, 19.590242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910690, 43.659546, 19.426395>,  <38.930645, 43.441517, 19.328087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.910690, 43.659546, 19.426395>,  <38.877434, 44.022930, 19.590242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910690, 43.659546, 19.426395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554016, 0.383802, -0.738757,
		0.828344, -0.165511, 0.535213,
		0.083144, -0.908461, -0.409616,
		38.935635, 43.387009, 19.303511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587543, 43.830597, 19.409620>,  <38.877434, 44.022930, 19.590242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587543, 43.830597, 19.409620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350994, 43.612526, 19.171946>,  <39.209064, 43.481686, 19.029341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.350994, 43.612526, 19.171946>,  <39.587543, 43.830597, 19.409620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350994, 43.612526, 19.171946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361451, 0.479472, -0.799662,
		0.720852, -0.687671, -0.086494,
		-0.591376, -0.545175, -0.594188,
		39.173580, 43.448975, 18.993689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980019, 43.489162, 18.788883>,  <39.587543, 43.830597, 19.409620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980019, 43.489162, 18.788883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592346, 43.532059, 18.700169>,  <39.359741, 43.557796, 18.646940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592346, 43.532059, 18.700169>,  <39.980019, 43.489162, 18.788883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592346, 43.532059, 18.700169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246172, 0.456239, -0.855129,
		0.009480, -0.883371, -0.468578,
		-0.969180, 0.107244, -0.221786,
		39.301594, 43.564232, 18.633633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012020, 43.311848, 18.180151>,  <39.980019, 43.489162, 18.788883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012020, 43.311848, 18.180151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678345, 43.529255, 18.217484>,  <39.478138, 43.659698, 18.239883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.678345, 43.529255, 18.217484>,  <40.012020, 43.311848, 18.180151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678345, 43.529255, 18.217484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249925, 0.523462, -0.814571,
		-0.491590, -0.656183, -0.572506,
		-0.834192, 0.543519, 0.093332,
		39.428085, 43.692310, 18.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242599, 42.612080, 18.163166>,  <40.012020, 43.311848, 18.180151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242599, 42.612080, 18.163166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179665, 42.414684, 17.821005>,  <40.141903, 42.296246, 17.615709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179665, 42.414684, 17.821005>,  <40.242599, 42.612080, 18.163166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179665, 42.414684, 17.821005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263565, -0.813787, 0.517962,
		-0.951723, 0.306950, -0.002025,
		-0.157341, -0.493490, -0.855401,
		40.132462, 42.266636, 17.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642166, 42.241474, 18.312153>,  <40.242599, 42.612080, 18.163166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642166, 42.241474, 18.312153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842846, 42.060619, 18.017162>,  <39.963253, 41.952106, 17.840168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.842846, 42.060619, 18.017162>,  <39.642166, 42.241474, 18.312153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842846, 42.060619, 18.017162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104161, -0.877903, 0.467373,
		-0.858748, -0.157664, -0.487538,
		0.501699, -0.452138, -0.737475,
		39.993355, 41.924976, 17.795919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297085, 41.640015, 18.362595>,  <39.642166, 42.241474, 18.312153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297085, 41.640015, 18.362595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.577438, 41.504185, 18.111692>,  <39.745651, 41.422688, 17.961151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.577438, 41.504185, 18.111692>,  <39.297085, 41.640015, 18.362595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577438, 41.504185, 18.111692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206013, -0.938300, 0.277763,
		-0.682873, -0.065457, -0.727598,
		0.700887, -0.339572, -0.627255,
		39.787704, 41.402313, 17.923515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967094, 41.127129, 18.083715>,  <39.297085, 41.640015, 18.362595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967094, 41.127129, 18.083715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.358250, 41.057606, 18.037188>,  <39.592941, 41.015892, 18.009272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.358250, 41.057606, 18.037188>,  <38.967094, 41.127129, 18.083715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358250, 41.057606, 18.037188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103574, -0.885657, 0.452642,
		-0.181693, -0.430584, -0.884073,
		0.977885, -0.173809, -0.116320,
		39.651615, 41.005463, 18.002291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969986, 40.492905, 17.698267>,  <38.967094, 41.127129, 18.083715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969986, 40.492905, 17.698267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310383, 40.514687, 17.907207>,  <39.514622, 40.527756, 18.032572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310383, 40.514687, 17.907207>,  <38.969986, 40.492905, 17.698267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310383, 40.514687, 17.907207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143018, -0.932989, 0.330268,
		0.505334, -0.355760, -0.786176,
		0.850990, 0.054458, 0.522351,
		39.565681, 40.531025, 18.063913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358784, 39.772549, 17.664480>,  <38.969986, 40.492905, 17.698267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358784, 39.772549, 17.664480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540649, 39.955147, 17.970392>,  <39.649769, 40.064705, 18.153940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540649, 39.955147, 17.970392>,  <39.358784, 39.772549, 17.664480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540649, 39.955147, 17.970392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139285, -0.811660, 0.567282,
		0.879704, -0.364446, -0.305451,
		0.454666, 0.456495, 0.764782,
		39.677048, 40.092094, 18.199827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833672, 39.373283, 17.977348>,  <39.358784, 39.772549, 17.664480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833672, 39.373283, 17.977348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.749214, 39.619328, 18.281206>,  <39.698540, 39.766953, 18.463520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.749214, 39.619328, 18.281206>,  <39.833672, 39.373283, 17.977348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749214, 39.619328, 18.281206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144513, -0.788269, 0.598121,
		0.966712, 0.016514, 0.255333,
		-0.211148, 0.615110, 0.759642,
		39.685871, 39.803860, 18.509098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254101, 39.089710, 18.497879>,  <39.833672, 39.373283, 17.977348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254101, 39.089710, 18.497879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959648, 39.294895, 18.674505>,  <39.782974, 39.418007, 18.780481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.959648, 39.294895, 18.674505>,  <40.254101, 39.089710, 18.497879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959648, 39.294895, 18.674505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087188, -0.718825, 0.689703,
		0.671197, 0.469214, 0.573875,
		-0.736133, 0.512962, 0.441563,
		39.738808, 39.448784, 18.806974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862915, 39.314930, 18.913239>,  <40.254101, 39.089710, 18.497879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862915, 39.314930, 18.913239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.213245, 39.123402, 18.889030>,  <41.423443, 39.008484, 18.874506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.213245, 39.123402, 18.889030>,  <40.862915, 39.314930, 18.913239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213245, 39.123402, 18.889030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287347, 0.618080, -0.731716,
		0.387769, 0.623464, 0.678917,
		0.875823, -0.478822, -0.060522,
		41.475994, 38.979755, 18.870874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349045, 39.875408, 18.798599>,  <40.862915, 39.314930, 18.913239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349045, 39.875408, 18.798599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.541248, 39.542480, 18.688066>,  <41.656570, 39.342724, 18.621748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.541248, 39.542480, 18.688066>,  <41.349045, 39.875408, 18.798599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541248, 39.542480, 18.688066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510166, 0.521574, -0.683879,
		0.713332, 0.187636, 0.675241,
		0.480508, -0.832318, -0.276330,
		41.685402, 39.292786, 18.605167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946205, 40.123295, 18.637445>,  <41.349045, 39.875408, 18.798599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946205, 40.123295, 18.637445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963879, 39.762600, 18.465437>,  <41.974483, 39.546185, 18.362232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963879, 39.762600, 18.465437>,  <41.946205, 40.123295, 18.637445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963879, 39.762600, 18.465437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547215, 0.381970, -0.744751,
		0.835825, -0.202406, 0.510322,
		0.044185, -0.901737, -0.430020,
		41.977135, 39.492077, 18.336432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618259, 40.062183, 18.474091>,  <41.946205, 40.123295, 18.637445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618259, 40.062183, 18.474091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437233, 39.797188, 18.235332>,  <42.328617, 39.638191, 18.092077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437233, 39.797188, 18.235332>,  <42.618259, 40.062183, 18.474091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437233, 39.797188, 18.235332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494918, 0.370202, -0.786134,
		0.741780, -0.651195, 0.160337,
		-0.452569, -0.662492, -0.596896,
		42.301460, 39.598442, 18.056263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126392, 39.716934, 18.076139>,  <42.618259, 40.062183, 18.474091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126392, 39.716934, 18.076139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.800411, 39.633728, 17.859777>,  <42.604820, 39.583805, 17.729959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.800411, 39.633728, 17.859777>,  <43.126392, 39.716934, 18.076139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800411, 39.633728, 17.859777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486369, 0.262005, -0.833546,
		0.315110, -0.942381, -0.112350,
		-0.814955, -0.208015, -0.540905,
		42.555923, 39.571323, 17.697506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230762, 39.282841, 17.541325>,  <43.126392, 39.716934, 18.076139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230762, 39.282841, 17.541325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.907257, 39.461121, 17.387829>,  <42.713154, 39.568089, 17.295732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.907257, 39.461121, 17.387829>,  <43.230762, 39.282841, 17.541325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907257, 39.461121, 17.387829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517424, 0.229025, -0.824512,
		-0.279600, -0.865389, -0.415843,
		-0.808762, 0.445701, -0.383737,
		42.664627, 39.594830, 17.272707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306873, 39.103470, 16.867340>,  <43.230762, 39.282841, 17.541325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306873, 39.103470, 16.867340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038620, 39.399799, 16.852167>,  <42.877666, 39.577595, 16.843063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.038620, 39.399799, 16.852167>,  <43.306873, 39.103470, 16.867340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038620, 39.399799, 16.852167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425324, 0.342124, -0.837884,
		-0.607743, -0.578047, -0.544528,
		-0.670633, 0.740819, -0.037934,
		42.837429, 39.622044, 16.840788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950661, 39.041355, 16.224615>,  <43.306873, 39.103470, 16.867340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950661, 39.041355, 16.224615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.934601, 39.416840, 16.361561>,  <42.924965, 39.642128, 16.443729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.934601, 39.416840, 16.361561>,  <42.950661, 39.041355, 16.224615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934601, 39.416840, 16.361561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509577, 0.313970, -0.801096,
		-0.859488, 0.142300, -0.490949,
		-0.040148, 0.938709, 0.342366,
		42.922558, 39.698452, 16.464270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758583, 39.446960, 15.744551>,  <42.950661, 39.041355, 16.224615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758583, 39.446960, 15.744551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.894539, 39.741184, 15.978963>,  <42.976112, 39.917717, 16.119610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.894539, 39.741184, 15.978963>,  <42.758583, 39.446960, 15.744551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894539, 39.741184, 15.978963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287758, 0.511904, -0.809413,
		-0.895360, 0.443747, -0.037670,
		0.339891, 0.735556, 0.586030,
		42.996506, 39.961849, 16.154772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.084091, 32.001568, 28.131968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390053, 32.093441, 28.372688>,  <37.573631, 32.148563, 28.517120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.390053, 32.093441, 28.372688>,  <37.084091, 32.001568, 28.131968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390053, 32.093441, 28.372688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596826, 0.098758, -0.796270,
		-0.242320, 0.968243, -0.061538,
		0.764905, 0.229680, 0.601804,
		37.619526, 32.162346, 28.553230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208485, 32.219086, 28.973206>,  <37.084091, 32.001568, 28.131968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208485, 32.219086, 28.973206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548500, 32.297581, 29.168724>,  <37.752510, 32.344677, 29.286036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548500, 32.297581, 29.168724>,  <37.208485, 32.219086, 28.973206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548500, 32.297581, 29.168724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198929, 0.739665, -0.642902,
		-0.487705, 0.643729, 0.589708,
		0.850041, 0.196237, 0.488795,
		37.803513, 32.356453, 29.315363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258320, 32.945663, 29.032131>,  <37.208485, 32.219086, 28.973206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258320, 32.945663, 29.032131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636818, 32.832722, 29.095243>,  <37.863918, 32.764957, 29.133112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636818, 32.832722, 29.095243>,  <37.258320, 32.945663, 29.032131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636818, 32.832722, 29.095243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317760, 0.720403, -0.616480,
		0.060398, 0.633478, 0.771400,
		0.946245, -0.282355, 0.157783,
		37.920692, 32.748016, 29.142578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625786, 33.578167, 29.024891>,  <37.258320, 32.945663, 29.032131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625786, 33.578167, 29.024891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893600, 33.293034, 28.941383>,  <38.054291, 33.121952, 28.891279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893600, 33.293034, 28.941383>,  <37.625786, 33.578167, 29.024891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893600, 33.293034, 28.941383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309462, 0.523213, -0.794029,
		0.675242, 0.467027, 0.570907,
		0.669538, -0.712835, -0.208769,
		38.094463, 33.079182, 28.878754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203342, 33.938629, 28.912966>,  <37.625786, 33.578167, 29.024891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203342, 33.938629, 28.912966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232853, 33.586540, 28.725449>,  <38.250557, 33.375286, 28.612938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232853, 33.586540, 28.725449>,  <38.203342, 33.938629, 28.912966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232853, 33.586540, 28.725449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438608, 0.450807, -0.777429,
		0.895645, -0.148263, 0.419330,
		0.073773, -0.880222, -0.468793,
		38.254986, 33.322475, 28.584810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847462, 33.966011, 28.579477>,  <38.203342, 33.938629, 28.912966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847462, 33.966011, 28.579477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672619, 33.660042, 28.390234>,  <38.567715, 33.476460, 28.276688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.672619, 33.660042, 28.390234>,  <38.847462, 33.966011, 28.579477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672619, 33.660042, 28.390234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239266, 0.408172, -0.880992,
		0.867000, -0.498288, 0.004604,
		-0.437108, -0.764922, -0.473109,
		38.541485, 33.430565, 28.248301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293583, 33.724865, 28.041821>,  <38.847462, 33.966011, 28.579477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293583, 33.724865, 28.041821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943203, 33.593731, 27.900261>,  <38.732975, 33.515053, 27.815325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943203, 33.593731, 27.900261>,  <39.293583, 33.724865, 28.041821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943203, 33.593731, 27.900261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204328, 0.412424, -0.887782,
		0.437006, -0.849958, -0.294274,
		-0.875943, -0.327837, -0.353903,
		38.680420, 33.495380, 27.794090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419445, 33.490292, 27.395952>,  <39.293583, 33.724865, 28.041821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419445, 33.490292, 27.395952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.023521, 33.546585, 27.387201>,  <38.785969, 33.580360, 27.381950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.023521, 33.546585, 27.387201>,  <39.419445, 33.490292, 27.395952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023521, 33.546585, 27.387201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057819, 0.256675, -0.964767,
		-0.130158, -0.956197, -0.262195,
		-0.989806, 0.140732, -0.021878,
		38.726578, 33.588806, 27.380638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096867, 33.084053, 26.757298>,  <39.419445, 33.490292, 27.395952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096867, 33.084053, 26.757298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852699, 33.381367, 26.866785>,  <38.706200, 33.559753, 26.932478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852699, 33.381367, 26.866785>,  <39.096867, 33.084053, 26.757298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852699, 33.381367, 26.866785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044157, 0.313099, -0.948694,
		-0.790850, -0.591184, -0.158299,
		-0.610415, 0.743284, 0.273719,
		38.669575, 33.604351, 26.948900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638515, 33.133987, 26.219622>,  <39.096867, 33.084053, 26.757298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638515, 33.133987, 26.219622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599838, 33.491104, 26.395611>,  <38.576633, 33.705376, 26.501204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599838, 33.491104, 26.395611>,  <38.638515, 33.133987, 26.219622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599838, 33.491104, 26.395611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087519, 0.432705, -0.897278,
		-0.991459, -0.125262, 0.036299,
		-0.096689, 0.892791, 0.439972,
		38.570831, 33.758942, 26.527603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273876, 33.536171, 25.769917>,  <38.638515, 33.133987, 26.219622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273876, 33.536171, 25.769917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408588, 33.812958, 26.025339>,  <38.489418, 33.979031, 26.178593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.408588, 33.812958, 26.025339>,  <38.273876, 33.536171, 25.769917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408588, 33.812958, 26.025339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150054, 0.708953, -0.689108,
		-0.929548, 0.136263, 0.342597,
		0.336785, 0.691967, 0.638559,
		38.509624, 34.020550, 26.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779797, 33.952431, 25.846672>,  <38.273876, 33.536171, 25.769917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779797, 33.952431, 25.846672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132088, 34.133186, 25.903395>,  <38.343464, 34.241642, 25.937428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132088, 34.133186, 25.903395>,  <37.779797, 33.952431, 25.846672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132088, 34.133186, 25.903395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179302, 0.595252, -0.783279,
		-0.438367, 0.664431, 0.605281,
		0.880730, 0.451892, 0.141805,
		38.396305, 34.268753, 25.945936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162834, 34.389881, 25.956285>,  <37.779797, 33.952431, 25.846672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162834, 34.389881, 25.956285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799305, 34.493446, 25.825441>,  <36.581188, 34.555584, 25.746935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799305, 34.493446, 25.825441>,  <37.162834, 34.389881, 25.956285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799305, 34.493446, 25.825441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332526, 0.023900, 0.942791,
		0.251920, 0.965605, 0.064375,
		-0.908825, 0.258914, -0.327109,
		36.526657, 34.571121, 25.727308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087395, 34.820560, 26.453979>,  <37.162834, 34.389881, 25.956285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087395, 34.820560, 26.453979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720829, 34.761795, 26.305063>,  <36.500889, 34.726536, 26.215714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.720829, 34.761795, 26.305063>,  <37.087395, 34.820560, 26.453979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720829, 34.761795, 26.305063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371457, -0.034096, 0.927824,
		-0.149006, 0.988561, -0.023327,
		-0.916415, -0.146916, -0.372289,
		36.445904, 34.717720, 26.193377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805603, 35.217350, 26.897039>,  <37.087395, 34.820560, 26.453979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805603, 35.217350, 26.897039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529835, 34.973434, 26.740654>,  <36.364372, 34.827084, 26.646822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.529835, 34.973434, 26.740654>,  <36.805603, 35.217350, 26.897039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529835, 34.973434, 26.740654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360432, -0.179389, 0.915373,
		-0.628321, 0.771994, -0.096113,
		-0.689421, -0.609790, -0.390966,
		36.323009, 34.790497, 26.623363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124016, 35.458920, 27.104300>,  <36.805603, 35.217350, 26.897039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124016, 35.458920, 27.104300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116455, 35.065880, 27.030384>,  <36.111919, 34.830055, 26.986034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116455, 35.065880, 27.030384>,  <36.124016, 35.458920, 27.104300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116455, 35.065880, 27.030384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448565, -0.156842, 0.879881,
		-0.893551, 0.099520, -0.437794,
		-0.018901, -0.982597, -0.184787,
		36.110786, 34.771099, 26.974947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643219, 35.246269, 27.524504>,  <36.124016, 35.458920, 27.104300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643219, 35.246269, 27.524504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755516, 34.876423, 27.421528>,  <35.822895, 34.654514, 27.359743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755516, 34.876423, 27.421528>,  <35.643219, 35.246269, 27.524504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755516, 34.876423, 27.421528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448654, -0.363542, 0.816423,
		-0.848465, -0.113705, -0.516893,
		0.280743, -0.924613, -0.257438,
		35.839741, 34.599037, 27.344297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044155, 34.840775, 27.478073>,  <35.643219, 35.246269, 27.524504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044155, 34.840775, 27.478073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333561, 34.579659, 27.567862>,  <35.507206, 34.422989, 27.621735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333561, 34.579659, 27.567862>,  <35.044155, 34.840775, 27.478073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333561, 34.579659, 27.567862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506327, -0.280816, 0.815337,
		-0.469212, -0.703564, -0.533702,
		0.723514, -0.652794, 0.224471,
		35.550617, 34.383820, 27.635202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672966, 34.354134, 27.875717>,  <35.044155, 34.840775, 27.478073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672966, 34.354134, 27.875717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053051, 34.263813, 27.961615>,  <35.281101, 34.209621, 28.013153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053051, 34.263813, 27.961615>,  <34.672966, 34.354134, 27.875717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053051, 34.263813, 27.961615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282037, -0.330173, 0.900800,
		-0.132496, -0.916516, -0.377417,
		0.950211, -0.225798, 0.214745,
		35.338116, 34.196072, 28.026037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600197, 33.703236, 28.251532>,  <34.672966, 34.354134, 27.875717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600197, 33.703236, 28.251532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964539, 33.840286, 28.343573>,  <35.183144, 33.922516, 28.398798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964539, 33.840286, 28.343573>,  <34.600197, 33.703236, 28.251532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964539, 33.840286, 28.343573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198564, -0.124966, 0.972088,
		0.361816, -0.931124, -0.045794,
		0.910858, 0.342624, 0.230103,
		35.237797, 33.943073, 28.412603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938538, 33.240364, 28.727579>,  <34.600197, 33.703236, 28.251532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938538, 33.240364, 28.727579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106602, 33.599926, 28.777264>,  <35.207439, 33.815662, 28.807076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106602, 33.599926, 28.777264>,  <34.938538, 33.240364, 28.727579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106602, 33.599926, 28.777264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086096, -0.096775, 0.991576,
		0.903355, -0.427317, 0.036731,
		0.420163, 0.898907, 0.124213,
		35.232651, 33.869598, 28.814528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417778, 33.178360, 29.235979>,  <34.938538, 33.240364, 28.727579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417778, 33.178360, 29.235979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345978, 33.571697, 29.247395>,  <35.302898, 33.807701, 29.254244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345978, 33.571697, 29.247395>,  <35.417778, 33.178360, 29.235979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345978, 33.571697, 29.247395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009856, -0.027211, 0.999581,
		0.983709, 0.179706, -0.004808,
		-0.179500, 0.983344, 0.028538,
		35.292130, 33.866699, 29.255957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852112, 33.519958, 29.903383>,  <35.417778, 33.178360, 29.235979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852112, 33.519958, 29.903383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568996, 33.787628, 29.812838>,  <35.399128, 33.948231, 29.758511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568996, 33.787628, 29.812838>,  <35.852112, 33.519958, 29.903383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568996, 33.787628, 29.812838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094295, 0.228076, 0.969066,
		0.700103, 0.707239, -0.098330,
		-0.707788, 0.669174, -0.226366,
		35.356659, 33.988380, 29.744928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030426, 34.138191, 30.211164>,  <35.852112, 33.519958, 29.903383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030426, 34.138191, 30.211164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635777, 34.174419, 30.156942>,  <35.398987, 34.196156, 30.124409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635777, 34.174419, 30.156942>,  <36.030426, 34.138191, 30.211164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635777, 34.174419, 30.156942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079735, 0.457184, 0.885791,
		0.142196, 0.884749, -0.443846,
		-0.986622, 0.090566, -0.135555,
		35.339790, 34.201588, 30.116276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828426, 34.767876, 30.520765>,  <36.030426, 34.138191, 30.211164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828426, 34.767876, 30.520765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470921, 34.594227, 30.475637>,  <35.256416, 34.490036, 30.448561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.470921, 34.594227, 30.475637>,  <35.828426, 34.767876, 30.520765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470921, 34.594227, 30.475637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331807, 0.470659, 0.817548,
		-0.301817, 0.768127, -0.564702,
		-0.893762, -0.434122, -0.112817,
		35.202793, 34.463989, 30.441792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328274, 35.324390, 30.829802>,  <35.828426, 34.767876, 30.520765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328274, 35.324390, 30.829802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161034, 34.962391, 30.861214>,  <35.060692, 34.745190, 30.880060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161034, 34.962391, 30.861214>,  <35.328274, 35.324390, 30.829802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161034, 34.962391, 30.861214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230985, 0.189522, 0.954320,
		-0.878545, 0.380859, -0.288280,
		-0.418097, -0.905002, 0.078531,
		35.035606, 34.690891, 30.884773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657555, 35.361462, 31.199509>,  <35.328274, 35.324390, 30.829802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657555, 35.361462, 31.199509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808044, 34.992901, 31.238441>,  <34.898338, 34.771767, 31.261801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.808044, 34.992901, 31.238441>,  <34.657555, 35.361462, 31.199509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808044, 34.992901, 31.238441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164751, 0.036847, 0.985647,
		-0.911761, -0.386865, -0.137939,
		0.376229, -0.921400, 0.097332,
		34.920914, 34.716480, 31.267641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737682, 35.476322, 30.416611>,  <34.657555, 35.361462, 31.199509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737682, 35.476322, 30.416611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720520, 35.842899, 30.575754>,  <34.710220, 36.062847, 30.671240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720520, 35.842899, 30.575754>,  <34.737682, 35.476322, 30.416611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720520, 35.842899, 30.575754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199200, 0.398079, -0.895462,
		-0.979019, 0.040830, -0.199637,
		-0.042909, 0.916442, 0.397860,
		34.707645, 36.117832, 30.695112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360760, 35.972008, 29.990534>,  <34.737682, 35.476322, 30.416611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360760, 35.972008, 29.990534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663666, 36.127884, 30.200178>,  <34.845409, 36.221409, 30.325964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663666, 36.127884, 30.200178>,  <34.360760, 35.972008, 29.990534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663666, 36.127884, 30.200178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428284, 0.309553, -0.848969,
		-0.493078, 0.867362, 0.067514,
		0.757263, 0.389693, 0.524111,
		34.890846, 36.244793, 30.357412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556671, 36.587620, 29.563332>,  <34.360760, 35.972008, 29.990534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556671, 36.587620, 29.563332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882637, 36.550591, 29.792185>,  <35.078217, 36.528374, 29.929497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882637, 36.550591, 29.792185>,  <34.556671, 36.587620, 29.563332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882637, 36.550591, 29.792185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561451, 0.371028, -0.739669,
		-0.143804, 0.923996, 0.354334,
		0.814919, -0.092574, 0.572134,
		35.127113, 36.522820, 29.963825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850216, 37.164280, 29.734228>,  <34.556671, 36.587620, 29.563332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850216, 37.164280, 29.734228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123417, 36.872753, 29.714886>,  <35.287338, 36.697838, 29.703281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.123417, 36.872753, 29.714886>,  <34.850216, 37.164280, 29.734228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123417, 36.872753, 29.714886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553379, 0.559527, -0.617010,
		0.476742, 0.394660, 0.785468,
		0.683000, -0.728816, -0.048354,
		35.328316, 36.654110, 29.700380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467415, 37.471394, 29.593447>,  <34.850216, 37.164280, 29.734228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467415, 37.471394, 29.593447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570805, 37.094727, 29.507229>,  <35.632839, 36.868729, 29.455498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570805, 37.094727, 29.507229>,  <35.467415, 37.471394, 29.593447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570805, 37.094727, 29.507229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662589, 0.335189, -0.669794,
		0.702969, 0.030306, 0.710574,
		0.258475, -0.941664, -0.215547,
		35.648346, 36.812229, 29.442564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136078, 37.525387, 29.599607>,  <35.467415, 37.471394, 29.593447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136078, 37.525387, 29.599607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060688, 37.203243, 29.374796>,  <36.015453, 37.009956, 29.239910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060688, 37.203243, 29.374796>,  <36.136078, 37.525387, 29.599607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060688, 37.203243, 29.374796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688281, 0.299899, -0.660552,
		0.700533, -0.511329, 0.497791,
		-0.188473, -0.805359, -0.562027,
		36.004147, 36.961636, 29.206188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846722, 37.328270, 29.548044>,  <36.136078, 37.525387, 29.599607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846722, 37.328270, 29.548044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649570, 37.120380, 29.268915>,  <36.531281, 36.995647, 29.101439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649570, 37.120380, 29.268915>,  <36.846722, 37.328270, 29.548044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649570, 37.120380, 29.268915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698154, 0.242412, -0.673660,
		0.519279, -0.819220, 0.243369,
		-0.492880, -0.519726, -0.697821,
		36.501705, 36.964462, 29.059568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352558, 36.883503, 29.230339>,  <36.846722, 37.328270, 29.548044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352558, 36.883503, 29.230339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049042, 36.949360, 28.978264>,  <36.866932, 36.988873, 28.827019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049042, 36.949360, 28.978264>,  <37.352558, 36.883503, 29.230339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049042, 36.949360, 28.978264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646581, 0.307144, -0.698281,
		0.078591, -0.937313, -0.339511,
		-0.758787, 0.164643, -0.630187,
		36.821407, 36.998753, 28.789207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542263, 36.475338, 28.664999>,  <37.352558, 36.883503, 29.230339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542263, 36.475338, 28.664999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271141, 36.741493, 28.539879>,  <37.108467, 36.901188, 28.464808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271141, 36.741493, 28.539879>,  <37.542263, 36.475338, 28.664999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271141, 36.741493, 28.539879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650003, 0.343453, -0.677891,
		-0.343629, -0.662796, -0.665298,
		-0.677802, 0.665388, -0.312799,
		37.067799, 36.941109, 28.446039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678185, 36.521915, 27.988848>,  <37.542263, 36.475338, 28.664999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678185, 36.521915, 27.988848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444180, 36.841263, 28.045933>,  <37.303776, 37.032871, 28.080185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444180, 36.841263, 28.045933>,  <37.678185, 36.521915, 27.988848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444180, 36.841263, 28.045933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430991, 0.455102, -0.779185,
		-0.687024, -0.394327, -0.610331,
		-0.585017, 0.798366, 0.142715,
		37.268673, 37.080772, 28.088747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548504, 36.703846, 27.339022>,  <37.678185, 36.521915, 27.988848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548504, 36.703846, 27.339022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420841, 37.026543, 27.537945>,  <37.344242, 37.220161, 27.657299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420841, 37.026543, 27.537945>,  <37.548504, 36.703846, 27.339022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420841, 37.026543, 27.537945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224189, 0.574125, -0.787477,
		-0.920803, -0.139837, -0.364098,
		-0.319156, 0.806738, 0.497306,
		37.325096, 37.268562, 27.687136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951141, 36.976082, 26.951946>,  <37.548504, 36.703846, 27.339022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951141, 36.976082, 26.951946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163906, 37.247185, 27.155006>,  <37.291565, 37.409847, 27.276842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163906, 37.247185, 27.155006>,  <36.951141, 36.976082, 26.951946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163906, 37.247185, 27.155006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242232, 0.452661, -0.858150,
		-0.811414, 0.579430, 0.076600,
		0.531912, 0.677760, 0.507652,
		37.323479, 37.450512, 27.307302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684639, 37.670444, 26.691124>,  <36.951141, 36.976082, 26.951946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684639, 37.670444, 26.691124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040333, 37.728405, 26.864681>,  <37.253750, 37.763180, 26.968815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.040333, 37.728405, 26.864681>,  <36.684639, 37.670444, 26.691124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040333, 37.728405, 26.864681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243297, 0.653418, -0.716835,
		-0.387384, 0.743000, 0.545788,
		0.889236, 0.144902, 0.433894,
		37.307102, 37.771877, 26.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698444, 38.394474, 26.825632>,  <36.684639, 37.670444, 26.691124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698444, 38.394474, 26.825632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091877, 38.324532, 26.843527>,  <37.327934, 38.282566, 26.854263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091877, 38.324532, 26.843527>,  <36.698444, 38.394474, 26.825632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091877, 38.324532, 26.843527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127308, 0.496420, -0.858697,
		0.127942, 0.850289, 0.510528,
		0.983577, -0.174858, 0.044735,
		37.386951, 38.272076, 26.856947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174091, 39.034817, 26.724802>,  <36.698444, 38.394474, 26.825632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174091, 39.034817, 26.724802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413361, 38.731297, 26.621717>,  <37.556923, 38.549183, 26.559866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.413361, 38.731297, 26.621717>,  <37.174091, 39.034817, 26.724802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413361, 38.731297, 26.621717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371851, 0.547689, -0.749508,
		0.709872, 0.352504, 0.609772,
		0.598170, -0.758800, -0.257711,
		37.592812, 38.503658, 26.544405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783775, 39.428932, 26.560612>,  <37.174091, 39.034817, 26.724802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783775, 39.428932, 26.560612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798225, 39.066551, 26.391874>,  <37.806896, 38.849125, 26.290632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798225, 39.066551, 26.391874>,  <37.783775, 39.428932, 26.560612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798225, 39.066551, 26.391874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294595, 0.413016, -0.861761,
		0.954939, -0.093145, 0.281807,
		0.036122, -0.905948, -0.421845,
		37.809063, 38.794765, 26.265322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381207, 39.383797, 26.140818>,  <37.783775, 39.428932, 26.560612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381207, 39.383797, 26.140818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132431, 39.100830, 26.006498>,  <37.983166, 38.931049, 25.925907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132431, 39.100830, 26.006498>,  <38.381207, 39.383797, 26.140818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132431, 39.100830, 26.006498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068517, 0.378018, -0.923259,
		0.780063, -0.597218, -0.186635,
		-0.621939, -0.707412, -0.335798,
		37.945850, 38.888607, 25.905760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760685, 39.164227, 25.652100>,  <38.381207, 39.383797, 26.140818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760685, 39.164227, 25.652100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385063, 39.048607, 25.577656>,  <38.159691, 38.979237, 25.532990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.385063, 39.048607, 25.577656>,  <38.760685, 39.164227, 25.652100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385063, 39.048607, 25.577656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095030, 0.302025, -0.948552,
		0.330390, -0.908422, -0.256147,
		-0.939048, -0.289051, -0.186113,
		38.103348, 38.961895, 25.521822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774780, 39.011822, 24.911085>,  <38.760685, 39.164227, 25.652100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774780, 39.011822, 24.911085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387238, 39.083553, 24.979382>,  <38.154713, 39.126591, 25.020359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387238, 39.083553, 24.979382>,  <38.774780, 39.011822, 24.911085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387238, 39.083553, 24.979382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032026, 0.593012, -0.804557,
		-0.245529, -0.784971, -0.568802,
		-0.968860, 0.179326, 0.170741,
		38.096581, 39.137352, 25.030603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580742, 39.028145, 24.182034>,  <38.774780, 39.011822, 24.911085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580742, 39.028145, 24.182034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256058, 39.148243, 24.382421>,  <38.061245, 39.220303, 24.502655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256058, 39.148243, 24.382421>,  <38.580742, 39.028145, 24.182034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256058, 39.148243, 24.382421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176664, 0.691352, -0.700587,
		-0.556694, -0.657181, -0.508138,
		-0.811715, 0.300243, 0.500972,
		38.012543, 39.238316, 24.532713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051579, 38.987045, 23.676136>,  <38.580742, 39.028145, 24.182034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051579, 38.987045, 23.676136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937340, 39.229439, 23.973112>,  <37.868797, 39.374874, 24.151299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937340, 39.229439, 23.973112>,  <38.051579, 38.987045, 23.676136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937340, 39.229439, 23.973112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208773, 0.716762, -0.665332,
		-0.935333, -0.345019, -0.078193,
		-0.285598, 0.605982, 0.742442,
		37.851662, 39.411232, 24.195845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541195, 39.390598, 23.346853>,  <38.051579, 38.987045, 23.676136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541195, 39.390598, 23.346853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635208, 39.617897, 23.662283>,  <37.691616, 39.754276, 23.851542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635208, 39.617897, 23.662283>,  <37.541195, 39.390598, 23.346853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635208, 39.617897, 23.662283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044687, 0.816762, -0.575241,
		-0.970959, 0.099963, 0.217362,
		0.235036, 0.568249, 0.788575,
		37.705719, 39.788372, 23.898855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018803, 39.972393, 23.363064>,  <37.541195, 39.390598, 23.346853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018803, 39.972393, 23.363064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357044, 40.079205, 23.547953>,  <37.559990, 40.143291, 23.658886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357044, 40.079205, 23.547953>,  <37.018803, 39.972393, 23.363064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357044, 40.079205, 23.547953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023664, 0.846289, -0.532198,
		-0.533287, 0.460966, 0.709306,
		0.845603, 0.267029, 0.462224,
		37.610725, 40.159313, 23.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937534, 40.769009, 23.464310>,  <37.018803, 39.972393, 23.363064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937534, 40.769009, 23.464310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325005, 40.696720, 23.532431>,  <37.557487, 40.653347, 23.573303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325005, 40.696720, 23.532431>,  <36.937534, 40.769009, 23.464310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325005, 40.696720, 23.532431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240467, 0.853777, -0.461779,
		-0.061947, 0.488267, 0.870493,
		0.968679, -0.180719, 0.170301,
		37.615608, 40.642506, 23.583521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168495, 41.342968, 23.262873>,  <36.937534, 40.769009, 23.464310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168495, 41.342968, 23.262873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514729, 41.142723, 23.267849>,  <37.722469, 41.022575, 23.270836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514729, 41.142723, 23.267849>,  <37.168495, 41.342968, 23.262873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514729, 41.142723, 23.267849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346148, 0.580180, -0.737273,
		0.361870, 0.642478, 0.675480,
		0.865582, -0.500613, 0.012443,
		37.774403, 40.992538, 23.271582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680588, 41.858246, 23.232319>,  <37.168495, 41.342968, 23.262873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680588, 41.858246, 23.232319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866360, 41.534172, 23.089260>,  <37.977821, 41.339729, 23.003426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866360, 41.534172, 23.089260>,  <37.680588, 41.858246, 23.232319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866360, 41.534172, 23.089260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344787, 0.537391, -0.769632,
		0.815739, 0.234125, 0.528919,
		0.464426, -0.810183, -0.357648,
		38.005688, 41.291119, 22.981966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367207, 41.973572, 23.192762>,  <37.680588, 41.858246, 23.232319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367207, 41.973572, 23.192762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332088, 41.678799, 22.924667>,  <38.311016, 41.501934, 22.763811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.332088, 41.678799, 22.924667>,  <38.367207, 41.973572, 23.192762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332088, 41.678799, 22.924667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326683, 0.614325, -0.718251,
		0.941048, -0.282014, 0.186810,
		-0.087795, -0.736935, -0.670238,
		38.305752, 41.457718, 22.723597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076687, 41.995708, 23.503149>,  <38.367207, 41.973572, 23.192762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076687, 41.995708, 23.503149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365742, 42.251404, 23.608351>,  <39.539177, 42.404819, 23.671473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365742, 42.251404, 23.608351>,  <39.076687, 41.995708, 23.503149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365742, 42.251404, 23.608351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000085, -0.380411, 0.924817,
		0.691226, -0.668331, -0.274846,
		0.722639, 0.639234, 0.263007,
		39.582535, 42.443172, 23.687252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602741, 41.609604, 23.730169>,  <39.076687, 41.995708, 23.503149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602741, 41.609604, 23.730169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652431, 41.967705, 23.901325>,  <39.682247, 42.182564, 24.004019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.652431, 41.967705, 23.901325>,  <39.602741, 41.609604, 23.730169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652431, 41.967705, 23.901325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072462, -0.421893, 0.903745,
		0.989604, -0.143277, 0.012460,
		0.124229, 0.895253, 0.427889,
		39.689701, 42.236282, 24.029692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965969, 41.434502, 24.261608>,  <39.602741, 41.609604, 23.730169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965969, 41.434502, 24.261608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814365, 41.792313, 24.356411>,  <39.723404, 42.007000, 24.413294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814365, 41.792313, 24.356411>,  <39.965969, 41.434502, 24.261608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814365, 41.792313, 24.356411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040727, -0.271992, 0.961437,
		0.924498, 0.354738, 0.139518,
		-0.379006, 0.894529, 0.237008,
		39.700665, 42.060673, 24.427513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290527, 41.673149, 24.871115>,  <39.965969, 41.434502, 24.261608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290527, 41.673149, 24.871115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.938580, 41.861408, 24.844824>,  <39.727409, 41.974365, 24.829050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.938580, 41.861408, 24.844824>,  <40.290527, 41.673149, 24.871115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938580, 41.861408, 24.844824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194790, -0.231038, 0.953246,
		0.433459, 0.851535, 0.294961,
		-0.879869, 0.470649, -0.065725,
		39.674618, 42.002602, 24.825106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365803, 42.115562, 25.528061>,  <40.290527, 41.673149, 24.871115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365803, 42.115562, 25.528061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978821, 42.129890, 25.427868>,  <39.746632, 42.138489, 25.367752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978821, 42.129890, 25.427868>,  <40.365803, 42.115562, 25.528061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978821, 42.129890, 25.427868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252913, -0.167353, 0.952905,
		-0.007788, 0.985246, 0.170966,
		-0.967458, 0.035819, -0.250485,
		39.688583, 42.140636, 25.352722>
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
