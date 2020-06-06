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
	<24.372276, 34.620087, 34.608490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439438, 34.764732, 34.975323>,  <24.479734, 34.851521, 35.195423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439438, 34.764732, 34.975323>,  <24.372276, 34.620087, 34.608490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439438, 34.764732, 34.975323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705784, -0.693582, 0.144266,
		0.688242, 0.623041, -0.371675,
		0.167903, 0.361613, 0.917085,
		24.489809, 34.873215, 35.250446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075333, 34.899059, 34.654270>,  <24.372276, 34.620087, 34.608490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075333, 34.899059, 34.654270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945780, 34.702797, 34.977840>,  <24.868048, 34.585037, 35.171982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945780, 34.702797, 34.977840>,  <25.075333, 34.899059, 34.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945780, 34.702797, 34.977840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785046, -0.616558, -0.059657,
		0.528019, 0.615720, 0.584880,
		-0.323880, -0.490658, 0.808923,
		24.848616, 34.555599, 35.220516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709471, 34.607037, 34.565189>,  <25.075333, 34.899059, 34.654270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709471, 34.607037, 34.565189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754576, 34.247734, 34.735092>,  <25.781639, 34.032154, 34.837032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754576, 34.247734, 34.735092>,  <25.709471, 34.607037, 34.565189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754576, 34.247734, 34.735092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021441, -0.429585, -0.902772,
		0.993391, 0.092691, -0.067700,
		0.112762, -0.898257, 0.424758,
		25.788404, 33.978256, 34.862518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368498, 34.384869, 34.302948>,  <25.709471, 34.607037, 34.565189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368498, 34.384869, 34.302948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144003, 34.070683, 34.407303>,  <26.009306, 33.882172, 34.469913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144003, 34.070683, 34.407303>,  <26.368498, 34.384869, 34.302948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144003, 34.070683, 34.407303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078927, -0.262978, -0.961568,
		0.823883, -0.560258, 0.085598,
		-0.561237, -0.785464, 0.260883,
		25.975632, 33.835045, 34.485569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655499, 33.599369, 34.155811>,  <26.368498, 34.384869, 34.302948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655499, 33.599369, 34.155811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263363, 33.669426, 34.119457>,  <26.028082, 33.711460, 34.097645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263363, 33.669426, 34.119457>,  <26.655499, 33.599369, 34.155811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263363, 33.669426, 34.119457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045433, -0.247885, -0.967724,
		-0.192012, -0.952828, 0.235055,
		-0.980340, 0.175136, -0.090887,
		25.969261, 33.721966, 34.092190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450554, 33.011063, 33.863041>,  <26.655499, 33.599369, 34.155811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450554, 33.011063, 33.863041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152838, 33.267731, 33.788971>,  <25.974209, 33.421730, 33.744530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152838, 33.267731, 33.788971>,  <26.450554, 33.011063, 33.863041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152838, 33.267731, 33.788971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098768, -0.379977, -0.919708,
		-0.660513, -0.666240, 0.346190,
		-0.744290, 0.641671, -0.185177,
		25.929550, 33.460232, 33.733418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822960, 32.660038, 33.629997>,  <26.450554, 33.011063, 33.863041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822960, 32.660038, 33.629997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808815, 33.030663, 33.480209>,  <25.800327, 33.253036, 33.390335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808815, 33.030663, 33.480209>,  <25.822960, 32.660038, 33.629997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808815, 33.030663, 33.480209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231969, -0.372081, -0.898747,
		-0.972080, 0.055082, 0.228092,
		-0.035364, 0.926564, -0.374470,
		25.798206, 33.308632, 33.367867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172144, 32.769238, 33.140884>,  <25.822960, 32.660038, 33.629997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172144, 32.769238, 33.140884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422321, 33.062431, 33.033886>,  <25.572428, 33.238346, 32.969685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422321, 33.062431, 33.033886>,  <25.172144, 32.769238, 33.140884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422321, 33.062431, 33.033886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179268, -0.198669, -0.963532,
		-0.759398, 0.650587, 0.007145,
		0.625442, 0.732985, -0.267498,
		25.609955, 33.282326, 32.953636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780361, 33.047707, 32.693886>,  <25.172144, 32.769238, 33.140884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780361, 33.047707, 32.693886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133579, 33.222759, 32.626110>,  <25.345510, 33.327789, 32.585445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133579, 33.222759, 32.626110>,  <24.780361, 33.047707, 32.693886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133579, 33.222759, 32.626110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141159, -0.096631, -0.985260,
		-0.447554, 0.893946, -0.023554,
		0.883045, 0.437633, -0.169436,
		25.398493, 33.354050, 32.575279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563574, 33.459038, 32.106548>,  <24.780361, 33.047707, 32.693886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563574, 33.459038, 32.106548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.962368, 33.438721, 32.083096>,  <25.201645, 33.426533, 32.069023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.962368, 33.438721, 32.083096>,  <24.563574, 33.459038, 32.106548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.962368, 33.438721, 32.083096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052398, 0.116337, -0.991827,
		0.057196, 0.991910, 0.113325,
		0.996987, -0.050791, -0.058628,
		25.261463, 33.423485, 32.065506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850880, 33.970459, 31.677700>,  <24.563574, 33.459038, 32.106548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850880, 33.970459, 31.677700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134829, 33.691097, 31.641222>,  <25.305199, 33.523479, 31.619335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.134829, 33.691097, 31.641222>,  <24.850880, 33.970459, 31.677700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134829, 33.691097, 31.641222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033836, 0.095513, -0.994853,
		0.703517, 0.709304, 0.044171,
		0.709872, -0.698402, -0.091195,
		25.347790, 33.481575, 31.613863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286955, 34.099762, 31.196127>,  <24.850880, 33.970459, 31.677700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286955, 34.099762, 31.196127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333811, 33.705086, 31.241241>,  <25.361923, 33.468281, 31.268311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333811, 33.705086, 31.241241>,  <25.286955, 34.099762, 31.196127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333811, 33.705086, 31.241241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159258, -0.093438, -0.982805,
		0.980263, 0.133086, 0.146193,
		0.117138, -0.986690, 0.112789,
		25.368952, 33.409081, 31.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422356, 33.933193, 30.430170>,  <25.286955, 34.099762, 31.196127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422356, 33.933193, 30.430170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590885, 33.600796, 30.284878>,  <25.692003, 33.401356, 30.197702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590885, 33.600796, 30.284878>,  <25.422356, 33.933193, 30.430170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590885, 33.600796, 30.284878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118181, -0.346793, 0.930467,
		-0.899177, -0.434956, -0.047905,
		0.421325, -0.830992, -0.363232,
		25.717283, 33.351498, 30.175909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947247, 33.375603, 30.612740>,  <25.422356, 33.933193, 30.430170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947247, 33.375603, 30.612740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340239, 33.323185, 30.559732>,  <25.576035, 33.291733, 30.527927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340239, 33.323185, 30.559732>,  <24.947247, 33.375603, 30.612740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340239, 33.323185, 30.559732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075219, -0.371746, 0.925282,
		-0.170517, -0.919039, -0.355376,
		0.982480, -0.131045, -0.132518,
		25.634983, 33.283871, 30.519978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191256, 32.618851, 30.861408>,  <24.947247, 33.375603, 30.612740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191256, 32.618851, 30.861408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495188, 32.878723, 30.871058>,  <25.677547, 33.034645, 30.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495188, 32.878723, 30.871058>,  <25.191256, 32.618851, 30.861408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495188, 32.878723, 30.871058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220121, -0.292000, 0.930743,
		0.611725, -0.701895, -0.364877,
		0.759828, 0.649677, 0.024122,
		25.723137, 33.073627, 30.878294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722292, 32.322681, 31.291821>,  <25.191256, 32.618851, 30.861408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722292, 32.322681, 31.291821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733835, 32.721344, 31.261225>,  <25.740761, 32.960541, 31.242868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733835, 32.721344, 31.261225>,  <25.722292, 32.322681, 31.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733835, 32.721344, 31.261225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178663, 0.070145, 0.981407,
		0.983487, -0.041989, -0.176041,
		0.028860, 0.996653, -0.076488,
		25.742493, 33.020340, 31.238277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340332, 32.731815, 31.640118>,  <25.722292, 32.322681, 31.291821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340332, 32.731815, 31.640118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028793, 32.982594, 31.647425>,  <25.841869, 33.133060, 31.651810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028793, 32.982594, 31.647425>,  <26.340332, 32.731815, 31.640118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028793, 32.982594, 31.647425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159311, 0.169571, 0.972556,
		0.606643, 0.760384, -0.231949,
		-0.778848, 0.626947, 0.018268,
		25.795139, 33.170677, 31.652905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549570, 33.281998, 32.074940>,  <26.340332, 32.731815, 31.640118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549570, 33.281998, 32.074940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156174, 33.354271, 32.070858>,  <25.920135, 33.397633, 32.068409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156174, 33.354271, 32.070858>,  <26.549570, 33.281998, 32.074940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156174, 33.354271, 32.070858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040295, 0.273593, 0.961001,
		0.176425, 0.944723, -0.276356,
		-0.983489, 0.180680, -0.010201,
		25.861128, 33.408474, 32.067799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579983, 33.922226, 32.369225>,  <26.549570, 33.281998, 32.074940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579983, 33.922226, 32.369225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215948, 33.761608, 32.410225>,  <25.997528, 33.665237, 32.434826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215948, 33.761608, 32.410225>,  <26.579983, 33.922226, 32.369225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215948, 33.761608, 32.410225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038255, 0.327678, 0.944015,
		-0.412652, 0.855212, -0.313576,
		-0.910085, -0.401546, 0.102500,
		25.942923, 33.641144, 32.440975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269796, 34.381779, 32.761814>,  <26.579983, 33.922226, 32.369225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269796, 34.381779, 32.761814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067888, 34.038776, 32.801582>,  <25.946743, 33.832973, 32.825443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067888, 34.038776, 32.801582>,  <26.269796, 34.381779, 32.761814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067888, 34.038776, 32.801582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031447, 0.133362, 0.990568,
		-0.862679, 0.496885, -0.094283,
		-0.504772, -0.857508, 0.099423,
		25.916456, 33.781525, 32.831409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749573, 34.875347, 32.427170>,  <26.269796, 34.381779, 32.761814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749573, 34.875347, 32.427170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092369, 34.897881, 32.222271>,  <26.298046, 34.911400, 32.099331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092369, 34.897881, 32.222271>,  <25.749573, 34.875347, 32.427170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092369, 34.897881, 32.222271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022133, -0.989065, -0.145807,
		-0.514858, 0.136293, -0.846372,
		0.856990, 0.056337, -0.512245,
		26.349466, 34.914783, 32.068596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577763, 34.486584, 32.986149>,  <25.749573, 34.875347, 32.427170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577763, 34.486584, 32.986149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654091, 34.114113, 33.110401>,  <25.699888, 33.890629, 33.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654091, 34.114113, 33.110401>,  <25.577763, 34.486584, 32.986149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654091, 34.114113, 33.110401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397939, 0.215895, 0.891647,
		-0.897348, -0.293754, -0.329356,
		0.190819, -0.931181, 0.310630,
		25.711336, 33.834759, 33.203590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949469, 34.221222, 33.312782>,  <25.577763, 34.486584, 32.986149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949469, 34.221222, 33.312782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249268, 33.999771, 33.457970>,  <25.429148, 33.866901, 33.545082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249268, 33.999771, 33.457970>,  <24.949469, 34.221222, 33.312782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249268, 33.999771, 33.457970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196141, 0.337963, 0.920494,
		-0.632282, -0.761103, 0.144714,
		0.749499, -0.553628, 0.362971,
		25.474117, 33.833683, 33.566860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.729174, 33.905590, 33.881310>,  <24.949469, 34.221222, 33.312782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.729174, 33.905590, 33.881310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126204, 33.903778, 33.929924>,  <25.364422, 33.902691, 33.959091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126204, 33.903778, 33.929924>,  <24.729174, 33.905590, 33.881310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126204, 33.903778, 33.929924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115977, 0.265600, 0.957082,
		-0.036612, -0.964073, 0.263103,
		0.992576, -0.004527, 0.121535,
		25.423977, 33.902420, 33.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860359, 33.548489, 34.473316>,  <24.729174, 33.905590, 33.881310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860359, 33.548489, 34.473316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175348, 33.781815, 34.393692>,  <25.364342, 33.921810, 34.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.175348, 33.781815, 34.393692>,  <24.860359, 33.548489, 34.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175348, 33.781815, 34.393692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148437, 0.133975, 0.979805,
		0.598206, -0.801119, 0.018916,
		0.787474, 0.583317, -0.199060,
		25.411591, 33.956810, 34.333973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145203, 32.836903, 34.160473>,  <24.860359, 33.548489, 34.473316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145203, 32.836903, 34.160473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439873, 33.105743, 34.130581>,  <25.616674, 33.267048, 34.112644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439873, 33.105743, 34.130581>,  <25.145203, 32.836903, 34.160473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439873, 33.105743, 34.130581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134385, -0.037190, 0.990231,
		0.662759, -0.739522, -0.117718,
		0.736676, 0.672104, -0.074733,
		25.660875, 33.307373, 34.108162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488228, 32.731697, 34.857185>,  <25.145203, 32.836903, 34.160473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488228, 32.731697, 34.857185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650282, 33.077251, 34.737473>,  <25.747515, 33.284584, 34.665646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650282, 33.077251, 34.737473>,  <25.488228, 32.731697, 34.857185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650282, 33.077251, 34.737473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059344, 0.301809, 0.951519,
		0.912329, -0.403253, 0.071006,
		0.405134, 0.863885, -0.299280,
		25.771822, 33.336418, 34.647690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057060, 32.852577, 35.283840>,  <25.488228, 32.731697, 34.857185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057060, 32.852577, 35.283840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924606, 33.210697, 35.164658>,  <25.845135, 33.425571, 35.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924606, 33.210697, 35.164658>,  <26.057060, 32.852577, 35.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924606, 33.210697, 35.164658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151915, 0.362240, 0.919622,
		0.931274, 0.259255, -0.255960,
		-0.331136, 0.895304, -0.297960,
		25.825266, 33.479290, 35.075268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625551, 33.303303, 35.430954>,  <26.057060, 32.852577, 35.283840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625551, 33.303303, 35.430954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316862, 33.552891, 35.381805>,  <26.131649, 33.702644, 35.352318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316862, 33.552891, 35.381805>,  <26.625551, 33.303303, 35.430954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316862, 33.552891, 35.381805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376463, 0.603940, 0.702518,
		0.512558, 0.495896, -0.700979,
		-0.771725, 0.623974, -0.122868,
		26.085344, 33.740082, 35.344944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906830, 33.951370, 35.453869>,  <26.625551, 33.303303, 35.430954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906830, 33.951370, 35.453869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518744, 33.983044, 35.545437>,  <26.285891, 34.002048, 35.600380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.518744, 33.983044, 35.545437>,  <26.906830, 33.951370, 35.453869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518744, 33.983044, 35.545437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225217, 0.642830, 0.732152,
		-0.089184, 0.761905, -0.641519,
		-0.970218, 0.079185, 0.228924,
		26.227678, 34.006798, 35.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898470, 34.413254, 36.085495>,  <26.906830, 33.951370, 35.453869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898470, 34.413254, 36.085495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147753, 34.446781, 36.396515>,  <27.297323, 34.466896, 36.583126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147753, 34.446781, 36.396515>,  <26.898470, 34.413254, 36.085495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147753, 34.446781, 36.396515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781784, 0.092984, 0.616578,
		-0.020624, -0.992134, 0.123471,
		0.623208, 0.083811, 0.777552,
		27.334715, 34.471924, 36.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721010, 33.950287, 36.621666>,  <26.898470, 34.413254, 36.085495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721010, 33.950287, 36.621666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919622, 34.256721, 36.784916>,  <27.038790, 34.440582, 36.882866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919622, 34.256721, 36.784916>,  <26.721010, 33.950287, 36.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919622, 34.256721, 36.784916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701293, 0.076978, 0.708704,
		0.511512, -0.638111, 0.575473,
		0.496531, 0.766086, 0.408128,
		27.068583, 34.486546, 36.907356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753481, 33.762562, 37.302975>,  <26.721010, 33.950287, 36.621666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753481, 33.762562, 37.302975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803909, 34.159245, 37.293060>,  <26.834167, 34.397255, 37.287113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803909, 34.159245, 37.293060>,  <26.753481, 33.762562, 37.302975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803909, 34.159245, 37.293060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776079, 0.114160, 0.620216,
		0.617905, -0.058957, 0.784039,
		0.126072, 0.991711, -0.024785,
		26.841730, 34.456757, 37.285625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636887, 33.975925, 37.941010>,  <26.753481, 33.762562, 37.302975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636887, 33.975925, 37.941010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578627, 34.321602, 37.748356>,  <26.543671, 34.529007, 37.632763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578627, 34.321602, 37.748356>,  <26.636887, 33.975925, 37.941010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578627, 34.321602, 37.748356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773833, 0.203808, 0.599704,
		0.616417, 0.460047, 0.639052,
		-0.145648, 0.864187, -0.481630,
		26.534933, 34.580856, 37.603867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637636, 34.515945, 38.433250>,  <26.636887, 33.975925, 37.941010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637636, 34.515945, 38.433250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426102, 34.599438, 38.104187>,  <26.299181, 34.649532, 37.906750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426102, 34.599438, 38.104187>,  <26.637636, 34.515945, 38.433250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426102, 34.599438, 38.104187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828795, 0.081807, 0.553540,
		0.182841, 0.974545, 0.129736,
		-0.528836, 0.208734, -0.822656,
		26.267450, 34.662060, 37.857391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989071, 35.100227, 38.297226>,  <26.637636, 34.515945, 38.433250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989071, 35.100227, 38.297226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733744, 35.261505, 38.034931>,  <26.580547, 35.358273, 37.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733744, 35.261505, 38.034931>,  <26.989071, 35.100227, 38.297226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733744, 35.261505, 38.034931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680930, 0.101538, 0.725276,
		0.359009, 0.909464, 0.209733,
		-0.638316, 0.403194, -0.655734,
		26.542250, 35.382462, 37.838211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730843, 35.684837, 38.571911>,  <26.989071, 35.100227, 38.297226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730843, 35.684837, 38.571911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439075, 35.571663, 38.322784>,  <26.264015, 35.503757, 38.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439075, 35.571663, 38.322784>,  <26.730843, 35.684837, 38.571911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439075, 35.571663, 38.322784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684015, 0.313236, 0.658791,
		0.008691, 0.906548, -0.422013,
		-0.729416, -0.282938, -0.622815,
		26.220251, 35.486782, 38.135941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362522, 36.348469, 38.365501>,  <26.730843, 35.684837, 38.571911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362522, 36.348469, 38.365501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115070, 36.038166, 38.315708>,  <25.966599, 35.851986, 38.285831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115070, 36.038166, 38.315708>,  <26.362522, 36.348469, 38.365501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115070, 36.038166, 38.315708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653433, 0.420023, 0.629766,
		-0.436259, 0.470936, -0.766744,
		-0.618631, -0.775757, -0.124486,
		25.929482, 35.805439, 38.278362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793926, 36.656204, 38.194668>,  <26.362522, 36.348469, 38.365501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793926, 36.656204, 38.194668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734997, 36.302330, 38.371590>,  <25.699638, 36.090008, 38.477741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734997, 36.302330, 38.371590>,  <25.793926, 36.656204, 38.194668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734997, 36.302330, 38.371590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599449, 0.435558, 0.671528,
		-0.786738, -0.166203, -0.594491,
		-0.147325, -0.884684, 0.442301,
		25.690800, 36.036926, 38.504280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329023, 36.587383, 38.817505>,  <25.793926, 36.656204, 38.194668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329023, 36.587383, 38.817505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034218, 36.393238, 39.005646>,  <24.857334, 36.276752, 39.118530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.034218, 36.393238, 39.005646>,  <25.329023, 36.587383, 38.817505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.034218, 36.393238, 39.005646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382435, -0.873273, -0.301890,
		0.557273, -0.042618, 0.829235,
		-0.737014, -0.485364, 0.470353,
		24.813114, 36.247627, 39.146751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483734, 36.077766, 39.325314>,  <25.329023, 36.587383, 38.817505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483734, 36.077766, 39.325314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160603, 36.026577, 39.095169>,  <24.966724, 35.995861, 38.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160603, 36.026577, 39.095169>,  <25.483734, 36.077766, 39.325314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160603, 36.026577, 39.095169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491523, -0.685001, -0.537753,
		-0.325301, -0.717213, 0.616267,
		-0.807827, -0.127978, -0.575358,
		24.918255, 35.988182, 38.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258831, 35.435909, 39.235622>,  <25.483734, 36.077766, 39.325314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258831, 35.435909, 39.235622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090515, 35.577763, 38.901638>,  <24.989525, 35.662876, 38.701248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090515, 35.577763, 38.901638>,  <25.258831, 35.435909, 39.235622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090515, 35.577763, 38.901638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610165, -0.570460, -0.549794,
		-0.671292, -0.740815, 0.023657,
		-0.420791, 0.354638, -0.834965,
		24.964277, 35.684155, 38.651150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349113, 34.872910, 38.772449>,  <25.258831, 35.435909, 39.235622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349113, 34.872910, 38.772449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326183, 35.227921, 38.589581>,  <25.312426, 35.440929, 38.479858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326183, 35.227921, 38.589581>,  <25.349113, 34.872910, 38.772449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326183, 35.227921, 38.589581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647588, -0.315463, -0.693623,
		-0.759832, -0.335819, -0.556670,
		-0.057324, 0.887529, -0.457171,
		25.308987, 35.494179, 38.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089853, 34.818195, 38.080101>,  <25.349113, 34.872910, 38.772449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089853, 34.818195, 38.080101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344618, 35.123695, 38.122108>,  <25.497477, 35.306995, 38.147312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344618, 35.123695, 38.122108>,  <25.089853, 34.818195, 38.080101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344618, 35.123695, 38.122108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515288, -0.320416, -0.794866,
		-0.573431, 0.560372, -0.597628,
		0.636910, 0.763752, 0.105017,
		25.535690, 35.352821, 38.153614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294338, 34.973484, 37.373257>,  <25.089853, 34.818195, 38.080101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294338, 34.973484, 37.373257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579117, 35.128326, 37.607616>,  <25.749985, 35.221233, 37.748234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579117, 35.128326, 37.607616>,  <25.294338, 34.973484, 37.373257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579117, 35.128326, 37.607616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701567, -0.428424, -0.569436,
		0.030579, 0.816455, -0.576598,
		0.711947, 0.387110, 0.585899,
		25.792702, 35.244461, 37.783386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771629, 35.303101, 36.957634>,  <25.294338, 34.973484, 37.373257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771629, 35.303101, 36.957634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973337, 35.189240, 37.283745>,  <26.094362, 35.120922, 37.479412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973337, 35.189240, 37.283745>,  <25.771629, 35.303101, 36.957634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973337, 35.189240, 37.283745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817506, -0.146791, -0.556899,
		0.278201, 0.947324, 0.158686,
		0.504270, -0.284657, 0.815280,
		26.124619, 35.103844, 37.528328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395252, 35.636951, 36.882915>,  <25.771629, 35.303101, 36.957634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395252, 35.636951, 36.882915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444813, 35.325058, 37.128407>,  <26.474548, 35.137920, 37.275700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444813, 35.325058, 37.128407>,  <26.395252, 35.636951, 36.882915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444813, 35.325058, 37.128407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893908, -0.180801, -0.410171,
		0.430787, 0.599438, 0.674609,
		0.123902, -0.779734, 0.613728,
		26.481983, 35.091137, 37.312527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065037, 35.692833, 37.246174>,  <26.395252, 35.636951, 36.882915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065037, 35.692833, 37.246174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984697, 35.303089, 37.286743>,  <26.936493, 35.069244, 37.311085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984697, 35.303089, 37.286743>,  <27.065037, 35.692833, 37.246174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984697, 35.303089, 37.286743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930364, -0.222142, -0.291678,
		0.306729, 0.035775, 0.951124,
		-0.200850, -0.974358, 0.101421,
		26.924442, 35.010780, 37.317169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708811, 35.453655, 37.453602>,  <27.065037, 35.692833, 37.246174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708811, 35.453655, 37.453602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511835, 35.150753, 37.281986>,  <27.393650, 34.969013, 37.179016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511835, 35.150753, 37.281986>,  <27.708811, 35.453655, 37.453602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511835, 35.150753, 37.281986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856228, -0.333076, -0.394884,
		0.156125, -0.561810, 0.812400,
		-0.492441, -0.757252, -0.429036,
		27.364103, 34.923576, 37.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118208, 34.871544, 37.465916>,  <27.708811, 35.453655, 37.453602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118208, 34.871544, 37.465916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871202, 34.853111, 37.151833>,  <27.723000, 34.842052, 36.963383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871202, 34.853111, 37.151833>,  <28.118208, 34.871544, 37.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871202, 34.853111, 37.151833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775152, -0.205067, -0.597567,
		-0.133484, -0.977663, 0.162351,
		-0.617512, -0.046081, -0.785211,
		27.685949, 34.839287, 36.916267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216957, 34.167164, 37.177181>,  <28.118208, 34.871544, 37.465916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216957, 34.167164, 37.177181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120480, 34.456821, 36.918739>,  <28.062593, 34.630615, 36.763676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120480, 34.456821, 36.918739>,  <28.216957, 34.167164, 37.177181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120480, 34.456821, 36.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714360, -0.318165, -0.623266,
		-0.656899, -0.611877, -0.440558,
		-0.241192, 0.724139, -0.646103,
		28.048122, 34.674065, 36.724907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138649, 33.769772, 36.643467>,  <28.216957, 34.167164, 37.177181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138649, 33.769772, 36.643467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240438, 34.144569, 36.547733>,  <28.301512, 34.369450, 36.490295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240438, 34.144569, 36.547733>,  <28.138649, 33.769772, 36.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240438, 34.144569, 36.547733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639157, -0.348677, -0.685495,
		-0.725755, 0.021472, -0.687618,
		0.254475, 0.936997, -0.239330,
		28.316780, 34.425667, 36.475933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090750, 33.968777, 35.895477>,  <28.138649, 33.769772, 36.643467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090750, 33.968777, 35.895477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381723, 34.204311, 36.036396>,  <28.556307, 34.345631, 36.120949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381723, 34.204311, 36.036396>,  <28.090750, 33.968777, 35.895477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381723, 34.204311, 36.036396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627246, -0.362451, -0.689342,
		-0.278215, 0.722430, -0.633002,
		0.727433, 0.588833, 0.352301,
		28.599953, 34.380962, 36.142086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296368, 34.437401, 35.413193>,  <28.090750, 33.968777, 35.895477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296368, 34.437401, 35.413193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614519, 34.388241, 35.650600>,  <28.805410, 34.358746, 35.793045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614519, 34.388241, 35.650600>,  <28.296368, 34.437401, 35.413193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614519, 34.388241, 35.650600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545265, -0.282543, -0.789212,
		0.264690, 0.951349, -0.157715,
		0.795377, -0.122900, 0.593524,
		28.853132, 34.351372, 35.828659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884743, 34.699757, 35.139866>,  <28.296368, 34.437401, 35.413193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884743, 34.699757, 35.139866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050060, 34.428101, 35.382504>,  <29.149252, 34.265106, 35.528084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050060, 34.428101, 35.382504>,  <28.884743, 34.699757, 35.139866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050060, 34.428101, 35.382504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527986, -0.364010, -0.767286,
		0.741902, 0.637387, 0.208134,
		0.413295, -0.679142, 0.606591,
		29.174049, 34.224358, 35.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523264, 34.678253, 35.112663>,  <28.884743, 34.699757, 35.139866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523264, 34.678253, 35.112663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503428, 34.304760, 35.254471>,  <29.491526, 34.080666, 35.339558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503428, 34.304760, 35.254471>,  <29.523264, 34.678253, 35.112663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503428, 34.304760, 35.254471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487664, -0.332407, -0.807272,
		0.871622, 0.132857, 0.471831,
		-0.049589, -0.933731, 0.354523,
		29.488550, 34.024639, 35.360828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193287, 34.528404, 35.075809>,  <29.523264, 34.678253, 35.112663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193287, 34.528404, 35.075809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965794, 34.200871, 35.044704>,  <29.829298, 34.004349, 35.026043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965794, 34.200871, 35.044704>,  <30.193287, 34.528404, 35.075809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965794, 34.200871, 35.044704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591473, -0.341446, -0.730462,
		0.571579, -0.461430, 0.678512,
		-0.568733, -0.818839, -0.077760,
		29.795174, 33.955219, 35.021378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539717, 33.819382, 35.100006>,  <30.193287, 34.528404, 35.075809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539717, 33.819382, 35.100006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215048, 33.902840, 34.881775>,  <30.020247, 33.952915, 34.750835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215048, 33.902840, 34.881775>,  <30.539717, 33.819382, 35.100006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215048, 33.902840, 34.881775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508667, -0.206669, -0.835790,
		-0.287138, -0.955905, 0.061615,
		-0.811671, 0.208646, -0.545581,
		29.971546, 33.965431, 34.718102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255611, 33.371536, 35.132641>,  <30.539717, 33.819382, 35.100006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255611, 33.371536, 35.132641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557154, 33.424210, 35.390125>,  <31.738079, 33.455814, 35.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557154, 33.424210, 35.390125>,  <31.255611, 33.371536, 35.132641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557154, 33.424210, 35.390125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547158, 0.416571, -0.726007,
		-0.363753, 0.899515, 0.241983,
		0.753858, 0.131684, 0.643707,
		31.783312, 33.463715, 35.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209455, 33.127640, 34.381039>,  <31.255611, 33.371536, 35.132641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209455, 33.127640, 34.381039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833494, 33.009800, 34.450073>,  <30.607918, 32.939095, 34.491493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833494, 33.009800, 34.450073>,  <31.209455, 33.127640, 34.381039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833494, 33.009800, 34.450073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170421, 0.842801, 0.510533,
		-0.295863, 0.450440, -0.842359,
		-0.939905, -0.294604, 0.172589,
		30.551523, 32.921417, 34.501850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642366, 33.550133, 34.088997>,  <31.209455, 33.127640, 34.381039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642366, 33.550133, 34.088997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519402, 33.378407, 34.428688>,  <30.445623, 33.275372, 34.632504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519402, 33.378407, 34.428688>,  <30.642366, 33.550133, 34.088997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519402, 33.378407, 34.428688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192795, 0.902034, 0.386218,
		-0.931842, -0.045000, -0.360064,
		-0.307411, -0.429313, 0.849229,
		30.427179, 33.249611, 34.683456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382664, 33.982109, 34.194595>,  <30.642366, 33.550133, 34.088997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382664, 33.982109, 34.194595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635092, 33.725719, 34.019825>,  <31.786549, 33.571884, 33.914963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635092, 33.725719, 34.019825>,  <31.382664, 33.982109, 34.194595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635092, 33.725719, 34.019825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250080, 0.701279, -0.667583,
		0.734311, 0.312024, 0.602850,
		0.631068, -0.640975, -0.436926,
		31.824411, 33.533428, 33.888748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111679, 34.205299, 34.128212>,  <31.382664, 33.982109, 34.194595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111679, 34.205299, 34.128212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040001, 33.964741, 33.816772>,  <31.996996, 33.820408, 33.629910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040001, 33.964741, 33.816772>,  <32.111679, 34.205299, 34.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040001, 33.964741, 33.816772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437555, 0.660111, -0.610572,
		0.881156, -0.450089, 0.144857,
		-0.179191, -0.601393, -0.778600,
		31.986244, 33.784325, 33.583191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687069, 34.163822, 33.649189>,  <32.111679, 34.205299, 34.128212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687069, 34.163822, 33.649189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346096, 34.093002, 33.452408>,  <32.141514, 34.050510, 33.334339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346096, 34.093002, 33.452408>,  <32.687069, 34.163822, 33.649189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346096, 34.093002, 33.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265339, 0.664252, -0.698831,
		0.450506, -0.726239, -0.519251,
		-0.852431, -0.177050, -0.491949,
		32.090366, 34.039886, 33.304825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882725, 34.249798, 33.021229>,  <32.687069, 34.163822, 33.649189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882725, 34.249798, 33.021229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483803, 34.278324, 33.028217>,  <32.244450, 34.295441, 33.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483803, 34.278324, 33.028217>,  <32.882725, 34.249798, 33.021229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483803, 34.278324, 33.028217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029696, 0.609381, -0.792321,
		-0.067146, -0.789664, -0.609854,
		-0.997301, 0.071312, 0.017468,
		32.184612, 34.299717, 33.033459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644836, 34.510204, 32.378010>,  <32.882725, 34.249798, 33.021229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644836, 34.510204, 32.378010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317093, 34.584465, 32.594967>,  <32.120449, 34.629021, 32.725143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317093, 34.584465, 32.594967>,  <32.644836, 34.510204, 32.378010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317093, 34.584465, 32.594967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311499, 0.650093, -0.693071,
		-0.481276, -0.736827, -0.474826,
		-0.819354, 0.185651, 0.542395,
		32.071285, 34.640160, 32.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023052, 34.297951, 32.058544>,  <32.644836, 34.510204, 32.378010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023052, 34.297951, 32.058544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982082, 34.612431, 32.302315>,  <31.957499, 34.801117, 32.448578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982082, 34.612431, 32.302315>,  <32.023052, 34.297951, 32.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982082, 34.612431, 32.302315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521511, 0.479264, -0.705927,
		-0.847074, -0.390132, 0.360919,
		-0.102429, 0.786195, 0.609430,
		31.951353, 34.848289, 32.485146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366732, 34.331440, 32.323872>,  <32.023052, 34.297951, 32.058544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366732, 34.331440, 32.323872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532482, 34.693356, 32.284580>,  <31.631933, 34.910503, 32.261005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532482, 34.693356, 32.284580>,  <31.366732, 34.331440, 32.323872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532482, 34.693356, 32.284580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752890, 0.280153, -0.595543,
		-0.511320, 0.320736, 0.797295,
		0.414377, 0.904789, -0.098231,
		31.656796, 34.964790, 32.255112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862700, 34.801662, 32.168205>,  <31.366732, 34.331440, 32.323872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862700, 34.801662, 32.168205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166088, 35.033058, 32.048157>,  <31.348122, 35.171894, 31.976128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166088, 35.033058, 32.048157>,  <30.862700, 34.801662, 32.168205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166088, 35.033058, 32.048157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538453, 0.296832, -0.788644,
		-0.367134, 0.759766, 0.536626,
		0.758473, 0.578486, -0.300122,
		31.393629, 35.206604, 31.958120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486038, 35.342064, 31.859175>,  <30.862700, 34.801662, 32.168205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486038, 35.342064, 31.859175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860546, 35.349129, 31.718838>,  <31.085251, 35.353367, 31.634636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860546, 35.349129, 31.718838>,  <30.486038, 35.342064, 31.859175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860546, 35.349129, 31.718838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348006, 0.182819, -0.919494,
		0.047899, 0.982988, 0.177315,
		0.936268, 0.017664, -0.350843,
		31.141426, 35.354427, 31.613585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445536, 35.936512, 31.468653>,  <30.486038, 35.342064, 31.859175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445536, 35.936512, 31.468653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775339, 35.763725, 31.322449>,  <30.973221, 35.660053, 31.234726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775339, 35.763725, 31.322449>,  <30.445536, 35.936512, 31.468653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775339, 35.763725, 31.322449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261402, 0.282122, -0.923080,
		0.501854, 0.856630, 0.119696,
		0.824507, -0.431962, -0.365509,
		31.022692, 35.634136, 31.212795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764574, 36.343716, 30.922434>,  <30.445536, 35.936512, 31.468653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764574, 36.343716, 30.922434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917137, 35.986320, 30.827593>,  <31.008675, 35.771885, 30.770689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917137, 35.986320, 30.827593>,  <30.764574, 36.343716, 30.922434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917137, 35.986320, 30.827593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096176, 0.216745, -0.971479,
		0.919391, 0.393331, -0.003264,
		0.381406, -0.893483, -0.237102,
		31.031559, 35.718277, 30.756462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286652, 36.457802, 30.440220>,  <30.764574, 36.343716, 30.922434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286652, 36.457802, 30.440220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180225, 36.075809, 30.387726>,  <31.116369, 35.846615, 30.356230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180225, 36.075809, 30.387726>,  <31.286652, 36.457802, 30.440220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180225, 36.075809, 30.387726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123218, 0.168718, -0.977932,
		0.956047, -0.244023, -0.162561,
		-0.266065, -0.954980, -0.131235,
		31.100407, 35.789314, 30.348356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847574, 36.133305, 29.909266>,  <31.286652, 36.457802, 30.440220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847574, 36.133305, 29.909266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530874, 35.889091, 29.901411>,  <31.340855, 35.742565, 29.896698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530874, 35.889091, 29.901411>,  <31.847574, 36.133305, 29.909266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530874, 35.889091, 29.901411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052493, -0.035979, -0.997973,
		0.608587, -0.791175, 0.060535,
		-0.791749, -0.610531, -0.019635,
		31.293350, 35.705933, 29.895521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005295, 35.608185, 29.497225>,  <31.847574, 36.133305, 29.909266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005295, 35.608185, 29.497225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606457, 35.577869, 29.494087>,  <31.367155, 35.559681, 29.492205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606457, 35.577869, 29.494087>,  <32.005295, 35.608185, 29.497225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606457, 35.577869, 29.494087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000943, 0.090690, -0.995879,
		0.076174, -0.992992, -0.090355,
		-0.997094, -0.075775, -0.007844,
		31.307329, 35.555134, 29.491734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811089, 35.062401, 28.976130>,  <32.005295, 35.608185, 29.497225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811089, 35.062401, 28.976130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461044, 35.244076, 29.042936>,  <31.251019, 35.353081, 29.083021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461044, 35.244076, 29.042936>,  <31.811089, 35.062401, 28.976130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461044, 35.244076, 29.042936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200056, -0.025287, -0.979458,
		-0.440636, -0.890546, 0.112992,
		-0.875110, 0.454189, 0.167017,
		31.198511, 35.380333, 29.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266628, 34.705383, 28.521717>,  <31.811089, 35.062401, 28.976130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266628, 34.705383, 28.521717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075665, 35.044373, 28.614552>,  <30.961086, 35.247768, 28.670252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075665, 35.044373, 28.614552>,  <31.266628, 34.705383, 28.521717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075665, 35.044373, 28.614552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172565, 0.168557, -0.970469,
		-0.861570, -0.503359, 0.065775,
		-0.477407, 0.847478, 0.232086,
		30.932442, 35.298615, 28.684177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535814, 34.678490, 28.123732>,  <31.266628, 34.705383, 28.521717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535814, 34.678490, 28.123732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644859, 35.057289, 28.191704>,  <30.710287, 35.284569, 28.232487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644859, 35.057289, 28.191704>,  <30.535814, 34.678490, 28.123732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644859, 35.057289, 28.191704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184923, 0.224901, -0.956673,
		-0.944185, 0.229379, 0.236433,
		0.272615, 0.946998, 0.169931,
		30.726645, 35.341389, 28.242683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083958, 35.055386, 27.635038>,  <30.535814, 34.678490, 28.123732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083958, 35.055386, 27.635038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347792, 35.320000, 27.777767>,  <30.506092, 35.478767, 27.863405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347792, 35.320000, 27.777767>,  <30.083958, 35.055386, 27.635038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347792, 35.320000, 27.777767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019579, 0.459452, -0.887987,
		-0.751374, 0.592690, 0.290096,
		0.659586, 0.661531, 0.356824,
		30.545668, 35.518459, 27.884815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691601, 35.814701, 27.677706>,  <30.083958, 35.055386, 27.635038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691601, 35.814701, 27.677706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089361, 35.845810, 27.649090>,  <30.328018, 35.864475, 27.631920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089361, 35.845810, 27.649090>,  <29.691601, 35.814701, 27.677706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089361, 35.845810, 27.649090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105649, 0.719273, -0.686648,
		-0.001943, 0.690362, 0.723462,
		0.994402, 0.077768, -0.071538,
		30.387682, 35.869141, 27.627628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047138, 36.528271, 27.894949>,  <29.691601, 35.814701, 27.677706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047138, 36.528271, 27.894949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271078, 36.387505, 27.594889>,  <30.405441, 36.303047, 27.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271078, 36.387505, 27.594889>,  <30.047138, 36.528271, 27.894949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271078, 36.387505, 27.594889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036270, 0.914871, -0.402115,
		0.827800, 0.197916, 0.524954,
		0.559850, -0.351911, -0.750151,
		30.439034, 36.281933, 27.369843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266943, 37.151764, 27.588531>,  <30.047138, 36.528271, 27.894949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266943, 37.151764, 27.588531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438492, 36.876148, 27.354849>,  <30.541422, 36.710777, 27.214640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438492, 36.876148, 27.354849>,  <30.266943, 37.151764, 27.588531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438492, 36.876148, 27.354849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405852, 0.724724, -0.556831,
		0.807064, 0.001708, 0.590461,
		0.428872, -0.689038, -0.584205,
		30.567154, 36.669437, 27.179586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068838, 37.309566, 27.513266>,  <30.266943, 37.151764, 27.588531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068838, 37.309566, 27.513266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922016, 37.096256, 27.208403>,  <30.833923, 36.968269, 27.025484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922016, 37.096256, 27.208403>,  <31.068838, 37.309566, 27.513266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922016, 37.096256, 27.208403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418108, 0.637332, -0.647297,
		0.830937, -0.556258, -0.010968,
		-0.367054, -0.533277, -0.762159,
		30.811899, 36.936272, 26.979755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394487, 37.626816, 26.961868>,  <31.068838, 37.309566, 27.513266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394487, 37.626816, 26.961868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127243, 37.401840, 26.767017>,  <30.966896, 37.266857, 26.650106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127243, 37.401840, 26.767017>,  <31.394487, 37.626816, 26.961868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127243, 37.401840, 26.767017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037992, 0.628047, -0.777248,
		0.743092, -0.537794, -0.398236,
		-0.668110, -0.562437, -0.487128,
		30.926809, 37.233109, 26.620878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738321, 37.516048, 26.312590>,  <31.394487, 37.626816, 26.961868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738321, 37.516048, 26.312590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343834, 37.472424, 26.262817>,  <31.107141, 37.446251, 26.232954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343834, 37.472424, 26.262817>,  <31.738321, 37.516048, 26.312590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343834, 37.472424, 26.262817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041672, 0.564070, -0.824675,
		0.160125, -0.818494, -0.551750,
		-0.986216, -0.109058, -0.124430,
		31.047970, 37.439705, 26.225489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670616, 37.465958, 25.597252>,  <31.738321, 37.516048, 26.312590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670616, 37.465958, 25.597252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314346, 37.576595, 25.741583>,  <31.100584, 37.642979, 25.828182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314346, 37.576595, 25.741583>,  <31.670616, 37.465958, 25.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314346, 37.576595, 25.741583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150585, 0.569383, -0.808163,
		-0.428980, -0.774145, -0.465485,
		-0.890674, 0.276590, 0.360829,
		31.047144, 37.659573, 25.849831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170706, 37.533043, 25.041553>,  <31.670616, 37.465958, 25.597252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170706, 37.533043, 25.041553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960482, 37.738487, 25.312845>,  <30.834347, 37.861755, 25.475620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960482, 37.738487, 25.312845>,  <31.170706, 37.533043, 25.041553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960482, 37.738487, 25.312845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351323, 0.595032, -0.722848,
		-0.774829, -0.618176, -0.132280,
		-0.525558, 0.513610, 0.678228,
		30.802814, 37.892570, 25.516314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550833, 37.672066, 24.676445>,  <31.170706, 37.533043, 25.041553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550833, 37.672066, 24.676445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579582, 37.955029, 24.957701>,  <30.596832, 38.124805, 25.126453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579582, 37.955029, 24.957701>,  <30.550833, 37.672066, 24.676445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579582, 37.955029, 24.957701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309580, 0.685967, -0.658490,
		-0.948153, -0.170350, 0.268303,
		0.071873, 0.707411, 0.703139,
		30.601145, 38.167252, 25.168642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892574, 38.022663, 24.691288>,  <30.550833, 37.672066, 24.676445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892574, 38.022663, 24.691288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136406, 38.276474, 24.881357>,  <30.282705, 38.428761, 24.995399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136406, 38.276474, 24.881357>,  <29.892574, 38.022663, 24.691288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136406, 38.276474, 24.881357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172120, 0.691060, -0.702005,
		-0.773815, 0.346140, 0.530469,
		0.609578, 0.634526, 0.475175,
		30.319279, 38.466831, 25.023911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483030, 38.641514, 24.683805>,  <29.892574, 38.022663, 24.691288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483030, 38.641514, 24.683805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852554, 38.780586, 24.747921>,  <30.074268, 38.864029, 24.786390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852554, 38.780586, 24.747921>,  <29.483030, 38.641514, 24.683805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852554, 38.780586, 24.747921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235546, 0.846209, -0.477962,
		-0.301818, 0.403790, 0.863631,
		0.923809, 0.347682, 0.160291,
		30.129698, 38.884892, 24.796009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429567, 39.385742, 24.541142>,  <29.483030, 38.641514, 24.683805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429567, 39.385742, 24.541142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827686, 39.347225, 24.536940>,  <30.066557, 39.324116, 24.534418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827686, 39.347225, 24.536940>,  <29.429567, 39.385742, 24.541142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827686, 39.347225, 24.536940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068261, 0.774167, -0.629290,
		0.068730, 0.625614, 0.777099,
		0.995297, -0.096297, -0.010504,
		30.126276, 39.318336, 24.533789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690477, 39.962158, 24.742140>,  <29.429567, 39.385742, 24.541142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690477, 39.962158, 24.742140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996712, 39.806072, 24.537546>,  <30.180452, 39.712421, 24.414791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996712, 39.806072, 24.537546>,  <29.690477, 39.962158, 24.742140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996712, 39.806072, 24.537546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026533, 0.775219, -0.631135,
		0.642789, 0.496758, 0.583142,
		0.765584, -0.390214, -0.511483,
		30.226387, 39.689007, 24.384102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205832, 40.496449, 24.789883>,  <29.690477, 39.962158, 24.742140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205832, 40.496449, 24.789883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251326, 40.246742, 24.480726>,  <30.278622, 40.096920, 24.295233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251326, 40.246742, 24.480726>,  <30.205832, 40.496449, 24.789883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251326, 40.246742, 24.480726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051327, 0.773206, -0.632074,
		0.992184, 0.111561, 0.055901,
		0.113738, -0.624265, -0.772889,
		30.285446, 40.059464, 24.248859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651527, 40.859596, 24.291113>,  <30.205832, 40.496449, 24.789883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651527, 40.859596, 24.291113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460882, 40.576214, 24.082912>,  <30.346495, 40.406185, 23.957993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460882, 40.576214, 24.082912>,  <30.651527, 40.859596, 24.291113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460882, 40.576214, 24.082912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063907, 0.618433, -0.783234,
		0.876786, -0.340037, -0.340030,
		-0.476615, -0.708459, -0.520503,
		30.317898, 40.363674, 23.926762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931139, 40.838150, 23.599833>,  <30.651527, 40.859596, 24.291113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931139, 40.838150, 23.599833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562082, 40.685539, 23.577311>,  <30.340649, 40.593971, 23.563797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562082, 40.685539, 23.577311>,  <30.931139, 40.838150, 23.599833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562082, 40.685539, 23.577311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226073, 0.653334, -0.722527,
		0.312450, -0.653904, -0.689046,
		-0.922641, -0.381528, -0.056304,
		30.285290, 40.571079, 23.560419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766302, 40.730373, 22.828720>,  <30.931139, 40.838150, 23.599833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766302, 40.730373, 22.828720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404095, 40.717403, 22.997946>,  <30.186769, 40.709621, 23.099482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404095, 40.717403, 22.997946>,  <30.766302, 40.730373, 22.828720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404095, 40.717403, 22.997946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372171, 0.539555, -0.755228,
		-0.203777, -0.841326, -0.500645,
		-0.905518, -0.032428, 0.423066,
		30.132439, 40.707676, 23.124866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301750, 40.645332, 22.272718>,  <30.766302, 40.730373, 22.828720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301750, 40.645332, 22.272718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048777, 40.759010, 22.560957>,  <29.896992, 40.827217, 22.733900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048777, 40.759010, 22.560957>,  <30.301750, 40.645332, 22.272718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048777, 40.759010, 22.560957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362163, 0.713845, -0.599386,
		-0.684737, -0.640046, -0.348535,
		-0.632434, 0.284195, 0.720597,
		29.859047, 40.844269, 22.777136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656101, 40.656155, 21.953457>,  <30.301750, 40.645332, 22.272718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656101, 40.656155, 21.953457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643057, 40.911007, 22.261482>,  <29.635229, 41.063919, 22.446299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643057, 40.911007, 22.261482>,  <29.656101, 40.656155, 21.953457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643057, 40.911007, 22.261482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346482, 0.715489, -0.606651,
		-0.937489, -0.286598, 0.197420,
		-0.032613, 0.637132, 0.770065,
		29.633272, 41.102146, 22.492502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204212, 41.087696, 21.700708>,  <29.656101, 40.656155, 21.953457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204212, 41.087696, 21.700708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348288, 41.290478, 22.013954>,  <29.434732, 41.412148, 22.201902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348288, 41.290478, 22.013954>,  <29.204212, 41.087696, 21.700708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348288, 41.290478, 22.013954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263510, 0.860561, -0.435886,
		-0.894890, -0.049358, 0.443549,
		0.360187, 0.506950, 0.783114,
		29.456343, 41.442562, 22.248888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647539, 41.470638, 21.944565>,  <29.204212, 41.087696, 21.700708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647539, 41.470638, 21.944565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008762, 41.623592, 22.022816>,  <29.225496, 41.715363, 22.069767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008762, 41.623592, 22.022816>,  <28.647539, 41.470638, 21.944565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008762, 41.623592, 22.022816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241633, 0.828826, -0.504639,
		-0.355107, 0.408448, 0.840874,
		0.903058, 0.382383, 0.195627,
		29.279680, 41.738308, 22.081505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523148, 42.049213, 21.727554>,  <28.647539, 41.470638, 21.944565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523148, 42.049213, 21.727554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913563, 42.083763, 21.807447>,  <29.147812, 42.104492, 21.855383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913563, 42.083763, 21.807447>,  <28.523148, 42.049213, 21.727554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913563, 42.083763, 21.807447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012557, 0.893976, -0.447939,
		-0.217246, 0.439713, 0.871468,
		0.976036, 0.086370, 0.199734,
		29.206373, 42.109673, 21.867367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620565, 42.723995, 21.895370>,  <28.523148, 42.049213, 21.727554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620565, 42.723995, 21.895370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984695, 42.608715, 21.776543>,  <29.203173, 42.539547, 21.705246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984695, 42.608715, 21.776543>,  <28.620565, 42.723995, 21.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984695, 42.608715, 21.776543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125201, 0.875858, -0.466045,
		0.394503, 0.387059, 0.833398,
		0.910325, -0.288199, -0.297068,
		29.257793, 42.522255, 21.687422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082567, 43.163395, 22.143000>,  <28.620565, 42.723995, 21.895370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082567, 43.163395, 22.143000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305975, 43.017750, 21.844877>,  <29.440020, 42.930363, 21.666004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305975, 43.017750, 21.844877>,  <29.082567, 43.163395, 22.143000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305975, 43.017750, 21.844877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183674, 0.930491, -0.316938,
		0.808899, 0.040124, 0.586576,
		0.558521, -0.364110, -0.745304,
		29.473532, 42.908516, 21.621286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815521, 43.335308, 22.106236>,  <29.082567, 43.163395, 22.143000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815521, 43.335308, 22.106236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721588, 43.258423, 21.725098>,  <29.665228, 43.212292, 21.496416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.721588, 43.258423, 21.725098>,  <29.815521, 43.335308, 22.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721588, 43.258423, 21.725098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515524, 0.806409, -0.289724,
		0.824069, -0.559250, -0.090279,
		-0.234830, -0.192212, -0.952843,
		29.651138, 43.200760, 21.439245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165586, 43.835030, 21.712225>,  <29.815521, 43.335308, 22.106236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165586, 43.835030, 21.712225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955387, 43.689701, 21.404499>,  <29.829268, 43.602505, 21.219864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955387, 43.689701, 21.404499>,  <30.165586, 43.835030, 21.712225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955387, 43.689701, 21.404499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059582, 0.886296, -0.459270,
		0.848705, -0.287183, -0.444100,
		-0.525499, -0.363324, -0.769315,
		29.797737, 43.580704, 21.173704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464058, 44.096600, 20.981997>,  <30.165586, 43.835030, 21.712225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464058, 44.096600, 20.981997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093174, 43.973228, 20.896997>,  <29.870644, 43.899204, 20.845999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093174, 43.973228, 20.896997>,  <30.464058, 44.096600, 20.981997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093174, 43.973228, 20.896997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218203, 0.905947, -0.362831,
		0.304418, -0.290053, -0.907303,
		-0.927209, -0.308429, -0.212496,
		29.815012, 43.880699, 20.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390417, 44.325508, 20.273628>,  <30.464058, 44.096600, 20.981997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390417, 44.325508, 20.273628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015100, 44.273220, 20.401705>,  <29.789911, 44.241848, 20.478550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015100, 44.273220, 20.401705>,  <30.390417, 44.325508, 20.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015100, 44.273220, 20.401705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282327, 0.824234, -0.490846,
		-0.199750, -0.550955, -0.810277,
		-0.938292, -0.130717, 0.320190,
		29.733612, 44.234005, 20.497763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998896, 44.228310, 19.707390>,  <30.390417, 44.325508, 20.273628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998896, 44.228310, 19.707390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758024, 44.339111, 20.006897>,  <29.613501, 44.405590, 20.186602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758024, 44.339111, 20.006897>,  <29.998896, 44.228310, 19.707390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758024, 44.339111, 20.006897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382810, 0.722850, -0.575278,
		-0.700599, -0.633055, -0.329246,
		-0.602178, 0.277000, 0.748768,
		29.577372, 44.422211, 20.231527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372339, 44.291763, 19.422371>,  <29.998896, 44.228310, 19.707390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372339, 44.291763, 19.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342098, 44.520226, 19.749313>,  <29.323954, 44.657303, 19.945478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342098, 44.520226, 19.749313>,  <29.372339, 44.291763, 19.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342098, 44.520226, 19.749313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238143, 0.785638, -0.571018,
		-0.968283, -0.237816, 0.076621,
		-0.075601, 0.571154, 0.817354,
		29.319418, 44.691570, 19.994520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777916, 44.708847, 19.288857>,  <29.372339, 44.291763, 19.422371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777916, 44.708847, 19.288857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968899, 44.901810, 19.582609>,  <29.083488, 45.017590, 19.758862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968899, 44.901810, 19.582609>,  <28.777916, 44.708847, 19.288857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968899, 44.901810, 19.582609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173525, 0.871109, -0.459410,
		-0.861351, 0.091914, 0.499626,
		0.477455, 0.482411, 0.734382,
		29.112135, 45.046532, 19.802923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329113, 45.249550, 19.539259>,  <28.777916, 44.708847, 19.288857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329113, 45.249550, 19.539259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689266, 45.368519, 19.666288>,  <28.905357, 45.439899, 19.742506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689266, 45.368519, 19.666288>,  <28.329113, 45.249550, 19.539259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689266, 45.368519, 19.666288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193851, 0.927658, -0.319175,
		-0.389529, 0.225817, 0.892902,
		0.900382, 0.297418, 0.317575,
		28.959381, 45.457745, 19.761560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259102, 45.778614, 20.114073>,  <28.329113, 45.249550, 19.539259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259102, 45.778614, 20.114073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584812, 45.822037, 19.885977>,  <28.780237, 45.848091, 19.749119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584812, 45.822037, 19.885977>,  <28.259102, 45.778614, 20.114073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584812, 45.822037, 19.885977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158574, 0.986591, -0.038625,
		0.558400, 0.121876, 0.820570,
		0.814275, 0.108553, -0.570239,
		28.829094, 45.854603, 19.714905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599459, 46.281269, 20.438868>,  <28.259102, 45.778614, 20.114073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599459, 46.281269, 20.438868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752619, 46.274078, 20.069422>,  <28.844515, 46.269764, 19.847754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752619, 46.274078, 20.069422>,  <28.599459, 46.281269, 20.438868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752619, 46.274078, 20.069422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005074, 0.999836, -0.017359,
		0.923777, 0.001960, 0.382926,
		0.382898, -0.017979, -0.923616,
		28.867489, 46.268684, 19.792337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034777, 46.032070, 20.932531>,  <28.599459, 46.281269, 20.438868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034777, 46.032070, 20.932531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134224, 45.698826, 21.130159>,  <28.193893, 45.498878, 21.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134224, 45.698826, 21.130159>,  <28.034777, 46.032070, 20.932531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134224, 45.698826, 21.130159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967022, -0.184375, 0.175712,
		-0.055294, -0.521464, -0.851480,
		0.248619, -0.833116, 0.494072,
		28.208809, 45.448891, 21.278381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121141, 46.919632, 21.073414>,  <28.034777, 46.032070, 20.932531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121141, 46.919632, 21.073414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117783, 47.317745, 21.034742>,  <28.115767, 47.556614, 21.011539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117783, 47.317745, 21.034742>,  <28.121141, 46.919632, 21.073414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117783, 47.317745, 21.034742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731882, 0.071998, 0.677617,
		0.681379, -0.065068, -0.729032,
		-0.008398, 0.995280, -0.096680,
		28.115263, 47.616329, 21.005737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757214, 47.065399, 20.855001>,  <28.121141, 46.919632, 21.073414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757214, 47.065399, 20.855001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595625, 47.386330, 21.030766>,  <28.498671, 47.578888, 21.136225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595625, 47.386330, 21.030766>,  <28.757214, 47.065399, 20.855001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595625, 47.386330, 21.030766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744378, 0.009119, 0.667697,
		0.531702, 0.596819, -0.600916,
		-0.403974, 0.802324, 0.439411,
		28.474432, 47.627026, 21.162588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256392, 47.618443, 21.039522>,  <28.757214, 47.065399, 20.855001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256392, 47.618443, 21.039522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970835, 47.660992, 21.316374>,  <28.799501, 47.686520, 21.482485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970835, 47.660992, 21.316374>,  <29.256392, 47.618443, 21.039522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970835, 47.660992, 21.316374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699869, 0.075526, 0.710267,
		0.023276, 0.991454, -0.128362,
		-0.713892, 0.106369, 0.692130,
		28.756668, 47.692902, 21.524014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274553, 48.229618, 21.548113>,  <29.256392, 47.618443, 21.039522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274553, 48.229618, 21.548113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118101, 47.877705, 21.656187>,  <29.024229, 47.666557, 21.721031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118101, 47.877705, 21.656187>,  <29.274553, 48.229618, 21.548113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118101, 47.877705, 21.656187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800169, -0.180038, 0.572116,
		-0.454694, 0.439965, 0.774393,
		-0.391131, -0.879782, 0.270185,
		29.000761, 47.613770, 21.737242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459568, 48.057835, 22.209148>,  <29.274553, 48.229618, 21.548113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459568, 48.057835, 22.209148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335617, 47.697395, 22.087824>,  <29.261248, 47.481133, 22.015028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335617, 47.697395, 22.087824>,  <29.459568, 48.057835, 22.209148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335617, 47.697395, 22.087824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732512, -0.429643, 0.528046,
		-0.606137, -0.058551, 0.793202,
		-0.309876, -0.901098, -0.303313,
		29.242655, 47.427067, 21.996830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770123, 47.599960, 22.554760>,  <29.459568, 48.057835, 22.209148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770123, 47.599960, 22.554760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634916, 47.320473, 22.302557>,  <29.553793, 47.152782, 22.151236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634916, 47.320473, 22.302557>,  <29.770123, 47.599960, 22.554760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634916, 47.320473, 22.302557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574455, -0.683839, 0.449850,
		-0.745484, -0.210143, 0.632530,
		-0.338016, -0.698716, -0.630509,
		29.533512, 47.110859, 22.113405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372911, 46.977364, 22.926205>,  <29.770123, 47.599960, 22.554760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372911, 46.977364, 22.926205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530767, 46.840115, 22.585258>,  <29.625481, 46.757763, 22.380692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.530767, 46.840115, 22.585258>,  <29.372911, 46.977364, 22.926205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530767, 46.840115, 22.585258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304729, -0.826279, 0.473713,
		-0.866834, -0.446685, -0.221521,
		0.394638, -0.343126, -0.852365,
		29.649158, 46.737175, 22.329550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206211, 46.307476, 22.952969>,  <29.372911, 46.977364, 22.926205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206211, 46.307476, 22.952969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482672, 46.322849, 22.664293>,  <29.648548, 46.332073, 22.491089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482672, 46.322849, 22.664293>,  <29.206211, 46.307476, 22.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482672, 46.322849, 22.664293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446917, -0.807486, 0.385008,
		-0.567955, -0.588633, -0.575272,
		0.691153, 0.038431, -0.721686,
		29.690018, 46.334377, 22.447788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277193, 45.606293, 22.735668>,  <29.206211, 46.307476, 22.952969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277193, 45.606293, 22.735668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611477, 45.791901, 22.618177>,  <29.812046, 45.903267, 22.547684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611477, 45.791901, 22.618177>,  <29.277193, 45.606293, 22.735668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611477, 45.791901, 22.618177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529216, -0.823343, 0.205027,
		-0.146701, -0.326788, -0.933643,
		0.835708, 0.464021, -0.293727,
		29.862190, 45.931107, 22.530060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567112, 45.137573, 22.195501>,  <29.277193, 45.606293, 22.735668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567112, 45.137573, 22.195501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877577, 45.366364, 22.301641>,  <30.063856, 45.503639, 22.365326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877577, 45.366364, 22.301641>,  <29.567112, 45.137573, 22.195501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877577, 45.366364, 22.301641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551059, -0.819869, 0.155398,
		0.306437, 0.025609, -0.951547,
		0.776164, 0.571978, 0.265350,
		30.110426, 45.537956, 22.381247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184576, 44.924290, 21.817225>,  <29.567112, 45.137573, 22.195501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184576, 44.924290, 21.817225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317869, 45.121887, 22.138453>,  <30.397846, 45.240444, 22.331190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317869, 45.121887, 22.138453>,  <30.184576, 44.924290, 21.817225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317869, 45.121887, 22.138453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509711, -0.810946, 0.287334,
		0.793189, 0.313585, -0.522030,
		0.333235, 0.493994, 0.803072,
		30.417839, 45.270084, 22.379374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827562, 44.738708, 21.840353>,  <30.184576, 44.924290, 21.817225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827562, 44.738708, 21.840353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768087, 44.872673, 22.212530>,  <30.732403, 44.953053, 22.435837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768087, 44.872673, 22.212530>,  <30.827562, 44.738708, 21.840353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768087, 44.872673, 22.212530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623339, -0.698695, 0.351103,
		0.767685, 0.632186, -0.104878,
		-0.148685, 0.334911, 0.930445,
		30.723482, 44.973145, 22.491663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404222, 44.559700, 22.216490>,  <30.827562, 44.738708, 21.840353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404222, 44.559700, 22.216490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158943, 44.656258, 22.517345>,  <31.011776, 44.714191, 22.697859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158943, 44.656258, 22.517345>,  <31.404222, 44.559700, 22.216490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158943, 44.656258, 22.517345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327374, -0.788882, 0.520088,
		0.718897, 0.565148, 0.404715,
		-0.613199, 0.241397, 0.752140,
		30.974983, 44.728676, 22.742987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832911, 44.565212, 22.816330>,  <31.404222, 44.559700, 22.216490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832911, 44.565212, 22.816330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458593, 44.525711, 22.951708>,  <31.234003, 44.502010, 23.032934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458593, 44.525711, 22.951708>,  <31.832911, 44.565212, 22.816330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458593, 44.525711, 22.951708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312965, -0.674661, 0.668495,
		0.162321, 0.731493, 0.662246,
		-0.935791, -0.098749, 0.338444,
		31.177856, 44.496086, 23.053242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878107, 44.592609, 23.494070>,  <31.832911, 44.565212, 22.816330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878107, 44.592609, 23.494070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532009, 44.396473, 23.452276>,  <31.324350, 44.278790, 23.427200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532009, 44.396473, 23.452276>,  <31.878107, 44.592609, 23.494070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532009, 44.396473, 23.452276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261369, -0.619016, 0.740611,
		-0.427832, 0.613500, 0.663761,
		-0.865243, -0.490344, -0.104485,
		31.272436, 44.249371, 23.420931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638580, 44.481064, 24.258848>,  <31.878107, 44.592609, 23.494070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638580, 44.481064, 24.258848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456179, 44.223930, 24.012655>,  <31.346737, 44.069649, 23.864939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456179, 44.223930, 24.012655>,  <31.638580, 44.481064, 24.258848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456179, 44.223930, 24.012655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140187, -0.734822, 0.663615,
		-0.878866, 0.216330, 0.425200,
		-0.456006, -0.642837, -0.615483,
		31.319376, 44.031078, 23.828011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167797, 44.143517, 24.641495>,  <31.638580, 44.481064, 24.258848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167797, 44.143517, 24.641495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197226, 43.885590, 24.337181>,  <31.214884, 43.730831, 24.154593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197226, 43.885590, 24.337181>,  <31.167797, 44.143517, 24.641495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197226, 43.885590, 24.337181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127954, -0.750443, 0.648431,
		-0.989048, -0.145052, 0.027296,
		0.073572, -0.644822, -0.760784,
		31.219297, 43.692142, 24.108946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757114, 43.621952, 24.759102>,  <31.167797, 44.143517, 24.641495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757114, 43.621952, 24.759102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013115, 43.457348, 24.499546>,  <31.166716, 43.358585, 24.343813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013115, 43.457348, 24.499546>,  <30.757114, 43.621952, 24.759102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013115, 43.457348, 24.499546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196747, -0.728576, 0.656101,
		-0.742757, -0.547573, -0.385326,
		0.640002, -0.411512, -0.648888,
		31.205114, 43.333893, 24.304880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540613, 42.981407, 24.675877>,  <30.757114, 43.621952, 24.759102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540613, 42.981407, 24.675877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918793, 42.945557, 24.550594>,  <31.145700, 42.924046, 24.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918793, 42.945557, 24.550594>,  <30.540613, 42.981407, 24.675877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918793, 42.945557, 24.550594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123127, -0.791790, 0.598254,
		-0.301611, -0.604181, -0.737561,
		0.945447, -0.089627, -0.313204,
		31.202427, 42.918667, 24.456633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696604, 42.328976, 24.490904>,  <30.540613, 42.981407, 24.675877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696604, 42.328976, 24.490904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079651, 42.429848, 24.546585>,  <31.309479, 42.490372, 24.579994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079651, 42.429848, 24.546585>,  <30.696604, 42.328976, 24.490904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079651, 42.429848, 24.546585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154749, -0.858004, 0.489777,
		0.242947, -0.447477, -0.860663,
		0.957616, 0.252177, 0.139203,
		31.366936, 42.505501, 24.588346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044657, 41.666077, 24.543962>,  <30.696604, 42.328976, 24.490904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044657, 41.666077, 24.543962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291861, 41.930515, 24.714146>,  <31.440182, 42.089180, 24.816256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291861, 41.930515, 24.714146>,  <31.044657, 41.666077, 24.543962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291861, 41.930515, 24.714146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250682, -0.678637, 0.690369,
		0.745135, -0.319998, -0.585128,
		0.618007, 0.661099, 0.425459,
		31.477262, 42.128845, 24.841784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535656, 41.281147, 24.837671>,  <31.044657, 41.666077, 24.543962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535656, 41.281147, 24.837671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611105, 41.638939, 24.999825>,  <31.656374, 41.853615, 25.097116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611105, 41.638939, 24.999825>,  <31.535656, 41.281147, 24.837671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611105, 41.638939, 24.999825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522192, -0.440950, 0.729986,
		0.831708, 0.073995, -0.550261,
		0.188622, 0.894476, 0.405381,
		31.667692, 41.907280, 25.121439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186718, 41.182461, 25.263737>,  <31.535656, 41.281147, 24.837671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186718, 41.182461, 25.263737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009842, 41.514038, 25.400745>,  <31.903715, 41.712986, 25.482950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009842, 41.514038, 25.400745>,  <32.186718, 41.182461, 25.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009842, 41.514038, 25.400745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318173, -0.212073, 0.924008,
		0.838589, 0.517571, -0.169970,
		-0.442194, 0.828942, 0.342519,
		31.877184, 41.762722, 25.503502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667618, 41.475250, 25.667372>,  <32.186718, 41.182461, 25.263737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667618, 41.475250, 25.667372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317448, 41.627163, 25.786972>,  <32.107346, 41.718311, 25.858732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317448, 41.627163, 25.786972>,  <32.667618, 41.475250, 25.667372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317448, 41.627163, 25.786972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187162, -0.303995, 0.934108,
		0.445650, 0.873701, 0.195044,
		-0.875423, 0.379780, 0.298999,
		32.054821, 41.741096, 25.876673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816868, 41.934231, 26.324390>,  <32.667618, 41.475250, 25.667372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816868, 41.934231, 26.324390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435673, 41.813145, 26.319016>,  <32.206955, 41.740494, 26.315790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435673, 41.813145, 26.319016>,  <32.816868, 41.934231, 26.324390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435673, 41.813145, 26.319016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072134, -0.269713, 0.960235,
		-0.294298, 0.914123, 0.278869,
		-0.952988, -0.302711, -0.013436,
		32.149776, 41.722332, 26.314985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539936, 42.218708, 26.905455>,  <32.816868, 41.934231, 26.324390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539936, 42.218708, 26.905455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291203, 41.915413, 26.827074>,  <32.141964, 41.733437, 26.780045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291203, 41.915413, 26.827074>,  <32.539936, 42.218708, 26.905455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291203, 41.915413, 26.827074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004521, -0.246732, 0.969073,
		-0.783137, 0.603488, 0.149998,
		-0.621833, -0.758239, -0.195953,
		32.104652, 41.687943, 26.768288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233509, 42.257240, 27.472313>,  <32.539936, 42.218708, 26.905455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233509, 42.257240, 27.472313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144489, 41.896492, 27.324203>,  <32.091076, 41.680042, 27.235338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144489, 41.896492, 27.324203>,  <32.233509, 42.257240, 27.472313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144489, 41.896492, 27.324203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017816, -0.375974, 0.926459,
		-0.974759, 0.212780, 0.067605,
		-0.222549, -0.901870, -0.370274,
		32.077724, 41.625931, 27.213121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625715, 41.948528, 27.805830>,  <32.233509, 42.257240, 27.472313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625715, 41.948528, 27.805830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793777, 41.618073, 27.655645>,  <31.894615, 41.419800, 27.565535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793777, 41.618073, 27.655645>,  <31.625715, 41.948528, 27.805830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793777, 41.618073, 27.655645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077331, -0.444844, 0.892263,
		-0.904151, -0.345854, -0.250789,
		0.420155, -0.826135, -0.375461,
		31.919825, 41.370232, 27.543007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245148, 41.378639, 28.217916>,  <31.625715, 41.948528, 27.805830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245148, 41.378639, 28.217916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557655, 41.212070, 28.031921>,  <31.745159, 41.112129, 27.920324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557655, 41.212070, 28.031921>,  <31.245148, 41.378639, 28.217916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557655, 41.212070, 28.031921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241105, -0.485797, 0.840160,
		-0.575751, -0.768501, -0.279136,
		0.781268, -0.416422, -0.464987,
		31.792036, 41.087143, 27.892426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139309, 40.654137, 28.187321>,  <31.245148, 41.378639, 28.217916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139309, 40.654137, 28.187321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531363, 40.729187, 28.161602>,  <31.766594, 40.774220, 28.146170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531363, 40.729187, 28.161602>,  <31.139309, 40.654137, 28.187321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531363, 40.729187, 28.161602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168550, -0.617057, 0.768656,
		0.104545, -0.764222, -0.636423,
		0.980133, 0.187628, -0.064299,
		31.825403, 40.785477, 28.142313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435474, 40.123543, 28.545982>,  <31.139309, 40.654137, 28.187321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435474, 40.123543, 28.545982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773733, 40.336971, 28.540648>,  <31.976688, 40.465031, 28.537447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773733, 40.336971, 28.540648>,  <31.435474, 40.123543, 28.545982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773733, 40.336971, 28.540648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196811, -0.288499, 0.937034,
		0.496132, -0.795025, -0.348982,
		0.845647, 0.533576, -0.013336,
		32.027428, 40.497044, 28.536646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992043, 39.578751, 28.582804>,  <31.435474, 40.123543, 28.545982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992043, 39.578751, 28.582804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.933865, 28.692127>,  <32.229050, 40.146935, 28.757721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.933865, 28.692127>,  <31.992043, 39.578751, 28.582804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140171, 39.933865, 28.692127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314010, -0.396551, 0.862638,
		0.874220, -0.233631, -0.425625,
		0.370321, 0.887786, 0.273311,
		32.251266, 40.200199, 28.774120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717113, 39.518375, 28.768539>,  <31.992043, 39.578751, 28.582804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717113, 39.518375, 28.768539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584915, 39.851246, 28.946644>,  <32.505596, 40.050968, 29.053507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584915, 39.851246, 28.946644>,  <32.717113, 39.518375, 28.768539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584915, 39.851246, 28.946644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325330, -0.342412, 0.881428,
		0.885963, 0.436169, -0.157564,
		-0.330500, 0.832173, 0.445263,
		32.485764, 40.100899, 29.080223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213543, 39.670849, 29.165400>,  <32.717113, 39.518375, 28.768539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213543, 39.670849, 29.165400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905785, 39.854980, 29.342543>,  <32.721130, 39.965462, 29.448828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905785, 39.854980, 29.342543>,  <33.213543, 39.670849, 29.165400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905785, 39.854980, 29.342543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283625, -0.375013, 0.882566,
		0.572351, 0.804649, 0.157972,
		-0.769397, 0.460333, 0.442857,
		32.674965, 39.993080, 29.475399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460892, 40.015381, 29.688334>,  <33.213543, 39.670849, 29.165400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460892, 40.015381, 29.688334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078468, 39.938156, 29.776594>,  <32.849014, 39.891823, 29.829552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078468, 39.938156, 29.776594>,  <33.460892, 40.015381, 29.688334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078468, 39.938156, 29.776594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287271, -0.466372, 0.836644,
		-0.058618, 0.863264, 0.501338,
		-0.956054, -0.193062, 0.220653,
		32.791653, 39.880238, 29.842791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437809, 40.053223, 30.366667>,  <33.460892, 40.015381, 29.688334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437809, 40.053223, 30.366667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079105, 39.878941, 30.335733>,  <32.863884, 39.774372, 30.317173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079105, 39.878941, 30.335733>,  <33.437809, 40.053223, 30.366667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079105, 39.878941, 30.335733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257258, -0.655511, 0.710017,
		-0.360049, 0.616821, 0.699925,
		-0.896762, -0.435703, -0.077334,
		32.810078, 39.748230, 30.312532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176033, 40.020042, 31.018827>,  <33.437809, 40.053223, 30.366667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176033, 40.020042, 31.018827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946892, 39.751980, 30.830051>,  <32.809406, 39.591141, 30.716785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946892, 39.751980, 30.830051>,  <33.176033, 40.020042, 31.018827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946892, 39.751980, 30.830051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132833, -0.644070, 0.753345,
		-0.808823, 0.368867, 0.457977,
		-0.572853, -0.670157, -0.471941,
		32.775036, 39.550934, 30.688469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678547, 39.761173, 31.480717>,  <33.176033, 40.020042, 31.018827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678547, 39.761173, 31.480717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685463, 39.478733, 31.197556>,  <32.689613, 39.309269, 31.027658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685463, 39.478733, 31.197556>,  <32.678547, 39.761173, 31.480717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685463, 39.478733, 31.197556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070711, -0.705373, 0.705301,
		-0.997347, -0.062250, 0.037733,
		0.017289, -0.706098, -0.707903,
		32.690651, 39.266903, 30.985184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206902, 39.279114, 31.698912>,  <32.678547, 39.761173, 31.480717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206902, 39.279114, 31.698912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430607, 39.084618, 31.430347>,  <32.564831, 38.967918, 31.269209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430607, 39.084618, 31.430347>,  <32.206902, 39.279114, 31.698912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430607, 39.084618, 31.430347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121835, -0.752910, 0.646748,
		-0.819986, -0.443506, -0.361837,
		0.559267, -0.486240, -0.671410,
		32.598389, 38.938747, 31.228924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990696, 38.663380, 31.768234>,  <32.206902, 39.279114, 31.698912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990696, 38.663380, 31.768234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334427, 38.597446, 31.574579>,  <32.540665, 38.557888, 31.458385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334427, 38.597446, 31.574579>,  <31.990696, 38.663380, 31.768234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334427, 38.597446, 31.574579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150876, -0.822800, 0.547938,
		-0.488668, -0.543902, -0.682184,
		0.859325, -0.164834, -0.484138,
		32.592224, 38.547997, 31.429338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026459, 37.972343, 31.790375>,  <31.990696, 38.663380, 31.768234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026459, 37.972343, 31.790375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403427, 38.087372, 31.722086>,  <32.629608, 38.156387, 31.681112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403427, 38.087372, 31.722086>,  <32.026459, 37.972343, 31.790375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403427, 38.087372, 31.722086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332899, -0.757922, 0.561010,
		0.031934, -0.585541, -0.810013,
		0.942422, 0.287568, -0.170723,
		32.686153, 38.173641, 31.670870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355476, 37.335403, 31.507410>,  <32.026459, 37.972343, 31.790375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355476, 37.335403, 31.507410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653900, 37.562645, 31.646349>,  <32.832954, 37.698990, 31.729712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653900, 37.562645, 31.646349>,  <32.355476, 37.335403, 31.507410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653900, 37.562645, 31.646349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401834, -0.800060, 0.445459,
		0.530967, -0.192763, -0.825177,
		0.746058, 0.568108, 0.347347,
		32.877716, 37.733078, 31.750553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063919, 36.876289, 31.572678>,  <32.355476, 37.335403, 31.507410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063919, 36.876289, 31.572678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145615, 37.191631, 31.804810>,  <33.194630, 37.380836, 31.944090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145615, 37.191631, 31.804810>,  <33.063919, 36.876289, 31.572678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145615, 37.191631, 31.804810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350543, -0.612413, 0.708569,
		0.914007, 0.058717, -0.401428,
		0.204235, 0.788355, 0.580332,
		33.206886, 37.428139, 31.978909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818287, 36.835743, 31.749954>,  <33.063919, 36.876289, 31.572678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818287, 36.835743, 31.749954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620487, 37.030724, 32.037804>,  <33.501808, 37.147713, 32.210514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620487, 37.030724, 32.037804>,  <33.818287, 36.835743, 31.749954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620487, 37.030724, 32.037804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522420, -0.495011, 0.694292,
		0.694659, 0.719272, -0.009875,
		-0.494496, 0.487455, 0.719626,
		33.472137, 37.176960, 32.253693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268391, 36.938679, 32.269142>,  <33.818287, 36.835743, 31.749954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268391, 36.938679, 32.269142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934238, 36.981155, 32.484867>,  <33.733746, 37.006641, 32.614300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934238, 36.981155, 32.484867>,  <34.268391, 36.938679, 32.269142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934238, 36.981155, 32.484867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456748, -0.411751, 0.788570,
		0.305799, 0.905088, 0.295469,
		-0.835385, 0.106189, 0.539310,
		33.683624, 37.013012, 32.646660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722340, 37.187950, 31.708681>,  <34.268391, 36.938679, 32.269142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722340, 37.187950, 31.708681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072666, 37.208870, 31.516760>,  <35.282864, 37.221420, 31.401608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072666, 37.208870, 31.516760>,  <34.722340, 37.187950, 31.708681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072666, 37.208870, 31.516760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339713, 0.772958, -0.535846,
		0.342844, 0.632297, 0.694736,
		0.875816, 0.052299, -0.479804,
		35.335411, 37.224560, 31.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840492, 37.851181, 31.610222>,  <34.722340, 37.187950, 31.708681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840492, 37.851181, 31.610222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096832, 37.697067, 31.344629>,  <35.250637, 37.604599, 31.185274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096832, 37.697067, 31.344629>,  <34.840492, 37.851181, 31.610222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096832, 37.697067, 31.344629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187946, 0.759864, -0.622320,
		0.744307, 0.523604, 0.414543,
		0.640846, -0.385285, -0.663981,
		35.289085, 37.581482, 31.145435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137215, 38.380466, 31.359486>,  <34.840492, 37.851181, 31.610222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137215, 38.380466, 31.359486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175262, 38.108734, 31.068430>,  <35.198093, 37.945694, 30.893797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175262, 38.108734, 31.068430>,  <35.137215, 38.380466, 31.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175262, 38.108734, 31.068430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326613, 0.669193, -0.667461,
		0.940359, 0.301148, -0.158223,
		0.095123, -0.679331, -0.727641,
		35.203800, 37.904934, 30.850138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634914, 38.718464, 30.817841>,  <35.137215, 38.380466, 31.359486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634914, 38.718464, 30.817841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427197, 38.428196, 30.637291>,  <35.302567, 38.254036, 30.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427197, 38.428196, 30.637291>,  <35.634914, 38.718464, 30.817841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427197, 38.428196, 30.637291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197025, 0.615607, -0.763026,
		0.831571, -0.307306, -0.462658,
		-0.519298, -0.725666, -0.451374,
		35.271408, 38.210495, 30.501879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936401, 38.684368, 30.236298>,  <35.634914, 38.718464, 30.817841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936401, 38.684368, 30.236298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583858, 38.510872, 30.161379>,  <35.372334, 38.406773, 30.116428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583858, 38.510872, 30.161379>,  <35.936401, 38.684368, 30.236298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583858, 38.510872, 30.161379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146725, 0.628113, -0.764163,
		0.449093, -0.646018, -0.617232,
		-0.881355, -0.433744, -0.187294,
		35.319450, 38.380749, 30.105190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057465, 38.382542, 29.535707>,  <35.936401, 38.684368, 30.236298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057465, 38.382542, 29.535707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668507, 38.415768, 29.622923>,  <35.435131, 38.435703, 29.675253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668507, 38.415768, 29.622923>,  <36.057465, 38.382542, 29.535707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668507, 38.415768, 29.622923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136478, 0.555469, -0.820261,
		-0.189246, -0.827378, -0.528801,
		-0.972399, 0.083061, 0.218040,
		35.376785, 38.440685, 29.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732937, 38.240746, 28.932383>,  <36.057465, 38.382542, 29.535707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732937, 38.240746, 28.932383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454899, 38.443802, 29.136009>,  <35.288078, 38.565636, 29.258184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454899, 38.443802, 29.136009>,  <35.732937, 38.240746, 28.932383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454899, 38.443802, 29.136009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282558, 0.458208, -0.842738,
		-0.661067, -0.729620, -0.175057,
		-0.695091, 0.507643, 0.509066,
		35.246372, 38.596096, 29.288729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181347, 38.194763, 28.453815>,  <35.732937, 38.240746, 28.932383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181347, 38.194763, 28.453815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139450, 38.486973, 28.723738>,  <35.114311, 38.662300, 28.885691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139450, 38.486973, 28.723738>,  <35.181347, 38.194763, 28.453815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139450, 38.486973, 28.723738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373568, 0.599945, -0.707469,
		-0.921670, -0.326191, 0.210058,
		-0.104747, 0.730524, 0.674806,
		35.108025, 38.706131, 28.926180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597431, 38.549839, 28.193279>,  <35.181347, 38.194763, 28.453815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597431, 38.549839, 28.193279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792389, 38.823818, 28.409908>,  <34.909363, 38.988205, 28.539885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792389, 38.823818, 28.409908>,  <34.597431, 38.549839, 28.193279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792389, 38.823818, 28.409908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205578, 0.692803, -0.691203,
		-0.848638, 0.225552, 0.478477,
		0.487392, 0.684945, 0.541571,
		34.938606, 39.029301, 28.572380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226803, 39.145733, 27.904463>,  <34.597431, 38.549839, 28.193279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226803, 39.145733, 27.904463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531715, 39.340950, 28.074514>,  <34.714664, 39.458080, 28.176546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531715, 39.340950, 28.074514>,  <34.226803, 39.145733, 27.904463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531715, 39.340950, 28.074514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033198, 0.626486, -0.778726,
		-0.646388, 0.607725, 0.461359,
		0.762286, 0.488043, 0.425129,
		34.760403, 39.487362, 28.202053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020851, 39.847763, 28.136120>,  <34.226803, 39.145733, 27.904463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020851, 39.847763, 28.136120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414680, 39.842033, 28.066364>,  <34.650978, 39.838596, 28.024511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414680, 39.842033, 28.066364>,  <34.020851, 39.847763, 28.136120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414680, 39.842033, 28.066364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118835, 0.676815, -0.726498,
		0.128436, 0.736014, 0.664671,
		0.984572, -0.014322, -0.174391,
		34.710052, 39.837738, 28.014048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170090, 40.576061, 27.895851>,  <34.020851, 39.847763, 28.136120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170090, 40.576061, 27.895851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526749, 40.409718, 27.824272>,  <34.740746, 40.309914, 27.781324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526749, 40.409718, 27.824272>,  <34.170090, 40.576061, 27.895851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526749, 40.409718, 27.824272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147085, 0.639925, -0.754229,
		0.428163, 0.646189, 0.631756,
		0.891652, -0.415855, -0.178947,
		34.794243, 40.284962, 27.770588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678226, 41.095657, 27.845985>,  <34.170090, 40.576061, 27.895851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678226, 41.095657, 27.845985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876320, 40.790539, 27.679668>,  <34.995174, 40.607468, 27.579878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876320, 40.790539, 27.679668>,  <34.678226, 41.095657, 27.845985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876320, 40.790539, 27.679668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347130, 0.612480, -0.710190,
		0.796398, 0.207373, 0.568109,
		0.495229, -0.762801, -0.415792,
		35.024887, 40.561699, 27.554932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466736, 41.243774, 27.829407>,  <34.678226, 41.095657, 27.845985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466736, 41.243774, 27.829407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391350, 40.994698, 27.525635>,  <35.346119, 40.845253, 27.343372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391350, 40.994698, 27.525635>,  <35.466736, 41.243774, 27.829407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391350, 40.994698, 27.525635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274922, 0.708918, -0.649502,
		0.942814, -0.331193, 0.037585,
		-0.188465, -0.622693, -0.759430,
		35.334808, 40.807888, 27.297806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980362, 41.359264, 27.314137>,  <35.466736, 41.243774, 27.829407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980362, 41.359264, 27.314137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702255, 41.156212, 27.110600>,  <35.535393, 41.034382, 26.988478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702255, 41.156212, 27.110600>,  <35.980362, 41.359264, 27.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702255, 41.156212, 27.110600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098554, 0.633935, -0.767081,
		0.711967, -0.583471, -0.390723,
		-0.695263, -0.507629, -0.508844,
		35.493675, 41.003922, 26.957947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327179, 41.124641, 26.648026>,  <35.980362, 41.359264, 27.314137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327179, 41.124641, 26.648026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929863, 41.170036, 26.639194>,  <35.691471, 41.197273, 26.633896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929863, 41.170036, 26.639194>,  <36.327179, 41.124641, 26.648026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929863, 41.170036, 26.639194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095342, 0.696025, -0.711659,
		-0.065396, -0.708992, -0.702178,
		-0.993294, 0.113487, -0.022079,
		35.631874, 41.204082, 26.632570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258087, 41.113316, 25.896133>,  <36.327179, 41.124641, 26.648026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258087, 41.113316, 25.896133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899040, 41.227108, 26.030804>,  <35.683613, 41.295383, 26.111607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899040, 41.227108, 26.030804>,  <36.258087, 41.113316, 25.896133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899040, 41.227108, 26.030804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168239, 0.484873, -0.858250,
		-0.407402, -0.827023, -0.387370,
		-0.897618, 0.284482, 0.336676,
		35.629753, 41.312454, 26.131807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704521, 40.973839, 25.424904>,  <36.258087, 41.113316, 25.896133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704521, 40.973839, 25.424904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547802, 41.269733, 25.643730>,  <35.453770, 41.447269, 25.775026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547802, 41.269733, 25.643730>,  <35.704521, 40.973839, 25.424904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547802, 41.269733, 25.643730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200863, 0.511490, -0.835483,
		-0.897858, -0.437225, -0.051814,
		-0.391796, 0.739738, 0.547068,
		35.430264, 41.491653, 25.807850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035744, 41.209091, 25.064604>,  <35.704521, 40.973839, 25.424904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035744, 41.209091, 25.064604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135731, 41.500477, 25.319746>,  <35.195721, 41.675308, 25.472832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135731, 41.500477, 25.319746>,  <35.035744, 41.209091, 25.064604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135731, 41.500477, 25.319746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372141, 0.680448, -0.631270,
		-0.893884, -0.079576, 0.441179,
		0.249966, 0.728463, 0.637855,
		35.210720, 41.719017, 25.511103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392490, 41.547050, 25.214819>,  <35.035744, 41.209091, 25.064604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392490, 41.547050, 25.214819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674595, 41.821465, 25.286329>,  <34.843857, 41.986115, 25.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674595, 41.821465, 25.286329>,  <34.392490, 41.547050, 25.214819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674595, 41.821465, 25.286329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378715, 0.577745, -0.723040,
		-0.599318, 0.442227, 0.667273,
		0.705262, 0.686037, 0.178775,
		34.886173, 42.027275, 25.339962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036716, 42.134167, 25.467073>,  <34.392490, 41.547050, 25.214819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036716, 42.134167, 25.467073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386833, 42.275108, 25.334578>,  <34.596901, 42.359673, 25.255081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386833, 42.275108, 25.334578>,  <34.036716, 42.134167, 25.467073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386833, 42.275108, 25.334578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481935, 0.578715, -0.657896,
		-0.040119, 0.735484, 0.676354,
		0.875288, 0.352353, -0.331238,
		34.649418, 42.380814, 25.235207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826481, 42.831711, 25.338919>,  <34.036716, 42.134167, 25.467073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826481, 42.831711, 25.338919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178638, 42.791958, 25.153437>,  <34.389935, 42.768108, 25.042147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178638, 42.791958, 25.153437>,  <33.826481, 42.831711, 25.338919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178638, 42.791958, 25.153437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319733, 0.597758, -0.735158,
		0.350242, 0.795493, 0.494490,
		0.880398, -0.099379, -0.463705,
		34.442757, 42.762146, 25.014324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203117, 43.461258, 25.230902>,  <33.826481, 42.831711, 25.338919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203117, 43.461258, 25.230902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346363, 43.206547, 24.957769>,  <34.432312, 43.053719, 24.793890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346363, 43.206547, 24.957769>,  <34.203117, 43.461258, 25.230902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346363, 43.206547, 24.957769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233781, 0.646886, -0.725868,
		0.903935, 0.419580, 0.082793,
		0.358117, -0.636782, -0.682833,
		34.453800, 43.015511, 24.752920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358124, 43.871643, 24.562918>,  <34.203117, 43.461258, 25.230902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358124, 43.871643, 24.562918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356152, 43.490891, 24.440346>,  <34.354969, 43.262440, 24.366802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356152, 43.490891, 24.440346>,  <34.358124, 43.871643, 24.562918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356152, 43.490891, 24.440346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381803, 0.285009, -0.879202,
		0.924231, 0.112662, -0.364836,
		-0.004929, -0.951881, -0.306429,
		34.354671, 43.205326, 24.348417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526173, 43.902512, 23.759014>,  <34.358124, 43.871643, 24.562918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526173, 43.902512, 23.759014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353493, 43.548431, 23.828362>,  <34.249886, 43.335983, 23.869970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353493, 43.548431, 23.828362>,  <34.526173, 43.902512, 23.759014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353493, 43.548431, 23.828362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295142, -0.043002, -0.954485,
		0.852366, -0.463218, -0.242696,
		-0.431698, -0.885201, 0.173368,
		34.223984, 43.282871, 23.880373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748016, 43.538811, 23.150999>,  <34.526173, 43.902512, 23.759014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748016, 43.538811, 23.150999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413780, 43.375805, 23.298363>,  <34.213238, 43.278000, 23.386782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413780, 43.375805, 23.298363>,  <34.748016, 43.538811, 23.150999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413780, 43.375805, 23.298363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410425, 0.017316, -0.911730,
		0.365166, -0.913034, -0.181724,
		-0.835586, -0.407517, 0.368409,
		34.163105, 43.253551, 23.408886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402992, 43.161343, 22.586199>,  <34.748016, 43.538811, 23.150999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402992, 43.161343, 22.586199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110428, 43.150291, 22.858751>,  <33.934891, 43.143661, 23.022282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110428, 43.150291, 22.858751>,  <34.402992, 43.161343, 22.586199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110428, 43.150291, 22.858751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676627, -0.095070, -0.730163,
		0.084952, -0.995087, 0.050841,
		-0.731409, -0.027628, 0.681379,
		33.891006, 43.142002, 23.063166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028870, 42.539009, 22.402857>,  <34.402992, 43.161343, 22.586199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028870, 42.539009, 22.402857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819584, 42.822933, 22.591499>,  <33.694012, 42.993286, 22.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819584, 42.822933, 22.591499>,  <34.028870, 42.539009, 22.402857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819584, 42.822933, 22.591499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500953, 0.191513, -0.844019,
		-0.689412, -0.677858, 0.255379,
		-0.523217, 0.709810, 0.471607,
		33.662621, 43.035877, 22.732981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360699, 42.459126, 22.129389>,  <34.028870, 42.539009, 22.402857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360699, 42.459126, 22.129389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382854, 42.830097, 22.277342>,  <33.396149, 43.052681, 22.366114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382854, 42.830097, 22.277342>,  <33.360699, 42.459126, 22.129389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382854, 42.830097, 22.277342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494197, 0.347360, -0.796938,
		-0.867583, -0.138651, 0.477572,
		0.055393, 0.927425, 0.369885,
		33.399471, 43.108326, 22.388308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691849, 42.771305, 22.185820>,  <33.360699, 42.459126, 22.129389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691849, 42.771305, 22.185820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939823, 43.085060, 22.177689>,  <33.088608, 43.273315, 22.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939823, 43.085060, 22.177689>,  <32.691849, 42.771305, 22.185820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939823, 43.085060, 22.177689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533406, 0.402288, -0.744071,
		-0.575467, 0.472116, 0.667791,
		0.619932, 0.784392, -0.020326,
		33.125801, 43.320377, 22.171591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295673, 43.373592, 22.078754>,  <32.691849, 42.771305, 22.185820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295673, 43.373592, 22.078754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661396, 43.514412, 21.998648>,  <32.880829, 43.598904, 21.950584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661396, 43.514412, 21.998648>,  <32.295673, 43.373592, 22.078754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661396, 43.514412, 21.998648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365284, 0.503157, -0.783199,
		-0.174958, 0.789238, 0.588637,
		0.914307, 0.352046, -0.200265,
		32.935688, 43.620026, 21.938568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096565, 44.019691, 21.738142>,  <32.295673, 43.373592, 22.078754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096565, 44.019691, 21.738142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480049, 43.946976, 21.650669>,  <32.710140, 43.903347, 21.598186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480049, 43.946976, 21.650669>,  <32.096565, 44.019691, 21.738142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480049, 43.946976, 21.650669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130388, 0.402393, -0.906134,
		0.252718, 0.897237, 0.362077,
		0.958714, -0.181786, -0.218681,
		32.767662, 43.892441, 21.585064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418877, 44.580730, 21.340290>,  <32.096565, 44.019691, 21.738142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418877, 44.580730, 21.340290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628113, 44.254135, 21.242538>,  <32.753654, 44.058178, 21.183887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628113, 44.254135, 21.242538>,  <32.418877, 44.580730, 21.340290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628113, 44.254135, 21.242538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108688, 0.348301, -0.931060,
		0.845320, 0.460466, 0.270935,
		0.523088, -0.816491, -0.244379,
		32.785038, 44.009190, 21.169226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051548, 44.860512, 21.058340>,  <32.418877, 44.580730, 21.340290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051548, 44.860512, 21.058340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991070, 44.493301, 20.911716>,  <32.954784, 44.272976, 20.823742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991070, 44.493301, 20.911716>,  <33.051548, 44.860512, 21.058340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991070, 44.493301, 20.911716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071519, 0.359692, -0.930326,
		0.985914, -0.166875, 0.011273,
		-0.151193, -0.918027, -0.366560,
		32.945713, 44.217892, 20.801748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474968, 44.893875, 20.500191>,  <33.051548, 44.860512, 21.058340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474968, 44.893875, 20.500191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219936, 44.590340, 20.447037>,  <33.066917, 44.408218, 20.415144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219936, 44.590340, 20.447037>,  <33.474968, 44.893875, 20.500191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219936, 44.590340, 20.447037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002240, 0.170662, -0.985327,
		0.770384, -0.628519, -0.107110,
		-0.637576, -0.758840, -0.132884,
		33.028664, 44.362686, 20.407171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684631, 44.485653, 19.860723>,  <33.474968, 44.893875, 20.500191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684631, 44.485653, 19.860723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297665, 44.397057, 19.909792>,  <33.065483, 44.343899, 19.939234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297665, 44.397057, 19.909792>,  <33.684631, 44.485653, 19.860723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297665, 44.397057, 19.909792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151595, 0.118645, -0.981296,
		0.202798, -0.967917, -0.148357,
		-0.967415, -0.221495, 0.122671,
		33.007439, 44.330608, 19.946592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524349, 44.054741, 19.350760>,  <33.684631, 44.485653, 19.860723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524349, 44.054741, 19.350760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157776, 44.180538, 19.449747>,  <32.937832, 44.256016, 19.509140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157776, 44.180538, 19.449747>,  <33.524349, 44.054741, 19.350760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157776, 44.180538, 19.449747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253680, 0.021729, -0.967044,
		-0.309508, -0.949011, 0.059868,
		-0.916434, 0.314495, 0.247470,
		32.882847, 44.274887, 19.523989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083004, 43.794304, 18.843750>,  <33.524349, 44.054741, 19.350760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083004, 43.794304, 18.843750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876797, 44.088951, 19.018852>,  <32.753071, 44.265739, 19.123915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876797, 44.088951, 19.018852>,  <33.083004, 43.794304, 18.843750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876797, 44.088951, 19.018852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560010, 0.097045, -0.822783,
		-0.648561, -0.669307, 0.362487,
		-0.515516, 0.736621, 0.437757,
		32.722141, 44.309937, 19.150179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275406, 43.436260, 18.134008>,  <33.083004, 43.794304, 18.843750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275406, 43.436260, 18.134008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269642, 43.104706, 17.910315>,  <33.266186, 42.905773, 17.776098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269642, 43.104706, 17.910315>,  <33.275406, 43.436260, 18.134008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269642, 43.104706, 17.910315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203593, -0.550007, 0.809965,
		-0.978950, -0.102187, 0.176679,
		-0.014407, -0.828885, -0.559233,
		33.265320, 42.856041, 17.742544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740570, 43.035671, 18.459606>,  <33.275406, 43.436260, 18.134008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740570, 43.035671, 18.459606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994938, 42.805923, 18.253422>,  <33.147560, 42.668076, 18.129711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994938, 42.805923, 18.253422>,  <32.740570, 43.035671, 18.459606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994938, 42.805923, 18.253422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257706, -0.471535, 0.843352,
		-0.727456, -0.669143, -0.151840,
		0.635921, -0.574372, -0.515463,
		33.185715, 42.633614, 18.098783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526520, 42.388901, 18.756405>,  <32.740570, 43.035671, 18.459606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526520, 42.388901, 18.756405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886501, 42.326809, 18.593437>,  <33.102489, 42.289555, 18.495657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886501, 42.326809, 18.593437>,  <32.526520, 42.388901, 18.756405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886501, 42.326809, 18.593437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234759, -0.614909, 0.752845,
		-0.367385, -0.773170, -0.516949,
		0.899953, -0.155226, -0.407417,
		33.156487, 42.280243, 18.471212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708206, 41.641399, 18.729914>,  <32.526520, 42.388901, 18.756405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708206, 41.641399, 18.729914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082348, 41.780102, 18.701988>,  <33.306831, 41.863323, 18.685232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082348, 41.780102, 18.701988>,  <32.708206, 41.641399, 18.729914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082348, 41.780102, 18.701988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279478, -0.603523, 0.746761,
		0.216811, -0.717997, -0.661418,
		0.935353, 0.346758, -0.069814,
		33.362953, 41.884129, 18.681044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254585, 41.006329, 18.700293>,  <32.708206, 41.641399, 18.729914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254585, 41.006329, 18.700293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442398, 41.340412, 18.814812>,  <33.555088, 41.540863, 18.883524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442398, 41.340412, 18.814812>,  <33.254585, 41.006329, 18.700293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442398, 41.340412, 18.814812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481342, -0.513986, 0.710020,
		0.740167, -0.195571, -0.643354,
		0.469534, 0.835207, 0.286299,
		33.583260, 41.590973, 18.900702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903015, 40.850456, 18.556299>,  <33.254585, 41.006329, 18.700293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903015, 40.850456, 18.556299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893242, 41.135216, 18.837042>,  <33.887379, 41.306072, 19.005487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893242, 41.135216, 18.837042>,  <33.903015, 40.850456, 18.556299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893242, 41.135216, 18.837042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573544, -0.565047, 0.593102,
		0.818810, 0.417039, -0.394497,
		-0.024437, 0.711899, 0.701856,
		33.885910, 41.348785, 19.047598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549164, 40.793530, 18.915331>,  <33.903015, 40.850456, 18.556299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549164, 40.793530, 18.915331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366837, 41.041786, 19.170525>,  <34.257439, 41.190742, 19.323641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366837, 41.041786, 19.170525>,  <34.549164, 40.793530, 18.915331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366837, 41.041786, 19.170525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461808, -0.447843, 0.765618,
		0.760894, 0.643613, -0.082482,
		-0.455823, 0.620645, 0.637986,
		34.230091, 41.227978, 19.361921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103695, 41.063309, 19.370806>,  <34.549164, 40.793530, 18.915331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103695, 41.063309, 19.370806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772427, 41.147999, 19.578388>,  <34.573666, 41.198814, 19.702938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772427, 41.147999, 19.578388>,  <35.103695, 41.063309, 19.370806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772427, 41.147999, 19.578388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424316, -0.368103, 0.827318,
		0.366192, 0.905358, 0.215013,
		-0.828166, 0.211724, 0.518955,
		34.523975, 41.211517, 19.734076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329613, 41.237167, 20.086489>,  <35.103695, 41.063309, 19.370806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329613, 41.237167, 20.086489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946491, 41.122284, 20.090919>,  <34.716618, 41.053352, 20.093578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946491, 41.122284, 20.090919>,  <35.329613, 41.237167, 20.086489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946491, 41.122284, 20.090919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180266, -0.570238, 0.801457,
		-0.223871, 0.769635, 0.597950,
		-0.957803, -0.287213, 0.011079,
		34.659149, 41.036121, 20.094244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118298, 41.496166, 20.739222>,  <35.329613, 41.237167, 20.086489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118298, 41.496166, 20.739222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870934, 41.207550, 20.614674>,  <34.722515, 41.034382, 20.539946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870934, 41.207550, 20.614674>,  <35.118298, 41.496166, 20.739222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870934, 41.207550, 20.614674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252701, -0.557755, 0.790602,
		-0.744119, 0.410231, 0.527254,
		-0.618408, -0.721540, -0.311370,
		34.685410, 40.991089, 20.521263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603867, 41.357094, 21.298359>,  <35.118298, 41.496166, 20.739222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603867, 41.357094, 21.298359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546825, 41.027641, 21.078798>,  <34.512600, 40.829971, 20.947062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546825, 41.027641, 21.078798>,  <34.603867, 41.357094, 21.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546825, 41.027641, 21.078798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195416, -0.567082, 0.800144,
		-0.970297, 0.006843, 0.241821,
		-0.142608, -0.823633, -0.548901,
		34.504044, 40.780552, 20.914127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168774, 40.971985, 21.675127>,  <34.603867, 41.357094, 21.298359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168774, 40.971985, 21.675127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356365, 40.715752, 21.431910>,  <34.468918, 40.562012, 21.285980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356365, 40.715752, 21.431910>,  <34.168774, 40.971985, 21.675127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356365, 40.715752, 21.431910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198252, -0.594525, 0.779254,
		-0.860674, -0.485995, -0.151819,
		0.468974, -0.640585, -0.608042,
		34.497059, 40.523575, 21.249496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861443, 40.252537, 21.751539>,  <34.168774, 40.971985, 21.675127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861443, 40.252537, 21.751539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241528, 40.270863, 21.628252>,  <34.469578, 40.281857, 21.554279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241528, 40.270863, 21.628252>,  <33.861443, 40.252537, 21.751539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241528, 40.270863, 21.628252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265669, -0.636016, 0.724502,
		-0.162840, -0.770315, -0.616521,
		0.950212, 0.045812, -0.308217,
		34.526592, 40.284607, 21.535788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095528, 39.600426, 21.787745>,  <33.861443, 40.252537, 21.751539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095528, 39.600426, 21.787745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445930, 39.789494, 21.749395>,  <34.656174, 39.902935, 21.726385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445930, 39.789494, 21.749395>,  <34.095528, 39.600426, 21.787745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445930, 39.789494, 21.749395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306743, -0.392637, 0.867032,
		0.372173, -0.788938, -0.488941,
		0.876012, 0.472665, -0.095873,
		34.708733, 39.931293, 21.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634342, 39.068577, 21.852417>,  <34.095528, 39.600426, 21.787745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634342, 39.068577, 21.852417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792332, 39.421265, 21.955624>,  <34.887123, 39.632877, 22.017548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792332, 39.421265, 21.955624>,  <34.634342, 39.068577, 21.852417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792332, 39.421265, 21.955624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430221, -0.425670, 0.796062,
		0.811732, -0.203416, -0.547460,
		0.394969, 0.881718, 0.258017,
		34.910824, 39.685780, 22.033028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281605, 38.887142, 22.058876>,  <34.634342, 39.068577, 21.852417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281605, 38.887142, 22.058876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222038, 39.245190, 22.226963>,  <35.186298, 39.460018, 22.327816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222038, 39.245190, 22.226963>,  <35.281605, 38.887142, 22.058876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222038, 39.245190, 22.226963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463747, -0.312109, 0.829172,
		0.873363, 0.318351, -0.368632,
		-0.148914, 0.895120, 0.420219,
		35.177364, 39.513725, 22.353029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824234, 39.009369, 22.441256>,  <35.281605, 38.887142, 22.058876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824234, 39.009369, 22.441256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595646, 39.285309, 22.619036>,  <35.458492, 39.450871, 22.725704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595646, 39.285309, 22.619036>,  <35.824234, 39.009369, 22.441256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595646, 39.285309, 22.619036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387623, -0.250456, 0.887141,
		0.723308, 0.679251, -0.124273,
		-0.571467, 0.689847, 0.444450,
		35.424206, 39.492264, 22.752371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228237, 39.367188, 22.973513>,  <35.824234, 39.009369, 22.441256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228237, 39.367188, 22.973513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855824, 39.437901, 23.101213>,  <35.632374, 39.480328, 23.177834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855824, 39.437901, 23.101213>,  <36.228237, 39.367188, 22.973513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855824, 39.437901, 23.101213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312360, -0.066296, 0.947648,
		0.188691, 0.982015, 0.006505,
		-0.931036, 0.176781, 0.319251,
		35.576511, 39.490936, 23.196989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312851, 39.667820, 23.567852>,  <36.228237, 39.367188, 22.973513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312851, 39.667820, 23.567852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928509, 39.565323, 23.610001>,  <35.697903, 39.503822, 23.635290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928509, 39.565323, 23.610001>,  <36.312851, 39.667820, 23.567852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928509, 39.565323, 23.610001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124734, -0.060478, 0.990345,
		-0.247400, 0.964718, 0.090073,
		-0.960851, -0.256247, 0.105371,
		35.640255, 39.488449, 23.641611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093082, 40.051968, 24.129431>,  <36.312851, 39.667820, 23.567852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093082, 40.051968, 24.129431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807236, 39.773392, 24.103205>,  <35.635727, 39.606247, 24.087469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807236, 39.773392, 24.103205>,  <36.093082, 40.051968, 24.129431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807236, 39.773392, 24.103205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053900, -0.148272, 0.987477,
		-0.697436, 0.702134, 0.143495,
		-0.714617, -0.696436, -0.065566,
		35.592850, 39.564461, 24.083534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554661, 40.257912, 24.672323>,  <36.093082, 40.051968, 24.129431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554661, 40.257912, 24.672323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531784, 39.869469, 24.579651>,  <35.518059, 39.636402, 24.524048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531784, 39.869469, 24.579651>,  <35.554661, 40.257912, 24.672323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531784, 39.869469, 24.579651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071091, -0.227511, 0.971177,
		-0.995829, 0.072018, -0.056024,
		-0.057196, -0.971109, -0.231681,
		35.514626, 39.578136, 24.510147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051563, 40.058182, 25.146097>,  <35.554661, 40.257912, 24.672323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051563, 40.058182, 25.146097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227222, 39.720764, 25.022430>,  <35.332619, 39.518314, 24.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227222, 39.720764, 25.022430>,  <35.051563, 40.058182, 25.146097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227222, 39.720764, 25.022430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057767, -0.369924, 0.927264,
		-0.896557, -0.389344, -0.211180,
		0.439145, -0.843544, -0.309167,
		35.358967, 39.467701, 24.929680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877052, 39.572308, 25.622101>,  <35.051563, 40.058182, 25.146097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877052, 39.572308, 25.622101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179104, 39.369095, 25.456360>,  <35.360332, 39.247166, 25.356915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179104, 39.369095, 25.456360>,  <34.877052, 39.572308, 25.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179104, 39.369095, 25.456360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168660, -0.460218, 0.871638,
		-0.633515, -0.728080, -0.261837,
		0.755124, -0.508035, -0.414353,
		35.405640, 39.216686, 25.332054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680313, 38.854675, 25.854799>,  <34.877052, 39.572308, 25.622101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680313, 38.854675, 25.854799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065586, 38.861263, 25.747467>,  <35.296749, 38.865215, 25.683067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065586, 38.861263, 25.747467>,  <34.680313, 38.854675, 25.854799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065586, 38.861263, 25.747467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204324, -0.693514, 0.690862,
		-0.174715, -0.720255, -0.671348,
		0.963186, 0.016469, -0.268332,
		35.354542, 38.866203, 25.666967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882908, 38.096703, 25.715134>,  <34.680313, 38.854675, 25.854799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882908, 38.096703, 25.715134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209545, 38.315552, 25.788706>,  <35.405529, 38.446861, 25.832850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209545, 38.315552, 25.788706>,  <34.882908, 38.096703, 25.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209545, 38.315552, 25.788706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188642, -0.554117, 0.810782,
		0.545520, -0.627381, -0.555699,
		0.816592, 0.547126, 0.183931,
		35.454521, 38.479691, 25.843885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418415, 37.605743, 25.790472>,  <34.882908, 38.096703, 25.715134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418415, 37.605743, 25.790472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552795, 37.937984, 25.968121>,  <35.633423, 38.137329, 26.074709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552795, 37.937984, 25.968121>,  <35.418415, 37.605743, 25.790472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552795, 37.937984, 25.968121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361621, -0.549132, 0.753448,
		0.869694, -0.092518, -0.484843,
		0.335950, 0.830599, 0.444120,
		35.653580, 38.187164, 26.101357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114643, 37.431667, 26.082680>,  <35.418415, 37.605743, 25.790472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114643, 37.431667, 26.082680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028973, 37.760231, 26.294119>,  <35.977570, 37.957371, 26.420982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028973, 37.760231, 26.294119>,  <36.114643, 37.431667, 26.082680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028973, 37.760231, 26.294119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402688, -0.418782, 0.813919,
		0.889929, 0.387179, -0.241081,
		-0.214171, 0.821410, 0.528599,
		35.964722, 38.006653, 26.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751461, 37.576202, 26.455256>,  <36.114643, 37.431667, 26.082680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751461, 37.576202, 26.455256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451263, 37.750591, 26.653927>,  <36.271145, 37.855225, 26.773129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451263, 37.750591, 26.653927>,  <36.751461, 37.576202, 26.455256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451263, 37.750591, 26.653927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258598, -0.497891, 0.827787,
		0.608184, 0.749688, 0.260922,
		-0.750493, 0.435973, 0.496677,
		36.226116, 37.881382, 26.802931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021492, 37.906776, 27.115030>,  <36.751461, 37.576202, 26.455256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021492, 37.906776, 27.115030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627071, 37.863724, 27.165806>,  <36.390419, 37.837891, 27.196272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627071, 37.863724, 27.165806>,  <37.021492, 37.906776, 27.115030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627071, 37.863724, 27.165806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162120, -0.448753, 0.878828,
		-0.037629, 0.887150, 0.459944,
		-0.986053, -0.107635, 0.126939,
		36.331257, 37.831432, 27.203888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952450, 38.045216, 27.876387>,  <37.021492, 37.906776, 27.115030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952450, 38.045216, 27.876387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625675, 37.839333, 27.772312>,  <36.429611, 37.715805, 27.709867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625675, 37.839333, 27.772312>,  <36.952450, 38.045216, 27.876387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625675, 37.839333, 27.772312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079593, -0.547443, 0.833049,
		-0.571210, 0.659839, 0.488192,
		-0.816936, -0.514703, -0.260187,
		36.380596, 37.684921, 27.694256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663349, 37.866009, 28.495077>,  <36.952450, 38.045216, 27.876387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663349, 37.866009, 28.495077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496304, 37.606815, 28.240294>,  <36.396076, 37.451298, 28.087423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496304, 37.606815, 28.240294>,  <36.663349, 37.866009, 28.495077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496304, 37.606815, 28.240294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024291, -0.692799, 0.720722,
		-0.908302, 0.316453, 0.273579,
		-0.417610, -0.647987, -0.636957,
		36.371021, 37.412418, 28.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520649, 37.285286, 28.927725>,  <36.663349, 37.866009, 28.495077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520649, 37.285286, 28.927725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474213, 37.095383, 28.578754>,  <36.446350, 36.981441, 28.369373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474213, 37.095383, 28.578754>,  <36.520649, 37.285286, 28.927725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474213, 37.095383, 28.578754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365590, -0.837123, 0.406902,
		-0.923508, -0.271711, 0.270753,
		-0.116094, -0.474762, -0.872424,
		36.439384, 36.952953, 28.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070160, 36.656490, 28.983412>,  <36.520649, 37.285286, 28.927725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070160, 36.656490, 28.983412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330223, 36.599846, 28.684818>,  <36.486263, 36.565861, 28.505663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330223, 36.599846, 28.684818>,  <36.070160, 36.656490, 28.983412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330223, 36.599846, 28.684818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285188, -0.865159, 0.412514,
		-0.704243, -0.481088, -0.522107,
		0.650161, -0.141611, -0.746483,
		36.525272, 36.557362, 28.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043873, 35.983318, 28.847435>,  <36.070160, 36.656490, 28.983412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043873, 35.983318, 28.847435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383293, 36.071278, 28.654932>,  <36.586945, 36.124054, 28.539431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383293, 36.071278, 28.654932>,  <36.043873, 35.983318, 28.847435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383293, 36.071278, 28.654932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390162, -0.874419, 0.288383,
		-0.357403, -0.432475, -0.827785,
		0.848550, 0.219901, -0.481255,
		36.637859, 36.137249, 28.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202148, 35.412651, 28.516951>,  <36.043873, 35.983318, 28.847435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202148, 35.412651, 28.516951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545914, 35.617157, 28.518780>,  <36.752174, 35.739861, 28.519876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545914, 35.617157, 28.518780>,  <36.202148, 35.412651, 28.516951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545914, 35.617157, 28.518780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502200, -0.845786, 0.180113,
		0.095952, -0.152496, -0.983635,
		0.859412, 0.511264, 0.004571,
		36.803738, 35.770535, 28.520151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627998, 34.978752, 28.152325>,  <36.202148, 35.412651, 28.516951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627998, 34.978752, 28.152325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869488, 35.227646, 28.351662>,  <37.014381, 35.376984, 28.471264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869488, 35.227646, 28.351662>,  <36.627998, 34.978752, 28.152325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869488, 35.227646, 28.351662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557147, -0.776437, 0.294506,
		0.570185, 0.099852, -0.815425,
		0.603719, 0.622234, 0.498345,
		37.050602, 35.414318, 28.501165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191643, 34.705696, 28.117941>,  <36.627998, 34.978752, 28.152325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191643, 34.705696, 28.117941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266357, 34.953342, 28.423046>,  <37.311188, 35.101929, 28.606110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266357, 34.953342, 28.423046>,  <37.191643, 34.705696, 28.117941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266357, 34.953342, 28.423046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565537, -0.702636, 0.431824,
		0.803293, 0.350712, -0.481375,
		0.186785, 0.619116, 0.762762,
		37.322392, 35.139076, 28.651875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861904, 34.523891, 28.381557>,  <37.191643, 34.705696, 28.117941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861904, 34.523891, 28.381557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697422, 34.721386, 28.688057>,  <37.598732, 34.839882, 28.871958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697422, 34.721386, 28.688057>,  <37.861904, 34.523891, 28.381557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697422, 34.721386, 28.688057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458330, -0.614631, 0.641999,
		0.787936, 0.615189, 0.026447,
		-0.411206, 0.493732, 0.766250,
		37.574059, 34.869507, 28.917933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369396, 34.741150, 28.929989>,  <37.861904, 34.523891, 28.381557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369396, 34.741150, 28.929989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010460, 34.657383, 29.085388>,  <37.795097, 34.607124, 29.178629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010460, 34.657383, 29.085388>,  <38.369396, 34.741150, 28.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010460, 34.657383, 29.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431033, -0.605032, 0.669438,
		0.094863, 0.768167, 0.633183,
		-0.897336, -0.209418, 0.388500,
		37.741261, 34.594559, 29.201939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566341, 34.725258, 29.740940>,  <38.369396, 34.741150, 28.929989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566341, 34.725258, 29.740940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205227, 34.561146, 29.689339>,  <37.988560, 34.462677, 29.658377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205227, 34.561146, 29.689339>,  <38.566341, 34.725258, 29.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205227, 34.561146, 29.689339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251450, -0.746856, 0.615613,
		-0.348924, 0.523329, 0.777418,
		-0.902787, -0.410284, -0.129005,
		37.934391, 34.438061, 29.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329224, 34.611858, 30.409412>,  <38.566341, 34.725258, 29.740940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329224, 34.611858, 30.409412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159779, 34.382832, 30.128637>,  <38.058113, 34.245415, 29.960173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159779, 34.382832, 30.128637>,  <38.329224, 34.611858, 30.409412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159779, 34.382832, 30.128637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120984, -0.803719, 0.582579,
		-0.897727, 0.161865, 0.409738,
		-0.423614, -0.572569, -0.701937,
		38.032696, 34.211060, 29.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875809, 34.054943, 30.687490>,  <38.329224, 34.611858, 30.409412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875809, 34.054943, 30.687490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033859, 33.933083, 30.340834>,  <38.128689, 33.859966, 30.132839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033859, 33.933083, 30.340834>,  <37.875809, 34.054943, 30.687490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033859, 33.933083, 30.340834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308941, -0.844387, 0.437682,
		-0.865121, -0.440679, -0.239517,
		0.395122, -0.304652, -0.866640,
		38.152397, 33.841686, 30.080841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990280, 33.301994, 30.833874>,  <37.875809, 34.054943, 30.687490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990280, 33.301994, 30.833874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190605, 33.367256, 30.493858>,  <38.310802, 33.406414, 30.289850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190605, 33.367256, 30.493858>,  <37.990280, 33.301994, 30.833874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190605, 33.367256, 30.493858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359653, -0.932505, 0.032916,
		-0.787294, -0.322204, -0.525693,
		0.500817, 0.163152, -0.850038,
		38.340851, 33.416203, 30.238848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851269, 32.818684, 30.317389>,  <37.990280, 33.301994, 30.833874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851269, 32.818684, 30.317389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222664, 32.957451, 30.264389>,  <38.445503, 33.040710, 30.232590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222664, 32.957451, 30.264389>,  <37.851269, 32.818684, 30.317389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222664, 32.957451, 30.264389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367990, -0.907458, 0.202737,
		-0.049903, -0.236997, -0.970228,
		0.928490, 0.346917, -0.132497,
		38.501209, 33.061527, 30.224640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298595, 32.397751, 29.764799>,  <37.851269, 32.818684, 30.317389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298595, 32.397751, 29.764799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507240, 32.572220, 30.058104>,  <38.632427, 32.676903, 30.234085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507240, 32.572220, 30.058104>,  <38.298595, 32.397751, 29.764799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507240, 32.572220, 30.058104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369440, -0.890160, 0.266702,
		0.769047, 0.131780, -0.625460,
		0.521613, 0.436176, 0.733260,
		38.663723, 32.703072, 30.278082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900333, 31.940929, 29.761091>,  <38.298595, 32.397751, 29.764799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900333, 31.940929, 29.761091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808960, 32.138161, 30.096876>,  <38.754135, 32.256500, 30.298347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808960, 32.138161, 30.096876>,  <38.900333, 31.940929, 29.761091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808960, 32.138161, 30.096876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591538, -0.614545, 0.521936,
		0.773241, 0.615800, -0.151291,
		-0.228433, 0.493076, 0.839461,
		38.740429, 32.286083, 30.348715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528069, 32.287987, 30.183043>,  <38.900333, 31.940929, 29.761091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528069, 32.287987, 30.183043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221333, 32.198196, 30.423565>,  <39.037292, 32.144321, 30.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221333, 32.198196, 30.423565>,  <39.528069, 32.287987, 30.183043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221333, 32.198196, 30.423565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615310, -0.523676, 0.589200,
		0.182628, 0.821811, 0.539698,
		-0.766838, -0.224477, 0.601306,
		38.991280, 32.130852, 30.603956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587379, 32.656754, 30.875235>,  <39.528069, 32.287987, 30.183043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587379, 32.656754, 30.875235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431671, 32.288429, 30.865601>,  <39.338245, 32.067436, 30.859819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431671, 32.288429, 30.865601>,  <39.587379, 32.656754, 30.875235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431671, 32.288429, 30.865601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767509, -0.338700, 0.544253,
		-0.509311, 0.193376, 0.838575,
		-0.389271, -0.920808, -0.024086,
		39.314888, 32.012188, 30.858376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433590, 32.454868, 31.461786>,  <39.587379, 32.656754, 30.875235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433590, 32.454868, 31.461786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508110, 32.123444, 31.250589>,  <39.552822, 31.924589, 31.123871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508110, 32.123444, 31.250589>,  <39.433590, 32.454868, 31.461786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508110, 32.123444, 31.250589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707431, -0.259794, 0.657304,
		-0.681786, -0.495978, 0.537749,
		0.186304, -0.828561, -0.527994,
		39.564003, 31.874876, 31.092192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988842, 32.808357, 31.880077>,  <39.433590, 32.454868, 31.461786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988842, 32.808357, 31.880077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642918, 32.901516, 31.702148>,  <39.435364, 32.957413, 31.595392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642918, 32.901516, 31.702148>,  <39.988842, 32.808357, 31.880077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642918, 32.901516, 31.702148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495691, 0.537154, -0.682463,
		0.079992, -0.810693, -0.579982,
		-0.864807, 0.232901, -0.444821,
		39.383476, 32.971386, 31.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704205, 32.676785, 31.576849>,  <39.988842, 32.808357, 31.880077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704205, 32.676785, 31.576849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846581, 32.919678, 31.860983>,  <40.932007, 33.065414, 32.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846581, 32.919678, 31.860983>,  <40.704205, 32.676785, 31.576849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846581, 32.919678, 31.860983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273776, 0.794522, -0.542016,
		-0.893506, -0.001548, 0.449048,
		0.355940, 0.607234, 0.710334,
		40.953362, 33.101849, 32.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379223, 32.206886, 32.044727>,  <40.704205, 32.676785, 31.576849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379223, 32.206886, 32.044727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710419, 31.983706, 32.022366>,  <40.909138, 31.849798, 32.008949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710419, 31.983706, 32.022366>,  <40.379223, 32.206886, 32.044727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710419, 31.983706, 32.022366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455087, -0.726875, 0.514344,
		-0.327610, -0.400432, -0.855760,
		0.827990, -0.557949, -0.055900,
		40.958817, 31.816320, 32.005596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183411, 31.481064, 31.841286>,  <40.379223, 32.206886, 32.044727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183411, 31.481064, 31.841286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517262, 31.499458, 32.060844>,  <40.717571, 31.510494, 32.192581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517262, 31.499458, 32.060844>,  <40.183411, 31.481064, 31.841286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517262, 31.499458, 32.060844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355079, -0.716904, 0.599973,
		0.421097, -0.695654, -0.582017,
		0.834624, 0.045985, 0.548898,
		40.767647, 31.513254, 32.225513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675697, 31.019499, 31.776375>,  <40.183411, 31.481064, 31.841286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675697, 31.019499, 31.776375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661736, 31.179375, 32.142769>,  <40.653358, 31.275301, 32.362606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661736, 31.179375, 32.142769>,  <40.675697, 31.019499, 31.776375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661736, 31.179375, 32.142769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489870, -0.805727, 0.332913,
		0.871096, -0.437094, 0.223918,
		-0.034902, 0.399690, 0.915986,
		40.651264, 31.299282, 32.417564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019531, 30.567539, 32.313663>,  <40.675697, 31.019499, 31.776375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019531, 30.567539, 32.313663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756683, 30.787601, 32.519779>,  <40.598976, 30.919640, 32.643448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756683, 30.787601, 32.519779>,  <41.019531, 30.567539, 32.313663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756683, 30.787601, 32.519779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391967, -0.833301, 0.389835,
		0.643860, 0.054192, 0.763222,
		-0.657120, 0.550157, 0.515287,
		40.559547, 30.952648, 32.674366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966534, 30.154505, 32.901386>,  <41.019531, 30.567539, 32.313663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966534, 30.154505, 32.901386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637539, 30.381819, 32.891838>,  <40.440144, 30.518208, 32.886108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637539, 30.381819, 32.891838>,  <40.966534, 30.154505, 32.901386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637539, 30.381819, 32.891838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548791, -0.781847, 0.295879,
		0.149484, 0.256453, 0.954927,
		-0.822486, 0.568284, -0.023866,
		40.390793, 30.552303, 32.884678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556519, 29.928333, 33.459221>,  <40.966534, 30.154505, 32.901386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556519, 29.928333, 33.459221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302322, 30.160513, 33.255562>,  <40.149803, 30.299820, 33.133366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302322, 30.160513, 33.255562>,  <40.556519, 29.928333, 33.459221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302322, 30.160513, 33.255562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750067, -0.620539, 0.228759,
		-0.183162, 0.527268, 0.829723,
		-0.635492, 0.580448, -0.509146,
		40.111675, 30.334648, 33.102818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944691, 29.905952, 33.884964>,  <40.556519, 29.928333, 33.459221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944691, 29.905952, 33.884964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838882, 30.010553, 33.513664>,  <39.775398, 30.073315, 33.290886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838882, 30.010553, 33.513664>,  <39.944691, 29.905952, 33.884964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838882, 30.010553, 33.513664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795370, -0.603472, 0.056642,
		-0.545361, 0.753284, 0.367620,
		-0.264517, 0.261504, -0.928249,
		39.759529, 30.089005, 33.235191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233498, 30.179197, 33.895699>,  <39.944691, 29.905952, 33.884964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233498, 30.179197, 33.895699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329659, 30.025549, 33.539124>,  <39.387356, 29.933359, 33.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329659, 30.025549, 33.539124>,  <39.233498, 30.179197, 33.895699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329659, 30.025549, 33.539124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630728, -0.759885, 0.157342,
		-0.737827, 0.524428, -0.424955,
		0.240402, -0.384122, -0.891435,
		39.401779, 29.910313, 33.271694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553143, 29.855576, 33.570370>,  <39.233498, 30.179197, 33.895699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553143, 29.855576, 33.570370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858841, 29.637562, 33.432457>,  <39.042259, 29.506754, 33.349709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858841, 29.637562, 33.432457>,  <38.553143, 29.855576, 33.570370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858841, 29.637562, 33.432457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616868, -0.773742, -0.144210,
		-0.188171, 0.322895, -0.927540,
		0.764242, -0.545034, -0.344779,
		39.088112, 29.474052, 33.329021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196808, 29.274906, 33.389000>,  <38.553143, 29.855576, 33.570370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196808, 29.274906, 33.389000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573906, 29.145479, 33.356686>,  <38.800167, 29.067823, 33.337296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573906, 29.145479, 33.356686>,  <38.196808, 29.274906, 33.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573906, 29.145479, 33.356686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306113, -0.935691, 0.175433,
		-0.132357, -0.140659, -0.981171,
		0.942749, -0.323569, -0.080788,
		38.856731, 29.048409, 33.332451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345100, 28.837269, 32.833549>,  <38.196808, 29.274906, 33.389000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345100, 28.837269, 32.833549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569710, 28.766804, 33.156944>,  <38.704475, 28.724525, 33.350983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569710, 28.766804, 33.156944>,  <38.345100, 28.837269, 32.833549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569710, 28.766804, 33.156944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424128, -0.900238, 0.098420,
		0.710496, -0.398169, -0.580221,
		0.561525, -0.176160, 0.808491,
		38.738167, 28.713955, 33.399490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867577, 28.218134, 32.793701>,  <38.345100, 28.837269, 32.833549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867577, 28.218134, 32.793701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679832, 28.303631, 33.136402>,  <38.567188, 28.354929, 33.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679832, 28.303631, 33.136402>,  <38.867577, 28.218134, 32.793701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679832, 28.303631, 33.136402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260667, -0.960560, 0.096836,
		0.843657, -0.177875, 0.506560,
		-0.469357, 0.213740, 0.856749,
		38.539024, 28.367752, 33.393429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340031, 28.514702, 33.273716>,  <38.867577, 28.218134, 32.793701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340031, 28.514702, 33.273716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202820, 28.617256, 32.912251>,  <39.120495, 28.678789, 32.695374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202820, 28.617256, 32.912251>,  <39.340031, 28.514702, 33.273716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202820, 28.617256, 32.912251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629930, 0.776424, -0.018832,
		0.696795, -0.575703, -0.427836,
		-0.343024, 0.256384, -0.903660,
		39.099915, 28.694172, 32.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803650, 28.755066, 32.783966>,  <39.340031, 28.514702, 33.273716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803650, 28.755066, 32.783966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463631, 28.938070, 32.679581>,  <39.259621, 29.047873, 32.616951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463631, 28.938070, 32.679581>,  <39.803650, 28.755066, 32.783966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463631, 28.938070, 32.679581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477157, 0.878711, -0.013742,
		0.223024, -0.136201, -0.965251,
		-0.850048, 0.457511, -0.260962,
		39.208614, 29.075323, 32.601292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895947, 29.395853, 32.451107>,  <39.803650, 28.755066, 32.783966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895947, 29.395853, 32.451107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527081, 29.492470, 32.571949>,  <39.305759, 29.550440, 32.644455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527081, 29.492470, 32.571949>,  <39.895947, 29.395853, 32.451107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527081, 29.492470, 32.571949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241282, 0.969680, -0.038784,
		-0.302316, 0.037127, -0.952485,
		-0.922165, 0.241542, 0.302108,
		39.250431, 29.564932, 32.662582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511410, 29.788956, 31.933994>,  <39.895947, 29.395853, 32.451107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511410, 29.788956, 31.933994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464329, 29.837606, 32.328224>,  <39.436081, 29.866796, 32.564762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464329, 29.837606, 32.328224>,  <39.511410, 29.788956, 31.933994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464329, 29.837606, 32.328224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363803, 0.928753, -0.071167,
		-0.924010, 0.350178, -0.153562,
		-0.117700, 0.121625, 0.985573,
		39.429020, 29.874094, 32.623898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317120, 30.452599, 32.048546>,  <39.511410, 29.788956, 31.933994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317120, 30.452599, 32.048546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464294, 30.343529, 32.404133>,  <39.552601, 30.278088, 32.617485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464294, 30.343529, 32.404133>,  <39.317120, 30.452599, 32.048546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464294, 30.343529, 32.404133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628332, 0.777647, -0.021537,
		-0.685433, 0.566493, 0.457458,
		0.367941, -0.272673, 0.888971,
		39.574677, 30.261726, 32.670822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255947, 31.014692, 32.395992>,  <39.317120, 30.452599, 32.048546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255947, 31.014692, 32.395992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526062, 30.810467, 32.608902>,  <39.688129, 30.687931, 32.736649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526062, 30.810467, 32.608902>,  <39.255947, 31.014692, 32.395992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526062, 30.810467, 32.608902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511596, 0.844082, 0.160607,
		-0.531280, 0.163852, 0.831200,
		0.675286, -0.510566, 0.532270,
		39.728649, 30.657297, 32.768581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400921, 31.355104, 33.020813>,  <39.255947, 31.014692, 32.395992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400921, 31.355104, 33.020813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721695, 31.116760, 33.003632>,  <39.914162, 30.973753, 32.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721695, 31.116760, 33.003632>,  <39.400921, 31.355104, 33.020813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721695, 31.116760, 33.003632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597207, 0.797741, 0.083378,
		-0.015415, -0.092518, 0.995592,
		0.801939, -0.595860, -0.042955,
		39.962276, 30.938002, 32.990746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823925, 31.687860, 33.412663>,  <39.400921, 31.355104, 33.020813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823925, 31.687860, 33.412663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056141, 31.453352, 33.186653>,  <40.195473, 31.312647, 33.051048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056141, 31.453352, 33.186653>,  <39.823925, 31.687860, 33.412663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056141, 31.453352, 33.186653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506736, 0.803322, -0.312878,
		0.637328, -0.104679, 0.763449,
		0.580544, -0.586273, -0.565024,
		40.230305, 31.277470, 33.017147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415989, 31.753281, 33.697292>,  <39.823925, 31.687860, 33.412663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415989, 31.753281, 33.697292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440918, 31.652111, 33.311100>,  <40.455875, 31.591410, 33.079384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440918, 31.652111, 33.311100>,  <40.415989, 31.753281, 33.697292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440918, 31.652111, 33.311100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343319, 0.913756, -0.217215,
		0.937149, -0.317929, 0.143781,
		0.062322, -0.252925, -0.965476,
		40.459614, 31.576233, 33.021458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038692, 31.870272, 33.531204>,  <40.415989, 31.753281, 33.697292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038692, 31.870272, 33.531204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869041, 31.868317, 33.168968>,  <40.767250, 31.867144, 32.951626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869041, 31.868317, 33.168968>,  <41.038692, 31.870272, 33.531204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869041, 31.868317, 33.168968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513547, 0.822353, -0.244957,
		0.745910, -0.568956, -0.346276,
		-0.424131, -0.004886, -0.905588,
		40.741802, 31.866850, 32.897293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577190, 32.000031, 33.126717>,  <41.038692, 31.870272, 33.531204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577190, 32.000031, 33.126717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227421, 32.097641, 32.958992>,  <41.017559, 32.156208, 32.858356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227421, 32.097641, 32.958992>,  <41.577190, 32.000031, 33.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227421, 32.097641, 32.958992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351627, 0.914262, -0.201204,
		0.334266, -0.323382, -0.885263,
		-0.874428, 0.244027, -0.419316,
		40.965092, 32.170849, 32.833199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571190, 32.727444, 33.035484>,  <41.577190, 32.000031, 33.126717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571190, 32.727444, 33.035484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225410, 32.699631, 32.836327>,  <41.017944, 32.682941, 32.716831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225410, 32.699631, 32.836327>,  <41.571190, 32.727444, 33.035484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225410, 32.699631, 32.836327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020639, 0.994463, -0.103044,
		0.502297, -0.078800, -0.861097,
		-0.864448, -0.069531, -0.497889,
		40.966076, 32.678772, 32.686958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600887, 32.954216, 32.282612>,  <41.571190, 32.727444, 33.035484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600887, 32.954216, 32.282612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247574, 33.050812, 32.443359>,  <41.035587, 33.108768, 32.539806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247574, 33.050812, 32.443359>,  <41.600887, 32.954216, 32.282612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247574, 33.050812, 32.443359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122336, 0.946163, -0.299682,
		-0.452605, -0.215540, -0.865270,
		-0.883280, 0.241491, 0.401870,
		40.982590, 33.123260, 32.563919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296555, 33.301510, 31.645390>,  <41.600887, 32.954216, 32.282612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296555, 33.301510, 31.645390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154385, 33.414181, 32.001892>,  <41.069084, 33.481781, 32.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154385, 33.414181, 32.001892>,  <41.296555, 33.301510, 31.645390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154385, 33.414181, 32.001892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207190, 0.953535, -0.218733,
		-0.911453, 0.106917, -0.397267,
		-0.355422, 0.281675, 0.891254,
		41.047756, 33.498684, 32.269268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658184, 33.687943, 31.875950>,  <41.296555, 33.301510, 31.645390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658184, 33.687943, 31.875950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494846, 33.784332, 31.523769>,  <40.396843, 33.842167, 31.312462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494846, 33.784332, 31.523769>,  <40.658184, 33.687943, 31.875950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494846, 33.784332, 31.523769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044628, 0.968644, 0.244410,
		0.911738, 0.060510, -0.406291,
		-0.408340, 0.240970, -0.880450,
		40.372345, 33.856625, 31.259634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084499, 34.043884, 31.423346>,  <40.658184, 33.687943, 31.875950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084499, 34.043884, 31.423346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693367, 34.126644, 31.410475>,  <40.458687, 34.176300, 31.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693367, 34.126644, 31.410475>,  <41.084499, 34.043884, 31.423346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693367, 34.126644, 31.410475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173695, 0.887346, 0.427138,
		0.116924, 0.412082, -0.903613,
		-0.977834, 0.206896, -0.032175,
		40.400017, 34.188713, 31.400822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268883, 34.546967, 31.966888>,  <41.084499, 34.043884, 31.423346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268883, 34.546967, 31.966888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564335, 34.341461, 31.792316>,  <41.741608, 34.218159, 31.687572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564335, 34.341461, 31.792316>,  <41.268883, 34.546967, 31.966888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564335, 34.341461, 31.792316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656084, 0.696597, 0.290354,
		0.154843, -0.500799, 0.851601,
		0.738632, -0.513763, -0.436429,
		41.785923, 34.187332, 31.661388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787842, 34.458500, 32.419441>,  <41.268883, 34.546967, 31.966888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787842, 34.458500, 32.419441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958099, 34.413509, 32.060291>,  <42.060253, 34.386517, 31.844801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958099, 34.413509, 32.060291>,  <41.787842, 34.458500, 32.419441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958099, 34.413509, 32.060291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717045, 0.647181, 0.258850,
		0.551973, -0.753993, 0.356118,
		0.425644, -0.112475, -0.897874,
		42.085793, 34.379768, 31.790930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436989, 34.872051, 32.893681>,  <41.787842, 34.458500, 32.419441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436989, 34.872051, 32.893681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670635, 35.097912, 33.126911>,  <41.810822, 35.233429, 33.266850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670635, 35.097912, 33.126911>,  <41.436989, 34.872051, 32.893681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670635, 35.097912, 33.126911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789312, 0.227699, 0.570210,
		0.189201, -0.793300, 0.578686,
		0.584114, 0.564648, 0.583081,
		41.845871, 35.267307, 33.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165264, 34.883625, 33.522144>,  <41.436989, 34.872051, 32.893681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165264, 34.883625, 33.522144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421722, 35.187370, 33.566509>,  <41.575596, 35.369617, 33.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421722, 35.187370, 33.566509>,  <41.165264, 34.883625, 33.522144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421722, 35.187370, 33.566509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632462, 0.440981, 0.636811,
		0.434643, -0.478456, 0.762998,
		0.641153, 0.759352, 0.110936,
		41.614067, 35.415180, 33.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244423, 34.993839, 34.285503>,  <41.165264, 34.883625, 33.522144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244423, 34.993839, 34.285503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284744, 35.294582, 34.024872>,  <41.308937, 35.475029, 33.868492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284744, 35.294582, 34.024872>,  <41.244423, 34.993839, 34.285503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284744, 35.294582, 34.024872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878399, 0.374784, 0.296569,
		0.467177, 0.542448, 0.698209,
		0.100804, 0.751855, -0.651577,
		41.314987, 35.520138, 33.829399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003052, 35.590393, 34.660011>,  <41.244423, 34.993839, 34.285503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003052, 35.590393, 34.660011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012985, 35.706448, 34.277348>,  <41.018944, 35.776081, 34.047749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012985, 35.706448, 34.277348>,  <41.003052, 35.590393, 34.660011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012985, 35.706448, 34.277348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705325, 0.683250, 0.188907,
		0.708449, 0.670068, 0.221607,
		0.024833, 0.290135, -0.956663,
		41.020435, 35.793488, 33.990349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293793, 35.897133, 34.794720>,  <41.003052, 35.590393, 34.660011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293793, 35.897133, 34.794720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277924, 36.293247, 34.741428>,  <40.268402, 36.530918, 34.709454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277924, 36.293247, 34.741428>,  <40.293793, 35.897133, 34.794720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277924, 36.293247, 34.741428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617455, -0.080534, -0.782473,
		-0.785605, -0.113308, -0.608265,
		-0.039675, 0.990291, -0.133231,
		40.266022, 36.590336, 34.701458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086430, 36.061371, 34.101871>,  <40.293793, 35.897133, 34.794720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086430, 36.061371, 34.101871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312145, 36.359657, 34.243568>,  <40.447575, 36.538628, 34.328587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312145, 36.359657, 34.243568>,  <40.086430, 36.061371, 34.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312145, 36.359657, 34.243568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531222, 0.000493, -0.847233,
		-0.631968, 0.666265, -0.395862,
		0.564286, 0.745715, 0.354246,
		40.481430, 36.583370, 34.349842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351063, 36.531212, 33.520008>,  <40.086430, 36.061371, 34.101871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351063, 36.531212, 33.520008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605431, 36.490738, 33.826046>,  <40.758049, 36.466454, 34.009670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605431, 36.490738, 33.826046>,  <40.351063, 36.531212, 33.520008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605431, 36.490738, 33.826046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708868, -0.315405, -0.630893,
		0.305150, 0.943547, -0.128847,
		0.635916, -0.101182, 0.765097,
		40.796204, 36.460384, 34.055576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887520, 36.367039, 33.158707>,  <40.351063, 36.531212, 33.520008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887520, 36.367039, 33.158707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058945, 36.365376, 33.520107>,  <41.161800, 36.364376, 33.736950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058945, 36.365376, 33.520107>,  <40.887520, 36.367039, 33.158707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058945, 36.365376, 33.520107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824738, -0.406575, -0.393069,
		0.368977, 0.913608, -0.170811,
		0.428559, -0.004159, 0.903504,
		41.187511, 36.364128, 33.791157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470718, 36.508484, 33.112396>,  <40.887520, 36.367039, 33.158707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470718, 36.508484, 33.112396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467960, 36.264057, 33.429016>,  <41.466305, 36.117401, 33.618988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467960, 36.264057, 33.429016>,  <41.470718, 36.508484, 33.112396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467960, 36.264057, 33.429016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760427, -0.517250, -0.392687,
		0.649387, 0.599204, 0.468243,
		-0.006899, -0.611071, 0.791546,
		41.465889, 36.080734, 33.666481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141132, 36.576710, 33.571949>,  <41.470718, 36.508484, 33.112396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141132, 36.576710, 33.571949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968937, 36.217125, 33.539597>,  <41.865620, 36.001373, 33.520184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968937, 36.217125, 33.539597>,  <42.141132, 36.576710, 33.571949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968937, 36.217125, 33.539597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843876, -0.369069, -0.389438,
		0.320239, -0.235906, 0.917494,
		-0.430489, -0.898964, -0.080885,
		41.839790, 35.947437, 33.515331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634720, 35.976906, 33.926159>,  <42.141132, 36.576710, 33.571949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634720, 35.976906, 33.926159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403801, 35.833607, 33.632660>,  <42.265251, 35.747627, 33.456558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403801, 35.833607, 33.632660>,  <42.634720, 35.976906, 33.926159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403801, 35.833607, 33.632660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791831, -0.464981, -0.395974,
		-0.199324, -0.809601, 0.552102,
		-0.577298, -0.358245, -0.733749,
		42.230610, 35.726135, 33.412537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644238, 35.186939, 33.856495>,  <42.634720, 35.976906, 33.926159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644238, 35.186939, 33.856495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541374, 35.363037, 33.512390>,  <42.479656, 35.468697, 33.305927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541374, 35.363037, 33.512390>,  <42.644238, 35.186939, 33.856495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541374, 35.363037, 33.512390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860300, -0.301189, -0.411303,
		-0.440176, -0.845854, -0.301291,
		-0.257157, 0.440246, -0.860264,
		42.464226, 35.495110, 33.254311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707008, 34.783020, 33.185368>,  <42.644238, 35.186939, 33.856495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707008, 34.783020, 33.185368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760994, 35.175663, 33.131359>,  <42.793385, 35.411247, 33.098953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760994, 35.175663, 33.131359>,  <42.707008, 34.783020, 33.185368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760994, 35.175663, 33.131359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926435, -0.173342, -0.334172,
		-0.351431, -0.079989, -0.932790,
		0.134962, 0.981608, -0.135022,
		42.801483, 35.470146, 33.090851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824265, 35.057892, 32.514523>,  <42.707008, 34.783020, 33.185368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824265, 35.057892, 32.514523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051048, 35.245617, 32.785313>,  <43.187119, 35.358253, 32.947788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051048, 35.245617, 32.785313>,  <42.824265, 35.057892, 32.514523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051048, 35.245617, 32.785313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823230, -0.351863, -0.445516,
		0.029115, 0.809898, -0.585848,
		0.566961, 0.469316, 0.676977,
		43.221138, 35.386414, 32.988407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501095, 34.971699, 32.318352>,  <42.824265, 35.057892, 32.514523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501095, 34.971699, 32.318352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584335, 35.168709, 32.656372>,  <43.634277, 35.286915, 32.859184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584335, 35.168709, 32.656372>,  <43.501095, 34.971699, 32.318352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584335, 35.168709, 32.656372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967538, -0.230326, -0.104020,
		0.143406, 0.839269, -0.524464,
		0.208099, 0.492522, 0.845055,
		43.646767, 35.316463, 32.909889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136227, 35.427944, 32.108322>,  <43.501095, 34.971699, 32.318352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136227, 35.427944, 32.108322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140533, 35.329258, 32.495934>,  <44.143116, 35.270046, 32.728500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.140533, 35.329258, 32.495934>,  <44.136227, 35.427944, 32.108322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140533, 35.329258, 32.495934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961430, -0.263804, -0.077846,
		0.274840, 0.932489, 0.234364,
		0.010764, -0.246720, 0.969027,
		44.143764, 35.255241, 32.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715775, 35.705513, 31.798178>,  <44.136227, 35.427944, 32.108322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715775, 35.705513, 31.798178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647556, 35.766319, 32.187599>,  <44.606625, 35.802803, 32.421253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647556, 35.766319, 32.187599>,  <44.715775, 35.705513, 31.798178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647556, 35.766319, 32.187599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969186, -0.152353, 0.193565,
		0.177748, 0.976566, -0.121346,
		-0.170542, 0.152013, 0.973554,
		44.596394, 35.811924, 32.479664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118217, 36.297050, 32.222759>,  <44.715775, 35.705513, 31.798178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118217, 36.297050, 32.222759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041149, 35.975098, 32.447277>,  <44.994907, 35.781925, 32.581989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041149, 35.975098, 32.447277>,  <45.118217, 36.297050, 32.222759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041149, 35.975098, 32.447277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981096, -0.168575, 0.095040,
		0.018125, 0.568994, 0.822142,
		-0.192670, -0.804878, 0.561293,
		44.983349, 35.733635, 32.615665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593956, 36.414280, 32.852440>,  <45.118217, 36.297050, 32.222759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593956, 36.414280, 32.852440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476078, 36.034031, 32.813526>,  <45.405350, 35.805882, 32.790176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476078, 36.034031, 32.813526>,  <45.593956, 36.414280, 32.852440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476078, 36.034031, 32.813526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920603, -0.309729, 0.237822,
		-0.256211, -0.019475, 0.966425,
		-0.294698, -0.950625, -0.097285,
		45.387669, 35.748844, 32.784340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820953, 36.061852, 33.384731>,  <45.593956, 36.414280, 32.852440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820953, 36.061852, 33.384731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797134, 35.794533, 33.088127>,  <45.782845, 35.634144, 32.910164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797134, 35.794533, 33.088127>,  <45.820953, 36.061852, 33.384731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797134, 35.794533, 33.088127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913612, -0.335785, 0.229261,
		-0.402201, -0.663800, 0.630558,
		-0.059549, -0.668295, -0.741509,
		45.779270, 35.594044, 32.865673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997574, 35.287678, 33.374748>,  <45.820953, 36.061852, 33.384731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997574, 35.287678, 33.374748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160500, 35.490253, 33.070744>,  <46.258255, 35.611797, 32.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.160500, 35.490253, 33.070744>,  <45.997574, 35.287678, 33.374748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160500, 35.490253, 33.070744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912951, -0.203088, 0.353945,
		0.024901, -0.838019, -0.545072,
		0.407310, 0.506437, -0.760013,
		46.282692, 35.642185, 32.842739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621243, 34.798851, 33.207561>,  <45.997574, 35.287678, 33.374748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621243, 34.798851, 33.207561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852413, 34.528996, 33.391243>,  <46.991116, 34.367081, 33.501450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.852413, 34.528996, 33.391243>,  <46.621243, 34.798851, 33.207561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852413, 34.528996, 33.391243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215683, -0.668941, -0.711336,
		0.787072, 0.312058, -0.532107,
		0.577926, -0.674639, 0.459199,
		47.025791, 34.326603, 33.529003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552406, 34.596821, 33.841042>,  <46.621243, 34.798851, 33.207561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552406, 34.596821, 33.841042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375698, 34.675545, 34.191151>,  <46.269672, 34.722778, 34.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375698, 34.675545, 34.191151>,  <46.552406, 34.596821, 33.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375698, 34.675545, 34.191151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750783, -0.452961, 0.480782,
		0.491087, 0.869537, 0.052345,
		-0.441768, 0.196806, 0.875277,
		46.243168, 34.734585, 34.453735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053017, 34.860321, 34.410183>,  <46.552406, 34.596821, 33.841042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053017, 34.860321, 34.410183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772678, 34.617214, 34.559547>,  <46.604477, 34.471348, 34.649166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772678, 34.617214, 34.559547>,  <47.053017, 34.860321, 34.410183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772678, 34.617214, 34.559547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713273, -0.602831, 0.357543,
		0.007797, 0.516922, 0.855997,
		-0.700843, -0.607772, 0.373407,
		46.562424, 34.434883, 34.671570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065453, 34.752930, 35.164631>,  <47.053017, 34.860321, 34.410183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065453, 34.752930, 35.164631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921425, 34.417011, 35.002102>,  <46.835011, 34.215462, 34.904587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921425, 34.417011, 35.002102>,  <47.065453, 34.752930, 35.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921425, 34.417011, 35.002102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804464, -0.500042, 0.320616,
		-0.472429, -0.211425, 0.855635,
		-0.360067, -0.839796, -0.406318,
		46.813404, 34.165073, 34.880207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740379, 34.523178, 34.899097>,  <47.065453, 34.752930, 35.164631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740379, 34.523178, 34.899097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869034, 34.861824, 35.068707>,  <47.946224, 35.065010, 35.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869034, 34.861824, 35.068707>,  <47.740379, 34.523178, 34.899097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869034, 34.861824, 35.068707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181235, -0.384499, 0.905160,
		0.929358, -0.367978, 0.029768,
		0.321633, 0.846613, 0.424027,
		47.965523, 35.115807, 35.195915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.786150, 36.728672, 22.143719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537642, 36.922646, 22.389927>,  <31.388536, 37.039028, 22.537651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537642, 36.922646, 22.389927>,  <31.786150, 36.728672, 22.143719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537642, 36.922646, 22.389927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282539, -0.594037, 0.753188,
		0.730885, 0.641842, 0.232046,
		-0.621271, 0.484932, 0.615518,
		31.351259, 37.068127, 22.574583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150482, 36.805527, 22.777584>,  <31.786150, 36.728672, 22.143719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150482, 36.805527, 22.777584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.774691, 36.873222, 22.896740>,  <31.549215, 36.913841, 22.968233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.774691, 36.873222, 22.896740>,  <32.150482, 36.805527, 22.777584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774691, 36.873222, 22.896740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130753, -0.626562, 0.768326,
		0.316677, 0.760775, 0.566513,
		-0.939479, 0.169238, 0.297891,
		31.492847, 36.923992, 22.986107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113731, 37.029629, 23.524443>,  <32.150482, 36.805527, 22.777584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113731, 37.029629, 23.524443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758179, 36.863216, 23.447697>,  <31.544847, 36.763371, 23.401649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758179, 36.863216, 23.447697>,  <32.113731, 37.029629, 23.524443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758179, 36.863216, 23.447697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096461, -0.579358, 0.809345,
		-0.447869, 0.700903, 0.555110,
		-0.888880, -0.416027, -0.191867,
		31.491514, 36.738407, 23.390137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642879, 37.218094, 24.126865>,  <32.113731, 37.029629, 23.524443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642879, 37.218094, 24.126865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464262, 36.910801, 23.943377>,  <31.357092, 36.726425, 23.833282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.464262, 36.910801, 23.943377>,  <31.642879, 37.218094, 24.126865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464262, 36.910801, 23.943377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092704, -0.549638, 0.830244,
		-0.889947, 0.328214, 0.316654,
		-0.446542, -0.768228, -0.458722,
		31.330299, 36.680332, 23.805759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138290, 36.885544, 24.638557>,  <31.642879, 37.218094, 24.126865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138290, 36.885544, 24.638557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209694, 36.608032, 24.359472>,  <31.252537, 36.441525, 24.192020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.209694, 36.608032, 24.359472>,  <31.138290, 36.885544, 24.638557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209694, 36.608032, 24.359472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053632, -0.701188, 0.710956,
		-0.982475, -0.164333, -0.087961,
		0.178511, -0.693779, -0.697714,
		31.263247, 36.399899, 24.150158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768463, 36.330078, 24.836758>,  <31.138290, 36.885544, 24.638557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768463, 36.330078, 24.836758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.052370, 36.173279, 24.602640>,  <31.222713, 36.079201, 24.462170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.052370, 36.173279, 24.602640>,  <30.768463, 36.330078, 24.836758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052370, 36.173279, 24.602640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151048, -0.726853, 0.669976,
		-0.688050, -0.563936, -0.456688,
		0.709769, -0.391995, -0.585293,
		31.265301, 36.055679, 24.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536207, 35.601303, 24.728537>,  <30.768463, 36.330078, 24.836758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536207, 35.601303, 24.728537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928099, 35.633736, 24.655268>,  <31.163235, 35.653194, 24.611305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.928099, 35.633736, 24.655268>,  <30.536207, 35.601303, 24.728537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928099, 35.633736, 24.655268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172822, -0.804521, 0.568223,
		-0.101292, -0.588362, -0.802228,
		0.979731, 0.081086, -0.183173,
		31.222017, 35.658062, 24.600315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653307, 34.882248, 24.900560>,  <30.536207, 35.601303, 24.728537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653307, 34.882248, 24.900560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004730, 35.067440, 24.853603>,  <31.215584, 35.178555, 24.825430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004730, 35.067440, 24.853603>,  <30.653307, 34.882248, 24.900560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004730, 35.067440, 24.853603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433380, -0.669379, 0.603418,
		0.200793, -0.581014, -0.788736,
		0.878558, 0.462984, -0.117393,
		31.268297, 35.206337, 24.818386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149260, 34.316586, 24.881096>,  <30.653307, 34.882248, 24.900560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149260, 34.316586, 24.881096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354088, 34.648067, 24.971462>,  <31.476984, 34.846954, 25.025682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354088, 34.648067, 24.971462>,  <31.149260, 34.316586, 24.881096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354088, 34.648067, 24.971462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535264, -0.513573, 0.670623,
		0.671771, -0.222481, -0.706560,
		0.512071, 0.828701, 0.225917,
		31.507710, 34.896679, 25.039238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844666, 34.087082, 24.962713>,  <31.149260, 34.316586, 24.881096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844666, 34.087082, 24.962713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.839573, 34.445721, 25.139780>,  <31.836517, 34.660904, 25.246019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.839573, 34.445721, 25.139780>,  <31.844666, 34.087082, 24.962713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839573, 34.445721, 25.139780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664266, -0.323313, 0.673959,
		0.747388, 0.302630, -0.591461,
		-0.012733, 0.896596, 0.442667,
		31.835752, 34.714699, 25.272579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547844, 34.313583, 24.959307>,  <31.844666, 34.087082, 24.962713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547844, 34.313583, 24.959307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321453, 34.485409, 25.240772>,  <32.185619, 34.588505, 25.409653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321453, 34.485409, 25.240772>,  <32.547844, 34.313583, 24.959307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321453, 34.485409, 25.240772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678828, -0.241519, 0.693441,
		0.467824, 0.870141, -0.154904,
		-0.565979, 0.429562, 0.703665,
		32.151661, 34.614277, 25.451872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035297, 34.461555, 25.396488>,  <32.547844, 34.313583, 24.959307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035297, 34.461555, 25.396488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714268, 34.521862, 25.627361>,  <32.521648, 34.558048, 25.765886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.714268, 34.521862, 25.627361>,  <33.035297, 34.461555, 25.396488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714268, 34.521862, 25.627361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504533, -0.344704, 0.791597,
		0.318305, 0.926525, 0.200583,
		-0.802576, 0.150768, 0.577184,
		32.473495, 34.567093, 25.800516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208508, 34.899685, 25.968197>,  <33.035297, 34.461555, 25.396488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208508, 34.899685, 25.968197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882374, 34.688484, 26.063232>,  <32.686695, 34.561764, 26.120253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882374, 34.688484, 26.063232>,  <33.208508, 34.899685, 25.968197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882374, 34.688484, 26.063232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465703, -0.354230, 0.810951,
		-0.344020, 0.771842, 0.534706,
		-0.815335, -0.527997, 0.237587,
		32.637772, 34.530087, 26.134508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984009, 35.130646, 26.681664>,  <33.208508, 34.899685, 25.968197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984009, 35.130646, 26.681664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846451, 34.762844, 26.605513>,  <32.763916, 34.542164, 26.559822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.846451, 34.762844, 26.605513>,  <32.984009, 35.130646, 26.681664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846451, 34.762844, 26.605513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319989, -0.305363, 0.896861,
		-0.882804, 0.247506, 0.399245,
		-0.343894, -0.919507, -0.190377,
		32.743282, 34.486992, 26.548399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390423, 34.947330, 27.164061>,  <32.984009, 35.130646, 26.681664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390423, 34.947330, 27.164061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.547810, 34.605312, 27.028959>,  <32.642242, 34.400101, 26.947899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.547810, 34.605312, 27.028959>,  <32.390423, 34.947330, 27.164061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547810, 34.605312, 27.028959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060767, -0.342394, 0.937589,
		-0.917327, -0.389437, -0.082763,
		0.393469, -0.855047, -0.337752,
		32.665852, 34.348797, 26.927633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215572, 34.550690, 27.731493>,  <32.390423, 34.947330, 27.164061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215572, 34.550690, 27.731493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471420, 34.335567, 27.511803>,  <32.624928, 34.206493, 27.379990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.471420, 34.335567, 27.511803>,  <32.215572, 34.550690, 27.731493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471420, 34.335567, 27.511803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286931, -0.495808, 0.819662,
		-0.713132, -0.681861, -0.162814,
		0.639620, -0.537810, -0.549223,
		32.663307, 34.174225, 27.347036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034424, 33.836452, 27.873646>,  <32.215572, 34.550690, 27.731493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034424, 33.836452, 27.873646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.408092, 33.814297, 27.732645>,  <32.632294, 33.801003, 27.648045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.408092, 33.814297, 27.732645>,  <32.034424, 33.836452, 27.873646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408092, 33.814297, 27.732645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268342, -0.542088, 0.796325,
		-0.235198, -0.838494, -0.491538,
		0.934170, -0.055393, -0.352501,
		32.688343, 33.797680, 27.626894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233570, 33.160793, 27.867704>,  <32.034424, 33.836452, 27.873646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233570, 33.160793, 27.867704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583050, 33.355228, 27.859991>,  <32.792736, 33.471889, 27.855362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.583050, 33.355228, 27.859991>,  <32.233570, 33.160793, 27.867704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583050, 33.355228, 27.859991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245500, -0.406350, 0.880119,
		0.419975, -0.773694, -0.474362,
		0.873700, 0.486084, -0.019285,
		32.845161, 33.501053, 27.854206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881592, 32.628399, 28.056171>,  <32.233570, 33.160793, 27.867704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881592, 32.628399, 28.056171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982517, 33.008209, 28.130726>,  <33.043072, 33.236095, 28.175459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982517, 33.008209, 28.130726>,  <32.881592, 32.628399, 28.056171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982517, 33.008209, 28.130726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411358, -0.279599, 0.867530,
		0.875856, -0.142217, -0.461142,
		0.252312, 0.949526, 0.186386,
		33.058212, 33.293068, 28.186642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641541, 32.593494, 28.244589>,  <32.881592, 32.628399, 28.056171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641541, 32.593494, 28.244589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503162, 32.931652, 28.407375>,  <33.420135, 33.134548, 28.505047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503162, 32.931652, 28.407375>,  <33.641541, 32.593494, 28.244589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503162, 32.931652, 28.407375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505715, -0.197339, 0.839827,
		0.790298, 0.496347, -0.359260,
		-0.345950, 0.845397, 0.406967,
		33.399376, 33.185272, 28.529465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217491, 32.829994, 28.674124>,  <33.641541, 32.593494, 28.244589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217491, 32.829994, 28.674124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921547, 33.063160, 28.808481>,  <33.743980, 33.203060, 28.889095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921547, 33.063160, 28.808481>,  <34.217491, 32.829994, 28.674124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921547, 33.063160, 28.808481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545939, 0.228445, 0.806079,
		0.393139, 0.779762, -0.487251,
		-0.739860, 0.582910, 0.335892,
		33.699589, 33.238033, 28.909248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538055, 33.263226, 28.171497>,  <34.217491, 32.829994, 28.674124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538055, 33.263226, 28.171497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915375, 33.344902, 28.276186>,  <35.141766, 33.393909, 28.338999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915375, 33.344902, 28.276186>,  <34.538055, 33.263226, 28.171497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915375, 33.344902, 28.276186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006428, 0.777041, -0.629417,
		-0.331891, 0.595408, 0.731667,
		0.943296, 0.204195, 0.261721,
		35.198364, 33.406162, 28.354702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538380, 34.005692, 28.343868>,  <34.538055, 33.263226, 28.171497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538380, 34.005692, 28.343868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900726, 33.877316, 28.233297>,  <35.118134, 33.800289, 28.166954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900726, 33.877316, 28.233297>,  <34.538380, 34.005692, 28.343868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900726, 33.877316, 28.233297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014085, 0.629424, -0.776934,
		0.423338, 0.707689, 0.565651,
		0.905862, -0.320939, -0.276427,
		35.172485, 33.781033, 28.150370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957218, 34.568901, 28.167416>,  <34.538380, 34.005692, 28.343868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957218, 34.568901, 28.167416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142307, 34.270649, 27.975613>,  <35.253361, 34.091698, 27.860531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142307, 34.270649, 27.975613>,  <34.957218, 34.568901, 28.167416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142307, 34.270649, 27.975613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161698, 0.602811, -0.781328,
		0.871633, 0.284000, 0.399499,
		0.462720, -0.745629, -0.479508,
		35.281124, 34.046959, 27.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486816, 34.908985, 27.788807>,  <34.957218, 34.568901, 28.167416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486816, 34.908985, 27.788807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469971, 34.551079, 27.610985>,  <35.459862, 34.336334, 27.504292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469971, 34.551079, 27.610985>,  <35.486816, 34.908985, 27.788807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469971, 34.551079, 27.610985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117919, 0.437387, -0.891508,
		0.992129, -0.089970, 0.087088,
		-0.042118, -0.894761, -0.444554,
		35.457336, 34.282650, 27.477619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165897, 34.851402, 27.416115>,  <35.486816, 34.908985, 27.788807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165897, 34.851402, 27.416115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901688, 34.596127, 27.257910>,  <35.743164, 34.442963, 27.162987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901688, 34.596127, 27.257910>,  <36.165897, 34.851402, 27.416115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901688, 34.596127, 27.257910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230776, 0.328711, -0.915801,
		0.714459, -0.696182, -0.069843,
		-0.660523, -0.638185, -0.395513,
		35.703529, 34.404671, 27.139256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569485, 34.456654, 26.884605>,  <36.165897, 34.851402, 27.416115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569485, 34.456654, 26.884605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179031, 34.408585, 26.812254>,  <35.944759, 34.379742, 26.768843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179031, 34.408585, 26.812254>,  <36.569485, 34.456654, 26.884605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179031, 34.408585, 26.812254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180382, 0.015107, -0.983481,
		0.120925, -0.992637, 0.006932,
		-0.976135, -0.120178, -0.180881,
		35.886192, 34.372532, 26.757990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672466, 34.066673, 26.325569>,  <36.569485, 34.456654, 26.884605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672466, 34.066673, 26.325569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302139, 34.217522, 26.315491>,  <36.079941, 34.308029, 26.309444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.302139, 34.217522, 26.315491>,  <36.672466, 34.066673, 26.325569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302139, 34.217522, 26.315491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141684, 0.284484, -0.948153,
		-0.350401, -0.881390, -0.316813,
		-0.925821, 0.377121, -0.025195,
		36.024391, 34.330658, 26.307932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377380, 33.820827, 25.705383>,  <36.672466, 34.066673, 26.325569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377380, 33.820827, 25.705383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167999, 34.150864, 25.790449>,  <36.042370, 34.348885, 25.841490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167999, 34.150864, 25.790449>,  <36.377380, 33.820827, 25.705383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167999, 34.150864, 25.790449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074548, 0.292985, -0.953207,
		-0.848786, -0.483107, -0.214873,
		-0.523455, 0.825086, 0.212667,
		36.010963, 34.398388, 25.854250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961189, 33.876118, 25.163837>,  <36.377380, 33.820827, 25.705383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961189, 33.876118, 25.163837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947090, 34.235264, 25.339380>,  <35.938633, 34.450752, 25.444706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947090, 34.235264, 25.339380>,  <35.961189, 33.876118, 25.163837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947090, 34.235264, 25.339380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235037, 0.419365, -0.876864,
		-0.971347, -0.134051, 0.196252,
		-0.035244, 0.897866, 0.438856,
		35.936516, 34.504623, 25.471037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321690, 34.220535, 24.896667>,  <35.961189, 33.876118, 25.163837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321690, 34.220535, 24.896667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559574, 34.504795, 25.047026>,  <35.702305, 34.675350, 25.137241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.559574, 34.504795, 25.047026>,  <35.321690, 34.220535, 24.896667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559574, 34.504795, 25.047026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241405, 0.603848, -0.759665,
		-0.766836, 0.361041, 0.530670,
		0.594715, 0.710645, 0.375895,
		35.737988, 34.717987, 25.159794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852150, 34.804920, 24.868502>,  <35.321690, 34.220535, 24.896667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852150, 34.804920, 24.868502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230099, 34.933777, 24.891966>,  <35.456867, 35.011089, 24.906044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.230099, 34.933777, 24.891966>,  <34.852150, 34.804920, 24.868502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230099, 34.933777, 24.891966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197509, 0.703613, -0.682582,
		-0.261160, 0.633368, 0.728451,
		0.944873, 0.322139, 0.058660,
		35.513561, 35.030418, 24.909563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802101, 35.477406, 24.991209>,  <34.852150, 34.804920, 24.868502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802101, 35.477406, 24.991209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167305, 35.435143, 24.833599>,  <35.386425, 35.409782, 24.739033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167305, 35.435143, 24.833599>,  <34.802101, 35.477406, 24.991209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167305, 35.435143, 24.833599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236315, 0.650334, -0.721957,
		0.332531, 0.752265, 0.568789,
		0.913005, -0.105660, -0.394027,
		35.441208, 35.403446, 24.715391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990799, 36.102814, 24.905096>,  <34.802101, 35.477406, 24.991209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990799, 36.102814, 24.905096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203300, 35.878250, 24.651299>,  <35.330803, 35.743511, 24.499020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203300, 35.878250, 24.651299>,  <34.990799, 36.102814, 24.905096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203300, 35.878250, 24.651299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208026, 0.639552, -0.740066,
		0.821273, 0.525158, 0.222980,
		0.531259, -0.561411, -0.634493,
		35.362679, 35.709827, 24.460951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321323, 36.541073, 24.580004>,  <34.990799, 36.102814, 24.905096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321323, 36.541073, 24.580004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324669, 36.227638, 24.331514>,  <35.326675, 36.039577, 24.182421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.324669, 36.227638, 24.331514>,  <35.321323, 36.541073, 24.580004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324669, 36.227638, 24.331514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294350, 0.591793, -0.750426,
		0.955661, 0.189135, -0.225698,
		0.008365, -0.783588, -0.621225,
		35.327179, 35.992561, 24.145147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799404, 36.679279, 24.050280>,  <35.321323, 36.541073, 24.580004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799404, 36.679279, 24.050280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574329, 36.379700, 23.910309>,  <35.439285, 36.199951, 23.826326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.574329, 36.379700, 23.910309>,  <35.799404, 36.679279, 24.050280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574329, 36.379700, 23.910309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272606, 0.567730, -0.776768,
		0.780427, -0.341688, -0.523626,
		-0.562691, -0.748954, -0.349926,
		35.405521, 36.155014, 23.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800037, 36.845684, 23.424774>,  <35.799404, 36.679279, 24.050280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800037, 36.845684, 23.424774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518162, 36.561878, 23.424429>,  <35.349037, 36.391594, 23.424223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518162, 36.561878, 23.424429>,  <35.800037, 36.845684, 23.424774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518162, 36.561878, 23.424429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394325, 0.392653, -0.830862,
		0.589847, -0.585160, -0.556478,
		-0.704690, -0.709515, -0.000862,
		35.306755, 36.349026, 23.424170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777653, 36.459129, 22.735209>,  <35.800037, 36.845684, 23.424774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777653, 36.459129, 22.735209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418339, 36.441135, 22.910051>,  <35.202751, 36.430340, 23.014957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418339, 36.441135, 22.910051>,  <35.777653, 36.459129, 22.735209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418339, 36.441135, 22.910051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422187, 0.364181, -0.830139,
		-0.121841, -0.930241, -0.346130,
		-0.898283, -0.044986, 0.437108,
		35.148853, 36.427639, 23.041183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410725, 36.299492, 22.186213>,  <35.777653, 36.459129, 22.735209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410725, 36.299492, 22.186213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133293, 36.419662, 22.448112>,  <34.966835, 36.491764, 22.605253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133293, 36.419662, 22.448112>,  <35.410725, 36.299492, 22.186213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133293, 36.419662, 22.448112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452390, 0.525684, -0.720416,
		-0.560621, -0.795866, -0.228693,
		-0.693575, 0.300422, 0.654752,
		34.925220, 36.509789, 22.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774933, 36.031960, 21.922939>,  <35.410725, 36.299492, 22.186213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774933, 36.031960, 21.922939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682854, 36.329636, 22.173756>,  <34.627605, 36.508244, 22.324245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.682854, 36.329636, 22.173756>,  <34.774933, 36.031960, 21.922939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682854, 36.329636, 22.173756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686365, 0.332615, -0.646738,
		-0.689863, -0.579259, 0.434221,
		-0.230200, 0.744195, 0.627042,
		34.613792, 36.552895, 22.361868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.004551, 36.168911, 21.738966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129234, 36.494827, 21.934496>,  <34.204044, 36.690376, 22.051815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.129234, 36.494827, 21.934496>,  <34.004551, 36.168911, 21.738966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129234, 36.494827, 21.934496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663368, 0.554940, -0.501981,
		-0.680279, -0.167798, 0.713487,
		0.311711, 0.814792, 0.488826,
		34.222748, 36.739265, 22.081144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444099, 36.581577, 21.916899>,  <34.004551, 36.168911, 21.738966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444099, 36.581577, 21.916899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757164, 36.829956, 21.934214>,  <33.945004, 36.978981, 21.944603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.757164, 36.829956, 21.934214>,  <33.444099, 36.581577, 21.916899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757164, 36.829956, 21.934214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532558, 0.704010, -0.469843,
		-0.322221, 0.344674, 0.881688,
		0.782660, 0.620943, 0.043288,
		33.991962, 37.016239, 21.947201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148720, 37.204891, 22.060053>,  <33.444099, 36.581577, 21.916899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148720, 37.204891, 22.060053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516239, 37.276810, 21.919493>,  <33.736752, 37.319962, 21.835155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516239, 37.276810, 21.919493>,  <33.148720, 37.204891, 22.060053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516239, 37.276810, 21.919493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346315, 0.794360, -0.499058,
		0.189412, 0.580229, 0.792122,
		0.918798, 0.179796, -0.351403,
		33.791878, 37.330750, 21.814072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347916, 37.897808, 22.147264>,  <33.148720, 37.204891, 22.060053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347916, 37.897808, 22.147264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596664, 37.797504, 21.850510>,  <33.745914, 37.737324, 21.672457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596664, 37.797504, 21.850510>,  <33.347916, 37.897808, 22.147264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596664, 37.797504, 21.850510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208280, 0.860269, -0.465357,
		0.754912, 0.443913, 0.482751,
		0.621874, -0.250757, -0.741885,
		33.783226, 37.722279, 21.627945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521935, 38.577599, 21.895275>,  <33.347916, 37.897808, 22.147264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521935, 38.577599, 21.895275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613575, 38.311478, 21.611053>,  <33.668560, 38.151806, 21.440521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613575, 38.311478, 21.611053>,  <33.521935, 38.577599, 21.895275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613575, 38.311478, 21.611053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352080, 0.623908, -0.697695,
		0.907499, 0.410012, -0.091304,
		0.229098, -0.665304, -0.710552,
		33.682304, 38.111885, 21.397888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838287, 38.985569, 21.378876>,  <33.521935, 38.577599, 21.895275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838287, 38.985569, 21.378876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722076, 38.649410, 21.195864>,  <33.652348, 38.447716, 21.086056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722076, 38.649410, 21.195864>,  <33.838287, 38.985569, 21.378876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722076, 38.649410, 21.195864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477574, 0.541695, -0.691730,
		0.829166, 0.017537, -0.558727,
		-0.290529, -0.840392, -0.457530,
		33.634918, 38.397293, 21.058605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102997, 38.943863, 20.604748>,  <33.838287, 38.985569, 21.378876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102997, 38.943863, 20.604748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778431, 38.710106, 20.601030>,  <33.583691, 38.569851, 20.598801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778431, 38.710106, 20.601030>,  <34.102997, 38.943863, 20.604748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778431, 38.710106, 20.601030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305058, 0.437023, -0.846139,
		0.498543, -0.683734, -0.532881,
		-0.811415, -0.584396, -0.009296,
		33.535007, 38.534786, 20.598242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916744, 38.930222, 19.861406>,  <34.102997, 38.943863, 20.604748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916744, 38.930222, 19.861406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.599365, 38.763142, 20.038477>,  <33.408939, 38.662891, 20.144720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.599365, 38.763142, 20.038477>,  <33.916744, 38.930222, 19.861406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599365, 38.763142, 20.038477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549359, 0.178410, -0.816317,
		0.262004, -0.890893, -0.371030,
		-0.793447, -0.417708, 0.442676,
		33.361332, 38.637829, 20.171280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624382, 38.533649, 19.354994>,  <33.916744, 38.930222, 19.861406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624382, 38.533649, 19.354994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343273, 38.615273, 19.627602>,  <33.174606, 38.664246, 19.791166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343273, 38.615273, 19.627602>,  <33.624382, 38.533649, 19.354994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343273, 38.615273, 19.627602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592930, 0.361363, -0.719619,
		-0.393123, -0.909822, -0.132961,
		-0.702772, 0.204063, 0.681520,
		33.132442, 38.676491, 19.832058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042435, 38.211430, 19.159739>,  <33.624382, 38.533649, 19.354994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042435, 38.211430, 19.159739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955223, 38.537483, 19.374411>,  <32.902897, 38.733116, 19.503214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955223, 38.537483, 19.374411>,  <33.042435, 38.211430, 19.159739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955223, 38.537483, 19.374411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563085, 0.344081, -0.751361,
		-0.797119, -0.466015, 0.383968,
		-0.218030, 0.815131, 0.536680,
		32.889812, 38.782021, 19.535414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319920, 38.174904, 19.067451>,  <33.042435, 38.211430, 19.159739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319920, 38.174904, 19.067451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416550, 38.550659, 19.164774>,  <32.474525, 38.776112, 19.223167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416550, 38.550659, 19.164774>,  <32.319920, 38.174904, 19.067451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416550, 38.550659, 19.164774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694373, 0.342486, -0.632889,
		-0.677856, -0.016055, 0.735020,
		0.241573, 0.939386, 0.243304,
		32.489021, 38.832474, 19.237764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789667, 38.538033, 18.957289>,  <32.319920, 38.174904, 19.067451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789667, 38.538033, 18.957289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047421, 38.843060, 18.980145>,  <32.202072, 39.026073, 18.993858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047421, 38.843060, 18.980145>,  <31.789667, 38.538033, 18.957289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047421, 38.843060, 18.980145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587177, 0.541276, -0.601867,
		-0.489889, 0.354284, 0.796550,
		0.644385, 0.762564, 0.057138,
		32.240734, 39.071827, 18.997286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435663, 39.187984, 19.210135>,  <31.789667, 38.538033, 18.957289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435663, 39.187984, 19.210135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766539, 39.318047, 19.026815>,  <31.965063, 39.396084, 18.916824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.766539, 39.318047, 19.026815>,  <31.435663, 39.187984, 19.210135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766539, 39.318047, 19.026815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561782, 0.460013, -0.687597,
		-0.012754, 0.826234, 0.563183,
		0.827187, 0.325156, -0.458296,
		32.014694, 39.415592, 18.889326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243132, 39.874851, 18.968884>,  <31.435663, 39.187984, 19.210135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243132, 39.874851, 18.968884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593456, 39.836494, 18.779669>,  <31.803650, 39.813480, 18.666140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593456, 39.836494, 18.779669>,  <31.243132, 39.874851, 18.968884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593456, 39.836494, 18.779669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349977, 0.548743, -0.759208,
		0.332373, 0.830474, 0.447036,
		0.875810, -0.095888, -0.473035,
		31.856199, 39.807728, 18.637758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364511, 40.483902, 18.670349>,  <31.243132, 39.874851, 18.968884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364511, 40.483902, 18.670349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628063, 40.262802, 18.466253>,  <31.786194, 40.130142, 18.343796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.628063, 40.262802, 18.466253>,  <31.364511, 40.483902, 18.670349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628063, 40.262802, 18.466253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122617, 0.590300, -0.797816,
		0.742189, 0.588228, 0.321158,
		0.658877, -0.552751, -0.510241,
		31.825726, 40.096977, 18.313181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884600, 40.940712, 18.405952>,  <31.364511, 40.483902, 18.670349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884600, 40.940712, 18.405952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816528, 40.616318, 18.182045>,  <31.775686, 40.421680, 18.047701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.816528, 40.616318, 18.182045>,  <31.884600, 40.940712, 18.405952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816528, 40.616318, 18.182045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069027, 0.576471, -0.814197,
		0.982993, -0.099920, -0.154083,
		-0.170179, -0.810985, -0.559770,
		31.765474, 40.373024, 18.014114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069782, 41.147678, 17.743267>,  <31.884600, 40.940712, 18.405952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069782, 41.147678, 17.743267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927956, 40.788479, 17.639050>,  <31.842859, 40.572960, 17.576519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927956, 40.788479, 17.639050>,  <32.069782, 41.147678, 17.743267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927956, 40.788479, 17.639050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106477, 0.315612, -0.942895,
		0.928948, -0.306578, -0.207522,
		-0.354567, -0.897997, -0.260544,
		31.821585, 40.519081, 17.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461117, 40.898418, 17.071156>,  <32.069782, 41.147678, 17.743267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461117, 40.898418, 17.071156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105564, 40.716667, 17.094603>,  <31.892233, 40.607616, 17.108671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105564, 40.716667, 17.094603>,  <32.461117, 40.898418, 17.071156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105564, 40.716667, 17.094603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316107, 0.515655, -0.796352,
		0.331614, -0.726392, -0.601986,
		-0.888881, -0.454373, 0.058619,
		31.838900, 40.580357, 17.112188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168308, 40.636440, 16.398306>,  <32.461117, 40.898418, 17.071156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168308, 40.636440, 16.398306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845001, 40.658512, 16.632793>,  <31.651016, 40.671757, 16.773485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.845001, 40.658512, 16.632793>,  <32.168308, 40.636440, 16.398306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845001, 40.658512, 16.632793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418797, 0.645960, -0.638236,
		-0.413892, -0.761375, -0.499001,
		-0.808271, 0.055181, 0.586219,
		31.602520, 40.675068, 16.808659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520494, 40.496231, 15.933760>,  <32.168308, 40.636440, 16.398306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520494, 40.496231, 15.933760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426725, 40.680767, 16.276037>,  <31.370464, 40.791489, 16.481403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426725, 40.680767, 16.276037>,  <31.520494, 40.496231, 15.933760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426725, 40.680767, 16.276037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410390, 0.750979, -0.517311,
		-0.881263, -0.472439, 0.013281,
		-0.234424, 0.461337, 0.855694,
		31.356398, 40.819168, 16.532745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751593, 40.601166, 16.018099>,  <31.520494, 40.496231, 15.933760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751593, 40.601166, 16.018099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936081, 40.895679, 16.216156>,  <31.046774, 41.072388, 16.334990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936081, 40.895679, 16.216156>,  <30.751593, 40.601166, 16.018099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936081, 40.895679, 16.216156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564237, 0.674056, -0.476745,
		-0.684771, -0.059492, 0.726326,
		0.461222, 0.736281, 0.495141,
		31.074448, 41.116562, 16.364698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221287, 41.108707, 16.195383>,  <30.751593, 40.601166, 16.018099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221287, 41.108707, 16.195383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561905, 41.312222, 16.245987>,  <30.766275, 41.434330, 16.276350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561905, 41.312222, 16.245987>,  <30.221287, 41.108707, 16.195383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561905, 41.312222, 16.245987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454084, 0.836354, -0.307117,
		-0.262065, 0.204077, 0.943225,
		0.851546, 0.508788, 0.126511,
		30.817369, 41.464859, 16.283941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211529, 41.545612, 16.672771>,  <30.221287, 41.108707, 16.195383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211529, 41.545612, 16.672771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489225, 41.718880, 16.442852>,  <30.655844, 41.822842, 16.304901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489225, 41.718880, 16.442852>,  <30.211529, 41.545612, 16.672771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489225, 41.718880, 16.442852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555671, 0.830154, -0.045536,
		0.457445, 0.351011, 0.817028,
		0.694243, 0.433169, -0.574797,
		30.697498, 41.848831, 16.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370832, 42.151573, 17.005827>,  <30.211529, 41.545612, 16.672771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370832, 42.151573, 17.005827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378626, 42.113407, 16.607729>,  <30.383303, 42.090508, 16.368870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378626, 42.113407, 16.607729>,  <30.370832, 42.151573, 17.005827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378626, 42.113407, 16.607729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639173, 0.764264, -0.085782,
		0.768816, 0.637806, -0.046093,
		0.019485, -0.095412, -0.995247,
		30.384472, 42.084782, 16.309155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888973, 42.665245, 17.314327>,  <30.370832, 42.151573, 17.005827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888973, 42.665245, 17.314327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524874, 42.781227, 17.432564>,  <30.306414, 42.850815, 17.503506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524874, 42.781227, 17.432564>,  <30.888973, 42.665245, 17.314327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524874, 42.781227, 17.432564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174983, -0.377633, 0.909271,
		0.375274, 0.879386, 0.293002,
		-0.910247, 0.289956, 0.295594,
		30.251799, 42.868214, 17.521242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962046, 42.966240, 17.933800>,  <30.888973, 42.665245, 17.314327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962046, 42.966240, 17.933800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572653, 42.874741, 17.933216>,  <30.339016, 42.819839, 17.932865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572653, 42.874741, 17.933216>,  <30.962046, 42.966240, 17.933800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572653, 42.874741, 17.933216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109739, -0.472598, 0.874419,
		-0.200714, 0.851072, 0.485170,
		-0.973484, -0.228750, -0.001461,
		30.280607, 42.806114, 17.932777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723957, 43.162357, 18.541412>,  <30.962046, 42.966240, 17.933800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723957, 43.162357, 18.541412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450003, 42.897686, 18.419352>,  <30.285629, 42.738884, 18.346115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.450003, 42.897686, 18.419352>,  <30.723957, 43.162357, 18.541412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450003, 42.897686, 18.419352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088138, -0.490947, 0.866719,
		-0.723300, 0.566708, 0.394561,
		-0.684886, -0.661674, -0.305154,
		30.244537, 42.699184, 18.327805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245995, 43.115231, 19.134125>,  <30.723957, 43.162357, 18.541412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245995, 43.115231, 19.134125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177015, 42.787357, 18.915628>,  <30.135628, 42.590633, 18.784531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.177015, 42.787357, 18.915628>,  <30.245995, 43.115231, 19.134125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177015, 42.787357, 18.915628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105139, -0.566699, 0.817189,
		-0.979391, 0.083493, 0.183908,
		-0.172450, -0.819683, -0.546242,
		30.125280, 42.541451, 18.751757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851280, 42.693336, 19.499233>,  <30.245995, 43.115231, 19.134125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851280, 42.693336, 19.499233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984913, 42.427166, 19.232220>,  <30.065092, 42.267464, 19.072012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984913, 42.427166, 19.232220>,  <29.851280, 42.693336, 19.499233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984913, 42.427166, 19.232220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133908, -0.667533, 0.732440,
		-0.932983, -0.334084, -0.133906,
		0.334083, -0.665422, -0.667534,
		30.085138, 42.227539, 19.031960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453587, 42.067448, 19.553238>,  <29.851280, 42.693336, 19.499233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453587, 42.067448, 19.553238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805201, 41.982498, 19.382500>,  <30.016169, 41.931530, 19.280056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805201, 41.982498, 19.382500>,  <29.453587, 42.067448, 19.553238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805201, 41.982498, 19.382500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172301, -0.693285, 0.699763,
		-0.444534, -0.688662, -0.572830,
		0.879034, -0.212369, -0.426847,
		30.068911, 41.918789, 19.254446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389915, 41.356911, 19.561213>,  <29.453587, 42.067448, 19.553238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389915, 41.356911, 19.561213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.775402, 41.457531, 19.525505>,  <30.006695, 41.517902, 19.504082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.775402, 41.457531, 19.525505>,  <29.389915, 41.356911, 19.561213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775402, 41.457531, 19.525505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258019, -0.792289, 0.552906,
		0.068358, -0.555878, -0.828448,
		0.963719, 0.251551, -0.089268,
		30.064518, 41.532997, 19.498724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717564, 40.747906, 19.788914>,  <29.389915, 41.356911, 19.561213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717564, 40.747906, 19.788914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010412, 41.020355, 19.785702>,  <30.186121, 41.183826, 19.783775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010412, 41.020355, 19.785702>,  <29.717564, 40.747906, 19.788914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010412, 41.020355, 19.785702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480055, -0.507559, 0.715494,
		0.483268, -0.527683, -0.698573,
		0.732120, 0.681128, -0.008030,
		30.230049, 41.224693, 19.783293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227100, 40.262653, 19.576530>,  <29.717564, 40.747906, 19.788914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227100, 40.262653, 19.576530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395014, 40.596958, 19.718111>,  <30.495762, 40.797543, 19.803061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395014, 40.596958, 19.718111>,  <30.227100, 40.262653, 19.576530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395014, 40.596958, 19.718111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307002, -0.497742, 0.811174,
		0.854125, -0.231855, -0.465525,
		0.419786, 0.835761, 0.353954,
		30.520950, 40.847687, 19.824297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923143, 40.100628, 19.641495>,  <30.227100, 40.262653, 19.576530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923143, 40.100628, 19.641495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846659, 40.389168, 19.907753>,  <30.800768, 40.562294, 20.067509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.846659, 40.389168, 19.907753>,  <30.923143, 40.100628, 19.641495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846659, 40.389168, 19.907753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273434, -0.612169, 0.741945,
		0.942694, 0.323879, -0.080189,
		-0.191211, 0.721354, 0.665648,
		30.789295, 40.605576, 20.107447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552834, 40.302265, 20.058065>,  <30.923143, 40.100628, 19.641495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552834, 40.302265, 20.058065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245298, 40.407772, 20.291069>,  <31.060778, 40.471077, 20.430872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245298, 40.407772, 20.291069>,  <31.552834, 40.302265, 20.058065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245298, 40.407772, 20.291069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287264, -0.671389, 0.683167,
		0.571288, 0.692577, 0.440417,
		-0.768837, 0.263769, 0.582508,
		31.014647, 40.486904, 20.465822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801287, 40.320702, 20.765846>,  <31.552834, 40.302265, 20.058065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801287, 40.320702, 20.765846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404678, 40.285301, 20.803915>,  <31.166714, 40.264061, 20.826756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.404678, 40.285301, 20.803915>,  <31.801287, 40.320702, 20.765846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404678, 40.285301, 20.803915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127448, -0.805516, 0.578706,
		0.025443, 0.585927, 0.809964,
		-0.991519, -0.088504, 0.095170,
		31.107224, 40.258751, 20.832466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686003, 40.337215, 21.477819>,  <31.801287, 40.320702, 20.765846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686003, 40.337215, 21.477819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360929, 40.160812, 21.325474>,  <31.165886, 40.054970, 21.234066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360929, 40.160812, 21.325474>,  <31.686003, 40.337215, 21.477819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360929, 40.160812, 21.325474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037845, -0.692185, 0.720728,
		-0.581474, 0.571310, 0.579217,
		-0.812684, -0.441005, -0.380866,
		31.117125, 40.028511, 21.211214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437498, 39.984665, 22.043755>,  <31.686003, 40.337215, 21.477819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437498, 39.984665, 22.043755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202312, 39.824978, 21.762352>,  <31.061201, 39.729164, 21.593510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.202312, 39.824978, 21.762352>,  <31.437498, 39.984665, 22.043755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202312, 39.824978, 21.762352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023983, -0.860735, 0.508487,
		-0.808532, 0.315845, 0.496507,
		-0.587964, -0.399220, -0.703507,
		31.025923, 39.705212, 21.551300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793776, 39.631599, 22.450056>,  <31.437498, 39.984665, 22.043755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793776, 39.631599, 22.450056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868618, 39.450264, 22.101465>,  <30.913525, 39.341461, 21.892311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868618, 39.450264, 22.101465>,  <30.793776, 39.631599, 22.450056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868618, 39.450264, 22.101465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010743, -0.888037, 0.459647,
		-0.982281, -0.076641, -0.171029,
		0.187108, -0.453340, -0.871478,
		30.924749, 39.314262, 21.840021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362280, 39.046024, 22.467899>,  <30.793776, 39.631599, 22.450056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362280, 39.046024, 22.467899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615250, 38.976730, 22.165897>,  <30.767031, 38.935154, 21.984697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.615250, 38.976730, 22.165897>,  <30.362280, 39.046024, 22.467899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615250, 38.976730, 22.165897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130951, -0.936734, 0.324624,
		-0.763475, -0.304168, -0.569727,
		0.632423, -0.173236, -0.755004,
		30.804976, 38.924759, 21.939396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151693, 38.479755, 22.115589>,  <30.362280, 39.046024, 22.467899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151693, 38.479755, 22.115589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548693, 38.502804, 22.072451>,  <30.786892, 38.516632, 22.046568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.548693, 38.502804, 22.072451>,  <30.151693, 38.479755, 22.115589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548693, 38.502804, 22.072451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093491, -0.926054, 0.365629,
		-0.078807, -0.372968, -0.924491,
		0.992496, 0.057618, -0.107848,
		30.846441, 38.520088, 22.040096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323290, 37.731968, 21.819527>,  <30.151693, 38.479755, 22.115589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323290, 37.731968, 21.819527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659754, 37.902470, 21.952644>,  <30.861631, 38.004772, 22.032515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659754, 37.902470, 21.952644>,  <30.323290, 37.731968, 21.819527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659754, 37.902470, 21.952644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322549, -0.889402, 0.323924,
		0.434064, -0.165130, -0.885619,
		0.841160, 0.426259, 0.332795,
		30.912102, 38.030346, 22.052483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729218, 37.293961, 21.614920>,  <30.323290, 37.731968, 21.819527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729218, 37.293961, 21.614920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876503, 37.505314, 21.920921>,  <30.964874, 37.632126, 22.104523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876503, 37.505314, 21.920921>,  <30.729218, 37.293961, 21.614920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876503, 37.505314, 21.920921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161660, -0.846666, 0.506975,
		0.915579, -0.063005, -0.397173,
		0.368215, 0.528382, 0.765004,
		30.986967, 37.663830, 22.150423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250690, 36.941624, 21.724346>,  <30.729218, 37.293961, 21.614920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250690, 36.941624, 21.724346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206553, 37.163292, 22.054371>,  <31.180069, 37.296291, 22.252386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206553, 37.163292, 22.054371>,  <31.250690, 36.941624, 21.724346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206553, 37.163292, 22.054371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259974, -0.785134, 0.562120,
		0.959290, 0.276522, -0.057432,
		-0.110346, 0.554167, 0.825059,
		31.173449, 37.329540, 22.301889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.127857, 34.940662, 23.754631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.896309, 35.193676, 23.960470>,  <35.757378, 35.345482, 24.083973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.896309, 35.193676, 23.960470>,  <36.127857, 34.940662, 23.754631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896309, 35.193676, 23.960470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452316, -0.276009, 0.848074,
		0.678466, 0.723688, -0.126330,
		-0.578873, 0.632530, 0.514598,
		35.722649, 35.383434, 24.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631413, 35.178680, 24.282167>,  <36.127857, 34.940662, 23.754631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631413, 35.178680, 24.282167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265984, 35.268536, 24.417774>,  <36.046726, 35.322449, 24.499138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265984, 35.268536, 24.417774>,  <36.631413, 35.178680, 24.282167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265984, 35.268536, 24.417774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243319, -0.366033, 0.898229,
		0.325866, 0.903083, 0.279738,
		-0.913568, 0.224637, 0.339015,
		35.991913, 35.335926, 24.519478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697205, 35.495838, 24.997604>,  <36.631413, 35.178680, 24.282167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697205, 35.495838, 24.997604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323845, 35.354080, 24.975054>,  <36.099831, 35.269028, 24.961523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323845, 35.354080, 24.975054>,  <36.697205, 35.495838, 24.997604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323845, 35.354080, 24.975054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081022, -0.361179, 0.928970,
		-0.349582, 0.862529, 0.365837,
		-0.933396, -0.354392, -0.056378,
		36.043827, 35.247761, 24.958141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489330, 35.743198, 25.550566>,  <36.697205, 35.495838, 24.997604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489330, 35.743198, 25.550566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.277107, 35.424160, 25.435781>,  <36.149773, 35.232738, 25.366911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.277107, 35.424160, 25.435781>,  <36.489330, 35.743198, 25.550566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277107, 35.424160, 25.435781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080803, -0.384586, 0.919546,
		-0.843788, 0.464686, 0.268494,
		-0.530559, -0.797597, -0.286961,
		36.117939, 35.184879, 25.349693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969067, 35.669006, 26.069197>,  <36.489330, 35.743198, 25.550566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969067, 35.669006, 26.069197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998184, 35.314915, 25.885426>,  <36.015656, 35.102459, 25.775164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998184, 35.314915, 25.885426>,  <35.969067, 35.669006, 26.069197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998184, 35.314915, 25.885426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056020, -0.463551, 0.884298,
		-0.995772, -0.038638, -0.083336,
		0.072798, -0.885228, -0.459427,
		36.020023, 35.049347, 25.747597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337837, 35.381355, 26.221813>,  <35.969067, 35.669006, 26.069197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337837, 35.381355, 26.221813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573723, 35.080742, 26.103533>,  <35.715252, 34.900375, 26.032564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.573723, 35.080742, 26.103533>,  <35.337837, 35.381355, 26.221813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573723, 35.080742, 26.103533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390824, -0.585972, 0.709854,
		-0.706750, -0.303043, -0.639272,
		0.589712, -0.751533, -0.295700,
		35.750637, 34.855282, 26.014822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845840, 34.878033, 26.169067>,  <35.337837, 35.381355, 26.221813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845840, 34.878033, 26.169067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209793, 34.727917, 26.239798>,  <35.428165, 34.637848, 26.282236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209793, 34.727917, 26.239798>,  <34.845840, 34.878033, 26.169067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209793, 34.727917, 26.239798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350188, -0.466249, 0.812392,
		-0.222439, -0.801104, -0.555655,
		0.909884, -0.375292, 0.176825,
		35.482758, 34.615330, 26.292845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653244, 34.135674, 26.380888>,  <34.845840, 34.878033, 26.169067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653244, 34.135674, 26.380888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033875, 34.210300, 26.478617>,  <35.262253, 34.255077, 26.537254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.033875, 34.210300, 26.478617>,  <34.653244, 34.135674, 26.380888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033875, 34.210300, 26.478617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072144, -0.637055, 0.767435,
		0.298823, -0.747900, -0.592748,
		0.951578, 0.186564, 0.244324,
		35.319347, 34.266270, 26.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001926, 33.459221, 26.479752>,  <34.653244, 34.135674, 26.380888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001926, 33.459221, 26.479752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216797, 33.736103, 26.672537>,  <35.345718, 33.902233, 26.788208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.216797, 33.736103, 26.672537>,  <35.001926, 33.459221, 26.479752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216797, 33.736103, 26.672537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025936, -0.557578, 0.829720,
		0.843071, -0.458206, -0.281564,
		0.537176, 0.692210, 0.481962,
		35.377949, 33.943768, 26.817125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443687, 33.157181, 26.862410>,  <35.001926, 33.459221, 26.479752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443687, 33.157181, 26.862410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.447037, 33.504147, 27.061413>,  <35.449047, 33.712326, 27.180815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.447037, 33.504147, 27.061413>,  <35.443687, 33.157181, 26.862410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447037, 33.504147, 27.061413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037789, -0.497447, 0.866671,
		0.999251, 0.011542, -0.036945,
		0.008375, 0.867418, 0.497510,
		35.449551, 33.764374, 27.210667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963612, 33.077923, 27.321785>,  <35.443687, 33.157181, 26.862410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963612, 33.077923, 27.321785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723305, 33.364414, 27.463825>,  <35.579121, 33.536308, 27.549049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723305, 33.364414, 27.463825>,  <35.963612, 33.077923, 27.321785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723305, 33.364414, 27.463825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037216, -0.418654, 0.907383,
		0.798560, 0.558338, 0.224856,
		-0.600763, 0.716232, 0.355099,
		35.543076, 33.579285, 27.570354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415722, 33.481689, 27.855364>,  <35.963612, 33.077923, 27.321785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415722, 33.481689, 27.855364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035946, 33.564491, 27.949787>,  <35.808083, 33.614170, 28.006441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035946, 33.564491, 27.949787>,  <36.415722, 33.481689, 27.855364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035946, 33.564491, 27.949787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148812, -0.365341, 0.918902,
		0.276455, 0.907566, 0.316064,
		-0.949435, 0.207001, 0.236057,
		35.751114, 33.626591, 28.020605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432774, 33.612183, 28.530481>,  <36.415722, 33.481689, 27.855364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432774, 33.612183, 28.530481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045540, 33.528976, 28.474564>,  <35.813198, 33.479053, 28.441013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.045540, 33.528976, 28.474564>,  <36.432774, 33.612183, 28.530481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045540, 33.528976, 28.474564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001050, -0.554415, 0.832240,
		-0.250619, 0.805826, 0.536503,
		-0.968085, -0.208012, -0.139793,
		35.755116, 33.466572, 28.432627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001808, 34.025288, 28.893087>,  <36.432774, 33.612183, 28.530481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001808, 34.025288, 28.893087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823982, 33.672989, 28.827789>,  <35.717289, 33.461609, 28.788610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823982, 33.672989, 28.827789>,  <36.001808, 34.025288, 28.893087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823982, 33.672989, 28.827789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084694, -0.222756, 0.971188,
		-0.891735, 0.417928, 0.173623,
		-0.444562, -0.880747, -0.163243,
		35.690613, 33.408764, 28.778816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562561, 34.187283, 29.434736>,  <36.001808, 34.025288, 28.893087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562561, 34.187283, 29.434736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943352, 34.235706, 29.547222>,  <37.171825, 34.264763, 29.614714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943352, 34.235706, 29.547222>,  <36.562561, 34.187283, 29.434736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943352, 34.235706, 29.547222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055329, 0.971407, -0.230885,
		-0.301123, 0.204238, 0.931457,
		0.951979, 0.121061, 0.281213,
		37.228947, 34.272026, 29.631586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696861, 34.730934, 29.976774>,  <36.562561, 34.187283, 29.434736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696861, 34.730934, 29.976774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044594, 34.706112, 29.780645>,  <37.253231, 34.691219, 29.662968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044594, 34.706112, 29.780645>,  <36.696861, 34.730934, 29.976774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044594, 34.706112, 29.780645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068569, 0.967349, -0.243998,
		0.489454, 0.245735, 0.836689,
		0.869329, -0.062055, -0.490322,
		37.305393, 34.687496, 29.633549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850487, 35.388161, 29.841497>,  <36.696861, 34.730934, 29.976774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850487, 35.388161, 29.841497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114723, 35.231823, 29.585102>,  <37.273266, 35.138020, 29.431265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114723, 35.231823, 29.585102>,  <36.850487, 35.388161, 29.841497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114723, 35.231823, 29.585102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068927, 0.818614, -0.570193,
		0.747579, 0.420844, 0.513825,
		0.660587, -0.390848, -0.640986,
		37.312901, 35.114567, 29.392807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399742, 35.829876, 29.843615>,  <36.850487, 35.388161, 29.841497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399742, 35.829876, 29.843615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372917, 35.637939, 29.493698>,  <37.356823, 35.522778, 29.283749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372917, 35.637939, 29.493698>,  <37.399742, 35.829876, 29.843615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372917, 35.637939, 29.493698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137318, 0.872858, -0.468254,
		0.988254, 0.088721, -0.124428,
		-0.067064, -0.479840, -0.874789,
		37.352798, 35.493988, 29.231262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809338, 36.166355, 29.307743>,  <37.399742, 35.829876, 29.843615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809338, 36.166355, 29.307743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573994, 35.937702, 29.078981>,  <37.432789, 35.800510, 28.941725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.573994, 35.937702, 29.078981>,  <37.809338, 36.166355, 29.307743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573994, 35.937702, 29.078981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240504, 0.798979, -0.551172,
		0.772004, -0.186743, -0.607567,
		-0.588361, -0.571629, -0.571902,
		37.397488, 35.766212, 28.907410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849987, 36.421844, 28.728756>,  <37.809338, 36.166355, 29.307743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849987, 36.421844, 28.728756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514217, 36.206280, 28.700619>,  <37.312756, 36.076942, 28.683737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514217, 36.206280, 28.700619>,  <37.849987, 36.421844, 28.728756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514217, 36.206280, 28.700619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449470, 0.761138, -0.467596,
		0.305534, -0.360892, -0.881139,
		-0.839420, -0.538912, -0.070343,
		37.262390, 36.044605, 28.679516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768429, 36.562775, 28.034945>,  <37.849987, 36.421844, 28.728756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768429, 36.562775, 28.034945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421661, 36.407772, 28.160347>,  <37.213600, 36.314770, 28.235588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.421661, 36.407772, 28.160347>,  <37.768429, 36.562775, 28.034945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421661, 36.407772, 28.160347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498237, 0.691890, -0.522541,
		-0.014422, -0.609202, -0.792884,
		-0.866921, -0.387508, 0.313505,
		37.161587, 36.291519, 28.254398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247295, 36.432175, 27.435345>,  <37.768429, 36.562775, 28.034945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247295, 36.432175, 27.435345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023628, 36.470181, 27.764782>,  <36.889427, 36.492985, 27.962444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.023628, 36.470181, 27.764782>,  <37.247295, 36.432175, 27.435345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023628, 36.470181, 27.764782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679320, 0.516952, -0.520850,
		-0.475246, -0.850725, -0.224517,
		-0.559165, 0.095013, 0.823594,
		36.855877, 36.498684, 28.011860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608601, 36.351143, 27.201571>,  <37.247295, 36.432175, 27.435345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608601, 36.351143, 27.201571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564552, 36.554264, 27.543333>,  <36.538124, 36.676136, 27.748390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.564552, 36.554264, 27.543333>,  <36.608601, 36.351143, 27.201571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564552, 36.554264, 27.543333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572919, 0.670022, -0.472053,
		-0.812181, -0.541488, 0.217147,
		-0.110118, 0.507800, 0.854408,
		36.531517, 36.706604, 27.799656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875843, 36.507793, 27.235876>,  <36.608601, 36.351143, 27.201571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875843, 36.507793, 27.235876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027336, 36.784843, 27.481424>,  <36.118233, 36.951073, 27.628754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027336, 36.784843, 27.481424>,  <35.875843, 36.507793, 27.235876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027336, 36.784843, 27.481424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401824, 0.720561, -0.565092,
		-0.833727, -0.032651, 0.551210,
		0.378730, 0.692623, 0.613871,
		36.140957, 36.992630, 27.665586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318459, 37.021320, 27.404833>,  <35.875843, 36.507793, 27.235876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318459, 37.021320, 27.404833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669418, 37.203289, 27.465782>,  <35.879993, 37.312469, 27.502352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669418, 37.203289, 27.465782>,  <35.318459, 37.021320, 27.404833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669418, 37.203289, 27.465782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292010, 0.758378, -0.582746,
		-0.380660, 0.466806, 0.798242,
		0.877398, 0.454923, 0.152372,
		35.932636, 37.339767, 27.511494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060940, 37.732426, 27.554607>,  <35.318459, 37.021320, 27.404833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060940, 37.732426, 27.554607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 37.746914, 27.445320>,  <35.676151, 37.755608, 27.379747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445446, 37.746914, 27.445320>,  <35.060940, 37.732426, 27.554607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445446, 37.746914, 27.445320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207157, 0.748826, -0.629560,
		0.181787, 0.661776, 0.727328,
		0.961270, 0.036225, -0.273218,
		35.733826, 37.757782, 27.363356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209461, 38.366177, 27.447363>,  <35.060940, 37.732426, 27.554607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209461, 38.366177, 27.447363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513378, 38.195244, 27.251366>,  <35.695728, 38.092682, 27.133768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.513378, 38.195244, 27.251366>,  <35.209461, 38.366177, 27.447363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513378, 38.195244, 27.251366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055386, 0.708367, -0.703668,
		0.647798, 0.561783, 0.514546,
		0.759796, -0.427336, -0.489994,
		35.741318, 38.067043, 27.104368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699787, 38.953213, 27.294022>,  <35.209461, 38.366177, 27.447363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699787, 38.953213, 27.294022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760548, 38.664566, 27.023853>,  <35.797005, 38.491379, 26.861752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760548, 38.664566, 27.023853>,  <35.699787, 38.953213, 27.294022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760548, 38.664566, 27.023853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028294, 0.686245, -0.726820,
		0.987991, 0.091294, 0.124658,
		0.151901, -0.721618, -0.675421,
		35.806118, 38.448082, 26.821228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923073, 39.668079, 27.427767>,  <35.699787, 38.953213, 27.294022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923073, 39.668079, 27.427767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.576900, 39.840576, 27.529797>,  <35.369198, 39.944073, 27.591015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.576900, 39.840576, 27.529797>,  <35.923073, 39.668079, 27.427767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576900, 39.840576, 27.529797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088885, -0.368875, 0.925219,
		0.493085, 0.823383, 0.280904,
		-0.865429, 0.431243, 0.255073,
		35.317272, 39.969948, 27.606319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010033, 40.014252, 28.135582>,  <35.923073, 39.668079, 27.427767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010033, 40.014252, 28.135582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.615929, 39.963833, 28.089308>,  <35.379467, 39.933582, 28.061543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.615929, 39.963833, 28.089308>,  <36.010033, 40.014252, 28.135582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615929, 39.963833, 28.089308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053381, -0.415950, 0.907820,
		-0.162545, 0.900610, 0.403089,
		-0.985256, -0.126044, -0.115686,
		35.320351, 39.926018, 28.054602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728748, 40.163715, 28.768488>,  <36.010033, 40.014252, 28.135582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728748, 40.163715, 28.768488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432308, 39.942963, 28.615541>,  <35.254444, 39.810513, 28.523773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432308, 39.942963, 28.615541>,  <35.728748, 40.163715, 28.768488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432308, 39.942963, 28.615541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054961, -0.617462, 0.784679,
		-0.669145, 0.560507, 0.487931,
		-0.741097, -0.551881, -0.382365,
		35.209980, 39.777397, 28.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538631, 39.898113, 29.417711>,  <35.728748, 40.163715, 28.768488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538631, 39.898113, 29.417711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.329407, 39.653946, 29.179789>,  <35.203873, 39.507446, 29.037035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.329407, 39.653946, 29.179789>,  <35.538631, 39.898113, 29.417711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329407, 39.653946, 29.179789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035923, -0.713056, 0.700186,
		-0.851537, 0.344874, 0.394901,
		-0.523062, -0.610420, -0.594805,
		35.172489, 39.470821, 29.001347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035877, 39.535343, 29.914879>,  <35.538631, 39.898113, 29.417711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035877, 39.535343, 29.914879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034615, 39.300533, 29.591053>,  <35.033855, 39.159649, 29.396757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.034615, 39.300533, 29.591053>,  <35.035877, 39.535343, 29.914879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034615, 39.300533, 29.591053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083154, -0.806609, 0.585207,
		-0.996532, 0.069167, -0.046265,
		-0.003159, -0.587025, -0.809563,
		35.033669, 39.124428, 29.348185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407574, 39.268009, 29.970835>,  <35.035877, 39.535343, 29.914879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407574, 39.268009, 29.970835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.647655, 39.038246, 29.748194>,  <34.791706, 38.900387, 29.614609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.647655, 39.038246, 29.748194>,  <34.407574, 39.268009, 29.970835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647655, 39.038246, 29.748194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136687, -0.759312, 0.636209,
		-0.788082, -0.305773, -0.534256,
		0.600202, -0.574411, -0.556605,
		34.827717, 38.865925, 29.581213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093727, 38.505665, 29.877216>,  <34.407574, 39.268009, 29.970835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093727, 38.505665, 29.877216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.487354, 38.478413, 29.811531>,  <34.723530, 38.462059, 29.772120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.487354, 38.478413, 29.811531>,  <34.093727, 38.505665, 29.877216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487354, 38.478413, 29.811531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043373, -0.803737, 0.593401,
		-0.172412, -0.591071, -0.787978,
		0.984070, -0.068132, -0.164211,
		34.782574, 38.457973, 29.762268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162312, 37.742493, 29.815430>,  <34.093727, 38.505665, 29.877216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162312, 37.742493, 29.815430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504253, 37.934799, 29.893496>,  <34.709419, 38.050182, 29.940334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.504253, 37.934799, 29.893496>,  <34.162312, 37.742493, 29.815430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504253, 37.934799, 29.893496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246907, -0.707731, 0.661932,
		0.456359, -0.517667, -0.723711,
		0.854853, 0.480768, 0.195164,
		34.760708, 38.079029, 29.952045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617382, 37.181145, 29.967560>,  <34.162312, 37.742493, 29.815430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617382, 37.181145, 29.967560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.805073, 37.497265, 30.125170>,  <34.917686, 37.686935, 30.219736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.805073, 37.497265, 30.125170>,  <34.617382, 37.181145, 29.967560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805073, 37.497265, 30.125170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485068, -0.603519, 0.632830,
		0.737924, -0.105815, -0.666537,
		0.469231, 0.790296, 0.394024,
		34.945843, 37.734352, 30.243378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250568, 36.992325, 29.910872>,  <34.617382, 37.181145, 29.967560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250568, 36.992325, 29.910872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265766, 37.277412, 30.191040>,  <35.274883, 37.448463, 30.359140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265766, 37.277412, 30.191040>,  <35.250568, 36.992325, 29.910872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265766, 37.277412, 30.191040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514141, -0.614974, 0.597885,
		0.856864, 0.337398, -0.389804,
		0.037994, 0.712720, 0.700419,
		35.277164, 37.491230, 30.401165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969692, 37.016438, 30.178049>,  <35.250568, 36.992325, 29.910872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969692, 37.016438, 30.178049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758160, 37.202759, 30.461842>,  <35.631241, 37.314552, 30.632116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758160, 37.202759, 30.461842>,  <35.969692, 37.016438, 30.178049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758160, 37.202759, 30.461842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504420, -0.499786, 0.704113,
		0.682568, 0.730233, 0.029341,
		-0.528830, 0.465805, 0.709482,
		35.599510, 37.342499, 30.674686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450172, 37.247295, 30.675468>,  <35.969692, 37.016438, 30.178049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450172, 37.247295, 30.675468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103935, 37.190125, 30.867435>,  <35.896194, 37.155823, 30.982616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103935, 37.190125, 30.867435>,  <36.450172, 37.247295, 30.675468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103935, 37.190125, 30.867435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472541, -0.550291, 0.688393,
		0.165702, 0.822649, 0.543868,
		-0.865591, -0.142932, 0.479919,
		35.844257, 37.147243, 31.011412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.806015, 42.929066, 24.832556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472424, 42.743603, 24.952219>,  <35.272266, 42.632324, 25.024017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472424, 42.743603, 24.952219>,  <35.806015, 42.929066, 24.832556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472424, 42.743603, 24.952219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513038, -0.451969, 0.729737,
		-0.203135, 0.762069, 0.614806,
		-0.833983, -0.463654, 0.299159,
		35.222229, 42.604507, 25.041967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794453, 42.894722, 25.620968>,  <35.806015, 42.929066, 24.832556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794453, 42.894722, 25.620968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519833, 42.618694, 25.529354>,  <35.355061, 42.453079, 25.474386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519833, 42.618694, 25.529354>,  <35.794453, 42.894722, 25.620968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519833, 42.618694, 25.529354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259618, -0.526906, 0.809301,
		-0.679152, 0.496164, 0.540901,
		-0.686550, -0.690066, -0.229037,
		35.313869, 42.411674, 25.460644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460670, 42.801479, 26.198509>,  <35.794453, 42.894722, 25.620968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460670, 42.801479, 26.198509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398308, 42.460732, 25.998507>,  <35.360889, 42.256283, 25.878506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398308, 42.460732, 25.998507>,  <35.460670, 42.801479, 26.198509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398308, 42.460732, 25.998507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255447, -0.523746, 0.812673,
		-0.954170, -0.001026, 0.299262,
		-0.155904, -0.851874, -0.500005,
		35.351536, 42.205170, 25.848505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933773, 42.351685, 26.655445>,  <35.460670, 42.801479, 26.198509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933773, 42.351685, 26.655445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118065, 42.105934, 26.399233>,  <35.228638, 41.958485, 26.245506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118065, 42.105934, 26.399233>,  <34.933773, 42.351685, 26.655445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118065, 42.105934, 26.399233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000469, -0.721519, 0.692395,
		-0.887543, -0.319303, -0.332133,
		0.460724, -0.614375, -0.640529,
		35.256283, 41.921623, 26.207075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564751, 41.750500, 26.724951>,  <34.933773, 42.351685, 26.655445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564751, 41.750500, 26.724951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882393, 41.618862, 26.520561>,  <35.072979, 41.539879, 26.397928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882393, 41.618862, 26.520561>,  <34.564751, 41.750500, 26.724951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882393, 41.618862, 26.520561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065966, -0.882423, 0.465808,
		-0.604187, -0.336195, -0.722448,
		0.794107, -0.329093, -0.510971,
		35.120625, 41.520134, 26.367270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299965, 41.128319, 26.302452>,  <34.564751, 41.750500, 26.724951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299965, 41.128319, 26.302452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688030, 41.132881, 26.399321>,  <34.920872, 41.135620, 26.457441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688030, 41.132881, 26.399321>,  <34.299965, 41.128319, 26.302452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688030, 41.132881, 26.399321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127561, -0.825428, 0.549906,
		0.206165, -0.564393, -0.799348,
		0.970167, 0.011406, 0.242169,
		34.979080, 41.136303, 26.471972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570107, 40.422203, 26.266788>,  <34.299965, 41.128319, 26.302452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570107, 40.422203, 26.266788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854771, 40.604630, 26.480534>,  <35.025570, 40.714085, 26.608780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854771, 40.604630, 26.480534>,  <34.570107, 40.422203, 26.266788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854771, 40.604630, 26.480534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130837, -0.833364, 0.537016,
		0.690235, -0.312257, -0.652741,
		0.711658, 0.456070, 0.534362,
		35.068268, 40.741451, 26.640842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207447, 39.940720, 26.332855>,  <34.570107, 40.422203, 26.266788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207447, 39.940720, 26.332855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195835, 40.223495, 26.615528>,  <35.188869, 40.393162, 26.785131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195835, 40.223495, 26.615528>,  <35.207447, 39.940720, 26.332855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195835, 40.223495, 26.615528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083364, -0.702804, 0.706482,
		0.996096, 0.079421, -0.038531,
		-0.029030, 0.706936, 0.706681,
		35.187126, 40.435577, 26.827532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527504, 39.677120, 26.799242>,  <35.207447, 39.940720, 26.332855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527504, 39.677120, 26.799242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383411, 39.959042, 27.043697>,  <35.296955, 40.128193, 27.190371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383411, 39.959042, 27.043697>,  <35.527504, 39.677120, 26.799242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383411, 39.959042, 27.043697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208772, -0.577595, 0.789176,
		0.909200, 0.411877, 0.060927,
		-0.360234, 0.704799, 0.611138,
		35.275341, 40.170483, 27.227039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071465, 39.296314, 26.674650>,  <35.527504, 39.677120, 26.799242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071465, 39.296314, 26.674650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965458, 38.949585, 26.505705>,  <35.901855, 38.741547, 26.404337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965458, 38.949585, 26.505705>,  <36.071465, 39.296314, 26.674650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965458, 38.949585, 26.505705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026167, 0.444330, -0.895481,
		0.963889, -0.226265, -0.140437,
		-0.265017, -0.866819, -0.422364,
		35.885952, 38.689541, 26.378996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495110, 39.223793, 26.042782>,  <36.071465, 39.296314, 26.674650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495110, 39.223793, 26.042782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185135, 38.980988, 25.972349>,  <35.999149, 38.835304, 25.930090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185135, 38.980988, 25.972349>,  <36.495110, 39.223793, 26.042782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185135, 38.980988, 25.972349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032044, 0.315966, -0.948229,
		0.631224, -0.729177, -0.264305,
		-0.774938, -0.607015, -0.176080,
		35.952652, 38.798882, 25.919525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617748, 38.962563, 25.433716>,  <36.495110, 39.223793, 26.042782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617748, 38.962563, 25.433716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227066, 38.913628, 25.504240>,  <35.992657, 38.884266, 25.546555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227066, 38.913628, 25.504240>,  <36.617748, 38.962563, 25.433716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227066, 38.913628, 25.504240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204059, 0.275191, -0.939484,
		0.066413, -0.953574, -0.293743,
		-0.976703, -0.122335, 0.176309,
		35.934055, 38.876926, 25.557133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452450, 38.683437, 24.817732>,  <36.617748, 38.962563, 25.433716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452450, 38.683437, 24.817732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121948, 38.846386, 24.973351>,  <35.923649, 38.944157, 25.066721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121948, 38.846386, 24.973351>,  <36.452450, 38.683437, 24.817732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121948, 38.846386, 24.973351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296292, 0.273091, -0.915222,
		-0.479083, -0.871474, -0.104939,
		-0.826251, 0.407375, 0.389044,
		35.874073, 38.968597, 25.090063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918652, 38.304878, 24.608633>,  <36.452450, 38.683437, 24.817732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918652, 38.304878, 24.608633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773136, 38.670040, 24.682680>,  <35.685829, 38.889137, 24.727108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773136, 38.670040, 24.682680>,  <35.918652, 38.304878, 24.608633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773136, 38.670040, 24.682680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397318, 0.027675, -0.917264,
		-0.842495, -0.407239, 0.352644,
		-0.363786, 0.912902, 0.185119,
		35.664001, 38.943913, 24.738216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280373, 38.308861, 24.313980>,  <35.918652, 38.304878, 24.608633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280373, 38.308861, 24.313980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342838, 38.700176, 24.368486>,  <35.380318, 38.934963, 24.401190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342838, 38.700176, 24.368486>,  <35.280373, 38.308861, 24.313980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342838, 38.700176, 24.368486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295915, 0.177959, -0.938491,
		-0.942363, 0.106236, 0.317280,
		0.156164, 0.978287, 0.136265,
		35.389687, 38.993664, 24.409367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694584, 38.617554, 24.047468>,  <35.280373, 38.308861, 24.313980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694584, 38.617554, 24.047468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941673, 38.931610, 24.065241>,  <35.089928, 39.120045, 24.075905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941673, 38.931610, 24.065241>,  <34.694584, 38.617554, 24.047468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941673, 38.931610, 24.065241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216534, 0.224136, -0.950198,
		-0.755997, 0.577338, 0.308463,
		0.617723, 0.785140, 0.044433,
		35.126991, 39.167152, 24.078571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372532, 39.131210, 23.756878>,  <34.694584, 38.617554, 24.047468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372532, 39.131210, 23.756878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756714, 39.230099, 23.705648>,  <34.987225, 39.289433, 23.674911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756714, 39.230099, 23.705648>,  <34.372532, 39.131210, 23.756878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756714, 39.230099, 23.705648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213001, 0.356186, -0.909814,
		-0.179308, 0.901117, 0.394760,
		0.960458, 0.247222, -0.128072,
		35.044849, 39.304264, 23.667227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292599, 39.754120, 23.461283>,  <34.372532, 39.131210, 23.756878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292599, 39.754120, 23.461283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681374, 39.689251, 23.393131>,  <34.914639, 39.650330, 23.352240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681374, 39.689251, 23.393131>,  <34.292599, 39.754120, 23.461283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681374, 39.689251, 23.393131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046888, 0.576223, -0.815946,
		0.230502, 0.801041, 0.552451,
		0.971941, -0.162174, -0.170380,
		34.972958, 39.640598, 23.342018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698048, 40.361370, 23.388447>,  <34.292599, 39.754120, 23.461283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698048, 40.361370, 23.388447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916912, 40.100670, 23.178364>,  <35.048229, 39.944252, 23.052313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916912, 40.100670, 23.178364>,  <34.698048, 40.361370, 23.388447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916912, 40.100670, 23.178364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027459, 0.613154, -0.789486,
		0.836580, 0.446394, 0.317595,
		0.547156, -0.651747, -0.525210,
		35.081059, 39.905144, 23.020802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059155, 40.681770, 22.846144>,  <34.698048, 40.361370, 23.388447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059155, 40.681770, 22.846144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101028, 40.314011, 22.694492>,  <35.126152, 40.093353, 22.603502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101028, 40.314011, 22.694492>,  <35.059155, 40.681770, 22.846144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101028, 40.314011, 22.694492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171622, 0.358800, -0.917501,
		0.979585, 0.161118, -0.120228,
		0.104688, -0.919404, -0.379127,
		35.132435, 40.038189, 22.580755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439911, 40.881744, 22.257542>,  <35.059155, 40.681770, 22.846144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439911, 40.881744, 22.257542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312584, 40.510952, 22.178160>,  <35.236187, 40.288475, 22.130529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312584, 40.510952, 22.178160>,  <35.439911, 40.881744, 22.257542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312584, 40.510952, 22.178160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136870, 0.252091, -0.957976,
		0.938053, -0.277773, -0.207119,
		-0.318313, -0.926980, -0.198456,
		35.217091, 40.232857, 22.118624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814960, 40.577202, 21.714737>,  <35.439911, 40.881744, 22.257542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814960, 40.577202, 21.714737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463757, 40.385788, 21.710735>,  <35.253033, 40.270939, 21.708334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463757, 40.385788, 21.710735>,  <35.814960, 40.577202, 21.714737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463757, 40.385788, 21.710735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174887, 0.340200, -0.923947,
		0.445542, -0.809488, -0.382389,
		-0.878013, -0.478533, -0.010004,
		35.200352, 40.242229, 21.707733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745003, 40.261120, 21.062706>,  <35.814960, 40.577202, 21.714737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745003, 40.261120, 21.062706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375462, 40.280819, 21.214533>,  <35.153736, 40.292637, 21.305630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375462, 40.280819, 21.214533>,  <35.745003, 40.261120, 21.062706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375462, 40.280819, 21.214533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275055, 0.604194, -0.747860,
		-0.266159, -0.795314, -0.544641,
		-0.923853, 0.049244, 0.379567,
		35.098305, 40.295593, 21.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.248608, 39.804310, 23.336716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.579344, 40.021629, 23.394896>,  <29.777786, 40.152023, 23.429804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.579344, 40.021629, 23.394896>,  <29.248608, 39.804310, 23.336716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579344, 40.021629, 23.394896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440582, -0.786419, 0.432935,
		0.349600, -0.293886, -0.889613,
		0.826842, 0.543301, 0.145451,
		29.827396, 40.184620, 23.438530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833870, 39.358276, 23.232903>,  <29.248608, 39.804310, 23.336716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833870, 39.358276, 23.232903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992718, 39.668285, 23.429529>,  <30.088026, 39.854290, 23.547506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992718, 39.668285, 23.429529>,  <29.833870, 39.358276, 23.232903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992718, 39.668285, 23.429529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495965, -0.631894, 0.595591,
		0.772214, 0.007280, -0.635321,
		0.397120, 0.775021, 0.491568,
		30.111855, 39.900791, 23.577000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563711, 39.255871, 23.240017>,  <29.833870, 39.358276, 23.232903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563711, 39.255871, 23.240017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.490194, 39.495380, 23.551834>,  <30.446085, 39.639088, 23.738924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.490194, 39.495380, 23.551834>,  <30.563711, 39.255871, 23.240017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490194, 39.495380, 23.551834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460506, -0.648191, 0.606451,
		0.868421, 0.470445, -0.156608,
		-0.183790, 0.598774, 0.779545,
		30.435057, 39.675014, 23.785698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209089, 39.302498, 23.613651>,  <30.563711, 39.255871, 23.240017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209089, 39.302498, 23.613651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903988, 39.406002, 23.850719>,  <30.720928, 39.468105, 23.992960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903988, 39.406002, 23.850719>,  <31.209089, 39.302498, 23.613651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903988, 39.406002, 23.850719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365345, -0.583782, 0.725067,
		0.533605, 0.769574, 0.350745,
		-0.762751, 0.258756, 0.592668,
		30.675163, 39.483627, 24.028521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465012, 39.343231, 24.368704>,  <31.209089, 39.302498, 23.613651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465012, 39.343231, 24.368704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068420, 39.315392, 24.412762>,  <30.830465, 39.298687, 24.439196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068420, 39.315392, 24.412762>,  <31.465012, 39.343231, 24.368704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068420, 39.315392, 24.412762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130125, -0.571573, 0.810167,
		0.006571, 0.817594, 0.575758,
		-0.991476, -0.069597, 0.110145,
		30.770977, 39.294514, 24.445805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351261, 39.377792, 25.066605>,  <31.465012, 39.343231, 24.368704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351261, 39.377792, 25.066605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004816, 39.201260, 24.972734>,  <30.796949, 39.095341, 24.916412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.004816, 39.201260, 24.972734>,  <31.351261, 39.377792, 25.066605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004816, 39.201260, 24.972734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143273, -0.668989, 0.729333,
		-0.478873, 0.598063, 0.642651,
		-0.866114, -0.441333, -0.234675,
		30.744982, 39.068859, 24.902332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990528, 39.330795, 25.686432>,  <31.351261, 39.377792, 25.066605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990528, 39.330795, 25.686432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809683, 39.045013, 25.472834>,  <30.701176, 38.873543, 25.344675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809683, 39.045013, 25.472834>,  <30.990528, 39.330795, 25.686432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809683, 39.045013, 25.472834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101002, -0.553816, 0.826491,
		-0.886225, 0.427600, 0.178225,
		-0.452111, -0.714455, -0.533993,
		30.674049, 38.830677, 25.312635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445929, 39.039242, 26.139437>,  <30.990528, 39.330795, 25.686432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445929, 39.039242, 26.139437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.490993, 38.775875, 25.841768>,  <30.518032, 38.617855, 25.663168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.490993, 38.775875, 25.841768>,  <30.445929, 39.039242, 26.139437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490993, 38.775875, 25.841768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101015, -0.752647, 0.650629,
		-0.988485, 0.001871, -0.151305,
		0.112662, -0.658421, -0.744170,
		30.524792, 38.578350, 25.618517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024065, 38.605915, 26.302208>,  <30.445929, 39.039242, 26.139437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024065, 38.605915, 26.302208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247997, 38.378357, 26.061226>,  <30.382357, 38.241821, 25.916637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.247997, 38.378357, 26.061226>,  <30.024065, 38.605915, 26.302208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247997, 38.378357, 26.061226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086874, -0.763360, 0.640106,
		-0.824043, -0.306011, -0.476772,
		0.559828, -0.568893, -0.602456,
		30.415947, 38.207687, 25.880489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785379, 37.945606, 26.273043>,  <30.024065, 38.605915, 26.302208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785379, 37.945606, 26.273043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.148699, 37.852833, 26.133785>,  <30.366690, 37.797169, 26.050230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.148699, 37.852833, 26.133785>,  <29.785379, 37.945606, 26.273043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148699, 37.852833, 26.133785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063036, -0.898613, 0.434190,
		-0.413548, -0.372428, -0.830828,
		0.908298, -0.231930, -0.348143,
		30.421188, 37.783253, 26.029343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726799, 37.245499, 26.094139>,  <29.785379, 37.945606, 26.273043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726799, 37.245499, 26.094139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.123665, 37.290051, 26.116796>,  <30.361784, 37.316780, 26.130390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.123665, 37.290051, 26.116796>,  <29.726799, 37.245499, 26.094139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123665, 37.290051, 26.116796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071863, -0.879460, 0.470516,
		0.102218, -0.462758, -0.880571,
		0.992163, 0.111376, 0.056642,
		30.421314, 37.323463, 26.133789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063658, 36.514023, 26.031315>,  <29.726799, 37.245499, 26.094139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063658, 36.514023, 26.031315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.347363, 36.737427, 26.203365>,  <30.517586, 36.871471, 26.306597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.347363, 36.737427, 26.203365>,  <30.063658, 36.514023, 26.031315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347363, 36.737427, 26.203365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248185, -0.768931, 0.589194,
		0.659810, -0.311142, -0.683989,
		0.709264, 0.558512, 0.430128,
		30.560143, 36.904980, 26.332403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603495, 36.128998, 25.952068>,  <30.063658, 36.514023, 26.031315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603495, 36.128998, 25.952068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.654772, 36.367249, 26.269255>,  <30.685537, 36.510201, 26.459566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.654772, 36.367249, 26.269255>,  <30.603495, 36.128998, 25.952068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654772, 36.367249, 26.269255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422324, -0.756230, 0.499759,
		0.897335, 0.270823, -0.348490,
		0.128192, 0.595627, 0.792966,
		30.693230, 36.545937, 26.507145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167088, 35.876930, 26.324333>,  <30.603495, 36.128998, 25.952068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167088, 35.876930, 26.324333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.988400, 36.115292, 26.591267>,  <30.881186, 36.258308, 26.751427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.988400, 36.115292, 26.591267>,  <31.167088, 35.876930, 26.324333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988400, 36.115292, 26.591267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040493, -0.731664, 0.680461,
		0.893756, 0.331000, 0.302720,
		-0.446722, 0.595908, 0.667333,
		30.854383, 36.294064, 26.791466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721939, 35.799107, 25.934824>,  <31.167088, 35.876930, 26.324333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721939, 35.799107, 25.934824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746307, 35.458294, 25.726851>,  <31.760929, 35.253807, 25.602066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.746307, 35.458294, 25.726851>,  <31.721939, 35.799107, 25.934824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746307, 35.458294, 25.726851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265603, 0.488283, -0.831285,
		0.962156, 0.188739, -0.196555,
		0.060922, -0.852031, -0.519934,
		31.764584, 35.202686, 25.570869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065617, 36.025402, 25.356745>,  <31.721939, 35.799107, 25.934824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065617, 36.025402, 25.356745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926748, 35.668049, 25.242661>,  <31.843428, 35.453636, 25.174210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.926748, 35.668049, 25.242661>,  <32.065617, 36.025402, 25.356745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926748, 35.668049, 25.242661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200360, 0.367761, -0.908079,
		0.916149, -0.258112, -0.306673,
		-0.347169, -0.893381, -0.285208,
		31.822598, 35.400036, 25.157099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418255, 35.823654, 24.770802>,  <32.065617, 36.025402, 25.356745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418255, 35.823654, 24.770802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068604, 35.629429, 24.775393>,  <31.858814, 35.512894, 24.778147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068604, 35.629429, 24.775393>,  <32.418255, 35.823654, 24.770802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068604, 35.629429, 24.775393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176716, 0.295937, -0.938719,
		0.452410, -0.822587, -0.344493,
		-0.874126, -0.485563, 0.011480,
		31.806366, 35.483761, 24.778837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379066, 35.372391, 24.176649>,  <32.418255, 35.823654, 24.770802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379066, 35.372391, 24.176649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.016731, 35.479851, 24.307671>,  <31.799330, 35.544327, 24.386284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.016731, 35.479851, 24.307671>,  <32.379066, 35.372391, 24.176649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016731, 35.479851, 24.307671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209797, 0.387246, -0.897789,
		-0.368031, -0.881969, -0.294420,
		-0.905836, 0.268646, 0.327553,
		31.744980, 35.560444, 24.405937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897997, 35.285778, 23.658197>,  <32.379066, 35.372391, 24.176649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897997, 35.285778, 23.658197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724218, 35.543636, 23.909811>,  <31.619951, 35.698353, 24.060780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724218, 35.543636, 23.909811>,  <31.897997, 35.285778, 23.658197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724218, 35.543636, 23.909811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312643, 0.547032, -0.776537,
		-0.844696, -0.534026, -0.036110,
		-0.434445, 0.644649, 0.629036,
		31.593885, 35.737030, 24.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371107, 35.443302, 23.314123>,  <31.897997, 35.285778, 23.658197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371107, 35.443302, 23.314123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.312044, 35.747246, 23.567362>,  <31.276606, 35.929611, 23.719305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.312044, 35.747246, 23.567362>,  <31.371107, 35.443302, 23.314123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312044, 35.747246, 23.567362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477890, 0.505615, -0.718314,
		-0.865921, -0.408615, 0.288471,
		-0.147658, 0.759860, 0.633095,
		31.267746, 35.975204, 23.757290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706234, 35.704193, 23.241121>,  <31.371107, 35.443302, 23.314123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706234, 35.704193, 23.241121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903351, 36.005493, 23.415373>,  <31.021620, 36.186272, 23.519924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.903351, 36.005493, 23.415373>,  <30.706234, 35.704193, 23.241121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903351, 36.005493, 23.415373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175553, 0.576409, -0.798081,
		-0.852255, 0.316811, 0.416284,
		0.492791, 0.753249, 0.435630,
		31.051188, 36.231468, 23.546062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328823, 36.302341, 23.049717>,  <30.706234, 35.704193, 23.241121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328823, 36.302341, 23.049717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.692579, 36.417839, 23.169477>,  <30.910833, 36.487137, 23.241335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.692579, 36.417839, 23.169477>,  <30.328823, 36.302341, 23.049717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692579, 36.417839, 23.169477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022075, 0.752297, -0.658454,
		-0.415361, 0.592181, 0.690505,
		0.909389, 0.288739, 0.299403,
		30.965395, 36.504459, 23.259298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245584, 37.075619, 23.230228>,  <30.328823, 36.302341, 23.049717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245584, 37.075619, 23.230228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.637594, 37.024590, 23.169193>,  <30.872799, 36.993973, 23.132572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.637594, 37.024590, 23.169193>,  <30.245584, 37.075619, 23.230228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637594, 37.024590, 23.169193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025854, 0.842403, -0.538228,
		0.197200, 0.523531, 0.828871,
		0.980022, -0.127569, -0.152587,
		30.931601, 36.986320, 23.123417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516937, 37.679153, 23.365597>,  <30.245584, 37.075619, 23.230228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516937, 37.679153, 23.365597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.772814, 37.496002, 23.118650>,  <30.926340, 37.386112, 22.970482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.772814, 37.496002, 23.118650>,  <30.516937, 37.679153, 23.365597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772814, 37.496002, 23.118650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031345, 0.786993, -0.616165,
		0.767992, 0.413507, 0.489081,
		0.639692, -0.457879, -0.617366,
		30.964722, 37.358639, 22.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047743, 38.151100, 23.311121>,  <30.516937, 37.679153, 23.365597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047743, 38.151100, 23.311121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081554, 37.899582, 23.001938>,  <31.101841, 37.748669, 22.816427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.081554, 37.899582, 23.001938>,  <31.047743, 38.151100, 23.311121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081554, 37.899582, 23.001938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277372, 0.759923, -0.587861,
		0.957037, -0.164706, 0.238648,
		0.084530, -0.628799, -0.772959,
		31.106913, 37.710941, 22.770050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639252, 38.470299, 22.977186>,  <31.047743, 38.151100, 23.311121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639252, 38.470299, 22.977186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.445715, 38.221733, 22.730692>,  <31.329594, 38.072594, 22.582796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.445715, 38.221733, 22.730692>,  <31.639252, 38.470299, 22.977186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445715, 38.221733, 22.730692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199331, 0.607383, -0.768995,
		0.852154, -0.494904, -0.170009,
		-0.483839, -0.621415, -0.616234,
		31.300564, 38.035309, 22.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054447, 38.560387, 22.373087>,  <31.639252, 38.470299, 22.977186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054447, 38.560387, 22.373087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.717325, 38.376423, 22.261259>,  <31.515053, 38.266045, 22.194162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.717325, 38.376423, 22.261259>,  <32.054447, 38.560387, 22.373087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717325, 38.376423, 22.261259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055203, 0.590563, -0.805101,
		0.535379, -0.663111, -0.523119,
		-0.842806, -0.459912, -0.279569,
		31.464483, 38.238449, 22.177387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121307, 38.409893, 21.666300>,  <32.054447, 38.560387, 22.373087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121307, 38.409893, 21.666300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731836, 38.451408, 21.747461>,  <31.498152, 38.476318, 21.796158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.731836, 38.451408, 21.747461>,  <32.121307, 38.409893, 21.666300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731836, 38.451408, 21.747461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101899, 0.598105, -0.794913,
		-0.203861, -0.794669, -0.571788,
		-0.973682, 0.103788, 0.202906,
		31.439732, 38.482544, 21.808332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355221, 38.361500, 20.954266>,  <32.121307, 38.409893, 21.666300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355221, 38.361500, 20.954266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.650921, 38.436962, 20.695679>,  <32.828342, 38.482239, 20.540527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.650921, 38.436962, 20.695679>,  <32.355221, 38.361500, 20.954266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650921, 38.436962, 20.695679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610134, -0.593939, 0.524379,
		-0.285036, -0.782078, -0.554173,
		0.739250, 0.188653, -0.646467,
		32.872696, 38.493557, 20.501740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553982, 37.755592, 20.773136>,  <32.355221, 38.361500, 20.954266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553982, 37.755592, 20.773136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.872688, 37.983707, 20.693199>,  <33.063911, 38.120575, 20.645237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.872688, 37.983707, 20.693199>,  <32.553982, 37.755592, 20.773136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872688, 37.983707, 20.693199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543426, -0.531560, 0.649717,
		0.264297, -0.626272, -0.733437,
		0.796766, 0.570287, -0.199843,
		33.111717, 38.154793, 20.633245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120037, 37.301411, 20.493729>,  <32.553982, 37.755592, 20.773136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120037, 37.301411, 20.493729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.277790, 37.626427, 20.665422>,  <33.372444, 37.821434, 20.768438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.277790, 37.626427, 20.665422>,  <33.120037, 37.301411, 20.493729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277790, 37.626427, 20.665422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664483, -0.574802, 0.477562,
		0.634763, 0.096877, -0.766610,
		0.394384, 0.812538, 0.429236,
		33.396107, 37.870190, 20.794193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886219, 37.145271, 20.526472>,  <33.120037, 37.301411, 20.493729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886219, 37.145271, 20.526472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838326, 37.447048, 20.784613>,  <33.809589, 37.628113, 20.939497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838326, 37.447048, 20.784613>,  <33.886219, 37.145271, 20.526472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838326, 37.447048, 20.784613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497098, -0.517122, 0.696763,
		0.859393, 0.404232, -0.313113,
		-0.119737, 0.754441, 0.645354,
		33.802406, 37.673382, 20.978218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628136, 37.262463, 20.710211>,  <33.886219, 37.145271, 20.526472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628136, 37.262463, 20.710211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352436, 37.399807, 20.965412>,  <34.187016, 37.482212, 21.118532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.352436, 37.399807, 20.965412>,  <34.628136, 37.262463, 20.710211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352436, 37.399807, 20.965412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462566, -0.469217, 0.752242,
		0.557650, 0.813597, 0.164580,
		-0.689246, 0.343359, 0.638001,
		34.145664, 37.502815, 21.156813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004272, 37.507931, 21.361870>,  <34.628136, 37.262463, 20.710211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004272, 37.507931, 21.361870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630119, 37.443516, 21.487808>,  <34.405628, 37.404865, 21.563372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630119, 37.443516, 21.487808>,  <35.004272, 37.507931, 21.361870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630119, 37.443516, 21.487808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353633, -0.419390, 0.836096,
		-0.002601, 0.893408, 0.449238,
		-0.935381, -0.161040, 0.314848,
		34.349506, 37.395203, 21.582262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980396, 37.838688, 21.976830>,  <35.004272, 37.507931, 21.361870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980396, 37.838688, 21.976830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674427, 37.581139, 21.969677>,  <34.490845, 37.426609, 21.965385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.674427, 37.581139, 21.969677>,  <34.980396, 37.838688, 21.976830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674427, 37.581139, 21.969677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369901, -0.461835, 0.806152,
		-0.527315, 0.610033, 0.591438,
		-0.764926, -0.643869, -0.017881,
		34.444950, 37.387978, 21.964314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696907, 37.792450, 22.691544>,  <34.980396, 37.838688, 21.976830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696907, 37.792450, 22.691544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570621, 37.463097, 22.502922>,  <34.494850, 37.265484, 22.389750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.570621, 37.463097, 22.502922>,  <34.696907, 37.792450, 22.691544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570621, 37.463097, 22.502922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425716, -0.567064, 0.705128,
		-0.847992, 0.021872, 0.529558,
		-0.315716, -0.823384, -0.471554,
		34.475906, 37.216080, 22.361456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342369, 37.492069, 23.219074>,  <34.696907, 37.792450, 22.691544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342369, 37.492069, 23.219074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398708, 37.195721, 22.956388>,  <34.432514, 37.017914, 22.798777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.398708, 37.195721, 22.956388>,  <34.342369, 37.492069, 23.219074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398708, 37.195721, 22.956388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341037, -0.586422, 0.734713,
		-0.929438, -0.327450, 0.170064,
		0.140852, -0.740869, -0.656715,
		34.440964, 36.973461, 22.759375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046555, 36.885860, 23.492670>,  <34.342369, 37.492069, 23.219074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046555, 36.885860, 23.492670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331944, 36.774261, 23.235573>,  <34.503178, 36.707302, 23.081314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.331944, 36.774261, 23.235573>,  <34.046555, 36.885860, 23.492670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331944, 36.774261, 23.235573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396494, -0.595560, 0.698642,
		-0.577712, -0.753305, -0.314293,
		0.713471, -0.278999, -0.642743,
		34.545986, 36.690559, 23.042749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030586, 36.193512, 23.560186>,  <34.046555, 36.885860, 23.492670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030586, 36.193512, 23.560186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389511, 36.281456, 23.407087>,  <34.604866, 36.334221, 23.315228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.389511, 36.281456, 23.407087>,  <34.030586, 36.193512, 23.560186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389511, 36.281456, 23.407087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413466, -0.722238, 0.554453,
		-0.154532, -0.655770, -0.738976,
		0.897310, 0.219861, -0.382748,
		34.658703, 36.347416, 23.292263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256386, 35.592716, 23.559221>,  <34.030586, 36.193512, 23.560186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256386, 35.592716, 23.559221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583668, 35.817657, 23.511381>,  <34.780037, 35.952621, 23.482677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.583668, 35.817657, 23.511381>,  <34.256386, 35.592716, 23.559221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583668, 35.817657, 23.511381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540753, -0.682073, 0.492303,
		0.195272, -0.467478, -0.862168,
		0.818202, 0.562353, -0.119600,
		34.829128, 35.986362, 23.475500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812874, 35.200542, 23.246590>,  <34.256386, 35.592716, 23.559221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812874, 35.200542, 23.246590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996338, 35.497318, 23.442205>,  <35.106415, 35.675385, 23.559574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996338, 35.497318, 23.442205>,  <34.812874, 35.200542, 23.246590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996338, 35.497318, 23.442205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648553, -0.655714, 0.386546,
		0.607463, 0.139873, -0.781936,
		0.458659, 0.741940, 0.489037,
		35.133934, 35.719902, 23.588917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437927, 34.959713, 23.332592>,  <34.812874, 35.200542, 23.246590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437927, 34.959713, 23.332592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.404514, 35.257530, 23.597521>,  <35.384468, 35.436222, 23.756479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.404514, 35.257530, 23.597521>,  <35.437927, 34.959713, 23.332592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404514, 35.257530, 23.597521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604395, -0.490588, 0.627718,
		0.792294, 0.452739, -0.409021,
		-0.083532, 0.744547, 0.662323,
		35.379456, 35.480896, 23.796217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.102409, 39.733704, 20.414824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920837, 39.979221, 20.673187>,  <34.811893, 40.126534, 20.828205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920837, 39.979221, 20.673187>,  <35.102409, 39.733704, 20.414824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920837, 39.979221, 20.673187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572235, 0.354837, -0.739350,
		-0.683002, -0.705228, 0.190163,
		-0.453933, 0.613795, 0.645910,
		34.784657, 40.163361, 20.866961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374245, 39.693546, 20.213835>,  <35.102409, 39.733704, 20.414824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374245, 39.693546, 20.213835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426613, 40.033714, 20.417658>,  <34.458035, 40.237816, 20.539951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426613, 40.033714, 20.417658>,  <34.374245, 39.693546, 20.213835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426613, 40.033714, 20.417658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443944, 0.509855, -0.736859,
		-0.886439, -0.129747, 0.444287,
		0.130916, 0.850420, 0.509556,
		34.465889, 40.288841, 20.570524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948898, 40.098248, 19.940973>,  <34.374245, 39.693546, 20.213835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948898, 40.098248, 19.940973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180389, 40.362404, 20.132372>,  <34.319283, 40.520897, 20.247211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180389, 40.362404, 20.132372>,  <33.948898, 40.098248, 19.940973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180389, 40.362404, 20.132372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203410, 0.685085, -0.699488,
		-0.789746, 0.307481, 0.530807,
		0.578727, 0.660390, 0.478498,
		34.354008, 40.560520, 20.275921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469635, 40.626205, 20.057875>,  <33.948898, 40.098248, 19.940973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469635, 40.626205, 20.057875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850586, 40.744682, 20.086863>,  <34.079155, 40.815769, 20.104256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850586, 40.744682, 20.086863>,  <33.469635, 40.626205, 20.057875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850586, 40.744682, 20.086863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184020, 0.747783, -0.637932,
		-0.243142, 0.594215, 0.766675,
		0.952375, 0.296191, 0.072470,
		34.136299, 40.833538, 20.108604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383858, 41.223576, 20.348469>,  <33.469635, 40.626205, 20.057875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383858, 41.223576, 20.348469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743938, 41.260025, 20.178137>,  <33.959988, 41.281895, 20.075937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743938, 41.260025, 20.178137>,  <33.383858, 41.223576, 20.348469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743938, 41.260025, 20.178137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386120, 0.619197, -0.683745,
		0.201365, 0.779930, 0.592588,
		0.900202, 0.091128, -0.425832,
		34.014000, 41.287365, 20.050386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440956, 41.926891, 20.115349>,  <33.383858, 41.223576, 20.348469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440956, 41.926891, 20.115349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690994, 41.712219, 19.888641>,  <33.841019, 41.583416, 19.752617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690994, 41.712219, 19.888641>,  <33.440956, 41.926891, 20.115349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690994, 41.712219, 19.888641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233206, 0.564537, -0.791779,
		0.744896, 0.627111, 0.227731,
		0.625095, -0.536685, -0.566767,
		33.878521, 41.551212, 19.718611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006817, 42.347580, 19.882807>,  <33.440956, 41.926891, 20.115349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006817, 42.347580, 19.882807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964050, 42.051556, 19.617212>,  <33.938389, 41.873940, 19.457855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964050, 42.051556, 19.617212>,  <34.006817, 42.347580, 19.882807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964050, 42.051556, 19.617212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080296, 0.672061, -0.736130,
		0.991020, -0.025391, -0.131280,
		-0.106919, -0.740060, -0.663987,
		33.931976, 41.829536, 19.418016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269287, 42.685585, 19.205206>,  <34.006817, 42.347580, 19.882807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269287, 42.685585, 19.205206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096447, 42.341774, 19.096020>,  <33.992744, 42.135487, 19.030508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096447, 42.341774, 19.096020>,  <34.269287, 42.685585, 19.205206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096447, 42.341774, 19.096020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333075, 0.433382, -0.837401,
		0.838065, -0.270922, -0.473550,
		-0.432098, -0.859524, -0.272965,
		33.966816, 42.083916, 19.014130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515743, 42.473690, 18.524826>,  <34.269287, 42.685585, 19.205206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515743, 42.473690, 18.524826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169315, 42.278351, 18.567593>,  <33.961456, 42.161148, 18.593252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169315, 42.278351, 18.567593>,  <34.515743, 42.473690, 18.524826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169315, 42.278351, 18.567593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346313, 0.431847, -0.832812,
		0.360533, -0.758302, -0.543133,
		-0.866074, -0.488350, 0.106915,
		33.909492, 42.131847, 18.599667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330975, 42.169312, 17.931341>,  <34.515743, 42.473690, 18.524826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330975, 42.169312, 17.931341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967419, 42.194763, 18.096205>,  <33.749287, 42.210033, 18.195124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967419, 42.194763, 18.096205>,  <34.330975, 42.169312, 17.931341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967419, 42.194763, 18.096205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327490, 0.503016, -0.799828,
		-0.258213, -0.861932, -0.436348,
		-0.908888, 0.063626, 0.412159,
		33.694752, 42.213852, 18.219852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000412, 41.902000, 17.384417>,  <34.330975, 42.169312, 17.931341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000412, 41.902000, 17.384417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743576, 42.115341, 17.604692>,  <33.589474, 42.243347, 17.736858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743576, 42.115341, 17.604692>,  <34.000412, 41.902000, 17.384417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743576, 42.115341, 17.604692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401870, 0.377555, -0.834238,
		-0.652858, -0.756959, -0.028085,
		-0.642088, 0.533352, 0.550689,
		33.550949, 42.275345, 17.769899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321152, 41.693680, 17.179762>,  <34.000412, 41.902000, 17.384417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321152, 41.693680, 17.179762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316273, 42.061779, 17.336224>,  <33.313347, 42.282639, 17.430099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316273, 42.061779, 17.336224>,  <33.321152, 41.693680, 17.179762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316273, 42.061779, 17.336224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490649, 0.335344, -0.804243,
		-0.871272, -0.201726, 0.447428,
		-0.012194, 0.920245, 0.391153,
		33.312614, 42.337852, 17.453569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642735, 41.941925, 17.167154>,  <33.321152, 41.693680, 17.179762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642735, 41.941925, 17.167154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881924, 42.262081, 17.150118>,  <33.025436, 42.454174, 17.139896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881924, 42.262081, 17.150118>,  <32.642735, 41.941925, 17.167154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881924, 42.262081, 17.150118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506727, 0.336336, -0.793792,
		-0.621017, 0.496244, 0.606696,
		0.597969, 0.800387, -0.042590,
		33.061314, 42.502197, 17.137341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170677, 42.596069, 16.946466>,  <32.642735, 41.941925, 17.167154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170677, 42.596069, 16.946466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563923, 42.616669, 16.876230>,  <32.799870, 42.629028, 16.834089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.563923, 42.616669, 16.876230>,  <32.170677, 42.596069, 16.946466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563923, 42.616669, 16.876230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181722, 0.387269, -0.903880,
		0.021455, 0.920528, 0.390088,
		0.983116, 0.051495, -0.175589,
		32.858856, 42.632118, 16.823553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949072, 42.029083, 16.696276>,  <32.170677, 42.596069, 16.946466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949072, 42.029083, 16.696276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593819, 41.878654, 16.590607>,  <31.380667, 41.788399, 16.527205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593819, 41.878654, 16.590607>,  <31.949072, 42.029083, 16.696276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593819, 41.878654, 16.590607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164174, -0.796496, 0.581928,
		-0.429259, 0.473460, 0.769137,
		-0.888135, -0.376070, -0.264173,
		31.327377, 41.765835, 16.511354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549360, 41.775291, 17.293694>,  <31.949072, 42.029083, 16.696276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549360, 41.775291, 17.293694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365637, 41.569061, 17.004358>,  <31.255404, 41.445324, 16.830757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365637, 41.569061, 17.004358>,  <31.549360, 41.775291, 17.293694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365637, 41.569061, 17.004358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130220, -0.844601, 0.519318,
		-0.878680, 0.144335, 0.455071,
		-0.459309, -0.515574, -0.723339,
		31.227844, 41.414391, 16.787357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942415, 41.446621, 17.583044>,  <31.549360, 41.775291, 17.293694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942415, 41.446621, 17.583044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062750, 41.245113, 17.259138>,  <31.134951, 41.124210, 17.064795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062750, 41.245113, 17.259138>,  <30.942415, 41.446621, 17.583044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062750, 41.245113, 17.259138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011244, -0.850913, 0.525186,
		-0.953610, -0.148889, -0.261648,
		0.300834, -0.503764, -0.809765,
		31.153000, 41.093983, 17.016209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660057, 40.845501, 17.648693>,  <30.942415, 41.446621, 17.583044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660057, 40.845501, 17.648693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932697, 40.767582, 17.366566>,  <31.096281, 40.720829, 17.197289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932697, 40.767582, 17.366566>,  <30.660057, 40.845501, 17.648693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932697, 40.767582, 17.366566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187729, -0.885095, 0.425870,
		-0.707233, -0.422682, -0.566711,
		0.681600, -0.194801, -0.705318,
		31.137177, 40.709141, 17.154970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604771, 40.101543, 17.365372>,  <30.660057, 40.845501, 17.648693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604771, 40.101543, 17.365372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972929, 40.249554, 17.314852>,  <31.193825, 40.338360, 17.284540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972929, 40.249554, 17.314852>,  <30.604771, 40.101543, 17.365372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972929, 40.249554, 17.314852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383939, -0.794291, 0.470841,
		0.073907, -0.481851, -0.873131,
		0.920396, 0.370027, -0.126298,
		31.249048, 40.360561, 17.276962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963207, 39.528404, 17.266893>,  <30.604771, 40.101543, 17.365372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963207, 39.528404, 17.266893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218628, 39.821060, 17.362358>,  <31.371880, 39.996655, 17.419638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218628, 39.821060, 17.362358>,  <30.963207, 39.528404, 17.266893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218628, 39.821060, 17.362358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525906, -0.641262, 0.558754,
		0.561850, -0.231279, -0.794251,
		0.638551, 0.731637, 0.238662,
		31.410192, 40.040550, 17.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646025, 39.254719, 17.367493>,  <30.963207, 39.528404, 17.266893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646025, 39.254719, 17.367493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742268, 39.594990, 17.554447>,  <31.800013, 39.799152, 17.666620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.742268, 39.594990, 17.554447>,  <31.646025, 39.254719, 17.367493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742268, 39.594990, 17.554447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404777, -0.525602, 0.748263,
		0.882193, 0.009150, -0.470800,
		0.240607, 0.850681, 0.467386,
		31.814449, 39.850193, 17.694662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369724, 39.248772, 17.538481>,  <31.646025, 39.254719, 17.367493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369724, 39.248772, 17.538481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222527, 39.529575, 17.782372>,  <32.134209, 39.698055, 17.928705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222527, 39.529575, 17.782372>,  <32.369724, 39.248772, 17.538481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222527, 39.529575, 17.782372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538089, -0.374005, 0.755368,
		0.758312, 0.606061, -0.240108,
		-0.367997, 0.702004, 0.609727,
		32.112129, 39.740177, 17.965290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839836, 39.429771, 17.896698>,  <32.369724, 39.248772, 17.538481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839836, 39.429771, 17.896698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538181, 39.572006, 18.117546>,  <32.357189, 39.657349, 18.250055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538181, 39.572006, 18.117546>,  <32.839836, 39.429771, 17.896698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538181, 39.572006, 18.117546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472594, -0.289916, 0.832228,
		0.455998, 0.888542, 0.050588,
		-0.754136, 0.355587, 0.552120,
		32.311939, 39.678680, 18.283182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138535, 39.877548, 18.409885>,  <32.839836, 39.429771, 17.896698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138535, 39.877548, 18.409885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785275, 39.743355, 18.541031>,  <32.573318, 39.662838, 18.619719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785275, 39.743355, 18.541031>,  <33.138535, 39.877548, 18.409885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785275, 39.743355, 18.541031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419430, -0.251777, 0.872174,
		-0.210050, 0.907778, 0.363069,
		-0.883152, -0.335481, 0.327863,
		32.520329, 39.642712, 18.639389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932739, 40.138130, 19.031395>,  <33.138535, 39.877548, 18.409885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932739, 40.138130, 19.031395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762909, 39.777519, 18.997953>,  <32.661011, 39.561153, 18.977888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762909, 39.777519, 18.997953>,  <32.932739, 40.138130, 19.031395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762909, 39.777519, 18.997953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362675, -0.253951, 0.896647,
		-0.829581, 0.350372, 0.434782,
		-0.424573, -0.901526, -0.083602,
		32.635536, 39.507061, 18.972874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784515, 40.082600, 19.670662>,  <32.932739, 40.138130, 19.031395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784515, 40.082600, 19.670662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723373, 39.716328, 19.521984>,  <32.686687, 39.496563, 19.432777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723373, 39.716328, 19.521984>,  <32.784515, 40.082600, 19.670662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723373, 39.716328, 19.521984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152516, -0.393468, 0.906599,
		-0.976409, 0.081884, 0.199798,
		-0.152850, -0.915684, -0.371697,
		32.677517, 39.441624, 19.410475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459007, 39.737804, 20.255238>,  <32.784515, 40.082600, 19.670662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459007, 39.737804, 20.255238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577602, 39.427704, 20.032141>,  <32.648758, 39.241642, 19.898283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577602, 39.427704, 20.032141>,  <32.459007, 39.737804, 20.255238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577602, 39.427704, 20.032141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051971, -0.570039, 0.819972,
		-0.953623, -0.272096, -0.128717,
		0.296485, -0.775255, -0.557743,
		32.666550, 39.195129, 19.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142601, 39.066650, 20.593473>,  <32.459007, 39.737804, 20.255238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142601, 39.066650, 20.593473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443443, 38.945904, 20.359137>,  <32.623951, 38.873455, 20.218534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443443, 38.945904, 20.359137>,  <32.142601, 39.066650, 20.593473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443443, 38.945904, 20.359137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361758, -0.553939, 0.749855,
		-0.550840, -0.775920, -0.307448,
		0.752135, -0.301829, -0.585827,
		32.669075, 38.855343, 20.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714600, 38.633495, 21.046515>,  <32.142601, 39.066650, 20.593473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714600, 38.633495, 21.046515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442894, 38.740650, 21.319815>,  <31.279871, 38.804943, 21.483795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442894, 38.740650, 21.319815>,  <31.714600, 38.633495, 21.046515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442894, 38.740650, 21.319815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362043, 0.687509, -0.629489,
		-0.638376, -0.674956, -0.370013,
		-0.679265, 0.267890, 0.683253,
		31.239115, 38.821018, 21.524790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146442, 38.739513, 20.648174>,  <31.714600, 38.633495, 21.046515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146442, 38.739513, 20.648174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062023, 38.922829, 20.993528>,  <31.011372, 39.032818, 21.200741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062023, 38.922829, 20.993528>,  <31.146442, 38.739513, 20.648174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062023, 38.922829, 20.993528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373281, 0.778550, -0.504502,
		-0.903394, -0.428759, 0.006758,
		-0.211048, 0.458286, 0.863384,
		30.998709, 39.060314, 21.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470673, 39.014751, 20.628250>,  <31.146442, 38.739513, 20.648174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470673, 39.014751, 20.628250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628998, 39.238453, 20.919611>,  <30.723993, 39.372673, 21.094427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.628998, 39.238453, 20.919611>,  <30.470673, 39.014751, 20.628250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628998, 39.238453, 20.919611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386199, 0.821000, -0.420486,
		-0.833175, -0.114873, 0.540946,
		0.395815, 0.559252, 0.728401,
		30.747742, 39.406227, 21.138132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992287, 39.474476, 20.869932>,  <30.470673, 39.014751, 20.628250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992287, 39.474476, 20.869932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349775, 39.633434, 20.953201>,  <30.564268, 39.728809, 21.003162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349775, 39.633434, 20.953201>,  <29.992287, 39.474476, 20.869932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349775, 39.633434, 20.953201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231862, 0.806407, -0.544011,
		-0.384061, 0.437927, 0.812845,
		0.893721, 0.397401, 0.208171,
		30.617891, 39.752655, 21.015654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840847, 40.158325, 21.001057>,  <29.992287, 39.474476, 20.869932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840847, 40.158325, 21.001057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239464, 40.176849, 20.973475>,  <30.478634, 40.187965, 20.956924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239464, 40.176849, 20.973475>,  <29.840847, 40.158325, 21.001057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239464, 40.176849, 20.973475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069384, 0.920514, -0.384499,
		0.045669, 0.387955, 0.920546,
		0.996544, 0.046312, -0.068957,
		30.538427, 40.190742, 20.952787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026653, 40.854919, 21.191330>,  <29.840847, 40.158325, 21.001057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026653, 40.854919, 21.191330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.319767, 40.734001, 20.947479>,  <30.495634, 40.661449, 20.801168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.319767, 40.734001, 20.947479>,  <30.026653, 40.854919, 21.191330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319767, 40.734001, 20.947479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077820, 0.852792, -0.516419,
		0.675998, 0.425864, 0.601386,
		0.732782, -0.302299, -0.609627,
		30.539602, 40.643311, 20.764591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370707, 41.436878, 21.002584>,  <30.026653, 40.854919, 21.191330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370707, 41.436878, 21.002584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476383, 41.170300, 20.723717>,  <30.539789, 41.010353, 20.556396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.476383, 41.170300, 20.723717>,  <30.370707, 41.436878, 21.002584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476383, 41.170300, 20.723717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116327, 0.695557, -0.708991,
		0.957429, 0.268411, 0.106236,
		0.264194, -0.666451, -0.697169,
		30.555641, 40.970364, 20.514566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421082, 42.132378, 21.224253>,  <30.370707, 41.436878, 21.002584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421082, 42.132378, 21.224253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069281, 42.249077, 21.374641>,  <29.858200, 42.319096, 21.464874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069281, 42.249077, 21.374641>,  <30.421082, 42.132378, 21.224253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069281, 42.249077, 21.374641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015963, -0.771505, 0.636023,
		0.475624, 0.565386, 0.673884,
		-0.879504, 0.291751, 0.375971,
		29.805429, 42.336601, 21.487432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475668, 42.228821, 21.910740>,  <30.421082, 42.132378, 21.224253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475668, 42.228821, 21.910740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080265, 42.176949, 21.879663>,  <29.843023, 42.145824, 21.861017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080265, 42.176949, 21.879663>,  <30.475668, 42.228821, 21.910740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080265, 42.176949, 21.879663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003625, -0.493465, 0.869758,
		-0.151125, 0.860044, 0.487324,
		-0.988508, -0.129676, -0.077692,
		29.783712, 42.138046, 21.856356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316776, 42.336300, 22.592751>,  <30.475668, 42.228821, 21.910740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316776, 42.336300, 22.592751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.019810, 42.136421, 22.414259>,  <29.841629, 42.016495, 22.307163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.019810, 42.136421, 22.414259>,  <30.316776, 42.336300, 22.592751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019810, 42.136421, 22.414259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066117, -0.608175, 0.791045,
		-0.666668, 0.616788, 0.418481,
		-0.742417, -0.499696, -0.446230,
		29.797085, 41.986511, 22.280390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031672, 42.146381, 23.189226>,  <30.316776, 42.336300, 22.592751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031672, 42.146381, 23.189226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831654, 41.932560, 22.916695>,  <29.711643, 41.804268, 22.753176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.831654, 41.932560, 22.916695>,  <30.031672, 42.146381, 23.189226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831654, 41.932560, 22.916695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072295, -0.758243, 0.647951,
		-0.862976, 0.373262, 0.340511,
		-0.500045, -0.534549, -0.681331,
		29.681641, 41.772194, 22.712296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525303, 41.827503, 23.582542>,  <30.031672, 42.146381, 23.189226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525303, 41.827503, 23.582542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.522053, 41.598846, 23.254358>,  <29.520102, 41.461651, 23.057447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.522053, 41.598846, 23.254358>,  <29.525303, 41.827503, 23.582542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522053, 41.598846, 23.254358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052861, -0.819588, 0.570510,
		-0.998569, -0.038733, 0.036879,
		-0.008128, -0.571643, -0.820462,
		29.519615, 41.427353, 23.008219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104973, 41.260201, 23.713358>,  <29.525303, 41.827503, 23.582542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104973, 41.260201, 23.713358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.320133, 41.108303, 23.412306>,  <29.449230, 41.017162, 23.231674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.320133, 41.108303, 23.412306>,  <29.104973, 41.260201, 23.713358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320133, 41.108303, 23.412306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160231, -0.830462, 0.533535,
		-0.827637, -0.407586, -0.385864,
		0.537907, -0.379746, -0.752628,
		29.481504, 40.994377, 23.186516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914547, 40.590012, 23.708210>,  <29.104973, 41.260201, 23.713358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914547, 40.590012, 23.708210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277534, 40.619713, 23.542807>,  <29.495327, 40.637535, 23.443565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.277534, 40.619713, 23.542807>,  <28.914547, 40.590012, 23.708210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277534, 40.619713, 23.542807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287435, -0.827573, 0.482187,
		-0.306405, -0.556425, -0.772338,
		0.907467, 0.074252, -0.413509,
		29.549774, 40.641987, 23.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.005836, 45.220409, 19.942064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053196, 44.943283, 20.226597>,  <32.081612, 44.777008, 20.397316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.053196, 44.943283, 20.226597>,  <32.005836, 45.220409, 19.942064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053196, 44.943283, 20.226597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991809, -0.047931, 0.118395,
		-0.047931, -0.719524, -0.692812,
		-0.118395, 0.692812, -0.711333,
		32.088715, 44.735439, 20.439997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678617, 44.551590, 19.830256>,  <32.005836, 45.220409, 19.942064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678617, 44.551590, 19.830256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049358, 44.436211, 19.734137>,  <32.271801, 44.366982, 19.676466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.049358, 44.436211, 19.734137>,  <31.678617, 44.551590, 19.830256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049358, 44.436211, 19.734137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148027, -0.307421, 0.939989,
		-0.345017, -0.906800, -0.242234,
		0.926850, -0.288455, -0.240297,
		32.327415, 44.349674, 19.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809263, 43.911613, 20.205988>,  <31.678617, 44.551590, 19.830256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809263, 43.911613, 20.205988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.174965, 44.035397, 20.101397>,  <32.394386, 44.109669, 20.038643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.174965, 44.035397, 20.101397>,  <31.809263, 43.911613, 20.205988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174965, 44.035397, 20.101397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354140, -0.296969, 0.886789,
		0.196775, -0.903352, -0.381098,
		0.914256, 0.309460, -0.261476,
		32.449242, 44.128235, 20.022953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265846, 43.340519, 20.147762>,  <31.809263, 43.911613, 20.205988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265846, 43.340519, 20.147762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.493763, 43.656597, 20.238037>,  <32.630512, 43.846245, 20.292202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.493763, 43.656597, 20.238037>,  <32.265846, 43.340519, 20.147762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493763, 43.656597, 20.238037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283694, -0.446881, 0.848419,
		0.771272, -0.419392, -0.478801,
		0.569787, 0.790195, 0.225688,
		32.664700, 43.893654, 20.305744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899075, 43.032558, 20.325537>,  <32.265846, 43.340519, 20.147762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899075, 43.032558, 20.325537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.896019, 43.401150, 20.480879>,  <32.894184, 43.622303, 20.574085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.896019, 43.401150, 20.480879>,  <32.899075, 43.032558, 20.325537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896019, 43.401150, 20.480879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280945, -0.370747, 0.885221,
		0.959693, 0.115873, -0.256051,
		-0.007643, 0.921477, 0.388357,
		32.893726, 43.677593, 20.597385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447628, 42.978298, 20.906282>,  <32.899075, 43.032558, 20.325537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447628, 42.978298, 20.906282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.235840, 43.310280, 20.976530>,  <33.108768, 43.509468, 21.018679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.235840, 43.310280, 20.976530>,  <33.447628, 42.978298, 20.906282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235840, 43.310280, 20.976530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188455, -0.086770, 0.978241,
		0.827131, 0.551046, -0.110466,
		-0.529471, 0.829951, 0.175618,
		33.077000, 43.559265, 21.029215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893528, 43.462322, 21.208172>,  <33.447628, 42.978298, 20.906282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893528, 43.462322, 21.208172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.546467, 43.607590, 21.343983>,  <33.338230, 43.694752, 21.425470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.546467, 43.607590, 21.343983>,  <33.893528, 43.462322, 21.208172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546467, 43.607590, 21.343983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324118, -0.104650, 0.940211,
		0.376990, 0.925827, -0.026910,
		-0.867656, 0.363172, 0.339529,
		33.286171, 43.716541, 21.445841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119560, 44.070896, 21.648726>,  <33.893528, 43.462322, 21.208172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119560, 44.070896, 21.648726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.753174, 43.939865, 21.741423>,  <33.533344, 43.861244, 21.797041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.753174, 43.939865, 21.741423>,  <34.119560, 44.070896, 21.648726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753174, 43.939865, 21.741423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325708, -0.269640, 0.906205,
		-0.234369, 0.905530, 0.353676,
		-0.915962, -0.327581, 0.231743,
		33.478386, 43.841591, 21.810946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939770, 44.277775, 22.288406>,  <34.119560, 44.070896, 21.648726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939770, 44.277775, 22.288406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661892, 43.992344, 22.252167>,  <33.495163, 43.821087, 22.230423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.661892, 43.992344, 22.252167>,  <33.939770, 44.277775, 22.288406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661892, 43.992344, 22.252167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234099, -0.343386, 0.909552,
		-0.680141, 0.610655, 0.405596,
		-0.694698, -0.713573, -0.090597,
		33.453484, 43.778271, 22.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494900, 44.291370, 22.869844>,  <33.939770, 44.277775, 22.288406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494900, 44.291370, 22.869844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.433357, 43.919277, 22.736580>,  <33.396431, 43.696022, 22.656622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.433357, 43.919277, 22.736580>,  <33.494900, 44.291370, 22.869844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433357, 43.919277, 22.736580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219958, -0.360959, 0.906271,
		-0.963300, 0.066151, 0.260147,
		-0.153853, -0.930233, -0.333162,
		33.387203, 43.640209, 22.636631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879654, 43.886414, 23.332458>,  <33.494900, 44.291370, 22.869844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879654, 43.886414, 23.332458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138542, 43.636848, 23.157265>,  <33.293877, 43.487110, 23.052149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.138542, 43.636848, 23.157265>,  <32.879654, 43.886414, 23.332458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138542, 43.636848, 23.157265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214038, -0.402705, 0.889953,
		-0.731634, -0.669745, -0.127098,
		0.647225, -0.623916, -0.437983,
		33.332710, 43.449673, 23.025869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782997, 43.372185, 23.812012>,  <32.879654, 43.886414, 23.332458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782997, 43.372185, 23.812012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.110371, 43.280941, 23.601059>,  <33.306793, 43.226196, 23.474487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.110371, 43.280941, 23.601059>,  <32.782997, 43.372185, 23.812012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110371, 43.280941, 23.601059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454945, -0.303391, 0.837245,
		-0.350993, -0.925158, -0.144525,
		0.818431, -0.228116, -0.527384,
		33.355900, 43.212509, 23.442844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393532, 42.871300, 23.922316>,  <32.782997, 43.372185, 23.812012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393532, 42.871300, 23.922316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019993, 42.852013, 24.064077>,  <31.795870, 42.840443, 24.149134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.019993, 42.852013, 24.064077>,  <32.393532, 42.871300, 23.922316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019993, 42.852013, 24.064077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273894, 0.733635, -0.621901,
		-0.230018, -0.677831, -0.698310,
		-0.933849, -0.048215, 0.354403,
		31.739838, 42.837547, 24.170399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969845, 42.836796, 23.389860>,  <32.393532, 42.871300, 23.922316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969845, 42.836796, 23.389860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.735222, 42.987869, 23.676441>,  <31.594448, 43.078514, 23.848391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.735222, 42.987869, 23.676441>,  <31.969845, 42.836796, 23.389860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735222, 42.987869, 23.676441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422144, 0.612374, -0.668425,
		-0.691189, -0.694517, -0.199758,
		-0.586559, 0.377682, 0.716453,
		31.559254, 43.101173, 23.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364359, 43.004887, 23.004595>,  <31.969845, 42.836796, 23.389860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364359, 43.004887, 23.004595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339941, 43.209946, 23.347166>,  <31.325291, 43.332981, 23.552708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.339941, 43.209946, 23.347166>,  <31.364359, 43.004887, 23.004595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339941, 43.209946, 23.347166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451614, 0.750991, -0.481723,
		-0.890123, -0.416181, 0.185676,
		-0.061043, 0.512647, 0.856427,
		31.321629, 43.363739, 23.604094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633776, 43.215309, 23.111860>,  <31.364359, 43.004887, 23.004595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633776, 43.215309, 23.111860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846853, 43.471481, 23.333158>,  <30.974699, 43.625187, 23.465939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846853, 43.471481, 23.333158>,  <30.633776, 43.215309, 23.111860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846853, 43.471481, 23.333158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352498, 0.762216, -0.542929,
		-0.769404, 0.094197, 0.631779,
		0.532695, 0.640432, 0.553248,
		31.006662, 43.663612, 23.499132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204960, 43.656841, 23.181038>,  <30.633776, 43.215309, 23.111860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204960, 43.656841, 23.181038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535648, 43.855850, 23.286114>,  <30.734062, 43.975254, 23.349159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.535648, 43.855850, 23.286114>,  <30.204960, 43.656841, 23.181038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535648, 43.855850, 23.286114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353533, 0.822605, -0.445348,
		-0.437659, 0.275310, 0.855955,
		0.826722, 0.497519, 0.262690,
		30.783665, 44.005104, 23.364920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968872, 44.299484, 23.450808>,  <30.204960, 43.656841, 23.181038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968872, 44.299484, 23.450808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342106, 44.343979, 23.313997>,  <30.566046, 44.370674, 23.231911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342106, 44.343979, 23.313997>,  <29.968872, 44.299484, 23.450808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342106, 44.343979, 23.313997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279165, 0.823580, -0.493744,
		0.226765, 0.556186, 0.799521,
		0.933083, 0.111235, -0.342027,
		30.622030, 44.377350, 23.211390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062355, 44.955250, 23.577196>,  <29.968872, 44.299484, 23.450808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062355, 44.955250, 23.577196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366304, 44.876656, 23.329329>,  <30.548674, 44.829498, 23.180609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366304, 44.876656, 23.329329>,  <30.062355, 44.955250, 23.577196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366304, 44.876656, 23.329329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087106, 0.913859, -0.396578,
		0.644211, 0.355325, 0.677301,
		0.759871, -0.196483, -0.619669,
		30.594265, 44.817711, 23.143427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657442, 45.390160, 23.756241>,  <30.062355, 44.955250, 23.577196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657442, 45.390160, 23.756241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639311, 45.283905, 23.371038>,  <30.628431, 45.220154, 23.139917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.639311, 45.283905, 23.371038>,  <30.657442, 45.390160, 23.756241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639311, 45.283905, 23.371038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126196, 0.957798, -0.258257,
		0.990969, 0.109821, -0.076938,
		-0.045329, -0.265634, -0.963008,
		30.625711, 45.204216, 23.082136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005524, 45.825928, 23.402853>,  <30.657442, 45.390160, 23.756241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005524, 45.825928, 23.402853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798105, 45.656052, 23.106003>,  <30.673655, 45.554127, 22.927893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798105, 45.656052, 23.106003>,  <31.005524, 45.825928, 23.402853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798105, 45.656052, 23.106003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211591, 0.904671, -0.369864,
		0.828456, -0.034765, -0.558974,
		-0.518546, -0.424690, -0.742125,
		30.642542, 45.528645, 22.883366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170679, 46.302696, 22.859938>,  <31.005524, 45.825928, 23.402853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170679, 46.302696, 22.859938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850508, 46.091297, 22.746796>,  <30.658405, 45.964458, 22.678911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.850508, 46.091297, 22.746796>,  <31.170679, 46.302696, 22.859938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850508, 46.091297, 22.746796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334405, 0.785317, -0.521009,
		0.497481, -0.322443, -0.805322,
		-0.800429, -0.528495, -0.282854,
		30.610378, 45.932747, 22.661940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983809, 46.572460, 22.256344>,  <31.170679, 46.302696, 22.859938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983809, 46.572460, 22.256344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648054, 46.365196, 22.322002>,  <30.446602, 46.240837, 22.361397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648054, 46.365196, 22.322002>,  <30.983809, 46.572460, 22.256344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648054, 46.365196, 22.322002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480329, 0.565801, -0.670189,
		0.254389, -0.641392, -0.723811,
		-0.839387, -0.518157, 0.164146,
		30.396238, 46.209747, 22.371246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676203, 46.459343, 21.642523>,  <30.983809, 46.572460, 22.256344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676203, 46.459343, 21.642523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377470, 46.408688, 21.903660>,  <30.198231, 46.378296, 22.060343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.377470, 46.408688, 21.903660>,  <30.676203, 46.459343, 21.642523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377470, 46.408688, 21.903660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537435, 0.693123, -0.480359,
		-0.391667, -0.709608, -0.585707,
		-0.746833, -0.126639, 0.652842,
		30.153419, 46.370697, 22.099512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123423, 46.129177, 21.294096>,  <30.676203, 46.459343, 21.642523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123423, 46.129177, 21.294096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.999199, 46.355721, 21.599457>,  <29.924664, 46.491646, 21.782673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.999199, 46.355721, 21.599457>,  <30.123423, 46.129177, 21.294096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999199, 46.355721, 21.599457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355478, 0.675642, -0.645866,
		-0.881582, -0.471954, -0.008498,
		-0.310561, 0.566363, 0.763404,
		29.906031, 46.525631, 21.828478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605844, 45.735359, 20.838379>,  <30.123423, 46.129177, 21.294096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605844, 45.735359, 20.838379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439690, 45.531944, 20.536692>,  <29.339996, 45.409897, 20.355679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439690, 45.531944, 20.536692>,  <29.605844, 45.735359, 20.838379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439690, 45.531944, 20.536692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061912, -0.811409, 0.581191,
		-0.907535, 0.288115, 0.305565,
		-0.415388, -0.508533, -0.754219,
		29.315073, 45.379383, 20.310427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054165, 45.351177, 21.090376>,  <29.605844, 45.735359, 20.838379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054165, 45.351177, 21.090376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177492, 45.157036, 20.763115>,  <29.251490, 45.040550, 20.566759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177492, 45.157036, 20.763115>,  <29.054165, 45.351177, 21.090376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177492, 45.157036, 20.763115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049500, -0.850700, 0.523315,
		-0.949994, -0.201847, -0.238263,
		0.308320, -0.485352, -0.818151,
		29.269989, 45.011429, 20.517670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782804, 44.738869, 21.250208>,  <29.054165, 45.351177, 21.090376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782804, 44.738869, 21.250208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993559, 44.638191, 20.925482>,  <29.120010, 44.577785, 20.730646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.993559, 44.638191, 20.925482>,  <28.782804, 44.738869, 21.250208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993559, 44.638191, 20.925482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003361, -0.955758, 0.294136,
		-0.849930, -0.152248, -0.504421,
		0.526886, -0.251690, -0.811815,
		29.151625, 44.562683, 20.681936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551144, 44.108913, 20.985334>,  <28.782804, 44.738869, 21.250208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551144, 44.108913, 20.985334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908094, 44.135189, 20.806740>,  <29.122265, 44.150955, 20.699583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908094, 44.135189, 20.806740>,  <28.551144, 44.108913, 20.985334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908094, 44.135189, 20.806740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171316, -0.964603, 0.200479,
		-0.417512, -0.255393, -0.872043,
		0.892376, 0.065692, -0.446486,
		29.175808, 44.154896, 20.672794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642435, 43.500313, 20.551519>,  <28.551144, 44.108913, 20.985334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642435, 43.500313, 20.551519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015182, 43.622257, 20.630188>,  <29.238831, 43.695423, 20.677389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015182, 43.622257, 20.630188>,  <28.642435, 43.500313, 20.551519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015182, 43.622257, 20.630188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262624, -0.940856, 0.214055,
		0.250298, -0.147820, -0.956818,
		0.931869, 0.304860, 0.196674,
		29.294743, 43.713715, 20.689190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047516, 43.050125, 20.296375>,  <28.642435, 43.500313, 20.551519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047516, 43.050125, 20.296375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275276, 43.227905, 20.572998>,  <29.411932, 43.334572, 20.738972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275276, 43.227905, 20.572998>,  <29.047516, 43.050125, 20.296375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275276, 43.227905, 20.572998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281802, -0.895805, 0.343688,
		0.772251, -0.000814, -0.635317,
		0.569400, 0.444447, 0.691556,
		29.446096, 43.361240, 20.780464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727135, 42.736664, 20.245657>,  <29.047516, 43.050125, 20.296375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727135, 42.736664, 20.245657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690870, 42.882969, 20.616169>,  <29.669111, 42.970753, 20.838476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.690870, 42.882969, 20.616169>,  <29.727135, 42.736664, 20.245657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690870, 42.882969, 20.616169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234525, -0.896112, 0.376804,
		0.967873, 0.251398, -0.004539,
		-0.090661, 0.365763, 0.926282,
		29.663671, 42.992699, 20.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193062, 42.435837, 20.609535>,  <29.727135, 42.736664, 20.245657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193062, 42.435837, 20.609535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961340, 42.560516, 20.910801>,  <29.822308, 42.635323, 21.091560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.961340, 42.560516, 20.910801>,  <30.193062, 42.435837, 20.609535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961340, 42.560516, 20.910801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042772, -0.934350, 0.353779,
		0.813990, 0.172731, 0.554603,
		-0.579302, 0.311695, 0.753164,
		29.787550, 42.654026, 21.136749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742233, 41.914040, 20.507896>,  <30.193062, 42.435837, 20.609535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742233, 41.914040, 20.507896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689701, 41.573837, 20.304173>,  <30.658182, 41.369717, 20.181938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.689701, 41.573837, 20.304173>,  <30.742233, 41.914040, 20.507896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689701, 41.573837, 20.304173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207034, 0.525963, -0.824924,
		0.969479, -0.002892, -0.245157,
		-0.131329, -0.850503, -0.509312,
		30.650303, 41.318687, 20.151379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166515, 42.075481, 19.931234>,  <30.742233, 41.914040, 20.507896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166515, 42.075481, 19.931234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879864, 41.799561, 19.890030>,  <30.707872, 41.634007, 19.865307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879864, 41.799561, 19.890030>,  <31.166515, 42.075481, 19.931234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879864, 41.799561, 19.890030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175854, 0.321633, -0.930391,
		0.674920, -0.648631, -0.351797,
		-0.716630, -0.689805, -0.103013,
		30.664875, 41.592621, 19.859127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365814, 41.770279, 19.321690>,  <31.166515, 42.075481, 19.931234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365814, 41.770279, 19.321690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974543, 41.743744, 19.400448>,  <30.739780, 41.727821, 19.447702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.974543, 41.743744, 19.400448>,  <31.365814, 41.770279, 19.321690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974543, 41.743744, 19.400448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206246, 0.195498, -0.958772,
		0.025107, -0.978458, -0.204913,
		-0.978178, -0.066334, 0.196895,
		30.681089, 41.723843, 19.459517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129007, 41.438953, 18.768667>,  <31.365814, 41.770279, 19.321690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129007, 41.438953, 18.768667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798550, 41.599194, 18.927164>,  <30.600275, 41.695335, 19.022263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.798550, 41.599194, 18.927164>,  <31.129007, 41.438953, 18.768667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798550, 41.599194, 18.927164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304845, 0.273651, -0.912241,
		-0.473874, -0.874435, -0.103955,
		-0.826144, 0.400597, 0.396244,
		30.550707, 41.719372, 19.046038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534878, 41.343594, 18.278986>,  <31.129007, 41.438953, 18.768667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534878, 41.343594, 18.278986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.365686, 41.615475, 18.518682>,  <30.264172, 41.778603, 18.662500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.365686, 41.615475, 18.518682>,  <30.534878, 41.343594, 18.278986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365686, 41.615475, 18.518682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383266, 0.465049, -0.798021,
		-0.821095, -0.567215, 0.063802,
		-0.422978, 0.679703, 0.599243,
		30.238792, 41.819386, 18.698456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778767, 41.432423, 18.125591>,  <30.534878, 41.343594, 18.278986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778767, 41.432423, 18.125591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902573, 41.775951, 18.288872>,  <29.976856, 41.982067, 18.386841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902573, 41.775951, 18.288872>,  <29.778767, 41.432423, 18.125591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902573, 41.775951, 18.288872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501803, 0.512163, -0.697053,
		-0.807709, 0.010912, 0.589480,
		0.309516, 0.858819, 0.408203,
		29.995428, 42.033596, 18.411333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265408, 41.899532, 18.031431>,  <29.778767, 41.432423, 18.125591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265408, 41.899532, 18.031431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582293, 42.130405, 18.110689>,  <29.772423, 42.268929, 18.158243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582293, 42.130405, 18.110689>,  <29.265408, 41.899532, 18.031431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582293, 42.130405, 18.110689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206784, 0.559386, -0.802701,
		-0.574145, 0.594935, 0.562504,
		0.792211, 0.577183, 0.198145,
		29.819956, 42.303562, 18.170134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995157, 42.524536, 17.952150>,  <29.265408, 41.899532, 18.031431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995157, 42.524536, 17.952150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388186, 42.598602, 17.945627>,  <29.624002, 42.643044, 17.941713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388186, 42.598602, 17.945627>,  <28.995157, 42.524536, 17.952150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388186, 42.598602, 17.945627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133469, 0.641714, -0.755241,
		-0.129380, 0.744255, 0.655244,
		0.982572, 0.185168, -0.016310,
		29.682957, 42.654152, 17.940735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073889, 43.247921, 17.871159>,  <28.995157, 42.524536, 17.952150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073889, 43.247921, 17.871159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424486, 43.091347, 17.759058>,  <29.634844, 42.997402, 17.691797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424486, 43.091347, 17.759058>,  <29.073889, 43.247921, 17.871159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424486, 43.091347, 17.759058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045393, 0.646743, -0.761356,
		0.479269, 0.654602, 0.584634,
		0.876493, -0.391433, -0.280249,
		29.687433, 42.973915, 17.674984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.618839, 33.307602, 29.689184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002945, 33.341679, 29.582872>,  <33.233406, 33.362125, 29.519085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002945, 33.341679, 29.582872>,  <32.618839, 33.307602, 29.689184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002945, 33.341679, 29.582872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278955, 0.262215, -0.923811,
		-0.009011, 0.961242, 0.275560,
		0.960262, 0.085193, -0.265781,
		33.291023, 33.367237, 29.503138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710655, 33.936207, 29.383200>,  <32.618839, 33.307602, 29.689184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710655, 33.936207, 29.383200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996975, 33.716122, 29.211199>,  <33.168766, 33.584072, 29.107998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996975, 33.716122, 29.211199>,  <32.710655, 33.936207, 29.383200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996975, 33.716122, 29.211199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330030, 0.276116, -0.902685,
		0.615396, 0.788054, 0.016058,
		0.715799, -0.550209, -0.430002,
		33.211716, 33.551060, 29.082197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986610, 34.336441, 28.979582>,  <32.710655, 33.936207, 29.383200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986610, 34.336441, 28.979582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114510, 33.985306, 28.836939>,  <33.191250, 33.774624, 28.751352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114510, 33.985306, 28.836939>,  <32.986610, 34.336441, 28.979582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114510, 33.985306, 28.836939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255722, 0.282449, -0.924570,
		0.912343, 0.386820, -0.134169,
		0.319746, -0.877834, -0.356608,
		33.210434, 33.721954, 28.729956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350414, 34.523487, 28.403412>,  <32.986610, 34.336441, 28.979582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350414, 34.523487, 28.403412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281986, 34.132999, 28.350138>,  <33.240929, 33.898708, 28.318172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281986, 34.132999, 28.350138>,  <33.350414, 34.523487, 28.403412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281986, 34.132999, 28.350138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079679, 0.148444, -0.985706,
		0.982032, -0.158009, -0.103177,
		-0.171067, -0.976216, -0.133187,
		33.230667, 33.840134, 28.310183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861294, 34.275455, 27.907669>,  <33.350414, 34.523487, 28.403412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861294, 34.275455, 27.907669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544846, 34.030910, 27.900017>,  <33.354977, 33.884186, 27.895426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544846, 34.030910, 27.900017>,  <33.861294, 34.275455, 27.907669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544846, 34.030910, 27.900017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056589, 0.104301, -0.992935,
		0.609035, -0.784450, -0.117110,
		-0.791122, -0.611359, -0.019132,
		33.307510, 33.847504, 27.894278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927868, 33.753151, 27.323755>,  <33.861294, 34.275455, 27.907669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927868, 33.753151, 27.323755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534916, 33.749561, 27.398422>,  <33.299145, 33.747410, 27.443222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534916, 33.749561, 27.398422>,  <33.927868, 33.753151, 27.323755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534916, 33.749561, 27.398422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186754, 0.084355, -0.978778,
		-0.006969, -0.996395, -0.084544,
		-0.982382, -0.008968, 0.186669,
		33.240200, 33.746868, 27.454422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630199, 33.492882, 26.699390>,  <33.927868, 33.753151, 27.323755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630199, 33.492882, 26.699390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337986, 33.675930, 26.902136>,  <33.162659, 33.785759, 27.023783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337986, 33.675930, 26.902136>,  <33.630199, 33.492882, 26.699390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337986, 33.675930, 26.902136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384642, 0.337553, -0.859133,
		-0.564247, -0.822584, -0.070574,
		-0.730531, 0.457618, 0.506863,
		33.118828, 33.813213, 27.054195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926163, 33.132370, 26.543934>,  <33.630199, 33.492882, 26.699390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926163, 33.132370, 26.543934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843887, 33.507458, 26.655920>,  <32.794521, 33.732510, 26.723112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843887, 33.507458, 26.655920>,  <32.926163, 33.132370, 26.543934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843887, 33.507458, 26.655920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491117, 0.148537, -0.858336,
		-0.846461, -0.314045, 0.429976,
		-0.205689, 0.937717, 0.279964,
		32.782181, 33.788773, 26.739908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208511, 33.264290, 26.419386>,  <32.926163, 33.132370, 26.543934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208511, 33.264290, 26.419386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361801, 33.632515, 26.449594>,  <32.453773, 33.853451, 26.467720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361801, 33.632515, 26.449594>,  <32.208511, 33.264290, 26.419386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361801, 33.632515, 26.449594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539227, 0.289362, -0.790888,
		-0.749915, 0.262364, 0.607283,
		0.383225, 0.920562, 0.075523,
		32.476768, 33.908684, 26.472252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630007, 33.724808, 26.354374>,  <32.208511, 33.264290, 26.419386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630007, 33.724808, 26.354374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943810, 33.964283, 26.289724>,  <32.132092, 34.107967, 26.250935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.943810, 33.964283, 26.289724>,  <31.630007, 33.724808, 26.354374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943810, 33.964283, 26.289724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568271, 0.589742, -0.573823,
		-0.248226, 0.542013, 0.802873,
		0.784507, 0.598688, -0.161622,
		32.179161, 34.143890, 26.241238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341759, 34.398834, 26.427855>,  <31.630007, 33.724808, 26.354374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341759, 34.398834, 26.427855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.680182, 34.462204, 26.224251>,  <31.883234, 34.500225, 26.102089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.680182, 34.462204, 26.224251>,  <31.341759, 34.398834, 26.427855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680182, 34.462204, 26.224251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495216, 0.587062, -0.640406,
		0.197362, 0.793888, 0.575143,
		0.846055, 0.158429, -0.509010,
		31.933998, 34.509731, 26.071548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428135, 35.181904, 26.445587>,  <31.341759, 34.398834, 26.427855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428135, 35.181904, 26.445587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641457, 35.016090, 26.150629>,  <31.769449, 34.916603, 25.973654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641457, 35.016090, 26.150629>,  <31.428135, 35.181904, 26.445587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641457, 35.016090, 26.150629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361102, 0.676736, -0.641587,
		0.764979, 0.608435, 0.211218,
		0.533303, -0.414529, -0.737396,
		31.801447, 34.891731, 25.929411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431641, 35.625298, 27.045715>,  <31.428135, 35.181904, 26.445587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431641, 35.625298, 27.045715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127863, 35.871170, 27.130955>,  <30.945597, 36.018692, 27.182098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.127863, 35.871170, 27.130955>,  <31.431641, 35.625298, 27.045715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127863, 35.871170, 27.130955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213395, -0.544798, 0.810961,
		0.614578, 0.570406, 0.544913,
		-0.759444, 0.614681, 0.213099,
		30.900030, 36.055573, 27.194885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719593, 36.072018, 27.593933>,  <31.431641, 35.625298, 27.045715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719593, 36.072018, 27.593933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328823, 35.986904, 27.601320>,  <31.094362, 35.935837, 27.605753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328823, 35.986904, 27.601320>,  <31.719593, 36.072018, 27.593933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328823, 35.986904, 27.601320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069750, -0.236106, 0.969221,
		-0.201879, 0.948143, 0.245500,
		-0.976924, -0.212788, 0.018468,
		31.035746, 35.923069, 27.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580965, 36.224380, 28.206127>,  <31.719593, 36.072018, 27.593933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580965, 36.224380, 28.206127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233517, 36.045429, 28.120947>,  <31.025047, 35.938057, 28.069839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233517, 36.045429, 28.120947>,  <31.580965, 36.224380, 28.206127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233517, 36.045429, 28.120947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107518, -0.249354, 0.962425,
		-0.483671, 0.858879, 0.168492,
		-0.868621, -0.447381, -0.212951,
		30.972931, 35.911217, 28.057062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037144, 36.550888, 28.544849>,  <31.580965, 36.224380, 28.206127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037144, 36.550888, 28.544849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907070, 36.181095, 28.465267>,  <30.829025, 35.959217, 28.417519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907070, 36.181095, 28.465267>,  <31.037144, 36.550888, 28.544849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907070, 36.181095, 28.465267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155603, -0.155211, 0.975549,
		-0.932761, 0.348190, -0.093381,
		-0.325183, -0.924485, -0.198955,
		30.809515, 35.903751, 28.405581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331881, 36.467464, 28.940603>,  <31.037144, 36.550888, 28.544849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331881, 36.467464, 28.940603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526304, 36.127113, 28.860846>,  <30.642960, 35.922905, 28.812990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526304, 36.127113, 28.860846>,  <30.331881, 36.467464, 28.940603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526304, 36.127113, 28.860846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017293, -0.237479, 0.971239,
		-0.873754, -0.468632, -0.130144,
		0.486060, -0.850875, -0.199394,
		30.672123, 35.871853, 28.801027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026211, 35.982800, 29.258839>,  <30.331881, 36.467464, 28.940603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026211, 35.982800, 29.258839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363983, 35.773106, 29.214811>,  <30.566647, 35.647289, 29.188395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.363983, 35.773106, 29.214811>,  <30.026211, 35.982800, 29.258839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363983, 35.773106, 29.214811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002816, -0.201129, 0.979561,
		-0.535661, -0.827479, -0.168363,
		0.844428, -0.524238, -0.110067,
		30.617311, 35.615833, 29.181791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966927, 35.418522, 29.748205>,  <30.026211, 35.982800, 29.258839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966927, 35.418522, 29.748205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.355946, 35.460098, 29.664928>,  <30.589357, 35.485043, 29.614962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.355946, 35.460098, 29.664928>,  <29.966927, 35.418522, 29.748205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355946, 35.460098, 29.664928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225204, -0.195202, 0.954557,
		0.058578, -0.975240, -0.213251,
		0.972549, 0.103941, -0.208193,
		30.647711, 35.491280, 29.602470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298174, 34.893139, 30.020046>,  <29.966927, 35.418522, 29.748205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298174, 34.893139, 30.020046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596464, 35.156296, 29.977951>,  <30.775438, 35.314190, 29.952694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.596464, 35.156296, 29.977951>,  <30.298174, 34.893139, 30.020046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596464, 35.156296, 29.977951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264103, -0.146878, 0.953245,
		0.611673, -0.738653, -0.283282,
		0.745725, 0.657890, -0.105239,
		30.820181, 35.353664, 29.946379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905745, 34.516155, 30.176073>,  <30.298174, 34.893139, 30.020046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905745, 34.516155, 30.176073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966383, 34.909344, 30.217613>,  <31.002766, 35.145256, 30.242537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.966383, 34.909344, 30.217613>,  <30.905745, 34.516155, 30.176073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966383, 34.909344, 30.217613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358793, -0.152622, 0.920855,
		0.921025, -0.102338, -0.375820,
		0.151596, 0.982972, 0.103850,
		31.011862, 35.204235, 30.248768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602846, 34.616699, 30.403294>,  <30.905745, 34.516155, 30.176073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602846, 34.616699, 30.403294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403214, 34.943844, 30.517853>,  <31.283434, 35.140129, 30.586588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403214, 34.943844, 30.517853>,  <31.602846, 34.616699, 30.403294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403214, 34.943844, 30.517853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439839, -0.045679, 0.896914,
		0.746631, 0.573603, -0.336929,
		-0.499082, 0.817859, 0.286398,
		31.253489, 35.189201, 30.603773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098179, 34.940849, 30.743340>,  <31.602846, 34.616699, 30.403294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098179, 34.940849, 30.743340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778648, 35.135578, 30.884689>,  <31.586929, 35.252415, 30.969500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.778648, 35.135578, 30.884689>,  <32.098179, 34.940849, 30.743340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778648, 35.135578, 30.884689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464611, 0.126160, 0.876482,
		0.382112, 0.864340, -0.326965,
		-0.798828, 0.486826, 0.353375,
		31.539000, 35.281628, 30.990702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344597, 35.473289, 31.142881>,  <32.098179, 34.940849, 30.743340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344597, 35.473289, 31.142881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968185, 35.417229, 31.266050>,  <31.742338, 35.383591, 31.339951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.968185, 35.417229, 31.266050>,  <32.344597, 35.473289, 31.142881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968185, 35.417229, 31.266050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298020, 0.087388, 0.950551,
		-0.160134, 0.986266, -0.040465,
		-0.941032, -0.140156, 0.307921,
		31.685875, 35.375183, 31.358427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327320, 36.002300, 31.614243>,  <32.344597, 35.473289, 31.142881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327320, 36.002300, 31.614243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038605, 35.745293, 31.717154>,  <31.865376, 35.591087, 31.778900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038605, 35.745293, 31.717154>,  <32.327320, 36.002300, 31.614243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038605, 35.745293, 31.717154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312126, 0.029601, 0.949579,
		-0.617740, 0.765696, 0.179182,
		-0.721785, -0.642521, 0.257279,
		31.822069, 35.552536, 31.794338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061249, 36.210190, 32.234520>,  <32.327320, 36.002300, 31.614243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061249, 36.210190, 32.234520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964806, 35.822014, 32.230076>,  <31.906940, 35.589108, 32.227409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.964806, 35.822014, 32.230076>,  <32.061249, 36.210190, 32.234520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964806, 35.822014, 32.230076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449152, -0.121725, 0.885124,
		-0.860309, 0.208417, 0.465222,
		-0.241104, -0.970436, -0.011110,
		31.892475, 35.530884, 32.226742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902351, 36.063198, 32.955486>,  <32.061249, 36.210190, 32.234520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902351, 36.063198, 32.955486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978134, 35.724030, 32.757442>,  <32.023605, 35.520527, 32.638618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978134, 35.724030, 32.757442>,  <31.902351, 36.063198, 32.955486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978134, 35.724030, 32.757442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614540, -0.290871, 0.733304,
		-0.765799, -0.443192, 0.465976,
		0.189456, -0.847924, -0.495107,
		32.034969, 35.469654, 32.608910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517647, 36.488724, 32.902466>,  <31.902351, 36.063198, 32.955486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517647, 36.488724, 32.902466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881107, 36.602486, 33.024754>,  <33.099182, 36.670742, 33.098125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881107, 36.602486, 33.024754>,  <32.517647, 36.488724, 32.902466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881107, 36.602486, 33.024754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053383, 0.805283, -0.590482,
		-0.414130, 0.520222, 0.746904,
		0.908651, 0.284408, 0.305721,
		33.153702, 36.687809, 33.116470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547775, 37.199020, 33.268089>,  <32.517647, 36.488724, 32.902466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547775, 37.199020, 33.268089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892765, 37.165874, 33.068378>,  <33.099758, 37.145988, 32.948551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892765, 37.165874, 33.068378>,  <32.547775, 37.199020, 33.268089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892765, 37.165874, 33.068378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271707, 0.756475, -0.594913,
		0.426984, 0.648752, 0.629924,
		0.862473, -0.082864, -0.499273,
		33.151508, 37.141014, 32.918598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815697, 37.893326, 33.121319>,  <32.547775, 37.199020, 33.268089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815697, 37.893326, 33.121319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035667, 37.703114, 32.846668>,  <33.167648, 37.588985, 32.681877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035667, 37.703114, 32.846668>,  <32.815697, 37.893326, 33.121319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035667, 37.703114, 32.846668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186888, 0.731188, -0.656077,
		0.814038, 0.489113, 0.313225,
		0.549923, -0.475534, -0.686624,
		33.200645, 37.560455, 32.640682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219345, 38.479275, 32.750240>,  <32.815697, 37.893326, 33.121319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219345, 38.479275, 32.750240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207691, 38.154263, 32.517365>,  <33.200699, 37.959255, 32.377640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207691, 38.154263, 32.517365>,  <33.219345, 38.479275, 32.750240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207691, 38.154263, 32.517365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071038, 0.582650, -0.809613,
		0.997048, 0.017766, -0.074699,
		-0.029139, -0.812529, -0.582192,
		33.198948, 37.910503, 32.342709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774529, 38.485981, 32.227104>,  <33.219345, 38.479275, 32.750240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774529, 38.485981, 32.227104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505775, 38.245346, 32.054287>,  <33.344524, 38.100964, 31.950596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505775, 38.245346, 32.054287>,  <33.774529, 38.485981, 32.227104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505775, 38.245346, 32.054287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092523, 0.510586, -0.854834,
		0.734854, -0.614324, -0.287394,
		-0.671885, -0.601588, -0.432045,
		33.304211, 38.064869, 31.924673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965858, 38.485931, 31.575237>,  <33.774529, 38.485981, 32.227104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965858, 38.485931, 31.575237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577564, 38.390247, 31.583694>,  <33.344585, 38.332836, 31.588768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.577564, 38.390247, 31.583694>,  <33.965858, 38.485931, 31.575237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577564, 38.390247, 31.583694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115372, 0.387345, -0.914687,
		0.210612, -0.890361, -0.403609,
		-0.970738, -0.239209, 0.021143,
		33.286343, 38.318485, 31.590038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758869, 38.403221, 30.868183>,  <33.965858, 38.485931, 31.575237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758869, 38.403221, 30.868183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413231, 38.454662, 31.062834>,  <33.205849, 38.485527, 31.179625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413231, 38.454662, 31.062834>,  <33.758869, 38.403221, 30.868183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413231, 38.454662, 31.062834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355261, 0.529049, -0.770647,
		-0.356556, -0.838790, -0.411460,
		-0.864093, 0.128603, 0.486625,
		33.154003, 38.493244, 31.208820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319878, 38.298962, 30.364758>,  <33.758869, 38.403221, 30.868183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319878, 38.298962, 30.364758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102650, 38.493130, 30.638821>,  <32.972313, 38.609631, 30.803259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102650, 38.493130, 30.638821>,  <33.319878, 38.298962, 30.364758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102650, 38.493130, 30.638821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501260, 0.467216, -0.728319,
		-0.673660, -0.738968, -0.010406,
		-0.543066, 0.485423, 0.685160,
		32.939732, 38.638756, 30.844368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675045, 38.363632, 30.077076>,  <33.319878, 38.298962, 30.364758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675045, 38.363632, 30.077076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682896, 38.656223, 30.349709>,  <32.687607, 38.831779, 30.513288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.682896, 38.656223, 30.349709>,  <32.675045, 38.363632, 30.077076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682896, 38.656223, 30.349709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511977, 0.592902, -0.621568,
		-0.858775, -0.336754, 0.386138,
		0.019626, 0.731481, 0.681580,
		32.688782, 38.875668, 30.554182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099213, 38.633972, 30.007166>,  <32.675045, 38.363632, 30.077076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099213, 38.633972, 30.007166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277473, 38.915596, 30.228325>,  <32.384430, 39.084572, 30.361019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277473, 38.915596, 30.228325>,  <32.099213, 38.633972, 30.007166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277473, 38.915596, 30.228325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436892, 0.710128, -0.552127,
		-0.781356, 0.004503, 0.624069,
		0.445655, 0.704058, 0.552896,
		32.411171, 39.126812, 30.394194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667213, 39.155964, 30.119553>,  <32.099213, 38.633972, 30.007166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667213, 39.155964, 30.119553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023415, 39.329979, 30.172842>,  <32.237137, 39.434387, 30.204815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023415, 39.329979, 30.172842>,  <31.667213, 39.155964, 30.119553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023415, 39.329979, 30.172842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342750, 0.834009, -0.432380,
		-0.299210, 0.339373, 0.891796,
		0.890504, 0.435035, 0.133224,
		32.290565, 39.460491, 30.212809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552702, 39.895233, 30.178881>,  <31.667213, 39.155964, 30.119553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552702, 39.895233, 30.178881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944677, 39.916386, 30.102022>,  <32.179863, 39.929077, 30.055906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944677, 39.916386, 30.102022>,  <31.552702, 39.895233, 30.178881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944677, 39.916386, 30.102022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167136, 0.743196, -0.647863,
		0.108545, 0.666982, 0.737125,
		0.979941, 0.052877, -0.192147,
		32.238659, 39.932247, 30.044378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767733, 40.693443, 30.078232>,  <31.552702, 39.895233, 30.178881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767733, 40.693443, 30.078232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028694, 40.458870, 29.886204>,  <32.185272, 40.318127, 29.770987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028694, 40.458870, 29.886204>,  <31.767733, 40.693443, 30.078232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028694, 40.458870, 29.886204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087784, 0.570708, -0.816447,
		0.752768, 0.574798, 0.320854,
		0.652406, -0.586430, -0.480069,
		32.224415, 40.282940, 29.742184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178188, 41.145184, 29.821241>,  <31.767733, 40.693443, 30.078232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178188, 41.145184, 29.821241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.242226, 40.823128, 29.592815>,  <32.280647, 40.629894, 29.455761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.242226, 40.823128, 29.592815>,  <32.178188, 41.145184, 29.821241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242226, 40.823128, 29.592815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140997, 0.591245, -0.794071,
		0.976979, 0.046609, 0.208179,
		0.160096, -0.805144, -0.571063,
		32.290253, 40.581585, 29.421497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708439, 41.285267, 29.357977>,  <32.178188, 41.145184, 29.821241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708439, 41.285267, 29.357977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495491, 41.005947, 29.166582>,  <32.367722, 40.838356, 29.051744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495491, 41.005947, 29.166582>,  <32.708439, 41.285267, 29.357977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495491, 41.005947, 29.166582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035422, 0.546376, -0.836791,
		0.845768, -0.462434, -0.266141,
		-0.532373, -0.698304, -0.478487,
		32.335777, 40.796455, 29.023035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930279, 41.431618, 28.620476>,  <32.708439, 41.285267, 29.357977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930279, 41.431618, 28.620476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649239, 41.149178, 28.585215>,  <32.480614, 40.979713, 28.564058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649239, 41.149178, 28.585215>,  <32.930279, 41.431618, 28.620476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649239, 41.149178, 28.585215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211853, 0.325834, -0.921385,
		0.679312, -0.628694, -0.378522,
		-0.702605, -0.706098, -0.088152,
		32.438457, 40.937347, 28.558769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061993, 41.045715, 28.078106>,  <32.930279, 41.431618, 28.620476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061993, 41.045715, 28.078106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669075, 40.979210, 28.112654>,  <32.433327, 40.939304, 28.133383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669075, 40.979210, 28.112654>,  <33.061993, 41.045715, 28.078106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669075, 40.979210, 28.112654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134360, 0.303831, -0.943204,
		0.130579, -0.938106, -0.320790,
		-0.982292, -0.166265, 0.086370,
		32.374386, 40.929329, 28.138565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964203, 40.721783, 27.445063>,  <33.061993, 41.045715, 28.078106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964203, 40.721783, 27.445063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611843, 40.827961, 27.601807>,  <32.400429, 40.891666, 27.695852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611843, 40.827961, 27.601807>,  <32.964203, 40.721783, 27.445063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611843, 40.827961, 27.601807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331447, 0.245057, -0.911093,
		-0.337874, -0.932462, -0.127890,
		-0.880900, 0.265446, 0.391860,
		32.347572, 40.907593, 27.719364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462898, 40.293549, 27.007059>,  <32.964203, 40.721783, 27.445063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462898, 40.293549, 27.007059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327259, 40.633404, 27.168612>,  <32.245876, 40.837318, 27.265543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.327259, 40.633404, 27.168612>,  <32.462898, 40.293549, 27.007059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327259, 40.633404, 27.168612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287385, 0.315240, -0.904452,
		-0.895781, -0.422768, 0.137277,
		-0.339098, 0.849642, 0.403883,
		32.225529, 40.888298, 27.289776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834215, 40.422592, 26.678324>,  <32.462898, 40.293549, 27.007059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834215, 40.422592, 26.678324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916750, 40.780014, 26.837812>,  <31.966270, 40.994469, 26.933506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.916750, 40.780014, 26.837812>,  <31.834215, 40.422592, 26.678324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916750, 40.780014, 26.837812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505119, 0.446267, -0.738715,
		-0.838021, -0.048977, 0.543435,
		0.206337, 0.893559, 0.398721,
		31.978651, 41.048080, 26.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192522, 40.724785, 26.587975>,  <31.834215, 40.422592, 26.678324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192522, 40.724785, 26.587975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475744, 41.003410, 26.634380>,  <31.645678, 41.170586, 26.662224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475744, 41.003410, 26.634380>,  <31.192522, 40.724785, 26.587975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475744, 41.003410, 26.634380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265125, 0.414500, -0.870574,
		-0.654495, 0.585657, 0.478165,
		0.708057, 0.696560, 0.116016,
		31.688162, 41.212379, 26.669186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892206, 41.385735, 26.376238>,  <31.192522, 40.724785, 26.587975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892206, 41.385735, 26.376238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272192, 41.510677, 26.376793>,  <31.500183, 41.585644, 26.377125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272192, 41.510677, 26.376793>,  <30.892206, 41.385735, 26.376238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272192, 41.510677, 26.376793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153465, 0.470589, -0.868904,
		-0.272060, 0.825215, 0.494979,
		0.949964, 0.312355, 0.001387,
		31.557180, 41.604385, 26.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864752, 42.090919, 26.245262>,  <30.892206, 41.385735, 26.376238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864752, 42.090919, 26.245262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233280, 41.973900, 26.142830>,  <31.454397, 41.903687, 26.081369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233280, 41.973900, 26.142830>,  <30.864752, 42.090919, 26.245262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233280, 41.973900, 26.142830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115381, 0.423245, -0.898638,
		0.371285, 0.857482, 0.356190,
		0.921322, -0.292554, -0.256082,
		31.509676, 41.886135, 26.066006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140425, 42.690784, 25.977091>,  <30.864752, 42.090919, 26.245262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140425, 42.690784, 25.977091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406580, 42.421783, 25.847477>,  <31.566273, 42.260384, 25.769709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406580, 42.421783, 25.847477>,  <31.140425, 42.690784, 25.977091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406580, 42.421783, 25.847477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015593, 0.446499, -0.894648,
		0.746336, 0.590234, 0.307581,
		0.665387, -0.672504, -0.324035,
		31.606195, 42.220032, 25.750267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838831, 42.996262, 25.788137>,  <31.140425, 42.690784, 25.977091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838831, 42.996262, 25.788137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771982, 42.669838, 25.566824>,  <31.731873, 42.473984, 25.434036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771982, 42.669838, 25.566824>,  <31.838831, 42.996262, 25.788137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771982, 42.669838, 25.566824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067413, 0.569319, -0.819348,
		0.983629, -0.099631, -0.150157,
		-0.167120, -0.816058, -0.553282,
		31.721846, 42.425022, 25.400839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305557, 43.111977, 25.277021>,  <31.838831, 42.996262, 25.788137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305557, 43.111977, 25.277021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.063702, 42.821213, 25.146784>,  <31.918589, 42.646755, 25.068642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.063702, 42.821213, 25.146784>,  <32.305557, 43.111977, 25.277021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063702, 42.821213, 25.146784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102453, 0.476364, -0.873258,
		0.789882, -0.494649, -0.362503,
		-0.604640, -0.726911, -0.325594,
		31.882309, 42.603138, 25.049107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536152, 42.914234, 24.626352>,  <32.305557, 43.111977, 25.277021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536152, 42.914234, 24.626352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150784, 42.809013, 24.646816>,  <31.919561, 42.745880, 24.659094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150784, 42.809013, 24.646816>,  <32.536152, 42.914234, 24.626352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150784, 42.809013, 24.646816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164530, 0.429935, -0.887742,
		0.211530, -0.863688, -0.457490,
		-0.963423, -0.263055, 0.051159,
		31.861757, 42.730095, 24.662163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146461, 42.777431, 24.168308>,  <32.536152, 42.914234, 24.626352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146461, 42.777431, 24.168308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435825, 42.895798, 23.918791>,  <33.609444, 42.966816, 23.769081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435825, 42.895798, 23.918791>,  <33.146461, 42.777431, 24.168308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435825, 42.895798, 23.918791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685063, -0.419991, 0.595228,
		-0.085849, -0.857929, -0.506545,
		0.723408, 0.295915, -0.623791,
		33.652847, 42.984573, 23.731653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542522, 42.223530, 24.061087>,  <33.146461, 42.777431, 24.168308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542522, 42.223530, 24.061087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761635, 42.554111, 24.009087>,  <33.893105, 42.752460, 23.977886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761635, 42.554111, 24.009087>,  <33.542522, 42.223530, 24.061087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761635, 42.554111, 24.009087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698297, -0.366083, 0.615113,
		0.460774, -0.427728, -0.777648,
		0.547784, 0.826458, -0.129999,
		33.925972, 42.802048, 23.970087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255451, 41.997326, 23.947605>,  <33.542522, 42.223530, 24.061087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255451, 41.997326, 23.947605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281178, 42.376259, 24.073095>,  <34.296612, 42.603619, 24.148390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.281178, 42.376259, 24.073095>,  <34.255451, 41.997326, 23.947605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281178, 42.376259, 24.073095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576076, -0.291947, 0.763481,
		0.814862, 0.131627, -0.564512,
		0.064313, 0.947334, 0.313724,
		34.300472, 42.660458, 24.167213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957268, 42.103874, 23.991604>,  <34.255451, 41.997326, 23.947605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957268, 42.103874, 23.991604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794765, 42.384991, 24.225199>,  <34.697262, 42.553661, 24.365355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794765, 42.384991, 24.225199>,  <34.957268, 42.103874, 23.991604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794765, 42.384991, 24.225199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696939, -0.175009, 0.695448,
		0.590957, 0.689534, -0.418703,
		-0.406259, 0.702790, 0.583986,
		34.672890, 42.595829, 24.400394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498329, 42.538254, 24.236744>,  <34.957268, 42.103874, 23.991604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498329, 42.538254, 24.236744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199913, 42.591320, 24.497765>,  <35.020863, 42.623158, 24.654377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199913, 42.591320, 24.497765>,  <35.498329, 42.538254, 24.236744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199913, 42.591320, 24.497765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608655, -0.261657, 0.749049,
		0.270116, 0.956000, 0.114460,
		-0.746041, 0.132663, 0.652552,
		34.976101, 42.631119, 24.693531>
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
