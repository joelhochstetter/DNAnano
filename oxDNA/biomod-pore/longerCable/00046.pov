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
	<24.061518, 35.096531, 34.673820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164564, 35.148148, 35.056858>,  <24.226393, 35.179119, 35.286678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164564, 35.148148, 35.056858>,  <24.061518, 35.096531, 34.673820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164564, 35.148148, 35.056858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648043, 0.712027, -0.270290,
		-0.716710, 0.690192, 0.099805,
		0.257617, 0.129042, 0.957592,
		24.241850, 35.186859, 35.344135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909542, 35.786446, 34.924366>,  <24.061518, 35.096531, 34.673820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909542, 35.786446, 34.924366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225834, 35.621658, 35.105484>,  <24.415609, 35.522785, 35.214153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225834, 35.621658, 35.105484>,  <23.909542, 35.786446, 34.924366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225834, 35.621658, 35.105484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501507, 0.860116, -0.093227,
		-0.351048, 0.300796, 0.886728,
		0.790732, -0.411973, 0.452794,
		24.463053, 35.498066, 35.241322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320307, 36.304901, 35.030083>,  <23.909542, 35.786446, 34.924366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320307, 36.304901, 35.030083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566078, 36.032124, 35.188793>,  <24.713541, 35.868458, 35.284019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.566078, 36.032124, 35.188793>,  <24.320307, 36.304901, 35.030083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.566078, 36.032124, 35.188793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716463, 0.692865, 0.081354,
		-0.330391, 0.234288, 0.914304,
		0.614429, -0.681943, 0.396775,
		24.750406, 35.827541, 35.307827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719637, 36.644012, 35.402714>,  <24.320307, 36.304901, 35.030083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719637, 36.644012, 35.402714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927683, 36.303886, 35.370605>,  <25.052511, 36.099812, 35.351341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927683, 36.303886, 35.370605>,  <24.719637, 36.644012, 35.402714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927683, 36.303886, 35.370605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849570, 0.524733, -0.053723,
		0.087800, -0.040251, 0.995325,
		0.520117, -0.850315, -0.080267,
		25.083717, 36.048790, 35.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432230, 36.869308, 35.714291>,  <24.719637, 36.644012, 35.402714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432230, 36.869308, 35.714291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798714, 36.957764, 35.847954>,  <26.018604, 37.010838, 35.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798714, 36.957764, 35.847954>,  <25.432230, 36.869308, 35.714291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798714, 36.957764, 35.847954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264869, -0.291541, 0.919156,
		0.300679, -0.930647, -0.208540,
		0.916207, 0.221135, 0.334160,
		26.073576, 37.024105, 35.948200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721556, 36.250038, 36.015591>,  <25.432230, 36.869308, 35.714291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721556, 36.250038, 36.015591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907116, 36.558289, 36.190372>,  <26.018452, 36.743240, 36.295242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907116, 36.558289, 36.190372>,  <25.721556, 36.250038, 36.015591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907116, 36.558289, 36.190372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116272, -0.436009, 0.892399,
		0.878224, -0.464789, -0.112662,
		0.463899, 0.770628, 0.436956,
		26.046286, 36.789478, 36.321461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551868, 35.813286, 36.582809>,  <25.721556, 36.250038, 36.015591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551868, 35.813286, 36.582809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733109, 36.146942, 36.708607>,  <25.841852, 36.347137, 36.784084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733109, 36.146942, 36.708607>,  <25.551868, 35.813286, 36.582809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733109, 36.146942, 36.708607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089160, -0.308612, 0.947000,
		0.886990, -0.457126, -0.065459,
		0.453100, 0.834143, 0.314493,
		25.869038, 36.397186, 36.802956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053690, 35.577534, 37.019157>,  <25.551868, 35.813286, 36.582809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053690, 35.577534, 37.019157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969395, 35.951118, 37.134613>,  <25.918818, 36.175270, 37.203888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969395, 35.951118, 37.134613>,  <26.053690, 35.577534, 37.019157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969395, 35.951118, 37.134613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188369, -0.328535, 0.925517,
		0.959221, 0.140673, 0.245164,
		-0.210740, 0.933957, 0.288639,
		25.906172, 36.231304, 37.221207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239256, 35.624054, 37.763588>,  <26.053690, 35.577534, 37.019157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239256, 35.624054, 37.763588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016039, 35.955910, 37.756863>,  <25.882109, 36.155025, 37.752827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016039, 35.955910, 37.756863>,  <26.239256, 35.624054, 37.763588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016039, 35.955910, 37.756863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207441, -0.119860, 0.970877,
		0.803467, 0.545276, 0.238989,
		-0.558041, 0.829643, -0.016809,
		25.848627, 36.204803, 37.751820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342968, 35.971107, 38.334602>,  <26.239256, 35.624054, 37.763588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342968, 35.971107, 38.334602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986794, 36.119160, 38.228676>,  <25.773088, 36.207989, 38.165119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986794, 36.119160, 38.228676>,  <26.342968, 35.971107, 38.334602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986794, 36.119160, 38.228676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374154, -0.264104, 0.888964,
		0.259093, 0.890648, 0.373653,
		-0.890438, 0.370128, -0.264812,
		25.719662, 36.230198, 38.149231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067345, 36.711441, 38.663139>,  <26.342968, 35.971107, 38.334602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067345, 36.711441, 38.663139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802063, 36.424576, 38.577499>,  <25.642895, 36.252457, 38.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802063, 36.424576, 38.577499>,  <26.067345, 36.711441, 38.663139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802063, 36.424576, 38.577499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156307, -0.147040, 0.976702,
		-0.731935, 0.681219, -0.014580,
		-0.663204, -0.717162, -0.214103,
		25.603102, 36.209427, 38.513268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409603, 36.828674, 38.934319>,  <26.067345, 36.711441, 38.663139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409603, 36.828674, 38.934319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419260, 36.428810, 38.938377>,  <25.425055, 36.188892, 38.940811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419260, 36.428810, 38.938377>,  <25.409603, 36.828674, 38.934319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419260, 36.428810, 38.938377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143297, 0.006586, 0.989658,
		-0.989385, -0.025345, -0.143089,
		0.024141, -0.999657, 0.010148,
		25.426502, 36.128914, 38.941422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850185, 36.691864, 39.335274>,  <25.409603, 36.828674, 38.934319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850185, 36.691864, 39.335274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089132, 36.371227, 39.345070>,  <25.232500, 36.178844, 39.350948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089132, 36.371227, 39.345070>,  <24.850185, 36.691864, 39.335274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089132, 36.371227, 39.345070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157003, -0.086950, 0.983763,
		-0.786449, -0.591512, -0.177794,
		0.597367, -0.801594, 0.024488,
		25.268343, 36.130749, 39.352417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401897, 36.148323, 39.476246>,  <24.850185, 36.691864, 39.335274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401897, 36.148323, 39.476246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770658, 36.066139, 39.607624>,  <24.991915, 36.016830, 39.686451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770658, 36.066139, 39.607624>,  <24.401897, 36.148323, 39.476246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770658, 36.066139, 39.607624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246290, 0.343615, 0.906239,
		-0.299055, -0.916360, 0.266178,
		0.921904, -0.205458, 0.328450,
		25.047230, 36.004501, 39.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494200, 35.449387, 39.055267>,  <24.401897, 36.148323, 39.476246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494200, 35.449387, 39.055267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513323, 35.387508, 39.449989>,  <24.524797, 35.350380, 39.686821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.513323, 35.387508, 39.449989>,  <24.494200, 35.449387, 39.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513323, 35.387508, 39.449989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945410, -0.325840, -0.005277,
		0.322357, -0.932683, -0.161827,
		0.047809, -0.154694, 0.986805,
		24.527666, 35.341099, 39.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033255, 35.601555, 38.431648>,  <24.494200, 35.449387, 39.055267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033255, 35.601555, 38.431648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101206, 35.941166, 38.631767>,  <25.141977, 36.144932, 38.751839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101206, 35.941166, 38.631767>,  <25.033255, 35.601555, 38.431648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101206, 35.941166, 38.631767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282162, 0.444518, -0.850170,
		-0.944206, 0.285592, -0.164047,
		0.169880, 0.849024, 0.500300,
		25.152170, 36.195873, 38.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553617, 36.128250, 38.182026>,  <25.033255, 35.601555, 38.431648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553617, 36.128250, 38.182026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913202, 36.248341, 38.309605>,  <25.128954, 36.320396, 38.386154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913202, 36.248341, 38.309605>,  <24.553617, 36.128250, 38.182026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913202, 36.248341, 38.309605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287254, 0.145640, -0.946718,
		-0.330683, 0.942684, 0.044684,
		0.898963, 0.300228, 0.318950,
		25.182892, 36.338409, 38.405289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631966, 36.628464, 37.665802>,  <24.553617, 36.128250, 38.182026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631966, 36.628464, 37.665802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980753, 36.540817, 37.840916>,  <25.190025, 36.488228, 37.945984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980753, 36.540817, 37.840916>,  <24.631966, 36.628464, 37.665802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980753, 36.540817, 37.840916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486182, 0.282719, -0.826860,
		0.057410, 0.933840, 0.353054,
		0.871970, -0.219118, 0.437785,
		25.242344, 36.475082, 37.972252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972588, 37.254009, 37.710590>,  <24.631966, 36.628464, 37.665802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972588, 37.254009, 37.710590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213047, 36.934509, 37.720463>,  <25.357323, 36.742809, 37.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213047, 36.934509, 37.720463>,  <24.972588, 37.254009, 37.710590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213047, 36.934509, 37.720463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382581, 0.260546, -0.886424,
		0.701605, 0.542316, 0.462216,
		0.601151, -0.798755, 0.024680,
		25.393393, 36.694881, 37.727867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617378, 37.486107, 37.592583>,  <24.972588, 37.254009, 37.710590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617378, 37.486107, 37.592583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696373, 37.107265, 37.491394>,  <25.743771, 36.879959, 37.430679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696373, 37.107265, 37.491394>,  <25.617378, 37.486107, 37.592583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696373, 37.107265, 37.491394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460498, 0.317437, -0.828961,
		0.865413, 0.047217, 0.498829,
		0.197487, -0.947103, -0.252971,
		25.755619, 36.823135, 37.415504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323576, 37.444298, 37.321548>,  <25.617378, 37.486107, 37.592583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323576, 37.444298, 37.321548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078691, 37.165257, 37.172661>,  <25.931761, 36.997833, 37.083328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078691, 37.165257, 37.172661>,  <26.323576, 37.444298, 37.321548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078691, 37.165257, 37.172661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262632, 0.264617, -0.927902,
		0.745802, -0.665830, 0.021211,
		-0.612212, -0.697602, -0.372220,
		25.895027, 36.955975, 37.060993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692060, 37.104885, 36.819134>,  <26.323576, 37.444298, 37.321548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692060, 37.104885, 36.819134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299248, 37.102520, 36.743687>,  <26.063560, 37.101101, 36.698418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299248, 37.102520, 36.743687>,  <26.692060, 37.104885, 36.819134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299248, 37.102520, 36.743687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171574, 0.388229, -0.905450,
		0.078579, -0.921544, -0.380240,
		-0.982032, -0.005910, -0.188619,
		26.004639, 37.100746, 36.687099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781212, 36.392685, 36.628693>,  <26.692060, 37.104885, 36.819134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781212, 36.392685, 36.628693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986277, 36.064808, 36.730900>,  <27.109316, 35.868084, 36.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986277, 36.064808, 36.730900>,  <26.781212, 36.392685, 36.628693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986277, 36.064808, 36.730900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253336, -0.139938, -0.957203,
		0.820366, 0.555452, 0.135916,
		0.512660, -0.819690, 0.255516,
		27.140076, 35.818901, 36.807556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529953, 36.424767, 36.364079>,  <26.781212, 36.392685, 36.628693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529953, 36.424767, 36.364079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363369, 36.065430, 36.420006>,  <27.263418, 35.849827, 36.453564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363369, 36.065430, 36.420006>,  <27.529953, 36.424767, 36.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363369, 36.065430, 36.420006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029926, -0.140160, -0.989676,
		0.908662, -0.416343, 0.031487,
		-0.416458, -0.898339, 0.139818,
		27.238432, 35.795929, 36.461952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954960, 35.734558, 36.108059>,  <27.529953, 36.424767, 36.364079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954960, 35.734558, 36.108059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563759, 35.651154, 36.105629>,  <27.329039, 35.601109, 36.104172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563759, 35.651154, 36.105629>,  <27.954960, 35.734558, 36.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563759, 35.651154, 36.105629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016203, -0.046886, -0.998769,
		0.207973, -0.976895, 0.049233,
		-0.978000, -0.208514, -0.006078,
		27.270359, 35.588600, 36.103806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837912, 35.133064, 35.674644>,  <27.954960, 35.734558, 36.108059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837912, 35.133064, 35.674644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468637, 35.286152, 35.688786>,  <27.247072, 35.378006, 35.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468637, 35.286152, 35.688786>,  <27.837912, 35.133064, 35.674644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468637, 35.286152, 35.688786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060462, -0.053787, -0.996720,
		-0.379568, -0.922296, 0.072796,
		-0.923186, 0.382724, 0.035348,
		27.191681, 35.400970, 35.699390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310112, 34.653023, 35.322121>,  <27.837912, 35.133064, 35.674644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310112, 34.653023, 35.322121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197853, 35.034363, 35.277649>,  <27.130497, 35.263168, 35.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197853, 35.034363, 35.277649>,  <27.310112, 34.653023, 35.322121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197853, 35.034363, 35.277649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060206, -0.098117, -0.993352,
		-0.957921, -0.285475, -0.029861,
		-0.280647, 0.953350, -0.111175,
		27.113659, 35.320370, 35.244297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893837, 34.713680, 34.746777>,  <27.310112, 34.653023, 35.322121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893837, 34.713680, 34.746777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033978, 35.085716, 34.790943>,  <27.118061, 35.308937, 34.817444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033978, 35.085716, 34.790943>,  <26.893837, 34.713680, 34.746777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033978, 35.085716, 34.790943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145701, 0.062336, -0.987363,
		-0.925216, 0.362013, -0.113675,
		0.350352, 0.930086, 0.110419,
		27.139084, 35.364742, 34.824070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572121, 35.126099, 34.266586>,  <26.893837, 34.713680, 34.746777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572121, 35.126099, 34.266586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899212, 35.340816, 34.349697>,  <27.095467, 35.469646, 34.399563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899212, 35.340816, 34.349697>,  <26.572121, 35.126099, 34.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899212, 35.340816, 34.349697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187134, 0.093445, -0.977880,
		-0.544337, 0.838522, -0.024040,
		0.817727, 0.536795, 0.207781,
		27.144529, 35.501854, 34.412033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633280, 35.567684, 33.735485>,  <26.572121, 35.126099, 34.266586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633280, 35.567684, 33.735485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995003, 35.565189, 33.906219>,  <27.212036, 35.563694, 34.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995003, 35.565189, 33.906219>,  <26.633280, 35.567684, 33.735485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995003, 35.565189, 33.906219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420542, 0.184748, -0.888264,
		-0.073317, 0.982766, 0.169692,
		0.904306, -0.006238, 0.426840,
		27.266294, 35.563316, 34.034271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974833, 36.105568, 33.359962>,  <26.633280, 35.567684, 33.735485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974833, 36.105568, 33.359962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258493, 35.912628, 33.565659>,  <27.428690, 35.796864, 33.689075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258493, 35.912628, 33.565659>,  <26.974833, 36.105568, 33.359962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258493, 35.912628, 33.565659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674867, 0.253230, -0.693130,
		0.204111, 0.838577, 0.505101,
		0.709150, -0.482351, 0.514241,
		27.471239, 35.767921, 33.719933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581381, 36.487984, 33.628471>,  <26.974833, 36.105568, 33.359962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581381, 36.487984, 33.628471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691099, 36.115311, 33.533199>,  <27.756929, 35.891708, 33.476036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691099, 36.115311, 33.533199>,  <27.581381, 36.487984, 33.628471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691099, 36.115311, 33.533199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596340, 0.359100, -0.717931,
		0.754415, 0.054889, 0.654099,
		0.274294, -0.931683, -0.238178,
		27.773388, 35.835804, 33.461746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300474, 36.525761, 33.639523>,  <27.581381, 36.487984, 33.628471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300474, 36.525761, 33.639523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240852, 36.199680, 33.415657>,  <28.205080, 36.004032, 33.281338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240852, 36.199680, 33.415657>,  <28.300474, 36.525761, 33.639523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240852, 36.199680, 33.415657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733069, 0.288747, -0.615821,
		0.663621, -0.502065, 0.554560,
		-0.149055, -0.815203, -0.559667,
		28.196136, 35.955120, 33.247757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997023, 36.136589, 33.510727>,  <28.300474, 36.525761, 33.639523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997023, 36.136589, 33.510727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741882, 36.045586, 33.216412>,  <28.588799, 35.990986, 33.039822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741882, 36.045586, 33.216412>,  <28.997023, 36.136589, 33.510727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741882, 36.045586, 33.216412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620748, 0.413636, -0.666016,
		0.455873, -0.881559, -0.122613,
		-0.637850, -0.227507, -0.735791,
		28.550528, 35.977333, 32.995674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917826, 36.571297, 32.909161>,  <28.997023, 36.136589, 33.510727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917826, 36.571297, 32.909161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526438, 36.628017, 32.969147>,  <28.291605, 36.662048, 33.005138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526438, 36.628017, 32.969147>,  <28.917826, 36.571297, 32.909161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526438, 36.628017, 32.969147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162753, 0.976945, 0.138169,
		-0.126915, 0.159601, -0.978989,
		-0.978470, 0.141798, 0.149964,
		28.232897, 36.670555, 33.014137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525267, 36.820934, 32.483776>,  <28.917826, 36.571297, 32.909161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525267, 36.820934, 32.483776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511663, 36.587029, 32.159580>,  <29.503502, 36.446686, 31.965061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511663, 36.587029, 32.159580>,  <29.525267, 36.820934, 32.483776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511663, 36.587029, 32.159580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855835, -0.401765, 0.325779,
		-0.516130, 0.704727, -0.486796,
		-0.034007, -0.584761, -0.810493,
		29.501461, 36.411602, 31.916433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909521, 36.847328, 32.044128>,  <29.525267, 36.820934, 32.483776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909521, 36.847328, 32.044128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066034, 36.480026, 32.068459>,  <29.159943, 36.259644, 32.083057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066034, 36.480026, 32.068459>,  <28.909521, 36.847328, 32.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066034, 36.480026, 32.068459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849606, -0.335049, 0.407322,
		-0.353650, -0.211048, -0.911258,
		0.391280, -0.918260, 0.060817,
		29.183418, 36.204548, 32.086704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603386, 36.274284, 31.660595>,  <28.909521, 36.847328, 32.044128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603386, 36.274284, 31.660595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756823, 36.112263, 31.992567>,  <28.848885, 36.015049, 32.191750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756823, 36.112263, 31.992567>,  <28.603386, 36.274284, 31.660595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756823, 36.112263, 31.992567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905131, -0.343260, 0.250818,
		0.183287, -0.847410, -0.498300,
		0.383592, -0.405055, 0.829932,
		28.871901, 35.990746, 32.241547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064350, 35.817921, 31.758720>,  <28.603386, 36.274284, 31.660595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064350, 35.817921, 31.758720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307749, 35.787285, 32.074661>,  <28.453789, 35.768902, 32.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307749, 35.787285, 32.074661>,  <28.064350, 35.817921, 31.758720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307749, 35.787285, 32.074661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673671, -0.575899, 0.463151,
		0.419401, -0.813926, -0.402029,
		0.608499, -0.076590, 0.789851,
		28.490299, 35.764309, 32.311615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994846, 35.197372, 32.054016>,  <28.064350, 35.817921, 31.758720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994846, 35.197372, 32.054016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152357, 35.415516, 32.349995>,  <28.246864, 35.546402, 32.527580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152357, 35.415516, 32.349995>,  <27.994846, 35.197372, 32.054016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152357, 35.415516, 32.349995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637143, -0.418296, 0.647362,
		0.662563, -0.726368, 0.182757,
		0.393776, 0.545360, 0.739948,
		28.270491, 35.579124, 32.571980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106733, 34.771713, 32.587223>,  <27.994846, 35.197372, 32.054016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106733, 34.771713, 32.587223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127298, 35.126492, 32.770824>,  <28.139637, 35.339359, 32.880985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127298, 35.126492, 32.770824>,  <28.106733, 34.771713, 32.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127298, 35.126492, 32.770824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478703, -0.381485, 0.790767,
		0.876471, -0.260383, 0.404969,
		0.051413, 0.886944, 0.459007,
		28.142723, 35.392574, 32.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372467, 34.746578, 33.294441>,  <28.106733, 34.771713, 32.587223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372467, 34.746578, 33.294441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140875, 35.072266, 33.311543>,  <28.001919, 35.267677, 33.321804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140875, 35.072266, 33.311543>,  <28.372467, 34.746578, 33.294441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140875, 35.072266, 33.311543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396311, -0.326868, 0.857960,
		0.712542, 0.479798, 0.511935,
		-0.578983, 0.814218, 0.042758,
		27.967180, 35.316532, 33.324371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186110, 34.609295, 33.901653>,  <28.372467, 34.746578, 33.294441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186110, 34.609295, 33.901653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956787, 34.914700, 33.782742>,  <27.819193, 35.097942, 33.711395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956787, 34.914700, 33.782742>,  <28.186110, 34.609295, 33.901653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956787, 34.914700, 33.782742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556503, -0.096562, 0.825215,
		0.601353, 0.638538, 0.480255,
		-0.573306, 0.763508, -0.297280,
		27.784796, 35.143753, 33.693558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031857, 34.894424, 34.471855>,  <28.186110, 34.609295, 33.901653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031857, 34.894424, 34.471855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745605, 34.992702, 34.210320>,  <27.573854, 35.051670, 34.053398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745605, 34.992702, 34.210320>,  <28.031857, 34.894424, 34.471855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745605, 34.992702, 34.210320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675717, -0.006490, 0.737132,
		0.176866, 0.969325, 0.170664,
		-0.715629, 0.245695, -0.653842,
		27.530916, 35.066410, 34.014168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363258, 35.577812, 34.279072>,  <28.031857, 34.894424, 34.471855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363258, 35.577812, 34.279072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008938, 35.759644, 34.241730>,  <27.796347, 35.868744, 34.219326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008938, 35.759644, 34.241730>,  <28.363258, 35.577812, 34.279072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008938, 35.759644, 34.241730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268441, -0.337830, 0.902115,
		0.378546, 0.824153, 0.421278,
		-0.885800, 0.454580, -0.093352,
		27.743198, 35.896019, 34.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157263, 36.292011, 34.655182>,  <28.363258, 35.577812, 34.279072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157263, 36.292011, 34.655182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838871, 36.058830, 34.589958>,  <27.647837, 35.918922, 34.550823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838871, 36.058830, 34.589958>,  <28.157263, 36.292011, 34.655182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838871, 36.058830, 34.589958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138037, -0.087468, 0.986557,
		-0.589374, 0.807787, -0.010845,
		-0.795980, -0.582948, -0.163056,
		27.600077, 35.883945, 34.541042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620506, 36.563057, 34.975307>,  <28.157263, 36.292011, 34.655182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620506, 36.563057, 34.975307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466515, 36.196407, 34.932251>,  <27.374119, 35.976418, 34.906418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466515, 36.196407, 34.932251>,  <27.620506, 36.563057, 34.975307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466515, 36.196407, 34.932251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378629, 0.050501, 0.924170,
		-0.841683, 0.396542, -0.366503,
		-0.384981, -0.916626, -0.107636,
		27.351021, 35.921421, 34.899960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940262, 36.676289, 35.173595>,  <27.620506, 36.563057, 34.975307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940262, 36.676289, 35.173595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076860, 36.301826, 35.207058>,  <27.158819, 36.077148, 35.227135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076860, 36.301826, 35.207058>,  <26.940262, 36.676289, 35.173595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076860, 36.301826, 35.207058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513552, -0.111309, 0.850808,
		-0.787175, -0.333510, -0.518774,
		0.341497, -0.936153, 0.083655,
		27.179310, 36.020981, 35.232155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318407, 36.155842, 35.155941>,  <26.940262, 36.676289, 35.173595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318407, 36.155842, 35.155941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643747, 36.004265, 35.332516>,  <26.838951, 35.913319, 35.438461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643747, 36.004265, 35.332516>,  <26.318407, 36.155842, 35.155941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643747, 36.004265, 35.332516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556078, -0.283355, 0.781337,
		-0.170994, -0.880975, -0.441185,
		0.813350, -0.378937, 0.441439,
		26.887753, 35.890583, 35.464947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001223, 35.552368, 35.442757>,  <26.318407, 36.155842, 35.155941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001223, 35.552368, 35.442757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357777, 35.622555, 35.609917>,  <26.571709, 35.664665, 35.710213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357777, 35.622555, 35.609917>,  <26.001223, 35.552368, 35.442757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357777, 35.622555, 35.609917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350989, -0.316133, 0.881400,
		0.286769, -0.932347, -0.220210,
		0.891386, 0.175467, 0.417901,
		26.625193, 35.675194, 35.735287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973413, 35.360336, 36.131195>,  <26.001223, 35.552368, 35.442757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973413, 35.360336, 36.131195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363785, 35.446907, 36.120438>,  <26.598007, 35.498848, 36.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363785, 35.446907, 36.120438>,  <25.973413, 35.360336, 36.131195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363785, 35.446907, 36.120438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066796, -0.179226, 0.981538,
		0.207608, -0.959708, -0.189368,
		0.975929, 0.216424, -0.026896,
		26.656563, 35.511833, 36.112370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412535, 34.805050, 36.412010>,  <25.973413, 35.360336, 36.131195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412535, 34.805050, 36.412010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590557, 35.156609, 36.480671>,  <26.697371, 35.367542, 36.521870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590557, 35.156609, 36.480671>,  <26.412535, 34.805050, 36.412010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590557, 35.156609, 36.480671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077947, -0.152936, 0.985157,
		0.892104, -0.451830, 0.000443,
		0.445055, 0.878897, 0.171654,
		26.724073, 35.420277, 36.532166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998735, 34.689232, 36.866978>,  <26.412535, 34.805050, 36.412010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998735, 34.689232, 36.866978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870266, 35.062199, 36.933243>,  <26.793184, 35.285980, 36.973003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870266, 35.062199, 36.933243>,  <26.998735, 34.689232, 36.866978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870266, 35.062199, 36.933243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126766, -0.131029, 0.983240,
		0.938497, 0.336793, -0.076116,
		-0.321175, 0.932417, 0.165664,
		26.773914, 35.341923, 36.982941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589005, 35.053047, 37.233383>,  <26.998735, 34.689232, 36.866978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589005, 35.053047, 37.233383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217857, 35.191372, 37.289207>,  <26.995169, 35.274368, 37.322701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217857, 35.191372, 37.289207>,  <27.589005, 35.053047, 37.233383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217857, 35.191372, 37.289207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105320, -0.115990, 0.987651,
		0.357729, 0.931107, 0.071202,
		-0.927867, 0.345812, 0.139557,
		26.939497, 35.295116, 37.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526503, 35.709820, 37.669655>,  <27.589005, 35.053047, 37.233383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526503, 35.709820, 37.669655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204189, 35.479839, 37.726429>,  <27.010801, 35.341850, 37.760494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204189, 35.479839, 37.726429>,  <27.526503, 35.709820, 37.669655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204189, 35.479839, 37.726429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110232, 0.089865, 0.989835,
		-0.581863, 0.813237, -0.009034,
		-0.805782, -0.574952, 0.141934,
		26.962454, 35.307354, 37.769009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025124, 35.737572, 38.257687>,  <27.526503, 35.709820, 37.669655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025124, 35.737572, 38.257687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317730, 35.998512, 38.178364>,  <27.493294, 36.155075, 38.130772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317730, 35.998512, 38.178364>,  <27.025124, 35.737572, 38.257687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317730, 35.998512, 38.178364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106161, 0.178319, 0.978229,
		0.673509, -0.736642, 0.061189,
		0.731516, 0.652350, -0.198303,
		27.537186, 36.194218, 38.118874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686691, 35.628048, 38.665565>,  <27.025124, 35.737572, 38.257687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686691, 35.628048, 38.665565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611980, 36.014187, 38.592651>,  <27.567154, 36.245869, 38.548904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611980, 36.014187, 38.592651>,  <27.686691, 35.628048, 38.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611980, 36.014187, 38.592651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106733, 0.164513, 0.980583,
		0.976587, 0.202606, 0.072307,
		-0.186776, 0.965343, -0.182286,
		27.555948, 36.303791, 38.537964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157333, 35.081478, 38.676579>,  <27.686691, 35.628048, 38.665565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157333, 35.081478, 38.676579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298840, 35.450851, 38.617077>,  <28.383743, 35.672474, 38.581375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298840, 35.450851, 38.617077>,  <28.157333, 35.081478, 38.676579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298840, 35.450851, 38.617077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910305, -0.303370, 0.281622,
		0.214932, -0.235036, -0.947925,
		0.353763, 0.923431, -0.148751,
		28.404968, 35.727882, 38.572453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827589, 34.955067, 38.415829>,  <28.157333, 35.081478, 38.676579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827589, 34.955067, 38.415829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782169, 35.311977, 38.590618>,  <28.754917, 35.526123, 38.695492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782169, 35.311977, 38.590618>,  <28.827589, 34.955067, 38.415829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782169, 35.311977, 38.590618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905005, -0.088594, 0.416072,
		0.409965, 0.442712, -0.797455,
		-0.113551, 0.892276, 0.436977,
		28.748104, 35.579659, 38.721710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481844, 35.387825, 38.230484>,  <28.827589, 34.955067, 38.415829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481844, 35.387825, 38.230484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277693, 35.395515, 38.574379>,  <29.155201, 35.400127, 38.780716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277693, 35.395515, 38.574379>,  <29.481844, 35.387825, 38.230484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277693, 35.395515, 38.574379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857751, -0.060056, 0.510545,
		0.061446, 0.998010, 0.014163,
		-0.510379, 0.019222, 0.859735,
		29.124578, 35.401283, 38.832298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922146, 35.100273, 38.873447>,  <29.481844, 35.387825, 38.230484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922146, 35.100273, 38.873447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882303, 34.826012, 39.161880>,  <29.858398, 34.661457, 39.334942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882303, 34.826012, 39.161880>,  <29.922146, 35.100273, 38.873447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882303, 34.826012, 39.161880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357089, 0.651782, 0.669080,
		-0.928744, 0.324135, 0.179918,
		-0.099605, -0.685651, 0.721084,
		29.852421, 34.620316, 39.378204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666452, 35.374805, 39.511734>,  <29.922146, 35.100273, 38.873447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666452, 35.374805, 39.511734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830460, 35.032982, 39.639244>,  <29.928864, 34.827888, 39.715748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830460, 35.032982, 39.639244>,  <29.666452, 35.374805, 39.511734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830460, 35.032982, 39.639244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496669, 0.502329, 0.707803,
		-0.764988, -0.131886, 0.630396,
		0.410016, -0.854559, 0.318772,
		29.953465, 34.776615, 39.734875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689709, 35.373188, 40.198391>,  <29.666452, 35.374805, 39.511734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689709, 35.373188, 40.198391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977850, 35.103848, 40.131836>,  <30.150736, 34.942242, 40.091904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977850, 35.103848, 40.131836>,  <29.689709, 35.373188, 40.198391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977850, 35.103848, 40.131836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655211, 0.581905, 0.481752,
		-0.227567, -0.456051, 0.860367,
		0.720355, -0.673353, -0.166387,
		30.193956, 34.901840, 40.081921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947617, 35.299934, 40.826630>,  <29.689709, 35.373188, 40.198391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947617, 35.299934, 40.826630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212719, 35.173458, 40.555107>,  <30.371780, 35.097572, 40.392193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212719, 35.173458, 40.555107>,  <29.947617, 35.299934, 40.826630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212719, 35.173458, 40.555107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714630, 0.537898, 0.447181,
		0.223733, -0.781466, 0.582455,
		0.662758, -0.316190, -0.678805,
		30.411547, 35.078602, 40.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588274, 34.950844, 41.045914>,  <29.947617, 35.299934, 40.826630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588274, 34.950844, 41.045914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685457, 35.137726, 40.705868>,  <30.743767, 35.249855, 40.501842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685457, 35.137726, 40.705868>,  <30.588274, 34.950844, 41.045914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685457, 35.137726, 40.705868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722263, 0.497884, 0.480048,
		0.647539, -0.730635, -0.216482,
		0.242957, 0.467207, -0.850111,
		30.758345, 35.277889, 40.450836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256580, 34.970440, 40.894920>,  <30.588274, 34.950844, 41.045914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256580, 34.970440, 40.894920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129354, 35.284473, 40.682327>,  <31.053019, 35.472893, 40.554771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129354, 35.284473, 40.682327>,  <31.256580, 34.970440, 40.894920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129354, 35.284473, 40.682327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752943, 0.549838, 0.361601,
		0.576119, -0.285166, -0.766008,
		-0.318064, 0.785085, -0.531485,
		31.033936, 35.520000, 40.522881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738279, 35.091881, 40.289623>,  <31.256580, 34.970440, 40.894920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738279, 35.091881, 40.289623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536268, 35.433819, 40.241970>,  <31.415062, 35.638981, 40.213379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536268, 35.433819, 40.241970>,  <31.738279, 35.091881, 40.289623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536268, 35.433819, 40.241970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025235, -0.123344, -0.992043,
		-0.862734, -0.504016, 0.040720,
		-0.505028, 0.854842, -0.119132,
		31.384760, 35.690269, 40.206230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171682, 35.011669, 39.961666>,  <31.738279, 35.091881, 40.289623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171682, 35.011669, 39.961666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339197, 35.368946, 39.896152>,  <31.439705, 35.583313, 39.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339197, 35.368946, 39.896152>,  <31.171682, 35.011669, 39.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339197, 35.368946, 39.896152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029956, -0.193854, -0.980573,
		-0.907591, 0.405744, -0.107940,
		0.418786, 0.893193, -0.163785,
		31.464832, 35.636906, 39.847015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994473, 35.229858, 39.255993>,  <31.171682, 35.011669, 39.961666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994473, 35.229858, 39.255993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297695, 35.477657, 39.337547>,  <31.479630, 35.626339, 39.386482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297695, 35.477657, 39.337547>,  <30.994473, 35.229858, 39.255993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297695, 35.477657, 39.337547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318400, -0.078699, -0.944684,
		-0.569185, 0.781042, -0.256907,
		0.758056, 0.619499, 0.203890,
		31.525112, 35.663506, 39.398716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056978, 35.710503, 38.717590>,  <30.994473, 35.229858, 39.255993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056978, 35.710503, 38.717590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427114, 35.755856, 38.862305>,  <31.649197, 35.783070, 38.949135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427114, 35.755856, 38.862305>,  <31.056978, 35.710503, 38.717590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427114, 35.755856, 38.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376172, -0.155418, -0.913422,
		-0.047340, 0.981320, -0.186467,
		0.925340, 0.113385, 0.361788,
		31.704716, 35.789871, 38.970840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382526, 36.199898, 38.200832>,  <31.056978, 35.710503, 38.717590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382526, 36.199898, 38.200832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650288, 35.987938, 38.409103>,  <31.810944, 35.860760, 38.534065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650288, 35.987938, 38.409103>,  <31.382526, 36.199898, 38.200832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650288, 35.987938, 38.409103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630434, 0.034427, -0.775479,
		0.393003, 0.847360, 0.357114,
		0.669404, -0.529902, 0.520675,
		31.851109, 35.828968, 38.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011009, 36.602058, 38.328571>,  <31.382526, 36.199898, 38.200832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011009, 36.602058, 38.328571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120007, 36.217747, 38.349186>,  <32.185406, 35.987160, 38.361553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120007, 36.217747, 38.349186>,  <32.011009, 36.602058, 38.328571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120007, 36.217747, 38.349186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671739, 0.151620, -0.725105,
		0.688850, 0.232205, 0.686707,
		0.272492, -0.960777, 0.051538,
		32.201756, 35.929512, 38.364647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705994, 36.635376, 38.273277>,  <32.011009, 36.602058, 38.328571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705994, 36.635376, 38.273277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595970, 36.262638, 38.178608>,  <32.529957, 36.038998, 38.121807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595970, 36.262638, 38.178608>,  <32.705994, 36.635376, 38.273277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595970, 36.262638, 38.178608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648447, 0.001939, -0.761257,
		0.709829, -0.362864, 0.603716,
		-0.275062, -0.931840, -0.236674,
		32.513451, 35.983086, 38.107605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320667, 36.428001, 37.729122>,  <32.705994, 36.635376, 38.273277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320667, 36.428001, 37.729122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029942, 36.154507, 37.703060>,  <32.855507, 35.990410, 37.687424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029942, 36.154507, 37.703060>,  <33.320667, 36.428001, 37.729122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029942, 36.154507, 37.703060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218075, -0.139780, -0.965870,
		0.651292, -0.716218, 0.250700,
		-0.726816, -0.683735, -0.065152,
		32.811897, 35.949387, 37.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572464, 35.857311, 37.410534>,  <33.320667, 36.428001, 37.729122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572464, 35.857311, 37.410534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180901, 35.804150, 37.348480>,  <32.945961, 35.772255, 37.311249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180901, 35.804150, 37.348480>,  <33.572464, 35.857311, 37.410534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180901, 35.804150, 37.348480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163878, -0.057514, -0.984803,
		0.121961, -0.989459, 0.078081,
		-0.978912, -0.132903, -0.155136,
		32.887226, 35.764278, 37.301941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385323, 35.251957, 36.849724>,  <33.572464, 35.857311, 37.410534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385323, 35.251957, 36.849724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056892, 35.478695, 36.876633>,  <32.859837, 35.614738, 36.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056892, 35.478695, 36.876633>,  <33.385323, 35.251957, 36.849724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056892, 35.478695, 36.876633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005528, 0.125735, -0.992049,
		-0.570796, -0.814173, -0.106371,
		-0.821073, 0.566846, 0.067269,
		32.810570, 35.648750, 36.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113499, 35.114567, 36.175385>,  <33.385323, 35.251957, 36.849724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113499, 35.114567, 36.175385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915150, 35.433357, 36.313332>,  <32.796139, 35.624634, 36.396099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915150, 35.433357, 36.313332>,  <33.113499, 35.114567, 36.175385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915150, 35.433357, 36.313332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222391, 0.267345, -0.937587,
		-0.839437, -0.541618, 0.044672,
		-0.495871, 0.796979, 0.344870,
		32.766388, 35.672451, 36.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406902, 35.168476, 35.927925>,  <33.113499, 35.114567, 36.175385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406902, 35.168476, 35.927925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524075, 35.540600, 36.016205>,  <32.594379, 35.763874, 36.069172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524075, 35.540600, 36.016205>,  <32.406902, 35.168476, 35.927925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524075, 35.540600, 36.016205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034910, 0.241079, -0.969878,
		-0.955497, 0.276401, 0.103097,
		0.292929, 0.930314, 0.220701,
		32.611954, 35.819695, 36.082417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887644, 35.537739, 35.607716>,  <32.406902, 35.168476, 35.927925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887644, 35.537739, 35.607716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175739, 35.808769, 35.667236>,  <32.348598, 35.971390, 35.702950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175739, 35.808769, 35.667236>,  <31.887644, 35.537739, 35.607716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175739, 35.808769, 35.667236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200537, 0.408693, -0.890368,
		-0.664107, 0.611439, 0.430237,
		0.720241, 0.677578, 0.148800,
		32.391811, 36.012043, 35.711876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582125, 36.174751, 35.359295>,  <31.887644, 35.537739, 35.607716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582125, 36.174751, 35.359295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972658, 36.260548, 35.348213>,  <32.206978, 36.312023, 35.341564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972658, 36.260548, 35.348213>,  <31.582125, 36.174751, 35.359295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972658, 36.260548, 35.348213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160434, 0.632420, -0.757829,
		-0.145026, 0.744339, 0.651865,
		0.976334, 0.214486, -0.027700,
		32.265560, 36.324894, 35.339905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618185, 36.913074, 35.293678>,  <31.582125, 36.174751, 35.359295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618185, 36.913074, 35.293678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988684, 36.809944, 35.183704>,  <32.210983, 36.748066, 35.117718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988684, 36.809944, 35.183704>,  <31.618185, 36.913074, 35.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988684, 36.809944, 35.183704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040108, 0.657885, -0.752050,
		0.374774, 0.707612, 0.599024,
		0.926248, -0.257823, -0.274939,
		32.266560, 36.732597, 35.101223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971973, 37.527283, 35.279900>,  <31.618185, 36.913074, 35.293678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971973, 37.527283, 35.279900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154179, 37.271503, 35.032154>,  <32.263500, 37.118034, 34.883507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154179, 37.271503, 35.032154>,  <31.971973, 37.527283, 35.279900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154179, 37.271503, 35.032154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177382, 0.616588, -0.767043,
		0.872377, 0.459263, 0.167438,
		0.455514, -0.639450, -0.619363,
		32.290833, 37.079670, 34.846344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301308, 37.991550, 34.748764>,  <31.971973, 37.527283, 35.279900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301308, 37.991550, 34.748764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307640, 37.631134, 34.575386>,  <32.311440, 37.414883, 34.471359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307640, 37.631134, 34.575386>,  <32.301308, 37.991550, 34.748764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307640, 37.631134, 34.575386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384573, 0.394668, -0.834471,
		0.922959, 0.179903, -0.340267,
		0.015831, -0.901040, -0.433448,
		32.312389, 37.360821, 34.445351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793026, 38.069832, 34.188892>,  <32.301308, 37.991550, 34.748764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793026, 38.069832, 34.188892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538677, 37.777458, 34.089775>,  <32.386070, 37.602032, 34.030304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538677, 37.777458, 34.089775>,  <32.793026, 38.069832, 34.188892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538677, 37.777458, 34.089775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196886, 0.464061, -0.863645,
		0.746262, -0.500378, -0.438993,
		-0.635869, -0.730937, -0.247794,
		32.347916, 37.558178, 34.015438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873856, 38.048496, 33.462471>,  <32.793026, 38.069832, 34.188892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873856, 38.048496, 33.462471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533352, 37.861092, 33.557003>,  <32.329048, 37.748650, 33.613724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533352, 37.861092, 33.557003>,  <32.873856, 38.048496, 33.462471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533352, 37.861092, 33.557003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409982, 0.312708, -0.856813,
		0.327548, -0.826250, -0.458284,
		-0.851251, -0.468535, 0.236320,
		32.277973, 37.720539, 33.627903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583969, 37.756020, 32.870358>,  <32.873856, 38.048496, 33.462471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583969, 37.756020, 32.870358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246372, 37.744892, 33.084610>,  <32.043812, 37.738216, 33.213161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246372, 37.744892, 33.084610>,  <32.583969, 37.756020, 32.870358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246372, 37.744892, 33.084610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526750, 0.231092, -0.818004,
		-0.101024, -0.972534, -0.209694,
		-0.843996, -0.027818, 0.535628,
		31.993174, 37.736546, 33.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133282, 37.316429, 32.542076>,  <32.583969, 37.756020, 32.870358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133282, 37.316429, 32.542076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914745, 37.574848, 32.755295>,  <31.783623, 37.729900, 32.883224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914745, 37.574848, 32.755295>,  <32.133282, 37.316429, 32.542076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914745, 37.574848, 32.755295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602426, 0.139037, -0.785972,
		-0.581885, -0.750531, 0.313232,
		-0.546345, 0.646044, 0.533042,
		31.750841, 37.768661, 32.915207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487246, 37.149700, 32.389774>,  <32.133282, 37.316429, 32.542076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487246, 37.149700, 32.389774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453884, 37.524616, 32.525146>,  <31.433867, 37.749565, 32.606369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453884, 37.524616, 32.525146>,  <31.487246, 37.149700, 32.389774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453884, 37.524616, 32.525146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715007, 0.180269, -0.675476,
		-0.694125, -0.298315, 0.655133,
		-0.083404, 0.937289, 0.338426,
		31.428864, 37.805801, 32.626675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809086, 37.253601, 32.455151>,  <31.487246, 37.149700, 32.389774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809086, 37.253601, 32.455151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966774, 37.621189, 32.458988>,  <31.061386, 37.841740, 32.461288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.966774, 37.621189, 32.458988>,  <30.809086, 37.253601, 32.455151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966774, 37.621189, 32.458988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647419, 0.285109, -0.706797,
		-0.652257, 0.272423, 0.707352,
		0.394220, 0.918966, 0.009592,
		31.085039, 37.896877, 32.461864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224628, 37.692680, 32.355328>,  <30.809086, 37.253601, 32.455151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224628, 37.692680, 32.355328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531454, 37.927654, 32.252151>,  <30.715549, 38.068638, 32.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531454, 37.927654, 32.252151>,  <30.224628, 37.692680, 32.355328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531454, 37.927654, 32.252151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580617, 0.464575, -0.668621,
		-0.272934, 0.662643, 0.697432,
		0.767066, 0.587431, -0.257943,
		30.761574, 38.103882, 32.174770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980349, 38.355988, 32.227718>,  <30.224628, 37.692680, 32.355328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980349, 38.355988, 32.227718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340014, 38.378597, 32.054138>,  <30.555813, 38.392162, 31.949991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340014, 38.378597, 32.054138>,  <29.980349, 38.355988, 32.227718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340014, 38.378597, 32.054138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405591, 0.479984, -0.777889,
		0.164320, 0.875455, 0.454509,
		0.899164, 0.056522, -0.433947,
		30.609762, 38.395554, 31.923954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983774, 39.048748, 32.032566>,  <29.980349, 38.355988, 32.227718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983774, 39.048748, 32.032566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251837, 38.838562, 31.822889>,  <30.412674, 38.712448, 31.697084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251837, 38.838562, 31.822889>,  <29.983774, 39.048748, 32.032566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251837, 38.838562, 31.822889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269536, 0.485734, -0.831513,
		0.691549, 0.698532, 0.183886,
		0.670157, -0.525468, -0.524188,
		30.452885, 38.680923, 31.665632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207886, 39.515675, 31.631941>,  <29.983774, 39.048748, 32.032566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207886, 39.515675, 31.631941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298126, 39.167297, 31.457329>,  <30.352270, 38.958271, 31.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298126, 39.167297, 31.457329>,  <30.207886, 39.515675, 31.631941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298126, 39.167297, 31.457329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347627, 0.346617, -0.871213,
		0.910088, 0.348295, -0.224568,
		0.225600, -0.870946, -0.436529,
		30.365807, 38.906013, 31.326370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437246, 39.680161, 30.993530>,  <30.207886, 39.515675, 31.631941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437246, 39.680161, 30.993530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367619, 39.290596, 30.935293>,  <30.325842, 39.056858, 30.900351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367619, 39.290596, 30.935293>,  <30.437246, 39.680161, 30.993530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367619, 39.290596, 30.935293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349108, 0.199278, -0.915648,
		0.920774, -0.108557, -0.374688,
		-0.174067, -0.973911, -0.145592,
		30.315399, 38.998421, 30.891615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840569, 39.466457, 30.441587>,  <30.437246, 39.680161, 30.993530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840569, 39.466457, 30.441587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544504, 39.200783, 30.483559>,  <30.366865, 39.041378, 30.508741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544504, 39.200783, 30.483559>,  <30.840569, 39.466457, 30.441587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544504, 39.200783, 30.483559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258619, 0.137140, -0.956195,
		0.620705, -0.734877, -0.273278,
		-0.740163, -0.664190, 0.104930,
		30.322454, 39.001526, 30.515038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812147, 39.119804, 29.772005>,  <30.840569, 39.466457, 30.441587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812147, 39.119804, 29.772005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453249, 39.045044, 29.932013>,  <30.237909, 39.000187, 30.028017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453249, 39.045044, 29.932013>,  <30.812147, 39.119804, 29.772005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453249, 39.045044, 29.932013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429085, 0.155526, -0.889774,
		0.104084, -0.969990, -0.219741,
		-0.897247, -0.186898, 0.400020,
		30.184074, 38.988976, 30.052019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522367, 38.722893, 29.307365>,  <30.812147, 39.119804, 29.772005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522367, 38.722893, 29.307365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212288, 38.848469, 29.526640>,  <30.026239, 38.923813, 29.658205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212288, 38.848469, 29.526640>,  <30.522367, 38.722893, 29.307365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212288, 38.848469, 29.526640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524325, 0.164259, -0.835525,
		-0.352346, -0.935127, 0.037272,
		-0.775200, 0.313937, 0.548187,
		29.979729, 38.942650, 29.691095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870701, 38.406441, 29.024784>,  <30.522367, 38.722893, 29.307365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870701, 38.406441, 29.024784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745274, 38.729229, 29.224976>,  <29.670017, 38.922901, 29.345091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745274, 38.729229, 29.224976>,  <29.870701, 38.406441, 29.024784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745274, 38.729229, 29.224976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659830, 0.193855, -0.725978,
		-0.682862, -0.557872, 0.471676,
		-0.313566, 0.806969, 0.500477,
		29.651203, 38.971321, 29.375118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157860, 38.410828, 28.890436>,  <29.870701, 38.406441, 29.024784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157860, 38.410828, 28.890436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226728, 38.788109, 29.004080>,  <29.268049, 39.014477, 29.072266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226728, 38.788109, 29.004080>,  <29.157860, 38.410828, 28.890436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226728, 38.788109, 29.004080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545777, 0.331440, -0.769594,
		-0.820052, -0.022559, 0.571844,
		0.172171, 0.943206, 0.284110,
		29.278379, 39.071072, 29.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471788, 38.803932, 28.913605>,  <29.157860, 38.410828, 28.890436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471788, 38.803932, 28.913605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757452, 39.079311, 28.862989>,  <28.928850, 39.244541, 28.832621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757452, 39.079311, 28.862989>,  <28.471788, 38.803932, 28.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757452, 39.079311, 28.862989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521760, 0.403050, -0.751876,
		-0.466628, 0.602982, 0.647048,
		0.714161, 0.688450, -0.126537,
		28.971701, 39.285847, 28.825027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087996, 39.471439, 28.699810>,  <28.471788, 38.803932, 28.913605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087996, 39.471439, 28.699810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469664, 39.533909, 28.597694>,  <28.698664, 39.571388, 28.536425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469664, 39.533909, 28.597694>,  <28.087996, 39.471439, 28.699810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469664, 39.533909, 28.597694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289417, 0.698609, -0.654357,
		0.076155, 0.698252, 0.711789,
		0.954169, 0.156172, -0.255289,
		28.755915, 39.580761, 28.521109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992109, 40.130680, 28.486898>,  <28.087996, 39.471439, 28.699810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992109, 40.130680, 28.486898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365776, 40.060658, 28.362516>,  <28.589975, 40.018646, 28.287888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365776, 40.060658, 28.362516>,  <27.992109, 40.130680, 28.486898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365776, 40.060658, 28.362516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153017, 0.590718, -0.792237,
		0.322370, 0.787661, 0.525041,
		0.934165, -0.175053, -0.310955,
		28.646025, 40.008141, 28.269230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274546, 40.719780, 28.201759>,  <27.992109, 40.130680, 28.486898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274546, 40.719780, 28.201759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517529, 40.461826, 28.016235>,  <28.663319, 40.307053, 27.904921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517529, 40.461826, 28.016235>,  <28.274546, 40.719780, 28.201759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517529, 40.461826, 28.016235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019547, 0.595843, -0.802863,
		0.794113, 0.478638, 0.374554,
		0.607456, -0.644885, -0.463811,
		28.699766, 40.268360, 27.877092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808731, 41.079666, 27.956406>,  <28.274546, 40.719780, 28.201759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808731, 41.079666, 27.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832487, 40.750278, 27.730709>,  <28.846741, 40.552647, 27.595291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832487, 40.750278, 27.730709>,  <28.808731, 41.079666, 27.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832487, 40.750278, 27.730709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162966, 0.565652, -0.808381,
		0.984843, -0.043944, 0.167791,
		0.059388, -0.823472, -0.564240,
		28.850304, 40.503239, 27.561438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358250, 41.217388, 27.531767>,  <28.808731, 41.079666, 27.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358250, 41.217388, 27.531767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163273, 40.904892, 27.375788>,  <29.046288, 40.717392, 27.282200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163273, 40.904892, 27.375788>,  <29.358250, 41.217388, 27.531767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163273, 40.904892, 27.375788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092609, 0.397820, -0.912778,
		0.868231, -0.481037, -0.121564,
		-0.487440, -0.781244, -0.389948,
		29.017040, 40.670517, 27.258804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655828, 41.027184, 26.947069>,  <29.358250, 41.217388, 27.531767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655828, 41.027184, 26.947069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282364, 40.906090, 26.870514>,  <29.058285, 40.833435, 26.824581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282364, 40.906090, 26.870514>,  <29.655828, 41.027184, 26.947069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282364, 40.906090, 26.870514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017518, 0.495131, -0.868642,
		0.357727, -0.814371, -0.456982,
		-0.933662, -0.302731, -0.191388,
		29.002266, 40.815269, 26.813097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575464, 40.954811, 26.176241>,  <29.655828, 41.027184, 26.947069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575464, 40.954811, 26.176241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202200, 40.967171, 26.319490>,  <28.978241, 40.974586, 26.405441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202200, 40.967171, 26.319490>,  <29.575464, 40.954811, 26.176241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202200, 40.967171, 26.319490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275290, 0.579197, -0.767298,
		-0.231138, -0.814602, -0.531977,
		-0.933162, 0.030904, 0.358126,
		28.922251, 40.976440, 26.426928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121391, 40.813122, 25.542929>,  <29.575464, 40.954811, 26.176241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121391, 40.813122, 25.542929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854696, 40.959229, 25.802786>,  <28.694679, 41.046894, 25.958700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854696, 40.959229, 25.802786>,  <29.121391, 40.813122, 25.542929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854696, 40.959229, 25.802786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244171, 0.716503, -0.653456,
		-0.704159, -0.594309, -0.388532,
		-0.666738, 0.365268, 0.649645,
		28.654675, 41.068810, 25.997679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513372, 40.903412, 25.224337>,  <29.121391, 40.813122, 25.542929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513372, 40.903412, 25.224337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501652, 41.164520, 25.527134>,  <28.494619, 41.321186, 25.708813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501652, 41.164520, 25.527134>,  <28.513372, 40.903412, 25.224337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501652, 41.164520, 25.527134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389239, 0.690087, -0.610142,
		-0.920671, -0.312528, 0.233863,
		-0.029301, 0.652768, 0.756991,
		28.492861, 41.360352, 25.754230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805111, 41.090054, 25.329138>,  <28.513372, 40.903412, 25.224337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805111, 41.090054, 25.329138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018049, 41.387733, 25.490519>,  <28.145813, 41.566341, 25.587347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018049, 41.387733, 25.490519>,  <27.805111, 41.090054, 25.329138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018049, 41.387733, 25.490519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464888, 0.655306, -0.595360,
		-0.707451, 0.129378, 0.694819,
		0.532346, 0.744201, 0.403451,
		28.177753, 41.610992, 25.611553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321648, 41.623219, 25.576117>,  <27.805111, 41.090054, 25.329138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321648, 41.623219, 25.576117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668587, 41.806370, 25.498083>,  <27.876749, 41.916260, 25.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668587, 41.806370, 25.498083>,  <27.321648, 41.623219, 25.576117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668587, 41.806370, 25.498083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481622, 0.673313, -0.560973,
		-0.125507, 0.580513, 0.804520,
		0.867345, 0.457880, -0.195082,
		27.928791, 41.943733, 25.439558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485729, 42.242920, 25.880388>,  <27.321648, 41.623219, 25.576117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485729, 42.242920, 25.880388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863554, 42.306904, 25.765696>,  <28.090248, 42.345295, 25.696880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863554, 42.306904, 25.765696>,  <27.485729, 42.242920, 25.880388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863554, 42.306904, 25.765696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264757, -0.887559, 0.377018,
		-0.194183, -0.432031, -0.880706,
		0.944562, 0.159963, -0.286732,
		28.146923, 42.354893, 25.679676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383179, 42.878830, 26.103470>,  <27.485729, 42.242920, 25.880388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383179, 42.878830, 26.103470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491488, 43.262421, 26.069899>,  <27.556473, 43.492577, 26.049757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491488, 43.262421, 26.069899>,  <27.383179, 42.878830, 26.103470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491488, 43.262421, 26.069899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606968, 0.102408, -0.788100,
		-0.747177, 0.264334, 0.609799,
		0.270770, 0.958979, -0.083926,
		27.572718, 43.550114, 26.044722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680862, 43.202183, 25.895994>,  <27.383179, 42.878830, 26.103470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680862, 43.202183, 25.895994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964930, 43.469151, 25.806364>,  <27.135370, 43.629333, 25.752586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964930, 43.469151, 25.806364>,  <26.680862, 43.202183, 25.895994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964930, 43.469151, 25.806364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411576, 0.135355, -0.901268,
		-0.571196, 0.732276, 0.370820,
		0.710169, 0.667421, -0.224073,
		27.177980, 43.669376, 25.739141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431669, 43.852501, 25.645391>,  <26.680862, 43.202183, 25.895994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431669, 43.852501, 25.645391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797375, 43.798473, 25.492617>,  <27.016798, 43.766056, 25.400951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797375, 43.798473, 25.492617>,  <26.431669, 43.852501, 25.645391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797375, 43.798473, 25.492617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336733, 0.270792, -0.901821,
		0.225235, 0.953114, 0.202093,
		0.914264, -0.135071, -0.381937,
		27.071653, 43.757954, 25.378035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640556, 44.445297, 25.101500>,  <26.431669, 43.852501, 25.645391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640556, 44.445297, 25.101500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778397, 44.084408, 24.997782>,  <26.861101, 43.867874, 24.935551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778397, 44.084408, 24.997782>,  <26.640556, 44.445297, 25.101500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778397, 44.084408, 24.997782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082226, 0.304162, -0.949065,
		0.935141, 0.305729, 0.179001,
		0.344602, -0.902228, -0.259296,
		26.881777, 43.813740, 24.919992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413876, 44.436272, 24.675589>,  <26.640556, 44.445297, 25.101500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413876, 44.436272, 24.675589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122610, 44.168224, 24.618010>,  <26.947851, 44.007397, 24.583462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122610, 44.168224, 24.618010>,  <27.413876, 44.436272, 24.675589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122610, 44.168224, 24.618010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170419, 0.380433, -0.908971,
		0.663880, -0.637348, -0.391218,
		-0.728163, -0.670118, -0.143946,
		26.904161, 43.967190, 24.574825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106432, 44.364059, 24.764866>,  <27.413876, 44.436272, 24.675589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106432, 44.364059, 24.764866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251406, 44.699326, 24.927896>,  <28.338390, 44.900486, 25.025715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251406, 44.699326, 24.927896>,  <28.106432, 44.364059, 24.764866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251406, 44.699326, 24.927896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847223, -0.478532, 0.230695,
		0.388400, 0.261697, -0.883549,
		0.362435, 0.838165, 0.407578,
		28.360136, 44.950775, 25.050169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228329, 44.445923, 25.505604>,  <28.106432, 44.364059, 24.764866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228329, 44.445923, 25.505604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883902, 44.256004, 25.578403>,  <27.677244, 44.142052, 25.622084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883902, 44.256004, 25.578403>,  <28.228329, 44.445923, 25.505604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883902, 44.256004, 25.578403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317909, -0.223338, 0.921441,
		-0.396854, 0.851284, 0.343253,
		-0.861070, -0.474801, 0.181998,
		27.625580, 44.113564, 25.633003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943592, 44.765450, 26.052362>,  <28.228329, 44.445923, 25.505604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943592, 44.765450, 26.052362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800369, 44.391972, 26.051018>,  <27.714436, 44.167885, 26.050211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800369, 44.391972, 26.051018>,  <27.943592, 44.765450, 26.052362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800369, 44.391972, 26.051018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208540, -0.083478, 0.974445,
		-0.910114, 0.348204, 0.224602,
		-0.358055, -0.933694, -0.003360,
		27.692953, 44.111862, 26.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608326, 44.682789, 26.757275>,  <27.943592, 44.765450, 26.052362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608326, 44.682789, 26.757275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700893, 44.322998, 26.609015>,  <27.756433, 44.107124, 26.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700893, 44.322998, 26.609015>,  <27.608326, 44.682789, 26.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700893, 44.322998, 26.609015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284843, -0.301649, 0.909875,
		-0.930220, -0.316139, 0.186403,
		0.231419, -0.899480, -0.370650,
		27.770319, 44.053154, 26.497820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167562, 44.115551, 27.131626>,  <27.608326, 44.682789, 26.757275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167562, 44.115551, 27.131626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498732, 43.944588, 26.986376>,  <27.697433, 43.842010, 26.899225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498732, 43.944588, 26.986376>,  <27.167562, 44.115551, 27.131626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498732, 43.944588, 26.986376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189324, -0.396470, 0.898314,
		-0.527919, -0.812485, -0.247327,
		0.827924, -0.427411, -0.363126,
		27.747108, 43.816364, 26.877438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222973, 43.455093, 27.418575>,  <27.167562, 44.115551, 27.131626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222973, 43.455093, 27.418575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596991, 43.532990, 27.300072>,  <27.821402, 43.579727, 27.228970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596991, 43.532990, 27.300072>,  <27.222973, 43.455093, 27.418575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596991, 43.532990, 27.300072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342874, -0.284218, 0.895353,
		0.090159, -0.938774, -0.332528,
		0.935045, 0.194740, -0.296256,
		27.877504, 43.591412, 27.211195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580158, 42.860149, 27.517612>,  <27.222973, 43.455093, 27.418575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580158, 42.860149, 27.517612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880407, 43.124367, 27.523869>,  <28.060556, 43.282898, 27.527622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880407, 43.124367, 27.523869>,  <27.580158, 42.860149, 27.517612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880407, 43.124367, 27.523869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354396, -0.422476, 0.834217,
		0.557644, -0.620641, -0.551215,
		0.750625, 0.660544, 0.015639,
		28.105595, 43.322529, 27.528561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153912, 42.466042, 27.638582>,  <27.580158, 42.860149, 27.517612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153912, 42.466042, 27.638582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242519, 42.845814, 27.727585>,  <28.295685, 43.073677, 27.780987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242519, 42.845814, 27.727585>,  <28.153912, 42.466042, 27.638582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242519, 42.845814, 27.727585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369535, -0.292888, 0.881851,
		0.902426, -0.113125, -0.415729,
		0.221522, 0.949431, 0.222506,
		28.308975, 43.130642, 27.794336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729818, 42.394012, 28.013620>,  <28.153912, 42.466042, 27.638582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729818, 42.394012, 28.013620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619202, 42.764187, 28.117229>,  <28.552832, 42.986290, 28.179394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619202, 42.764187, 28.117229>,  <28.729818, 42.394012, 28.013620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619202, 42.764187, 28.117229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339261, -0.158163, 0.927301,
		0.899125, 0.344314, -0.270225,
		-0.276543, 0.925436, 0.259020,
		28.536240, 43.041817, 28.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316351, 42.607632, 28.339777>,  <28.729818, 42.394012, 28.013620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316351, 42.607632, 28.339777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021339, 42.852650, 28.453508>,  <28.844334, 42.999660, 28.521748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021339, 42.852650, 28.453508>,  <29.316351, 42.607632, 28.339777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021339, 42.852650, 28.453508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359401, -0.000426, 0.933183,
		0.571738, 0.790436, -0.219835,
		-0.737528, 0.612545, 0.284326,
		28.800081, 43.036411, 28.538807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615295, 43.148579, 28.693771>,  <29.316351, 42.607632, 28.339777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615295, 43.148579, 28.693771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232882, 43.135777, 28.810373>,  <29.003433, 43.128094, 28.880335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232882, 43.135777, 28.810373>,  <29.615295, 43.148579, 28.693771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232882, 43.135777, 28.810373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291647, 0.000266, 0.956526,
		-0.030690, 0.999488, 0.009080,
		-0.956033, -0.032004, 0.291506,
		28.946072, 43.126175, 28.897825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454060, 43.762115, 29.140585>,  <29.615295, 43.148579, 28.693771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454060, 43.762115, 29.140585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187300, 43.472656, 29.211676>,  <29.027245, 43.298981, 29.254330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187300, 43.472656, 29.211676>,  <29.454060, 43.762115, 29.140585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187300, 43.472656, 29.211676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334833, -0.077949, 0.939048,
		-0.665682, 0.685758, 0.294283,
		-0.666899, -0.723643, 0.177725,
		28.987230, 43.255562, 29.264994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237394, 43.786011, 29.807676>,  <29.454060, 43.762115, 29.140585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237394, 43.786011, 29.807676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085070, 43.420197, 29.753111>,  <28.993675, 43.200706, 29.720371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085070, 43.420197, 29.753111>,  <29.237394, 43.786011, 29.807676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085070, 43.420197, 29.753111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334768, -0.273883, 0.901620,
		-0.861925, 0.297679, 0.410454,
		-0.380810, -0.914535, -0.136413,
		28.970827, 43.145836, 29.712187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802256, 43.754868, 30.411678>,  <29.237394, 43.786011, 29.807676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802256, 43.754868, 30.411678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850250, 43.383179, 30.271875>,  <28.879047, 43.160168, 30.187994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850250, 43.383179, 30.271875>,  <28.802256, 43.754868, 30.411678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850250, 43.383179, 30.271875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178112, -0.326188, 0.928373,
		-0.976668, -0.173641, 0.126368,
		0.119984, -0.929220, -0.349505,
		28.886246, 43.104412, 30.167025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415604, 43.207893, 30.736710>,  <28.802256, 43.754868, 30.411678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415604, 43.207893, 30.736710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647980, 42.910435, 30.604351>,  <28.787405, 42.731956, 30.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647980, 42.910435, 30.604351>,  <28.415604, 43.207893, 30.736710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647980, 42.910435, 30.604351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046718, -0.436327, 0.898575,
		-0.812605, -0.506558, -0.288221,
		0.580939, -0.743652, -0.330896,
		28.822262, 42.687340, 30.505083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194675, 42.671925, 31.018778>,  <28.415604, 43.207893, 30.736710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194675, 42.671925, 31.018778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574942, 42.584709, 30.930513>,  <28.803102, 42.532379, 30.877554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574942, 42.584709, 30.930513>,  <28.194675, 42.671925, 31.018778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574942, 42.584709, 30.930513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062680, -0.561641, 0.825004,
		-0.303813, -0.798136, -0.520267,
		0.950668, -0.218036, -0.220661,
		28.860142, 42.519299, 30.864315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290277, 41.941563, 31.024958>,  <28.194675, 42.671925, 31.018778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290277, 41.941563, 31.024958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654072, 42.097965, 31.081450>,  <28.872349, 42.191807, 31.115345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654072, 42.097965, 31.081450>,  <28.290277, 41.941563, 31.024958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654072, 42.097965, 31.081450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150788, -0.626840, 0.764418,
		0.387422, -0.673932, -0.629062,
		0.909487, 0.391008, 0.141231,
		28.926918, 42.215267, 31.123819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762167, 41.368732, 31.117439>,  <28.290277, 41.941563, 31.024958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762167, 41.368732, 31.117439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952324, 41.682426, 31.276930>,  <29.066418, 41.870644, 31.372623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952324, 41.682426, 31.276930>,  <28.762167, 41.368732, 31.117439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952324, 41.682426, 31.276930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229225, -0.547971, 0.804477,
		0.849387, -0.291045, -0.440267,
		0.475392, 0.784233, 0.398724,
		29.094942, 41.917698, 31.396547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357727, 41.123199, 31.495792>,  <28.762167, 41.368732, 31.117439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357727, 41.123199, 31.495792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290997, 41.486744, 31.648710>,  <29.250959, 41.704868, 31.740461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290997, 41.486744, 31.648710>,  <29.357727, 41.123199, 31.495792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290997, 41.486744, 31.648710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326680, -0.314879, 0.891140,
		0.930295, 0.273552, -0.244376,
		-0.166824, 0.908857, 0.382295,
		29.240950, 41.759399, 31.763399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996183, 41.185452, 31.874273>,  <29.357727, 41.123199, 31.495792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996183, 41.185452, 31.874273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753565, 41.475163, 32.005440>,  <29.607994, 41.648987, 32.084141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753565, 41.475163, 32.005440>,  <29.996183, 41.185452, 31.874273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753565, 41.475163, 32.005440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260707, -0.208455, 0.942644,
		0.751088, 0.657248, -0.062386,
		-0.606547, 0.724273, 0.327917,
		29.571600, 41.692444, 32.103813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411562, 41.632092, 32.387501>,  <29.996183, 41.185452, 31.874273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411562, 41.632092, 32.387501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029186, 41.704445, 32.479992>,  <29.799761, 41.747856, 32.535484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029186, 41.704445, 32.479992>,  <30.411562, 41.632092, 32.387501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029186, 41.704445, 32.479992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191949, -0.210829, 0.958492,
		0.222123, 0.960642, 0.166819,
		-0.955938, 0.180883, 0.231224,
		29.742405, 41.758709, 32.549358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350447, 42.085350, 32.996933>,  <30.411562, 41.632092, 32.387501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350447, 42.085350, 32.996933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993364, 41.905296, 32.988361>,  <29.779116, 41.797264, 32.983219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993364, 41.905296, 32.988361>,  <30.350447, 42.085350, 32.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993364, 41.905296, 32.988361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086294, -0.217433, 0.972253,
		-0.442302, 0.866086, 0.232947,
		-0.892705, -0.450132, -0.021433,
		29.725554, 41.770256, 32.981930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108580, 42.305710, 33.561398>,  <30.350447, 42.085350, 32.996933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108580, 42.305710, 33.561398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889597, 41.981895, 33.476597>,  <29.758207, 41.787605, 33.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889597, 41.981895, 33.476597>,  <30.108580, 42.305710, 33.561398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889597, 41.981895, 33.476597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253336, -0.401776, 0.879998,
		-0.797566, 0.428053, 0.425039,
		-0.547457, -0.809535, -0.212001,
		29.725361, 41.739037, 33.412998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692514, 42.260239, 33.996449>,  <30.108580, 42.305710, 33.561398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692514, 42.260239, 33.996449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702934, 41.881504, 33.868187>,  <29.709187, 41.654263, 33.791229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702934, 41.881504, 33.868187>,  <29.692514, 42.260239, 33.996449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702934, 41.881504, 33.868187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280741, -0.300923, 0.911389,
		-0.959430, -0.113763, 0.257977,
		0.026052, -0.946839, -0.320652,
		29.710751, 41.597454, 33.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338860, 41.880703, 34.534687>,  <29.692514, 42.260239, 33.996449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338860, 41.880703, 34.534687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503885, 41.580544, 34.328121>,  <29.602901, 41.400448, 34.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503885, 41.580544, 34.328121>,  <29.338860, 41.880703, 34.534687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503885, 41.580544, 34.328121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154406, -0.501101, 0.851503,
		-0.897746, -0.431038, -0.090871,
		0.412566, -0.750402, -0.516416,
		29.627655, 41.355423, 34.173195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046526, 41.221432, 34.734779>,  <29.338860, 41.880703, 34.534687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046526, 41.221432, 34.734779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392046, 41.097660, 34.575733>,  <29.599358, 41.023399, 34.480305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392046, 41.097660, 34.575733>,  <29.046526, 41.221432, 34.734779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392046, 41.097660, 34.575733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141737, -0.608080, 0.781120,
		-0.483483, -0.731091, -0.481404,
		0.863802, -0.309426, -0.397619,
		29.651186, 41.004833, 34.456448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196001, 40.502525, 34.961353>,  <29.046526, 41.221432, 34.734779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196001, 40.502525, 34.961353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555319, 40.616016, 34.827148>,  <29.770908, 40.684113, 34.746624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555319, 40.616016, 34.827148>,  <29.196001, 40.502525, 34.961353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555319, 40.616016, 34.827148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438790, -0.619370, 0.651033,
		-0.023090, -0.732038, -0.680872,
		0.898293, 0.283728, -0.335513,
		29.824806, 40.701134, 34.726494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578896, 39.863411, 34.932217>,  <29.196001, 40.502525, 34.961353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578896, 39.863411, 34.932217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866953, 40.140194, 34.911858>,  <30.039787, 40.306263, 34.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866953, 40.140194, 34.911858>,  <29.578896, 39.863411, 34.932217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866953, 40.140194, 34.911858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550983, -0.525754, 0.648074,
		0.421676, -0.494753, -0.759874,
		0.720144, 0.691955, -0.050902,
		30.082996, 40.347782, 34.896587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182878, 39.567108, 34.760345>,  <29.578896, 39.863411, 34.932217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182878, 39.567108, 34.760345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275249, 39.904999, 34.953468>,  <30.330671, 40.107735, 35.069344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275249, 39.904999, 34.953468>,  <30.182878, 39.567108, 34.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275249, 39.904999, 34.953468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361304, -0.535192, 0.763564,
		0.903400, -0.001886, -0.428794,
		0.230928, 0.844728, 0.482811,
		30.344528, 40.158417, 35.098312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859623, 39.446636, 34.993511>,  <30.182878, 39.567108, 34.760345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859623, 39.446636, 34.993511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725988, 39.742218, 35.227551>,  <30.645807, 39.919567, 35.367973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725988, 39.742218, 35.227551>,  <30.859623, 39.446636, 34.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725988, 39.742218, 35.227551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332594, -0.488405, 0.806747,
		0.881912, 0.464121, -0.082603,
		-0.334085, 0.738953, 0.585094,
		30.625763, 39.963905, 35.403080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342175, 39.528164, 35.432114>,  <30.859623, 39.446636, 34.993511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342175, 39.528164, 35.432114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042677, 39.696362, 35.637081>,  <30.862978, 39.797279, 35.760059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042677, 39.696362, 35.637081>,  <31.342175, 39.528164, 35.432114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042677, 39.696362, 35.637081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308299, -0.463427, 0.830775,
		0.586800, 0.780015, 0.217352,
		-0.748744, 0.420490, 0.512417,
		30.818054, 39.822510, 35.790806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723787, 39.833260, 36.035980>,  <31.342175, 39.528164, 35.432114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723787, 39.833260, 36.035980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332949, 39.804497, 36.116089>,  <31.098446, 39.787239, 36.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332949, 39.804497, 36.116089>,  <31.723787, 39.833260, 36.035980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332949, 39.804497, 36.116089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212313, -0.392206, 0.895041,
		0.014189, 0.917063, 0.398490,
		-0.977099, -0.071905, 0.200269,
		31.039820, 39.782925, 36.176170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659132, 40.238377, 36.655941>,  <31.723787, 39.833260, 36.035980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659132, 40.238377, 36.655941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374723, 39.960323, 36.613533>,  <31.204079, 39.793491, 36.588089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374723, 39.960323, 36.613533>,  <31.659132, 40.238377, 36.655941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374723, 39.960323, 36.613533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125637, -0.273934, 0.953507,
		-0.691857, 0.664642, 0.282107,
		-0.711020, -0.695133, -0.106020,
		31.161417, 39.751781, 36.581726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285534, 40.297268, 37.268204>,  <31.659132, 40.238377, 36.655941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285534, 40.297268, 37.268204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183355, 39.932659, 37.139286>,  <31.122049, 39.713894, 37.061935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183355, 39.932659, 37.139286>,  <31.285534, 40.297268, 37.268204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183355, 39.932659, 37.139286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278837, -0.388651, 0.878180,
		-0.925742, 0.134459, 0.353445,
		-0.255446, -0.911521, -0.322298,
		31.106722, 39.659203, 37.042595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720715, 40.146282, 37.614361>,  <31.285534, 40.297268, 37.268204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720715, 40.146282, 37.614361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815649, 39.775032, 37.499634>,  <30.872610, 39.552284, 37.430798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815649, 39.775032, 37.499634>,  <30.720715, 40.146282, 37.614361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815649, 39.775032, 37.499634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031446, -0.287757, 0.957187,
		-0.970919, -0.236194, -0.039109,
		0.237335, -0.928121, -0.286816,
		30.886850, 39.496597, 37.413589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296839, 39.661221, 38.028297>,  <30.720715, 40.146282, 37.614361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296839, 39.661221, 38.028297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605072, 39.446888, 37.890263>,  <30.790012, 39.318287, 37.807442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605072, 39.446888, 37.890263>,  <30.296839, 39.661221, 38.028297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605072, 39.446888, 37.890263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022391, -0.518352, 0.854874,
		-0.636948, -0.666477, -0.387435,
		0.770582, -0.535835, -0.345086,
		30.836246, 39.286137, 37.786736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065321, 39.014523, 38.127682>,  <30.296839, 39.661221, 38.028297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065321, 39.014523, 38.127682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464819, 39.020962, 38.108700>,  <30.704517, 39.024826, 38.097309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.464819, 39.020962, 38.108700>,  <30.065321, 39.014523, 38.127682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464819, 39.020962, 38.108700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049212, -0.493943, 0.868100,
		-0.009468, -0.869345, -0.494115,
		0.998743, 0.016097, -0.047459,
		30.764442, 39.025791, 38.094463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248110, 38.330303, 38.432590>,  <30.065321, 39.014523, 38.127682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248110, 38.330303, 38.432590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573093, 38.561848, 38.460396>,  <30.768084, 38.700775, 38.477077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573093, 38.561848, 38.460396>,  <30.248110, 38.330303, 38.432590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573093, 38.561848, 38.460396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319548, -0.541850, 0.777359,
		0.487649, -0.609359, -0.625204,
		0.812458, 0.578861, 0.069513,
		30.816832, 38.735504, 38.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725817, 37.907368, 38.681023>,  <30.248110, 38.330303, 38.432590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725817, 37.907368, 38.681023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879702, 38.269367, 38.753654>,  <30.972033, 38.486568, 38.797234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879702, 38.269367, 38.753654>,  <30.725817, 37.907368, 38.681023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879702, 38.269367, 38.753654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358890, -0.327902, 0.873887,
		0.850409, -0.271028, -0.450943,
		0.384713, 0.905000, 0.181582,
		30.995115, 38.540867, 38.808128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507883, 37.775352, 38.748074>,  <30.725817, 37.907368, 38.681023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507883, 37.775352, 38.748074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470968, 38.141567, 38.904675>,  <31.448818, 38.361298, 38.998634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470968, 38.141567, 38.904675>,  <31.507883, 37.775352, 38.748074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470968, 38.141567, 38.904675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580276, -0.270064, 0.768339,
		0.809174, 0.298088, -0.506341,
		-0.092288, 0.915538, 0.391502,
		31.443281, 38.416229, 39.022125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248180, 38.077629, 38.932301>,  <31.507883, 37.775352, 38.748074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248180, 38.077629, 38.932301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984234, 38.289761, 39.145214>,  <31.825867, 38.417042, 39.272961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984234, 38.289761, 39.145214>,  <32.248180, 38.077629, 38.932301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984234, 38.289761, 39.145214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565536, -0.115877, 0.816543,
		0.494719, 0.839833, -0.223459,
		-0.659866, 0.530333, 0.532282,
		31.786274, 38.448860, 39.304897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557793, 38.710953, 39.251225>,  <32.248180, 38.077629, 38.932301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557793, 38.710953, 39.251225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240353, 38.583378, 39.458481>,  <32.049889, 38.506832, 39.582836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240353, 38.583378, 39.458481>,  <32.557793, 38.710953, 39.251225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240353, 38.583378, 39.458481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554772, -0.029615, 0.831475,
		-0.249842, 0.947314, 0.200439,
		-0.793603, -0.318936, 0.518144,
		32.002270, 38.487698, 39.613926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038651, 39.321064, 39.125271>,  <32.557793, 38.710953, 39.251225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038651, 39.321064, 39.125271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429794, 39.391956, 39.169765>,  <33.664482, 39.434494, 39.196461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429794, 39.391956, 39.169765>,  <33.038651, 39.321064, 39.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429794, 39.391956, 39.169765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018385, 0.602306, -0.798053,
		-0.208438, 0.778342, 0.592231,
		0.977863, 0.177233, 0.111234,
		33.723152, 39.445126, 39.203136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163559, 39.959213, 38.913368>,  <33.038651, 39.321064, 39.125271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163559, 39.959213, 38.913368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527012, 39.793468, 38.892605>,  <33.745083, 39.694023, 38.880146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527012, 39.793468, 38.892605>,  <33.163559, 39.959213, 38.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527012, 39.793468, 38.892605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257432, 0.653667, -0.711652,
		0.328811, 0.633266, 0.700612,
		0.908632, -0.414359, -0.051910,
		33.799603, 39.669159, 38.877033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780251, 40.514252, 38.869564>,  <33.163559, 39.959213, 38.913368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780251, 40.514252, 38.869564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907330, 40.182240, 38.686214>,  <33.983578, 39.983032, 38.576202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907330, 40.182240, 38.686214>,  <33.780251, 40.514252, 38.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907330, 40.182240, 38.686214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233230, 0.536978, -0.810715,
		0.919060, 0.150654, 0.364186,
		0.317697, -0.830035, -0.458378,
		34.002640, 39.933228, 38.548702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469471, 40.670155, 38.560715>,  <33.780251, 40.514252, 38.869564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469471, 40.670155, 38.560715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373863, 40.342369, 38.352352>,  <34.316498, 40.145699, 38.227333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373863, 40.342369, 38.352352>,  <34.469471, 40.670155, 38.560715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373863, 40.342369, 38.352352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202643, 0.482547, -0.852105,
		0.949635, -0.309226, 0.050723,
		-0.239017, -0.819468, -0.520906,
		34.302158, 40.096527, 38.196079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992451, 40.604271, 37.959530>,  <34.469471, 40.670155, 38.560715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992451, 40.604271, 37.959530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665592, 40.394192, 37.864494>,  <34.469479, 40.268143, 37.807472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665592, 40.394192, 37.864494>,  <34.992451, 40.604271, 37.959530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665592, 40.394192, 37.864494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050487, 0.345370, -0.937108,
		0.574222, -0.777744, -0.255700,
		-0.817142, -0.525198, -0.237585,
		34.420448, 40.236633, 37.793221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105083, 40.261318, 37.277550>,  <34.992451, 40.604271, 37.959530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105083, 40.261318, 37.277550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710114, 40.301991, 37.325985>,  <34.473133, 40.326393, 37.355045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710114, 40.301991, 37.325985>,  <35.105083, 40.261318, 37.277550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710114, 40.301991, 37.325985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071932, 0.393120, -0.916669,
		-0.140809, -0.913848, -0.380860,
		-0.987420, 0.101679, 0.121089,
		34.413887, 40.332493, 37.362312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922081, 40.072578, 36.531258>,  <35.105083, 40.261318, 37.277550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922081, 40.072578, 36.531258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605232, 40.239025, 36.709866>,  <34.415123, 40.338894, 36.817032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605232, 40.239025, 36.709866>,  <34.922081, 40.072578, 36.531258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605232, 40.239025, 36.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260845, 0.430605, -0.864025,
		-0.551812, -0.800890, -0.232550,
		-0.792126, 0.416119, 0.446521,
		34.367596, 40.363861, 36.843822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421158, 39.959827, 36.049416>,  <34.922081, 40.072578, 36.531258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421158, 39.959827, 36.049416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285080, 40.254082, 36.283718>,  <34.203434, 40.430634, 36.424297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285080, 40.254082, 36.283718>,  <34.421158, 39.959827, 36.049416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285080, 40.254082, 36.283718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427464, 0.433848, -0.793127,
		-0.837579, -0.520209, 0.166863,
		-0.340199, 0.735635, 0.585753,
		34.183022, 40.474773, 36.459442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766644, 40.148998, 35.741898>,  <34.421158, 39.959827, 36.049416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766644, 40.148998, 35.741898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848228, 40.456665, 35.984150>,  <33.897179, 40.641266, 36.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848228, 40.456665, 35.984150>,  <33.766644, 40.148998, 35.741898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848228, 40.456665, 35.984150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537846, 0.604948, -0.587162,
		-0.817997, -0.205975, 0.537079,
		0.203964, 0.769163, 0.605629,
		33.909416, 40.687412, 36.165840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128803, 40.611736, 35.871101>,  <33.766644, 40.148998, 35.741898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128803, 40.611736, 35.871101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452679, 40.840652, 35.923088>,  <33.647003, 40.978001, 35.954281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452679, 40.840652, 35.923088>,  <33.128803, 40.611736, 35.871101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452679, 40.840652, 35.923088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372506, 0.672310, -0.639717,
		-0.453477, 0.469561, 0.757543,
		0.809690, 0.572286, 0.129963,
		33.695587, 41.012337, 35.962078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911480, 41.321564, 36.042149>,  <33.128803, 40.611736, 35.871101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911480, 41.321564, 36.042149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282421, 41.393276, 35.910770>,  <33.504986, 41.436306, 35.831944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282421, 41.393276, 35.910770>,  <32.911480, 41.321564, 36.042149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282421, 41.393276, 35.910770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347230, 0.739450, -0.576754,
		0.139468, 0.648900, 0.747983,
		0.927351, 0.179283, -0.328447,
		33.560627, 41.447060, 35.812237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023415, 41.994835, 35.991600>,  <32.911480, 41.321564, 36.042149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023415, 41.994835, 35.991600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308670, 41.856968, 35.747425>,  <33.479824, 41.774246, 35.600922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308670, 41.856968, 35.747425>,  <33.023415, 41.994835, 35.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308670, 41.856968, 35.747425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290470, 0.647230, -0.704784,
		0.638012, 0.679923, 0.361448,
		0.713139, -0.344671, -0.610438,
		33.522614, 41.753567, 35.564293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299938, 42.640820, 35.670422>,  <33.023415, 41.994835, 35.991600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299938, 42.640820, 35.670422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418983, 42.333191, 35.444160>,  <33.490410, 42.148613, 35.308403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418983, 42.333191, 35.444160>,  <33.299938, 42.640820, 35.670422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418983, 42.333191, 35.444160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233405, 0.515904, -0.824236,
		0.925716, 0.377327, -0.025967,
		0.297610, -0.769070, -0.565651,
		33.508266, 42.102470, 35.274464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717232, 43.062050, 35.189026>,  <33.299938, 42.640820, 35.670422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717232, 43.062050, 35.189026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631104, 42.704212, 35.032394>,  <33.579426, 42.489510, 34.938416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631104, 42.704212, 35.032394>,  <33.717232, 43.062050, 35.189026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631104, 42.704212, 35.032394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104972, 0.419865, -0.901496,
		0.970886, -0.153003, -0.184313,
		-0.215318, -0.894597, -0.391580,
		33.566509, 42.435833, 34.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021164, 43.117859, 34.447067>,  <33.717232, 43.062050, 35.189026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021164, 43.117859, 34.447067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757008, 42.818012, 34.464725>,  <33.598515, 42.638103, 34.475323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757008, 42.818012, 34.464725>,  <34.021164, 43.117859, 34.447067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757008, 42.818012, 34.464725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210665, 0.128515, -0.969074,
		0.720763, -0.649272, -0.242789,
		-0.660395, -0.749620, 0.044150,
		33.558887, 42.593128, 34.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101925, 42.761421, 33.787811>,  <34.021164, 43.117859, 34.447067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101925, 42.761421, 33.787811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745235, 42.654499, 33.933895>,  <33.531223, 42.590347, 34.021545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745235, 42.654499, 33.933895>,  <34.101925, 42.761421, 33.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745235, 42.654499, 33.933895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441171, 0.333317, -0.833227,
		0.100994, -0.904128, -0.415154,
		-0.891722, -0.267305, 0.365211,
		33.477718, 42.574306, 34.043457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777351, 42.358784, 33.236248>,  <34.101925, 42.761421, 33.787811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777351, 42.358784, 33.236248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460270, 42.450447, 33.462204>,  <33.270020, 42.505447, 33.597778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460270, 42.450447, 33.462204>,  <33.777351, 42.358784, 33.236248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460270, 42.450447, 33.462204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534848, 0.183180, -0.824853,
		-0.292503, -0.955996, -0.022640,
		-0.792704, 0.229163, 0.564894,
		33.222458, 42.519196, 33.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101059, 42.085491, 32.918049>,  <33.777351, 42.358784, 33.236248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101059, 42.085491, 32.918049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963619, 42.368126, 33.165493>,  <32.881157, 42.537704, 33.313961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963619, 42.368126, 33.165493>,  <33.101059, 42.085491, 32.918049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963619, 42.368126, 33.165493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641872, 0.304143, -0.703916,
		-0.685522, -0.638933, 0.349033,
		-0.343599, 0.706584, 0.618610,
		32.860538, 42.580101, 33.351074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413593, 41.921444, 32.885300>,  <33.101059, 42.085491, 32.918049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413593, 41.921444, 32.885300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432873, 42.291878, 33.034988>,  <32.444439, 42.514137, 33.124802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432873, 42.291878, 33.034988>,  <32.413593, 41.921444, 32.885300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432873, 42.291878, 33.034988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635368, 0.317514, -0.703912,
		-0.770704, -0.203845, 0.603708,
		0.048197, 0.926085, 0.374226,
		32.447330, 42.569702, 33.147255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787365, 42.118053, 32.832447>,  <32.413593, 41.921444, 32.885300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787365, 42.118053, 32.832447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957426, 42.477207, 32.878136>,  <32.059464, 42.692699, 32.905548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957426, 42.477207, 32.878136>,  <31.787365, 42.118053, 32.832447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957426, 42.477207, 32.878136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488365, 0.333813, -0.806269,
		-0.762065, 0.287006, 0.580417,
		0.425155, 0.897885, 0.114223,
		32.084972, 42.746574, 32.912403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176769, 42.572529, 32.815807>,  <31.787365, 42.118053, 32.832447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176769, 42.572529, 32.815807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533768, 42.726246, 32.721348>,  <31.747967, 42.818478, 32.664673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533768, 42.726246, 32.721348>,  <31.176769, 42.572529, 32.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533768, 42.726246, 32.721348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347617, 0.252404, -0.903025,
		-0.287419, 0.888039, 0.358856,
		0.892498, 0.384291, -0.236151,
		31.801517, 42.841534, 32.650501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062382, 43.218071, 32.605503>,  <31.176769, 42.572529, 32.815807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062382, 43.218071, 32.605503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420546, 43.117500, 32.458515>,  <31.635443, 43.057159, 32.370323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420546, 43.117500, 32.458515>,  <31.062382, 43.218071, 32.605503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420546, 43.117500, 32.458515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290294, 0.296119, -0.909969,
		0.337601, 0.921466, 0.192161,
		0.895408, -0.251423, -0.367466,
		31.689167, 43.042072, 32.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193651, 43.727978, 32.034351>,  <31.062382, 43.218071, 32.605503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193651, 43.727978, 32.034351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417454, 43.412720, 31.931759>,  <31.551735, 43.223564, 31.870203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417454, 43.412720, 31.931759>,  <31.193651, 43.727978, 32.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417454, 43.412720, 31.931759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314663, 0.084298, -0.945453,
		0.766773, 0.609692, -0.200835,
		0.559505, -0.788143, -0.256485,
		31.585306, 43.176277, 31.854813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498638, 43.922409, 31.373116>,  <31.193651, 43.727978, 32.034351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498638, 43.922409, 31.373116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570169, 43.529041, 31.385195>,  <31.613089, 43.293022, 31.392443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570169, 43.529041, 31.385195>,  <31.498638, 43.922409, 31.373116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570169, 43.529041, 31.385195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325364, -0.088078, -0.941478,
		0.928525, 0.158536, -0.335719,
		0.178828, -0.983417, 0.030200,
		31.623817, 43.234016, 31.394255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929129, 43.706474, 30.725018>,  <31.498638, 43.922409, 31.373116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929129, 43.706474, 30.725018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774002, 43.365280, 30.864737>,  <31.680925, 43.160564, 30.948568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774002, 43.365280, 30.864737>,  <31.929129, 43.706474, 30.725018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774002, 43.365280, 30.864737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156252, -0.312631, -0.936935,
		0.908396, -0.417938, -0.012038,
		-0.387817, -0.852989, 0.349297,
		31.657658, 43.109383, 30.969526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334324, 43.164429, 30.401314>,  <31.929129, 43.706474, 30.725018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334324, 43.164429, 30.401314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989025, 42.997948, 30.515568>,  <31.781847, 42.898060, 30.584120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989025, 42.997948, 30.515568>,  <32.334324, 43.164429, 30.401314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989025, 42.997948, 30.515568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117580, -0.384501, -0.915606,
		0.490904, -0.823975, 0.282981,
		-0.863243, -0.416202, 0.285636,
		31.730053, 42.873089, 30.601259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416534, 42.610600, 30.026737>,  <32.334324, 43.164429, 30.401314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416534, 42.610600, 30.026737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036873, 42.632591, 30.150726>,  <31.809076, 42.645786, 30.225119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036873, 42.632591, 30.150726>,  <32.416534, 42.610600, 30.026737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036873, 42.632591, 30.150726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303360, -0.422886, -0.853897,
		0.084133, -0.904513, 0.418064,
		-0.949154, 0.054983, 0.309972,
		31.752127, 42.649086, 30.243717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155060, 41.982933, 29.849815>,  <32.416534, 42.610600, 30.026737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155060, 41.982933, 29.849815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844549, 42.232620, 29.885015>,  <31.658241, 42.382431, 29.906136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844549, 42.232620, 29.885015>,  <32.155060, 41.982933, 29.849815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844549, 42.232620, 29.885015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313556, -0.261240, -0.912927,
		-0.546875, -0.736280, 0.398522,
		-0.776280, 0.624216, 0.087999,
		31.611666, 42.419884, 29.911415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660139, 41.610096, 29.425013>,  <32.155060, 41.982933, 29.849815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660139, 41.610096, 29.425013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553301, 41.994602, 29.452225>,  <31.489199, 42.225307, 29.468552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553301, 41.994602, 29.452225>,  <31.660139, 41.610096, 29.425013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553301, 41.994602, 29.452225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374540, -0.038504, -0.926411,
		-0.887908, -0.272920, 0.370317,
		-0.267095, 0.961266, 0.068032,
		31.473173, 42.282982, 29.472633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006416, 41.625793, 29.257318>,  <31.660139, 41.610096, 29.425013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006416, 41.625793, 29.257318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103634, 42.009491, 29.199661>,  <31.161964, 42.239712, 29.165068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103634, 42.009491, 29.199661>,  <31.006416, 41.625793, 29.257318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103634, 42.009491, 29.199661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583081, 0.025717, -0.812007,
		-0.775208, 0.281399, 0.565569,
		0.243042, 0.959246, -0.144143,
		31.176546, 42.297264, 29.156418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373299, 42.013206, 29.017076>,  <31.006416, 41.625793, 29.257318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373299, 42.013206, 29.017076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670752, 42.252811, 28.898287>,  <30.849222, 42.396576, 28.827013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670752, 42.252811, 28.898287>,  <30.373299, 42.013206, 29.017076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670752, 42.252811, 28.898287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435930, 0.097621, -0.894670,
		-0.506931, 0.794764, 0.333723,
		0.743630, 0.599016, -0.296974,
		30.893841, 42.432518, 28.809195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019890, 42.354065, 28.511242>,  <30.373299, 42.013206, 29.017076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019890, 42.354065, 28.511242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399973, 42.455803, 28.439230>,  <30.628023, 42.516846, 28.396023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399973, 42.455803, 28.439230>,  <30.019890, 42.354065, 28.511242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399973, 42.455803, 28.439230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164239, -0.082200, -0.982990,
		-0.264821, 0.963613, -0.036333,
		0.950208, 0.254350, -0.180031,
		30.685036, 42.532108, 28.385221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114061, 43.076305, 28.047230>,  <30.019890, 42.354065, 28.511242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114061, 43.076305, 28.047230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430946, 42.837681, 27.995825>,  <30.621077, 42.694508, 27.964981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430946, 42.837681, 27.995825>,  <30.114061, 43.076305, 28.047230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430946, 42.837681, 27.995825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114079, 0.062103, -0.991529,
		0.599488, 0.800161, -0.018856,
		0.792212, -0.596561, -0.128512,
		30.668610, 42.658714, 27.957272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535549, 43.469654, 27.706009>,  <30.114061, 43.076305, 28.047230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535549, 43.469654, 27.706009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690807, 43.105900, 27.646200>,  <30.783962, 42.887646, 27.610315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690807, 43.105900, 27.646200>,  <30.535549, 43.469654, 27.706009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690807, 43.105900, 27.646200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205301, 0.072846, -0.975984,
		0.898440, 0.409521, -0.158423,
		0.388146, -0.909388, -0.149523,
		30.807251, 42.833084, 27.601343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874048, 43.551880, 27.035736>,  <30.535549, 43.469654, 27.706009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874048, 43.551880, 27.035736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840773, 43.157932, 27.096550>,  <30.820807, 42.921562, 27.133038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840773, 43.157932, 27.096550>,  <30.874048, 43.551880, 27.035736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840773, 43.157932, 27.096550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242908, -0.127921, -0.961578,
		0.966476, -0.116925, -0.228590,
		-0.083191, -0.984868, 0.152035,
		30.815815, 42.862473, 27.142160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343370, 43.223244, 26.623398>,  <30.874048, 43.551880, 27.035736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343370, 43.223244, 26.623398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060760, 42.948433, 26.691296>,  <30.891195, 42.783546, 26.732035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060760, 42.948433, 26.691296>,  <31.343370, 43.223244, 26.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060760, 42.948433, 26.691296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058644, -0.182196, -0.981512,
		0.705257, -0.703415, 0.088435,
		-0.706523, -0.687032, 0.169746,
		30.848804, 42.742325, 26.742220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514303, 42.584160, 26.303925>,  <31.343370, 43.223244, 26.623398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514303, 42.584160, 26.303925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117413, 42.544209, 26.333611>,  <30.879278, 42.520237, 26.351421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117413, 42.544209, 26.333611>,  <31.514303, 42.584160, 26.303925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117413, 42.544209, 26.333611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035025, -0.348115, -0.936797,
		0.119404, -0.932115, 0.341911,
		-0.992228, -0.099882, 0.074213,
		30.819744, 42.514244, 26.355875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384325, 42.081638, 25.804413>,  <31.514303, 42.584160, 26.303925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384325, 42.081638, 25.804413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025118, 42.236343, 25.888296>,  <30.809593, 42.329166, 25.938627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025118, 42.236343, 25.888296>,  <31.384325, 42.081638, 25.804413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025118, 42.236343, 25.888296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265426, -0.096123, -0.959328,
		-0.350871, -0.917157, 0.188976,
		-0.898020, 0.386759, 0.209710,
		30.755713, 42.352371, 25.951210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847923, 41.699707, 25.533007>,  <31.384325, 42.081638, 25.804413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847923, 41.699707, 25.533007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715212, 42.076942, 25.542013>,  <30.635586, 42.303284, 25.547417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715212, 42.076942, 25.542013>,  <30.847923, 41.699707, 25.533007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715212, 42.076942, 25.542013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332710, -0.094648, -0.938268,
		-0.882739, -0.318788, 0.345177,
		-0.331779, 0.943089, 0.022515,
		30.615679, 42.359867, 25.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533121, 41.543705, 25.163961>,  <30.847923, 41.699707, 25.533007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533121, 41.543705, 25.163961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881676, 41.659588, 25.005594>,  <32.090809, 41.729118, 24.910574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881676, 41.659588, 25.005594>,  <31.533121, 41.543705, 25.163961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881676, 41.659588, 25.005594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463822, -0.223553, 0.857259,
		0.159849, -0.930641, -0.329176,
		0.871388, 0.289711, -0.395917,
		32.143093, 41.746502, 24.886820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973089, 40.987091, 25.198780>,  <31.533121, 41.543705, 25.163961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973089, 40.987091, 25.198780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193108, 41.320724, 25.182043>,  <32.325119, 41.520905, 25.172001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193108, 41.320724, 25.182043>,  <31.973089, 40.987091, 25.198780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193108, 41.320724, 25.182043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435587, -0.243783, 0.866506,
		0.712538, -0.494847, -0.497409,
		0.550048, 0.834084, -0.041844,
		32.358124, 41.570950, 25.169489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645645, 40.754482, 25.295599>,  <31.973089, 40.987091, 25.198780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645645, 40.754482, 25.295599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653214, 41.145016, 25.381777>,  <32.657757, 41.379337, 25.433483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653214, 41.145016, 25.381777>,  <32.645645, 40.754482, 25.295599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653214, 41.145016, 25.381777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380074, -0.206332, 0.901649,
		0.924762, 0.064821, -0.374984,
		0.018925, 0.976333, 0.215445,
		32.658890, 41.437916, 25.446411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259258, 40.794456, 25.585360>,  <32.645645, 40.754482, 25.295599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259258, 40.794456, 25.585360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093410, 41.145256, 25.682487>,  <32.993904, 41.355736, 25.740765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093410, 41.145256, 25.682487>,  <33.259258, 40.794456, 25.585360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093410, 41.145256, 25.682487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378732, -0.076325, 0.922354,
		0.827439, 0.474386, -0.300503,
		-0.414616, 0.877002, 0.242820,
		32.969025, 41.408356, 25.755333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826950, 41.183590, 25.865253>,  <33.259258, 40.794456, 25.585360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826950, 41.183590, 25.865253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512154, 41.376823, 26.018757>,  <33.323277, 41.492764, 26.110859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512154, 41.376823, 26.018757>,  <33.826950, 41.183590, 25.865253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512154, 41.376823, 26.018757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423071, -0.030176, 0.905594,
		0.449061, 0.875052, -0.180632,
		-0.786991, 0.483087, 0.383760,
		33.276054, 41.521751, 26.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008926, 41.883785, 26.200306>,  <33.826950, 41.183590, 25.865253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008926, 41.883785, 26.200306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672100, 41.733166, 26.354778>,  <33.470005, 41.642796, 26.447462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672100, 41.733166, 26.354778>,  <34.008926, 41.883785, 26.200306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672100, 41.733166, 26.354778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335097, 0.195815, 0.921611,
		-0.422652, 0.905465, -0.038709,
		-0.842066, -0.376549, 0.386180,
		33.419479, 41.620201, 26.470633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755188, 42.355476, 26.765137>,  <34.008926, 41.883785, 26.200306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755188, 42.355476, 26.765137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612175, 41.987896, 26.831697>,  <33.526367, 41.767345, 26.871634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612175, 41.987896, 26.831697>,  <33.755188, 42.355476, 26.765137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612175, 41.987896, 26.831697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397532, 0.011475, 0.917517,
		-0.845067, 0.394194, 0.361211,
		-0.357534, -0.918956, 0.166402,
		33.504913, 41.712208, 26.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436596, 42.369602, 27.425167>,  <33.755188, 42.355476, 26.765137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436596, 42.369602, 27.425167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476570, 41.978081, 27.353666>,  <33.500557, 41.743168, 27.310766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476570, 41.978081, 27.353666>,  <33.436596, 42.369602, 27.425167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476570, 41.978081, 27.353666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068816, -0.172422, 0.982616,
		-0.992611, -0.110502, 0.050126,
		0.099938, -0.978805, -0.178752,
		33.506550, 41.684441, 27.300041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923321, 42.067341, 27.852217>,  <33.436596, 42.369602, 27.425167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923321, 42.067341, 27.852217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173241, 41.767490, 27.764862>,  <33.323193, 41.587582, 27.712450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173241, 41.767490, 27.764862>,  <32.923321, 42.067341, 27.852217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173241, 41.767490, 27.764862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206796, -0.110835, 0.972086,
		-0.752904, -0.652518, 0.085770,
		0.624797, -0.749624, -0.218386,
		33.360680, 41.542603, 27.699347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666668, 41.522087, 28.251749>,  <32.923321, 42.067341, 27.852217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666668, 41.522087, 28.251749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050552, 41.459061, 28.158691>,  <33.280884, 41.421246, 28.102858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050552, 41.459061, 28.158691>,  <32.666668, 41.522087, 28.251749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050552, 41.459061, 28.158691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212478, -0.134791, 0.967825,
		-0.183858, -0.978266, -0.095880,
		0.959713, -0.157570, -0.232642,
		33.338467, 41.411789, 28.088900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860317, 40.865700, 28.530148>,  <32.666668, 41.522087, 28.251749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860317, 40.865700, 28.530148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224312, 41.015610, 28.459200>,  <33.442711, 41.105556, 28.416632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224312, 41.015610, 28.459200>,  <32.860317, 40.865700, 28.530148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224312, 41.015610, 28.459200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278200, -0.234690, 0.931410,
		0.307444, -0.896919, -0.317828,
		0.909990, 0.374777, -0.177369,
		33.497311, 41.128044, 28.405989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278481, 40.304096, 28.799627>,  <32.860317, 40.865700, 28.530148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278481, 40.304096, 28.799627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491837, 40.642227, 28.787552>,  <33.619850, 40.845104, 28.780306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491837, 40.642227, 28.787552>,  <33.278481, 40.304096, 28.799627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491837, 40.642227, 28.787552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255116, -0.126744, 0.958568,
		0.806478, -0.518996, -0.283261,
		0.533394, 0.845328, -0.030188,
		33.651855, 40.895824, 28.778496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008514, 40.233849, 29.078907>,  <33.278481, 40.304096, 28.799627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008514, 40.233849, 29.078907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886852, 40.611973, 29.126011>,  <33.813854, 40.838848, 29.154272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886852, 40.611973, 29.126011>,  <34.008514, 40.233849, 29.078907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886852, 40.611973, 29.126011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360958, -0.000033, 0.932582,
		0.881588, 0.326159, -0.341209,
		-0.304158, 0.945315, 0.117759,
		33.795605, 40.895569, 29.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703121, 40.618004, 29.245197>,  <34.008514, 40.233849, 29.078907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703121, 40.618004, 29.245197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393417, 40.841579, 29.363930>,  <34.207596, 40.975727, 29.435169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393417, 40.841579, 29.363930>,  <34.703121, 40.618004, 29.245197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393417, 40.841579, 29.363930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475055, 0.203399, 0.856126,
		0.418149, 0.803873, -0.423011,
		-0.774257, 0.558942, 0.296833,
		34.161140, 41.009262, 29.452980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014088, 41.111752, 29.543533>,  <34.703121, 40.618004, 29.245197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014088, 41.111752, 29.543533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665764, 41.159512, 29.734295>,  <34.456768, 41.188168, 29.848751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665764, 41.159512, 29.734295>,  <35.014088, 41.111752, 29.543533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665764, 41.159512, 29.734295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491602, 0.202575, 0.846930,
		0.004519, 0.971960, -0.235104,
		-0.870808, 0.119404, 0.476902,
		34.404522, 41.195332, 29.877365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060371, 41.635834, 30.012894>,  <35.014088, 41.111752, 29.543533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060371, 41.635834, 30.012894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728775, 41.457249, 30.147619>,  <34.529816, 41.350098, 30.228455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728775, 41.457249, 30.147619>,  <35.060371, 41.635834, 30.012894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728775, 41.457249, 30.147619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322437, 0.110532, 0.940116,
		-0.456952, 0.887951, 0.052325,
		-0.828993, -0.446459, 0.336816,
		34.480076, 41.323311, 30.248665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927158, 41.999878, 30.558771>,  <35.060371, 41.635834, 30.012894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927158, 41.999878, 30.558771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736450, 41.651588, 30.606981>,  <34.622025, 41.442616, 30.635906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736450, 41.651588, 30.606981>,  <34.927158, 41.999878, 30.558771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736450, 41.651588, 30.606981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238813, 0.003648, 0.971059,
		-0.845967, 0.491753, 0.206202,
		-0.476769, -0.870727, 0.120524,
		34.593418, 41.390369, 30.643139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443684, 42.064724, 31.140081>,  <34.927158, 41.999878, 30.558771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443684, 42.064724, 31.140081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528080, 41.676121, 31.096907>,  <34.578716, 41.442959, 31.071001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528080, 41.676121, 31.096907>,  <34.443684, 42.064724, 31.140081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528080, 41.676121, 31.096907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133932, -0.080650, 0.987703,
		-0.968270, -0.222849, 0.113100,
		0.210987, -0.971511, -0.107938,
		34.591377, 41.384666, 31.064526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059807, 41.694626, 31.618298>,  <34.443684, 42.064724, 31.140081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059807, 41.694626, 31.618298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339821, 41.422020, 31.532986>,  <34.507828, 41.258457, 31.481798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339821, 41.422020, 31.532986>,  <34.059807, 41.694626, 31.618298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339821, 41.422020, 31.532986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195408, -0.104455, 0.975143,
		-0.686852, -0.724312, 0.060052,
		0.700035, -0.681514, -0.213282,
		34.549831, 41.217567, 31.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903431, 41.182850, 32.030846>,  <34.059807, 41.694626, 31.618298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903431, 41.182850, 32.030846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283417, 41.106598, 31.931868>,  <34.511410, 41.060844, 31.872482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283417, 41.106598, 31.931868>,  <33.903431, 41.182850, 32.030846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283417, 41.106598, 31.931868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231408, -0.102573, 0.967434,
		-0.209806, -0.976288, -0.053327,
		0.949964, -0.190634, -0.247442,
		34.568405, 41.049408, 31.857635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008125, 40.552643, 32.352909>,  <33.903431, 41.182850, 32.030846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008125, 40.552643, 32.352909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340530, 40.767578, 32.295368>,  <34.539974, 40.896538, 32.260845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340530, 40.767578, 32.295368>,  <34.008125, 40.552643, 32.352909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340530, 40.767578, 32.295368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254942, -0.138061, 0.957049,
		0.494396, -0.831992, -0.251719,
		0.831010, 0.537335, -0.143853,
		34.589832, 40.928780, 32.252213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445953, 40.129433, 32.572060>,  <34.008125, 40.552643, 32.352909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445953, 40.129433, 32.572060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626125, 40.484203, 32.612988>,  <34.734226, 40.697067, 32.637547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626125, 40.484203, 32.612988>,  <34.445953, 40.129433, 32.572060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626125, 40.484203, 32.612988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264313, -0.241939, 0.933598,
		0.852793, -0.393471, -0.343402,
		0.450425, 0.886931, 0.102324,
		34.761253, 40.750282, 32.643684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054863, 39.966564, 32.943630>,  <34.445953, 40.129433, 32.572060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054863, 39.966564, 32.943630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019714, 40.363453, 32.978886>,  <34.998627, 40.601585, 33.000038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019714, 40.363453, 32.978886>,  <35.054863, 39.966564, 32.943630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019714, 40.363453, 32.978886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349966, -0.052096, 0.935313,
		0.932632, 0.113031, -0.342667,
		-0.087868, 0.992225, 0.088143,
		34.993355, 40.661121, 33.005329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633411, 39.997192, 33.407894>,  <35.054863, 39.966564, 32.943630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633411, 39.997192, 33.407894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462074, 40.358627, 33.404789>,  <35.359272, 40.575489, 33.402927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462074, 40.358627, 33.404789>,  <35.633411, 39.997192, 33.407894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462074, 40.358627, 33.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537671, 0.261766, 0.801492,
		0.726248, 0.339136, -0.597956,
		-0.428339, 0.903585, -0.007764,
		35.333572, 40.629704, 33.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218899, 40.519875, 33.508781>,  <35.633411, 39.997192, 33.407894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218899, 40.519875, 33.508781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878208, 40.688244, 33.633614>,  <35.673794, 40.789265, 33.708515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878208, 40.688244, 33.633614>,  <36.218899, 40.519875, 33.508781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878208, 40.688244, 33.633614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470523, 0.352255, 0.809027,
		0.230603, 0.835908, -0.498076,
		-0.851722, 0.420920, 0.312083,
		35.622692, 40.814522, 33.727238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442581, 41.129177, 33.814754>,  <36.218899, 40.519875, 33.508781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442581, 41.129177, 33.814754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089699, 41.027225, 33.973118>,  <35.877968, 40.966053, 34.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089699, 41.027225, 33.973118>,  <36.442581, 41.129177, 33.814754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089699, 41.027225, 33.973118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376675, 0.122489, 0.918211,
		-0.282529, 0.959183, -0.012054,
		-0.882209, -0.254881, 0.395907,
		35.825035, 40.950760, 34.091888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320648, 41.567059, 34.340141>,  <36.442581, 41.129177, 33.814754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320648, 41.567059, 34.340141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070213, 41.275723, 34.451511>,  <35.919952, 41.100922, 34.518333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070213, 41.275723, 34.451511>,  <36.320648, 41.567059, 34.340141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070213, 41.275723, 34.451511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465329, -0.062477, 0.882930,
		-0.625682, 0.682357, 0.378036,
		-0.626092, -0.728345, 0.278430,
		35.882385, 41.057220, 34.535042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209229, 41.691364, 35.070793>,  <36.320648, 41.567059, 34.340141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209229, 41.691364, 35.070793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131599, 41.304844, 35.003139>,  <36.085022, 41.072933, 34.962547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131599, 41.304844, 35.003139>,  <36.209229, 41.691364, 35.070793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131599, 41.304844, 35.003139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526187, -0.248052, 0.813386,
		-0.827927, 0.068858, 0.556593,
		-0.194072, -0.966296, -0.169137,
		36.073380, 41.014954, 34.952400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015507, 41.379021, 35.731998>,  <36.209229, 41.691364, 35.070793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015507, 41.379021, 35.731998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160793, 41.100597, 35.484264>,  <36.247963, 40.933544, 35.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160793, 41.100597, 35.484264>,  <36.015507, 41.379021, 35.731998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160793, 41.100597, 35.484264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601260, -0.332679, 0.726506,
		-0.711732, -0.636259, 0.297679,
		0.363214, -0.696060, -0.619335,
		36.269756, 40.891781, 35.298462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134796, 40.772980, 36.145622>,  <36.015507, 41.379021, 35.731998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134796, 40.772980, 36.145622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352642, 40.672199, 35.825645>,  <36.483349, 40.611729, 35.633659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352642, 40.672199, 35.825645>,  <36.134796, 40.772980, 36.145622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352642, 40.672199, 35.825645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655260, -0.467505, 0.593357,
		-0.523480, -0.847323, -0.089513,
		0.544613, -0.251957, -0.799947,
		36.516026, 40.596611, 35.585663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123650, 40.007458, 36.184708>,  <36.134796, 40.772980, 36.145622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123650, 40.007458, 36.184708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422531, 40.148174, 35.959167>,  <36.601860, 40.232605, 35.823841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422531, 40.148174, 35.959167>,  <36.123650, 40.007458, 36.184708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422531, 40.148174, 35.959167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651928, -0.552831, 0.519007,
		-0.129135, -0.755396, -0.642418,
		0.747204, 0.351788, -0.563854,
		36.646694, 40.253712, 35.790012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413330, 39.430946, 35.954426>,  <36.123650, 40.007458, 36.184708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413330, 39.430946, 35.954426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693066, 39.713848, 35.913033>,  <36.860909, 39.883591, 35.888195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693066, 39.713848, 35.913033>,  <36.413330, 39.430946, 35.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693066, 39.713848, 35.913033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653801, -0.574417, 0.492533,
		0.288902, -0.412109, -0.864119,
		0.699342, 0.707256, -0.103487,
		36.902870, 39.926025, 35.881985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951279, 39.013008, 35.922890>,  <36.413330, 39.430946, 35.954426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951279, 39.013008, 35.922890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121162, 39.360260, 36.025623>,  <37.223095, 39.568611, 36.087261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121162, 39.360260, 36.025623>,  <36.951279, 39.013008, 35.922890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121162, 39.360260, 36.025623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641856, -0.488808, 0.590836,
		0.638466, -0.086087, -0.764820,
		0.424713, 0.868134, 0.256832,
		37.248577, 39.620701, 36.102673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735622, 38.879566, 35.955070>,  <36.951279, 39.013008, 35.922890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735622, 38.879566, 35.955070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665642, 39.190517, 36.196758>,  <37.623653, 39.377087, 36.341770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665642, 39.190517, 36.196758>,  <37.735622, 38.879566, 35.955070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665642, 39.190517, 36.196758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736129, -0.304255, 0.604602,
		0.653839, 0.550558, -0.519019,
		-0.174954, 0.777377, 0.604216,
		37.613155, 39.423729, 36.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380569, 39.281673, 35.981083>,  <37.735622, 38.879566, 35.955070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380569, 39.281673, 35.981083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203671, 39.374249, 36.327690>,  <38.097530, 39.429794, 36.535656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203671, 39.374249, 36.327690>,  <38.380569, 39.281673, 35.981083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203671, 39.374249, 36.327690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780626, -0.376405, 0.498942,
		0.441634, 0.897083, -0.014200,
		-0.442247, 0.231435, 0.866519,
		38.070995, 39.443680, 36.587646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897633, 39.581264, 36.447559>,  <38.380569, 39.281673, 35.981083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897633, 39.581264, 36.447559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 39.431496, 36.669582>,  <38.422256, 39.341637, 36.802795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600521, 39.431496, 36.669582>,  <38.897633, 39.581264, 36.447559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600521, 39.431496, 36.669582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668426, -0.366872, 0.647003,
		-0.038614, 0.851596, 0.522775,
		-0.742776, -0.374420, 0.555062,
		38.377689, 39.319168, 36.836102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136364, 39.730537, 37.060516>,  <38.897633, 39.581264, 36.447559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136364, 39.730537, 37.060516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835827, 39.473770, 37.121738>,  <38.655502, 39.319710, 37.158470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835827, 39.473770, 37.121738>,  <39.136364, 39.730537, 37.060516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835827, 39.473770, 37.121738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537266, -0.460355, 0.706695,
		-0.383177, 0.613204, 0.690764,
		-0.751346, -0.641914, 0.153056,
		38.610424, 39.281197, 37.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134014, 39.731339, 37.803513>,  <39.136364, 39.730537, 37.060516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134014, 39.731339, 37.803513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918419, 39.409729, 37.703087>,  <38.789062, 39.216763, 37.642830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918419, 39.409729, 37.703087>,  <39.134014, 39.731339, 37.803513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918419, 39.409729, 37.703087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424469, -0.516723, 0.743520,
		-0.727539, 0.294182, 0.619793,
		-0.538992, -0.804023, -0.251065,
		38.756721, 39.168522, 37.627766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707523, 39.530155, 38.373234>,  <39.134014, 39.731339, 37.803513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707523, 39.530155, 38.373234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780113, 39.196133, 38.165482>,  <38.823669, 38.995720, 38.040833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780113, 39.196133, 38.165482>,  <38.707523, 39.530155, 38.373234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780113, 39.196133, 38.165482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141244, -0.500538, 0.854115,
		-0.973199, -0.228361, 0.027110,
		0.181477, -0.835053, -0.519377,
		38.834557, 38.945618, 38.009666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431149, 39.108822, 38.805630>,  <38.707523, 39.530155, 38.373234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431149, 39.108822, 38.805630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654461, 38.885269, 38.560368>,  <38.788448, 38.751137, 38.413208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654461, 38.885269, 38.560368>,  <38.431149, 39.108822, 38.805630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654461, 38.885269, 38.560368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432339, -0.434798, 0.789958,
		-0.708097, -0.706114, -0.001113,
		0.558285, -0.558886, -0.613160,
		38.821945, 38.717602, 38.376419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271881, 38.388954, 39.097340>,  <38.431149, 39.108822, 38.805630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271881, 38.388954, 39.097340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595623, 38.420177, 38.864494>,  <38.789867, 38.438911, 38.724789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595623, 38.420177, 38.864494>,  <38.271881, 38.388954, 39.097340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595623, 38.420177, 38.864494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534129, -0.509986, 0.674256,
		-0.244238, -0.856634, -0.454452,
		0.809354, 0.078057, -0.582110,
		38.838428, 38.443596, 38.689861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512714, 37.679016, 39.058544>,  <38.271881, 38.388954, 39.097340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512714, 37.679016, 39.058544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833675, 37.902203, 38.973854>,  <39.026253, 38.036114, 38.923038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833675, 37.902203, 38.973854>,  <38.512714, 37.679016, 39.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833675, 37.902203, 38.973854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543436, -0.536519, 0.645620,
		0.246639, -0.633105, -0.733721,
		0.802400, 0.557966, -0.211725,
		39.074394, 38.069592, 38.910336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197842, 37.214699, 39.095329>,  <38.512714, 37.679016, 39.058544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197842, 37.214699, 39.095329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339783, 37.588535, 39.105251>,  <39.424950, 37.812836, 39.111206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339783, 37.588535, 39.105251>,  <39.197842, 37.214699, 39.095329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339783, 37.588535, 39.105251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780960, -0.310899, 0.541703,
		0.513983, -0.172855, -0.840204,
		0.354855, 0.934592, 0.024805,
		39.446239, 37.868912, 39.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862278, 37.186581, 38.764252>,  <39.197842, 37.214699, 39.095329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862278, 37.186581, 38.764252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865814, 37.505566, 39.005573>,  <39.867935, 37.696957, 39.150368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865814, 37.505566, 39.005573>,  <39.862278, 37.186581, 38.764252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865814, 37.505566, 39.005573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796291, -0.370547, 0.478137,
		0.604849, 0.476180, -0.638288,
		0.008836, 0.797463, 0.603303,
		39.868465, 37.744804, 39.186565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574551, 37.319378, 38.907799>,  <39.862278, 37.186581, 38.764252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574551, 37.319378, 38.907799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398514, 37.579052, 39.155952>,  <40.292892, 37.734856, 39.304844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398514, 37.579052, 39.155952>,  <40.574551, 37.319378, 38.907799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398514, 37.579052, 39.155952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813411, -0.004444, 0.581672,
		0.380370, 0.760618, -0.526098,
		-0.440092, 0.649185, 0.620386,
		40.266487, 37.773808, 39.342068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088612, 37.765812, 39.158661>,  <40.574551, 37.319378, 38.907799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088612, 37.765812, 39.158661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807407, 37.737785, 39.441750>,  <40.638687, 37.720970, 39.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807407, 37.737785, 39.441750>,  <41.088612, 37.765812, 39.158661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807407, 37.737785, 39.441750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710176, -0.016220, 0.703837,
		-0.037835, 0.997411, 0.061161,
		-0.703007, -0.070065, 0.707723,
		40.596504, 37.716766, 39.654068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339901, 38.197880, 39.704075>,  <41.088612, 37.765812, 39.158661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339901, 38.197880, 39.704075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074333, 37.942791, 39.860294>,  <40.914993, 37.789738, 39.954025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074333, 37.942791, 39.860294>,  <41.339901, 38.197880, 39.704075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074333, 37.942791, 39.860294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637074, -0.208859, 0.741967,
		-0.391600, 0.741411, 0.544940,
		-0.663918, -0.637721, 0.390544,
		40.875156, 37.751476, 39.977459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403866, 38.256413, 40.438179>,  <41.339901, 38.197880, 39.704075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403866, 38.256413, 40.438179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236485, 37.901352, 40.361271>,  <41.136055, 37.688316, 40.315128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236485, 37.901352, 40.361271>,  <41.403866, 38.256413, 40.438179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236485, 37.901352, 40.361271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490555, -0.399050, 0.774670,
		-0.764364, 0.229846, 0.602427,
		-0.418453, -0.887654, -0.192267,
		41.110947, 37.635056, 40.303589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102646, 38.037804, 41.048229>,  <41.403866, 38.256413, 40.438179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102646, 38.037804, 41.048229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180893, 37.707455, 40.836693>,  <41.227840, 37.509247, 40.709770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180893, 37.707455, 40.836693>,  <41.102646, 38.037804, 41.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180893, 37.707455, 40.836693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472720, -0.393066, 0.788692,
		-0.859227, -0.404272, 0.313517,
		0.195613, -0.825871, -0.528840,
		41.239578, 37.459694, 40.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203236, 37.511986, 41.551769>,  <41.102646, 38.037804, 41.048229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203236, 37.511986, 41.551769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317139, 37.305187, 41.228874>,  <41.385479, 37.181107, 41.035137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317139, 37.305187, 41.228874>,  <41.203236, 37.511986, 41.551769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317139, 37.305187, 41.228874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601406, -0.559402, 0.570421,
		-0.746474, -0.647908, 0.151630,
		0.284758, -0.516995, -0.807235,
		41.402565, 37.150089, 40.986702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105202, 36.795559, 41.608154>,  <41.203236, 37.511986, 41.551769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105202, 36.795559, 41.608154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386440, 36.769707, 41.324894>,  <41.555183, 36.754196, 41.154938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386440, 36.769707, 41.324894>,  <41.105202, 36.795559, 41.608154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386440, 36.769707, 41.324894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424863, -0.760383, 0.491232,
		-0.570212, -0.646251, -0.507167,
		0.703100, -0.064630, -0.708148,
		41.597370, 36.750317, 41.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183441, 36.101509, 41.403904>,  <41.105202, 36.795559, 41.608154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183441, 36.101509, 41.403904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516232, 36.275146, 41.265705>,  <41.715908, 36.379330, 41.182785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516232, 36.275146, 41.265705>,  <41.183441, 36.101509, 41.403904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516232, 36.275146, 41.265705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553340, -0.694486, 0.459896,
		-0.040306, -0.573804, -0.818001,
		0.831980, 0.434096, -0.345501,
		41.765827, 36.405376, 41.162056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593815, 35.558243, 41.147785>,  <41.183441, 36.101509, 41.403904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593815, 35.558243, 41.147785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834114, 35.864815, 41.238731>,  <41.978294, 36.048756, 41.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834114, 35.864815, 41.238731>,  <41.593815, 35.558243, 41.147785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834114, 35.864815, 41.238731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533357, -0.596104, 0.600158,
		0.595513, -0.239273, -0.766885,
		0.600745, 0.766426, 0.227370,
		42.014336, 36.094742, 41.306942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239090, 35.255737, 41.236877>,  <41.593815, 35.558243, 41.147785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239090, 35.255737, 41.236877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246578, 35.592335, 41.452858>,  <42.251072, 35.794292, 41.582447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246578, 35.592335, 41.452858>,  <42.239090, 35.255737, 41.236877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246578, 35.592335, 41.452858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532327, -0.465525, 0.707046,
		0.846332, 0.274191, -0.456664,
		0.018723, 0.841490, 0.539948,
		42.252193, 35.844780, 41.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746876, 35.124123, 41.631081>,  <42.239090, 35.255737, 41.236877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746876, 35.124123, 41.631081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619076, 35.451862, 41.821487>,  <42.542397, 35.648506, 41.935734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619076, 35.451862, 41.821487>,  <42.746876, 35.124123, 41.631081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619076, 35.451862, 41.821487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569623, -0.235386, 0.787479,
		0.757266, 0.522748, -0.391513,
		-0.319496, 0.819346, 0.476019,
		42.523228, 35.697666, 41.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338600, 35.516453, 41.927212>,  <42.746876, 35.124123, 41.631081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338600, 35.516453, 41.927212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011021, 35.580074, 42.147766>,  <42.814472, 35.618248, 42.280098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011021, 35.580074, 42.147766>,  <43.338600, 35.516453, 41.927212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011021, 35.580074, 42.147766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481144, -0.333352, 0.810788,
		0.312764, 0.929289, 0.196470,
		-0.818950, 0.159055, 0.551382,
		42.765335, 35.627792, 42.313179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544449, 35.865566, 42.467205>,  <43.338600, 35.516453, 41.927212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544449, 35.865566, 42.467205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198956, 35.713562, 42.599606>,  <42.991661, 35.622360, 42.679047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198956, 35.713562, 42.599606>,  <43.544449, 35.865566, 42.467205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198956, 35.713562, 42.599606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471697, -0.378408, 0.796435,
		-0.177401, 0.844037, 0.506093,
		-0.863731, -0.380011, 0.331000,
		42.939835, 35.599560, 42.698906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411022, 36.056900, 43.181065>,  <43.544449, 35.865566, 42.467205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411022, 36.056900, 43.181065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188068, 35.727482, 43.138912>,  <43.054298, 35.529831, 43.113621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188068, 35.727482, 43.138912>,  <43.411022, 36.056900, 43.181065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188068, 35.727482, 43.138912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333737, -0.338456, 0.879811,
		-0.760227, 0.455222, 0.463495,
		-0.557382, -0.823542, -0.105379,
		43.020855, 35.480419, 43.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834175, 36.120663, 43.656170>,  <43.411022, 36.056900, 43.181065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834175, 36.120663, 43.656170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916367, 35.737743, 43.574818>,  <42.965679, 35.507992, 43.526005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916367, 35.737743, 43.574818>,  <42.834175, 36.120663, 43.656170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916367, 35.737743, 43.574818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079192, -0.190871, 0.978415,
		-0.975453, -0.217145, 0.036591,
		0.205474, -0.957296, -0.203382,
		42.978008, 35.450554, 43.513802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822639, 35.914703, 44.432323>,  <42.834175, 36.120663, 43.656170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822639, 35.914703, 44.432323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045200, 35.959560, 44.761646>,  <43.178738, 35.986473, 44.959240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045200, 35.959560, 44.761646>,  <42.822639, 35.914703, 44.432323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045200, 35.959560, 44.761646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828425, 0.151483, 0.539226,
		-0.064249, -0.982078, 0.177185,
		0.556403, 0.112140, 0.823311,
		43.212120, 35.993202, 45.008640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152081, 35.323341, 44.323730>,  <42.822639, 35.914703, 44.432323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152081, 35.323341, 44.323730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986637, 35.259079, 44.682198>,  <42.887371, 35.220520, 44.897278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986637, 35.259079, 44.682198>,  <43.152081, 35.323341, 44.323730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986637, 35.259079, 44.682198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886560, -0.152966, -0.436592,
		0.207227, -0.975084, -0.079169,
		-0.413603, -0.160662, 0.896169,
		42.862556, 35.210880, 44.951050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885075, 34.620453, 44.352322>,  <43.152081, 35.323341, 44.323730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885075, 34.620453, 44.352322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693520, 34.895657, 44.570427>,  <42.578587, 35.060780, 44.701290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.693520, 34.895657, 44.570427>,  <42.885075, 34.620453, 44.352322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693520, 34.895657, 44.570427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841519, -0.182861, -0.508338,
		-0.250034, -0.702284, 0.666543,
		-0.478882, 0.688011, 0.545264,
		42.549854, 35.102058, 44.734009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591461, 34.651680, 44.092743>,  <42.885075, 34.620453, 44.352322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591461, 34.651680, 44.092743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298054, 34.386868, 44.031208>,  <43.122009, 34.227982, 43.994286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298054, 34.386868, 44.031208>,  <43.591461, 34.651680, 44.092743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298054, 34.386868, 44.031208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384136, 0.590534, -0.709725,
		0.560702, -0.461505, -0.687478,
		-0.733521, -0.662029, -0.153833,
		43.077999, 34.188259, 43.985058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515285, 34.623993, 43.305229>,  <43.591461, 34.651680, 44.092743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515285, 34.623993, 43.305229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183743, 34.560776, 43.519901>,  <42.984818, 34.522846, 43.648705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183743, 34.560776, 43.519901>,  <43.515285, 34.623993, 43.305229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183743, 34.560776, 43.519901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515021, 0.590233, -0.621593,
		-0.218530, -0.791611, -0.570611,
		-0.828853, -0.158040, 0.536680,
		42.935085, 34.513363, 43.680904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993679, 34.259979, 42.936455>,  <43.515285, 34.623993, 43.305229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993679, 34.259979, 42.936455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921654, 34.570900, 43.177578>,  <42.878437, 34.757454, 43.322250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921654, 34.570900, 43.177578>,  <42.993679, 34.259979, 42.936455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921654, 34.570900, 43.177578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168555, 0.579380, -0.797439,
		-0.969106, -0.245197, 0.026693,
		-0.180064, 0.777302, 0.602809,
		42.867634, 34.804089, 43.358421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309586, 34.452305, 42.874519>,  <42.993679, 34.259979, 42.936455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309586, 34.452305, 42.874519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516632, 34.782104, 42.965981>,  <42.640858, 34.979984, 43.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516632, 34.782104, 42.965981>,  <42.309586, 34.452305, 42.874519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516632, 34.782104, 42.965981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401571, 0.470080, -0.785981,
		-0.755525, 0.315012, 0.574413,
		0.517613, 0.824495, 0.228657,
		42.671917, 35.029453, 43.034576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822186, 35.013084, 42.991245>,  <42.309586, 34.452305, 42.874519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822186, 35.013084, 42.991245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173687, 35.182144, 42.902554>,  <42.384586, 35.283581, 42.849339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173687, 35.182144, 42.902554>,  <41.822186, 35.013084, 42.991245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173687, 35.182144, 42.902554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457648, 0.614300, -0.642801,
		-0.135469, 0.666338, 0.733241,
		0.878753, 0.422646, -0.221730,
		42.437313, 35.308937, 42.836033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662216, 35.727379, 43.006214>,  <41.822186, 35.013084, 42.991245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662216, 35.727379, 43.006214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997448, 35.712181, 42.788528>,  <42.198589, 35.703060, 42.657917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997448, 35.712181, 42.788528>,  <41.662216, 35.727379, 43.006214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997448, 35.712181, 42.788528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418642, 0.594832, -0.686231,
		0.349793, 0.802951, 0.482612,
		0.838083, -0.037998, -0.544217,
		42.248875, 35.700783, 42.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665951, 36.415089, 42.666527>,  <41.662216, 35.727379, 43.006214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665951, 36.415089, 42.666527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933556, 36.219830, 42.442337>,  <42.094120, 36.102673, 42.307823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933556, 36.219830, 42.442337>,  <41.665951, 36.415089, 42.666527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933556, 36.219830, 42.442337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355859, 0.451661, -0.818149,
		0.652523, 0.746802, 0.128454,
		0.669013, -0.488149, -0.560475,
		42.134258, 36.073383, 42.274193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085918, 36.932373, 42.271156>,  <41.665951, 36.415089, 42.666527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085918, 36.932373, 42.271156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124100, 36.576229, 42.093102>,  <42.147007, 36.362541, 41.986267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.124100, 36.576229, 42.093102>,  <42.085918, 36.932373, 42.271156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124100, 36.576229, 42.093102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217989, 0.417632, -0.882080,
		0.971272, 0.181234, -0.154223,
		0.095454, -0.890358, -0.445141,
		42.152737, 36.309120, 41.959560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786259, 36.760876, 42.149292>,  <42.085918, 36.932373, 42.271156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786259, 36.760876, 42.149292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705215, 36.490746, 41.865635>,  <42.656590, 36.328667, 41.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705215, 36.490746, 41.865635>,  <42.786259, 36.760876, 42.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705215, 36.490746, 41.865635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632268, 0.643206, -0.431884,
		0.747788, 0.360866, -0.557305,
		-0.202610, -0.675323, -0.709146,
		42.644432, 36.288147, 41.652893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796574, 37.163269, 41.517136>,  <42.786259, 36.760876, 42.149292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796574, 37.163269, 41.517136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584766, 36.831429, 41.446285>,  <42.457680, 36.632324, 41.403774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584766, 36.831429, 41.446285>,  <42.796574, 37.163269, 41.517136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584766, 36.831429, 41.446285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646705, 0.529912, -0.548604,
		0.548984, -0.175947, -0.817104,
		-0.529518, -0.829600, -0.177128,
		42.425911, 36.582550, 41.393150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779556, 37.006695, 40.719654>,  <42.796574, 37.163269, 41.517136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779556, 37.006695, 40.719654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471485, 36.822643, 40.896336>,  <42.286640, 36.712212, 41.002346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471485, 36.822643, 40.896336>,  <42.779556, 37.006695, 40.719654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471485, 36.822643, 40.896336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635910, 0.500280, -0.587655,
		0.049419, -0.733486, -0.677906,
		-0.770180, -0.460128, 0.441708,
		42.240433, 36.684605, 41.028847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427658, 36.822720, 40.133362>,  <42.779556, 37.006695, 40.719654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427658, 36.822720, 40.133362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175514, 36.824574, 40.443878>,  <42.024227, 36.825687, 40.630188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175514, 36.824574, 40.443878>,  <42.427658, 36.822720, 40.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175514, 36.824574, 40.443878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749071, 0.258910, -0.609802,
		-0.203816, -0.965890, -0.159734,
		-0.630359, 0.004635, 0.776290,
		41.986408, 36.825966, 40.676765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850060, 36.481625, 39.980038>,  <42.427658, 36.822720, 40.133362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850060, 36.481625, 39.980038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733528, 36.715458, 40.282928>,  <41.663609, 36.855759, 40.464661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733528, 36.715458, 40.282928>,  <41.850060, 36.481625, 39.980038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733528, 36.715458, 40.282928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804222, 0.278976, -0.524785,
		-0.518028, -0.761862, 0.388861,
		-0.291331, 0.584584, 0.757224,
		41.646130, 36.890835, 40.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244473, 36.310532, 40.496563>,  <41.850060, 36.481625, 39.980038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244473, 36.310532, 40.496563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289982, 36.702511, 40.431129>,  <41.317287, 36.937698, 40.391869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289982, 36.702511, 40.431129>,  <41.244473, 36.310532, 40.496563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289982, 36.702511, 40.431129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819722, -0.000441, -0.572761,
		-0.561347, 0.199259, 0.803234,
		0.113774, 0.979947, -0.163585,
		41.324116, 36.996494, 40.382053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576244, 36.536804, 40.300381>,  <41.244473, 36.310532, 40.496563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576244, 36.536804, 40.300381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702885, 36.903934, 40.396187>,  <40.778870, 37.124210, 40.453671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702885, 36.903934, 40.396187>,  <40.576244, 36.536804, 40.300381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702885, 36.903934, 40.396187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853280, 0.385868, -0.350740,
		-0.414337, -0.093325, 0.905326,
		0.316604, 0.917821, 0.239512,
		40.797867, 37.179279, 40.468040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064148, 36.919014, 40.569576>,  <40.576244, 36.536804, 40.300381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064148, 36.919014, 40.569576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316551, 37.172668, 40.390823>,  <40.467995, 37.324860, 40.283573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316551, 37.172668, 40.390823>,  <40.064148, 36.919014, 40.569576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316551, 37.172668, 40.390823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750672, 0.353750, -0.557989,
		-0.195755, 0.687558, 0.699245,
		0.631008, 0.634133, -0.446882,
		40.505856, 37.362907, 40.256760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632187, 37.556416, 40.492599>,  <40.064148, 36.919014, 40.569576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632187, 37.556416, 40.492599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942978, 37.586277, 40.242565>,  <40.129452, 37.604195, 40.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942978, 37.586277, 40.242565>,  <39.632187, 37.556416, 40.492599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942978, 37.586277, 40.242565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576757, 0.482370, -0.659295,
		0.252306, 0.872781, 0.417846,
		0.776977, 0.074652, -0.625088,
		40.176071, 37.608673, 40.055038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587250, 38.242287, 40.329010>,  <39.632187, 37.556416, 40.492599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587250, 38.242287, 40.329010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811073, 38.091778, 40.033627>,  <39.945366, 38.001472, 39.856396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811073, 38.091778, 40.033627>,  <39.587250, 38.242287, 40.329010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811073, 38.091778, 40.033627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364348, 0.688608, -0.626953,
		0.744410, 0.619871, 0.248223,
		0.559558, -0.376270, -0.738455,
		39.978939, 37.978897, 39.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850994, 38.847977, 39.870522>,  <39.587250, 38.242287, 40.329010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850994, 38.847977, 39.870522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872437, 38.504757, 39.666218>,  <39.885303, 38.298824, 39.543636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872437, 38.504757, 39.666218>,  <39.850994, 38.847977, 39.870522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872437, 38.504757, 39.666218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505251, 0.417883, -0.755047,
		0.861306, 0.298536, -0.411130,
		0.053605, -0.858050, -0.510761,
		39.888519, 38.247341, 39.512989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090801, 38.960449, 39.286346>,  <39.850994, 38.847977, 39.870522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090801, 38.960449, 39.286346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854332, 38.643620, 39.225517>,  <39.712452, 38.453522, 39.189022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854332, 38.643620, 39.225517>,  <40.090801, 38.960449, 39.286346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854332, 38.643620, 39.225517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370243, 0.434014, -0.821311,
		0.716543, -0.429236, -0.549839,
		-0.591174, -0.792078, -0.152068,
		39.676979, 38.405994, 39.179897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113529, 38.769283, 38.639549>,  <40.090801, 38.960449, 39.286346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113529, 38.769283, 38.639549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761551, 38.605480, 38.735882>,  <39.550365, 38.507198, 38.793682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761551, 38.605480, 38.735882>,  <40.113529, 38.769283, 38.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761551, 38.605480, 38.735882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416321, 0.420497, -0.806139,
		0.228849, -0.809622, -0.540500,
		-0.879946, -0.409505, 0.240832,
		39.497566, 38.482628, 38.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006836, 38.316875, 38.124981>,  <40.113529, 38.769283, 38.639549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006836, 38.316875, 38.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652618, 38.380203, 38.299683>,  <39.440090, 38.418201, 38.404503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652618, 38.380203, 38.299683>,  <40.006836, 38.316875, 38.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652618, 38.380203, 38.299683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400300, 0.217042, -0.890311,
		-0.235748, -0.963238, -0.128823,
		-0.885541, 0.158321, 0.436751,
		39.386955, 38.427700, 38.430710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628330, 38.116825, 37.578789>,  <40.006836, 38.316875, 38.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628330, 38.116825, 37.578789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361298, 38.256004, 37.842083>,  <39.201080, 38.339512, 38.000057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361298, 38.256004, 37.842083>,  <39.628330, 38.116825, 37.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361298, 38.256004, 37.842083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597107, 0.277899, -0.752486,
		-0.444749, -0.895379, 0.022244,
		-0.667579, 0.347949, 0.658233,
		39.161022, 38.360390, 38.039555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133381, 37.764969, 37.183140>,  <39.628330, 38.116825, 37.578789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133381, 37.764969, 37.183140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220551, 37.374611, 37.187965>,  <40.272850, 37.140396, 37.190861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220551, 37.374611, 37.187965>,  <40.133381, 37.764969, 37.183140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220551, 37.374611, 37.187965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957184, 0.211297, -0.197870,
		0.190552, 0.054663, 0.980154,
		0.217920, -0.975892, 0.012060,
		40.285927, 37.081844, 37.191582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691391, 37.533096, 37.650955>,  <40.133381, 37.764969, 37.183140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691391, 37.533096, 37.650955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696968, 37.273933, 37.346321>,  <40.700314, 37.118435, 37.163540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696968, 37.273933, 37.346321>,  <40.691391, 37.533096, 37.650955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696968, 37.273933, 37.346321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961022, 0.219016, -0.168726,
		0.276120, -0.729551, 0.625710,
		0.013946, -0.647910, -0.761589,
		40.701153, 37.079559, 37.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317532, 36.985859, 37.657349>,  <40.691391, 37.533096, 37.650955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317532, 36.985859, 37.657349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195301, 37.044975, 37.281097>,  <41.121964, 37.080444, 37.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195301, 37.044975, 37.281097>,  <41.317532, 36.985859, 37.657349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195301, 37.044975, 37.281097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940258, 0.202588, -0.273630,
		0.150120, -0.968048, -0.200868,
		-0.305581, 0.147790, -0.940627,
		41.103626, 37.089314, 36.998909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573174, 36.581005, 37.034725>,  <41.317532, 36.985859, 37.657349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573174, 36.581005, 37.034725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480907, 36.954247, 36.924377>,  <41.425549, 37.178192, 36.858170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480907, 36.954247, 36.924377>,  <41.573174, 36.581005, 37.034725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480907, 36.954247, 36.924377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898836, 0.095750, -0.427699,
		-0.372675, -0.346614, -0.860797,
		-0.230668, 0.933108, -0.275866,
		41.411709, 37.234180, 36.841618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772331, 36.655708, 36.339561>,  <41.573174, 36.581005, 37.034725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772331, 36.655708, 36.339561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761406, 37.007095, 36.530369>,  <41.754848, 37.217926, 36.644855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761406, 37.007095, 36.530369>,  <41.772331, 36.655708, 36.339561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761406, 37.007095, 36.530369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983465, 0.109078, -0.144560,
		-0.179024, 0.465186, -0.866921,
		-0.027315, 0.878467, 0.477022,
		41.753212, 37.270634, 36.673477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096725, 37.189468, 35.987728>,  <41.772331, 36.655708, 36.339561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096725, 37.189468, 35.987728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164104, 37.329472, 36.356319>,  <42.204533, 37.413475, 36.577473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164104, 37.329472, 36.356319>,  <42.096725, 37.189468, 35.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164104, 37.329472, 36.356319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951333, 0.187006, -0.244936,
		-0.258052, 0.917891, -0.301473,
		0.168447, 0.350008, 0.921477,
		42.214638, 37.434475, 36.632763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600174, 37.758663, 35.948093>,  <42.096725, 37.189468, 35.987728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600174, 37.758663, 35.948093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582314, 37.570343, 36.300537>,  <42.571598, 37.457352, 36.512005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582314, 37.570343, 36.300537>,  <42.600174, 37.758663, 35.948093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582314, 37.570343, 36.300537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984745, -0.169221, -0.040514,
		0.168176, 0.865860, 0.471172,
		-0.044653, -0.470798, 0.881110,
		42.568916, 37.429104, 36.564869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263092, 37.944168, 36.341911>,  <42.600174, 37.758663, 35.948093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263092, 37.944168, 36.341911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151733, 37.596012, 36.504349>,  <43.084919, 37.387119, 36.601810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151733, 37.596012, 36.504349>,  <43.263092, 37.944168, 36.341911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151733, 37.596012, 36.504349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958992, -0.275319, 0.067333,
		0.053199, 0.408185, 0.911348,
		-0.278395, -0.870393, 0.406093,
		43.068214, 37.334892, 36.626175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021038, 37.813969, 36.514858>,  <43.263092, 37.944168, 36.341911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021038, 37.813969, 36.514858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834450, 37.469227, 36.594463>,  <43.722496, 37.262383, 36.642227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834450, 37.469227, 36.594463>,  <44.021038, 37.813969, 36.514858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834450, 37.469227, 36.594463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880907, -0.473006, 0.016347,
		0.080045, 0.182936, 0.979861,
		-0.466471, -0.861858, 0.199011,
		43.694508, 37.210670, 36.654167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528885, 37.488495, 36.843372>,  <44.021038, 37.813969, 36.514858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528885, 37.488495, 36.843372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266949, 37.202900, 36.744247>,  <44.109787, 37.031544, 36.684772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266949, 37.202900, 36.744247>,  <44.528885, 37.488495, 36.843372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266949, 37.202900, 36.744247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751821, -0.648880, -0.117132,
		-0.077168, -0.263012, 0.961702,
		-0.654836, -0.713988, -0.247811,
		44.070499, 36.988705, 36.669903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595100, 36.836773, 37.269695>,  <44.528885, 37.488495, 36.843372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595100, 36.836773, 37.269695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457680, 36.786156, 36.897469>,  <44.375225, 36.755787, 36.674133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.457680, 36.786156, 36.897469>,  <44.595100, 36.836773, 37.269695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.457680, 36.786156, 36.897469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893038, -0.350642, -0.282018,
		-0.290609, -0.927921, 0.233472,
		-0.343556, -0.126542, -0.930568,
		44.354614, 36.748192, 36.618298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893967, 36.187637, 37.053211>,  <44.595100, 36.836773, 37.269695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893967, 36.187637, 37.053211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806393, 36.428246, 36.745903>,  <44.753849, 36.572609, 36.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806393, 36.428246, 36.745903>,  <44.893967, 36.187637, 37.053211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806393, 36.428246, 36.745903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925507, -0.121363, -0.358760,
		-0.309040, -0.789587, -0.530138,
		-0.218933, 0.601517, -0.768274,
		44.740711, 36.608700, 36.515419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089127, 35.787964, 36.567055>,  <44.893967, 36.187637, 37.053211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089127, 35.787964, 36.567055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104649, 36.174347, 36.464745>,  <45.113960, 36.406178, 36.403358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104649, 36.174347, 36.464745>,  <45.089127, 35.787964, 36.567055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104649, 36.174347, 36.464745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956593, -0.109894, -0.269914,
		-0.288833, -0.234199, -0.928292,
		0.038800, 0.965958, -0.255774,
		45.116287, 36.464134, 36.388012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257252, 35.999794, 35.814270>,  <45.089127, 35.787964, 36.567055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257252, 35.999794, 35.814270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437973, 36.270329, 36.046974>,  <45.546406, 36.432648, 36.186596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437973, 36.270329, 36.046974>,  <45.257252, 35.999794, 35.814270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437973, 36.270329, 36.046974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874503, -0.206826, -0.438710,
		-0.176391, 0.706964, -0.684900,
		0.451808, 0.676332, 0.581760,
		45.573517, 36.473228, 36.221500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616478, 36.470791, 35.389503>,  <45.257252, 35.999794, 35.814270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616478, 36.470791, 35.389503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750996, 36.317654, 35.733677>,  <45.831707, 36.225773, 35.940182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750996, 36.317654, 35.733677>,  <45.616478, 36.470791, 35.389503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750996, 36.317654, 35.733677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698238, -0.511731, -0.500594,
		0.631957, 0.769131, 0.095224,
		0.336294, -0.382843, 0.860429,
		45.851883, 36.202801, 35.991806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284641, 36.468979, 35.447361>,  <45.616478, 36.470791, 35.389503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284641, 36.468979, 35.447361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216557, 36.190357, 35.726170>,  <46.175705, 36.023182, 35.893456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216557, 36.190357, 35.726170>,  <46.284641, 36.468979, 35.447361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216557, 36.190357, 35.726170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713069, -0.575263, -0.400755,
		0.680119, 0.428811, 0.594609,
		-0.170208, -0.696558, 0.697019,
		46.165493, 35.981388, 35.935276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.955856, 36.278332, 35.626438>,  <46.284641, 36.468979, 35.447361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.955856, 36.278332, 35.626438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690029, 35.997059, 35.727547>,  <46.530533, 35.828297, 35.788212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690029, 35.997059, 35.727547>,  <46.955856, 36.278332, 35.626438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690029, 35.997059, 35.727547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555645, -0.691222, -0.462030,
		0.499613, -0.166595, 0.850078,
		-0.664564, -0.703178, 0.252775,
		46.490662, 35.786106, 35.803379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229115, 35.718182, 36.140167>,  <46.955856, 36.278332, 35.626438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229115, 35.718182, 36.140167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944866, 35.571712, 35.899853>,  <46.774319, 35.483829, 35.755665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944866, 35.571712, 35.899853>,  <47.229115, 35.718182, 36.140167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944866, 35.571712, 35.899853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672981, -0.602828, -0.428596,
		-0.205227, -0.708883, 0.674809,
		-0.710618, -0.366175, -0.600781,
		46.731682, 35.461861, 35.719620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.126152, 34.961800, 36.099007>,  <47.229115, 35.718182, 36.140167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.126152, 34.961800, 36.099007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029686, 35.149750, 35.759346>,  <46.971806, 35.262520, 35.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029686, 35.149750, 35.759346>,  <47.126152, 34.961800, 36.099007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029686, 35.149750, 35.759346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849985, -0.320008, -0.418475,
		-0.468365, -0.822687, -0.322211,
		-0.241164, 0.469874, -0.849152,
		46.957336, 35.290710, 35.504601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156036, 34.461769, 35.624062>,  <47.126152, 34.961800, 36.099007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156036, 34.461769, 35.624062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230049, 34.830254, 35.487160>,  <47.274456, 35.051342, 35.405018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230049, 34.830254, 35.487160>,  <47.156036, 34.461769, 35.624062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230049, 34.830254, 35.487160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791022, -0.346268, -0.504363,
		-0.583135, -0.177407, -0.792767,
		0.185033, 0.921208, -0.342254,
		47.285561, 35.106617, 35.384483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548733, 34.635815, 34.899960>,  <47.156036, 34.461769, 35.624062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548733, 34.635815, 34.899960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745476, 34.901737, 35.124851>,  <47.863522, 35.061291, 35.259785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745476, 34.901737, 35.124851>,  <47.548733, 34.635815, 34.899960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745476, 34.901737, 35.124851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870480, -0.389100, -0.301442,
		0.018363, 0.637678, -0.770085,
		0.491862, 0.664807, 0.562230,
		47.893036, 35.101181, 35.293522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.318016, 36.213593, 29.602068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.961483, 36.207775, 29.783314>,  <32.747562, 36.204285, 29.892061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.961483, 36.207775, 29.783314>,  <33.318016, 36.213593, 29.602068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961483, 36.207775, 29.783314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444451, -0.225080, 0.867065,
		0.089374, 0.974232, 0.207087,
		-0.891334, -0.014547, 0.453115,
		32.694084, 36.203411, 29.919249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256340, 36.747242, 30.182001>,  <33.318016, 36.213593, 29.602068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256340, 36.747242, 30.182001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.977711, 36.484299, 30.297003>,  <32.810532, 36.326530, 30.366003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.977711, 36.484299, 30.297003>,  <33.256340, 36.747242, 30.182001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977711, 36.484299, 30.297003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278556, 0.121500, 0.952704,
		-0.661203, 0.743716, 0.098478,
		-0.696575, -0.657362, 0.287502,
		32.768738, 36.287090, 30.383253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046741, 37.064247, 30.873390>,  <33.256340, 36.747242, 30.182001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046741, 37.064247, 30.873390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.887169, 36.697910, 30.855112>,  <32.791428, 36.478107, 30.844145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.887169, 36.697910, 30.855112>,  <33.046741, 37.064247, 30.873390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887169, 36.697910, 30.855112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249894, -0.156528, 0.955538,
		-0.882274, 0.369773, 0.291307,
		-0.398930, -0.915842, -0.045697,
		32.767490, 36.423157, 30.841404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654572, 36.949249, 31.492550>,  <33.046741, 37.064247, 30.873390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654572, 36.949249, 31.492550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723293, 36.569260, 31.388216>,  <32.764526, 36.341267, 31.325615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.723293, 36.569260, 31.388216>,  <32.654572, 36.949249, 31.492550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723293, 36.569260, 31.388216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362268, -0.185296, 0.913470,
		-0.916104, -0.251427, 0.312311,
		0.171801, -0.949974, -0.260834,
		32.774834, 36.284267, 31.309965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562820, 36.524433, 32.147213>,  <32.654572, 36.949249, 31.492550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562820, 36.524433, 32.147213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755108, 36.275974, 31.899639>,  <32.870480, 36.126900, 31.751095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755108, 36.275974, 31.899639>,  <32.562820, 36.524433, 32.147213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755108, 36.275974, 31.899639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573565, -0.311162, 0.757761,
		-0.663271, -0.719272, 0.206687,
		0.480723, -0.621149, -0.618934,
		32.899326, 36.089630, 31.713959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529018, 35.902294, 32.524109>,  <32.562820, 36.524433, 32.147213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529018, 35.902294, 32.524109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.827576, 35.884621, 32.258492>,  <33.006710, 35.874016, 32.099121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.827576, 35.884621, 32.258492>,  <32.529018, 35.902294, 32.524109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827576, 35.884621, 32.258492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614084, -0.338874, 0.712788,
		-0.256519, -0.939794, -0.225800,
		0.746391, -0.044184, -0.664040,
		33.051495, 35.871365, 32.059280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822170, 35.203686, 32.552380>,  <32.529018, 35.902294, 32.524109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822170, 35.203686, 32.552380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108433, 35.448421, 32.417625>,  <33.280190, 35.595261, 32.336773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.108433, 35.448421, 32.417625>,  <32.822170, 35.203686, 32.552380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108433, 35.448421, 32.417625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592828, -0.277068, 0.756167,
		0.369311, -0.740870, -0.560999,
		0.715657, 0.611837, -0.336884,
		33.323132, 35.631973, 32.316559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488884, 34.837231, 32.756626>,  <32.822170, 35.203686, 32.552380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488884, 34.837231, 32.756626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574593, 35.220604, 32.681259>,  <33.626019, 35.450626, 32.636040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574593, 35.220604, 32.681259>,  <33.488884, 34.837231, 32.756626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574593, 35.220604, 32.681259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715816, -0.022826, 0.697915,
		0.664602, -0.284415, -0.690950,
		0.214269, 0.958429, -0.188419,
		33.638874, 35.508133, 32.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157452, 34.859947, 32.498238>,  <33.488884, 34.837231, 32.756626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157452, 34.859947, 32.498238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102901, 35.223766, 32.655270>,  <34.070171, 35.442059, 32.749489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.102901, 35.223766, 32.655270>,  <34.157452, 34.859947, 32.498238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102901, 35.223766, 32.655270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808020, -0.127147, 0.575272,
		0.573153, 0.395671, -0.717593,
		-0.136379, 0.909548, 0.392585,
		34.061989, 35.496632, 32.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795689, 35.134254, 32.656952>,  <34.157452, 34.859947, 32.498238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795689, 35.134254, 32.656952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572372, 35.407562, 32.845188>,  <34.438381, 35.571548, 32.958130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572372, 35.407562, 32.845188>,  <34.795689, 35.134254, 32.656952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572372, 35.407562, 32.845188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703049, 0.088477, 0.705616,
		0.440490, 0.724785, -0.529769,
		-0.558292, 0.683270, 0.470586,
		34.404884, 35.612545, 32.986362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233883, 35.698704, 32.857655>,  <34.795689, 35.134254, 32.656952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233883, 35.698704, 32.857655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933525, 35.700855, 33.121815>,  <34.753311, 35.702145, 33.280312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.933525, 35.700855, 33.121815>,  <35.233883, 35.698704, 32.857655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933525, 35.700855, 33.121815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659595, 0.056253, 0.749513,
		-0.033119, 0.998402, -0.045787,
		-0.750891, 0.005378, 0.660404,
		34.708256, 35.702469, 33.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430958, 36.101639, 33.317230>,  <35.233883, 35.698704, 32.857655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430958, 36.101639, 33.317230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143070, 35.909580, 33.517815>,  <34.970337, 35.794346, 33.638165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143070, 35.909580, 33.517815>,  <35.430958, 36.101639, 33.317230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143070, 35.909580, 33.517815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572521, -0.001910, 0.819888,
		-0.392706, 0.877188, 0.276267,
		-0.719723, -0.480144, 0.501459,
		34.927155, 35.765537, 33.668251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226322, 36.552734, 33.837437>,  <35.430958, 36.101639, 33.317230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226322, 36.552734, 33.837437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100452, 36.196304, 33.968266>,  <35.024933, 35.982449, 34.046761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100452, 36.196304, 33.968266>,  <35.226322, 36.552734, 33.837437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100452, 36.196304, 33.968266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431652, 0.172547, 0.885383,
		-0.845374, 0.419784, 0.330338,
		-0.314672, -0.891072, 0.327068,
		35.006050, 35.928982, 34.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880600, 36.670063, 34.371670>,  <35.226322, 36.552734, 33.837437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880600, 36.670063, 34.371670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969536, 36.283676, 34.424534>,  <35.022900, 36.051842, 34.456253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969536, 36.283676, 34.424534>,  <34.880600, 36.670063, 34.371670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969536, 36.283676, 34.424534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131639, 0.164052, 0.977629,
		-0.966040, -0.199972, 0.163635,
		0.222344, -0.965970, 0.132157,
		35.036240, 35.993885, 34.464180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639812, 36.487553, 35.109367>,  <34.880600, 36.670063, 34.371670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639812, 36.487553, 35.109367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.899319, 36.204567, 34.997227>,  <35.055023, 36.034775, 34.929943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.899319, 36.204567, 34.997227>,  <34.639812, 36.487553, 35.109367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899319, 36.204567, 34.997227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414810, 0.019910, 0.909690,
		-0.637991, -0.706469, 0.306380,
		0.648768, -0.707464, -0.280348,
		35.093948, 35.992329, 34.913120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684711, 36.113430, 35.756001>,  <34.639812, 36.487553, 35.109367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684711, 36.113430, 35.756001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995029, 35.978119, 35.542942>,  <35.181221, 35.896935, 35.415108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995029, 35.978119, 35.542942>,  <34.684711, 36.113430, 35.756001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995029, 35.978119, 35.542942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604128, 0.154524, 0.781762,
		-0.182145, -0.928273, 0.324240,
		0.775792, -0.338276, -0.532650,
		35.227768, 35.876637, 35.383148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972263, 35.559582, 36.098602>,  <34.684711, 36.113430, 35.756001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972263, 35.559582, 36.098602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274994, 35.691055, 35.872620>,  <35.456631, 35.769939, 35.737030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274994, 35.691055, 35.872620>,  <34.972263, 35.559582, 36.098602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274994, 35.691055, 35.872620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586012, 0.041599, 0.809234,
		0.289488, -0.943522, -0.161132,
		0.756827, 0.328689, -0.564958,
		35.502041, 35.789661, 35.703133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625710, 35.161758, 36.236389>,  <34.972263, 35.559582, 36.098602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625710, 35.161758, 36.236389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729763, 35.516010, 36.082512>,  <35.792194, 35.728561, 35.990185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729763, 35.516010, 36.082512>,  <35.625710, 35.161758, 36.236389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729763, 35.516010, 36.082512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637392, 0.141769, 0.757386,
		0.725301, -0.442225, -0.527613,
		0.260136, 0.885629, -0.384696,
		35.807804, 35.781700, 35.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293606, 35.073334, 36.267567>,  <35.625710, 35.161758, 36.236389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293606, 35.073334, 36.267567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200294, 35.461704, 36.246090>,  <36.144310, 35.694725, 36.233204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.200294, 35.461704, 36.246090>,  <36.293606, 35.073334, 36.267567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200294, 35.461704, 36.246090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606079, 0.188353, 0.772782,
		0.760428, 0.147729, -0.632396,
		-0.233276, 0.970927, -0.053694,
		36.130310, 35.752983, 36.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856712, 35.388069, 36.489204>,  <36.293606, 35.073334, 36.267567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856712, 35.388069, 36.489204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613106, 35.705288, 36.494465>,  <36.466942, 35.895618, 36.497620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613106, 35.705288, 36.494465>,  <36.856712, 35.388069, 36.489204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613106, 35.705288, 36.494465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499209, 0.370377, 0.783334,
		0.616348, 0.483632, -0.621462,
		-0.609020, 0.793046, 0.013152,
		36.430401, 35.943203, 36.498409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284481, 36.020191, 36.432041>,  <36.856712, 35.388069, 36.489204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284481, 36.020191, 36.432041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936527, 36.076683, 36.621078>,  <36.727753, 36.110577, 36.734501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936527, 36.076683, 36.621078>,  <37.284481, 36.020191, 36.432041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936527, 36.076683, 36.621078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490882, 0.154136, 0.857483,
		0.048259, 0.977904, -0.203409,
		-0.869888, 0.141231, 0.472597,
		36.675560, 36.119053, 36.762859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355488, 36.565636, 36.808437>,  <37.284481, 36.020191, 36.432041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355488, 36.565636, 36.808437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043869, 36.402924, 36.999275>,  <36.856899, 36.305294, 37.113777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043869, 36.402924, 36.999275>,  <37.355488, 36.565636, 36.808437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043869, 36.402924, 36.999275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341279, 0.363204, 0.866955,
		-0.525945, 0.838218, -0.144126,
		-0.779045, -0.406784, 0.477091,
		36.810154, 36.280888, 37.142403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009583, 36.769272, 37.057625>,  <37.355488, 36.565636, 36.808437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009583, 36.769272, 37.057625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352226, 36.652119, 36.887718>,  <38.557816, 36.581825, 36.785774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352226, 36.652119, 36.887718>,  <38.009583, 36.769272, 37.057625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352226, 36.652119, 36.887718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431426, 0.044949, -0.901028,
		0.282992, 0.955090, -0.087854,
		0.856614, -0.292886, -0.424770,
		38.609211, 36.564251, 36.760288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000050, 37.047455, 36.463852>,  <38.009583, 36.769272, 37.057625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000050, 37.047455, 36.463852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300930, 36.791267, 36.401894>,  <38.481457, 36.637554, 36.364719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300930, 36.791267, 36.401894>,  <38.000050, 37.047455, 36.463852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300930, 36.791267, 36.401894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341715, -0.178162, -0.922762,
		0.563404, 0.747032, -0.352872,
		0.752201, -0.640469, -0.154895,
		38.526588, 36.599125, 36.355427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246075, 37.156700, 35.751183>,  <38.000050, 37.047455, 36.463852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246075, 37.156700, 35.751183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377193, 36.790966, 35.846302>,  <38.455864, 36.571526, 35.903374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377193, 36.790966, 35.846302>,  <38.246075, 37.156700, 35.751183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377193, 36.790966, 35.846302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080946, -0.277958, -0.957177,
		0.941273, 0.294515, -0.165126,
		0.327801, -0.914331, 0.237795,
		38.475533, 36.516666, 35.917641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794136, 37.028259, 35.290581>,  <38.246075, 37.156700, 35.751183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794136, 37.028259, 35.290581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640945, 36.683258, 35.422894>,  <38.549030, 36.476257, 35.502281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640945, 36.683258, 35.422894>,  <38.794136, 37.028259, 35.290581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640945, 36.683258, 35.422894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218584, -0.263306, -0.939623,
		0.897526, -0.432155, -0.087690,
		-0.382974, -0.862503, 0.330786,
		38.526054, 36.424507, 35.522129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090317, 36.476635, 34.923992>,  <38.794136, 37.028259, 35.290581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090317, 36.476635, 34.923992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746281, 36.328671, 35.064514>,  <38.539860, 36.239891, 35.148827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746281, 36.328671, 35.064514>,  <39.090317, 36.476635, 34.923992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746281, 36.328671, 35.064514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336092, -0.107192, -0.935709,
		0.383786, -0.922863, -0.032130,
		-0.860087, -0.369911, 0.351305,
		38.488255, 36.217697, 35.169907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940716, 35.808331, 34.746349>,  <39.090317, 36.476635, 34.923992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940716, 35.808331, 34.746349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585674, 35.990658, 34.772858>,  <38.372650, 36.100052, 34.788761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585674, 35.990658, 34.772858>,  <38.940716, 35.808331, 34.746349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585674, 35.990658, 34.772858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228268, -0.310335, -0.922814,
		-0.400066, -0.834222, 0.379502,
		-0.887604, 0.455814, 0.066272,
		38.319393, 36.127403, 34.792740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662060, 35.546616, 34.075001>,  <38.940716, 35.808331, 34.746349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662060, 35.546616, 34.075001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381035, 35.770077, 34.251324>,  <38.212418, 35.904152, 34.357117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381035, 35.770077, 34.251324>,  <38.662060, 35.546616, 34.075001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381035, 35.770077, 34.251324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571344, -0.073553, -0.817408,
		-0.424224, -0.826134, 0.370859,
		-0.702566, 0.558653, 0.440804,
		38.170265, 35.937672, 34.383564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040813, 35.181381, 33.967407>,  <38.662060, 35.546616, 34.075001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040813, 35.181381, 33.967407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958229, 35.567657, 34.030407>,  <37.908680, 35.799423, 34.068207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958229, 35.567657, 34.030407>,  <38.040813, 35.181381, 33.967407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958229, 35.567657, 34.030407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570045, 0.012118, -0.821524,
		-0.795251, -0.259394, 0.547988,
		-0.206458, 0.965695, 0.157503,
		37.896290, 35.857365, 34.077660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317200, 35.361187, 33.719521>,  <38.040813, 35.181381, 33.967407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317200, 35.361187, 33.719521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447056, 35.739269, 33.733337>,  <37.524971, 35.966118, 33.741627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447056, 35.739269, 33.733337>,  <37.317200, 35.361187, 33.719521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447056, 35.739269, 33.733337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645629, 0.248142, -0.722211,
		-0.691211, 0.212156, 0.690809,
		0.324640, 0.945206, 0.034544,
		37.544449, 36.022831, 33.743702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735153, 35.695831, 33.649864>,  <37.317200, 35.361187, 33.719521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735153, 35.695831, 33.649864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999088, 35.980812, 33.554337>,  <37.157448, 36.151798, 33.497021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999088, 35.980812, 33.554337>,  <36.735153, 35.695831, 33.649864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999088, 35.980812, 33.554337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701280, 0.469738, -0.536239,
		-0.269861, 0.521308, 0.809576,
		0.659834, 0.712450, -0.238819,
		37.197037, 36.194546, 33.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434742, 36.267109, 33.696701>,  <36.735153, 35.695831, 33.649864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434742, 36.267109, 33.696701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741196, 36.339916, 33.450153>,  <36.925068, 36.383602, 33.302223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.741196, 36.339916, 33.450153>,  <36.434742, 36.267109, 33.696701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741196, 36.339916, 33.450153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630562, 0.398279, -0.666157,
		0.124231, 0.899023, 0.419910,
		0.766132, 0.182022, -0.616368,
		36.971035, 36.394524, 33.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173477, 36.771439, 33.215446>,  <36.434742, 36.267109, 33.696701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173477, 36.771439, 33.215446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491108, 36.659470, 32.999634>,  <36.681686, 36.592289, 32.870148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491108, 36.659470, 32.999634>,  <36.173477, 36.771439, 33.215446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491108, 36.659470, 32.999634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429177, 0.370350, -0.823801,
		0.430413, 0.885712, 0.173950,
		0.794073, -0.279919, -0.539531,
		36.729328, 36.575493, 32.837776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213047, 37.203205, 32.756237>,  <36.173477, 36.771439, 33.215446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213047, 37.203205, 32.756237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409042, 36.886379, 32.610611>,  <36.526642, 36.696285, 32.523235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409042, 36.886379, 32.610611>,  <36.213047, 37.203205, 32.756237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409042, 36.886379, 32.610611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446831, 0.130396, -0.885064,
		0.748498, 0.596352, -0.290025,
		0.489992, -0.792061, -0.364070,
		36.556042, 36.648762, 32.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540176, 37.427204, 32.172451>,  <36.213047, 37.203205, 32.756237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540176, 37.427204, 32.172451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545704, 37.032990, 32.104900>,  <36.549019, 36.796459, 32.064369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545704, 37.032990, 32.104900>,  <36.540176, 37.427204, 32.172451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545704, 37.032990, 32.104900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258556, 0.159624, -0.952717,
		0.965897, 0.056826, -0.252612,
		0.013816, -0.985541, -0.168873,
		36.549850, 36.737328, 32.054237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963505, 37.385754, 31.582529>,  <36.540176, 37.427204, 32.172451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963505, 37.385754, 31.582529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717697, 37.074345, 31.633537>,  <36.570213, 36.887501, 31.664143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717697, 37.074345, 31.633537>,  <36.963505, 37.385754, 31.582529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717697, 37.074345, 31.633537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287780, 0.070715, -0.955082,
		0.734536, -0.623619, -0.267500,
		-0.614523, -0.778523, 0.127523,
		36.533340, 36.840786, 31.671795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088371, 36.794144, 31.023052>,  <36.963505, 37.385754, 31.582529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088371, 36.794144, 31.023052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717903, 36.764538, 31.170959>,  <36.495621, 36.746777, 31.259705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717903, 36.764538, 31.170959>,  <37.088371, 36.794144, 31.023052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717903, 36.764538, 31.170959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376657, 0.133850, -0.916632,
		0.018349, -0.988234, -0.151845,
		-0.926171, -0.074013, 0.369770,
		36.440052, 36.742336, 31.281891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757435, 36.489571, 30.471884>,  <37.088371, 36.794144, 31.023052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757435, 36.489571, 30.471884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432953, 36.598705, 30.678764>,  <36.238262, 36.664185, 30.802893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.432953, 36.598705, 30.678764>,  <36.757435, 36.489571, 30.471884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432953, 36.598705, 30.678764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450033, 0.273459, -0.850112,
		-0.373376, -0.922377, -0.099047,
		-0.811209, 0.272837, 0.517203,
		36.189590, 36.680557, 30.833925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259613, 36.238258, 30.089596>,  <36.757435, 36.489571, 30.471884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259613, 36.238258, 30.089596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051506, 36.498623, 30.310734>,  <35.926640, 36.654842, 30.443417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051506, 36.498623, 30.310734>,  <36.259613, 36.238258, 30.089596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051506, 36.498623, 30.310734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506879, 0.285635, -0.813318,
		-0.687307, -0.703371, 0.181324,
		-0.520272, 0.650908, 0.552843,
		35.895424, 36.693893, 30.476587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.490253, 36.053585, 29.973326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510395, 36.429832, 30.107607>,  <35.522480, 36.655582, 30.188175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510395, 36.429832, 30.107607>,  <35.490253, 36.053585, 29.973326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510395, 36.429832, 30.107607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616748, 0.293665, -0.730330,
		-0.785548, -0.170272, 0.594913,
		0.050350, 0.940622, 0.335703,
		35.525501, 36.712017, 30.208317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848850, 36.359467, 30.086348>,  <35.490253, 36.053585, 29.973326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848850, 36.359467, 30.086348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086933, 36.670574, 30.005545>,  <35.229782, 36.857239, 29.957064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086933, 36.670574, 30.005545>,  <34.848850, 36.359467, 30.086348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086933, 36.670574, 30.005545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640833, 0.307747, -0.703295,
		-0.484834, 0.548057, 0.681593,
		0.595204, 0.777769, -0.202007,
		35.265495, 36.903904, 29.944942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324566, 36.962597, 29.970900>,  <34.848850, 36.359467, 30.086348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324566, 36.962597, 29.970900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670429, 37.102180, 29.826353>,  <34.877949, 37.185932, 29.739626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670429, 37.102180, 29.826353>,  <34.324566, 36.962597, 29.970900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670429, 37.102180, 29.826353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495215, 0.471271, -0.729839,
		-0.084384, 0.810018, 0.580301,
		0.864662, 0.348961, -0.361366,
		34.929829, 37.206867, 29.717943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155277, 37.681995, 29.663107>,  <34.324566, 36.962597, 29.970900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155277, 37.681995, 29.663107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508018, 37.600956, 29.492794>,  <34.719662, 37.552334, 29.390606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508018, 37.600956, 29.492794>,  <34.155277, 37.681995, 29.663107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508018, 37.600956, 29.492794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312082, 0.426128, -0.849129,
		0.353470, 0.881685, 0.312555,
		0.881852, -0.202599, -0.425782,
		34.772575, 37.540176, 29.365059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462910, 38.308754, 29.459015>,  <34.155277, 37.681995, 29.663107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462910, 38.308754, 29.459015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611034, 38.009106, 29.239309>,  <34.699909, 37.829315, 29.107485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611034, 38.009106, 29.239309>,  <34.462910, 38.308754, 29.459015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611034, 38.009106, 29.239309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394649, 0.408408, -0.823077,
		0.840907, 0.521559, -0.144402,
		0.370308, -0.749119, -0.549265,
		34.722126, 37.784370, 29.074530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707935, 38.673183, 28.887030>,  <34.462910, 38.308754, 29.459015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707935, 38.673183, 28.887030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680885, 38.285912, 28.790655>,  <34.664654, 38.053547, 28.732830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680885, 38.285912, 28.790655>,  <34.707935, 38.673183, 28.887030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680885, 38.285912, 28.790655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151967, 0.248669, -0.956593,
		0.986069, -0.028075, -0.163948,
		-0.067625, -0.968182, -0.240939,
		34.660599, 37.995457, 28.718374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865849, 38.681583, 28.190071>,  <34.707935, 38.673183, 28.887030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865849, 38.681583, 28.190071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668407, 38.336468, 28.233801>,  <34.549942, 38.129398, 28.260038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668407, 38.336468, 28.233801>,  <34.865849, 38.681583, 28.190071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668407, 38.336468, 28.233801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413947, 0.122522, -0.902018,
		0.764856, -0.490493, -0.417626,
		-0.493602, -0.862789, 0.109326,
		34.520329, 38.077633, 28.266600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974457, 38.303841, 27.542936>,  <34.865849, 38.681583, 28.190071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974457, 38.303841, 27.542936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657150, 38.150803, 27.732399>,  <34.466766, 38.058979, 27.846077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657150, 38.150803, 27.732399>,  <34.974457, 38.303841, 27.542936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657150, 38.150803, 27.732399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470596, -0.108363, -0.875669,
		0.386350, -0.917541, -0.094086,
		-0.793267, -0.382591, 0.473657,
		34.419170, 38.036026, 27.874496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738125, 37.776077, 27.195204>,  <34.974457, 38.303841, 27.542936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738125, 37.776077, 27.195204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379032, 37.848854, 27.355686>,  <34.163574, 37.892521, 27.451977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379032, 37.848854, 27.355686>,  <34.738125, 37.776077, 27.195204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379032, 37.848854, 27.355686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391702, 0.087092, -0.915961,
		-0.201593, -0.979445, -0.006919,
		-0.897736, 0.181941, 0.401208,
		34.109711, 37.903435, 27.476049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240406, 37.382519, 26.831001>,  <34.738125, 37.776077, 27.195204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240406, 37.382519, 26.831001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.022655, 37.672112, 27.000471>,  <33.892006, 37.845867, 27.102152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.022655, 37.672112, 27.000471>,  <34.240406, 37.382519, 26.831001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022655, 37.672112, 27.000471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488939, 0.136540, -0.861565,
		-0.681608, -0.676168, 0.279654,
		-0.544379, 0.723984, 0.423672,
		33.859341, 37.889305, 27.127573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584667, 37.247501, 26.588913>,  <34.240406, 37.382519, 26.831001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584667, 37.247501, 26.588913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602772, 37.629822, 26.705116>,  <33.613636, 37.859215, 26.774837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602772, 37.629822, 26.705116>,  <33.584667, 37.247501, 26.588913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602772, 37.629822, 26.705116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424683, 0.281632, -0.860423,
		-0.904210, -0.084427, 0.418661,
		0.045265, 0.955801, 0.290509,
		33.616352, 37.916561, 26.792269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939346, 37.483700, 26.424448>,  <33.584667, 37.247501, 26.588913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939346, 37.483700, 26.424448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143478, 37.822720, 26.482719>,  <33.265957, 38.026131, 26.517681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.143478, 37.822720, 26.482719>,  <32.939346, 37.483700, 26.424448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143478, 37.822720, 26.482719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490203, 0.425872, -0.760483,
		-0.706589, 0.316683, 0.632806,
		0.510326, 0.847553, 0.145677,
		33.296577, 38.076984, 26.526423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484814, 37.922924, 26.528622>,  <32.939346, 37.483700, 26.424448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484814, 37.922924, 26.528622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804878, 38.125084, 26.399437>,  <32.996918, 38.246380, 26.321926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804878, 38.125084, 26.399437>,  <32.484814, 37.922924, 26.528622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804878, 38.125084, 26.399437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531584, 0.348226, -0.772112,
		-0.277765, 0.789498, 0.547302,
		0.800166, 0.505403, -0.322960,
		33.044930, 38.276703, 26.302549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275391, 38.564392, 26.254995>,  <32.484814, 37.922924, 26.528622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275391, 38.564392, 26.254995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633240, 38.507923, 26.085424>,  <32.847950, 38.474041, 25.983681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633240, 38.507923, 26.085424>,  <32.275391, 38.564392, 26.254995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633240, 38.507923, 26.085424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318833, 0.463005, -0.827026,
		0.313033, 0.875041, 0.369206,
		0.894626, -0.141172, -0.423928,
		32.901627, 38.465572, 25.958246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326344, 39.149921, 25.920422>,  <32.275391, 38.564392, 26.254995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326344, 39.149921, 25.920422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605240, 38.916718, 25.753592>,  <32.772579, 38.776794, 25.653494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.605240, 38.916718, 25.753592>,  <32.326344, 39.149921, 25.920422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605240, 38.916718, 25.753592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262638, 0.333601, -0.905390,
		0.666990, 0.740815, 0.079479,
		0.697241, -0.583013, -0.417075,
		32.814411, 38.741814, 25.628469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791115, 39.600719, 25.429146>,  <32.326344, 39.149921, 25.920422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791115, 39.600719, 25.429146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782448, 39.218102, 25.312828>,  <32.777248, 38.988533, 25.243038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.782448, 39.218102, 25.312828>,  <32.791115, 39.600719, 25.429146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782448, 39.218102, 25.312828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096558, 0.291504, -0.951684,
		0.995091, 0.007457, -0.098678,
		-0.021669, -0.956540, -0.290794,
		32.775948, 38.931141, 25.225590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299576, 39.513802, 24.895620>,  <32.791115, 39.600719, 25.429146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299576, 39.513802, 24.895620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079594, 39.186703, 24.827696>,  <32.947605, 38.990444, 24.786942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079594, 39.186703, 24.827696>,  <33.299576, 39.513802, 24.895620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079594, 39.186703, 24.827696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172429, 0.310109, -0.934933,
		0.817199, -0.484894, -0.311550,
		-0.549958, -0.817747, -0.169812,
		32.914608, 38.941380, 24.776752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572609, 39.164955, 24.330809>,  <33.299576, 39.513802, 24.895620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572609, 39.164955, 24.330809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182533, 39.081196, 24.359533>,  <32.948486, 39.030941, 24.376768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182533, 39.081196, 24.359533>,  <33.572609, 39.164955, 24.330809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182533, 39.081196, 24.359533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162326, 0.455848, -0.875130,
		0.150513, -0.865076, -0.478529,
		-0.975190, -0.209396, 0.071814,
		32.889977, 39.018375, 24.381077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394444, 39.111549, 23.699869>,  <33.572609, 39.164955, 24.330809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394444, 39.111549, 23.699869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026226, 39.103310, 23.855906>,  <32.805294, 39.098366, 23.949528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026226, 39.103310, 23.855906>,  <33.394444, 39.111549, 23.699869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026226, 39.103310, 23.855906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361674, 0.422289, -0.831183,
		-0.147611, -0.906227, -0.396186,
		-0.920545, -0.020598, 0.390093,
		32.750061, 39.097130, 23.972933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973434, 38.822609, 23.099892>,  <33.394444, 39.111549, 23.699869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973434, 38.822609, 23.099892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709423, 38.997486, 23.344263>,  <32.551018, 39.102413, 23.490885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709423, 38.997486, 23.344263>,  <32.973434, 38.822609, 23.099892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709423, 38.997486, 23.344263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580227, 0.219886, -0.784211,
		-0.477183, -0.872076, 0.108539,
		-0.660025, 0.437189, 0.610928,
		32.511417, 39.128643, 23.527542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349041, 38.635906, 22.824596>,  <32.973434, 38.822609, 23.099892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349041, 38.635906, 22.824596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271111, 38.968719, 23.032351>,  <32.224350, 39.168407, 23.157003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271111, 38.968719, 23.032351>,  <32.349041, 38.635906, 22.824596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271111, 38.968719, 23.032351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637821, 0.294807, -0.711529,
		-0.745135, -0.469901, 0.473252,
		-0.194830, 0.832035, 0.519384,
		32.212662, 39.218330, 23.188166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643791, 38.671104, 22.966993>,  <32.349041, 38.635906, 22.824596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643791, 38.671104, 22.966993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773188, 39.048603, 22.994402>,  <31.850826, 39.275101, 23.010847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.773188, 39.048603, 22.994402>,  <31.643791, 38.671104, 22.966993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773188, 39.048603, 22.994402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706407, 0.289051, -0.646095,
		-0.629556, 0.160602, 0.760175,
		0.323493, 0.943746, 0.068524,
		31.870235, 39.331726, 23.014959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268787, 39.373981, 23.068478>,  <31.643791, 38.671104, 22.966993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268787, 39.373981, 23.068478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242098, 39.706871, 22.848310>,  <31.226084, 39.906605, 22.716211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.242098, 39.706871, 22.848310>,  <31.268787, 39.373981, 23.068478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242098, 39.706871, 22.848310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871388, -0.317321, -0.374154,
		-0.486037, 0.454662, 0.746358,
		-0.066722, 0.832220, -0.550417,
		31.222082, 39.956535, 22.683186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561346, 39.351845, 23.351170>,  <31.268787, 39.373981, 23.068478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561346, 39.351845, 23.351170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437483, 39.730427, 23.314632>,  <30.363165, 39.957577, 23.292709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437483, 39.730427, 23.314632>,  <30.561346, 39.351845, 23.351170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437483, 39.730427, 23.314632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356706, -0.026581, 0.933839,
		0.881404, 0.321754, 0.345835,
		-0.309659, 0.946450, -0.091343,
		30.344585, 40.014362, 23.287230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933081, 39.697426, 23.836329>,  <30.561346, 39.351845, 23.351170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933081, 39.697426, 23.836329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567699, 39.852657, 23.787340>,  <30.348471, 39.945797, 23.757948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567699, 39.852657, 23.787340>,  <30.933081, 39.697426, 23.836329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567699, 39.852657, 23.787340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240009, -0.270725, 0.932257,
		0.328635, 0.880967, 0.340437,
		-0.913452, 0.388080, -0.122470,
		30.293663, 39.969082, 23.750599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818623, 40.136497, 24.350275>,  <30.933081, 39.697426, 23.836329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818623, 40.136497, 24.350275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446571, 40.023071, 24.256933>,  <30.223341, 39.955013, 24.200928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446571, 40.023071, 24.256933>,  <30.818623, 40.136497, 24.350275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446571, 40.023071, 24.256933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109033, -0.393548, 0.912815,
		-0.350682, 0.874476, 0.335131,
		-0.930126, -0.283568, -0.233357,
		30.167534, 39.938000, 24.186926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323511, 40.366417, 24.903738>,  <30.818623, 40.136497, 24.350275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323511, 40.366417, 24.903738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133400, 40.058113, 24.734015>,  <30.019333, 39.873131, 24.632181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.133400, 40.058113, 24.734015>,  <30.323511, 40.366417, 24.903738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133400, 40.058113, 24.734015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159602, -0.398731, 0.903073,
		-0.865239, 0.496932, 0.066493,
		-0.475278, -0.770761, -0.424308,
		29.990816, 39.826885, 24.606722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956778, 40.208401, 25.488052>,  <30.323511, 40.366417, 24.903738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956778, 40.208401, 25.488052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.919067, 39.910912, 25.223331>,  <29.896442, 39.732418, 25.064499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.919067, 39.910912, 25.223331>,  <29.956778, 40.208401, 25.488052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919067, 39.910912, 25.223331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123615, -0.668363, 0.733492,
		-0.987842, -0.012659, 0.154945,
		-0.094274, -0.743727, -0.661802,
		29.890785, 39.687794, 25.024792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433901, 39.859226, 25.747747>,  <29.956778, 40.208401, 25.488052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433901, 39.859226, 25.747747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650404, 39.628666, 25.502863>,  <29.780306, 39.490330, 25.355932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.650404, 39.628666, 25.502863>,  <29.433901, 39.859226, 25.747747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650404, 39.628666, 25.502863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076836, -0.758936, 0.646616,
		-0.837340, -0.302945, -0.455068,
		0.541256, -0.576403, -0.612210,
		29.812780, 39.455746, 25.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080669, 39.146019, 25.777884>,  <29.433901, 39.859226, 25.747747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080669, 39.146019, 25.777884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462603, 39.132183, 25.659834>,  <29.691763, 39.123882, 25.589005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462603, 39.132183, 25.659834>,  <29.080669, 39.146019, 25.777884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462603, 39.132183, 25.659834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236280, -0.513886, 0.824677,
		-0.180183, -0.857161, -0.482503,
		0.954833, -0.034587, -0.295124,
		29.749052, 39.121807, 25.571297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246223, 38.530670, 26.092142>,  <29.080669, 39.146019, 25.777884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246223, 38.530670, 26.092142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597542, 38.702938, 26.009077>,  <29.808332, 38.806297, 25.959238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597542, 38.702938, 26.009077>,  <29.246223, 38.530670, 26.092142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597542, 38.702938, 26.009077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436177, -0.543830, 0.716937,
		0.195829, -0.720260, -0.665490,
		0.878294, 0.430668, -0.207663,
		29.861031, 38.832138, 25.946777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754421, 37.993771, 26.059639>,  <29.246223, 38.530670, 26.092142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754421, 37.993771, 26.059639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954412, 38.330219, 26.142136>,  <30.074408, 38.532089, 26.191633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954412, 38.330219, 26.142136>,  <29.754421, 37.993771, 26.059639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954412, 38.330219, 26.142136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501956, -0.475511, 0.722446,
		0.705737, -0.257682, -0.659951,
		0.499976, 0.841124, 0.206241,
		30.104404, 38.582558, 26.204008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513100, 37.845978, 26.064564>,  <29.754421, 37.993771, 26.059639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513100, 37.845978, 26.064564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455837, 38.173004, 26.287668>,  <30.421480, 38.369221, 26.421532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455837, 38.173004, 26.287668>,  <30.513100, 37.845978, 26.064564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455837, 38.173004, 26.287668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565784, -0.394791, 0.723898,
		0.812031, 0.419203, -0.406047,
		-0.143156, 0.817563, 0.557761,
		30.412891, 38.418274, 26.454996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170389, 38.034599, 26.179316>,  <30.513100, 37.845978, 26.064564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170389, 38.034599, 26.179316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924860, 38.212200, 26.440416>,  <30.777542, 38.318760, 26.597076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924860, 38.212200, 26.440416>,  <31.170389, 38.034599, 26.179316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924860, 38.212200, 26.440416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598620, -0.277265, 0.751517,
		0.514660, 0.852049, -0.095596,
		-0.613824, 0.444001, 0.652750,
		30.740713, 38.345402, 26.636242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541630, 38.614212, 26.623819>,  <31.170389, 38.034599, 26.179316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541630, 38.614212, 26.623819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217419, 38.485405, 26.819511>,  <31.022892, 38.408119, 26.936926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217419, 38.485405, 26.819511>,  <31.541630, 38.614212, 26.623819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217419, 38.485405, 26.819511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562919, -0.197612, 0.802540,
		-0.161755, 0.925880, 0.341441,
		-0.810529, -0.322019, 0.489231,
		30.974260, 38.388798, 26.966280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675610, 38.774338, 27.327885>,  <31.541630, 38.614212, 26.623819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675610, 38.774338, 27.327885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364532, 38.525547, 27.364426>,  <31.177887, 38.376274, 27.386351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364532, 38.525547, 27.364426>,  <31.675610, 38.774338, 27.327885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364532, 38.525547, 27.364426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307662, -0.249843, 0.918108,
		-0.548217, 0.742109, 0.385659,
		-0.777690, -0.621975, 0.091350,
		31.131226, 38.338955, 27.391830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543823, 38.885071, 28.057140>,  <31.675610, 38.774338, 27.327885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543823, 38.885071, 28.057140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378498, 38.547234, 27.921001>,  <31.279303, 38.344532, 27.839319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378498, 38.547234, 27.921001>,  <31.543823, 38.885071, 28.057140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378498, 38.547234, 27.921001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237470, -0.460806, 0.855140,
		-0.879078, 0.272620, 0.391023,
		-0.413315, -0.844592, -0.340346,
		31.254503, 38.293858, 27.818897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203985, 38.610622, 28.566061>,  <31.543823, 38.885071, 28.057140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203985, 38.610622, 28.566061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.270199, 38.297211, 28.326500>,  <31.309927, 38.109165, 28.182762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.270199, 38.297211, 28.326500>,  <31.203985, 38.610622, 28.566061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270199, 38.297211, 28.326500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294174, -0.540406, 0.788304,
		-0.941308, -0.306672, 0.141037,
		0.165534, -0.783526, -0.598903,
		31.319859, 38.062153, 28.146830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010500, 38.032555, 28.957253>,  <31.203985, 38.610622, 28.566061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010500, 38.032555, 28.957253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243359, 37.861969, 28.680346>,  <31.383074, 37.759617, 28.514202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243359, 37.861969, 28.680346>,  <31.010500, 38.032555, 28.957253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243359, 37.861969, 28.680346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407834, -0.583406, 0.702360,
		-0.703404, -0.691206, -0.165701,
		0.582147, -0.426464, -0.692267,
		31.418003, 37.734032, 28.472666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831818, 37.228191, 29.117401>,  <31.010500, 38.032555, 28.957253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831818, 37.228191, 29.117401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170395, 37.289623, 28.913460>,  <31.373541, 37.326481, 28.791096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.170395, 37.289623, 28.913460>,  <30.831818, 37.228191, 29.117401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170395, 37.289623, 28.913460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443061, -0.734237, 0.514386,
		-0.295353, -0.661294, -0.689534,
		0.846442, 0.153580, -0.509853,
		31.424328, 37.335697, 28.760504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951443, 36.580338, 28.735691>,  <30.831818, 37.228191, 29.117401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951443, 36.580338, 28.735691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294346, 36.775238, 28.802261>,  <31.500088, 36.892178, 28.842203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.294346, 36.775238, 28.802261>,  <30.951443, 36.580338, 28.735691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294346, 36.775238, 28.802261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368518, -0.806360, 0.462578,
		0.359591, -0.335216, -0.870818,
		0.857256, 0.487251, 0.166427,
		31.551523, 36.921413, 28.852190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489557, 36.060146, 28.667091>,  <30.951443, 36.580338, 28.735691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489557, 36.060146, 28.667091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678415, 36.359253, 28.853819>,  <31.791731, 36.538719, 28.965855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.678415, 36.359253, 28.853819>,  <31.489557, 36.060146, 28.667091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678415, 36.359253, 28.853819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447586, -0.659575, 0.603843,
		0.759437, -0.076161, -0.646108,
		0.472146, 0.747770, 0.466817,
		31.820059, 36.583584, 28.993864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172203, 35.843575, 28.836704>,  <31.489557, 36.060146, 28.667091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172203, 35.843575, 28.836704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132225, 36.159901, 29.078239>,  <32.108238, 36.349697, 29.223162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132225, 36.159901, 29.078239>,  <32.172203, 35.843575, 28.836704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132225, 36.159901, 29.078239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567240, -0.453313, 0.687565,
		0.817465, 0.411241, -0.403276,
		-0.099945, 0.790815, 0.603840,
		32.102242, 36.397144, 29.259392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810699, 35.898006, 29.120426>,  <32.172203, 35.843575, 28.836704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810699, 35.898006, 29.120426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552341, 36.094181, 29.354450>,  <32.397327, 36.211884, 29.494864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.552341, 36.094181, 29.354450>,  <32.810699, 35.898006, 29.120426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552341, 36.094181, 29.354450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500602, -0.306514, 0.809597,
		0.576381, 0.815797, -0.047535,
		-0.645897, 0.490433, 0.585058,
		32.358574, 36.241310, 29.529968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.743908, 36.339367, 32.082932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432930, 36.390491, 32.329262>,  <37.246346, 36.421165, 32.477062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.432930, 36.390491, 32.329262>,  <37.743908, 36.339367, 32.082932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432930, 36.390491, 32.329262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628842, 0.139548, 0.764908,
		0.011829, 0.981932, -0.188867,
		-0.777443, 0.127815, 0.615829,
		37.199696, 36.428837, 32.514011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961048, 36.809093, 32.502106>,  <37.743908, 36.339367, 32.082932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961048, 36.809093, 32.502106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658958, 36.677742, 32.729019>,  <37.477707, 36.598930, 32.865166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658958, 36.677742, 32.729019>,  <37.961048, 36.809093, 32.502106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658958, 36.677742, 32.729019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595818, 0.016810, 0.802943,
		-0.273203, 0.944398, 0.182957,
		-0.755222, -0.328376, 0.567282,
		37.432392, 36.579227, 32.899204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170288, 36.997238, 33.178467>,  <37.961048, 36.809093, 32.502106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170288, 36.997238, 33.178467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859543, 36.770039, 33.287182>,  <37.673096, 36.633720, 33.352409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.859543, 36.770039, 33.287182>,  <38.170288, 36.997238, 33.178467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859543, 36.770039, 33.287182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442479, -0.185352, 0.877415,
		-0.447992, 0.801889, 0.395319,
		-0.776863, -0.567995, 0.271783,
		37.626484, 36.599640, 33.368717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897667, 37.283123, 33.781548>,  <38.170288, 36.997238, 33.178467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897667, 37.283123, 33.781548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809563, 36.894253, 33.749660>,  <37.756699, 36.660931, 33.730530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809563, 36.894253, 33.749660>,  <37.897667, 37.283123, 33.781548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809563, 36.894253, 33.749660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393835, -0.163398, 0.904541,
		-0.892400, 0.167843, 0.418868,
		-0.220263, -0.972178, -0.079714,
		37.743484, 36.602600, 33.725746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517536, 37.125179, 34.313797>,  <37.897667, 37.283123, 33.781548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517536, 37.125179, 34.313797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646935, 36.757751, 34.222946>,  <37.724571, 36.537296, 34.168438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.646935, 36.757751, 34.222946>,  <37.517536, 37.125179, 34.313797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646935, 36.757751, 34.222946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091008, -0.208715, 0.973733,
		-0.941844, -0.335665, 0.016080,
		0.323491, -0.918568, -0.227125,
		37.743980, 36.482182, 34.154808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158188, 36.742657, 34.771797>,  <37.517536, 37.125179, 34.313797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158188, 36.742657, 34.771797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474892, 36.523991, 34.662792>,  <37.664913, 36.392792, 34.597389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474892, 36.523991, 34.662792>,  <37.158188, 36.742657, 34.771797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474892, 36.523991, 34.662792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203578, -0.184468, 0.961524,
		-0.575906, -0.816777, -0.034765,
		0.791763, -0.546670, -0.272514,
		37.712421, 36.359989, 34.581039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252613, 36.331345, 35.387512>,  <37.158188, 36.742657, 34.771797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252613, 36.331345, 35.387512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568817, 36.208988, 35.175278>,  <37.758541, 36.135574, 35.047935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568817, 36.208988, 35.175278>,  <37.252613, 36.331345, 35.387512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568817, 36.208988, 35.175278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467887, -0.257379, 0.845481,
		-0.395187, -0.916617, -0.060338,
		0.790512, -0.305892, -0.530586,
		37.805969, 36.117222, 35.016102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546162, 35.561722, 35.647907>,  <37.252613, 36.331345, 35.387512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546162, 35.561722, 35.647907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847816, 35.756042, 35.471149>,  <38.028809, 35.872635, 35.365097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.847816, 35.756042, 35.471149>,  <37.546162, 35.561722, 35.647907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847816, 35.756042, 35.471149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460812, 0.087958, 0.883129,
		0.467892, -0.869633, -0.157530,
		0.754141, 0.485801, -0.441892,
		38.074059, 35.901783, 35.338581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085835, 35.282810, 36.040977>,  <37.546162, 35.561722, 35.647907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085835, 35.282810, 36.040977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230869, 35.617001, 35.875809>,  <38.317890, 35.817516, 35.776707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.230869, 35.617001, 35.875809>,  <38.085835, 35.282810, 36.040977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230869, 35.617001, 35.875809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561917, 0.157481, 0.812065,
		0.743490, -0.526475, -0.412368,
		0.362591, 0.835478, -0.412921,
		38.339645, 35.867645, 35.751934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785759, 35.249378, 36.174477>,  <38.085835, 35.282810, 36.040977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785759, 35.249378, 36.174477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697716, 35.632862, 36.102440>,  <38.644890, 35.862953, 36.059219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697716, 35.632862, 36.102440>,  <38.785759, 35.249378, 36.174477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697716, 35.632862, 36.102440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535478, 0.273063, 0.799187,
		0.815363, 0.079471, -0.573470,
		-0.220106, 0.958708, -0.180090,
		38.631683, 35.920475, 36.048412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348988, 35.646675, 36.248669>,  <38.785759, 35.249378, 36.174477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348988, 35.646675, 36.248669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098782, 35.958080, 36.269215>,  <38.948658, 36.144924, 36.281544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098782, 35.958080, 36.269215>,  <39.348988, 35.646675, 36.248669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098782, 35.958080, 36.269215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522721, 0.369298, 0.768362,
		0.579214, 0.507474, -0.637950,
		-0.625518, 0.778517, 0.051365,
		38.911125, 36.191635, 36.284626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747517, 36.200043, 36.233608>,  <39.348988, 35.646675, 36.248669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747517, 36.200043, 36.233608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410091, 36.291683, 36.427895>,  <39.207638, 36.346668, 36.544468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410091, 36.291683, 36.427895>,  <39.747517, 36.200043, 36.233608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410091, 36.291683, 36.427895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536932, 0.377318, 0.754543,
		-0.010404, 0.897299, -0.441301,
		-0.843561, 0.229099, 0.485714,
		39.157024, 36.360413, 36.573608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744652, 36.912819, 36.516457>,  <39.747517, 36.200043, 36.233608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744652, 36.912819, 36.516457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507271, 36.672981, 36.731232>,  <39.364841, 36.529079, 36.860096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507271, 36.672981, 36.731232>,  <39.744652, 36.912819, 36.516457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507271, 36.672981, 36.731232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307771, 0.447366, 0.839727,
		-0.743704, 0.663590, -0.080951,
		-0.593449, -0.599594, 0.536942,
		39.329235, 36.493103, 36.892315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210724, 37.336624, 36.950783>,  <39.744652, 36.912819, 36.516457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210724, 37.336624, 36.950783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331306, 36.985424, 37.099503>,  <39.403656, 36.774704, 37.188736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331306, 36.985424, 37.099503>,  <39.210724, 37.336624, 36.950783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331306, 36.985424, 37.099503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440734, 0.474095, 0.762225,
		-0.845505, -0.065910, 0.529884,
		0.301454, -0.878003, 0.371801,
		39.421741, 36.722023, 37.211044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021927, 38.023014, 37.157867>,  <39.210724, 37.336624, 36.950783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021927, 38.023014, 37.157867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932793, 38.299038, 37.433308>,  <38.879311, 38.464653, 37.598572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.932793, 38.299038, 37.433308>,  <39.021927, 38.023014, 37.157867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932793, 38.299038, 37.433308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672038, 0.402953, -0.621284,
		-0.706194, -0.601208, 0.373951,
		-0.222836, 0.690056, 0.688598,
		38.865940, 38.506054, 37.639889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244011, 38.051884, 37.300552>,  <39.021927, 38.023014, 37.157867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244011, 38.051884, 37.300552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394310, 38.407444, 37.405376>,  <38.484489, 38.620781, 37.468269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394310, 38.407444, 37.405376>,  <38.244011, 38.051884, 37.300552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394310, 38.407444, 37.405376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697407, 0.457449, -0.551692,
		-0.610275, 0.024539, 0.791810,
		0.375750, 0.888898, 0.262056,
		38.507034, 38.674114, 37.483994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634216, 38.425392, 37.491467>,  <38.244011, 38.051884, 37.300552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634216, 38.425392, 37.491467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917717, 38.698765, 37.421494>,  <38.087818, 38.862785, 37.379509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917717, 38.698765, 37.421494>,  <37.634216, 38.425392, 37.491467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917717, 38.698765, 37.421494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662353, 0.559309, -0.498460,
		-0.242821, 0.469150, 0.849080,
		0.708750, 0.683427, -0.174931,
		38.130341, 38.903793, 37.369015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293076, 39.083321, 37.502327>,  <37.634216, 38.425392, 37.491467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293076, 39.083321, 37.502327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639751, 39.157722, 37.317177>,  <37.847755, 39.202366, 37.206085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.639751, 39.157722, 37.317177>,  <37.293076, 39.083321, 37.502327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639751, 39.157722, 37.317177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443000, 0.713598, -0.542705,
		0.229364, 0.675410, 0.700866,
		0.866685, 0.186007, -0.462880,
		37.899757, 39.213524, 37.178314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347290, 39.758202, 37.613850>,  <37.293076, 39.083321, 37.502327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347290, 39.758202, 37.613850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563381, 39.646473, 37.296326>,  <37.693035, 39.579437, 37.105812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.563381, 39.646473, 37.296326>,  <37.347290, 39.758202, 37.613850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563381, 39.646473, 37.296326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384778, 0.756934, -0.528201,
		0.748399, 0.590790, 0.301441,
		0.540227, -0.279317, -0.793812,
		37.725449, 39.562679, 37.058182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507114, 40.457893, 37.238495>,  <37.347290, 39.758202, 37.613850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507114, 40.457893, 37.238495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.543766, 40.159885, 36.974209>,  <37.565758, 39.981079, 36.815636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.543766, 40.159885, 36.974209>,  <37.507114, 40.457893, 37.238495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543766, 40.159885, 36.974209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325038, 0.604790, -0.727035,
		0.941251, 0.281377, -0.186743,
		0.091630, -0.745021, -0.660717,
		37.571255, 39.936378, 36.775993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659679, 40.774757, 36.541298>,  <37.507114, 40.457893, 37.238495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659679, 40.774757, 36.541298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548203, 40.413475, 36.410725>,  <37.481316, 40.196705, 36.332382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548203, 40.413475, 36.410725>,  <37.659679, 40.774757, 36.541298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548203, 40.413475, 36.410725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435070, 0.421755, -0.795510,
		0.856180, -0.079683, -0.510496,
		-0.278693, -0.903201, -0.326431,
		37.464596, 40.142513, 36.312794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808075, 40.828396, 35.810600>,  <37.659679, 40.774757, 36.541298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808075, 40.828396, 35.810600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.523251, 40.549469, 35.843384>,  <37.352356, 40.382114, 35.863052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.523251, 40.549469, 35.843384>,  <37.808075, 40.828396, 35.810600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523251, 40.549469, 35.843384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496742, 0.417841, -0.760695,
		0.496202, -0.582371, -0.643916,
		-0.712061, -0.697318, 0.081954,
		37.309631, 40.340275, 35.867970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605938, 40.784122, 35.098545>,  <37.808075, 40.828396, 35.810600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605938, 40.784122, 35.098545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308964, 40.598442, 35.291756>,  <37.130779, 40.487034, 35.407681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308964, 40.598442, 35.291756>,  <37.605938, 40.784122, 35.098545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308964, 40.598442, 35.291756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622864, 0.212853, -0.752817,
		0.246648, -0.859772, -0.447165,
		-0.742432, -0.464204, 0.483021,
		37.086235, 40.459183, 35.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227604, 40.289944, 34.593521>,  <37.605938, 40.784122, 35.098545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227604, 40.289944, 34.593521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980637, 40.360901, 34.900070>,  <36.832455, 40.403477, 35.084000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980637, 40.360901, 34.900070>,  <37.227604, 40.289944, 34.593521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980637, 40.360901, 34.900070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767518, 0.077633, -0.636309,
		-0.172374, -0.981073, 0.088222,
		-0.617417, 0.177395, 0.766373,
		36.795410, 40.414120, 35.129982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635620, 39.801937, 34.583260>,  <37.227604, 40.289944, 34.593521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635620, 39.801937, 34.583260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527733, 40.134232, 34.778038>,  <36.463001, 40.333611, 34.894905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527733, 40.134232, 34.778038>,  <36.635620, 39.801937, 34.583260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527733, 40.134232, 34.778038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793876, 0.094364, -0.600713,
		-0.544987, -0.548603, 0.634053,
		-0.269721, 0.830740, 0.486950,
		36.446815, 40.383453, 34.924122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920513, 39.783340, 34.555630>,  <36.635620, 39.801937, 34.583260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920513, 39.783340, 34.555630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.967522, 40.158596, 34.685909>,  <35.995728, 40.383751, 34.764076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.967522, 40.158596, 34.685909>,  <35.920513, 39.783340, 34.555630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967522, 40.158596, 34.685909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837973, 0.269680, -0.474420,
		-0.532908, -0.217176, 0.817829,
		0.117519, 0.938140, 0.325702,
		36.002777, 40.440037, 34.783619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192947, 39.999172, 34.785873>,  <35.920513, 39.783340, 34.555630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192947, 39.999172, 34.785873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418770, 40.321476, 34.714294>,  <35.554264, 40.514858, 34.671349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418770, 40.321476, 34.714294>,  <35.192947, 39.999172, 34.785873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418770, 40.321476, 34.714294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690361, 0.342135, -0.637452,
		-0.452409, 0.483419, 0.749421,
		0.564560, 0.805761, -0.178948,
		35.588139, 40.563206, 34.660610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706394, 40.480202, 34.516968>,  <35.192947, 39.999172, 34.785873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706394, 40.480202, 34.516968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027695, 40.696342, 34.416718>,  <35.220474, 40.826027, 34.356567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.027695, 40.696342, 34.416718>,  <34.706394, 40.480202, 34.516968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027695, 40.696342, 34.416718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446919, 0.268592, -0.853300,
		-0.393764, 0.797422, 0.457239,
		0.803252, 0.540348, -0.250622,
		35.268669, 40.858448, 34.341530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444405, 41.117191, 34.906387>,  <34.706394, 40.480202, 34.516968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444405, 41.117191, 34.906387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.168690, 41.337425, 35.094746>,  <34.003262, 41.469566, 35.207760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.168690, 41.337425, 35.094746>,  <34.444405, 41.117191, 34.906387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168690, 41.337425, 35.094746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428451, -0.214338, 0.877775,
		0.584219, 0.806794, -0.088157,
		-0.689288, 0.550584, 0.470892,
		33.961903, 41.502602, 35.236012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799294, 41.584713, 35.388969>,  <34.444405, 41.117191, 34.906387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799294, 41.584713, 35.388969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421082, 41.521542, 35.502838>,  <34.194157, 41.483639, 35.571159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421082, 41.521542, 35.502838>,  <34.799294, 41.584713, 35.388969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421082, 41.521542, 35.502838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319633, -0.284513, 0.903818,
		-0.061746, 0.945574, 0.319494,
		-0.945527, -0.157928, 0.284669,
		34.137424, 41.474163, 35.588238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827301, 41.587921, 36.115025>,  <34.799294, 41.584713, 35.388969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827301, 41.587921, 36.115025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462704, 41.429611, 36.070221>,  <34.243946, 41.334625, 36.043339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462704, 41.429611, 36.070221>,  <34.827301, 41.587921, 36.115025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462704, 41.429611, 36.070221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093899, -0.465343, 0.880136,
		-0.400453, 0.791721, 0.461319,
		-0.911493, -0.395771, -0.112006,
		34.189255, 41.310879, 36.036617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471428, 41.702099, 36.845005>,  <34.827301, 41.587921, 36.115025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471428, 41.702099, 36.845005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292442, 41.402561, 36.649452>,  <34.185051, 41.222839, 36.532120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292442, 41.402561, 36.649452>,  <34.471428, 41.702099, 36.845005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292442, 41.402561, 36.649452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052655, -0.567780, 0.821495,
		-0.892751, 0.341846, 0.293491,
		-0.447463, -0.748844, -0.488886,
		34.158203, 41.177906, 36.502785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877930, 41.449516, 37.250290>,  <34.471428, 41.702099, 36.845005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877930, 41.449516, 37.250290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.968788, 41.155392, 36.994877>,  <34.023304, 40.978916, 36.841629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.968788, 41.155392, 36.994877>,  <33.877930, 41.449516, 37.250290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968788, 41.155392, 36.994877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003590, -0.655039, 0.755587,
		-0.973855, -0.173917, -0.146147,
		0.227141, -0.735308, -0.638537,
		34.036930, 40.934799, 36.803314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321560, 40.949318, 37.417652>,  <33.877930, 41.449516, 37.250290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321560, 40.949318, 37.417652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.636478, 40.768120, 37.250340>,  <33.825428, 40.659401, 37.149952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.636478, 40.768120, 37.250340>,  <33.321560, 40.949318, 37.417652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636478, 40.768120, 37.250340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066069, -0.736467, 0.673239,
		-0.613022, -0.502405, -0.609748,
		0.787298, -0.452996, -0.418278,
		33.872669, 40.632221, 37.124855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116665, 40.310059, 37.491024>,  <33.321560, 40.949318, 37.417652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116665, 40.310059, 37.491024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513607, 40.294319, 37.444221>,  <33.751770, 40.284878, 37.416142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.513607, 40.294319, 37.444221>,  <33.116665, 40.310059, 37.491024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513607, 40.294319, 37.444221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064906, -0.639917, 0.765698,
		-0.104998, -0.767437, -0.632469,
		0.992352, -0.039346, -0.117001,
		33.811314, 40.282516, 37.409122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324272, 39.600613, 37.484867>,  <33.116665, 40.310059, 37.491024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324272, 39.600613, 37.484867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.674160, 39.779869, 37.558670>,  <33.884090, 39.887424, 37.602951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.674160, 39.779869, 37.558670>,  <33.324272, 39.600613, 37.484867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674160, 39.779869, 37.558670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165496, -0.634039, 0.755385,
		0.455504, -0.630211, -0.628769,
		0.874715, 0.448140, 0.184510,
		33.936573, 39.914310, 37.614021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841328, 39.061188, 37.596508>,  <33.324272, 39.600613, 37.484867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841328, 39.061188, 37.596508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989086, 39.382908, 37.782692>,  <34.077740, 39.575939, 37.894402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989086, 39.382908, 37.782692>,  <33.841328, 39.061188, 37.596508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989086, 39.382908, 37.782692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236489, -0.565758, 0.789931,
		0.898677, -0.181720, -0.399196,
		0.369395, 0.804298, 0.465459,
		34.099903, 39.624199, 37.922329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515373, 38.893734, 37.994469>,  <33.841328, 39.061188, 37.596508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515373, 38.893734, 37.994469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344543, 39.214016, 38.162510>,  <34.242046, 39.406185, 38.263332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.344543, 39.214016, 38.162510>,  <34.515373, 38.893734, 37.994469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344543, 39.214016, 38.162510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068693, -0.434526, 0.898036,
		0.901605, 0.412383, 0.130571,
		-0.427071, 0.800704, 0.420098,
		34.216423, 39.454227, 38.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847839, 39.004517, 38.681393>,  <34.515373, 38.893734, 37.994469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847839, 39.004517, 38.681393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.509159, 39.211021, 38.732891>,  <34.305950, 39.334923, 38.763790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.509159, 39.211021, 38.732891>,  <34.847839, 39.004517, 38.681393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509159, 39.211021, 38.732891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032995, -0.292453, 0.955711,
		0.531049, 0.804951, 0.264653,
		-0.846698, 0.516262, 0.128748,
		34.255150, 39.365898, 38.771515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994793, 39.361225, 39.253967>,  <34.847839, 39.004517, 38.681393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994793, 39.361225, 39.253967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596504, 39.383400, 39.224388>,  <34.357533, 39.396706, 39.206642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596504, 39.383400, 39.224388>,  <34.994793, 39.361225, 39.253967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596504, 39.383400, 39.224388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090974, -0.446969, 0.889912,
		0.016283, 0.892830, 0.450099,
		-0.995720, 0.055438, -0.073947,
		34.297787, 39.400032, 39.202206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.893890, 43.535900, 32.336151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565990, 43.320892, 32.415226>,  <32.369251, 43.191887, 32.462669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565990, 43.320892, 32.415226>,  <32.893890, 43.535900, 32.336151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565990, 43.320892, 32.415226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259415, -0.040764, 0.964905,
		-0.510595, 0.842267, 0.172857,
		-0.819754, -0.537517, 0.197683,
		32.320065, 43.159637, 32.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811081, 43.786156, 32.931328>,  <32.893890, 43.535900, 32.336151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811081, 43.786156, 32.931328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566231, 43.469868, 32.928268>,  <32.419319, 43.280094, 32.926434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566231, 43.469868, 32.928268>,  <32.811081, 43.786156, 32.931328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566231, 43.469868, 32.928268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267108, -0.215865, 0.939178,
		-0.744282, 0.572851, 0.343345,
		-0.612125, -0.790724, -0.007651,
		32.382595, 43.232651, 32.925972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494747, 43.844009, 33.487049>,  <32.811081, 43.786156, 32.931328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494747, 43.844009, 33.487049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510670, 43.458878, 33.380188>,  <32.520226, 43.227798, 33.316071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510670, 43.458878, 33.380188>,  <32.494747, 43.844009, 33.487049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510670, 43.458878, 33.380188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279138, -0.246002, 0.928205,
		-0.959426, -0.111524, 0.258969,
		0.039810, -0.962832, -0.267151,
		32.522614, 43.170029, 33.300041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582050, 43.562500, 34.106873>,  <32.494747, 43.844009, 33.487049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582050, 43.562500, 34.106873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657833, 43.236240, 33.888214>,  <32.703300, 43.040485, 33.757019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657833, 43.236240, 33.888214>,  <32.582050, 43.562500, 34.106873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657833, 43.236240, 33.888214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350910, -0.463717, 0.813529,
		-0.917044, -0.345948, 0.198368,
		0.189452, -0.815651, -0.546646,
		32.714668, 42.991547, 33.724220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405830, 43.017570, 34.498875>,  <32.582050, 43.562500, 34.106873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405830, 43.017570, 34.498875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632332, 42.838875, 34.221809>,  <32.768234, 42.731659, 34.055573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632332, 42.838875, 34.221809>,  <32.405830, 43.017570, 34.498875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632332, 42.838875, 34.221809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404476, -0.581612, 0.705781,
		-0.718160, -0.679816, -0.148645,
		0.566255, -0.446741, -0.692660,
		32.802208, 42.704853, 34.014011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314297, 42.372437, 34.564800>,  <32.405830, 43.017570, 34.498875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314297, 42.372437, 34.564800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672863, 42.429478, 34.396942>,  <32.888004, 42.463703, 34.296227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672863, 42.429478, 34.396942>,  <32.314297, 42.372437, 34.564800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672863, 42.429478, 34.396942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436644, -0.446517, 0.781003,
		-0.076008, -0.883340, -0.462530,
		0.896418, 0.142599, -0.419644,
		32.941788, 42.472256, 34.271049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607895, 41.694515, 34.477627>,  <32.314297, 42.372437, 34.564800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607895, 41.694515, 34.477627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890190, 41.976383, 34.506950>,  <33.059566, 42.145504, 34.524544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890190, 41.976383, 34.506950>,  <32.607895, 41.694515, 34.477627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890190, 41.976383, 34.506950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463824, -0.537769, 0.704040,
		0.535540, -0.462865, -0.706366,
		0.705738, 0.704671, 0.073309,
		33.101910, 42.187786, 34.528942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150059, 41.330750, 34.404133>,  <32.607895, 41.694515, 34.477627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150059, 41.330750, 34.404133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301067, 41.672325, 34.547390>,  <33.391670, 41.877270, 34.633343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301067, 41.672325, 34.547390>,  <33.150059, 41.330750, 34.404133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301067, 41.672325, 34.547390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517153, -0.515253, 0.683424,
		0.768135, -0.072794, -0.636136,
		0.377520, 0.853941, 0.358138,
		33.414322, 41.928509, 34.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854862, 41.202991, 34.456795>,  <33.150059, 41.330750, 34.404133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854862, 41.202991, 34.456795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755974, 41.485550, 34.722088>,  <33.696640, 41.655087, 34.881264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755974, 41.485550, 34.722088>,  <33.854862, 41.202991, 34.456795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755974, 41.485550, 34.722088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242627, -0.617546, 0.748177,
		0.938091, 0.345883, -0.018723,
		-0.247219, 0.706401, 0.663235,
		33.681808, 41.697472, 34.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508335, 41.251236, 34.144173>,  <33.854862, 41.202991, 34.456795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508335, 41.251236, 34.144173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863678, 41.141537, 33.996876>,  <35.076885, 41.075718, 33.908497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863678, 41.141537, 33.996876>,  <34.508335, 41.251236, 34.144173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863678, 41.141537, 33.996876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303479, 0.251128, -0.919149,
		0.344555, 0.928289, 0.139862,
		0.888359, -0.274253, -0.368244,
		35.130184, 41.059261, 33.886402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727425, 41.781898, 33.624588>,  <34.508335, 41.251236, 34.144173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727425, 41.781898, 33.624588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902084, 41.429955, 33.549561>,  <35.006882, 41.218788, 33.504543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902084, 41.429955, 33.549561>,  <34.727425, 41.781898, 33.624588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902084, 41.429955, 33.549561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170892, 0.123580, -0.977509,
		0.883252, 0.458883, -0.096400,
		0.436649, -0.879860, -0.187572,
		35.033077, 41.165997, 33.493290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057213, 41.982246, 33.055340>,  <34.727425, 41.781898, 33.624588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057213, 41.982246, 33.055340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054989, 41.582916, 33.032276>,  <35.053654, 41.343319, 33.018440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054989, 41.582916, 33.032276>,  <35.057213, 41.982246, 33.055340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054989, 41.582916, 33.032276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046913, 0.057854, -0.997222,
		0.998884, -0.002844, -0.047156,
		-0.005564, -0.998321, -0.057656,
		35.053318, 41.283421, 33.014980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497589, 41.798962, 32.505505>,  <35.057213, 41.982246, 33.055340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497589, 41.798962, 32.505505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269875, 41.474068, 32.556389>,  <35.133244, 41.279129, 32.586918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269875, 41.474068, 32.556389>,  <35.497589, 41.798962, 32.505505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269875, 41.474068, 32.556389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116142, -0.073722, -0.990493,
		0.813893, -0.578650, -0.052365,
		-0.569288, -0.812237, 0.127208,
		35.099087, 41.230396, 32.594551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745518, 41.448956, 32.020061>,  <35.497589, 41.798962, 32.505505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745518, 41.448956, 32.020061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400536, 41.270622, 32.115894>,  <35.193546, 41.163620, 32.173393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400536, 41.270622, 32.115894>,  <35.745518, 41.448956, 32.020061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400536, 41.270622, 32.115894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158712, -0.211252, -0.964460,
		0.480603, -0.869829, 0.111436,
		-0.862456, -0.445836, 0.239581,
		35.141800, 41.136871, 32.187767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826454, 40.774151, 31.666588>,  <35.745518, 41.448956, 32.020061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826454, 40.774151, 31.666588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443989, 40.874081, 31.727697>,  <35.214508, 40.934036, 31.764364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443989, 40.874081, 31.727697>,  <35.826454, 40.774151, 31.666588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443989, 40.874081, 31.727697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165472, -0.030508, -0.985743,
		-0.241600, -0.967811, 0.070509,
		-0.956164, 0.249822, 0.152775,
		35.157139, 40.949028, 31.773529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476795, 40.379562, 31.283354>,  <35.826454, 40.774151, 31.666588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476795, 40.379562, 31.283354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204967, 40.668705, 31.333416>,  <35.041870, 40.842190, 31.363453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204967, 40.668705, 31.333416>,  <35.476795, 40.379562, 31.283354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204967, 40.668705, 31.333416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289898, -0.107891, -0.950957,
		-0.673904, -0.682522, 0.282874,
		-0.679568, 0.722858, 0.125154,
		35.001099, 40.885563, 31.370962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823818, 40.170036, 31.070290>,  <35.476795, 40.379562, 31.283354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823818, 40.170036, 31.070290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752483, 40.562904, 31.046507>,  <34.709682, 40.798626, 31.032238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752483, 40.562904, 31.046507>,  <34.823818, 40.170036, 31.070290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752483, 40.562904, 31.046507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440665, -0.133746, -0.887652,
		-0.879779, -0.132099, 0.456660,
		-0.178334, 0.982172, -0.059456,
		34.698982, 40.857555, 31.028669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134533, 40.178604, 30.870323>,  <34.823818, 40.170036, 31.070290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134533, 40.178604, 30.870323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266018, 40.542667, 30.769484>,  <34.344910, 40.761105, 30.708981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266018, 40.542667, 30.769484>,  <34.134533, 40.178604, 30.870323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266018, 40.542667, 30.769484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611702, 0.001803, -0.791086,
		-0.719562, 0.414248, 0.557341,
		0.328710, 0.910163, -0.252099,
		34.364632, 40.815716, 30.693853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509422, 40.519325, 30.675781>,  <34.134533, 40.178604, 30.870323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509422, 40.519325, 30.675781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791916, 40.772633, 30.549162>,  <33.961411, 40.924618, 30.473190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791916, 40.772633, 30.549162>,  <33.509422, 40.519325, 30.675781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791916, 40.772633, 30.549162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542449, 0.196695, -0.816738,
		-0.454953, 0.748518, 0.482430,
		0.706234, 0.633271, -0.316546,
		34.003788, 40.962612, 30.454199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202171, 41.082443, 30.359056>,  <33.509422, 40.519325, 30.675781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202171, 41.082443, 30.359056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565899, 41.108078, 30.194603>,  <33.784134, 41.123459, 30.095932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565899, 41.108078, 30.194603>,  <33.202171, 41.082443, 30.359056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565899, 41.108078, 30.194603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412898, 0.261278, -0.872496,
		0.051502, 0.963134, 0.264048,
		0.909320, 0.064089, -0.411132,
		33.838696, 41.127304, 30.071262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185246, 41.721794, 29.862265>,  <33.202171, 41.082443, 30.359056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185246, 41.721794, 29.862265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492542, 41.501831, 29.731169>,  <33.676918, 41.369854, 29.652512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492542, 41.501831, 29.731169>,  <33.185246, 41.721794, 29.862265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492542, 41.501831, 29.731169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262934, 0.195733, -0.944751,
		0.583673, 0.811968, 0.005781,
		0.768239, -0.549906, -0.327738,
		33.723015, 41.336861, 29.632847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496811, 42.129234, 29.262356>,  <33.185246, 41.721794, 29.862265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496811, 42.129234, 29.262356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628681, 41.752831, 29.231848>,  <33.707806, 41.526989, 29.213543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628681, 41.752831, 29.231848>,  <33.496811, 42.129234, 29.262356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628681, 41.752831, 29.231848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197850, 0.010130, -0.980180,
		0.923129, 0.338234, -0.182838,
		0.329678, -0.941007, -0.076271,
		33.727585, 41.470528, 29.208967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142262, 42.155254, 28.787315>,  <33.496811, 42.129234, 29.262356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142262, 42.155254, 28.787315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975155, 41.792713, 28.812595>,  <33.874893, 41.575188, 28.827765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975155, 41.792713, 28.812595>,  <34.142262, 42.155254, 28.787315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975155, 41.792713, 28.812595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297776, 0.070868, -0.952002,
		0.858373, -0.416530, -0.299496,
		-0.417762, -0.906356, 0.063202,
		33.849827, 41.520805, 28.831556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.429001, 38.040253, 30.648432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 38.313564, 30.598021>,  <29.889286, 38.477551, 30.567774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 38.313564, 30.598021>,  <29.429001, 38.040253, 30.648432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716679, 38.313564, 30.598021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425840, -0.290151, 0.857014,
		0.549017, -0.670027, -0.499645,
		0.719195, 0.683284, -0.126026,
		29.932438, 38.518551, 30.560213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057247, 37.662655, 30.752991>,  <29.429001, 38.040253, 30.648432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057247, 37.662655, 30.752991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.126850, 38.056080, 30.772270>,  <30.168612, 38.292133, 30.783838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.126850, 38.056080, 30.772270>,  <30.057247, 37.662655, 30.752991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126850, 38.056080, 30.772270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725610, -0.161153, 0.668969,
		0.665741, -0.081434, -0.741726,
		0.174008, 0.983564, 0.048197,
		30.179052, 38.351151, 30.786730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771933, 37.827461, 30.731508>,  <30.057247, 37.662655, 30.752991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771933, 37.827461, 30.731508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.647205, 38.163754, 30.908573>,  <30.572369, 38.365528, 31.014812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.647205, 38.163754, 30.908573>,  <30.771933, 37.827461, 30.731508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647205, 38.163754, 30.908573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673689, -0.132901, 0.726967,
		0.670010, 0.524897, -0.524948,
		-0.311816, 0.840726, 0.442662,
		30.553661, 38.415970, 31.041372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402723, 38.051384, 31.001509>,  <30.771933, 37.827461, 30.731508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402723, 38.051384, 31.001509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.113752, 38.247017, 31.197018>,  <30.940371, 38.364399, 31.314323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.113752, 38.247017, 31.197018>,  <31.402723, 38.051384, 31.001509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113752, 38.247017, 31.197018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605129, 0.105196, 0.789147,
		0.334543, 0.865870, -0.371955,
		-0.722427, 0.489084, 0.488770,
		30.897024, 38.393742, 31.343649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700804, 38.690918, 31.268339>,  <31.402723, 38.051384, 31.001509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700804, 38.690918, 31.268339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371939, 38.610558, 31.481390>,  <31.174620, 38.562344, 31.609221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.371939, 38.610558, 31.481390>,  <31.700804, 38.690918, 31.268339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371939, 38.610558, 31.481390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557974, -0.099064, 0.823924,
		-0.112761, 0.974590, 0.193543,
		-0.822162, -0.200898, 0.532626,
		31.125290, 38.550289, 31.641178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772200, 38.935696, 31.950617>,  <31.700804, 38.690918, 31.268339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772200, 38.935696, 31.950617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478161, 38.672005, 32.013939>,  <31.301739, 38.513790, 32.051933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478161, 38.672005, 32.013939>,  <31.772200, 38.935696, 31.950617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478161, 38.672005, 32.013939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353020, -0.172836, 0.919513,
		-0.578803, 0.731815, 0.359770,
		-0.735095, -0.659223, 0.158307,
		31.257633, 38.474239, 32.061432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617849, 39.106941, 32.616348>,  <31.772200, 38.935696, 31.950617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617849, 39.106941, 32.616348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.460829, 38.742756, 32.564255>,  <31.366615, 38.524246, 32.533001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.460829, 38.742756, 32.564255>,  <31.617849, 39.106941, 32.616348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460829, 38.742756, 32.564255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322653, -0.268923, 0.907511,
		-0.861277, 0.314226, 0.399330,
		-0.392553, -0.910463, -0.130231,
		31.343063, 38.469616, 32.525185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255640, 38.946209, 33.278244>,  <31.617849, 39.106941, 32.616348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255640, 38.946209, 33.278244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284241, 38.603321, 33.074261>,  <31.301401, 38.397587, 32.951870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284241, 38.603321, 33.074261>,  <31.255640, 38.946209, 33.278244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284241, 38.603321, 33.074261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419109, -0.438123, 0.795233,
		-0.905116, -0.270588, 0.327944,
		0.071500, -0.857222, -0.509958,
		31.305691, 38.346153, 32.921272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902502, 38.415119, 33.664043>,  <31.255640, 38.946209, 33.278244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902502, 38.415119, 33.664043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162943, 38.225407, 33.427021>,  <31.319208, 38.111580, 33.284809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162943, 38.225407, 33.427021>,  <30.902502, 38.415119, 33.664043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162943, 38.225407, 33.427021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391139, -0.459388, 0.797479,
		-0.650442, -0.751013, -0.113599,
		0.651103, -0.474281, -0.592556,
		31.358274, 38.083122, 33.249256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005835, 37.800644, 34.061481>,  <30.902502, 38.415119, 33.664043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005835, 37.800644, 34.061481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.305151, 37.771458, 33.797745>,  <31.484741, 37.753944, 33.639503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.305151, 37.771458, 33.797745>,  <31.005835, 37.800644, 34.061481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305151, 37.771458, 33.797745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515347, -0.561904, 0.647056,
		-0.417701, -0.823978, -0.382866,
		0.748294, -0.072968, -0.659342,
		31.529638, 37.749569, 33.599941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190908, 37.180954, 34.074116>,  <31.005835, 37.800644, 34.061481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190908, 37.180954, 34.074116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517756, 37.342163, 33.909241>,  <31.713863, 37.438889, 33.810318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517756, 37.342163, 33.909241>,  <31.190908, 37.180954, 34.074116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517756, 37.342163, 33.909241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572894, -0.647250, 0.502851,
		-0.064128, -0.647026, -0.759766,
		0.817117, 0.403018, -0.412185,
		31.762890, 37.463070, 33.785583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512388, 36.595779, 33.774242>,  <31.190908, 37.180954, 34.074116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512388, 36.595779, 33.774242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.765015, 36.893944, 33.859554>,  <31.916590, 37.072842, 33.910740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.765015, 36.893944, 33.859554>,  <31.512388, 36.595779, 33.774242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765015, 36.893944, 33.859554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512127, -0.607610, 0.607071,
		0.582109, -0.274178, -0.765491,
		0.631565, 0.745410, 0.213281,
		31.954485, 37.117565, 33.923538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196850, 36.184830, 33.897923>,  <31.512388, 36.595779, 33.774242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196850, 36.184830, 33.897923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244862, 36.547848, 34.058891>,  <32.273670, 36.765659, 34.155472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.244862, 36.547848, 34.058891>,  <32.196850, 36.184830, 33.897923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244862, 36.547848, 34.058891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498876, -0.405599, 0.765906,
		0.858322, 0.108829, -0.501438,
		0.120030, 0.907549, 0.402427,
		32.280872, 36.820114, 34.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889671, 36.313477, 33.962467>,  <32.196850, 36.184830, 33.897923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889671, 36.313477, 33.962467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716961, 36.548180, 34.236488>,  <32.613335, 36.688999, 34.400902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716961, 36.548180, 34.236488>,  <32.889671, 36.313477, 33.962467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716961, 36.548180, 34.236488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550689, -0.430028, 0.715414,
		0.714364, 0.686144, -0.137445,
		-0.431772, 0.586755, 0.685048,
		32.587429, 36.724205, 34.442001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571079, 36.378838, 33.645535>,  <32.889671, 36.313477, 33.962467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571079, 36.378838, 33.645535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839382, 36.155281, 33.450508>,  <34.000366, 36.021145, 33.333492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839382, 36.155281, 33.450508>,  <33.571079, 36.378838, 33.645535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839382, 36.155281, 33.450508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558549, 0.051845, -0.827850,
		0.487959, 0.827616, -0.277395,
		0.670760, -0.558895, -0.487562,
		34.040611, 35.987614, 33.304241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732525, 36.748032, 33.061302>,  <33.571079, 36.378838, 33.645535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732525, 36.748032, 33.061302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871269, 36.385643, 32.964214>,  <33.954517, 36.168209, 32.905964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.871269, 36.385643, 32.964214>,  <33.732525, 36.748032, 33.061302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871269, 36.385643, 32.964214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460375, 0.061007, -0.885626,
		0.817155, 0.418929, -0.395924,
		0.346861, -0.905967, -0.242717,
		33.975327, 36.113853, 32.891399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006119, 36.722370, 32.308392>,  <33.732525, 36.748032, 33.061302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006119, 36.722370, 32.308392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914330, 36.347610, 32.413883>,  <33.859257, 36.122753, 32.477177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914330, 36.347610, 32.413883>,  <34.006119, 36.722370, 32.308392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914330, 36.347610, 32.413883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522242, -0.110130, -0.845656,
		0.821343, -0.331787, -0.464019,
		-0.229476, -0.936904, 0.263727,
		33.845486, 36.066540, 32.493000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163013, 36.369968, 31.742636>,  <34.006119, 36.722370, 32.308392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163013, 36.369968, 31.742636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884663, 36.146748, 31.923447>,  <33.717651, 36.012814, 32.031933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.884663, 36.146748, 31.923447>,  <34.163013, 36.369968, 31.742636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884663, 36.146748, 31.923447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500678, -0.074249, -0.862444,
		0.514852, -0.826476, -0.227736,
		-0.695880, -0.558053, 0.452026,
		33.675900, 35.979332, 32.059055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022896, 35.938244, 31.236702>,  <34.163013, 36.369968, 31.742636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022896, 35.938244, 31.236702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719872, 35.923008, 31.497364>,  <33.538059, 35.913868, 31.653761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719872, 35.923008, 31.497364>,  <34.022896, 35.938244, 31.236702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719872, 35.923008, 31.497364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649949, -0.048687, -0.758417,
		0.060617, -0.998087, 0.012125,
		-0.757556, -0.038092, 0.651657,
		33.492603, 35.911583, 31.692862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672623, 35.340023, 30.972605>,  <34.022896, 35.938244, 31.236702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672623, 35.340023, 30.972605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424477, 35.576752, 31.178476>,  <33.275589, 35.718788, 31.302000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424477, 35.576752, 31.178476>,  <33.672623, 35.340023, 30.972605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424477, 35.576752, 31.178476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681914, -0.082793, -0.726731,
		-0.387486, -0.801803, 0.454935,
		-0.620360, 0.591825, 0.514680,
		33.238369, 35.754299, 31.332880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013184, 35.186630, 30.693266>,  <33.672623, 35.340023, 30.972605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013184, 35.186630, 30.693266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936672, 35.520374, 30.900053>,  <32.890766, 35.720619, 31.024126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936672, 35.520374, 30.900053>,  <33.013184, 35.186630, 30.693266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936672, 35.520374, 30.900053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745227, 0.219319, -0.629710,
		-0.638786, -0.505710, 0.579836,
		-0.191282, 0.834360, 0.516967,
		32.879288, 35.770683, 31.055143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318329, 35.187576, 30.854904>,  <33.013184, 35.186630, 30.693266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318329, 35.187576, 30.854904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446152, 35.566605, 30.855421>,  <32.522846, 35.794022, 30.855732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446152, 35.566605, 30.855421>,  <32.318329, 35.187576, 30.854904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446152, 35.566605, 30.855421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452876, 0.153924, -0.878186,
		-0.832339, 0.280044, 0.478317,
		0.319555, 0.947567, 0.001292,
		32.542019, 35.850876, 30.855808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808241, 35.581898, 30.663942>,  <32.318329, 35.187576, 30.854904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808241, 35.581898, 30.663942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111782, 35.835255, 30.603336>,  <32.293907, 35.987270, 30.566973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111782, 35.835255, 30.603336>,  <31.808241, 35.581898, 30.663942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111782, 35.835255, 30.603336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420355, 0.298661, -0.856798,
		-0.497439, 0.713873, 0.492890,
		0.758852, 0.633393, -0.151514,
		32.339439, 36.025272, 30.557882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546909, 36.221493, 30.530237>,  <31.808241, 35.581898, 30.663942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546909, 36.221493, 30.530237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904652, 36.229286, 30.351465>,  <32.119297, 36.233963, 30.244202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.904652, 36.229286, 30.351465>,  <31.546909, 36.221493, 30.530237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904652, 36.229286, 30.351465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415332, 0.407360, -0.813362,
		0.166213, 0.913060, 0.372418,
		0.894356, 0.019485, -0.446931,
		32.172958, 36.235130, 30.217386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553049, 36.912189, 30.433901>,  <31.546909, 36.221493, 30.530237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553049, 36.912189, 30.433901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.788572, 36.711605, 30.180336>,  <31.929886, 36.591255, 30.028198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.788572, 36.711605, 30.180336>,  <31.553049, 36.912189, 30.433901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788572, 36.711605, 30.180336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381249, 0.519245, -0.764875,
		0.712708, 0.692044, 0.114556,
		0.588810, -0.501458, -0.633911,
		31.965216, 36.561169, 29.990162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968451, 37.387871, 30.093546>,  <31.553049, 36.912189, 30.433901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968451, 37.387871, 30.093546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.966043, 37.070457, 29.850147>,  <31.964600, 36.880009, 29.704109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.966043, 37.070457, 29.850147>,  <31.968451, 37.387871, 30.093546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966043, 37.070457, 29.850147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401483, 0.559225, -0.725313,
		0.915847, 0.239937, -0.321954,
		-0.006015, -0.793535, -0.608495,
		31.964239, 36.832397, 29.667599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308594, 37.643600, 29.543575>,  <31.968451, 37.387871, 30.093546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308594, 37.643600, 29.543575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155411, 37.303307, 29.399584>,  <32.063499, 37.099129, 29.313189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155411, 37.303307, 29.399584>,  <32.308594, 37.643600, 29.543575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155411, 37.303307, 29.399584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098488, 0.425067, -0.899788,
		0.918500, -0.309129, -0.246571,
		-0.382960, -0.850739, -0.359978,
		32.040524, 37.048084, 29.291590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695744, 37.523136, 28.865273>,  <32.308594, 37.643600, 29.543575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695744, 37.523136, 28.865273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337048, 37.346649, 28.879107>,  <32.121830, 37.240757, 28.887407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.337048, 37.346649, 28.879107>,  <32.695744, 37.523136, 28.865273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337048, 37.346649, 28.879107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254105, 0.449312, -0.856475,
		0.362347, -0.776821, -0.515028,
		-0.896736, -0.441212, 0.034587,
		32.068027, 37.214287, 28.889482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326649, 37.459030, 28.404408>,  <32.695744, 37.523136, 28.865273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326649, 37.459030, 28.404408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.642902, 37.634903, 28.233959>,  <33.832653, 37.740425, 28.131691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.642902, 37.634903, 28.233959>,  <33.326649, 37.459030, 28.404408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642902, 37.634903, 28.233959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569749, -0.273426, 0.774999,
		0.224239, -0.855523, -0.466687,
		0.790635, 0.439679, -0.426121,
		33.880093, 37.766808, 28.106123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864738, 36.949364, 28.345909>,  <33.326649, 37.459030, 28.404408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864738, 36.949364, 28.345909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062969, 37.296780, 28.343315>,  <34.181908, 37.505230, 28.341759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.062969, 37.296780, 28.343315>,  <33.864738, 36.949364, 28.345909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062969, 37.296780, 28.343315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590117, -0.331217, 0.736246,
		0.637310, -0.368696, -0.676683,
		0.495580, 0.868538, -0.006486,
		34.211643, 37.557343, 28.341370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534668, 36.745872, 28.428841>,  <33.864738, 36.949364, 28.345909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534668, 36.745872, 28.428841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574520, 37.137295, 28.500965>,  <34.598431, 37.372147, 28.544239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.574520, 37.137295, 28.500965>,  <34.534668, 36.745872, 28.428841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574520, 37.137295, 28.500965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587194, -0.204114, 0.783288,
		0.803292, 0.027841, -0.594935,
		0.099627, 0.978551, 0.180311,
		34.604408, 37.430859, 28.555058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298046, 36.873978, 28.263649>,  <34.534668, 36.745872, 28.428841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298046, 36.873978, 28.263649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123966, 37.146935, 28.498577>,  <35.019516, 37.310707, 28.639534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123966, 37.146935, 28.498577>,  <35.298046, 36.873978, 28.263649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123966, 37.146935, 28.498577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663926, -0.197367, 0.721283,
		0.608113, 0.703840, -0.367161,
		-0.435202, 0.682389, 0.587319,
		34.993404, 37.351650, 28.674772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832336, 37.159767, 28.793585>,  <35.298046, 36.873978, 28.263649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832336, 37.159767, 28.793585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504013, 37.289818, 28.981443>,  <35.307018, 37.367847, 29.094158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504013, 37.289818, 28.981443>,  <35.832336, 37.159767, 28.793585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504013, 37.289818, 28.981443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443961, -0.154218, 0.882675,
		0.359408, 0.933012, -0.017760,
		-0.820807, 0.325125, 0.469648,
		35.257771, 37.387356, 29.122337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106934, 37.723995, 29.267290>,  <35.832336, 37.159767, 28.793585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106934, 37.723995, 29.267290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766983, 37.566963, 29.407917>,  <35.563015, 37.472744, 29.492292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.766983, 37.566963, 29.407917>,  <36.106934, 37.723995, 29.267290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766983, 37.566963, 29.407917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431200, -0.134515, 0.892173,
		-0.302957, 0.909829, 0.283600,
		-0.849873, -0.392578, 0.351565,
		35.512020, 37.449188, 29.513386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988594, 37.980007, 29.911156>,  <36.106934, 37.723995, 29.267290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988594, 37.980007, 29.911156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771275, 37.644249, 29.904781>,  <35.640884, 37.442795, 29.900957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771275, 37.644249, 29.904781>,  <35.988594, 37.980007, 29.911156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771275, 37.644249, 29.904781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351525, -0.244678, 0.903639,
		-0.762405, 0.485341, 0.427999,
		-0.543295, -0.839391, -0.015934,
		35.608288, 37.392433, 29.900002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738102, 37.962788, 30.521338>,  <35.988594, 37.980007, 29.911156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738102, 37.962788, 30.521338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711906, 37.573860, 30.431614>,  <35.696190, 37.340504, 30.377779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.711906, 37.573860, 30.431614>,  <35.738102, 37.962788, 30.521338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711906, 37.573860, 30.431614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312430, -0.233471, 0.920804,
		-0.947681, -0.009778, 0.319070,
		-0.065490, -0.972315, -0.224311,
		35.692261, 37.282166, 30.364321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366959, 37.697754, 31.084614>,  <35.738102, 37.962788, 30.521338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366959, 37.697754, 31.084614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.551071, 37.386536, 30.913597>,  <35.661537, 37.199806, 30.810987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.551071, 37.386536, 30.913597>,  <35.366959, 37.697754, 31.084614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551071, 37.386536, 30.913597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328258, -0.298306, 0.896248,
		-0.824858, -0.552869, 0.118094,
		0.460279, -0.778042, -0.427543,
		35.689156, 37.153122, 30.785334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146999, 37.133236, 31.495371>,  <35.366959, 37.697754, 31.084614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146999, 37.133236, 31.495371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473045, 36.979492, 31.321999>,  <35.668671, 36.887245, 31.217976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473045, 36.979492, 31.321999>,  <35.146999, 37.133236, 31.495371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473045, 36.979492, 31.321999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246773, -0.446540, 0.860061,
		-0.524115, -0.808005, -0.269131,
		0.815112, -0.384356, -0.433433,
		35.717579, 36.864185, 31.191969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269558, 36.437656, 31.803022>,  <35.146999, 37.133236, 31.495371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269558, 36.437656, 31.803022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613026, 36.528545, 31.619259>,  <35.819107, 36.583080, 31.509001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613026, 36.528545, 31.619259>,  <35.269558, 36.437656, 31.803022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613026, 36.528545, 31.619259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509833, -0.286892, 0.811026,
		0.052482, -0.930625, -0.362191,
		0.858671, 0.227221, -0.459407,
		35.870628, 36.596710, 31.481438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749706, 35.750988, 31.823503>,  <35.269558, 36.437656, 31.803022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749706, 35.750988, 31.823503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957043, 36.091949, 31.795992>,  <36.081444, 36.296528, 31.779486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957043, 36.091949, 31.795992>,  <35.749706, 35.750988, 31.823503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957043, 36.091949, 31.795992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537848, -0.262417, 0.801160,
		0.664863, -0.452266, -0.594485,
		0.518340, 0.852404, -0.068780,
		36.112545, 36.347672, 31.775358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397556, 35.495617, 31.977215>,  <35.749706, 35.750988, 31.823503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397556, 35.495617, 31.977215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468128, 35.889336, 31.979689>,  <36.510471, 36.125565, 31.981173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468128, 35.889336, 31.979689>,  <36.397556, 35.495617, 31.977215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468128, 35.889336, 31.979689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636175, -0.118823, 0.762340,
		0.751101, -0.130567, -0.647147,
		0.176432, 0.984293, 0.006185,
		36.521057, 36.184624, 31.981544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232109, 35.670673, 31.974939>,  <36.397556, 35.495617, 31.977215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232109, 35.670673, 31.974939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016304, 35.968292, 32.132584>,  <36.886822, 36.146862, 32.227169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016304, 35.968292, 32.132584>,  <37.232109, 35.670673, 31.974939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016304, 35.968292, 32.132584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577214, -0.013932, 0.816474,
		0.612986, 0.667983, -0.421957,
		-0.539512, 0.744046, 0.394109,
		36.854450, 36.191505, 32.250816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.694195, 41.619270, 28.288864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320271, 41.479542, 28.314520>,  <34.095917, 41.395706, 28.329914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320271, 41.479542, 28.314520>,  <34.694195, 41.619270, 28.288864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320271, 41.479542, 28.314520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111669, 0.117656, -0.986756,
		0.337146, -0.929588, -0.148994,
		-0.934806, -0.349319, 0.064139,
		34.039829, 41.374748, 28.333761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587791, 41.046570, 27.753393>,  <34.694195, 41.619270, 28.288864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587791, 41.046570, 27.753393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217140, 41.153339, 27.859303>,  <33.994747, 41.217403, 27.922848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217140, 41.153339, 27.859303>,  <34.587791, 41.046570, 27.753393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217140, 41.153339, 27.859303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286565, -0.045548, -0.956977,
		-0.243385, -0.962639, 0.118699,
		-0.926630, 0.266929, 0.264773,
		33.939152, 41.233418, 27.938734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206467, 40.587902, 27.328629>,  <34.587791, 41.046570, 27.753393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206467, 40.587902, 27.328629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948219, 40.872082, 27.440659>,  <33.793270, 41.042591, 27.507877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948219, 40.872082, 27.440659>,  <34.206467, 40.587902, 27.328629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948219, 40.872082, 27.440659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401692, -0.004019, -0.915766,
		-0.649479, -0.703738, 0.287976,
		-0.645616, 0.710449, 0.280076,
		33.754536, 41.085217, 27.524681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608524, 40.395744, 27.075623>,  <34.206467, 40.587902, 27.328629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608524, 40.395744, 27.075623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554089, 40.783745, 27.156206>,  <33.521427, 41.016544, 27.204556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.554089, 40.783745, 27.156206>,  <33.608524, 40.395744, 27.075623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554089, 40.783745, 27.156206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596769, 0.082052, -0.798207,
		-0.790788, -0.228852, 0.567698,
		-0.136091, 0.969997, 0.201458,
		33.513260, 41.074745, 27.216644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885742, 40.549011, 27.037783>,  <33.608524, 40.395744, 27.075623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885742, 40.549011, 27.037783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060707, 40.905388, 26.988972>,  <33.165688, 41.119213, 26.959684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.060707, 40.905388, 26.988972>,  <32.885742, 40.549011, 27.037783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060707, 40.905388, 26.988972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521465, 0.140747, -0.841585,
		-0.732629, 0.431753, 0.526160,
		0.437412, 0.890943, -0.122028,
		33.191929, 41.172672, 26.952364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287113, 41.171875, 26.951191>,  <32.885742, 40.549011, 27.037783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287113, 41.171875, 26.951191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636379, 41.315865, 26.819733>,  <32.845940, 41.402260, 26.740858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636379, 41.315865, 26.819733>,  <32.287113, 41.171875, 26.951191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636379, 41.315865, 26.819733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451760, 0.344464, -0.822957,
		-0.183039, 0.867042, 0.463395,
		0.873161, 0.359977, -0.328644,
		32.898327, 41.423859, 26.721140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123260, 41.797863, 26.571638>,  <32.287113, 41.171875, 26.951191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123260, 41.797863, 26.571638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501068, 41.733494, 26.457104>,  <32.727753, 41.694870, 26.388382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501068, 41.733494, 26.457104>,  <32.123260, 41.797863, 26.571638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501068, 41.733494, 26.457104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226923, 0.310557, -0.923071,
		0.237472, 0.936833, 0.256808,
		0.944518, -0.160928, -0.286337,
		32.784424, 41.685215, 26.371202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392960, 42.425091, 26.323566>,  <32.123260, 41.797863, 26.571638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392960, 42.425091, 26.323566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582607, 42.122032, 26.144154>,  <32.696396, 41.940197, 26.036507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582607, 42.122032, 26.144154>,  <32.392960, 42.425091, 26.323566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582607, 42.122032, 26.144154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083994, 0.468183, -0.879631,
		0.876443, 0.454728, 0.158339,
		0.474124, -0.757646, -0.448530,
		32.724846, 41.894737, 26.009594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853767, 42.697613, 25.860477>,  <32.392960, 42.425091, 26.323566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853767, 42.697613, 25.860477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796177, 42.323505, 25.731142>,  <32.761623, 42.099041, 25.653542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.796177, 42.323505, 25.731142>,  <32.853767, 42.697613, 25.860477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796177, 42.323505, 25.731142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271849, 0.351552, -0.895829,
		0.951509, -0.041077, -0.304866,
		-0.143974, -0.935267, -0.323338,
		32.752983, 42.042927, 25.634140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133381, 42.611324, 25.247808>,  <32.853767, 42.697613, 25.860477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133381, 42.611324, 25.247808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888477, 42.295753, 25.226923>,  <32.741535, 42.106411, 25.214392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888477, 42.295753, 25.226923>,  <33.133381, 42.611324, 25.247808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888477, 42.295753, 25.226923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055466, 0.108734, -0.992522,
		0.788710, -0.604784, -0.110332,
		-0.612259, -0.788931, -0.052215,
		32.704800, 42.059074, 25.211258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341805, 42.238148, 24.653940>,  <33.133381, 42.611324, 25.247808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341805, 42.238148, 24.653940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959492, 42.140255, 24.719156>,  <32.730103, 42.081520, 24.758286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959492, 42.140255, 24.719156>,  <33.341805, 42.238148, 24.653940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959492, 42.140255, 24.719156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191822, 0.098634, -0.976461,
		0.222897, -0.964559, -0.141219,
		-0.955783, -0.244739, 0.163038,
		32.672756, 42.066833, 24.768068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979519, 41.928635, 24.084105>,  <33.341805, 42.238148, 24.653940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979519, 41.928635, 24.084105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683270, 42.093384, 24.296459>,  <32.505520, 42.192234, 24.423872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683270, 42.093384, 24.296459>,  <32.979519, 41.928635, 24.084105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683270, 42.093384, 24.296459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411160, 0.347107, -0.842890,
		-0.531439, -0.842541, -0.087729,
		-0.740621, 0.411874, 0.530886,
		32.461082, 42.216946, 24.455725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364433, 41.486275, 23.749104>,  <32.979519, 41.928635, 24.084105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364433, 41.486275, 23.749104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519688, 41.581600, 24.105207>,  <32.612839, 41.638794, 24.318871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.519688, 41.581600, 24.105207>,  <32.364433, 41.486275, 23.749104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519688, 41.581600, 24.105207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683655, 0.722253, 0.104720,
		-0.618037, -0.649276, 0.443251,
		0.388131, 0.238310, 0.890260,
		32.636127, 41.653091, 24.372286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546051, 41.125702, 23.248388>,  <32.364433, 41.486275, 23.749104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546051, 41.125702, 23.248388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868725, 41.096642, 23.013786>,  <33.062328, 41.079205, 22.873026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.868725, 41.096642, 23.013786>,  <32.546051, 41.125702, 23.248388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868725, 41.096642, 23.013786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585936, 0.227803, 0.777679,
		0.077106, -0.970993, 0.226335,
		0.806681, -0.072654, -0.586505,
		33.110729, 41.074844, 22.837835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015316, 40.608742, 23.351959>,  <32.546051, 41.125702, 23.248388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015316, 40.608742, 23.351959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990320, 40.218845, 23.266184>,  <31.975323, 39.984909, 23.214718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990320, 40.218845, 23.266184>,  <32.015316, 40.608742, 23.351959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990320, 40.218845, 23.266184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538113, -0.213859, 0.815290,
		-0.840553, -0.064444, 0.537883,
		-0.062490, -0.974736, -0.214438,
		31.971573, 39.926426, 23.201853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921518, 40.268204, 23.972174>,  <32.015316, 40.608742, 23.351959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921518, 40.268204, 23.972174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000069, 39.962093, 23.726967>,  <32.047199, 39.778427, 23.579844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000069, 39.962093, 23.726967>,  <31.921518, 40.268204, 23.972174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000069, 39.962093, 23.726967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286266, -0.553205, 0.782315,
		-0.937811, -0.329112, 0.110438,
		0.196374, -0.765278, -0.613015,
		32.058983, 39.732510, 23.543062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649975, 39.752071, 24.269089>,  <31.921518, 40.268204, 23.972174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649975, 39.752071, 24.269089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925322, 39.569431, 24.043640>,  <32.090530, 39.459846, 23.908371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.925322, 39.569431, 24.043640>,  <31.649975, 39.752071, 24.269089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925322, 39.569431, 24.043640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203323, -0.624412, 0.754168,
		-0.696284, -0.633741, -0.336988,
		0.688367, -0.456598, -0.563622,
		32.131832, 39.432453, 23.874554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592228, 38.955189, 24.549484>,  <31.649975, 39.752071, 24.269089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592228, 38.955189, 24.549484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931469, 38.990154, 24.340454>,  <32.135014, 39.011135, 24.215036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.931469, 38.990154, 24.340454>,  <31.592228, 38.955189, 24.549484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931469, 38.990154, 24.340454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464785, -0.596242, 0.654576,
		-0.254360, -0.798031, -0.546303,
		0.848101, 0.087416, -0.522573,
		32.185898, 39.016380, 24.183681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833059, 38.305241, 24.436487>,  <31.592228, 38.955189, 24.549484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833059, 38.305241, 24.436487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162781, 38.531685, 24.433788>,  <32.360615, 38.667549, 24.432169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.162781, 38.531685, 24.433788>,  <31.833059, 38.305241, 24.436487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162781, 38.531685, 24.433788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431098, -0.619903, 0.655648,
		0.366984, -0.543363, -0.755036,
		0.824304, 0.566107, -0.006748,
		32.410072, 38.701515, 24.431765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236805, 37.851440, 24.680841>,  <31.833059, 38.305241, 24.436487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236805, 37.851440, 24.680841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444904, 38.192730, 24.695587>,  <32.569763, 38.397503, 24.704433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.444904, 38.192730, 24.695587>,  <32.236805, 37.851440, 24.680841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444904, 38.192730, 24.695587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615589, -0.404570, 0.676294,
		0.591941, -0.329147, -0.735709,
		0.520246, 0.853220, 0.036863,
		32.600979, 38.448696, 24.706646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961571, 37.644161, 24.843489>,  <32.236805, 37.851440, 24.680841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961571, 37.644161, 24.843489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889709, 38.020473, 24.958492>,  <32.846592, 38.246262, 25.027494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889709, 38.020473, 24.958492>,  <32.961571, 37.644161, 24.843489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889709, 38.020473, 24.958492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467109, -0.175631, 0.866581,
		0.865756, 0.289982, -0.407893,
		-0.179654, 0.940779, 0.287507,
		32.835812, 38.302708, 25.044744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639942, 37.902809, 25.089258>,  <32.961571, 37.644161, 24.843489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639942, 37.902809, 25.089258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378883, 38.153740, 25.259203>,  <33.222248, 38.304298, 25.361170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378883, 38.153740, 25.259203>,  <33.639942, 37.902809, 25.089258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378883, 38.153740, 25.259203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449494, -0.130819, 0.883652,
		0.609922, 0.767686, -0.196603,
		-0.652648, 0.627331, 0.424860,
		33.183090, 38.341938, 25.386662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087330, 38.380142, 25.454737>,  <33.639942, 37.902809, 25.089258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087330, 38.380142, 25.454737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716961, 38.412579, 25.602297>,  <33.494740, 38.432041, 25.690834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716961, 38.412579, 25.602297>,  <34.087330, 38.380142, 25.454737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716961, 38.412579, 25.602297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375033, 0.081312, 0.923439,
		0.044882, 0.993385, -0.105699,
		-0.925924, 0.081086, 0.368902,
		33.439182, 38.436905, 25.712967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164646, 38.850349, 25.977619>,  <34.087330, 38.380142, 25.454737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164646, 38.850349, 25.977619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823086, 38.666851, 26.075933>,  <33.618149, 38.556751, 26.134922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823086, 38.666851, 26.075933>,  <34.164646, 38.850349, 25.977619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823086, 38.666851, 26.075933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292557, -0.032523, 0.955695,
		-0.430426, 0.887973, 0.161980,
		-0.853899, -0.458744, 0.245784,
		33.566917, 38.529228, 26.149668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006256, 39.144073, 26.628845>,  <34.164646, 38.850349, 25.977619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006256, 39.144073, 26.628845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778477, 38.815552, 26.615078>,  <33.641811, 38.618439, 26.606817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778477, 38.815552, 26.615078>,  <34.006256, 39.144073, 26.628845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778477, 38.815552, 26.615078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262756, -0.221536, 0.939085,
		-0.778903, 0.525715, 0.341957,
		-0.569447, -0.821307, -0.034420,
		33.607643, 38.569160, 26.604752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613239, 39.108837, 27.264801>,  <34.006256, 39.144073, 26.628845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613239, 39.108837, 27.264801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628601, 38.740116, 27.110500>,  <33.637817, 38.518883, 27.017920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.628601, 38.740116, 27.110500>,  <33.613239, 39.108837, 27.264801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628601, 38.740116, 27.110500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110591, -0.379745, 0.918457,
		-0.993124, -0.077929, 0.087361,
		0.038400, -0.921803, -0.385753,
		33.640121, 38.463573, 26.994774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140720, 38.776150, 27.698015>,  <33.613239, 39.108837, 27.264801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140720, 38.776150, 27.698015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361374, 38.497105, 27.515135>,  <33.493767, 38.329678, 27.405407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.361374, 38.497105, 27.515135>,  <33.140720, 38.776150, 27.698015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361374, 38.497105, 27.515135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205744, -0.417400, 0.885125,
		-0.808311, -0.582333, -0.086723,
		0.551636, -0.697614, -0.457201,
		33.526863, 38.287819, 27.377975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984234, 38.098587, 28.000870>,  <33.140720, 38.776150, 27.698015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984234, 38.098587, 28.000870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344593, 38.041607, 27.836870>,  <33.560806, 38.007420, 27.738470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344593, 38.041607, 27.836870>,  <32.984234, 38.098587, 28.000870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344593, 38.041607, 27.836870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305837, -0.461936, 0.832514,
		-0.307982, -0.875399, -0.372590,
		0.900895, -0.142447, -0.409997,
		33.614861, 37.998871, 27.713871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603230, 37.376659, 28.147827>,  <32.984234, 38.098587, 28.000870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603230, 37.376659, 28.147827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249668, 37.365440, 28.334558>,  <32.037533, 37.358711, 28.446598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249668, 37.365440, 28.334558>,  <32.603230, 37.376659, 28.147827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249668, 37.365440, 28.334558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444834, 0.358533, -0.820717,
		-0.144358, -0.933096, -0.329383,
		-0.883903, -0.028044, 0.466829,
		31.984497, 37.357025, 28.474607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172775, 37.206596, 27.605843>,  <32.603230, 37.376659, 28.147827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172775, 37.206596, 27.605843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.929525, 37.378036, 27.873121>,  <31.783575, 37.480900, 28.033489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.929525, 37.378036, 27.873121>,  <32.172775, 37.206596, 27.605843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929525, 37.378036, 27.873121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528202, 0.409893, -0.743634,
		-0.592608, -0.805166, -0.022881,
		-0.608127, 0.428597, 0.668196,
		31.747087, 37.506615, 28.073580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460989, 37.118805, 27.290569>,  <32.172775, 37.206596, 27.605843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460989, 37.118805, 27.290569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434540, 37.407951, 27.565697>,  <31.418671, 37.581440, 27.730774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434540, 37.407951, 27.565697>,  <31.460989, 37.118805, 27.290569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434540, 37.407951, 27.565697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588427, 0.528459, -0.611952,
		-0.805842, -0.445195, 0.390410,
		-0.066122, 0.722864, 0.687819,
		31.414703, 37.624809, 27.772043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740286, 37.141766, 27.389456>,  <31.460989, 37.118805, 27.290569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740286, 37.141766, 27.389456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.895969, 37.491287, 27.506063>,  <30.989380, 37.701000, 27.576029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.895969, 37.491287, 27.506063>,  <30.740286, 37.141766, 27.389456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895969, 37.491287, 27.506063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658665, 0.485239, -0.575068,
		-0.643952, 0.031808, 0.764404,
		0.389211, 0.873803, 0.291520,
		31.012733, 37.753429, 27.593519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158203, 37.481094, 27.560913>,  <30.740286, 37.141766, 27.389456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158203, 37.481094, 27.560913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.445704, 37.752838, 27.501768>,  <30.618204, 37.915886, 27.466282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.445704, 37.752838, 27.501768>,  <30.158203, 37.481094, 27.560913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445704, 37.752838, 27.501768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591124, 0.485153, -0.644359,
		-0.366019, 0.550538, 0.750292,
		0.718751, 0.679363, -0.147861,
		30.661329, 37.956646, 27.457411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921032, 38.175850, 27.730976>,  <30.158203, 37.481094, 27.560913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921032, 38.175850, 27.730976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235559, 38.234226, 27.490841>,  <30.424276, 38.269253, 27.346760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235559, 38.234226, 27.490841>,  <29.921032, 38.175850, 27.730976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235559, 38.234226, 27.490841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560421, 0.577508, -0.593644,
		0.260065, 0.803235, 0.535891,
		0.786317, 0.145939, -0.600339,
		30.471455, 38.278008, 27.310740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945675, 38.928703, 27.556540>,  <29.921032, 38.175850, 27.730976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945675, 38.928703, 27.556540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165014, 38.754421, 27.271029>,  <30.296618, 38.649853, 27.099722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165014, 38.754421, 27.271029>,  <29.945675, 38.928703, 27.556540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165014, 38.754421, 27.271029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332317, 0.669721, -0.664108,
		0.767384, 0.601363, 0.222450,
		0.548349, -0.435702, -0.713776,
		30.329519, 38.623711, 27.056896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841702, 39.593723, 27.888285>,  <29.945675, 38.928703, 27.556540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841702, 39.593723, 27.888285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474337, 39.717167, 27.987307>,  <29.253918, 39.791233, 28.046721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.474337, 39.717167, 27.987307>,  <29.841702, 39.593723, 27.888285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474337, 39.717167, 27.987307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193726, -0.194784, 0.961525,
		0.344953, 0.931032, 0.119107,
		-0.918410, 0.308607, 0.247556,
		29.198814, 39.809750, 28.061573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931602, 40.111580, 28.346792>,  <29.841702, 39.593723, 27.888285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931602, 40.111580, 28.346792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577396, 39.934090, 28.401890>,  <29.364872, 39.827595, 28.434948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.577396, 39.934090, 28.401890>,  <29.931602, 40.111580, 28.346792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577396, 39.934090, 28.401890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277511, -0.267354, 0.922773,
		-0.372628, 0.855355, 0.359884,
		-0.885515, -0.443723, 0.137746,
		29.311743, 39.800972, 28.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773806, 40.275425, 28.984793>,  <29.931602, 40.111580, 28.346792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773806, 40.275425, 28.984793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532980, 39.963799, 28.914846>,  <29.388485, 39.776825, 28.872879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532980, 39.963799, 28.914846>,  <29.773806, 40.275425, 28.984793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532980, 39.963799, 28.914846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230445, -0.379237, 0.896144,
		-0.764468, 0.499241, 0.407856,
		-0.602066, -0.779062, -0.174867,
		29.352360, 39.730080, 28.862387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228563, 40.284458, 29.500904>,  <29.773806, 40.275425, 28.984793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228563, 40.284458, 29.500904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292295, 39.907734, 29.382511>,  <29.330536, 39.681698, 29.311476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292295, 39.907734, 29.382511>,  <29.228563, 40.284458, 29.500904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292295, 39.907734, 29.382511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121569, -0.278812, 0.952620,
		-0.979711, -0.187764, 0.070071,
		0.159331, -0.941811, -0.295982,
		29.340096, 39.625191, 29.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190029, 39.954464, 30.077150>,  <29.228563, 40.284458, 29.500904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190029, 39.954464, 30.077150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297981, 39.636009, 29.860508>,  <29.362753, 39.444939, 29.730522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.297981, 39.636009, 29.860508>,  <29.190029, 39.954464, 30.077150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297981, 39.636009, 29.860508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344685, -0.445326, 0.826364,
		-0.899087, -0.409701, 0.154232,
		0.269879, -0.796134, -0.541605,
		29.378944, 39.397167, 29.698027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966635, 39.356064, 30.407408>,  <29.190029, 39.954464, 30.077150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966635, 39.356064, 30.407408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261635, 39.216560, 30.176079>,  <29.438635, 39.132858, 30.037281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.261635, 39.216560, 30.176079>,  <28.966635, 39.356064, 30.407408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261635, 39.216560, 30.176079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489207, -0.314475, 0.813500,
		-0.465583, -0.882878, -0.061311,
		0.737502, -0.348758, -0.578325,
		29.482885, 39.111935, 30.002581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081003, 38.689896, 30.650261>,  <28.966635, 39.356064, 30.407408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081003, 38.689896, 30.650261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420635, 38.754749, 30.449152>,  <29.624414, 38.793663, 30.328487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.420635, 38.754749, 30.449152>,  <29.081003, 38.689896, 30.650261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420635, 38.754749, 30.449152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518847, -0.434878, 0.735988,
		-0.099316, -0.885773, -0.453369,
		0.849078, 0.162134, -0.502771,
		29.675358, 38.803391, 30.298321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.548849, 42.878361, 26.179550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920734, 42.746521, 26.113823>,  <30.143866, 42.667419, 26.074387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920734, 42.746521, 26.113823>,  <29.548849, 42.878361, 26.179550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920734, 42.746521, 26.113823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094786, -0.216998, 0.971559,
		-0.355880, -0.918846, -0.170505,
		0.929712, -0.329597, -0.164319,
		30.199648, 42.647644, 26.064528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582865, 42.395214, 26.651621>,  <29.548849, 42.878361, 26.179550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582865, 42.395214, 26.651621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.966089, 42.448238, 26.549997>,  <30.196024, 42.480053, 26.489023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.966089, 42.448238, 26.549997>,  <29.582865, 42.395214, 26.651621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966089, 42.448238, 26.549997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273855, -0.162435, 0.947955,
		0.084391, -0.977774, -0.191925,
		0.958061, 0.132559, -0.254061,
		30.253508, 42.488007, 26.473780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902723, 41.901115, 27.065203>,  <29.582865, 42.395214, 26.651621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902723, 41.901115, 27.065203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189226, 42.155918, 26.951220>,  <30.361128, 42.308800, 26.882830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189226, 42.155918, 26.951220>,  <29.902723, 41.901115, 27.065203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189226, 42.155918, 26.951220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457923, -0.120911, 0.880731,
		0.526577, -0.761317, -0.378303,
		0.716257, 0.637006, -0.284956,
		30.404102, 42.347019, 26.865732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520861, 41.587490, 27.132137>,  <29.902723, 41.901115, 27.065203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520861, 41.587490, 27.132137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.597015, 41.979897, 27.146860>,  <30.642708, 42.215340, 27.155693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.597015, 41.979897, 27.146860>,  <30.520861, 41.587490, 27.132137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597015, 41.979897, 27.146860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620990, -0.149383, 0.769452,
		0.760346, -0.123637, -0.637643,
		0.190386, 0.981019, 0.036806,
		30.654131, 42.274200, 27.157902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236904, 41.597466, 27.371498>,  <30.520861, 41.587490, 27.132137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236904, 41.597466, 27.371498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119860, 41.974140, 27.437965>,  <31.049633, 42.200146, 27.477846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119860, 41.974140, 27.437965>,  <31.236904, 41.597466, 27.371498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119860, 41.974140, 27.437965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552664, 0.024732, 0.833037,
		0.780347, 0.335592, -0.527671,
		-0.292611, 0.941683, 0.166170,
		31.032076, 42.256645, 27.487816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745041, 41.969051, 27.710939>,  <31.236904, 41.597466, 27.371498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745041, 41.969051, 27.710939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409521, 42.165890, 27.804111>,  <31.208210, 42.283993, 27.860014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.409521, 42.165890, 27.804111>,  <31.745041, 41.969051, 27.710939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409521, 42.165890, 27.804111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348590, 0.156788, 0.924068,
		0.418214, 0.856303, -0.303055,
		-0.838798, 0.492100, 0.232928,
		31.157881, 42.313519, 27.873989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982475, 42.580837, 28.043535>,  <31.745041, 41.969051, 27.710939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982475, 42.580837, 28.043535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602335, 42.569416, 28.167480>,  <31.374250, 42.562565, 28.241848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602335, 42.569416, 28.167480>,  <31.982475, 42.580837, 28.043535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602335, 42.569416, 28.167480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307495, 0.066580, 0.949217,
		-0.047732, 0.997372, -0.054495,
		-0.950352, -0.028551, 0.309865,
		31.317230, 42.560852, 28.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900328, 43.146523, 28.432556>,  <31.982475, 42.580837, 28.043535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900328, 43.146523, 28.432556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581875, 42.925125, 28.530392>,  <31.390804, 42.792286, 28.589092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581875, 42.925125, 28.530392>,  <31.900328, 43.146523, 28.432556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581875, 42.925125, 28.530392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153773, 0.205880, 0.966420,
		-0.585262, 0.807007, -0.078795,
		-0.796130, -0.553492, 0.244589,
		31.343037, 42.759079, 28.603769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658478, 43.518208, 29.015968>,  <31.900328, 43.146523, 28.432556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658478, 43.518208, 29.015968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.500233, 43.151943, 29.044416>,  <31.405285, 42.932186, 29.061485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.500233, 43.151943, 29.044416>,  <31.658478, 43.518208, 29.015968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500233, 43.151943, 29.044416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149738, 0.012095, 0.988652,
		-0.906129, 0.401772, 0.132325,
		-0.395612, -0.915660, 0.071120,
		31.381550, 42.877247, 29.065752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065428, 43.493137, 29.468767>,  <31.658478, 43.518208, 29.015968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065428, 43.493137, 29.468767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188000, 43.112682, 29.483973>,  <31.261543, 42.884411, 29.493095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188000, 43.112682, 29.483973>,  <31.065428, 43.493137, 29.468767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188000, 43.112682, 29.483973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017512, 0.034294, 0.999258,
		-0.951733, -0.306867, -0.006147,
		0.306428, -0.951135, 0.038012,
		31.279928, 42.827343, 29.495377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660883, 43.212940, 29.973398>,  <31.065428, 43.493137, 29.468767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660883, 43.212940, 29.973398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978691, 42.970329, 29.961634>,  <31.169376, 42.824764, 29.954575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978691, 42.970329, 29.961634>,  <30.660883, 43.212940, 29.973398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978691, 42.970329, 29.961634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002734, -0.044862, 0.998990,
		-0.607229, -0.793799, -0.033986,
		0.794522, -0.606523, -0.029412,
		31.217049, 42.788372, 29.952810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518778, 42.779408, 30.484451>,  <30.660883, 43.212940, 29.973398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518778, 42.779408, 30.484451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910303, 42.733433, 30.416666>,  <31.145218, 42.705849, 30.375996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910303, 42.733433, 30.416666>,  <30.518778, 42.779408, 30.484451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910303, 42.733433, 30.416666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151680, -0.148975, 0.977139,
		-0.137548, -0.982139, -0.128386,
		0.978812, -0.114930, -0.169462,
		31.203947, 42.698952, 30.365828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099499, 42.197346, 30.585695>,  <30.518778, 42.779408, 30.484451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099499, 42.197346, 30.585695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719984, 42.310238, 30.642475>,  <29.492275, 42.377972, 30.676544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719984, 42.310238, 30.642475>,  <30.099499, 42.197346, 30.585695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719984, 42.310238, 30.642475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105027, 0.141982, -0.984282,
		-0.297948, -0.948782, -0.105068,
		-0.948787, 0.282230, 0.141951,
		29.435349, 42.394905, 30.685061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755562, 41.964901, 30.035435>,  <30.099499, 42.197346, 30.585695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755562, 41.964901, 30.035435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465006, 42.200489, 30.177126>,  <29.290672, 42.341843, 30.262140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.465006, 42.200489, 30.177126>,  <29.755562, 41.964901, 30.035435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465006, 42.200489, 30.177126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121074, 0.397684, -0.909499,
		-0.676535, -0.703538, -0.217565,
		-0.726389, 0.588966, 0.354227,
		29.247089, 42.377178, 30.283394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059475, 41.911968, 29.641708>,  <29.755562, 41.964901, 30.035435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059475, 41.911968, 29.641708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021616, 42.268627, 29.818802>,  <28.998901, 42.482620, 29.925058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.021616, 42.268627, 29.818802>,  <29.059475, 41.911968, 29.641708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021616, 42.268627, 29.818802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441403, 0.361035, -0.821473,
		-0.892303, -0.273173, 0.359404,
		-0.094647, 0.891645, 0.442732,
		28.993221, 42.536121, 29.951622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365864, 42.013393, 29.646770>,  <29.059475, 41.911968, 29.641708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365864, 42.013393, 29.646770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543703, 42.371681, 29.648645>,  <28.650408, 42.586655, 29.649771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543703, 42.371681, 29.648645>,  <28.365864, 42.013393, 29.646770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543703, 42.371681, 29.648645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422128, 0.214135, -0.880883,
		-0.790025, 0.389662, 0.473312,
		0.444600, 0.895717, 0.004685,
		28.677082, 42.640396, 29.650051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946470, 42.503368, 29.445852>,  <28.365864, 42.013393, 29.646770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946470, 42.503368, 29.445852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287140, 42.703255, 29.382694>,  <28.491543, 42.823185, 29.344799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287140, 42.703255, 29.382694>,  <27.946470, 42.503368, 29.445852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287140, 42.703255, 29.382694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394419, 0.412808, -0.820989,
		-0.345082, 0.761494, 0.548676,
		0.851676, 0.499717, -0.157895,
		28.542643, 42.853168, 29.335325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713278, 43.195496, 29.342297>,  <27.946470, 42.503368, 29.445852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713278, 43.195496, 29.342297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079418, 43.174545, 29.182604>,  <28.299103, 43.161976, 29.086788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079418, 43.174545, 29.182604>,  <27.713278, 43.195496, 29.342297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079418, 43.174545, 29.182604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373452, 0.260252, -0.890394,
		0.150540, 0.964119, 0.218661,
		0.915353, -0.052380, -0.399231,
		28.354025, 43.158833, 29.062834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745148, 43.762421, 28.910963>,  <27.713278, 43.195496, 29.342297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745148, 43.762421, 28.910963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060255, 43.549877, 28.786335>,  <28.249319, 43.422352, 28.711557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060255, 43.549877, 28.786335>,  <27.745148, 43.762421, 28.910963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060255, 43.549877, 28.786335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140803, 0.337090, -0.930884,
		0.599665, 0.777190, 0.190731,
		0.787767, -0.531363, -0.311571,
		28.296585, 43.390469, 28.692863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079561, 44.202393, 28.557650>,  <27.745148, 43.762421, 28.910963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079561, 44.202393, 28.557650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248404, 43.860619, 28.436472>,  <28.349709, 43.655556, 28.363766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248404, 43.860619, 28.436472>,  <28.079561, 44.202393, 28.557650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248404, 43.860619, 28.436472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096603, 0.289876, -0.952176,
		0.901384, 0.431185, 0.039818,
		0.422107, -0.854430, -0.302943,
		28.375036, 43.604290, 28.345589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625883, 44.338547, 28.078503>,  <28.079561, 44.202393, 28.557650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625883, 44.338547, 28.078503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517302, 43.961685, 27.999857>,  <28.452152, 43.735569, 27.952669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.517302, 43.961685, 27.999857>,  <28.625883, 44.338547, 28.078503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517302, 43.961685, 27.999857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211163, 0.257610, -0.942893,
		0.939001, -0.214436, -0.268878,
		-0.271456, -0.942154, -0.196615,
		28.435865, 43.679039, 27.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051517, 44.154297, 27.439041>,  <28.625883, 44.338547, 28.078503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051517, 44.154297, 27.439041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725548, 43.925800, 27.478201>,  <28.529966, 43.788704, 27.501698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725548, 43.925800, 27.478201>,  <29.051517, 44.154297, 27.439041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725548, 43.925800, 27.478201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220931, 0.150018, -0.963683,
		0.535805, -0.806959, -0.248457,
		-0.814925, -0.571238, 0.097901,
		28.481070, 43.754429, 27.507572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075058, 43.781773, 26.839891>,  <29.051517, 44.154297, 27.439041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075058, 43.781773, 26.839891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702436, 43.700794, 26.960705>,  <28.478863, 43.652206, 27.033192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702436, 43.700794, 26.960705>,  <29.075058, 43.781773, 26.839891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702436, 43.700794, 26.960705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285502, -0.107127, -0.952372,
		0.225162, -0.973416, 0.041995,
		-0.931553, -0.202448, 0.302033,
		28.422970, 43.640060, 27.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772320, 43.259995, 26.334793>,  <29.075058, 43.781773, 26.839891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772320, 43.259995, 26.334793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461735, 43.432446, 26.518635>,  <28.275385, 43.535915, 26.628941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.461735, 43.432446, 26.518635>,  <28.772320, 43.259995, 26.334793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461735, 43.432446, 26.518635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471399, 0.086635, -0.877655,
		-0.418202, -0.898121, 0.135966,
		-0.776460, 0.431131, 0.459604,
		28.228796, 43.561783, 26.656515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130377, 42.926140, 26.128994>,  <28.772320, 43.259995, 26.334793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130377, 42.926140, 26.128994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054512, 43.308456, 26.218872>,  <28.008993, 43.537846, 26.272799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054512, 43.308456, 26.218872>,  <28.130377, 42.926140, 26.128994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054512, 43.308456, 26.218872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463299, 0.114651, -0.878754,
		-0.865668, -0.270769, 0.421073,
		-0.189663, 0.955793, 0.224697,
		27.997614, 43.595196, 26.286282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824106, 42.535133, 26.265739>,  <28.130377, 42.926140, 26.128994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824106, 42.535133, 26.265739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619879, 42.248852, 26.075125>,  <28.497343, 42.077084, 25.960756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619879, 42.248852, 26.075125>,  <28.824106, 42.535133, 26.265739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619879, 42.248852, 26.075125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273159, -0.660517, 0.699358,
		-0.815295, 0.226899, 0.532739,
		-0.510567, -0.715706, -0.476536,
		28.466709, 42.034142, 25.932163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283710, 42.239780, 26.723829>,  <28.824106, 42.535133, 26.265739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283710, 42.239780, 26.723829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333443, 41.960449, 26.441872>,  <28.363281, 41.792850, 26.272697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333443, 41.960449, 26.441872>,  <28.283710, 42.239780, 26.723829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333443, 41.960449, 26.441872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273561, -0.658748, 0.700867,
		-0.953785, -0.279971, 0.109134,
		0.124331, -0.698331, -0.704894,
		28.370743, 41.750950, 26.230404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922400, 41.627819, 26.911718>,  <28.283710, 42.239780, 26.723829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922400, 41.627819, 26.911718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161396, 41.461330, 26.637562>,  <28.304794, 41.361439, 26.473068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161396, 41.461330, 26.637562>,  <27.922400, 41.627819, 26.911718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161396, 41.461330, 26.637562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134734, -0.790474, 0.597492,
		-0.790474, -0.449342, -0.416223,
		-0.597492, 0.416223, 0.685391,
		28.340643, 41.336464, 26.431944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684788, 40.901062, 26.782175>,  <27.922400, 41.627819, 26.911718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684788, 40.901062, 26.782175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071823, 40.944244, 26.690859>,  <28.304045, 40.970154, 26.636068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.071823, 40.944244, 26.690859>,  <27.684788, 40.901062, 26.782175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071823, 40.944244, 26.690859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238493, -0.687822, 0.685582,
		-0.083013, -0.717808, -0.691275,
		0.967590, 0.107952, -0.228290,
		28.362101, 40.976631, 26.622372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826485, 40.312752, 26.637672>,  <27.684788, 40.901062, 26.782175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826485, 40.312752, 26.637672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175364, 40.488945, 26.722757>,  <28.384691, 40.594662, 26.773808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175364, 40.488945, 26.722757>,  <27.826485, 40.312752, 26.637672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175364, 40.488945, 26.722757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227770, -0.750551, 0.620317,
		0.432892, -0.492589, -0.754957,
		0.872196, 0.440487, 0.212711,
		28.437023, 40.621090, 26.786570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328434, 39.786953, 26.628426>,  <27.826485, 40.312752, 26.637672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328434, 39.786953, 26.628426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479235, 40.079533, 26.855705>,  <28.569715, 40.255081, 26.992073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.479235, 40.079533, 26.855705>,  <28.328434, 39.786953, 26.628426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479235, 40.079533, 26.855705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340771, -0.679973, 0.649239,
		0.861247, -0.051137, -0.505607,
		0.376999, 0.731452, 0.568199,
		28.592335, 40.298969, 27.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869482, 39.372864, 26.846777>,  <28.328434, 39.786953, 26.628426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869482, 39.372864, 26.846777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856192, 39.722752, 27.040173>,  <28.848217, 39.932686, 27.156210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856192, 39.722752, 27.040173>,  <28.869482, 39.372864, 26.846777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856192, 39.722752, 27.040173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370301, -0.438552, 0.818871,
		0.928317, 0.206245, -0.309338,
		-0.033227, 0.874720, 0.483488,
		28.846224, 39.985168, 27.185219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512918, 39.468597, 27.236532>,  <28.869482, 39.372864, 26.846777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512918, 39.468597, 27.236532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261005, 39.711136, 27.430737>,  <29.109858, 39.856659, 27.547258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261005, 39.711136, 27.430737>,  <29.512918, 39.468597, 27.236532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261005, 39.711136, 27.430737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250957, -0.432691, 0.865909,
		0.735116, 0.667176, 0.120334,
		-0.629781, 0.606345, 0.485511,
		29.072071, 39.893040, 27.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279274, 39.499165, 27.097698>,  <29.512918, 39.468597, 27.236532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279274, 39.499165, 27.097698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340570, 39.170383, 26.878277>,  <30.377348, 38.973114, 26.746624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340570, 39.170383, 26.878277>,  <30.279274, 39.499165, 27.097698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340570, 39.170383, 26.878277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328935, 0.481026, -0.812660,
		0.931836, 0.304973, -0.196655,
		0.153243, -0.821952, -0.548554,
		30.386543, 38.923798, 26.713711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719324, 39.699104, 26.486082>,  <30.279274, 39.499165, 27.097698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719324, 39.699104, 26.486082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529907, 39.357761, 26.398870>,  <30.416258, 39.152954, 26.346544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.529907, 39.357761, 26.398870>,  <30.719324, 39.699104, 26.486082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529907, 39.357761, 26.398870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316131, 0.395723, -0.862244,
		0.822083, -0.339382, -0.457164,
		-0.473540, -0.853360, -0.218028,
		30.387844, 39.101753, 26.333462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955383, 39.521111, 25.775490>,  <30.719324, 39.699104, 26.486082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955383, 39.521111, 25.775490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.628899, 39.292152, 25.806881>,  <30.433008, 39.154778, 25.825716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.628899, 39.292152, 25.806881>,  <30.955383, 39.521111, 25.775490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628899, 39.292152, 25.806881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213773, 0.173013, -0.961440,
		0.536747, -0.801517, -0.263579,
		-0.816213, -0.572396, 0.078479,
		30.384035, 39.120434, 25.830425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912495, 39.081600, 25.101349>,  <30.955383, 39.521111, 25.775490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912495, 39.081600, 25.101349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542461, 39.095734, 25.252596>,  <30.320442, 39.104214, 25.343344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542461, 39.095734, 25.252596>,  <30.912495, 39.081600, 25.101349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542461, 39.095734, 25.252596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359446, 0.239845, -0.901817,
		-0.122554, -0.970168, -0.209176,
		-0.925084, 0.035334, 0.378116,
		30.264936, 39.106335, 25.366032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471884, 38.549824, 24.624365>,  <30.912495, 39.081600, 25.101349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471884, 38.549824, 24.624365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245090, 38.808239, 24.828781>,  <30.109015, 38.963287, 24.951431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245090, 38.808239, 24.828781>,  <30.471884, 38.549824, 24.624365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245090, 38.808239, 24.828781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408578, 0.318137, -0.855484,
		-0.715257, -0.693846, 0.083579,
		-0.566984, 0.646040, 0.511039,
		30.074995, 39.002052, 24.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716013, 38.584209, 24.336412>,  <30.471884, 38.549824, 24.624365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716013, 38.584209, 24.336412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789557, 38.935818, 24.512375>,  <29.833683, 39.146782, 24.617952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789557, 38.935818, 24.512375>,  <29.716013, 38.584209, 24.336412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789557, 38.935818, 24.512375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348073, 0.476758, -0.807185,
		-0.919262, -0.004712, 0.393619,
		0.183857, 0.879022, 0.439905,
		29.844713, 39.199524, 24.644346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239761, 38.928097, 24.069742>,  <29.716013, 38.584209, 24.336412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239761, 38.928097, 24.069742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499834, 39.193188, 24.218369>,  <29.655878, 39.352242, 24.307545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499834, 39.193188, 24.218369>,  <29.239761, 38.928097, 24.069742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499834, 39.193188, 24.218369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121631, 0.573524, -0.810109,
		-0.749982, 0.481522, 0.453502,
		0.650180, 0.662727, 0.371564,
		29.694887, 39.392006, 24.329838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959921, 39.555923, 23.850185>,  <29.239761, 38.928097, 24.069742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959921, 39.555923, 23.850185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334206, 39.661335, 23.943989>,  <29.558777, 39.724583, 24.000271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334206, 39.661335, 23.943989>,  <28.959921, 39.555923, 23.850185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334206, 39.661335, 23.943989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055569, 0.546362, -0.835704,
		-0.348360, 0.795010, 0.496593,
		0.935712, 0.263531, 0.234508,
		29.614920, 39.740395, 24.014341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994270, 40.188457, 23.607389>,  <28.959921, 39.555923, 23.850185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994270, 40.188457, 23.607389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387127, 40.149967, 23.672054>,  <29.622841, 40.126873, 23.710854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.387127, 40.149967, 23.672054>,  <28.994270, 40.188457, 23.607389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387127, 40.149967, 23.672054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187666, 0.561583, -0.805857,
		-0.013240, 0.821806, 0.569614,
		0.982144, -0.096227, 0.161660,
		29.681770, 40.121098, 23.720552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.993202, 36.101486, 37.703568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244267, 36.314014, 37.475975>,  <36.394905, 36.441532, 37.339420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244267, 36.314014, 37.475975>,  <35.993202, 36.101486, 37.703568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244267, 36.314014, 37.475975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470471, -0.323423, -0.821008,
		-0.620241, 0.783004, 0.046972,
		0.627661, 0.531322, -0.568980,
		36.432564, 36.473412, 37.305283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574078, 36.528435, 37.229900>,  <35.993202, 36.101486, 37.703568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574078, 36.528435, 37.229900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940994, 36.446003, 37.093601>,  <36.161144, 36.396545, 37.011822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940994, 36.446003, 37.093601>,  <35.574078, 36.528435, 37.229900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940994, 36.446003, 37.093601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382571, -0.218585, -0.897697,
		0.110511, 0.953810, -0.279344,
		0.917293, -0.206075, -0.340744,
		36.216183, 36.384182, 36.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586857, 36.865021, 36.629681>,  <35.574078, 36.528435, 37.229900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586857, 36.865021, 36.629681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877041, 36.596664, 36.568211>,  <36.051151, 36.435650, 36.531326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877041, 36.596664, 36.568211>,  <35.586857, 36.865021, 36.629681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877041, 36.596664, 36.568211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364898, -0.185585, -0.912363,
		0.583578, 0.717956, -0.379441,
		0.725456, -0.670892, -0.153678,
		36.094677, 36.395397, 36.522106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832947, 37.059231, 36.012199>,  <35.586857, 36.865021, 36.629681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832947, 37.059231, 36.012199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944695, 36.680641, 36.076866>,  <36.011742, 36.453487, 36.115665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944695, 36.680641, 36.076866>,  <35.832947, 37.059231, 36.012199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944695, 36.680641, 36.076866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364788, -0.260371, -0.893945,
		0.888190, 0.190767, -0.418002,
		0.279371, -0.946475, 0.161669,
		36.028507, 36.396698, 36.125366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172688, 36.878368, 35.394402>,  <35.832947, 37.059231, 36.012199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172688, 36.878368, 35.394402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037514, 36.546223, 35.571625>,  <35.956409, 36.346935, 35.677959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037514, 36.546223, 35.571625>,  <36.172688, 36.878368, 35.394402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037514, 36.546223, 35.571625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344493, -0.328950, -0.879270,
		0.875856, -0.449767, -0.174890,
		-0.337937, -0.830362, 0.443055,
		35.936134, 36.297115, 35.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326054, 36.357162, 34.875755>,  <36.172688, 36.878368, 35.394402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326054, 36.357162, 34.875755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087097, 36.163345, 35.131359>,  <35.943722, 36.047054, 35.284721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087097, 36.163345, 35.131359>,  <36.326054, 36.357162, 34.875755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087097, 36.163345, 35.131359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559354, -0.319233, -0.764992,
		0.574667, -0.814436, -0.080324,
		-0.597395, -0.484546, 0.639011,
		35.907879, 36.017982, 35.323063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247780, 35.635448, 34.654839>,  <36.326054, 36.357162, 34.875755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247780, 35.635448, 34.654839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926064, 35.681801, 34.887970>,  <35.733036, 35.709610, 35.027851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.926064, 35.681801, 34.887970>,  <36.247780, 35.635448, 34.654839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926064, 35.681801, 34.887970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565016, -0.452909, -0.689660,
		0.184054, -0.883995, 0.429742,
		-0.804289, 0.115877, 0.582831,
		35.684776, 35.716564, 35.062820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855793, 35.059601, 34.383595>,  <36.247780, 35.635448, 34.654839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855793, 35.059601, 34.383595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634377, 35.340397, 34.562843>,  <35.501526, 35.508873, 34.670391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634377, 35.340397, 34.562843>,  <35.855793, 35.059601, 34.383595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634377, 35.340397, 34.562843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754516, -0.194923, -0.626666,
		-0.352564, -0.684994, 0.637559,
		-0.553537, 0.701988, 0.448117,
		35.468315, 35.550995, 34.697277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219723, 34.701145, 34.534294>,  <35.855793, 35.059601, 34.383595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219723, 34.701145, 34.534294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169144, 35.097755, 34.522434>,  <35.138794, 35.335724, 34.515320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169144, 35.097755, 34.522434>,  <35.219723, 34.701145, 34.534294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169144, 35.097755, 34.522434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739551, -0.114151, -0.663350,
		-0.661116, -0.061953, 0.747721,
		-0.126450, 0.991530, -0.029650,
		35.131210, 35.395214, 34.513538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511730, 34.803986, 34.498070>,  <35.219723, 34.701145, 34.534294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511730, 34.803986, 34.498070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662319, 35.150833, 34.367607>,  <34.752670, 35.358940, 34.289330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662319, 35.150833, 34.367607>,  <34.511730, 34.803986, 34.498070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662319, 35.150833, 34.367607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719021, 0.051477, -0.693079,
		-0.584192, 0.495436, 0.642856,
		0.376468, 0.867118, -0.326156,
		34.775261, 35.410969, 34.269760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964008, 35.228928, 34.400047>,  <34.511730, 34.803986, 34.498070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964008, 35.228928, 34.400047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249664, 35.387096, 34.168999>,  <34.421059, 35.481998, 34.030369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249664, 35.387096, 34.168999>,  <33.964008, 35.228928, 34.400047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249664, 35.387096, 34.168999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660322, 0.106663, -0.743370,
		-0.232331, 0.912287, 0.337276,
		0.714141, 0.395419, -0.577621,
		34.463905, 35.505722, 33.995712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695156, 35.844303, 34.144936>,  <33.964008, 35.228928, 34.400047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695156, 35.844303, 34.144936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995190, 35.756313, 33.895462>,  <34.175209, 35.703522, 33.745777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995190, 35.756313, 33.895462>,  <33.695156, 35.844303, 34.144936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995190, 35.756313, 33.895462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565253, 0.276307, -0.777266,
		0.343304, 0.935557, 0.082915,
		0.750087, -0.219971, -0.623685,
		34.220215, 35.690323, 33.708355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390354, 36.221004, 34.658871>,  <33.695156, 35.844303, 34.144936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390354, 36.221004, 34.658871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063477, 36.402958, 34.800442>,  <32.867348, 36.512131, 34.885384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063477, 36.402958, 34.800442>,  <33.390354, 36.221004, 34.658871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063477, 36.402958, 34.800442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219346, -0.322417, 0.920834,
		0.532987, 0.830136, 0.163701,
		-0.817198, 0.454886, 0.353931,
		32.818317, 36.539425, 34.906620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570507, 36.507099, 35.218517>,  <33.390354, 36.221004, 34.658871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570507, 36.507099, 35.218517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175289, 36.476471, 35.272045>,  <32.938160, 36.458096, 35.304161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.175289, 36.476471, 35.272045>,  <33.570507, 36.507099, 35.218517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175289, 36.476471, 35.272045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151542, -0.322535, 0.934348,
		-0.028384, 0.943455, 0.330282,
		-0.988043, -0.076572, 0.133819,
		32.878876, 36.453499, 35.312191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397068, 36.824154, 35.825436>,  <33.570507, 36.507099, 35.218517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397068, 36.824154, 35.825436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090233, 36.570030, 35.789761>,  <32.906132, 36.417557, 35.768356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.090233, 36.570030, 35.789761>,  <33.397068, 36.824154, 35.825436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090233, 36.570030, 35.789761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027377, -0.171304, 0.984838,
		-0.640958, 0.753016, 0.148798,
		-0.767088, -0.635313, -0.089183,
		32.860107, 36.379436, 35.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783489, 37.039085, 36.271988>,  <33.397068, 36.824154, 35.825436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783489, 37.039085, 36.271988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745014, 36.645996, 36.208729>,  <32.721931, 36.410145, 36.170773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.745014, 36.645996, 36.208729>,  <32.783489, 37.039085, 36.271988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745014, 36.645996, 36.208729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081951, -0.150524, 0.985204,
		-0.991984, 0.107722, -0.066056,
		-0.096185, -0.982720, -0.158145,
		32.716160, 36.351181, 36.161285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282017, 36.843311, 36.768715>,  <32.783489, 37.039085, 36.271988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282017, 36.843311, 36.768715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385666, 36.475399, 36.650826>,  <32.447857, 36.254650, 36.580093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.385666, 36.475399, 36.650826>,  <32.282017, 36.843311, 36.768715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385666, 36.475399, 36.650826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112538, -0.331816, 0.936607,
		-0.959266, -0.209529, -0.189491,
		0.259123, -0.919780, -0.294720,
		32.463402, 36.199467, 36.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708546, 36.345558, 36.969067>,  <32.282017, 36.843311, 36.768715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708546, 36.345558, 36.969067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050510, 36.138767, 36.951836>,  <32.255688, 36.014690, 36.941498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050510, 36.138767, 36.951836>,  <31.708546, 36.345558, 36.969067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050510, 36.138767, 36.951836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146314, -0.319948, 0.936069,
		-0.497713, -0.793954, -0.349169,
		0.854912, -0.516983, -0.043076,
		32.306984, 35.983673, 36.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527945, 35.724892, 37.071762>,  <31.708546, 36.345558, 36.969067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527945, 35.724892, 37.071762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919262, 35.745781, 37.151978>,  <32.154053, 35.758316, 37.200108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.919262, 35.745781, 37.151978>,  <31.527945, 35.724892, 37.071762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919262, 35.745781, 37.151978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168240, -0.364875, 0.915730,
		0.120996, -0.929591, -0.348169,
		0.978292, 0.052224, 0.200542,
		32.212749, 35.761448, 37.212139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832142, 35.071777, 37.420795>,  <31.527945, 35.724892, 37.071762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832142, 35.071777, 37.420795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119545, 35.335022, 37.510807>,  <32.291988, 35.492970, 37.564816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119545, 35.335022, 37.510807>,  <31.832142, 35.071777, 37.420795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119545, 35.335022, 37.510807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102988, -0.219310, 0.970204,
		0.687851, -0.720276, -0.089799,
		0.718509, 0.658108, 0.225033,
		32.335098, 35.532455, 37.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178623, 34.749481, 37.880177>,  <31.832142, 35.071777, 37.420795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178623, 34.749481, 37.880177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289082, 35.128136, 37.946663>,  <32.355358, 35.355328, 37.986557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.289082, 35.128136, 37.946663>,  <32.178623, 34.749481, 37.880177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289082, 35.128136, 37.946663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252982, -0.095253, 0.962770,
		0.927224, -0.307915, 0.213178,
		0.276145, 0.946634, 0.166218,
		32.371925, 35.412125, 37.996529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691216, 34.758213, 38.494267>,  <32.178623, 34.749481, 37.880177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691216, 34.758213, 38.494267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521553, 35.118504, 38.456760>,  <32.419758, 35.334679, 38.434258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521553, 35.118504, 38.456760>,  <32.691216, 34.758213, 38.494267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521553, 35.118504, 38.456760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293105, -0.038575, 0.955302,
		0.856845, 0.432678, 0.280368,
		-0.424153, 0.900723, -0.093767,
		32.394306, 35.388721, 38.428631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861393, 35.131477, 39.119911>,  <32.691216, 34.758213, 38.494267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861393, 35.131477, 39.119911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546616, 35.315929, 38.955921>,  <32.357750, 35.426601, 38.857529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.546616, 35.315929, 38.955921>,  <32.861393, 35.131477, 39.119911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546616, 35.315929, 38.955921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289958, 0.310121, 0.905400,
		0.544647, 0.831375, -0.110340,
		-0.786946, 0.461130, -0.409970,
		32.310532, 35.454269, 38.832932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821777, 35.687515, 39.499989>,  <32.861393, 35.131477, 39.119911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821777, 35.687515, 39.499989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462078, 35.740643, 39.333275>,  <32.246258, 35.772518, 39.233246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.462078, 35.740643, 39.333275>,  <32.821777, 35.687515, 39.499989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462078, 35.740643, 39.333275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360956, 0.312913, 0.878519,
		0.247101, 0.940449, -0.233445,
		-0.899251, 0.132820, -0.416782,
		32.192303, 35.780487, 39.208241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506744, 36.449886, 39.542473>,  <32.821777, 35.687515, 39.499989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506744, 36.449886, 39.542473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211208, 36.183022, 39.504517>,  <32.033886, 36.022903, 39.481743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211208, 36.183022, 39.504517>,  <32.506744, 36.449886, 39.542473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211208, 36.183022, 39.504517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450405, 0.384164, 0.805949,
		-0.501246, 0.638209, -0.584331,
		-0.738842, -0.667164, -0.094892,
		31.989555, 35.982872, 39.476048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934687, 36.770607, 39.586647>,  <32.506744, 36.449886, 39.542473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934687, 36.770607, 39.586647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808533, 36.404190, 39.685768>,  <31.732840, 36.184341, 39.745239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808533, 36.404190, 39.685768>,  <31.934687, 36.770607, 39.586647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808533, 36.404190, 39.685768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407491, 0.366557, 0.836414,
		-0.857020, 0.162816, -0.488884,
		-0.315385, -0.916039, 0.247801,
		31.713917, 36.129379, 39.760109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214113, 36.891529, 39.899738>,  <31.934687, 36.770607, 39.586647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214113, 36.891529, 39.899738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316774, 36.518963, 40.002964>,  <31.378372, 36.295425, 40.064899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.316774, 36.518963, 40.002964>,  <31.214113, 36.891529, 39.899738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316774, 36.518963, 40.002964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443735, 0.123649, 0.887587,
		-0.858620, -0.342315, -0.381566,
		0.256654, -0.931414, 0.258064,
		31.393770, 36.239540, 40.080383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381414, 37.605167, 40.128853>,  <31.214113, 36.891529, 39.899738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381414, 37.605167, 40.128853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561600, 37.958878, 40.178062>,  <31.669712, 38.171104, 40.207588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561600, 37.958878, 40.178062>,  <31.381414, 37.605167, 40.128853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561600, 37.958878, 40.178062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557447, 0.386217, -0.734907,
		-0.697376, 0.262470, 0.666915,
		0.450465, 0.884277, 0.123025,
		31.696739, 38.224159, 40.214970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889021, 38.203896, 40.168659>,  <31.381414, 37.605167, 40.128853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889021, 38.203896, 40.168659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246334, 38.295025, 40.013664>,  <31.460722, 38.349701, 39.920670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246334, 38.295025, 40.013664>,  <30.889021, 38.203896, 40.168659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246334, 38.295025, 40.013664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449487, 0.446563, -0.773656,
		-0.003220, 0.865262, 0.501310,
		0.893281, 0.227823, -0.387486,
		31.514318, 38.363373, 39.897419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869120, 39.011845, 40.067062>,  <30.889021, 38.203896, 40.168659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869120, 39.011845, 40.067062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133638, 38.831657, 39.827141>,  <31.292349, 38.723545, 39.683189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133638, 38.831657, 39.827141>,  <30.869120, 39.011845, 40.067062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133638, 38.831657, 39.827141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452258, 0.398496, -0.797912,
		0.598455, 0.798922, 0.059795,
		0.661298, -0.450471, -0.599801,
		31.332027, 38.696514, 39.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113367, 39.525036, 39.626709>,  <30.869120, 39.011845, 40.067062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113367, 39.525036, 39.626709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202082, 39.183468, 39.438396>,  <31.255310, 38.978527, 39.325409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202082, 39.183468, 39.438396>,  <31.113367, 39.525036, 39.626709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202082, 39.183468, 39.438396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341824, 0.384081, -0.857693,
		0.913218, 0.351150, -0.206706,
		0.221787, -0.853918, -0.470781,
		31.268618, 38.927292, 39.297161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510908, 39.700989, 39.077469>,  <31.113367, 39.525036, 39.626709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510908, 39.700989, 39.077469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359253, 39.344658, 38.977329>,  <31.268259, 39.130859, 38.917244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359253, 39.344658, 38.977329>,  <31.510908, 39.700989, 39.077469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359253, 39.344658, 38.977329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240510, 0.356121, -0.902958,
		0.893538, -0.282133, -0.349272,
		-0.379137, -0.890830, -0.250352,
		31.245512, 39.077408, 38.902225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894665, 39.471241, 38.526794>,  <31.510908, 39.700989, 39.077469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894665, 39.471241, 38.526794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550232, 39.267914, 38.521790>,  <31.343573, 39.145920, 38.518787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.550232, 39.267914, 38.521790>,  <31.894665, 39.471241, 38.526794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550232, 39.267914, 38.521790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139672, 0.260123, -0.955420,
		0.488910, -0.820946, -0.294984,
		-0.861080, -0.508315, -0.012514,
		31.291908, 39.115421, 38.518036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026371, 38.938194, 38.047688>,  <31.894665, 39.471241, 38.526794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026371, 38.938194, 38.047688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633083, 39.002697, 38.081802>,  <31.397110, 39.041401, 38.102272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.633083, 39.002697, 38.081802>,  <32.026371, 38.938194, 38.047688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633083, 39.002697, 38.081802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049213, 0.215717, -0.975215,
		-0.175661, -0.963048, -0.204162,
		-0.983219, 0.161260, 0.085288,
		31.338118, 39.051075, 38.107388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836477, 38.595104, 37.433460>,  <32.026371, 38.938194, 38.047688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836477, 38.595104, 37.433460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522377, 38.820065, 37.537064>,  <31.333918, 38.955040, 37.599224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522377, 38.820065, 37.537064>,  <31.836477, 38.595104, 37.433460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522377, 38.820065, 37.537064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244169, 0.103140, -0.964232,
		-0.569004, -0.820403, 0.056331,
		-0.785249, 0.562406, 0.259004,
		31.286802, 38.988785, 37.614765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258715, 38.365494, 36.963333>,  <31.836477, 38.595104, 37.433460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258715, 38.365494, 36.963333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.136101, 38.713875, 37.116940>,  <31.062532, 38.922905, 37.209103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.136101, 38.713875, 37.116940>,  <31.258715, 38.365494, 36.963333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136101, 38.713875, 37.116940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462807, 0.216169, -0.859698,
		-0.831772, -0.441256, 0.336821,
		-0.306537, 0.870956, 0.384020,
		31.044140, 38.975163, 37.232147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568987, 38.500408, 36.766712>,  <31.258715, 38.365494, 36.963333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568987, 38.500408, 36.766712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715553, 38.865128, 36.840862>,  <30.803493, 39.083958, 36.885353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715553, 38.865128, 36.840862>,  <30.568987, 38.500408, 36.766712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715553, 38.865128, 36.840862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414241, 0.338259, -0.844976,
		-0.833153, 0.232821, 0.501647,
		0.366415, 0.911798, 0.185377,
		30.825478, 39.138668, 36.896477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058996, 38.980732, 36.409706>,  <30.568987, 38.500408, 36.766712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058996, 38.980732, 36.409706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378334, 39.211609, 36.478401>,  <30.569937, 39.350136, 36.519619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378334, 39.211609, 36.478401>,  <30.058996, 38.980732, 36.409706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378334, 39.211609, 36.478401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345387, 0.672487, -0.654576,
		-0.493305, 0.463263, 0.736232,
		0.798347, 0.577190, 0.171737,
		30.617838, 39.384766, 36.529922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798969, 39.692600, 36.564018>,  <30.058996, 38.980732, 36.409706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798969, 39.692600, 36.564018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171272, 39.715736, 36.419605>,  <30.394653, 39.729618, 36.332958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.171272, 39.715736, 36.419605>,  <29.798969, 39.692600, 36.564018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171272, 39.715736, 36.419605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308314, 0.654937, -0.689928,
		0.196551, 0.753467, 0.627419,
		0.930758, 0.057836, -0.361033,
		30.450500, 39.733086, 36.311295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809166, 40.373581, 36.371468>,  <29.798969, 39.692600, 36.564018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809166, 40.373581, 36.371468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.127716, 40.217480, 36.186653>,  <30.318846, 40.123817, 36.075764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.127716, 40.217480, 36.186653>,  <29.809166, 40.373581, 36.371468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127716, 40.217480, 36.186653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012976, 0.752756, -0.658172,
		0.604660, 0.530149, 0.594414,
		0.796378, -0.390258, -0.462041,
		30.366629, 40.100403, 36.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235001, 40.869404, 36.242756>,  <29.809166, 40.373581, 36.371468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235001, 40.869404, 36.242756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368866, 40.600815, 35.978294>,  <30.449184, 40.439663, 35.819618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368866, 40.600815, 35.978294>,  <30.235001, 40.869404, 36.242756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368866, 40.600815, 35.978294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000957, 0.701369, -0.712797,
		0.942338, 0.239179, 0.234079,
		0.334662, -0.671472, -0.661156,
		30.469265, 40.399372, 35.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676003, 41.241592, 35.732407>,  <30.235001, 40.869404, 36.242756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676003, 41.241592, 35.732407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570946, 40.910934, 35.533340>,  <30.507912, 40.712540, 35.413902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.570946, 40.910934, 35.533340>,  <30.676003, 41.241592, 35.732407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570946, 40.910934, 35.533340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007189, 0.517436, -0.855691,
		0.964866, -0.221164, -0.141843,
		-0.262643, -0.826648, -0.497667,
		30.492153, 40.662941, 35.384041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940504, 41.349335, 35.059784>,  <30.676003, 41.241592, 35.732407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940504, 41.349335, 35.059784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.678604, 41.054955, 34.990875>,  <30.521463, 40.878326, 34.949528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.678604, 41.054955, 34.990875>,  <30.940504, 41.349335, 35.059784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678604, 41.054955, 34.990875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212492, 0.397955, -0.892457,
		0.725362, -0.547729, -0.416945,
		-0.654749, -0.735952, -0.172274,
		30.482180, 40.834167, 34.939194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971920, 41.073330, 34.302517>,  <30.940504, 41.349335, 35.059784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971920, 41.073330, 34.302517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618330, 40.958954, 34.450474>,  <30.406176, 40.890327, 34.539249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.618330, 40.958954, 34.450474>,  <30.971920, 41.073330, 34.302517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618330, 40.958954, 34.450474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465919, 0.473150, -0.747695,
		0.038782, -0.833286, -0.551480,
		-0.883977, -0.285942, 0.369894,
		30.353136, 40.873173, 34.561443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630714, 40.938446, 33.680286>,  <30.971920, 41.073330, 34.302517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630714, 40.938446, 33.680286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330482, 40.937832, 33.944595>,  <30.150343, 40.937466, 34.103180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330482, 40.937832, 33.944595>,  <30.630714, 40.938446, 33.680286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330482, 40.937832, 33.944595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581095, 0.477592, -0.658965,
		-0.314572, -0.878580, -0.359362,
		-0.750582, -0.001531, 0.660776,
		30.105309, 40.937374, 34.142826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189844, 40.448875, 33.495411>,  <30.630714, 40.938446, 33.680286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189844, 40.448875, 33.495411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022028, 40.749405, 33.699177>,  <29.921339, 40.929722, 33.821434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022028, 40.749405, 33.699177>,  <30.189844, 40.448875, 33.495411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022028, 40.749405, 33.699177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527813, 0.254657, -0.810286,
		-0.738513, -0.608819, 0.289721,
		-0.419538, 0.751325, 0.509410,
		29.896166, 40.974804, 33.852001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650930, 40.463650, 33.163139>,  <30.189844, 40.448875, 33.495411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650930, 40.463650, 33.163139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643646, 40.804596, 33.372192>,  <29.639277, 41.009163, 33.497623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.643646, 40.804596, 33.372192>,  <29.650930, 40.463650, 33.163139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643646, 40.804596, 33.372192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388589, 0.475593, -0.789183,
		-0.921231, -0.217461, 0.322558,
		-0.018210, 0.852363, 0.522634,
		29.638184, 41.060307, 33.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934549, 40.737614, 33.247707>,  <29.650930, 40.463650, 33.163139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934549, 40.737614, 33.247707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160183, 41.065628, 33.286381>,  <29.295563, 41.262436, 33.309586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160183, 41.065628, 33.286381>,  <28.934549, 40.737614, 33.247707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160183, 41.065628, 33.286381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387109, 0.366058, -0.846255,
		-0.729354, 0.439931, 0.523931,
		0.564083, 0.820038, 0.096685,
		29.329409, 41.311638, 33.315388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530371, 41.234890, 32.876678>,  <28.934549, 40.737614, 33.247707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530371, 41.234890, 32.876678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.901461, 41.373558, 32.932030>,  <29.124115, 41.456760, 32.965240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.901461, 41.373558, 32.932030>,  <28.530371, 41.234890, 32.876678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901461, 41.373558, 32.932030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079830, 0.546421, -0.833697,
		-0.364634, 0.762393, 0.534602,
		0.927723, 0.346671, 0.138382,
		29.179777, 41.477558, 32.973545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422808, 41.942184, 32.798832>,  <28.530371, 41.234890, 32.876678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422808, 41.942184, 32.798832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808683, 41.864689, 32.727451>,  <29.040209, 41.818192, 32.684624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.808683, 41.864689, 32.727451>,  <28.422808, 41.942184, 32.798832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808683, 41.864689, 32.727451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044781, 0.546983, -0.835945,
		0.259564, 0.814417, 0.518991,
		0.964687, -0.193740, -0.178448,
		29.098089, 41.806568, 32.673916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820740, 42.567928, 32.677616>,  <28.422808, 41.942184, 32.798832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820740, 42.567928, 32.677616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.043224, 42.297321, 32.484554>,  <29.176716, 42.134956, 32.368717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.043224, 42.297321, 32.484554>,  <28.820740, 42.567928, 32.677616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043224, 42.297321, 32.484554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079823, 0.534605, -0.841324,
		0.827197, 0.506482, 0.243353,
		0.556213, -0.676516, -0.482652,
		29.210089, 42.094368, 32.339760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203110, 42.928726, 32.231365>,  <28.820740, 42.567928, 32.677616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203110, 42.928726, 32.231365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.224321, 42.564445, 32.067509>,  <29.237049, 42.345879, 31.969194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.224321, 42.564445, 32.067509>,  <29.203110, 42.928726, 32.231365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224321, 42.564445, 32.067509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066425, 0.412532, -0.908518,
		0.996381, 0.020968, 0.082370,
		0.053030, -0.910702, -0.409646,
		29.240231, 42.291233, 31.944614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765341, 42.922489, 31.827917>,  <29.203110, 42.928726, 32.231365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765341, 42.922489, 31.827917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553312, 42.611477, 31.692581>,  <29.426094, 42.424870, 31.611380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.553312, 42.611477, 31.692581>,  <29.765341, 42.922489, 31.827917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553312, 42.611477, 31.692581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008697, 0.403970, -0.914731,
		0.847908, -0.481931, -0.220895,
		-0.530072, -0.777529, -0.338338,
		29.394291, 42.378220, 31.591080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136553, 42.539974, 31.317585>,  <29.765341, 42.922489, 31.827917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136553, 42.539974, 31.317585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750790, 42.455120, 31.254440>,  <29.519333, 42.404205, 31.216555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.750790, 42.455120, 31.254440>,  <30.136553, 42.539974, 31.317585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750790, 42.455120, 31.254440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029446, 0.507116, -0.861375,
		0.262782, -0.835363, -0.482820,
		-0.964406, -0.212136, -0.157859,
		29.461468, 42.391479, 31.207083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710316, 42.145977, 30.964193>,  <30.136553, 42.539974, 31.317585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710316, 42.145977, 30.964193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024218, 42.364834, 30.847719>,  <31.212559, 42.496147, 30.777836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024218, 42.364834, 30.847719>,  <30.710316, 42.145977, 30.964193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024218, 42.364834, 30.847719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356884, -0.014789, 0.934032,
		0.506746, -0.836906, -0.206873,
		0.784756, 0.547146, -0.291184,
		31.259645, 42.528976, 30.760365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215782, 41.962139, 31.316309>,  <30.710316, 42.145977, 30.964193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215782, 41.962139, 31.316309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361429, 42.319950, 31.212589>,  <31.448818, 42.534637, 31.150358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361429, 42.319950, 31.212589>,  <31.215782, 41.962139, 31.316309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361429, 42.319950, 31.212589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484330, 0.055941, 0.873095,
		0.795515, -0.443495, -0.412878,
		0.364117, 0.894529, -0.259300,
		31.470665, 42.588310, 31.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745800, 41.967037, 31.688688>,  <31.215782, 41.962139, 31.316309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745800, 41.967037, 31.688688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742527, 42.348118, 31.567171>,  <31.740562, 42.576767, 31.494261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742527, 42.348118, 31.567171>,  <31.745800, 41.967037, 31.688688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742527, 42.348118, 31.567171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568723, 0.254315, 0.782226,
		0.822488, -0.166373, -0.543906,
		-0.008182, 0.952704, -0.303791,
		31.740072, 42.633930, 31.476034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495514, 42.229076, 31.674389>,  <31.745800, 41.967037, 31.688688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495514, 42.229076, 31.674389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219158, 42.515041, 31.717424>,  <32.053345, 42.686623, 31.743246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219158, 42.515041, 31.717424>,  <32.495514, 42.229076, 31.674389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219158, 42.515041, 31.717424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378367, 0.230746, 0.896434,
		0.616049, 0.660041, -0.429919,
		-0.690885, 0.714915, 0.107587,
		32.011894, 42.729515, 31.749701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864063, 42.907810, 31.733067>,  <32.495514, 42.229076, 31.674389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864063, 42.907810, 31.733067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506981, 42.933407, 31.911493>,  <32.292732, 42.948765, 32.018551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.506981, 42.933407, 31.911493>,  <32.864063, 42.907810, 31.733067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506981, 42.933407, 31.911493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448001, 0.232847, 0.863179,
		-0.048630, 0.970406, -0.236532,
		-0.892709, 0.063990, 0.446066,
		32.239166, 42.952602, 32.045315>
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
