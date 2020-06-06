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
	<24.356064, 34.948425, 34.554947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183434, 35.117538, 34.873692>,  <24.079855, 35.219006, 35.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.183434, 35.117538, 34.873692>,  <24.356064, 34.948425, 34.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183434, 35.117538, 34.873692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631678, -0.488993, 0.601556,
		0.643991, 0.762979, -0.056027,
		-0.431578, 0.422787, 0.796864,
		24.053961, 35.244373, 35.112751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948345, 35.191467, 34.850578>,  <24.356064, 34.948425, 34.554947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948345, 35.191467, 34.850578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645811, 35.066696, 35.080589>,  <24.464291, 34.991833, 35.218597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645811, 35.066696, 35.080589>,  <24.948345, 35.191467, 34.850578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645811, 35.066696, 35.080589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649917, -0.458495, 0.606127,
		0.074583, 0.832158, 0.549501,
		-0.756337, -0.311923, 0.575029,
		24.418911, 34.973118, 35.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870449, 35.490898, 35.616077>,  <24.948345, 35.191467, 34.850578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870449, 35.490898, 35.616077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746664, 35.113033, 35.572536>,  <24.672392, 34.886314, 35.546410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746664, 35.113033, 35.572536>,  <24.870449, 35.490898, 35.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746664, 35.113033, 35.572536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855508, -0.326561, 0.401824,
		-0.415135, 0.031223, 0.909224,
		-0.309464, -0.944660, -0.108855,
		24.653826, 34.829636, 35.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087040, 35.107822, 36.215801>,  <24.870449, 35.490898, 35.616077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087040, 35.107822, 36.215801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009333, 34.823559, 35.945328>,  <24.962708, 34.653000, 35.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009333, 34.823559, 35.945328>,  <25.087040, 35.107822, 36.215801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009333, 34.823559, 35.945328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803886, -0.510372, 0.305432,
		-0.562163, -0.484238, 0.670438,
		-0.194271, -0.710658, -0.676184,
		24.951052, 34.610363, 35.742474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020350, 34.504452, 36.508461>,  <25.087040, 35.107822, 36.215801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020350, 34.504452, 36.508461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173019, 34.452839, 36.142365>,  <25.264622, 34.421871, 35.922707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173019, 34.452839, 36.142365>,  <25.020350, 34.504452, 36.508461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173019, 34.452839, 36.142365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738207, -0.553323, 0.385855,
		-0.556220, -0.822910, -0.115924,
		0.381667, -0.129045, -0.915247,
		25.287521, 34.414127, 35.867790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216467, 33.787903, 36.460430>,  <25.020350, 34.504452, 36.508461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216467, 33.787903, 36.460430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443007, 33.993698, 36.202888>,  <25.578930, 34.117176, 36.048363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443007, 33.993698, 36.202888>,  <25.216467, 33.787903, 36.460430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443007, 33.993698, 36.202888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811739, -0.483365, 0.327778,
		-0.142577, -0.708278, -0.691386,
		0.566349, 0.514491, -0.643854,
		25.612911, 34.148045, 36.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524166, 33.297337, 36.001732>,  <25.216467, 33.787903, 36.460430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524166, 33.297337, 36.001732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777727, 33.603596, 35.958012>,  <25.929865, 33.787354, 35.931782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777727, 33.603596, 35.958012>,  <25.524166, 33.297337, 36.001732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777727, 33.603596, 35.958012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769233, -0.609482, 0.191867,
		0.080289, -0.205699, -0.975316,
		0.633904, 0.765650, -0.109296,
		25.967899, 33.833290, 35.925224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994297, 33.270432, 35.446579>,  <25.524166, 33.297337, 36.001732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994297, 33.270432, 35.446579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173323, 33.467381, 35.745178>,  <26.280737, 33.585548, 35.924339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173323, 33.467381, 35.745178>,  <25.994297, 33.270432, 35.446579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173323, 33.467381, 35.745178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557466, -0.806338, 0.197612,
		0.699228, 0.327703, -0.635367,
		0.447562, 0.492371, 0.746498,
		26.307590, 33.615093, 35.969128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711187, 33.321136, 35.117428>,  <25.994297, 33.270432, 35.446579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711187, 33.321136, 35.117428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678226, 33.335167, 35.515820>,  <26.658449, 33.343586, 35.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678226, 33.335167, 35.515820>,  <26.711187, 33.321136, 35.117428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678226, 33.335167, 35.515820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618449, -0.781873, 0.078706,
		0.781492, 0.622450, 0.042736,
		-0.082404, 0.035078, 0.995982,
		26.653505, 33.345692, 35.814613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246279, 33.094917, 35.346481>,  <26.711187, 33.321136, 35.117428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246279, 33.094917, 35.346481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067501, 33.046841, 35.701061>,  <26.960236, 33.017994, 35.913811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067501, 33.046841, 35.701061>,  <27.246279, 33.094917, 35.346481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067501, 33.046841, 35.701061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506538, -0.850769, 0.140040,
		0.737333, 0.511611, 0.441127,
		-0.446943, -0.120192, 0.886451,
		26.933418, 33.010784, 35.966995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809746, 33.106464, 35.835648>,  <27.246279, 33.094917, 35.346481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809746, 33.106464, 35.835648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511452, 32.910610, 36.016373>,  <27.332476, 32.793098, 36.124805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511452, 32.910610, 36.016373>,  <27.809746, 33.106464, 35.835648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511452, 32.910610, 36.016373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588662, -0.801835, 0.102650,
		0.312016, 0.342513, 0.886189,
		-0.745736, -0.489638, 0.451810,
		27.287731, 32.763718, 36.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927439, 32.812969, 36.459568>,  <27.809746, 33.106464, 35.835648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927439, 32.812969, 36.459568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637739, 32.558899, 36.352222>,  <27.463921, 32.406456, 36.287815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637739, 32.558899, 36.352222>,  <27.927439, 32.812969, 36.459568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637739, 32.558899, 36.352222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526555, -0.760737, 0.379499,
		-0.445203, 0.133541, 0.885416,
		-0.724247, -0.635174, -0.268365,
		27.420465, 32.368347, 36.271713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227596, 32.190914, 36.820118>,  <27.927439, 32.812969, 36.459568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227596, 32.190914, 36.820118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094372, 31.815485, 36.856243>,  <28.014437, 31.590227, 36.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094372, 31.815485, 36.856243>,  <28.227596, 32.190914, 36.820118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094372, 31.815485, 36.856243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838319, 0.250912, -0.484010,
		0.431618, -0.236913, -0.870390,
		-0.333059, -0.938571, 0.090310,
		27.994453, 31.533915, 36.883335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953445, 31.785593, 36.105553>,  <28.227596, 32.190914, 36.820118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953445, 31.785593, 36.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770466, 31.753593, 36.459805>,  <27.660677, 31.734394, 36.672356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770466, 31.753593, 36.459805>,  <27.953445, 31.785593, 36.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770466, 31.753593, 36.459805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804352, 0.461877, -0.373748,
		-0.379153, -0.883329, -0.275631,
		-0.457450, -0.079997, 0.885629,
		27.633230, 31.729595, 36.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203398, 31.568090, 36.061249>,  <27.953445, 31.785593, 36.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203398, 31.568090, 36.061249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255150, 31.800974, 36.382320>,  <27.286201, 31.940704, 36.574963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255150, 31.800974, 36.382320>,  <27.203398, 31.568090, 36.061249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255150, 31.800974, 36.382320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684020, 0.638454, -0.352836,
		-0.717898, -0.503400, 0.480844,
		0.129379, 0.582207, 0.802680,
		27.293964, 31.975636, 36.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476580, 31.765335, 36.329243>,  <27.203398, 31.568090, 36.061249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476580, 31.765335, 36.329243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770378, 32.022999, 36.414635>,  <26.946657, 32.177597, 36.465870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770378, 32.022999, 36.414635>,  <26.476580, 31.765335, 36.329243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770378, 32.022999, 36.414635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610671, 0.764603, -0.206068,
		-0.295971, 0.020987, 0.954966,
		0.734495, 0.644160, 0.213484,
		26.990726, 32.216248, 36.478680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176250, 32.330475, 36.763260>,  <26.476580, 31.765335, 36.329243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176250, 32.330475, 36.763260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523180, 32.455864, 36.608608>,  <26.731339, 32.531097, 36.515816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523180, 32.455864, 36.608608>,  <26.176250, 32.330475, 36.763260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523180, 32.455864, 36.608608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416387, 0.882532, -0.218538,
		0.272710, 0.350532, 0.895967,
		0.867324, 0.313472, -0.386632,
		26.783377, 32.549904, 36.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.349396, 32.986053, 37.095013>,  <26.176250, 32.330475, 36.763260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.349396, 32.986053, 37.095013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561266, 32.997982, 36.755943>,  <26.688389, 33.005138, 36.552502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561266, 32.997982, 36.755943>,  <26.349396, 32.986053, 37.095013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561266, 32.997982, 36.755943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405680, 0.886569, -0.222303,
		0.744893, 0.461633, 0.481693,
		0.529677, 0.029821, -0.847675,
		26.720169, 33.006927, 36.501640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668634, 33.637562, 37.157154>,  <26.349396, 32.986053, 37.095013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668634, 33.637562, 37.157154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670994, 33.518085, 36.775421>,  <26.672409, 33.446400, 36.546383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670994, 33.518085, 36.775421>,  <26.668634, 33.637562, 37.157154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670994, 33.518085, 36.775421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363146, 0.888555, -0.280348,
		0.931714, 0.348216, -0.103228,
		0.005898, -0.298691, -0.954332,
		26.672764, 33.428478, 36.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142878, 34.110767, 36.868443>,  <26.668634, 33.637562, 37.157154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142878, 34.110767, 36.868443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876957, 33.956287, 36.612663>,  <26.717405, 33.863602, 36.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876957, 33.956287, 36.612663>,  <27.142878, 34.110767, 36.868443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876957, 33.956287, 36.612663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304620, 0.921743, -0.239992,
		0.682091, 0.035242, -0.730418,
		-0.664800, -0.386196, -0.639449,
		26.677517, 33.840427, 36.420830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777277, 34.619251, 36.543026>,  <27.142878, 34.110767, 36.868443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777277, 34.619251, 36.543026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672604, 34.327824, 36.289818>,  <26.609798, 34.152969, 36.137894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672604, 34.327824, 36.289818>,  <26.777277, 34.619251, 36.543026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672604, 34.327824, 36.289818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474173, 0.668313, -0.573165,
		0.840643, 0.150172, -0.520353,
		-0.261685, -0.728565, -0.633020,
		26.594097, 34.109253, 36.099911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680485, 34.888741, 35.865437>,  <26.777277, 34.619251, 36.543026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680485, 34.888741, 35.865437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471411, 34.548092, 35.849712>,  <26.345966, 34.343704, 35.840279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471411, 34.548092, 35.849712>,  <26.680485, 34.888741, 35.865437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471411, 34.548092, 35.849712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781438, 0.497029, -0.377250,
		0.340812, -0.166464, -0.925277,
		-0.522687, -0.851618, -0.039312,
		26.314604, 34.292606, 35.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389965, 34.899040, 35.234825>,  <26.680485, 34.888741, 35.865437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389965, 34.899040, 35.234825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163670, 34.668533, 35.470741>,  <26.027893, 34.530228, 35.612293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163670, 34.668533, 35.470741>,  <26.389965, 34.899040, 35.234825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163670, 34.668533, 35.470741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820177, 0.467109, -0.330331,
		-0.085139, -0.670616, -0.736902,
		-0.565739, -0.576266, 0.589794,
		25.993948, 34.495655, 35.647678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261177, 34.329052, 34.743069>,  <26.389965, 34.899040, 35.234825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261177, 34.329052, 34.743069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152725, 34.596233, 34.465847>,  <26.087654, 34.756542, 34.299515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152725, 34.596233, 34.465847>,  <26.261177, 34.329052, 34.743069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152725, 34.596233, 34.465847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954028, 0.090925, -0.285592,
		-0.127746, -0.738627, -0.661899,
		-0.271129, 0.667954, -0.693056,
		26.071386, 34.796619, 34.257931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856005, 34.245716, 34.253220>,  <26.261177, 34.329052, 34.743069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856005, 34.245716, 34.253220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651730, 34.581444, 34.178665>,  <26.529163, 34.782879, 34.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651730, 34.581444, 34.178665>,  <26.856005, 34.245716, 34.253220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651730, 34.581444, 34.178665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810857, 0.398108, -0.428977,
		-0.285846, -0.370207, -0.883877,
		-0.510689, 0.839319, -0.186387,
		26.498524, 34.833241, 34.122749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300507, 34.414623, 33.558239>,  <26.856005, 34.245716, 34.253220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300507, 34.414623, 33.558239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438395, 34.536484, 33.203079>,  <27.521128, 34.609600, 32.989983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.438395, 34.536484, 33.203079>,  <27.300507, 34.414623, 33.558239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438395, 34.536484, 33.203079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432085, 0.891207, 0.138032,
		0.833349, 0.336064, 0.438851,
		0.344719, 0.304650, -0.887895,
		27.541811, 34.627880, 32.936710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624729, 35.157978, 33.553196>,  <27.300507, 34.414623, 33.558239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624729, 35.157978, 33.553196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460695, 35.045593, 33.206120>,  <27.362274, 34.978161, 32.997875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460695, 35.045593, 33.206120>,  <27.624729, 35.157978, 33.553196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460695, 35.045593, 33.206120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471637, 0.879616, -0.061921,
		0.780632, 0.383842, -0.493232,
		-0.410087, -0.280964, -0.867691,
		27.337669, 34.961304, 32.945812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842888, 35.510849, 32.893681>,  <27.624729, 35.157978, 33.553196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842888, 35.510849, 32.893681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472443, 35.367638, 32.846130>,  <27.250175, 35.281712, 32.817600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472443, 35.367638, 32.846130>,  <27.842888, 35.510849, 32.893681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472443, 35.367638, 32.846130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331449, 0.922711, -0.196839,
		0.180162, -0.142893, -0.973203,
		-0.926112, -0.358030, -0.118876,
		27.194609, 35.260227, 32.810467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209499, 35.399567, 32.270939>,  <27.842888, 35.510849, 32.893681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209499, 35.399567, 32.270939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212273, 35.275551, 31.890661>,  <28.213936, 35.201141, 31.662493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212273, 35.275551, 31.890661>,  <28.209499, 35.399567, 32.270939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212273, 35.275551, 31.890661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864881, -0.475348, 0.161326,
		-0.501929, -0.823359, 0.264852,
		0.006933, -0.310039, -0.950698,
		28.214352, 35.182541, 31.605452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734348, 34.852768, 32.420918>,  <28.209499, 35.399567, 32.270939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734348, 34.852768, 32.420918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695992, 34.912685, 32.027294>,  <28.672977, 34.948635, 31.791121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695992, 34.912685, 32.027294>,  <28.734348, 34.852768, 32.420918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695992, 34.912685, 32.027294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953172, -0.271053, -0.134141,
		-0.286825, -0.950837, -0.116788,
		-0.095891, 0.149794, -0.984056,
		28.667225, 34.957623, 31.732077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852318, 34.194534, 31.891806>,  <28.734348, 34.852768, 32.420918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852318, 34.194534, 31.891806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957298, 34.553009, 31.748716>,  <29.020287, 34.768093, 31.662863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957298, 34.553009, 31.748716>,  <28.852318, 34.194534, 31.891806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957298, 34.553009, 31.748716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950296, -0.304401, -0.065399,
		-0.167501, -0.322780, -0.931534,
		0.262450, 0.896188, -0.357724,
		29.036034, 34.821865, 31.641399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203409, 34.065830, 31.326040>,  <28.852318, 34.194534, 31.891806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203409, 34.065830, 31.326040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318487, 34.420872, 31.469921>,  <29.387533, 34.633896, 31.556250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318487, 34.420872, 31.469921>,  <29.203409, 34.065830, 31.326040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318487, 34.420872, 31.469921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955421, -0.239966, -0.172012,
		-0.066363, 0.393153, -0.917075,
		0.287693, 0.887608, 0.359701,
		29.404795, 34.687153, 31.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575274, 34.343712, 30.811523>,  <29.203409, 34.065830, 31.326040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575274, 34.343712, 30.811523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724033, 34.514111, 31.141426>,  <29.813290, 34.616348, 31.339367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724033, 34.514111, 31.141426>,  <29.575274, 34.343712, 30.811523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724033, 34.514111, 31.141426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918174, -0.299517, -0.259320,
		0.136560, 0.853710, -0.502525,
		0.371898, 0.425992, 0.824756,
		29.835604, 34.641907, 31.388853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072699, 34.836823, 30.521902>,  <29.575274, 34.343712, 30.811523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072699, 34.836823, 30.521902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156252, 34.776165, 30.908346>,  <30.206385, 34.739773, 31.140213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156252, 34.776165, 30.908346>,  <30.072699, 34.836823, 30.521902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156252, 34.776165, 30.908346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977707, 0.053973, -0.202918,
		-0.021373, 0.986961, 0.159534,
		0.208883, -0.151640, 0.966112,
		30.218916, 34.730675, 31.198179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708050, 34.693203, 30.224506>,  <30.072699, 34.836823, 30.521902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708050, 34.693203, 30.224506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473129, 34.965118, 30.048794>,  <30.332176, 35.128265, 29.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473129, 34.965118, 30.048794>,  <30.708050, 34.693203, 30.224506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473129, 34.965118, 30.048794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803368, -0.423651, 0.418474,
		0.098371, 0.598675, 0.794929,
		-0.587302, 0.679786, -0.439281,
		30.296938, 35.169056, 29.917009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423586, 34.547276, 30.276339>,  <30.708050, 34.693203, 30.224506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423586, 34.547276, 30.276339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591373, 34.580044, 30.637966>,  <31.692045, 34.599705, 30.854942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591373, 34.580044, 30.637966>,  <31.423586, 34.547276, 30.276339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591373, 34.580044, 30.637966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906871, 0.082148, 0.413324,
		-0.040409, -0.993248, 0.108748,
		0.419467, 0.081918, 0.904067,
		31.717213, 34.604618, 30.909185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070343, 34.070568, 30.610043>,  <31.423586, 34.547276, 30.276339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070343, 34.070568, 30.610043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225201, 34.332600, 30.869579>,  <31.318115, 34.489819, 31.025301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225201, 34.332600, 30.869579>,  <31.070343, 34.070568, 30.610043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225201, 34.332600, 30.869579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861037, 0.005186, 0.508517,
		0.329752, -0.755546, 0.566051,
		0.387143, 0.655075, 0.648842,
		31.341343, 34.529121, 31.064232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984282, 33.787819, 31.322733>,  <31.070343, 34.070568, 30.610043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984282, 33.787819, 31.322733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997261, 34.187599, 31.325438>,  <31.005049, 34.427467, 31.327061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997261, 34.187599, 31.325438>,  <30.984282, 33.787819, 31.322733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997261, 34.187599, 31.325438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851318, 0.024096, 0.524097,
		0.523646, -0.022761, 0.851632,
		0.032450, 0.999451, 0.006760,
		31.006996, 34.487434, 31.327465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945036, 33.955868, 31.996262>,  <30.984282, 33.787819, 31.322733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945036, 33.955868, 31.996262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820509, 34.269257, 31.781136>,  <30.745792, 34.457291, 31.652060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820509, 34.269257, 31.781136>,  <30.945036, 33.955868, 31.996262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820509, 34.269257, 31.781136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846188, 0.029015, 0.532093,
		0.432487, 0.620744, 0.653935,
		-0.311320, 0.783476, -0.537815,
		30.727114, 34.504299, 31.619791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621737, 34.450230, 32.480999>,  <30.945036, 33.955868, 31.996262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621737, 34.450230, 32.480999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512262, 34.579411, 32.118607>,  <30.446577, 34.656918, 31.901173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512262, 34.579411, 32.118607>,  <30.621737, 34.450230, 32.480999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512262, 34.579411, 32.118607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921730, 0.181043, 0.342982,
		0.274789, 0.928937, 0.248126,
		-0.273687, 0.322953, -0.905978,
		30.430157, 34.676296, 31.846813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219160, 35.225471, 32.564335>,  <30.621737, 34.450230, 32.480999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219160, 35.225471, 32.564335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110273, 35.056561, 32.218487>,  <30.044941, 34.955212, 32.010979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110273, 35.056561, 32.218487>,  <30.219160, 35.225471, 32.564335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110273, 35.056561, 32.218487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948342, 0.269884, 0.166765,
		0.162927, 0.865356, -0.473934,
		-0.272218, -0.422281, -0.864625,
		30.028608, 34.929874, 31.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883303, 35.772579, 32.137630>,  <30.219160, 35.225471, 32.564335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883303, 35.772579, 32.137630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748310, 35.416927, 32.013985>,  <29.667315, 35.203537, 31.939798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.748310, 35.416927, 32.013985>,  <29.883303, 35.772579, 32.137630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748310, 35.416927, 32.013985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931682, 0.362398, -0.025220,
		0.134446, 0.279484, -0.950691,
		-0.337480, -0.889132, -0.309113,
		29.647066, 35.150188, 31.921251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544485, 35.760288, 31.505459>,  <29.883303, 35.772579, 32.137630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544485, 35.760288, 31.505459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381666, 35.498020, 31.759832>,  <29.283974, 35.340660, 31.912457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.381666, 35.498020, 31.759832>,  <29.544485, 35.760288, 31.505459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381666, 35.498020, 31.759832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865377, 0.499617, -0.038790,
		-0.292290, -0.566111, -0.770769,
		-0.407049, -0.655668, 0.635933,
		29.259552, 35.301319, 31.950613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996754, 36.133316, 31.168762>,  <29.544485, 35.760288, 31.505459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996754, 36.133316, 31.168762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316542, 36.369663, 31.212080>,  <30.508415, 36.511471, 31.238071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316542, 36.369663, 31.212080>,  <29.996754, 36.133316, 31.168762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316542, 36.369663, 31.212080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067597, -0.267625, 0.961149,
		0.596890, -0.761090, -0.253898,
		0.799470, 0.590863, 0.108296,
		30.556383, 36.546921, 31.244568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448599, 35.637207, 30.834280>,  <29.996754, 36.133316, 31.168762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448599, 35.637207, 30.834280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505638, 35.300678, 31.042833>,  <30.539862, 35.098763, 31.167965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505638, 35.300678, 31.042833>,  <30.448599, 35.637207, 30.834280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505638, 35.300678, 31.042833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979245, 0.043265, -0.198011,
		0.144033, 0.538799, 0.830030,
		0.142600, -0.841323, 0.521384,
		30.548418, 35.048283, 31.199249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026037, 35.801159, 31.352434>,  <30.448599, 35.637207, 30.834280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026037, 35.801159, 31.352434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010248, 35.402092, 31.330124>,  <31.000774, 35.162651, 31.316738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010248, 35.402092, 31.330124>,  <31.026037, 35.801159, 31.352434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010248, 35.402092, 31.330124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992723, -0.032800, -0.115863,
		0.113763, -0.059942, 0.991698,
		-0.039472, -0.997663, -0.055774,
		30.998407, 35.102795, 31.313391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484491, 35.416393, 31.938238>,  <31.026037, 35.801159, 31.352434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484491, 35.416393, 31.938238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479654, 35.171223, 31.622219>,  <31.476751, 35.024120, 31.432608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479654, 35.171223, 31.622219>,  <31.484491, 35.416393, 31.938238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479654, 35.171223, 31.622219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997933, 0.042472, -0.048224,
		0.063113, -0.788996, 0.611149,
		-0.012092, -0.612929, -0.790045,
		31.476027, 34.987343, 31.385206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929298, 34.771576, 31.976320>,  <31.484491, 35.416393, 31.938238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929298, 34.771576, 31.976320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872129, 34.930580, 31.613760>,  <31.837828, 35.025982, 31.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872129, 34.930580, 31.613760>,  <31.929298, 34.771576, 31.976320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872129, 34.930580, 31.613760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978159, -0.082915, -0.190600,
		-0.150920, -0.913844, -0.376979,
		-0.142922, 0.397511, -0.906399,
		31.829252, 35.049835, 31.341841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342964, 34.460224, 31.401609>,  <31.929298, 34.771576, 31.976320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342964, 34.460224, 31.401609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286041, 34.841263, 31.294052>,  <32.251888, 35.069885, 31.229517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286041, 34.841263, 31.294052>,  <32.342964, 34.460224, 31.401609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286041, 34.841263, 31.294052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983958, 0.106623, -0.143031,
		-0.107581, -0.284935, -0.952491,
		-0.142312, 0.952598, -0.268894,
		32.243347, 35.127041, 31.213385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643116, 34.640854, 30.756289>,  <32.342964, 34.460224, 31.401609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643116, 34.640854, 30.756289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631260, 34.989834, 30.951408>,  <32.624146, 35.199223, 31.068481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631260, 34.989834, 30.951408>,  <32.643116, 34.640854, 30.756289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631260, 34.989834, 30.951408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999208, 0.012889, 0.037658,
		0.026567, 0.488532, -0.872142,
		-0.029638, 0.872451, 0.487802,
		32.622368, 35.251568, 31.097750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297066, 34.971912, 30.553226>,  <32.643116, 34.640854, 30.756289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297066, 34.971912, 30.553226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177773, 35.162643, 30.883968>,  <33.106197, 35.277081, 31.082415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177773, 35.162643, 30.883968>,  <33.297066, 34.971912, 30.553226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177773, 35.162643, 30.883968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952295, 0.089904, 0.291636,
		0.064722, 0.874388, -0.480892,
		-0.298237, 0.476826, 0.826856,
		33.088303, 35.305691, 31.132025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514633, 35.733315, 30.556063>,  <33.297066, 34.971912, 30.553226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514633, 35.733315, 30.556063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460308, 35.587601, 30.924595>,  <33.427711, 35.500172, 31.145714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460308, 35.587601, 30.924595>,  <33.514633, 35.733315, 30.556063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460308, 35.587601, 30.924595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983943, 0.059102, 0.168415,
		-0.115803, 0.929411, 0.350407,
		-0.135817, -0.364283, 0.921331,
		33.419563, 35.478317, 31.200994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792614, 36.211250, 31.065016>,  <33.514633, 35.733315, 30.556063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792614, 36.211250, 31.065016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807320, 35.830524, 31.186796>,  <33.816143, 35.602089, 31.259865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807320, 35.830524, 31.186796>,  <33.792614, 36.211250, 31.065016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807320, 35.830524, 31.186796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961653, 0.116556, 0.248270,
		-0.271793, 0.283648, 0.919604,
		0.036764, -0.951819, 0.304450,
		33.818348, 35.544979, 31.278131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425030, 35.896412, 30.996189>,  <33.792614, 36.211250, 31.065016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425030, 35.896412, 30.996189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774036, 35.722961, 30.906136>,  <34.983440, 35.618893, 30.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774036, 35.722961, 30.906136>,  <34.425030, 35.896412, 30.996189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774036, 35.722961, 30.906136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347678, 0.874782, -0.337455,
		0.343271, 0.216162, 0.914024,
		0.872516, -0.433625, -0.225133,
		35.035789, 35.592873, 30.838596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961380, 36.272369, 31.291302>,  <34.425030, 35.896412, 30.996189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961380, 36.272369, 31.291302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144436, 36.068619, 30.999794>,  <35.254269, 35.946369, 30.824890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144436, 36.068619, 30.999794>,  <34.961380, 36.272369, 31.291302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144436, 36.068619, 30.999794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340703, 0.857535, -0.385428,
		0.821271, -0.071907, 0.565988,
		0.457640, -0.509375, -0.728768,
		35.281727, 35.915806, 30.781164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666420, 36.797024, 31.550816>,  <34.961380, 36.272369, 31.291302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666420, 36.797024, 31.550816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805878, 37.078232, 31.798756>,  <34.889553, 37.246956, 31.947519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805878, 37.078232, 31.798756>,  <34.666420, 36.797024, 31.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805878, 37.078232, 31.798756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706220, -0.237754, 0.666879,
		0.616198, -0.670254, 0.413593,
		0.348645, 0.703017, 0.619850,
		34.910473, 37.289139, 31.984711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884769, 36.489567, 32.260086>,  <34.666420, 36.797024, 31.550816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884769, 36.489567, 32.260086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791382, 36.877487, 32.288315>,  <34.735352, 37.110241, 32.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791382, 36.877487, 32.288315>,  <34.884769, 36.489567, 32.260086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791382, 36.877487, 32.288315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612139, -0.202976, 0.764255,
		0.755499, 0.135231, 0.641041,
		-0.233466, 0.969801, 0.070568,
		34.721340, 37.168427, 32.309486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223408, 35.788078, 32.035282>,  <34.884769, 36.489567, 32.260086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223408, 35.788078, 32.035282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252064, 35.389336, 32.048855>,  <35.269257, 35.150089, 32.056999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252064, 35.389336, 32.048855>,  <35.223408, 35.788078, 32.035282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252064, 35.389336, 32.048855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968173, -0.077680, -0.237922,
		0.239809, -0.015802, -0.970692,
		0.071644, -0.996853, 0.033927,
		35.273556, 35.090279, 32.059032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146049, 35.435410, 31.365326>,  <35.223408, 35.788078, 32.035282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146049, 35.435410, 31.365326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008175, 35.246887, 31.690056>,  <34.925449, 35.133774, 31.884893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008175, 35.246887, 31.690056>,  <35.146049, 35.435410, 31.365326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008175, 35.246887, 31.690056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936073, 0.107700, -0.334914,
		0.070408, -0.875376, -0.478287,
		-0.344688, -0.471293, 0.811834,
		34.904770, 35.105495, 31.933603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577511, 35.006908, 31.138680>,  <35.146049, 35.435410, 31.365326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577511, 35.006908, 31.138680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533020, 35.095421, 31.526218>,  <34.506325, 35.148529, 31.758741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533020, 35.095421, 31.526218>,  <34.577511, 35.006908, 31.138680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533020, 35.095421, 31.526218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906539, 0.376870, -0.190145,
		-0.407205, -0.899447, 0.158679,
		-0.111224, 0.221277, 0.968848,
		34.499653, 35.161804, 31.816874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044197, 34.612621, 31.489067>,  <34.577511, 35.006908, 31.138680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044197, 34.612621, 31.489067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078846, 34.965519, 31.674170>,  <34.099636, 35.177258, 31.785231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078846, 34.965519, 31.674170>,  <34.044197, 34.612621, 31.489067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078846, 34.965519, 31.674170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917970, 0.251157, -0.307005,
		-0.387078, -0.398204, 0.831628,
		0.086619, 0.882244, 0.462756,
		34.104832, 35.230190, 31.812996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426247, 34.699097, 32.025723>,  <34.044197, 34.612621, 31.489067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426247, 34.699097, 32.025723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585793, 35.023563, 31.854649>,  <33.681519, 35.218243, 31.752003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585793, 35.023563, 31.854649>,  <33.426247, 34.699097, 32.025723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585793, 35.023563, 31.854649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908696, 0.412287, -0.065500,
		0.123199, 0.414765, 0.901550,
		0.398865, 0.811165, -0.427689,
		33.705452, 35.266914, 31.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202538, 35.354282, 32.430580>,  <33.426247, 34.699097, 32.025723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202538, 35.354282, 32.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279076, 35.448891, 32.049541>,  <33.324997, 35.505657, 31.820917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279076, 35.448891, 32.049541>,  <33.202538, 35.354282, 32.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279076, 35.448891, 32.049541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925291, 0.367250, -0.094674,
		0.327450, 0.899547, 0.289124,
		0.191344, 0.236523, -0.952598,
		33.336479, 35.519848, 31.763762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787476, 35.903385, 32.268665>,  <33.202538, 35.354282, 32.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787476, 35.903385, 32.268665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878101, 35.734135, 31.917749>,  <32.932476, 35.632584, 31.707201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878101, 35.734135, 31.917749>,  <32.787476, 35.903385, 32.268665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878101, 35.734135, 31.917749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930264, 0.172864, -0.323617,
		0.288583, 0.889426, -0.354459,
		0.226560, -0.423130, -0.877286,
		32.946068, 35.607197, 31.654564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504547, 36.322174, 31.775652>,  <32.787476, 35.903385, 32.268665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504547, 36.322174, 31.775652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548252, 35.975452, 31.581038>,  <32.574474, 35.767422, 31.464270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548252, 35.975452, 31.581038>,  <32.504547, 36.322174, 31.775652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548252, 35.975452, 31.581038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880162, 0.143089, -0.452593,
		0.461926, 0.477683, -0.747290,
		0.109267, -0.866801, -0.486535,
		32.581032, 35.715412, 31.435078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404285, 36.496689, 31.146875>,  <32.504547, 36.322174, 31.775652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404285, 36.496689, 31.146875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282177, 36.127426, 31.240332>,  <32.208912, 35.905869, 31.296406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282177, 36.127426, 31.240332>,  <32.404285, 36.496689, 31.146875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282177, 36.127426, 31.240332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910238, 0.210795, -0.356415,
		0.279777, -0.321474, -0.904643,
		-0.305273, -0.923157, 0.233642,
		32.190594, 35.850479, 31.310425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345444, 35.840889, 30.782774>,  <32.404285, 36.496689, 31.146875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345444, 35.840889, 30.782774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109825, 36.072395, 30.557190>,  <31.968454, 36.211300, 30.421839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109825, 36.072395, 30.557190>,  <32.345444, 35.840889, 30.782774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109825, 36.072395, 30.557190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207146, -0.566424, -0.797656,
		-0.781099, -0.586678, 0.213760,
		-0.589046, 0.578768, -0.563961,
		31.933111, 36.246025, 30.388002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774010, 35.395359, 30.474833>,  <32.345444, 35.840889, 30.782774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774010, 35.395359, 30.474833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843510, 35.711002, 30.239168>,  <31.885210, 35.900391, 30.097769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843510, 35.711002, 30.239168>,  <31.774010, 35.395359, 30.474833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843510, 35.711002, 30.239168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039886, -0.603410, -0.796433,
		-0.983982, 0.114882, -0.136318,
		0.173751, 0.789113, -0.589162,
		31.895636, 35.947735, 30.062420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295467, 35.373665, 29.960030>,  <31.774010, 35.395359, 30.474833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295467, 35.373665, 29.960030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603399, 35.599129, 29.840261>,  <31.788158, 35.734406, 29.768400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603399, 35.599129, 29.840261>,  <31.295467, 35.373665, 29.960030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603399, 35.599129, 29.840261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036963, -0.507715, -0.860732,
		-0.637177, 0.651550, -0.411689,
		0.769830, 0.563656, -0.299422,
		31.834349, 35.768227, 29.750435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157722, 35.560730, 29.224222>,  <31.295467, 35.373665, 29.960030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157722, 35.560730, 29.224222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543007, 35.652653, 29.279961>,  <31.774178, 35.707806, 29.313404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543007, 35.652653, 29.279961>,  <31.157722, 35.560730, 29.224222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543007, 35.652653, 29.279961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214112, -0.342791, -0.914686,
		-0.162434, 0.910869, -0.379384,
		0.963209, 0.229807, 0.139348,
		31.831970, 35.721596, 29.321764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318548, 35.753422, 28.570923>,  <31.157722, 35.560730, 29.224222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318548, 35.753422, 28.570923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669191, 35.674110, 28.746305>,  <31.879578, 35.626522, 28.851534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669191, 35.674110, 28.746305>,  <31.318548, 35.753422, 28.570923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669191, 35.674110, 28.746305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283767, -0.522871, -0.803793,
		0.388631, 0.829030, -0.402087,
		0.876608, -0.198280, 0.438455,
		31.932175, 35.614628, 28.877842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849253, 36.055424, 28.226652>,  <31.318548, 35.753422, 28.570923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849253, 36.055424, 28.226652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998486, 35.739990, 28.422176>,  <32.088024, 35.550728, 28.539492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998486, 35.739990, 28.422176>,  <31.849253, 36.055424, 28.226652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998486, 35.739990, 28.422176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255518, -0.419147, -0.871221,
		0.891918, 0.449940, 0.045121,
		0.373085, -0.788587, 0.488813,
		32.110413, 35.503414, 28.568821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506893, 35.939537, 27.970261>,  <31.849253, 36.055424, 28.226652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506893, 35.939537, 27.970261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412483, 35.576809, 28.109959>,  <32.355839, 35.359173, 28.193777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412483, 35.576809, 28.109959>,  <32.506893, 35.939537, 27.970261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412483, 35.576809, 28.109959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344665, -0.414151, -0.842428,
		0.908570, -0.078459, 0.410298,
		-0.236021, -0.906820, 0.349243,
		32.341679, 35.304764, 28.214731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030712, 35.636879, 27.782541>,  <32.506893, 35.939537, 27.970261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030712, 35.636879, 27.782541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770847, 35.337921, 27.838169>,  <32.614929, 35.158546, 27.871546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770847, 35.337921, 27.838169>,  <33.030712, 35.636879, 27.782541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770847, 35.337921, 27.838169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313289, -0.429882, -0.846789,
		0.692672, -0.506554, 0.513428,
		-0.649658, -0.747398, 0.139069,
		32.575951, 35.113701, 27.879890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409603, 35.015388, 27.610550>,  <33.030712, 35.636879, 27.782541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409603, 35.015388, 27.610550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030148, 34.889771, 27.595247>,  <32.802475, 34.814400, 27.586065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030148, 34.889771, 27.595247>,  <33.409603, 35.015388, 27.610550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030148, 34.889771, 27.595247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202215, -0.508895, -0.836741,
		0.243310, -0.801498, 0.546261,
		-0.948636, -0.314050, -0.038256,
		32.745556, 34.795555, 27.583771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440887, 34.334862, 27.603819>,  <33.409603, 35.015388, 27.610550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440887, 34.334862, 27.603819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078777, 34.416908, 27.455004>,  <32.861511, 34.466137, 27.365715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078777, 34.416908, 27.455004>,  <33.440887, 34.334862, 27.603819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078777, 34.416908, 27.455004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110120, -0.732502, -0.671800,
		-0.410315, -0.649129, 0.640525,
		-0.905271, 0.205115, -0.372038,
		32.807198, 34.478443, 27.343391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089848, 33.647980, 27.440718>,  <33.440887, 34.334862, 27.603819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089848, 33.647980, 27.440718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921719, 33.934711, 27.218191>,  <32.820843, 34.106750, 27.084675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921719, 33.934711, 27.218191>,  <33.089848, 33.647980, 27.440718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921719, 33.934711, 27.218191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058678, -0.590347, -0.805014,
		-0.905477, -0.371006, 0.206072,
		-0.420319, 0.716830, -0.556316,
		32.795624, 34.149761, 27.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556152, 33.270397, 27.110912>,  <33.089848, 33.647980, 27.440718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556152, 33.270397, 27.110912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610886, 33.592552, 26.880217>,  <32.643726, 33.785843, 26.741798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610886, 33.592552, 26.880217>,  <32.556152, 33.270397, 27.110912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610886, 33.592552, 26.880217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195495, -0.592723, -0.781320,
		-0.971112, -0.005837, -0.238554,
		0.136836, 0.805385, -0.576742,
		32.651936, 33.834167, 26.707193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318356, 32.977608, 26.445732>,  <32.556152, 33.270397, 27.110912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318356, 32.977608, 26.445732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519440, 33.306599, 26.339283>,  <32.640091, 33.503994, 26.275414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519440, 33.306599, 26.339283>,  <32.318356, 32.977608, 26.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519440, 33.306599, 26.339283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236344, -0.426889, -0.872873,
		-0.831521, 0.375902, -0.408987,
		0.502707, 0.822474, -0.266125,
		32.670250, 33.553341, 26.259445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151581, 33.082653, 25.764839>,  <32.318356, 32.977608, 26.445732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151581, 33.082653, 25.764839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496880, 33.272804, 25.832748>,  <32.704060, 33.386894, 25.873493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496880, 33.272804, 25.832748>,  <32.151581, 33.082653, 25.764839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496880, 33.272804, 25.832748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299200, -0.210985, -0.930572,
		-0.406551, 0.854110, -0.324364,
		0.863247, 0.475375, 0.169773,
		32.755856, 33.415417, 25.883680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159389, 33.522228, 25.335764>,  <32.151581, 33.082653, 25.764839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159389, 33.522228, 25.335764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539600, 33.446217, 25.434065>,  <32.767727, 33.400608, 25.493046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539600, 33.446217, 25.434065>,  <32.159389, 33.522228, 25.335764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539600, 33.446217, 25.434065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249927, -0.002051, -0.968263,
		0.184503, 0.981776, 0.045544,
		0.950524, -0.190030, 0.245750,
		32.824757, 33.389206, 25.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554604, 33.874695, 24.815458>,  <32.159389, 33.522228, 25.335764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554604, 33.874695, 24.815458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798767, 33.601418, 24.975780>,  <32.945263, 33.437450, 25.071974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798767, 33.601418, 24.975780>,  <32.554604, 33.874695, 24.815458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798767, 33.601418, 24.975780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318044, -0.252028, -0.913964,
		0.725432, 0.685364, 0.063448,
		0.610407, -0.683197, 0.400805,
		32.981888, 33.396458, 25.096022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141827, 34.064396, 24.510286>,  <32.554604, 33.874695, 24.815458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141827, 34.064396, 24.510286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185547, 33.686630, 24.634314>,  <33.211781, 33.459972, 24.708731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185547, 33.686630, 24.634314>,  <33.141827, 34.064396, 24.510286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185547, 33.686630, 24.634314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245696, -0.276590, -0.929049,
		0.963165, 0.177727, 0.201806,
		0.109299, -0.944411, 0.310069,
		33.218338, 33.403309, 24.727335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870941, 33.812496, 24.357279>,  <33.141827, 34.064396, 24.510286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870941, 33.812496, 24.357279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646122, 33.482540, 24.381443>,  <33.511230, 33.284565, 24.395941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646122, 33.482540, 24.381443>,  <33.870941, 33.812496, 24.357279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646122, 33.482540, 24.381443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309244, -0.277325, -0.909648,
		0.767116, -0.492588, 0.410964,
		-0.562052, -0.824893, 0.060411,
		33.477505, 33.235073, 24.399567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273422, 33.270470, 24.226816>,  <33.870941, 33.812496, 24.357279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273422, 33.270470, 24.226816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922016, 33.082836, 24.190641>,  <33.711174, 32.970257, 24.168936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922016, 33.082836, 24.190641>,  <34.273422, 33.270470, 24.226816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922016, 33.082836, 24.190641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303947, -0.402786, -0.863354,
		0.368558, -0.785954, 0.496428,
		-0.878511, -0.469084, -0.090439,
		33.658463, 32.942112, 24.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441986, 32.538868, 24.064993>,  <34.273422, 33.270470, 24.226816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441986, 32.538868, 24.064993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086353, 32.643013, 23.914396>,  <33.872974, 32.705498, 23.824038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086353, 32.643013, 23.914396>,  <34.441986, 32.538868, 24.064993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086353, 32.643013, 23.914396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304898, -0.276641, -0.911321,
		-0.341427, -0.925030, 0.166572,
		-0.889081, 0.260362, -0.376493,
		33.819630, 32.721119, 23.801449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454792, 32.174435, 23.439632>,  <34.441986, 32.538868, 24.064993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454792, 32.174435, 23.439632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123634, 32.389748, 23.376583>,  <33.924942, 32.518936, 23.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123634, 32.389748, 23.376583>,  <34.454792, 32.174435, 23.439632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123634, 32.389748, 23.376583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120788, -0.103331, -0.987286,
		-0.547727, -0.836405, 0.020529,
		-0.827892, 0.538284, -0.157625,
		33.875267, 32.551231, 23.329296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995087, 31.800652, 22.945818>,  <34.454792, 32.174435, 23.439632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995087, 31.800652, 22.945818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911766, 32.191822, 22.939213>,  <33.861774, 32.426525, 22.935249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911766, 32.191822, 22.939213>,  <33.995087, 31.800652, 22.945818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911766, 32.191822, 22.939213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131585, 0.011293, -0.991241,
		-0.969172, -0.208652, -0.131033,
		-0.208304, 0.977925, -0.016511,
		33.849274, 32.485199, 22.934259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754185, 31.864214, 22.254307>,  <33.995087, 31.800652, 22.945818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754185, 31.864214, 22.254307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786606, 32.240593, 22.385790>,  <33.806061, 32.466419, 22.464680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786606, 32.240593, 22.385790>,  <33.754185, 31.864214, 22.254307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786606, 32.240593, 22.385790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015582, 0.328558, -0.944356,
		-0.996588, 0.081669, 0.011970,
		0.081057, 0.940947, 0.328709,
		33.810925, 32.522877, 22.484402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273041, 32.314579, 21.911436>,  <33.754185, 31.864214, 22.254307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273041, 32.314579, 21.911436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573315, 32.547108, 22.037003>,  <33.753479, 32.686623, 22.112343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573315, 32.547108, 22.037003>,  <33.273041, 32.314579, 21.911436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573315, 32.547108, 22.037003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164631, 0.295564, -0.941030,
		-0.639820, 0.758096, 0.126172,
		0.750684, 0.581319, 0.313914,
		33.798519, 32.721504, 22.131176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211060, 32.936249, 21.466553>,  <33.273041, 32.314579, 21.911436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211060, 32.936249, 21.466553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582275, 32.903091, 21.611811>,  <33.805004, 32.883198, 21.698965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582275, 32.903091, 21.611811>,  <33.211060, 32.936249, 21.466553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582275, 32.903091, 21.611811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370500, 0.306015, -0.876975,
		-0.038431, 0.948411, 0.314706,
		0.928037, -0.082896, 0.363147,
		33.860687, 32.878223, 21.720755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476330, 33.650364, 21.327112>,  <33.211060, 32.936249, 21.466553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476330, 33.650364, 21.327112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825882, 33.461502, 21.373405>,  <34.035614, 33.348183, 21.401182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825882, 33.461502, 21.373405>,  <33.476330, 33.650364, 21.327112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825882, 33.461502, 21.373405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299756, 0.335929, -0.892915,
		0.382719, 0.814996, 0.435095,
		0.873884, -0.472158, 0.115734,
		34.088047, 33.319855, 21.408125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097950, 34.176830, 21.139881>,  <33.476330, 33.650364, 21.327112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097950, 34.176830, 21.139881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263222, 33.812740, 21.128742>,  <34.362385, 33.594288, 21.122059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263222, 33.812740, 21.128742>,  <34.097950, 34.176830, 21.139881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263222, 33.812740, 21.128742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447995, 0.229796, -0.863999,
		0.792830, 0.344514, 0.502723,
		0.413184, -0.910222, -0.027848,
		34.387177, 33.539673, 21.120388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873878, 34.216728, 21.093351>,  <34.097950, 34.176830, 21.139881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873878, 34.216728, 21.093351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819920, 33.850090, 20.942804>,  <34.787544, 33.630108, 20.852476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819920, 33.850090, 20.942804>,  <34.873878, 34.216728, 21.093351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819920, 33.850090, 20.942804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610538, 0.222279, -0.760155,
		0.780414, -0.332330, 0.529633,
		-0.134896, -0.916597, -0.376369,
		34.779449, 33.575111, 20.829893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608749, 34.024319, 20.922729>,  <34.873878, 34.216728, 21.093351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608749, 34.024319, 20.922729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334373, 33.804939, 20.731440>,  <35.169750, 33.673313, 20.616665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334373, 33.804939, 20.731440>,  <35.608749, 34.024319, 20.922729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334373, 33.804939, 20.731440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577241, -0.009977, -0.816513,
		0.443042, -0.836127, 0.323428,
		-0.685935, -0.548445, -0.478226,
		35.128593, 33.640408, 20.587971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033600, 33.802464, 20.522207>,  <35.608749, 34.024319, 20.922729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033600, 33.802464, 20.522207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687984, 33.695633, 20.351511>,  <35.480614, 33.631535, 20.249094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687984, 33.695633, 20.351511>,  <36.033600, 33.802464, 20.522207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687984, 33.695633, 20.351511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426625, 0.061551, -0.902332,
		0.267257, -0.961708, 0.060759,
		-0.864040, -0.267076, -0.426739,
		35.428772, 33.615509, 20.223490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181980, 33.321438, 19.928495>,  <36.033600, 33.802464, 20.522207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181980, 33.321438, 19.928495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806244, 33.443882, 19.866608>,  <35.580803, 33.517349, 19.829475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806244, 33.443882, 19.866608>,  <36.181980, 33.321438, 19.928495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806244, 33.443882, 19.866608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155059, -0.023364, -0.987629,
		-0.305939, -0.951709, -0.025518,
		-0.939339, 0.306112, -0.154719,
		35.524441, 33.535717, 19.820192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009956, 32.953499, 19.374912>,  <36.181980, 33.321438, 19.928495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009956, 32.953499, 19.374912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793350, 33.289692, 19.382385>,  <35.663387, 33.491409, 19.386869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793350, 33.289692, 19.382385>,  <36.009956, 32.953499, 19.374912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793350, 33.289692, 19.382385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269773, 0.194773, -0.943020,
		-0.796232, -0.505619, -0.332212,
		-0.541515, 0.840484, 0.018682,
		35.630898, 33.541836, 19.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660107, 32.912334, 18.705593>,  <36.009956, 32.953499, 19.374912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660107, 32.912334, 18.705593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670307, 33.299385, 18.806032>,  <35.676430, 33.531616, 18.866295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670307, 33.299385, 18.806032>,  <35.660107, 32.912334, 18.705593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670307, 33.299385, 18.806032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194278, 0.241593, -0.950731,
		-0.980615, 0.073029, -0.181827,
		0.025503, 0.967626, 0.251097,
		35.677959, 33.589672, 18.881361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302505, 33.283558, 18.143930>,  <35.660107, 32.912334, 18.705593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302505, 33.283558, 18.143930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520435, 33.557915, 18.336893>,  <35.651192, 33.722530, 18.452671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520435, 33.557915, 18.336893>,  <35.302505, 33.283558, 18.143930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520435, 33.557915, 18.336893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413958, 0.280308, -0.866063,
		-0.729249, 0.671550, -0.131212,
		0.544825, 0.685892, 0.482408,
		35.683884, 33.763683, 18.481615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336269, 33.907719, 17.735323>,  <35.302505, 33.283558, 18.143930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336269, 33.907719, 17.735323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637604, 33.982399, 17.987555>,  <35.818405, 34.027206, 18.138893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637604, 33.982399, 17.987555>,  <35.336269, 33.907719, 17.735323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637604, 33.982399, 17.987555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559100, 0.323027, -0.763584,
		-0.346257, 0.927791, 0.138961,
		0.753335, 0.186704, 0.630578,
		35.863605, 34.038410, 18.176727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547951, 34.657291, 17.752670>,  <35.336269, 33.907719, 17.735323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547951, 34.657291, 17.752670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859867, 34.432507, 17.863026>,  <36.047016, 34.297634, 17.929239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859867, 34.432507, 17.863026>,  <35.547951, 34.657291, 17.752670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859867, 34.432507, 17.863026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568468, 0.451023, -0.688056,
		0.262231, 0.693377, 0.671165,
		0.779794, -0.561966, 0.275891,
		36.093803, 34.263916, 17.945793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089916, 35.027130, 18.149389>,  <35.547951, 34.657291, 17.752670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089916, 35.027130, 18.149389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265545, 34.733803, 17.941750>,  <36.370922, 34.557808, 17.817165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265545, 34.733803, 17.941750>,  <36.089916, 35.027130, 18.149389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265545, 34.733803, 17.941750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595418, 0.670171, -0.443113,
		0.672827, -0.114523, 0.730882,
		0.439069, -0.733318, -0.519098,
		36.397266, 34.513805, 17.786020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536186, 35.399616, 17.823492>,  <36.089916, 35.027130, 18.149389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536186, 35.399616, 17.823492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606617, 35.053444, 17.635868>,  <36.648876, 34.845741, 17.523293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606617, 35.053444, 17.635868>,  <36.536186, 35.399616, 17.823492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606617, 35.053444, 17.635868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633591, 0.464319, -0.618847,
		0.753366, -0.188228, 0.630088,
		0.176077, -0.865435, -0.469061,
		36.659439, 34.793812, 17.495150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261459, 35.356777, 17.792822>,  <36.536186, 35.399616, 17.823492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261459, 35.356777, 17.792822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127987, 35.099628, 17.517033>,  <37.047905, 34.945339, 17.351559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127987, 35.099628, 17.517033>,  <37.261459, 35.356777, 17.792822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127987, 35.099628, 17.517033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694210, 0.327232, -0.641087,
		0.637754, -0.692558, 0.337095,
		-0.333682, -0.642870, -0.689474,
		37.027882, 34.906769, 17.310190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853146, 35.287071, 17.475693>,  <37.261459, 35.356777, 17.792822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853146, 35.287071, 17.475693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591419, 35.104519, 17.234499>,  <37.434383, 34.994987, 17.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591419, 35.104519, 17.234499>,  <37.853146, 35.287071, 17.475693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591419, 35.104519, 17.234499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547363, 0.264365, -0.794044,
		0.521794, -0.849605, 0.076828,
		-0.654313, -0.456380, -0.602986,
		37.395126, 34.967606, 17.053604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190563, 34.812164, 17.131462>,  <37.853146, 35.287071, 17.475693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190563, 34.812164, 17.131462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880901, 34.900944, 16.894339>,  <37.695103, 34.954212, 16.752064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880901, 34.900944, 16.894339>,  <38.190563, 34.812164, 17.131462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880901, 34.900944, 16.894339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631005, 0.196364, -0.750516,
		-0.050167, -0.955082, -0.292065,
		-0.774155, 0.221946, -0.592811,
		37.648655, 34.967525, 16.716496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221794, 34.380085, 16.472221>,  <38.190563, 34.812164, 17.131462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221794, 34.380085, 16.472221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032173, 34.727894, 16.416786>,  <37.918400, 34.936577, 16.383524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032173, 34.727894, 16.416786>,  <38.221794, 34.380085, 16.472221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032173, 34.727894, 16.416786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572147, 0.184561, -0.799116,
		-0.669269, -0.458118, -0.584985,
		-0.474055, 0.869520, -0.138590,
		37.889957, 34.988750, 16.375210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105595, 34.299095, 15.697281>,  <38.221794, 34.380085, 16.472221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105595, 34.299095, 15.697281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039909, 34.685711, 15.776110>,  <38.000496, 34.917679, 15.823407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039909, 34.685711, 15.776110>,  <38.105595, 34.299095, 15.697281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039909, 34.685711, 15.776110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501405, 0.253839, -0.827139,
		-0.849486, -0.037017, -0.526311,
		-0.164216, 0.966538, 0.197073,
		37.990643, 34.975674, 15.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828403, 34.635559, 15.122369>,  <38.105595, 34.299095, 15.697281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828403, 34.635559, 15.122369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964954, 34.948456, 15.330815>,  <38.046886, 35.136192, 15.455883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964954, 34.948456, 15.330815>,  <37.828403, 34.635559, 15.122369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964954, 34.948456, 15.330815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500545, 0.317969, -0.805202,
		-0.795560, 0.535719, -0.282999,
		0.341378, 0.782240, 0.521115,
		38.067368, 35.183128, 15.487150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021103, 35.047474, 14.593948>,  <37.828403, 34.635559, 15.122369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021103, 35.047474, 14.593948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176376, 35.237976, 14.909542>,  <38.269543, 35.352276, 15.098898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176376, 35.237976, 14.909542>,  <38.021103, 35.047474, 14.593948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176376, 35.237976, 14.909542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702132, 0.401689, -0.587926,
		-0.596927, 0.782196, -0.178461,
		0.388188, 0.476252, 0.788983,
		38.292831, 35.380852, 15.146237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128319, 35.753269, 14.351903>,  <38.021103, 35.047474, 14.593948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128319, 35.753269, 14.351903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376354, 35.627476, 14.639398>,  <38.525177, 35.551998, 14.811894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376354, 35.627476, 14.639398>,  <38.128319, 35.753269, 14.351903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376354, 35.627476, 14.639398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784421, 0.233427, -0.574626,
		0.012938, 0.920115, 0.391435,
		0.620093, -0.314484, 0.718738,
		38.562382, 35.533131, 14.855019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066750, 36.238106, 14.986075>,  <38.128319, 35.753269, 14.351903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066750, 36.238106, 14.986075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100567, 36.632751, 14.930289>,  <38.120857, 36.869537, 14.896817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100567, 36.632751, 14.930289>,  <38.066750, 36.238106, 14.986075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100567, 36.632751, 14.930289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008436, -0.139253, -0.990221,
		-0.996384, 0.084889, -0.003450,
		0.084539, 0.986611, -0.139466,
		38.125927, 36.928734, 14.888450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527176, 36.479603, 14.510506>,  <38.066750, 36.238106, 14.986075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527176, 36.479603, 14.510506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814747, 36.757233, 14.495497>,  <37.987289, 36.923809, 14.486491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814747, 36.757233, 14.495497>,  <37.527176, 36.479603, 14.510506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814747, 36.757233, 14.495497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092207, 0.041725, -0.994865,
		-0.688944, 0.718694, 0.093996,
		0.718926, 0.694073, -0.037522,
		38.030426, 36.965454, 14.484240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332912, 36.889641, 13.986462>,  <37.527176, 36.479603, 14.510506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332912, 36.889641, 13.986462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703079, 37.024044, 14.056552>,  <37.925179, 37.104687, 14.098606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703079, 37.024044, 14.056552>,  <37.332912, 36.889641, 13.986462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703079, 37.024044, 14.056552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066801, 0.310510, -0.948220,
		-0.373017, 0.889204, 0.264906,
		0.925417, 0.336006, 0.175225,
		37.980705, 37.124847, 14.109119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384323, 37.505768, 13.777693>,  <37.332912, 36.889641, 13.986462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384323, 37.505768, 13.777693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766342, 37.387203, 13.775932>,  <37.995556, 37.316063, 13.774877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766342, 37.387203, 13.775932>,  <37.384323, 37.505768, 13.777693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766342, 37.387203, 13.775932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168953, 0.556449, -0.813523,
		0.243588, 0.776212, 0.581516,
		0.955050, -0.296413, -0.004401,
		38.052856, 37.298279, 13.774612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825687, 38.069981, 13.630708>,  <37.384323, 37.505768, 13.777693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825687, 38.069981, 13.630708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020153, 37.732502, 13.539659>,  <38.136833, 37.530014, 13.485029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020153, 37.732502, 13.539659>,  <37.825687, 38.069981, 13.630708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020153, 37.732502, 13.539659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222677, 0.371487, -0.901339,
		0.845019, 0.387515, 0.368477,
		0.486167, -0.843700, -0.227623,
		38.166004, 37.479393, 13.471372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573204, 38.142292, 13.584175>,  <37.825687, 38.069981, 13.630708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573204, 38.142292, 13.584175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459797, 37.846062, 13.340481>,  <38.391754, 37.668324, 13.194264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459797, 37.846062, 13.340481>,  <38.573204, 38.142292, 13.584175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459797, 37.846062, 13.340481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373788, 0.499713, -0.781389,
		0.883120, -0.449262, 0.135141,
		-0.283516, -0.740575, -0.609236,
		38.374741, 37.623890, 13.157710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848190, 37.967602, 14.286489>,  <38.573204, 38.142292, 13.584175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848190, 37.967602, 14.286489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620876, 37.644257, 14.347928>,  <38.484486, 37.450249, 14.384791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620876, 37.644257, 14.347928>,  <38.848190, 37.967602, 14.286489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620876, 37.644257, 14.347928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199534, 0.316484, 0.927375,
		-0.798271, 0.496367, -0.341150,
		-0.568287, -0.808367, 0.153598,
		38.450390, 37.401745, 14.394008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473999, 38.213840, 14.812075>,  <38.848190, 37.967602, 14.286489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473999, 38.213840, 14.812075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369514, 37.827797, 14.819497>,  <38.306824, 37.596172, 14.823951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369514, 37.827797, 14.819497>,  <38.473999, 38.213840, 14.812075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369514, 37.827797, 14.819497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241480, 0.083944, 0.966768,
		-0.934590, 0.248046, -0.254980,
		-0.261207, -0.965104, 0.018555,
		38.291153, 37.538265, 14.825064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723625, 38.195110, 14.996722>,  <38.473999, 38.213840, 14.812075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723625, 38.195110, 14.996722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904140, 37.845100, 15.066768>,  <38.012451, 37.635094, 15.108795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904140, 37.845100, 15.066768>,  <37.723625, 38.195110, 14.996722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904140, 37.845100, 15.066768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611254, -0.160141, 0.775063,
		-0.650160, -0.456815, -0.607134,
		0.451288, -0.875029, 0.175113,
		38.039528, 37.582592, 15.119302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181122, 37.713696, 15.171499>,  <37.723625, 38.195110, 14.996722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181122, 37.713696, 15.171499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523777, 37.587891, 15.335088>,  <37.729370, 37.512405, 15.433241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523777, 37.587891, 15.335088>,  <37.181122, 37.713696, 15.171499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523777, 37.587891, 15.335088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437728, -0.023495, 0.898800,
		-0.273078, -0.948961, -0.157799,
		0.856635, -0.314516, 0.408971,
		37.780769, 37.493538, 15.457779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952404, 37.337132, 15.660496>,  <37.181122, 37.713696, 15.171499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952404, 37.337132, 15.660496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337841, 37.378479, 15.759130>,  <37.569103, 37.403286, 15.818310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337841, 37.378479, 15.759130>,  <36.952404, 37.337132, 15.660496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337841, 37.378479, 15.759130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245118, -0.026860, 0.969121,
		0.106802, -0.994280, -0.000544,
		0.963592, 0.103371, 0.246585,
		37.626919, 37.409489, 15.833105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043743, 36.865349, 16.202881>,  <36.952404, 37.337132, 15.660496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043743, 36.865349, 16.202881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 37.118969, 16.259922>,  <37.530163, 37.271141, 16.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 37.118969, 16.259922>,  <37.043743, 36.865349, 16.202881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347755, 37.118969, 16.259922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242761, 0.073440, 0.967302,
		0.602850, -0.769793, 0.209740,
		0.760026, 0.634055, 0.142602,
		37.575764, 37.309185, 16.302702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345253, 36.550480, 16.787472>,  <37.043743, 36.865349, 16.202881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345253, 36.550480, 16.787472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469757, 36.930344, 16.773283>,  <37.544460, 37.158264, 16.764771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469757, 36.930344, 16.773283>,  <37.345253, 36.550480, 16.787472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469757, 36.930344, 16.773283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071238, 0.013902, 0.997362,
		0.947650, -0.312970, -0.063325,
		0.311264, 0.949661, -0.035470,
		37.563137, 37.215240, 16.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784630, 36.575386, 17.298344>,  <37.345253, 36.550480, 16.787472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784630, 36.575386, 17.298344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685440, 36.958569, 17.240627>,  <37.625927, 37.188480, 17.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685440, 36.958569, 17.240627>,  <37.784630, 36.575386, 17.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685440, 36.958569, 17.240627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192273, 0.097312, 0.976505,
		0.949494, 0.269891, 0.160059,
		-0.247974, 0.957961, -0.144290,
		37.611050, 37.245956, 17.197340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988403, 36.901173, 17.954882>,  <37.784630, 36.575386, 17.298344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988403, 36.901173, 17.954882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720989, 37.157276, 17.803556>,  <37.560539, 37.310940, 17.712761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720989, 37.157276, 17.803556>,  <37.988403, 36.901173, 17.954882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720989, 37.157276, 17.803556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291870, 0.241997, 0.925337,
		0.684008, 0.729043, 0.025088,
		-0.668540, 0.640260, -0.378313,
		37.520428, 37.349354, 17.690062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043125, 37.538086, 18.333666>,  <37.988403, 36.901173, 17.954882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043125, 37.538086, 18.333666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684971, 37.586857, 18.162355>,  <37.470078, 37.616119, 18.059570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684971, 37.586857, 18.162355>,  <38.043125, 37.538086, 18.333666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684971, 37.586857, 18.162355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366788, 0.343403, 0.864605,
		0.252493, 0.931239, -0.262754,
		-0.895385, 0.121932, -0.428275,
		37.416355, 37.623436, 18.033873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814533, 38.170971, 18.478842>,  <38.043125, 37.538086, 18.333666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814533, 38.170971, 18.478842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466511, 37.979595, 18.431345>,  <37.257698, 37.864769, 18.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466511, 37.979595, 18.431345>,  <37.814533, 38.170971, 18.478842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466511, 37.979595, 18.431345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318647, 0.362066, 0.875998,
		-0.376117, 0.800005, -0.467470,
		-0.870057, -0.478436, -0.118740,
		37.205494, 37.836063, 18.395723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310078, 38.565968, 18.814907>,  <37.814533, 38.170971, 18.478842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310078, 38.565968, 18.814907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111725, 38.219822, 18.785946>,  <36.992714, 38.012135, 18.768570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111725, 38.219822, 18.785946>,  <37.310078, 38.565968, 18.814907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111725, 38.219822, 18.785946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593821, 0.277081, 0.755382,
		-0.633619, 0.417578, -0.651272,
		-0.495886, -0.865364, -0.072403,
		36.962959, 37.960213, 18.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541405, 38.767616, 18.849211>,  <37.310078, 38.565968, 18.814907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541405, 38.767616, 18.849211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587872, 38.377136, 18.922461>,  <36.615753, 38.142849, 18.966410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587872, 38.377136, 18.922461>,  <36.541405, 38.767616, 18.849211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587872, 38.377136, 18.922461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440700, 0.114570, 0.890313,
		-0.890106, -0.184129, -0.416903,
		0.116168, -0.976202, 0.183125,
		36.622723, 38.084274, 18.977398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993061, 38.552464, 19.107868>,  <36.541405, 38.767616, 18.849211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993061, 38.552464, 19.107868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241894, 38.255939, 19.208643>,  <36.391193, 38.078026, 19.269108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241894, 38.255939, 19.208643>,  <35.993061, 38.552464, 19.107868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241894, 38.255939, 19.208643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358818, 0.016064, 0.933269,
		-0.695888, -0.670972, -0.256002,
		0.622085, -0.741309, 0.251935,
		36.428520, 38.033546, 19.284224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499500, 37.994003, 19.461248>,  <35.993061, 38.552464, 19.107868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499500, 37.994003, 19.461248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862392, 37.890678, 19.594036>,  <36.080128, 37.828682, 19.673708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862392, 37.890678, 19.594036>,  <35.499500, 37.994003, 19.461248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862392, 37.890678, 19.594036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378581, -0.157491, 0.912071,
		-0.183338, -0.953132, -0.240681,
		0.907228, -0.258334, 0.331963,
		36.134563, 37.813183, 19.693626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341923, 37.411240, 19.817772>,  <35.499500, 37.994003, 19.461248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341923, 37.411240, 19.817772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708557, 37.497887, 19.952206>,  <35.928535, 37.549873, 20.032866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708557, 37.497887, 19.952206>,  <35.341923, 37.411240, 19.817772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708557, 37.497887, 19.952206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280418, -0.250924, 0.926500,
		0.285026, -0.943459, -0.169249,
		0.916584, 0.216616, 0.336083,
		35.983532, 37.562870, 20.053030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560802, 36.816982, 20.246777>,  <35.341923, 37.411240, 19.817772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560802, 36.816982, 20.246777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777103, 37.141373, 20.336132>,  <35.906883, 37.336006, 20.389746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777103, 37.141373, 20.336132>,  <35.560802, 36.816982, 20.246777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777103, 37.141373, 20.336132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089314, -0.208708, 0.973891,
		0.836428, -0.546584, -0.040427,
		0.540751, 0.810979, 0.223387,
		35.939327, 37.384666, 20.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099628, 36.597485, 20.745098>,  <35.560802, 36.816982, 20.246777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099628, 36.597485, 20.745098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001343, 36.984158, 20.773808>,  <35.942371, 37.216160, 20.791033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001343, 36.984158, 20.773808>,  <36.099628, 36.597485, 20.745098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001343, 36.984158, 20.773808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224354, -0.128748, 0.965966,
		0.943021, 0.221252, 0.248514,
		-0.245717, 0.966681, 0.071774,
		35.927628, 37.274162, 20.795340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278618, 36.691143, 21.418697>,  <36.099628, 36.597485, 20.745098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278618, 36.691143, 21.418697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052589, 37.006855, 21.322590>,  <35.916973, 37.196281, 21.264925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052589, 37.006855, 21.322590>,  <36.278618, 36.691143, 21.418697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052589, 37.006855, 21.322590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303750, 0.071744, 0.950047,
		0.767091, 0.609828, 0.199203,
		-0.565073, 0.789280, -0.240270,
		35.883068, 37.243641, 21.250509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396523, 37.155632, 21.995989>,  <36.278618, 36.691143, 21.418697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396523, 37.155632, 21.995989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066166, 37.288380, 21.813665>,  <35.867950, 37.368031, 21.704271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066166, 37.288380, 21.813665>,  <36.396523, 37.155632, 21.995989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066166, 37.288380, 21.813665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378137, 0.273629, 0.884387,
		0.418225, 0.902767, -0.100496,
		-0.825894, 0.331871, -0.455808,
		35.818398, 37.387939, 21.676924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294147, 37.680183, 22.408773>,  <36.396523, 37.155632, 21.995989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294147, 37.680183, 22.408773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946743, 37.642124, 22.214191>,  <35.738300, 37.619289, 22.097443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946743, 37.642124, 22.214191>,  <36.294147, 37.680183, 22.408773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946743, 37.642124, 22.214191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478563, 0.416574, 0.772945,
		0.129103, 0.904109, -0.407332,
		-0.868510, -0.095145, -0.486454,
		35.686192, 37.613583, 22.068254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900471, 38.350422, 22.572817>,  <36.294147, 37.680183, 22.408773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900471, 38.350422, 22.572817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654140, 38.047630, 22.485422>,  <35.506340, 37.865955, 22.432985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654140, 38.047630, 22.485422>,  <35.900471, 38.350422, 22.572817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654140, 38.047630, 22.485422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584337, 0.252808, 0.771128,
		-0.528493, 0.602554, -0.598017,
		-0.615829, -0.756979, -0.218487,
		35.469391, 37.820538, 22.419876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226597, 38.698532, 22.523935>,  <35.900471, 38.350422, 22.572817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226597, 38.698532, 22.523935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161957, 38.309437, 22.590467>,  <35.123173, 38.075981, 22.630386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161957, 38.309437, 22.590467>,  <35.226597, 38.698532, 22.523935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161957, 38.309437, 22.590467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556499, 0.229016, 0.798662,
		-0.814980, 0.036505, -0.578338,
		-0.161604, -0.972738, 0.166329,
		35.113476, 38.017616, 22.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581337, 38.756432, 22.942972>,  <35.226597, 38.698532, 22.523935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581337, 38.756432, 22.942972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705383, 38.376961, 22.967722>,  <34.779812, 38.149277, 22.982573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705383, 38.376961, 22.967722>,  <34.581337, 38.756432, 22.942972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705383, 38.376961, 22.967722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518409, -0.114191, 0.847474,
		-0.796917, -0.294895, -0.527218,
		0.310120, -0.948682, 0.061875,
		34.798420, 38.092358, 22.986284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988316, 38.284901, 22.993633>,  <34.581337, 38.756432, 22.942972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988316, 38.284901, 22.993633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296356, 38.100109, 23.169600>,  <34.481178, 37.989235, 23.275179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296356, 38.100109, 23.169600>,  <33.988316, 38.284901, 22.993633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296356, 38.100109, 23.169600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579623, -0.218709, 0.784986,
		-0.266432, -0.859502, -0.436200,
		0.770098, -0.461977, 0.439916,
		34.527386, 37.961517, 23.301575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677685, 37.759964, 23.410368>,  <33.988316, 38.284901, 22.993633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677685, 37.759964, 23.410368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043022, 37.801010, 23.567986>,  <34.262226, 37.825638, 23.662556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043022, 37.801010, 23.567986>,  <33.677685, 37.759964, 23.410368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043022, 37.801010, 23.567986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367257, -0.210311, 0.906031,
		0.175848, -0.972234, -0.154398,
		0.913345, 0.102620, 0.394042,
		34.317024, 37.831795, 23.686199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610008, 37.345142, 23.958572>,  <33.677685, 37.759964, 23.410368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610008, 37.345142, 23.958572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 37.557297, 24.010004>,  <34.146294, 37.684589, 24.040863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 37.557297, 24.010004>,  <33.610008, 37.345142, 23.958572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945187, 37.557297, 24.010004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073711, -0.123452, 0.989609,
		0.540748, -0.838720, -0.064352,
		0.837949, 0.530386, 0.128580,
		34.196571, 37.716412, 24.048578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126484, 36.895817, 24.376511>,  <33.610008, 37.345142, 23.958572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126484, 36.895817, 24.376511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202137, 37.286961, 24.412319>,  <34.247528, 37.521648, 24.433804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202137, 37.286961, 24.412319>,  <34.126484, 36.895817, 24.376511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202137, 37.286961, 24.412319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042854, -0.099299, 0.994134,
		0.981016, -0.184185, -0.060686,
		0.189130, 0.977863, 0.089521,
		34.258877, 37.580318, 24.439175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530052, 36.881054, 24.952763>,  <34.126484, 36.895817, 24.376511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530052, 36.881054, 24.952763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412212, 37.261086, 24.911652>,  <34.341507, 37.489105, 24.886984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412212, 37.261086, 24.911652>,  <34.530052, 36.881054, 24.952763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412212, 37.261086, 24.911652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143630, 0.062309, 0.987668,
		0.944765, 0.305731, 0.118104,
		-0.294602, 0.950077, -0.102779,
		34.323833, 37.546108, 24.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853046, 37.222515, 25.523464>,  <34.530052, 36.881054, 24.952763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853046, 37.222515, 25.523464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544048, 37.435966, 25.385777>,  <34.358650, 37.564037, 25.303164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544048, 37.435966, 25.385777>,  <34.853046, 37.222515, 25.523464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544048, 37.435966, 25.385777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302186, 0.167837, 0.938357,
		0.558507, 0.828897, 0.031601,
		-0.772498, 0.533629, -0.344219,
		34.312298, 37.596054, 25.282511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799725, 37.782780, 25.978081>,  <34.853046, 37.222515, 25.523464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799725, 37.782780, 25.978081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449440, 37.754414, 25.787045>,  <34.239269, 37.737392, 25.672422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449440, 37.754414, 25.787045>,  <34.799725, 37.782780, 25.978081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449440, 37.754414, 25.787045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482798, 0.139532, 0.864544,
		0.005326, 0.987675, -0.156431,
		-0.875715, -0.070920, -0.477591,
		34.186726, 37.733139, 25.643766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373863, 38.331844, 26.263487>,  <34.799725, 37.782780, 25.978081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373863, 38.331844, 26.263487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088707, 38.111565, 26.089811>,  <33.917614, 37.979397, 25.985605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088707, 38.111565, 26.089811>,  <34.373863, 38.331844, 26.263487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088707, 38.111565, 26.089811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584974, 0.125501, 0.801283,
		-0.386776, 0.825214, -0.411614,
		-0.712888, -0.550701, -0.434188,
		33.874840, 37.946354, 25.959555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689484, 38.780342, 26.130230>,  <34.373863, 38.331844, 26.263487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689484, 38.780342, 26.130230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590565, 38.392815, 26.136335>,  <33.531212, 38.160297, 26.139999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590565, 38.392815, 26.136335>,  <33.689484, 38.780342, 26.130230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590565, 38.392815, 26.136335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643252, 0.175935, 0.745167,
		-0.724618, 0.174458, -0.666703,
		-0.247297, -0.968820, 0.015266,
		33.516376, 38.102169, 26.140915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129002, 38.841549, 26.401548>,  <33.689484, 38.780342, 26.130230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129002, 38.841549, 26.401548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173389, 38.445286, 26.433266>,  <33.200024, 38.207527, 26.452297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173389, 38.445286, 26.433266>,  <33.129002, 38.841549, 26.401548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173389, 38.445286, 26.433266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683386, -0.018132, 0.729832,
		-0.721574, -0.135179, -0.679012,
		0.110970, -0.990655, 0.079295,
		33.206680, 38.148090, 26.457054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438160, 38.494633, 26.369152>,  <33.129002, 38.841549, 26.401548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438160, 38.494633, 26.369152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688969, 38.252773, 26.565617>,  <32.839455, 38.107658, 26.683496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688969, 38.252773, 26.565617>,  <32.438160, 38.494633, 26.369152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688969, 38.252773, 26.565617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657881, -0.073364, 0.749540,
		-0.417177, -0.793104, -0.443790,
		0.627022, -0.604652, 0.491162,
		32.877075, 38.071377, 26.712965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010002, 37.889961, 26.642977>,  <32.438160, 38.494633, 26.369152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010002, 37.889961, 26.642977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355362, 37.896610, 26.844675>,  <32.562576, 37.900600, 26.965694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355362, 37.896610, 26.844675>,  <32.010002, 37.889961, 26.642977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355362, 37.896610, 26.844675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500440, -0.098647, 0.860133,
		0.064043, -0.994983, -0.076852,
		0.863399, 0.016626, 0.504247,
		32.614384, 37.901596, 26.995949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023380, 37.325542, 27.212231>,  <32.010002, 37.889961, 26.642977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023380, 37.325542, 27.212231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313026, 37.561989, 27.354349>,  <32.486816, 37.703857, 27.439619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313026, 37.561989, 27.354349>,  <32.023380, 37.325542, 27.212231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313026, 37.561989, 27.354349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407692, -0.048635, 0.911824,
		0.556275, -0.805118, 0.205776,
		0.724117, 0.591118, 0.355294,
		32.530262, 37.739323, 27.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253540, 37.025108, 27.892054>,  <32.023380, 37.325542, 27.212231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253540, 37.025108, 27.892054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404640, 37.395473, 27.892391>,  <32.495300, 37.617691, 27.892593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404640, 37.395473, 27.892391>,  <32.253540, 37.025108, 27.892054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404640, 37.395473, 27.892391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205191, 0.082822, 0.975211,
		0.902887, -0.368556, 0.221273,
		0.377746, 0.925909, 0.000846,
		32.517963, 37.673244, 27.892645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777889, 37.081173, 28.394979>,  <32.253540, 37.025108, 27.892054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777889, 37.081173, 28.394979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 37.460548, 28.360329>,  <32.582752, 37.688171, 28.339539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655930, 37.460548, 28.360329>,  <32.777889, 37.081173, 28.394979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655930, 37.460548, 28.360329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100672, 0.058353, 0.993207,
		0.947048, 0.311551, 0.077689,
		-0.304901, 0.948436, -0.086627,
		32.564461, 37.745079, 28.334341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086700, 37.490833, 28.919102>,  <32.777889, 37.081173, 28.394979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086700, 37.490833, 28.919102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748764, 37.679333, 28.817774>,  <32.546001, 37.792435, 28.756977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748764, 37.679333, 28.817774>,  <33.086700, 37.490833, 28.919102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748764, 37.679333, 28.817774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263086, 0.046364, 0.963658,
		0.465871, 0.880779, 0.084810,
		-0.844837, 0.471253, -0.253321,
		32.495312, 37.820709, 28.741777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991165, 37.983471, 29.488365>,  <33.086700, 37.490833, 28.919102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991165, 37.983471, 29.488365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623447, 37.966656, 29.331835>,  <32.402817, 37.956566, 29.237917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623447, 37.966656, 29.331835>,  <32.991165, 37.983471, 29.488365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623447, 37.966656, 29.331835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386357, -0.093216, 0.917627,
		-0.075057, 0.994758, 0.069449,
		-0.919291, -0.042042, -0.391328,
		32.347660, 37.954044, 29.214436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546310, 38.457813, 29.383667>,  <32.991165, 37.983471, 29.488365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546310, 38.457813, 29.383667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888466, 38.498013, 29.586922>,  <34.093761, 38.522133, 29.708876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888466, 38.498013, 29.586922>,  <33.546310, 38.457813, 29.383667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888466, 38.498013, 29.586922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496852, 0.118138, -0.859757,
		-0.146434, 0.987899, 0.051122,
		0.855392, 0.100498, 0.508138,
		34.145084, 38.528160, 29.739363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996815, 38.635735, 28.850353>,  <33.546310, 38.457813, 29.383667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996815, 38.635735, 28.850353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259190, 38.635204, 29.152277>,  <34.416615, 38.634888, 29.333431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259190, 38.635204, 29.152277>,  <33.996815, 38.635735, 28.850353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259190, 38.635204, 29.152277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742201, 0.183166, -0.644661,
		-0.137402, 0.983081, 0.121129,
		0.655941, -0.001324, 0.754811,
		34.455971, 38.634808, 29.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362492, 39.304161, 28.821989>,  <33.996815, 38.635735, 28.850353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362492, 39.304161, 28.821989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568676, 38.999733, 28.979506>,  <34.692387, 38.817078, 29.074015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568676, 38.999733, 28.979506>,  <34.362492, 39.304161, 28.821989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568676, 38.999733, 28.979506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760789, 0.194986, -0.619016,
		0.394329, 0.618674, 0.679520,
		0.515466, -0.761067, 0.393791,
		34.723316, 38.771412, 29.097643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070358, 39.477333, 28.732821>,  <34.362492, 39.304161, 28.821989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070358, 39.477333, 28.732821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091442, 39.089828, 28.829754>,  <35.104092, 38.857327, 28.887913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091442, 39.089828, 28.829754>,  <35.070358, 39.477333, 28.732821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091442, 39.089828, 28.829754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908694, -0.054107, -0.413942,
		0.414123, 0.242024, 0.877455,
		0.052708, -0.968760, 0.242333,
		35.107254, 38.799202, 28.902454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731606, 39.358395, 29.038328>,  <35.070358, 39.477333, 28.732821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731606, 39.358395, 29.038328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600208, 39.020847, 28.868631>,  <35.521370, 38.818321, 28.766813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600208, 39.020847, 28.868631>,  <35.731606, 39.358395, 29.038328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600208, 39.020847, 28.868631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807529, -0.017959, -0.589554,
		0.489886, -0.536252, 0.687346,
		-0.328494, -0.843867, -0.424241,
		35.501659, 38.767689, 28.741360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282806, 38.897343, 28.948835>,  <35.731606, 39.358395, 29.038328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282806, 38.897343, 28.948835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005562, 38.751713, 28.699986>,  <35.839214, 38.664333, 28.550676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005562, 38.751713, 28.699986>,  <36.282806, 38.897343, 28.948835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005562, 38.751713, 28.699986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685404, -0.065648, -0.725198,
		0.223187, -0.929052, 0.295042,
		-0.693115, -0.364078, -0.622124,
		35.797626, 38.642490, 28.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697025, 38.517635, 28.595577>,  <36.282806, 38.897343, 28.948835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697025, 38.517635, 28.595577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364964, 38.557159, 28.376093>,  <36.165726, 38.580872, 28.244402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364964, 38.557159, 28.376093>,  <36.697025, 38.517635, 28.595577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364964, 38.557159, 28.376093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552657, 0.015941, -0.833256,
		-0.073585, -0.994979, -0.067840,
		-0.830154, 0.098807, -0.548709,
		36.115917, 38.586803, 28.211479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653328, 37.895458, 28.138994>,  <36.697025, 38.517635, 28.595577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653328, 37.895458, 28.138994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423409, 38.165585, 27.954147>,  <36.285458, 38.327660, 27.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423409, 38.165585, 27.954147>,  <36.653328, 37.895458, 28.138994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423409, 38.165585, 27.954147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324100, -0.330665, -0.886352,
		-0.751374, -0.659248, -0.028803,
		-0.574802, 0.675317, -0.462115,
		36.250969, 38.368179, 27.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618183, 37.619579, 27.572073>,  <36.653328, 37.895458, 28.138994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618183, 37.619579, 27.572073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446987, 37.966778, 27.471355>,  <36.344269, 38.175098, 27.410925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446987, 37.966778, 27.471355>,  <36.618183, 37.619579, 27.572073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446987, 37.966778, 27.471355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296782, -0.128171, -0.946305,
		-0.853665, -0.479738, -0.202751,
		-0.427992, 0.868000, -0.251792,
		36.318588, 38.227177, 27.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167675, 37.556778, 26.954437>,  <36.618183, 37.619579, 27.572073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167675, 37.556778, 26.954437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244549, 37.949280, 26.960056>,  <36.290672, 38.184780, 26.963427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244549, 37.949280, 26.960056>,  <36.167675, 37.556778, 26.954437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244549, 37.949280, 26.960056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373842, -0.059971, -0.925552,
		-0.907363, 0.183127, -0.378361,
		0.192184, 0.981258, 0.014045,
		36.302204, 38.243656, 26.964270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855320, 37.906811, 26.257318>,  <36.167675, 37.556778, 26.954437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855320, 37.906811, 26.257318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140228, 38.138569, 26.415800>,  <36.311172, 38.277622, 26.510889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140228, 38.138569, 26.415800>,  <35.855320, 37.906811, 26.257318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140228, 38.138569, 26.415800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275277, 0.288665, -0.917003,
		-0.645677, 0.762217, 0.046112,
		0.712266, 0.579395, 0.396205,
		36.353909, 38.312386, 26.534662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770477, 38.487816, 25.953241>,  <35.855320, 37.906811, 26.257318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770477, 38.487816, 25.953241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 38.481548, 26.071188>,  <36.381939, 38.477787, 26.141956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152641, 38.481548, 26.071188>,  <35.770477, 38.487816, 25.953241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152641, 38.481548, 26.071188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295247, 0.034964, -0.954781,
		0.004654, 0.999266, 0.038032,
		0.955410, -0.015672, 0.294868,
		36.439262, 38.476845, 26.159649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062347, 39.044994, 25.525366>,  <35.770477, 38.487816, 25.953241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062347, 39.044994, 25.525366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374641, 38.840294, 25.668795>,  <36.562016, 38.717476, 25.754852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374641, 38.840294, 25.668795>,  <36.062347, 39.044994, 25.525366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374641, 38.840294, 25.668795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490862, 0.147185, -0.858715,
		0.386669, 0.846435, 0.366109,
		0.780732, -0.511747, 0.358571,
		36.608860, 38.686771, 25.776365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573032, 39.360226, 25.085699>,  <36.062347, 39.044994, 25.525366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573032, 39.360226, 25.085699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722416, 39.024452, 25.243628>,  <36.812046, 38.822990, 25.338385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722416, 39.024452, 25.243628>,  <36.573032, 39.360226, 25.085699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722416, 39.024452, 25.243628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725974, -0.000485, -0.687722,
		0.577486, 0.543467, 0.609223,
		0.373459, -0.839430, 0.394823,
		36.834454, 38.772625, 25.362074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231701, 39.404800, 24.992168>,  <36.573032, 39.360226, 25.085699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231701, 39.404800, 24.992168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183453, 39.008057, 25.008535>,  <37.154503, 38.770012, 25.018356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183453, 39.008057, 25.008535>,  <37.231701, 39.404800, 24.992168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183453, 39.008057, 25.008535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601516, -0.105815, -0.791821,
		0.789702, -0.070896, 0.609381,
		-0.120619, -0.991855, 0.040917,
		37.147266, 38.710499, 25.020811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858749, 39.193344, 24.912838>,  <37.231701, 39.404800, 24.992168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858749, 39.193344, 24.912838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627060, 38.888599, 24.796862>,  <37.488045, 38.705753, 24.727276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627060, 38.888599, 24.796862>,  <37.858749, 39.193344, 24.912838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627060, 38.888599, 24.796862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602699, -0.160766, -0.781607,
		0.548862, -0.627474, 0.552292,
		-0.579228, -0.761860, -0.289939,
		37.453293, 38.660042, 24.709879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287804, 38.642380, 24.719606>,  <37.858749, 39.193344, 24.912838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287804, 38.642380, 24.719606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931274, 38.562881, 24.556610>,  <37.717358, 38.515182, 24.458813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931274, 38.562881, 24.556610>,  <38.287804, 38.642380, 24.719606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931274, 38.562881, 24.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451372, -0.304623, -0.838730,
		0.042563, -0.931507, 0.361225,
		-0.891320, -0.198746, -0.407490,
		37.663879, 38.503258, 24.434362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390278, 37.980984, 24.366333>,  <38.287804, 38.642380, 24.719606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390278, 37.980984, 24.366333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061352, 38.150204, 24.214108>,  <37.863995, 38.251736, 24.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061352, 38.150204, 24.214108>,  <38.390278, 37.980984, 24.366333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061352, 38.150204, 24.214108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329310, -0.191621, -0.924574,
		-0.464062, -0.885615, 0.018260,
		-0.822315, 0.423046, -0.380566,
		37.814659, 38.277119, 24.099937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127125, 37.573406, 23.777927>,  <38.390278, 37.980984, 24.366333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127125, 37.573406, 23.777927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956001, 37.925991, 23.697922>,  <37.853329, 38.137543, 23.649920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956001, 37.925991, 23.697922>,  <38.127125, 37.573406, 23.777927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956001, 37.925991, 23.697922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303491, -0.068354, -0.950379,
		-0.851395, -0.467281, -0.238274,
		-0.427807, 0.881462, -0.200012,
		37.827660, 38.190430, 23.637918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821129, 37.537609, 23.172264>,  <38.127125, 37.573406, 23.777927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821129, 37.537609, 23.172264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903561, 37.925423, 23.225225>,  <37.953018, 38.158112, 23.257002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903561, 37.925423, 23.225225>,  <37.821129, 37.537609, 23.172264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903561, 37.925423, 23.225225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216511, 0.086775, -0.972416,
		-0.954282, 0.229063, -0.192032,
		0.206081, 0.969536, 0.132402,
		37.965385, 38.216282, 23.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420097, 37.922607, 22.662035>,  <37.821129, 37.537609, 23.172264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420097, 37.922607, 22.662035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705502, 38.188267, 22.751314>,  <37.876743, 38.347660, 22.804882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705502, 38.188267, 22.751314>,  <37.420097, 37.922607, 22.662035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705502, 38.188267, 22.751314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122071, 0.195853, -0.973006,
		-0.689931, 0.721494, 0.058670,
		0.713509, 0.664145, 0.223199,
		37.919556, 38.387508, 22.818274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317940, 38.482830, 22.267115>,  <37.420097, 37.922607, 22.662035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317940, 38.482830, 22.267115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707710, 38.499939, 22.355362>,  <37.941570, 38.510204, 22.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707710, 38.499939, 22.355362>,  <37.317940, 38.482830, 22.267115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707710, 38.499939, 22.355362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191270, 0.357513, -0.914112,
		-0.117976, 0.932928, 0.340187,
		0.974422, 0.042775, 0.220619,
		38.000038, 38.512772, 22.421547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560383, 39.161564, 21.971409>,  <37.317940, 38.482830, 22.267115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560383, 39.161564, 21.971409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877857, 38.923210, 22.020384>,  <38.068340, 38.780197, 22.049768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877857, 38.923210, 22.020384>,  <37.560383, 39.161564, 21.971409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877857, 38.923210, 22.020384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224518, 0.099875, -0.969338,
		0.565381, 0.796839, 0.213055,
		0.793685, -0.595880, 0.122437,
		38.115963, 38.744446, 22.057116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095642, 39.427124, 21.559084>,  <37.560383, 39.161564, 21.971409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095642, 39.427124, 21.559084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196400, 39.048336, 21.638887>,  <38.256855, 38.821064, 21.686769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196400, 39.048336, 21.638887>,  <38.095642, 39.427124, 21.559084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196400, 39.048336, 21.638887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205384, -0.149150, -0.967250,
		0.945711, 0.284616, 0.156922,
		0.251890, -0.946968, 0.199508,
		38.271965, 38.764244, 21.698740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712540, 39.343895, 21.168451>,  <38.095642, 39.427124, 21.559084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712540, 39.343895, 21.168451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591286, 38.970482, 21.244993>,  <38.518532, 38.746433, 21.290918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591286, 38.970482, 21.244993>,  <38.712540, 39.343895, 21.168451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591286, 38.970482, 21.244993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317619, -0.288300, -0.903328,
		0.898459, -0.213051, 0.383902,
		-0.303134, -0.933537, 0.191357,
		38.500347, 38.690422, 21.302401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195477, 38.911942, 21.042189>,  <38.712540, 39.343895, 21.168451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195477, 38.911942, 21.042189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878616, 38.681644, 20.961180>,  <38.688499, 38.543465, 20.912575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878616, 38.681644, 20.961180>,  <39.195477, 38.911942, 21.042189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878616, 38.681644, 20.961180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478320, -0.379537, -0.791935,
		0.379087, -0.724203, 0.576041,
		-0.792151, -0.575744, -0.202524,
		38.640972, 38.508923, 20.900423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450428, 38.280109, 21.023808>,  <39.195477, 38.911942, 21.042189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450428, 38.280109, 21.023808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104210, 38.241646, 20.827200>,  <38.896481, 38.218567, 20.709236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104210, 38.241646, 20.827200>,  <39.450428, 38.280109, 21.023808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104210, 38.241646, 20.827200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472071, -0.484443, -0.736521,
		-0.167290, -0.869522, 0.464700,
		-0.865542, -0.096159, -0.491518,
		38.844547, 38.212799, 20.679745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555683, 37.553406, 20.794331>,  <39.450428, 38.280109, 21.023808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555683, 37.553406, 20.794331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271183, 37.735771, 20.580317>,  <39.100483, 37.845192, 20.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271183, 37.735771, 20.580317>,  <39.555683, 37.553406, 20.794331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271183, 37.735771, 20.580317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521688, -0.167783, -0.836475,
		-0.471130, -0.874067, -0.118508,
		-0.711252, 0.455913, -0.535038,
		39.057808, 37.872543, 20.419806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347664, 37.054829, 20.234070>,  <39.555683, 37.553406, 20.794331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347664, 37.054829, 20.234070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244457, 37.425365, 20.124296>,  <39.182533, 37.647690, 20.058432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244457, 37.425365, 20.124296>,  <39.347664, 37.054829, 20.234070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244457, 37.425365, 20.124296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306522, -0.190888, -0.932527,
		-0.916227, -0.324728, -0.234692,
		-0.258018, 0.926344, -0.274433,
		39.167053, 37.703270, 20.041965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184357, 37.012180, 19.556747>,  <39.347664, 37.054829, 20.234070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184357, 37.012180, 19.556747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234627, 37.408134, 19.583076>,  <39.264790, 37.645706, 19.598873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234627, 37.408134, 19.583076>,  <39.184357, 37.012180, 19.556747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234627, 37.408134, 19.583076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250919, 0.032475, -0.967463,
		-0.959816, 0.138099, -0.244300,
		0.125672, 0.989886, 0.065822,
		39.272327, 37.705101, 19.602823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833363, 37.399475, 19.011686>,  <39.184357, 37.012180, 19.556747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833363, 37.399475, 19.011686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155098, 37.611225, 19.119614>,  <39.348141, 37.738274, 19.184370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155098, 37.611225, 19.119614>,  <38.833363, 37.399475, 19.011686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155098, 37.611225, 19.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266308, 0.084748, -0.960155,
		-0.531144, 0.844147, -0.072809,
		0.804342, 0.529370, 0.269817,
		39.396400, 37.770035, 19.200560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786652, 38.035831, 18.620722>,  <38.833363, 37.399475, 19.011686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786652, 38.035831, 18.620722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166481, 38.017735, 18.744822>,  <39.394379, 38.006874, 18.819281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166481, 38.017735, 18.744822>,  <38.786652, 38.035831, 18.620722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166481, 38.017735, 18.744822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313398, 0.165817, -0.935033,
		-0.009137, 0.985118, 0.171636,
		0.949578, -0.045247, 0.310249,
		39.451355, 38.004162, 18.837896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203228, 38.513443, 18.122070>,  <38.786652, 38.035831, 18.620722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203228, 38.513443, 18.122070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503056, 38.319691, 18.302526>,  <39.682953, 38.203438, 18.410799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503056, 38.319691, 18.302526>,  <39.203228, 38.513443, 18.122070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503056, 38.319691, 18.302526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515856, 0.000389, -0.856675,
		0.414783, 0.874856, 0.250163,
		0.749565, -0.484383, 0.451138,
		39.727924, 38.174377, 18.437868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793446, 38.718327, 17.776703>,  <39.203228, 38.513443, 18.122070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793446, 38.718327, 17.776703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912197, 38.387283, 17.967253>,  <39.983448, 38.188660, 18.081583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912197, 38.387283, 17.967253>,  <39.793446, 38.718327, 17.776703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912197, 38.387283, 17.967253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554927, -0.256460, -0.791381,
		0.777121, 0.499300, 0.383121,
		0.296881, -0.827603, 0.476376,
		40.001263, 38.139004, 18.110165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531033, 38.593899, 17.625122>,  <39.793446, 38.718327, 17.776703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531033, 38.593899, 17.625122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364151, 38.243626, 17.722382>,  <40.264023, 38.033463, 17.780737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364151, 38.243626, 17.722382>,  <40.531033, 38.593899, 17.625122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364151, 38.243626, 17.722382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549653, -0.456191, -0.699836,
		0.723757, -0.158326, 0.671646,
		-0.417201, -0.875684, 0.243147,
		40.238991, 37.980919, 17.795326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073509, 38.109684, 17.560452>,  <40.531033, 38.593899, 17.625122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073509, 38.109684, 17.560452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759434, 37.862583, 17.577702>,  <40.570988, 37.714321, 17.588051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759434, 37.862583, 17.577702>,  <41.073509, 38.109684, 17.560452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759434, 37.862583, 17.577702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345932, -0.495322, -0.796861,
		0.513621, -0.610770, 0.602622,
		-0.785191, -0.617751, 0.043123,
		40.523876, 37.677258, 17.590639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235535, 37.397758, 17.655336>,  <41.073509, 38.109684, 17.560452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235535, 37.397758, 17.655336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889687, 37.442890, 17.459501>,  <40.682178, 37.469971, 17.342001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889687, 37.442890, 17.459501>,  <41.235535, 37.397758, 17.655336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889687, 37.442890, 17.459501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355736, -0.550646, -0.755143,
		-0.354794, -0.827078, 0.435963,
		-0.864623, 0.112832, -0.489587,
		40.630299, 37.476742, 17.312626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939285, 37.055752, 17.695347>,  <41.235535, 37.397758, 17.655336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939285, 37.055752, 17.695347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161221, 36.724834, 17.730530>,  <42.294380, 36.526283, 17.751638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161221, 36.724834, 17.730530>,  <41.939285, 37.055752, 17.695347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161221, 36.724834, 17.730530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367389, -0.148787, 0.918089,
		-0.746444, -0.541706, -0.386492,
		0.554839, -0.827295, 0.087956,
		42.327671, 36.476646, 17.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544720, 36.513111, 18.057104>,  <41.939285, 37.055752, 17.695347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544720, 36.513111, 18.057104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886627, 36.311977, 18.108538>,  <42.091770, 36.191296, 18.139399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886627, 36.311977, 18.108538>,  <41.544720, 36.513111, 18.057104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886627, 36.311977, 18.108538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193616, -0.079064, 0.977886,
		-0.481551, -0.860758, -0.164938,
		0.854764, -0.502837, 0.128583,
		42.143055, 36.161125, 18.147112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392296, 35.964352, 18.476311>,  <41.544720, 36.513111, 18.057104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392296, 35.964352, 18.476311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788048, 36.008980, 18.513590>,  <42.025497, 36.035755, 18.535957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788048, 36.008980, 18.513590>,  <41.392296, 35.964352, 18.476311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788048, 36.008980, 18.513590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044801, -0.375891, 0.925581,
		0.138300, -0.919923, -0.366899,
		0.989377, 0.111570, 0.093199,
		42.084862, 36.042450, 18.541550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832474, 35.299244, 18.759354>,  <41.392296, 35.964352, 18.476311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832474, 35.299244, 18.759354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016453, 35.645927, 18.836571>,  <42.126839, 35.853939, 18.882902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016453, 35.645927, 18.836571>,  <41.832474, 35.299244, 18.759354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016453, 35.645927, 18.836571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073281, -0.179612, 0.981004,
		0.884918, -0.465354, -0.019098,
		0.459945, 0.866709, 0.193044,
		42.154438, 35.905941, 18.894484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113541, 35.158115, 19.395384>,  <41.832474, 35.299244, 18.759354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113541, 35.158115, 19.395384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163826, 35.554649, 19.380108>,  <42.193996, 35.792568, 19.370941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163826, 35.554649, 19.380108>,  <42.113541, 35.158115, 19.395384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163826, 35.554649, 19.380108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114837, 0.052778, 0.991981,
		0.985398, -0.120315, 0.120477,
		0.125709, 0.991332, -0.038191,
		42.201538, 35.852051, 19.368650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644135, 35.352844, 19.887566>,  <42.113541, 35.158115, 19.395384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644135, 35.352844, 19.887566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441631, 35.693531, 19.833475>,  <42.320129, 35.897942, 19.801022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441631, 35.693531, 19.833475>,  <42.644135, 35.352844, 19.887566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441631, 35.693531, 19.833475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133596, 0.077455, 0.988005,
		0.851973, 0.518248, 0.074574,
		-0.506255, 0.851716, -0.135225,
		42.289757, 35.949047, 19.792908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967415, 35.818844, 20.350538>,  <42.644135, 35.352844, 19.887566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967415, 35.818844, 20.350538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603924, 35.953091, 20.251284>,  <42.385830, 36.033638, 20.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603924, 35.953091, 20.251284>,  <42.967415, 35.818844, 20.350538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603924, 35.953091, 20.251284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181558, 0.217462, 0.959034,
		0.375830, 0.916554, -0.136680,
		-0.908729, 0.335618, -0.248136,
		42.331306, 36.053776, 20.176844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820545, 36.364948, 20.840563>,  <42.967415, 35.818844, 20.350538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820545, 36.364948, 20.840563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458839, 36.274368, 20.695772>,  <42.241817, 36.220020, 20.608898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458839, 36.274368, 20.695772>,  <42.820545, 36.364948, 20.840563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458839, 36.274368, 20.695772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395994, 0.127744, 0.909324,
		-0.159680, 0.965608, -0.205188,
		-0.904263, -0.226454, -0.361977,
		42.187561, 36.206432, 20.587179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386459, 36.781616, 21.241140>,  <42.820545, 36.364948, 20.840563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386459, 36.781616, 21.241140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131535, 36.523914, 21.072012>,  <41.978580, 36.369293, 20.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131535, 36.523914, 21.072012>,  <42.386459, 36.781616, 21.241140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131535, 36.523914, 21.072012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560134, 0.010462, 0.828336,
		-0.529234, 0.764741, -0.367535,
		-0.637308, -0.644253, -0.422821,
		41.940342, 36.330639, 20.945166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786667, 37.021343, 21.540409>,  <42.386459, 36.781616, 21.241140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786667, 37.021343, 21.540409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695339, 36.657589, 21.401337>,  <41.640541, 36.439335, 21.317894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695339, 36.657589, 21.401337>,  <41.786667, 37.021343, 21.540409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695339, 36.657589, 21.401337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592240, -0.153712, 0.790964,
		-0.772737, 0.386502, -0.503481,
		-0.228318, -0.909389, -0.347681,
		41.626842, 36.384773, 21.297031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087276, 36.969353, 21.531702>,  <41.786667, 37.021343, 21.540409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087276, 36.969353, 21.531702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216549, 36.590820, 21.532822>,  <41.294113, 36.363701, 21.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216549, 36.590820, 21.532822>,  <41.087276, 36.969353, 21.531702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216549, 36.590820, 21.532822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459257, -0.154251, 0.874808,
		-0.827429, -0.284005, -0.484462,
		0.323179, -0.946334, 0.002799,
		41.313503, 36.306919, 21.533661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503120, 36.608234, 21.693045>,  <41.087276, 36.969353, 21.531702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503120, 36.608234, 21.693045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812260, 36.371849, 21.785542>,  <40.997742, 36.230019, 21.841040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812260, 36.371849, 21.785542>,  <40.503120, 36.608234, 21.693045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812260, 36.371849, 21.785542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463690, -0.277106, 0.841548,
		-0.433246, -0.757610, -0.488184,
		0.772845, -0.590964, 0.231241,
		41.044113, 36.194561, 21.854914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199181, 35.983253, 21.974535>,  <40.503120, 36.608234, 21.693045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199181, 35.983253, 21.974535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569981, 36.014839, 22.121199>,  <40.792461, 36.033791, 22.209196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569981, 36.014839, 22.121199>,  <40.199181, 35.983253, 21.974535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569981, 36.014839, 22.121199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364875, -0.036456, 0.930342,
		0.086830, -0.996211, -0.004983,
		0.926999, 0.078964, 0.366658,
		40.848080, 36.038528, 22.231195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193611, 35.566700, 22.485140>,  <40.199181, 35.983253, 21.974535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193611, 35.566700, 22.485140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514381, 35.794098, 22.558603>,  <40.706844, 35.930534, 22.602680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514381, 35.794098, 22.558603>,  <40.193611, 35.566700, 22.485140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514381, 35.794098, 22.558603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328896, 0.163466, 0.930111,
		0.498739, -0.806285, 0.318062,
		0.801927, 0.568491, 0.183657,
		40.754959, 35.964645, 22.613701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475704, 35.404850, 23.141493>,  <40.193611, 35.566700, 22.485140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475704, 35.404850, 23.141493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642162, 35.762527, 23.075472>,  <40.742039, 35.977135, 23.035858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642162, 35.762527, 23.075472>,  <40.475704, 35.404850, 23.141493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642162, 35.762527, 23.075472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054900, 0.205895, 0.977032,
		0.907638, -0.397528, 0.134774,
		0.416147, 0.894192, -0.165054,
		40.767006, 36.030785, 23.025955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024620, 35.485687, 23.621658>,  <40.475704, 35.404850, 23.141493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024620, 35.485687, 23.621658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942562, 35.858517, 23.502224>,  <40.893330, 36.082214, 23.430563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942562, 35.858517, 23.502224>,  <41.024620, 35.485687, 23.621658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942562, 35.858517, 23.502224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054968, 0.315565, 0.947311,
		0.977187, 0.177921, -0.115970,
		-0.205143, 0.932074, -0.298586,
		40.881020, 36.138138, 23.412647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266060, 35.865097, 24.073349>,  <41.024620, 35.485687, 23.621658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266060, 35.865097, 24.073349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030693, 36.147907, 23.916433>,  <40.889473, 36.317593, 23.822285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030693, 36.147907, 23.916433>,  <41.266060, 35.865097, 24.073349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030693, 36.147907, 23.916433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381031, 0.185453, 0.905772,
		0.713151, 0.682442, 0.160275,
		-0.588413, 0.707022, -0.392288,
		40.854168, 36.360012, 23.798746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374874, 36.363407, 24.566671>,  <41.266060, 35.865097, 24.073349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374874, 36.363407, 24.566671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030819, 36.433567, 24.375090>,  <40.824387, 36.475662, 24.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030819, 36.433567, 24.375090>,  <41.374874, 36.363407, 24.566671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030819, 36.433567, 24.375090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402711, 0.342751, 0.848732,
		0.313033, 0.922906, -0.224176,
		-0.860136, 0.175403, -0.478957,
		40.772778, 36.486187, 24.231403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222961, 36.951874, 24.894054>,  <41.374874, 36.363407, 24.566671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222961, 36.951874, 24.894054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890327, 36.808659, 24.724222>,  <40.690746, 36.722729, 24.622322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890327, 36.808659, 24.724222>,  <41.222961, 36.951874, 24.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890327, 36.808659, 24.724222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532164, 0.294905, 0.793620,
		-0.158934, 0.885912, -0.435775,
		-0.831590, -0.358036, -0.424581,
		40.640850, 36.701248, 24.596848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783733, 37.498871, 24.988239>,  <41.222961, 36.951874, 24.894054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783733, 37.498871, 24.988239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571011, 37.174297, 24.891281>,  <40.443378, 36.979553, 24.833105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.571011, 37.174297, 24.891281>,  <40.783733, 37.498871, 24.988239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571011, 37.174297, 24.891281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671124, 0.229245, 0.705010,
		-0.516500, 0.537608, -0.666487,
		-0.531808, -0.811433, -0.242397,
		40.411469, 36.930866, 24.818562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100891, 37.752872, 25.104691>,  <40.783733, 37.498871, 24.988239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100891, 37.752872, 25.104691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062397, 37.355366, 25.082195>,  <40.039299, 37.116863, 25.068697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062397, 37.355366, 25.082195>,  <40.100891, 37.752872, 25.104691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062397, 37.355366, 25.082195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785724, 0.041162, 0.617206,
		-0.611045, 0.103589, -0.784789,
		-0.096239, -0.993768, -0.056240,
		40.033524, 37.057236, 25.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339016, 37.591633, 24.941133>,  <40.100891, 37.752872, 25.104691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339016, 37.591633, 24.941133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519287, 37.281796, 25.118628>,  <39.627449, 37.095894, 25.225124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519287, 37.281796, 25.118628>,  <39.339016, 37.591633, 24.941133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519287, 37.281796, 25.118628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733113, -0.037528, 0.679071,
		-0.509351, -0.631346, -0.584777,
		0.450674, -0.774593, 0.443733,
		39.654488, 37.049419, 25.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772305, 37.108421, 25.079697>,  <39.339016, 37.591633, 24.941133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772305, 37.108421, 25.079697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061699, 37.008339, 25.337055>,  <39.235336, 36.948288, 25.491470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061699, 37.008339, 25.337055>,  <38.772305, 37.108421, 25.079697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061699, 37.008339, 25.337055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616240, 0.185989, 0.765282,
		-0.311146, -0.950159, -0.019629,
		0.723489, -0.250211, 0.643397,
		39.278744, 36.933277, 25.530073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469795, 36.585850, 25.551702>,  <38.772305, 37.108421, 25.079697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469795, 36.585850, 25.551702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779606, 36.712997, 25.770452>,  <38.965492, 36.789288, 25.901703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779606, 36.712997, 25.770452>,  <38.469795, 36.585850, 25.551702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779606, 36.712997, 25.770452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569159, -0.027011, 0.821784,
		0.275992, -0.947749, 0.159998,
		0.774523, 0.317870, 0.546875,
		39.011963, 36.808357, 25.934515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531338, 36.163864, 26.155319>,  <38.469795, 36.585850, 25.551702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531338, 36.163864, 26.155319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733658, 36.499699, 26.234579>,  <38.855049, 36.701199, 26.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733658, 36.499699, 26.234579>,  <38.531338, 36.163864, 26.155319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733658, 36.499699, 26.234579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362081, -0.001863, 0.932145,
		0.782982, -0.543228, 0.303055,
		0.505803, 0.839583, 0.198152,
		38.885399, 36.751572, 26.294025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627895, 36.192043, 26.876583>,  <38.531338, 36.163864, 26.155319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627895, 36.192043, 26.876583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691338, 36.570660, 26.764225>,  <38.729404, 36.797829, 26.696810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691338, 36.570660, 26.764225>,  <38.627895, 36.192043, 26.876583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691338, 36.570660, 26.764225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257923, 0.314339, 0.913601,
		0.953058, -0.072454, 0.293991,
		0.158606, 0.946542, -0.280896,
		38.738918, 36.854622, 26.679956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899162, 36.484798, 27.475492>,  <38.627895, 36.192043, 26.876583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899162, 36.484798, 27.475492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769981, 36.795528, 27.259254>,  <38.692474, 36.981968, 27.129511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769981, 36.795528, 27.259254>,  <38.899162, 36.484798, 27.475492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769981, 36.795528, 27.259254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261404, 0.475765, 0.839831,
		0.909599, 0.412538, 0.049417,
		-0.322951, 0.776827, -0.540595,
		38.673096, 37.028576, 27.097076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346855, 36.915104, 27.654547>,  <38.899162, 36.484798, 27.475492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346855, 36.915104, 27.654547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026512, 37.124443, 27.538111>,  <38.834305, 37.250046, 27.468248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026512, 37.124443, 27.538111>,  <39.346855, 36.915104, 27.654547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026512, 37.124443, 27.538111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122564, 0.332549, 0.935088,
		0.586175, 0.784552, -0.202182,
		-0.800860, 0.523345, -0.291090,
		38.786255, 37.281448, 27.450785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477364, 37.703671, 27.856895>,  <39.346855, 36.915104, 27.654547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477364, 37.703671, 27.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088848, 37.615318, 27.821560>,  <38.855740, 37.562309, 27.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088848, 37.615318, 27.821560>,  <39.477364, 37.703671, 27.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088848, 37.615318, 27.821560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125874, 0.162087, 0.978715,
		-0.201856, 0.961739, -0.185237,
		-0.971293, -0.220876, -0.088339,
		38.797459, 37.549057, 27.795057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223396, 38.121098, 28.364969>,  <39.477364, 37.703671, 27.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223396, 38.121098, 28.364969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910641, 37.885277, 28.283897>,  <38.722988, 37.743782, 28.235254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910641, 37.885277, 28.283897>,  <39.223396, 38.121098, 28.364969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910641, 37.885277, 28.283897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287522, 0.052550, 0.956331,
		-0.553160, 0.806017, -0.210599,
		-0.781886, -0.589556, -0.202679,
		38.676075, 37.708408, 28.223093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645554, 38.481464, 28.692898>,  <39.223396, 38.121098, 28.364969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645554, 38.481464, 28.692898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517345, 38.106663, 28.637358>,  <38.440418, 37.881783, 28.604033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517345, 38.106663, 28.637358>,  <38.645554, 38.481464, 28.692898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517345, 38.106663, 28.637358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439558, 0.017283, 0.898048,
		-0.839079, 0.348879, -0.417409,
		-0.320524, -0.937008, -0.138851,
		38.421188, 37.825562, 28.595703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931126, 38.433918, 28.823301>,  <38.645554, 38.481464, 28.692898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931126, 38.433918, 28.823301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054516, 38.060356, 28.895596>,  <38.128548, 37.836220, 28.938972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054516, 38.060356, 28.895596>,  <37.931126, 38.433918, 28.823301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054516, 38.060356, 28.895596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043317, 0.176012, 0.983434,
		-0.950246, -0.311192, 0.013841,
		0.308474, -0.933905, 0.180735,
		38.147057, 37.780186, 28.949816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346680, 38.074181, 29.125608>,  <37.931126, 38.433918, 28.823301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346680, 38.074181, 29.125608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672916, 37.861530, 29.216986>,  <37.868660, 37.733940, 29.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672916, 37.861530, 29.216986>,  <37.346680, 38.074181, 29.125608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672916, 37.861530, 29.216986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233956, 0.058112, 0.970509,
		-0.529221, -0.844985, -0.076981,
		0.815591, -0.531624, 0.228443,
		37.917595, 37.702042, 29.285519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195980, 37.457771, 29.689705>,  <37.346680, 38.074181, 29.125608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195980, 37.457771, 29.689705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595043, 37.484032, 29.697479>,  <37.834480, 37.499786, 29.702143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595043, 37.484032, 29.697479>,  <37.195980, 37.457771, 29.689705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595043, 37.484032, 29.697479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011707, -0.116113, 0.993167,
		0.067457, -0.991064, -0.115072,
		0.997653, 0.065649, 0.019435,
		37.894341, 37.503727, 29.703310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540089, 36.830841, 30.040737>,  <37.195980, 37.457771, 29.689705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540089, 36.830841, 30.040737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795265, 37.137741, 30.067144>,  <37.948372, 37.321880, 30.082989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795265, 37.137741, 30.067144>,  <37.540089, 36.830841, 30.040737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795265, 37.137741, 30.067144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004724, -0.089624, 0.995964,
		0.770073, -0.635051, -0.060799,
		0.637938, 0.767253, 0.066018,
		37.986645, 37.367916, 30.086950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005722, 36.500202, 30.468382>,  <37.540089, 36.830841, 30.040737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005722, 36.500202, 30.468382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061096, 36.896179, 30.456749>,  <38.094322, 37.133766, 30.449770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061096, 36.896179, 30.456749>,  <38.005722, 36.500202, 30.468382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061096, 36.896179, 30.456749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046509, 0.022834, 0.998657,
		0.989279, -0.139601, -0.042880,
		0.138434, 0.989945, -0.029082,
		38.102627, 37.193161, 30.448025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613045, 36.640152, 30.836172>,  <38.005722, 36.500202, 30.468382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613045, 36.640152, 30.836172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453739, 37.007057, 30.834635>,  <38.358158, 37.227200, 30.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453739, 37.007057, 30.834635>,  <38.613045, 36.640152, 30.836172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453739, 37.007057, 30.834635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102674, 0.048740, 0.993520,
		0.911508, 0.395285, -0.113590,
		-0.398260, 0.917265, -0.003842,
		38.334263, 37.282238, 30.833483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040062, 37.089806, 31.228153>,  <38.613045, 36.640152, 30.836172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040062, 37.089806, 31.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681236, 37.265865, 31.212421>,  <38.465942, 37.371502, 31.202982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681236, 37.265865, 31.212421>,  <39.040062, 37.089806, 31.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681236, 37.265865, 31.212421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000455, 0.089917, 0.995949,
		0.441903, 0.893411, -0.080862,
		-0.897063, 0.440149, -0.039328,
		38.412117, 37.397911, 31.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144310, 37.694981, 31.681046>,  <39.040062, 37.089806, 31.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144310, 37.694981, 31.681046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755272, 37.605320, 31.656330>,  <38.521851, 37.551525, 31.641500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755272, 37.605320, 31.656330>,  <39.144310, 37.694981, 31.681046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755272, 37.605320, 31.656330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115011, 0.232833, 0.965692,
		-0.202074, 0.946333, -0.252231,
		-0.972594, -0.224150, -0.061789,
		38.463493, 37.538074, 31.637793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924046, 38.178696, 32.064632>,  <39.144310, 37.694981, 31.681046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924046, 38.178696, 32.064632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627274, 37.911480, 32.041756>,  <38.449211, 37.751152, 32.028030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627274, 37.911480, 32.041756>,  <38.924046, 38.178696, 32.064632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627274, 37.911480, 32.041756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136407, 0.066870, 0.988393,
		-0.656458, 0.741118, -0.140738,
		-0.741927, -0.668036, -0.057196,
		38.404694, 37.711067, 32.024597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398155, 38.550766, 32.457413>,  <38.924046, 38.178696, 32.064632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398155, 38.550766, 32.457413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309319, 38.161201, 32.476051>,  <38.256016, 37.927464, 32.487232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309319, 38.161201, 32.476051>,  <38.398155, 38.550766, 32.457413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309319, 38.161201, 32.476051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246161, 0.102246, 0.963821,
		-0.943441, 0.202586, -0.262447,
		-0.222091, -0.973912, 0.046594,
		38.242691, 37.869026, 32.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779865, 38.458805, 32.989502>,  <38.398155, 38.550766, 32.457413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779865, 38.458805, 32.989502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927593, 38.089607, 32.946255>,  <38.016228, 37.868088, 32.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927593, 38.089607, 32.946255>,  <37.779865, 38.458805, 32.989502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927593, 38.089607, 32.946255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342236, -0.243255, 0.907580,
		-0.863990, -0.298182, -0.405719,
		0.369318, -0.922992, -0.108122,
		38.038387, 37.812710, 32.913818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223164, 37.992313, 33.246880>,  <37.779865, 38.458805, 32.989502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223164, 37.992313, 33.246880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570766, 37.798698, 33.287952>,  <37.779327, 37.682529, 33.312595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570766, 37.798698, 33.287952>,  <37.223164, 37.992313, 33.246880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570766, 37.798698, 33.287952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243932, -0.238527, 0.940001,
		-0.430503, -0.841910, -0.325353,
		0.869002, -0.484037, 0.102682,
		37.831467, 37.653488, 33.318756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034843, 37.290085, 33.622021>,  <37.223164, 37.992313, 33.246880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034843, 37.290085, 33.622021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418461, 37.398331, 33.655495>,  <37.648632, 37.463276, 33.675579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418461, 37.398331, 33.655495>,  <37.034843, 37.290085, 33.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418461, 37.398331, 33.655495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041074, -0.159459, 0.986350,
		0.280261, -0.949391, -0.141813,
		0.959045, 0.270611, 0.083685,
		37.706173, 37.479515, 33.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478920, 36.696728, 33.924305>,  <37.034843, 37.290085, 33.622021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478920, 36.696728, 33.924305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661488, 37.045292, 33.996216>,  <37.771030, 37.254433, 34.039364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661488, 37.045292, 33.996216>,  <37.478920, 36.696728, 33.924305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661488, 37.045292, 33.996216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001584, -0.201256, 0.979537,
		0.889763, -0.447366, -0.090477,
		0.456421, 0.871412, 0.179779,
		37.798412, 37.306717, 34.050148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627522, 36.529770, 34.547226>,  <37.478920, 36.696728, 33.924305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627522, 36.529770, 34.547226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759819, 36.906631, 34.525486>,  <37.839195, 37.132748, 34.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759819, 36.906631, 34.525486>,  <37.627522, 36.529770, 34.547226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759819, 36.906631, 34.525486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016445, 0.051830, 0.998521,
		0.943579, -0.331144, 0.001648,
		0.330740, 0.942156, -0.054351,
		37.859039, 37.189278, 34.509182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134727, 36.521267, 35.106838>,  <37.627522, 36.529770, 34.547226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134727, 36.521267, 35.106838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044090, 36.904236, 35.035294>,  <37.989708, 37.134018, 34.992367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044090, 36.904236, 35.035294>,  <38.134727, 36.521267, 35.106838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044090, 36.904236, 35.035294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018640, 0.187870, 0.982017,
		0.973811, 0.219186, -0.060416,
		-0.226594, 0.957425, -0.178864,
		37.976112, 37.191463, 34.981636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590012, 36.899494, 35.498077>,  <38.134727, 36.521267, 35.106838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590012, 36.899494, 35.498077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305954, 37.170601, 35.421844>,  <38.135517, 37.333267, 35.376106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.305954, 37.170601, 35.421844>,  <38.590012, 36.899494, 35.498077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305954, 37.170601, 35.421844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055157, 0.216302, 0.974767,
		0.701890, 0.702740, -0.116222,
		-0.710147, 0.677769, -0.190582,
		38.092911, 37.373932, 35.364670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828171, 37.526066, 35.842430>,  <38.590012, 36.899494, 35.498077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828171, 37.526066, 35.842430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428303, 37.527367, 35.832180>,  <38.188381, 37.528145, 35.826031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428303, 37.527367, 35.832180>,  <38.828171, 37.526066, 35.842430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428303, 37.527367, 35.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024623, 0.179354, 0.983476,
		0.007791, 0.983779, -0.179215,
		-0.999666, 0.003250, -0.025620,
		38.128403, 37.528343, 35.824493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609970, 38.048145, 36.412128>,  <38.828171, 37.526066, 35.842430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609970, 38.048145, 36.412128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340469, 37.774757, 36.299755>,  <38.178768, 37.610725, 36.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340469, 37.774757, 36.299755>,  <38.609970, 38.048145, 36.412128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340469, 37.774757, 36.299755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180345, -0.216589, 0.959461,
		-0.716612, 0.697104, 0.022667,
		-0.673753, -0.683473, -0.280929,
		38.138344, 37.569717, 36.215477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080574, 38.127514, 36.863323>,  <38.609970, 38.048145, 36.412128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080574, 38.127514, 36.863323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000275, 37.777626, 36.686886>,  <37.952095, 37.567692, 36.581024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000275, 37.777626, 36.686886>,  <38.080574, 38.127514, 36.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000275, 37.777626, 36.686886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497252, -0.296964, 0.815201,
		-0.844062, 0.382986, -0.375341,
		-0.200748, -0.874719, -0.441097,
		37.940052, 37.515209, 36.554558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527767, 37.731976, 37.307816>,  <38.080574, 38.127514, 36.863323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527767, 37.731976, 37.307816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659157, 37.436634, 37.072208>,  <37.737991, 37.259430, 36.930843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659157, 37.436634, 37.072208>,  <37.527767, 37.731976, 37.307816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659157, 37.436634, 37.072208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089945, -0.645236, 0.758670,
		-0.940220, -0.196224, -0.278355,
		0.328474, -0.738353, -0.589015,
		37.757698, 37.215130, 36.895504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327995, 37.218498, 37.724113>,  <37.527767, 37.731976, 37.307816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327995, 37.218498, 37.724113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536556, 37.040958, 37.432594>,  <37.661694, 36.934437, 37.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536556, 37.040958, 37.432594>,  <37.327995, 37.218498, 37.724113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536556, 37.040958, 37.432594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118662, -0.883493, 0.453167,
		-0.845023, -0.149799, -0.513319,
		0.521398, -0.443848, -0.728796,
		37.692974, 36.907803, 37.213955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977074, 36.594566, 37.476089>,  <37.327995, 37.218498, 37.724113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977074, 36.594566, 37.476089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374481, 36.568745, 37.438663>,  <37.612926, 36.553253, 37.416206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374481, 36.568745, 37.438663>,  <36.977074, 36.594566, 37.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374481, 36.568745, 37.438663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012234, -0.757592, 0.652614,
		-0.113013, -0.649528, -0.751892,
		0.993518, -0.064555, -0.093564,
		37.672535, 36.549377, 37.410595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036663, 35.925117, 37.443188>,  <36.977074, 36.594566, 37.476089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036663, 35.925117, 37.443188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391953, 36.065468, 37.561810>,  <37.605125, 36.149677, 37.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391953, 36.065468, 37.561810>,  <37.036663, 35.925117, 37.443188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391953, 36.065468, 37.561810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047361, -0.711999, 0.700582,
		0.456962, -0.608229, -0.649033,
		0.888225, 0.350878, 0.296550,
		37.658421, 36.170731, 37.650776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567558, 35.494896, 37.361134>,  <37.036663, 35.925117, 37.443188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567558, 35.494896, 37.361134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655991, 35.713905, 37.683956>,  <37.709049, 35.845310, 37.877651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655991, 35.713905, 37.683956>,  <37.567558, 35.494896, 37.361134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655991, 35.713905, 37.683956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095135, -0.811479, 0.576586,
		0.970604, -0.204253, -0.127316,
		0.221083, 0.547524, 0.807056,
		37.722317, 35.878162, 37.926071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776310, 34.965530, 37.877708>,  <37.567558, 35.494896, 37.361134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776310, 34.965530, 37.877708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722797, 35.305046, 38.082321>,  <37.690689, 35.508755, 38.205090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722797, 35.305046, 38.082321>,  <37.776310, 34.965530, 37.877708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722797, 35.305046, 38.082321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133023, -0.526879, 0.839466,
		0.982043, 0.044256, 0.183393,
		-0.133778, 0.848788, 0.511530,
		37.682663, 35.559681, 38.235779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232128, 34.824455, 38.456219>,  <37.776310, 34.965530, 37.877708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232128, 34.824455, 38.456219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933193, 35.083797, 38.514351>,  <37.753834, 35.239403, 38.549229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933193, 35.083797, 38.514351>,  <38.232128, 34.824455, 38.456219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933193, 35.083797, 38.514351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260968, -0.487566, 0.833172,
		0.611052, 0.584733, 0.533576,
		-0.747336, 0.648358, 0.145331,
		37.708992, 35.278305, 38.557949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312336, 35.081757, 39.192207>,  <38.232128, 34.824455, 38.456219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312336, 35.081757, 39.192207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931400, 35.110207, 39.073559>,  <37.702839, 35.127277, 39.002369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931400, 35.110207, 39.073559>,  <38.312336, 35.081757, 39.192207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931400, 35.110207, 39.073559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273066, -0.632144, 0.725141,
		-0.135927, 0.771579, 0.621441,
		-0.952344, 0.071128, -0.296617,
		37.645699, 35.131546, 38.984573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843216, 35.302254, 39.816444>,  <38.312336, 35.081757, 39.192207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843216, 35.302254, 39.816444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630421, 35.113472, 39.535233>,  <37.502743, 35.000202, 39.366505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630421, 35.113472, 39.535233>,  <37.843216, 35.302254, 39.816444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630421, 35.113472, 39.535233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260359, -0.698871, 0.666177,
		-0.805728, 0.537440, 0.248918,
		-0.531992, -0.471950, -0.703028,
		37.470821, 34.971886, 39.324326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238712, 35.198299, 40.042919>,  <37.843216, 35.302254, 39.816444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238712, 35.198299, 40.042919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285667, 34.898266, 39.782581>,  <37.313839, 34.718246, 39.626381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285667, 34.898266, 39.782581>,  <37.238712, 35.198299, 40.042919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285667, 34.898266, 39.782581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408234, -0.633884, 0.656914,
		-0.905299, 0.188584, -0.380618,
		0.117384, -0.750085, -0.650841,
		37.320881, 34.673241, 39.587330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760303, 35.712372, 40.259624>,  <37.238712, 35.198299, 40.042919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760303, 35.712372, 40.259624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373203, 35.763630, 40.172874>,  <36.140942, 35.794384, 40.120827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373203, 35.763630, 40.172874>,  <36.760303, 35.712372, 40.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373203, 35.763630, 40.172874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043525, -0.933054, -0.357093,
		-0.248114, -0.336138, 0.908543,
		-0.967753, 0.128144, -0.216873,
		36.082878, 35.802074, 40.107811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346233, 34.996094, 40.407299>,  <36.760303, 35.712372, 40.259624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346233, 34.996094, 40.407299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160244, 35.201416, 40.118767>,  <36.048653, 35.324612, 39.945648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160244, 35.201416, 40.118767>,  <36.346233, 34.996094, 40.407299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160244, 35.201416, 40.118767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063822, -0.832075, -0.550978,
		-0.883023, -0.210151, 0.419650,
		-0.464970, 0.513309, -0.721329,
		36.020752, 35.355408, 39.902367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959385, 34.566399, 40.623169>,  <36.346233, 34.996094, 40.407299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959385, 34.566399, 40.623169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798225, 34.238781, 40.459785>,  <36.701530, 34.042210, 40.361755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798225, 34.238781, 40.459785>,  <36.959385, 34.566399, 40.623169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798225, 34.238781, 40.459785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254769, 0.328277, -0.909575,
		0.879070, -0.470529, 0.076404,
		-0.402900, -0.819046, -0.408455,
		36.677357, 33.993069, 40.337250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485981, 34.042545, 40.172928>,  <36.959385, 34.566399, 40.623169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485981, 34.042545, 40.172928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100037, 34.078419, 40.074139>,  <36.868469, 34.099941, 40.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100037, 34.078419, 40.074139>,  <37.485981, 34.042545, 40.172928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100037, 34.078419, 40.074139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261271, 0.427101, -0.865634,
		0.027851, -0.899745, -0.435526,
		-0.964864, 0.089681, -0.246973,
		36.810577, 34.105324, 40.000046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248825, 33.746372, 39.471645>,  <37.485981, 34.042545, 40.172928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248825, 33.746372, 39.471645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050587, 34.076984, 39.578407>,  <36.931644, 34.275352, 39.642464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050587, 34.076984, 39.578407>,  <37.248825, 33.746372, 39.471645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050587, 34.076984, 39.578407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350530, 0.471493, -0.809212,
		-0.794680, -0.307481, -0.523391,
		-0.495593, 0.826529, 0.266905,
		36.901909, 34.324944, 39.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943268, 33.926636, 38.920021>,  <37.248825, 33.746372, 39.471645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943268, 33.926636, 38.920021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945507, 34.271313, 39.122978>,  <36.946850, 34.478119, 39.244751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945507, 34.271313, 39.122978>,  <36.943268, 33.926636, 38.920021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945507, 34.271313, 39.122978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134060, 0.502174, -0.854312,
		-0.990957, 0.072800, -0.112709,
		0.005594, 0.861697, 0.507392,
		36.947186, 34.529823, 39.275196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546318, 34.488071, 38.577106>,  <36.943268, 33.926636, 38.920021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546318, 34.488071, 38.577106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821571, 34.652565, 38.816223>,  <36.986725, 34.751263, 38.959694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821571, 34.652565, 38.816223>,  <36.546318, 34.488071, 38.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821571, 34.652565, 38.816223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165983, 0.712814, -0.681429,
		-0.706344, 0.568138, 0.422253,
		0.688133, 0.411237, 0.597794,
		37.028011, 34.775936, 38.995560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460728, 35.233601, 38.494625>,  <36.546318, 34.488071, 38.577106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460728, 35.233601, 38.494625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828213, 35.189888, 38.646431>,  <37.048702, 35.163662, 38.737514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828213, 35.189888, 38.646431>,  <36.460728, 35.233601, 38.494625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828213, 35.189888, 38.646431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349027, 0.674333, -0.650735,
		-0.184808, 0.730297, 0.657657,
		0.918709, -0.109279, 0.379515,
		37.103825, 35.157104, 38.760284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624271, 35.879311, 38.851780>,  <36.460728, 35.233601, 38.494625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624271, 35.879311, 38.851780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956612, 35.685753, 38.741852>,  <37.156017, 35.569618, 38.675896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956612, 35.685753, 38.741852>,  <36.624271, 35.879311, 38.851780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956612, 35.685753, 38.741852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338643, 0.831531, -0.440316,
		0.441591, 0.272771, 0.854748,
		0.830854, -0.483894, -0.274825,
		37.205868, 35.540585, 38.659405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143250, 36.344215, 38.969112>,  <36.624271, 35.879311, 38.851780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143250, 36.344215, 38.969112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284420, 36.087173, 38.697083>,  <37.369122, 35.932949, 38.533863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284420, 36.087173, 38.697083>,  <37.143250, 36.344215, 38.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284420, 36.087173, 38.697083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280333, 0.766077, -0.578393,
		0.892669, 0.013481, 0.450511,
		0.352924, -0.642607, -0.680075,
		37.390297, 35.894390, 38.493061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819115, 36.720387, 38.871422>,  <37.143250, 36.344215, 38.969112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819115, 36.720387, 38.871422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787960, 36.456894, 38.572086>,  <37.769268, 36.298798, 38.392487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787960, 36.456894, 38.572086>,  <37.819115, 36.720387, 38.871422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787960, 36.456894, 38.572086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409071, 0.663405, -0.626541,
		0.909172, -0.354922, 0.217797,
		-0.077886, -0.658729, -0.748338,
		37.764595, 36.259274, 38.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360226, 36.594261, 38.495049>,  <37.819115, 36.720387, 38.871422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360226, 36.594261, 38.495049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253365, 36.273201, 38.281742>,  <38.189247, 36.080566, 38.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253365, 36.273201, 38.281742>,  <38.360226, 36.594261, 38.495049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253365, 36.273201, 38.281742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072953, 0.534950, -0.841728,
		0.960888, -0.263777, -0.084359,
		-0.267157, -0.802652, -0.533270,
		38.173218, 36.032406, 38.121761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816418, 36.422905, 37.975571>,  <38.360226, 36.594261, 38.495049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816418, 36.422905, 37.975571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464283, 36.294617, 37.835770>,  <38.253002, 36.217644, 37.751888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464283, 36.294617, 37.835770>,  <38.816418, 36.422905, 37.975571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464283, 36.294617, 37.835770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172243, 0.470374, -0.865495,
		0.441971, -0.822125, -0.358847,
		-0.880338, -0.320714, -0.349497,
		38.200184, 36.198399, 37.730919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915413, 36.259388, 37.262371>,  <38.816418, 36.422905, 37.975571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915413, 36.259388, 37.262371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523972, 36.336575, 37.290939>,  <38.289108, 36.382885, 37.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523972, 36.336575, 37.290939>,  <38.915413, 36.259388, 37.262371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523972, 36.336575, 37.290939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029508, 0.475130, -0.879421,
		-0.203634, -0.858496, -0.470658,
		-0.978603, 0.192968, 0.071420,
		38.230392, 36.394466, 37.312366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692650, 36.412170, 36.565945>,  <38.915413, 36.259388, 37.262371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692650, 36.412170, 36.565945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350029, 36.527325, 36.737263>,  <38.144455, 36.596416, 36.840054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350029, 36.527325, 36.737263>,  <38.692650, 36.412170, 36.565945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350029, 36.527325, 36.737263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229087, 0.531553, -0.815457,
		-0.462417, -0.796601, -0.389355,
		-0.856557, 0.287885, 0.428291,
		38.093063, 36.613689, 36.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129204, 36.215900, 36.181858>,  <38.692650, 36.412170, 36.565945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129204, 36.215900, 36.181858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033131, 36.545551, 36.387039>,  <37.975487, 36.743343, 36.510147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033131, 36.545551, 36.387039>,  <38.129204, 36.215900, 36.181858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033131, 36.545551, 36.387039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147601, 0.491270, -0.858410,
		-0.959440, -0.281888, 0.003648,
		-0.240183, 0.824132, 0.512951,
		37.961075, 36.792789, 36.540924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504356, 36.438938, 36.000908>,  <38.129204, 36.215900, 36.181858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504356, 36.438938, 36.000908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711311, 36.755386, 36.131409>,  <37.835484, 36.945255, 36.209709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711311, 36.755386, 36.131409>,  <37.504356, 36.438938, 36.000908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711311, 36.755386, 36.131409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081142, 0.424879, -0.901607,
		-0.851897, 0.440005, 0.284019,
		0.517385, 0.791122, 0.326250,
		37.866528, 36.992722, 36.229282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050243, 37.039871, 36.089100>,  <37.504356, 36.438938, 36.000908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050243, 37.039871, 36.089100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335316, 37.318443, 36.122711>,  <37.506359, 37.485588, 36.142879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335316, 37.318443, 36.122711>,  <37.050243, 37.039871, 36.089100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335316, 37.318443, 36.122711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002337, 0.122141, -0.992510,
		-0.701480, 0.707151, 0.088675,
		0.712685, 0.696433, 0.084027,
		37.549122, 37.527374, 36.147919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863724, 37.629169, 35.683010>,  <37.050243, 37.039871, 36.089100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863724, 37.629169, 35.683010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261791, 37.631996, 35.722183>,  <37.500633, 37.633694, 35.745686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261791, 37.631996, 35.722183>,  <36.863724, 37.629169, 35.683010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261791, 37.631996, 35.722183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097388, 0.055694, -0.993687,
		-0.012479, 0.998423, 0.054736,
		0.995168, 0.007069, 0.097929,
		37.560341, 37.634117, 35.751560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125004, 38.188030, 35.303085>,  <36.863724, 37.629169, 35.683010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125004, 38.188030, 35.303085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419052, 37.917191, 35.316486>,  <37.595482, 37.754684, 35.324528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419052, 37.917191, 35.316486>,  <37.125004, 38.188030, 35.303085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419052, 37.917191, 35.316486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112326, 0.072913, -0.990993,
		0.668561, 0.732267, 0.129656,
		0.735125, -0.677103, 0.033506,
		37.639591, 37.714058, 35.326538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783897, 38.403648, 35.041122>,  <37.125004, 38.188030, 35.303085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783897, 38.403648, 35.041122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810932, 38.011211, 34.968590>,  <37.827152, 37.775749, 34.925072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810932, 38.011211, 34.968590>,  <37.783897, 38.403648, 35.041122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810932, 38.011211, 34.968590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096853, 0.187340, -0.977508,
		0.993001, 0.048505, 0.107684,
		0.067587, -0.981097, -0.181331,
		37.831207, 37.716881, 34.914192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147705, 38.458588, 34.463795>,  <37.783897, 38.403648, 35.041122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147705, 38.458588, 34.463795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095478, 38.062016, 34.465626>,  <38.064140, 37.824074, 34.466724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095478, 38.062016, 34.465626>,  <38.147705, 38.458588, 34.463795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095478, 38.062016, 34.465626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022448, -0.007572, -0.999719,
		0.991185, -0.130427, 0.023244,
		-0.130567, -0.991429, 0.004577,
		38.056309, 37.764587, 34.466999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722256, 38.146618, 34.199917>,  <38.147705, 38.458588, 34.463795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722256, 38.146618, 34.199917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407505, 37.903366, 34.157944>,  <38.218655, 37.757416, 34.132759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407505, 37.903366, 34.157944>,  <38.722256, 38.146618, 34.199917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407505, 37.903366, 34.157944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140136, -0.010480, -0.990077,
		0.600991, -0.793772, 0.093467,
		-0.786875, -0.608126, -0.104937,
		38.171444, 37.720928, 34.126461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949135, 37.543270, 33.835247>,  <38.722256, 38.146618, 34.199917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949135, 37.543270, 33.835247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553608, 37.544041, 33.775604>,  <38.316292, 37.544502, 33.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553608, 37.544041, 33.775604>,  <38.949135, 37.543270, 33.835247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553608, 37.544041, 33.775604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148970, -0.031733, -0.988332,
		-0.006627, -0.999495, 0.031093,
		-0.988820, 0.001918, -0.149105,
		38.256962, 37.544617, 33.730873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933235, 36.947254, 33.361462>,  <38.949135, 37.543270, 33.835247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933235, 36.947254, 33.361462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603489, 37.172832, 33.341927>,  <38.405640, 37.308178, 33.330204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603489, 37.172832, 33.341927>,  <38.933235, 36.947254, 33.361462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603489, 37.172832, 33.341927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086948, 0.040900, -0.995373,
		-0.559334, -0.824801, -0.082751,
		-0.824369, 0.563941, -0.048838,
		38.356178, 37.342014, 33.327274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309258, 36.581558, 32.945827>,  <38.933235, 36.947254, 33.361462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309258, 36.581558, 32.945827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286358, 36.980659, 32.931877>,  <38.272617, 37.220119, 32.923508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286358, 36.980659, 32.931877>,  <38.309258, 36.581558, 32.945827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286358, 36.980659, 32.931877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097672, -0.040359, -0.994400,
		-0.993571, -0.053523, 0.099763,
		-0.057250, 0.997751, -0.034872,
		38.269184, 37.279984, 32.921417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916950, 36.324753, 32.971035>,  <38.309258, 36.581558, 32.945827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916950, 36.324753, 32.971035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007549, 36.486778, 32.616718>,  <39.061909, 36.583996, 32.404129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007549, 36.486778, 32.616718>,  <38.916950, 36.324753, 32.971035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007549, 36.486778, 32.616718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849188, 0.363292, 0.383274,
		0.477051, -0.839012, -0.261691,
		0.226501, 0.405066, -0.885787,
		39.075500, 36.608299, 32.350983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467381, 35.927261, 32.554947>,  <38.916950, 36.324753, 32.971035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467381, 35.927261, 32.554947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476749, 36.318253, 32.471046>,  <39.482372, 36.552845, 32.420708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476749, 36.318253, 32.471046>,  <39.467381, 35.927261, 32.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476749, 36.318253, 32.471046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907578, 0.067188, 0.414473,
		0.419230, -0.200072, -0.885561,
		0.023426, 0.977475, -0.209748,
		39.483776, 36.611496, 32.408123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029388, 36.028503, 32.131794>,  <39.467381, 35.927261, 32.554947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029388, 36.028503, 32.131794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948311, 36.312782, 32.401260>,  <39.899666, 36.483349, 32.562939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948311, 36.312782, 32.401260>,  <40.029388, 36.028503, 32.131794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948311, 36.312782, 32.401260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935388, -0.063047, 0.347958,
		0.289766, 0.700664, -0.652001,
		-0.202694, 0.710701, 0.673661,
		39.887501, 36.525993, 32.603359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382030, 36.613388, 32.182774>,  <40.029388, 36.028503, 32.131794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382030, 36.613388, 32.182774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273392, 36.528248, 32.558205>,  <40.208206, 36.477161, 32.783463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273392, 36.528248, 32.558205>,  <40.382030, 36.613388, 32.182774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273392, 36.528248, 32.558205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952143, -0.201502, 0.229829,
		0.140205, 0.956080, 0.257397,
		-0.271601, -0.212855, 0.938576,
		40.191910, 36.464390, 32.839779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863567, 36.993664, 32.671898>,  <40.382030, 36.613388, 32.182774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863567, 36.993664, 32.671898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714764, 36.676266, 32.864552>,  <40.625481, 36.485825, 32.980145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714764, 36.676266, 32.864552>,  <40.863567, 36.993664, 32.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714764, 36.676266, 32.864552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892154, -0.162409, 0.421527,
		-0.256260, 0.586501, 0.768341,
		-0.372011, -0.793499, 0.481630,
		40.603161, 36.438217, 33.009041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029457, 37.086174, 33.289921>,  <40.863567, 36.993664, 32.671898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029457, 37.086174, 33.289921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968300, 36.694157, 33.239105>,  <40.931606, 36.458946, 33.208614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968300, 36.694157, 33.239105>,  <41.029457, 37.086174, 33.289921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968300, 36.694157, 33.239105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846944, -0.196184, 0.494164,
		-0.509225, -0.032041, 0.860037,
		-0.152892, -0.980043, -0.127039,
		40.922432, 36.400143, 33.200993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917377, 36.715321, 33.973629>,  <41.029457, 37.086174, 33.289921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917377, 36.715321, 33.973629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103703, 36.527863, 33.673393>,  <41.215500, 36.415386, 33.493252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103703, 36.527863, 33.673393>,  <40.917377, 36.715321, 33.973629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103703, 36.527863, 33.673393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847915, -0.006214, 0.530095,
		-0.253093, -0.883362, 0.394481,
		0.465815, -0.468650, -0.750589,
		41.243446, 36.387268, 33.448215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372150, 36.171368, 34.318546>,  <40.917377, 36.715321, 33.973629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372150, 36.171368, 34.318546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478970, 36.193035, 33.933681>,  <41.543060, 36.206036, 33.702763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478970, 36.193035, 33.933681>,  <41.372150, 36.171368, 34.318546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478970, 36.193035, 33.933681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961314, -0.084940, 0.262033,
		-0.067532, -0.994912, -0.074755,
		0.267050, 0.054168, -0.962159,
		41.559086, 36.209286, 33.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821732, 35.623043, 34.118774>,  <41.372150, 36.171368, 34.318546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821732, 35.623043, 34.118774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884079, 35.958344, 33.909763>,  <41.921486, 36.159523, 33.784355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884079, 35.958344, 33.909763>,  <41.821732, 35.623043, 34.118774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884079, 35.958344, 33.909763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961538, -0.007642, 0.274566,
		0.226162, -0.545226, -0.807204,
		0.155869, 0.838254, -0.522527,
		41.930840, 36.209820, 33.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264400, 35.577637, 33.453289>,  <41.821732, 35.623043, 34.118774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264400, 35.577637, 33.453289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294437, 35.889118, 33.702442>,  <42.312462, 36.076008, 33.851933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294437, 35.889118, 33.702442>,  <42.264400, 35.577637, 33.453289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294437, 35.889118, 33.702442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873076, -0.353130, 0.336212,
		0.481767, 0.518571, -0.706388,
		0.075097, 0.778706, 0.622878,
		42.316967, 36.122730, 33.889305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943150, 35.966503, 33.479588>,  <42.264400, 35.577637, 33.453289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943150, 35.966503, 33.479588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783867, 36.002529, 33.844734>,  <42.688297, 36.024147, 34.063820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783867, 36.002529, 33.844734>,  <42.943150, 35.966503, 33.479588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783867, 36.002529, 33.844734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901538, -0.145237, 0.407598,
		0.169293, 0.985289, -0.023366,
		-0.398208, 0.090069, 0.912863,
		42.664406, 36.029549, 34.118591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474262, 36.431114, 33.984013>,  <42.943150, 35.966503, 33.479588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474262, 36.431114, 33.984013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575764, 36.814514, 34.036007>,  <43.636665, 37.044552, 34.067204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575764, 36.814514, 34.036007>,  <43.474262, 36.431114, 33.984013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575764, 36.814514, 34.036007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495235, -0.244173, 0.833740,
		0.830874, -0.147193, -0.536641,
		0.253753, 0.958496, 0.129982,
		43.651890, 37.102062, 34.075001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257729, 36.639008, 33.999798>,  <43.474262, 36.431114, 33.984013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257729, 36.639008, 33.999798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017799, 36.878883, 34.211681>,  <43.873844, 37.022808, 34.338810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017799, 36.878883, 34.211681>,  <44.257729, 36.639008, 33.999798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017799, 36.878883, 34.211681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458417, -0.285035, 0.841789,
		0.655797, 0.747748, -0.103938,
		-0.599821, 0.599690, 0.529705,
		43.837852, 37.058792, 34.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665565, 37.052124, 34.525909>,  <44.257729, 36.639008, 33.999798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665565, 37.052124, 34.525909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315750, 37.007004, 34.714573>,  <44.105862, 36.979931, 34.827770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315750, 37.007004, 34.714573>,  <44.665565, 37.052124, 34.525909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315750, 37.007004, 34.714573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483799, -0.135665, 0.864600,
		-0.033541, 0.984312, 0.173217,
		-0.874536, -0.112802, 0.471659,
		44.053391, 36.973164, 34.856071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096424, 37.138836, 35.061119>,  <44.665565, 37.052124, 34.525909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096424, 37.138836, 35.061119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888592, 36.817947, 35.178741>,  <44.763893, 36.625412, 35.249313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888592, 36.817947, 35.178741>,  <45.096424, 37.138836, 35.061119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888592, 36.817947, 35.178741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762402, -0.279941, 0.583418,
		-0.385713, 0.527324, 0.757070,
		-0.519585, -0.802224, 0.294056,
		44.732716, 36.577282, 35.266960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750328, 36.758205, 35.258751>,  <45.096424, 37.138836, 35.061119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750328, 36.758205, 35.258751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116516, 36.715851, 35.414032>,  <46.336227, 36.690437, 35.507202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.116516, 36.715851, 35.414032>,  <45.750328, 36.758205, 35.258751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116516, 36.715851, 35.414032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168778, -0.774736, -0.609342,
		0.365277, 0.623355, -0.691377,
		0.915471, -0.105889, 0.388202,
		46.391159, 36.684086, 35.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191132, 36.438244, 34.782227>,  <45.750328, 36.758205, 35.258751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191132, 36.438244, 34.782227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418766, 36.398430, 35.108719>,  <46.555347, 36.374542, 35.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418766, 36.398430, 35.108719>,  <46.191132, 36.438244, 34.782227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418766, 36.398430, 35.108719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530300, -0.714208, -0.456825,
		0.628429, 0.692820, -0.353662,
		0.569086, -0.099535, 0.816232,
		46.589493, 36.368568, 35.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.927391, 36.578594, 34.589615>,  <46.191132, 36.438244, 34.782227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.927391, 36.578594, 34.589615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904018, 36.362411, 34.925350>,  <46.889996, 36.232700, 35.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904018, 36.362411, 34.925350>,  <46.927391, 36.578594, 34.589615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904018, 36.362411, 34.925350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586105, -0.699187, -0.409414,
		0.808126, 0.468018, 0.357620,
		-0.058430, -0.540460, 0.839338,
		46.886490, 36.200272, 35.177151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474644, 36.239033, 34.484589>,  <46.927391, 36.578594, 34.589615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474644, 36.239033, 34.484589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303795, 36.049286, 34.792496>,  <47.201286, 35.935436, 34.977242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.303795, 36.049286, 34.792496>,  <47.474644, 36.239033, 34.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.303795, 36.049286, 34.792496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457631, -0.847652, -0.268438,
		0.779833, 0.237614, 0.579138,
		-0.427123, -0.474368, 0.769767,
		47.175659, 35.906975, 35.023426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704918, 35.547916, 34.195461>,  <47.474644, 36.239033, 34.484589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704918, 35.547916, 34.195461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489159, 35.528412, 34.531715>,  <47.359703, 35.516708, 34.733467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489159, 35.528412, 34.531715>,  <47.704918, 35.547916, 34.195461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489159, 35.528412, 34.531715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004994, -0.998119, -0.061099,
		0.842035, -0.037155, 0.538142,
		-0.539400, -0.048760, 0.840637,
		47.327339, 35.513783, 34.783905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.029530, 35.068642, 34.713135>,  <47.704918, 35.547916, 34.195461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.029530, 35.068642, 34.713135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643246, 35.087444, 34.815266>,  <47.411476, 35.098728, 34.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643246, 35.087444, 34.815266>,  <48.029530, 35.068642, 34.713135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643246, 35.087444, 34.815266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001709, -0.984600, 0.174812,
		0.259617, 0.168381, 0.950919,
		-0.965710, 0.047009, 0.255331,
		47.353531, 35.101547, 34.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.438816, 32.610630, 22.848764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089622, 32.495205, 22.691471>,  <36.880108, 32.425949, 22.597095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089622, 32.495205, 22.691471>,  <37.438816, 32.610630, 22.848764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089622, 32.495205, 22.691471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467550, 0.265473, 0.843161,
		-0.138912, 0.919921, -0.366671,
		-0.872984, -0.288563, -0.393232,
		36.827728, 32.408638, 22.573502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014065, 33.164703, 22.982456>,  <37.438816, 32.610630, 22.848764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014065, 33.164703, 22.982456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753834, 32.872562, 22.899187>,  <36.597694, 32.697277, 22.849226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753834, 32.872562, 22.899187>,  <37.014065, 33.164703, 22.982456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753834, 32.872562, 22.899187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519064, 0.227532, 0.823894,
		-0.554368, 0.644060, -0.527127,
		-0.650576, -0.730353, -0.208171,
		36.558662, 32.653458, 22.836735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325161, 33.375061, 23.135080>,  <37.014065, 33.164703, 22.982456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325161, 33.375061, 23.135080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293552, 32.977646, 23.167662>,  <36.274590, 32.739197, 23.187210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293552, 32.977646, 23.167662>,  <36.325161, 33.375061, 23.135080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293552, 32.977646, 23.167662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460628, 0.108853, 0.880893,
		-0.884069, 0.032086, -0.466254,
		-0.079018, -0.993540, 0.081454,
		36.269848, 32.679585, 23.192099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712990, 33.251659, 23.568743>,  <36.325161, 33.375061, 23.135080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712990, 33.251659, 23.568743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884178, 32.890797, 23.590483>,  <35.986893, 32.674278, 23.603527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884178, 32.890797, 23.590483>,  <35.712990, 33.251659, 23.568743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884178, 32.890797, 23.590483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433010, -0.151887, 0.888500,
		-0.793311, -0.403787, -0.455646,
		0.427972, -0.902157, 0.054350,
		36.012569, 32.620152, 23.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173988, 32.683998, 23.794468>,  <35.712990, 33.251659, 23.568743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173988, 32.683998, 23.794468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520473, 32.513760, 23.899193>,  <35.728363, 32.411617, 23.962027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520473, 32.513760, 23.899193>,  <35.173988, 32.683998, 23.794468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520473, 32.513760, 23.899193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358898, -0.165369, 0.918610,
		-0.347663, -0.889674, -0.295991,
		0.866211, -0.425597, 0.261810,
		35.780338, 32.386082, 23.977736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011051, 32.101028, 24.145197>,  <35.173988, 32.683998, 23.794468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011051, 32.101028, 24.145197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380474, 32.187771, 24.271704>,  <35.602127, 32.239815, 24.347607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380474, 32.187771, 24.271704>,  <35.011051, 32.101028, 24.145197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380474, 32.187771, 24.271704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271162, -0.213855, 0.938476,
		0.271145, -0.952492, -0.138704,
		0.923554, 0.216852, 0.316265,
		35.657539, 32.252827, 24.366583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177517, 31.502552, 24.570368>,  <35.011051, 32.101028, 24.145197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177517, 31.502552, 24.570368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411758, 31.810650, 24.671398>,  <35.552303, 31.995508, 24.732016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411758, 31.810650, 24.671398>,  <35.177517, 31.502552, 24.570368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411758, 31.810650, 24.671398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222623, -0.146788, 0.963791,
		0.779429, -0.620626, 0.085515,
		0.585601, 0.770244, 0.252576,
		35.587440, 32.041721, 24.747171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586506, 31.278219, 25.147709>,  <35.177517, 31.502552, 24.570368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586506, 31.278219, 25.147709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577297, 31.678097, 25.143990>,  <35.571774, 31.918022, 25.141758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577297, 31.678097, 25.143990>,  <35.586506, 31.278219, 25.147709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577297, 31.678097, 25.143990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213357, 0.004176, 0.976965,
		0.976703, 0.024475, 0.213195,
		-0.023021, 0.999692, -0.009300,
		35.570393, 31.978004, 25.141199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639610, 31.494383, 25.887012>,  <35.586506, 31.278219, 25.147709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639610, 31.494383, 25.887012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553921, 31.859098, 25.746870>,  <35.502506, 32.077927, 25.662785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553921, 31.859098, 25.746870>,  <35.639610, 31.494383, 25.887012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553921, 31.859098, 25.746870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039251, 0.366430, 0.929618,
		0.975995, 0.185396, -0.114287,
		-0.214226, 0.911788, -0.350356,
		35.489655, 32.132633, 25.641764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139114, 32.034233, 26.171577>,  <35.639610, 31.494383, 25.887012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139114, 32.034233, 26.171577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800137, 32.217960, 26.065098>,  <35.596748, 32.328197, 26.001209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800137, 32.217960, 26.065098>,  <36.139114, 32.034233, 26.171577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800137, 32.217960, 26.065098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013191, 0.519496, 0.854371,
		0.530718, 0.720522, -0.446303,
		-0.847446, 0.459317, -0.266201,
		35.545902, 32.355755, 25.985237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177425, 32.651646, 26.408201>,  <36.139114, 32.034233, 26.171577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177425, 32.651646, 26.408201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785713, 32.674328, 26.330446>,  <35.550686, 32.687939, 26.283792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785713, 32.674328, 26.330446>,  <36.177425, 32.651646, 26.408201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785713, 32.674328, 26.330446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144217, 0.478546, 0.866138,
		0.142142, 0.876229, -0.460454,
		-0.979284, 0.056709, -0.194389,
		35.491928, 32.691341, 26.272129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045120, 33.341587, 26.431204>,  <36.177425, 32.651646, 26.408201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045120, 33.341587, 26.431204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705826, 33.138996, 26.493143>,  <35.502251, 33.017441, 26.530306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705826, 33.138996, 26.493143>,  <36.045120, 33.341587, 26.431204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705826, 33.138996, 26.493143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062870, 0.386601, 0.920102,
		-0.525873, 0.770728, -0.359771,
		-0.848236, -0.506476, 0.154847,
		35.451355, 32.987053, 26.539597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540611, 33.823326, 26.701031>,  <36.045120, 33.341587, 26.431204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540611, 33.823326, 26.701031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404881, 33.460735, 26.801559>,  <35.323444, 33.243183, 26.861877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404881, 33.460735, 26.801559>,  <35.540611, 33.823326, 26.701031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404881, 33.460735, 26.801559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160823, 0.319145, 0.933961,
		-0.926820, 0.276495, -0.254075,
		-0.339323, -0.906475, 0.251323,
		35.303085, 33.188793, 26.876957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979095, 34.076061, 27.018648>,  <35.540611, 33.823326, 26.701031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979095, 34.076061, 27.018648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025494, 33.695423, 27.132494>,  <35.053333, 33.467041, 27.200802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025494, 33.695423, 27.132494>,  <34.979095, 34.076061, 27.018648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025494, 33.695423, 27.132494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096575, 0.274384, 0.956758,
		-0.988544, -0.138464, -0.060074,
		0.115993, -0.951599, 0.284613,
		35.060291, 33.409943, 27.217878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383667, 33.765072, 27.390057>,  <34.979095, 34.076061, 27.018648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383667, 33.765072, 27.390057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697186, 33.545948, 27.507067>,  <34.885296, 33.414474, 27.577272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.697186, 33.545948, 27.507067>,  <34.383667, 33.765072, 27.390057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697186, 33.545948, 27.507067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285545, 0.100391, 0.953093,
		-0.551484, -0.830555, -0.077740,
		0.783791, -0.547814, 0.292525,
		34.932323, 33.381603, 27.594824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111530, 33.218472, 27.723757>,  <34.383667, 33.765072, 27.390057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111530, 33.218472, 27.723757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472725, 33.314629, 27.866203>,  <34.689442, 33.372322, 27.951672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.472725, 33.314629, 27.866203>,  <34.111530, 33.218472, 27.723757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472725, 33.314629, 27.866203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378872, 0.054586, 0.923838,
		0.202649, -0.969139, 0.140371,
		0.902989, 0.240397, 0.356118,
		34.743622, 33.386745, 27.973038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168377, 32.874393, 28.313879>,  <34.111530, 33.218472, 27.723757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168377, 32.874393, 28.313879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476307, 33.122780, 28.372908>,  <34.661064, 33.271812, 28.408325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476307, 33.122780, 28.372908>,  <34.168377, 32.874393, 28.313879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476307, 33.122780, 28.372908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257821, 0.091036, 0.961895,
		0.583866, -0.778537, 0.230178,
		0.769824, 0.620961, 0.147570,
		34.707253, 33.309067, 28.417179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480103, 32.650772, 28.996088>,  <34.168377, 32.874393, 28.313879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480103, 32.650772, 28.996088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632416, 33.017300, 28.946499>,  <34.723804, 33.237217, 28.916746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632416, 33.017300, 28.946499>,  <34.480103, 32.650772, 28.996088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632416, 33.017300, 28.946499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110754, 0.178303, 0.977723,
		0.918008, -0.358569, 0.169381,
		0.380782, 0.916317, -0.123971,
		34.746651, 33.292194, 28.909307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091530, 32.712326, 29.395893>,  <34.480103, 32.650772, 28.996088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091530, 32.712326, 29.395893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971424, 33.086605, 29.321798>,  <34.899361, 33.311172, 29.277342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971424, 33.086605, 29.321798>,  <35.091530, 32.712326, 29.395893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971424, 33.086605, 29.321798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213475, 0.123353, 0.969130,
		0.929660, 0.330543, 0.162709,
		-0.300268, 0.935695, -0.185239,
		34.881344, 33.367313, 29.266226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370644, 33.132576, 29.917042>,  <35.091530, 32.712326, 29.395893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370644, 33.132576, 29.917042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103611, 33.391914, 29.770632>,  <34.943390, 33.547520, 29.682785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103611, 33.391914, 29.770632>,  <35.370644, 33.132576, 29.917042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103611, 33.391914, 29.770632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244676, 0.273266, 0.930301,
		0.703183, 0.710611, -0.023793,
		-0.667584, 0.648350, -0.366026,
		34.903336, 33.586418, 29.660824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499115, 33.696507, 30.191015>,  <35.370644, 33.132576, 29.917042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499115, 33.696507, 30.191015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127842, 33.763588, 30.058140>,  <34.905079, 33.803837, 29.978415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127842, 33.763588, 30.058140>,  <35.499115, 33.696507, 30.191015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127842, 33.763588, 30.058140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228013, 0.449166, 0.863863,
		0.294080, 0.877568, -0.378671,
		-0.928185, 0.167703, -0.332188,
		34.849388, 33.813900, 29.958483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307804, 34.465099, 30.273211>,  <35.499115, 33.696507, 30.191015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307804, 34.465099, 30.273211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981129, 34.234268, 30.271975>,  <34.785126, 34.095772, 30.271233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981129, 34.234268, 30.271975>,  <35.307804, 34.465099, 30.273211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981129, 34.234268, 30.271975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252248, 0.352160, 0.901307,
		-0.519033, 0.736864, -0.433170,
		-0.816686, -0.577074, -0.003090,
		34.736122, 34.061146, 30.271048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712303, 34.756435, 30.956812>,  <35.307804, 34.465099, 30.273211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712303, 34.756435, 30.956812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043190, 34.865120, 31.153542>,  <36.241722, 34.930332, 31.271580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043190, 34.865120, 31.153542>,  <35.712303, 34.756435, 30.956812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043190, 34.865120, 31.153542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480323, 0.112240, -0.869880,
		-0.291561, 0.955810, -0.037664,
		0.827213, 0.271714, 0.491823,
		36.291355, 34.946632, 31.301088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857754, 35.392494, 30.663860>,  <35.712303, 34.756435, 30.956812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857754, 35.392494, 30.663860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176979, 35.215611, 30.827587>,  <36.368515, 35.109482, 30.925823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176979, 35.215611, 30.827587>,  <35.857754, 35.392494, 30.663860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176979, 35.215611, 30.827587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454259, -0.004779, -0.890857,
		0.395902, 0.896899, 0.197064,
		0.798066, -0.442210, 0.409316,
		36.416397, 35.082947, 30.950382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294044, 35.800507, 30.342211>,  <35.857754, 35.392494, 30.663860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294044, 35.800507, 30.342211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477890, 35.474701, 30.483812>,  <36.588196, 35.279217, 30.568773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477890, 35.474701, 30.483812>,  <36.294044, 35.800507, 30.342211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477890, 35.474701, 30.483812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518723, -0.077346, -0.851437,
		0.720889, 0.574962, 0.386959,
		0.459614, -0.814516, 0.354004,
		36.615776, 35.230347, 30.590014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064701, 35.953854, 30.269983>,  <36.294044, 35.800507, 30.342211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064701, 35.953854, 30.269983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015682, 35.557274, 30.287920>,  <36.986271, 35.319324, 30.298681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015682, 35.557274, 30.287920>,  <37.064701, 35.953854, 30.269983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015682, 35.557274, 30.287920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545927, -0.105074, -0.831218,
		0.828822, -0.077383, 0.554135,
		-0.122547, -0.991449, 0.044843,
		36.978916, 35.259838, 30.301373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691338, 35.699894, 30.129259>,  <37.064701, 35.953854, 30.269983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691338, 35.699894, 30.129259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445938, 35.391876, 30.059231>,  <37.298698, 35.207066, 30.017214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445938, 35.391876, 30.059231>,  <37.691338, 35.699894, 30.129259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445938, 35.391876, 30.059231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494961, -0.202210, -0.845059,
		0.615334, -0.605094, 0.505199,
		-0.613496, -0.770047, -0.175071,
		37.261890, 35.160862, 30.006710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187202, 35.167599, 29.926258>,  <37.691338, 35.699894, 30.129259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187202, 35.167599, 29.926258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828739, 35.066292, 29.780519>,  <37.613659, 35.005508, 29.693077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828739, 35.066292, 29.780519>,  <38.187202, 35.167599, 29.926258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828739, 35.066292, 29.780519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438271, -0.376835, -0.816036,
		0.069380, -0.890982, 0.448706,
		-0.896161, -0.253271, -0.364347,
		37.559891, 34.990311, 29.671215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342457, 34.638500, 29.565041>,  <38.187202, 35.167599, 29.926258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342457, 34.638500, 29.565041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976009, 34.677376, 29.409464>,  <37.756142, 34.700703, 29.316118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.976009, 34.677376, 29.409464>,  <38.342457, 34.638500, 29.565041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976009, 34.677376, 29.409464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295631, -0.491510, -0.819159,
		-0.270780, -0.865432, 0.421551,
		-0.916123, 0.097188, -0.388939,
		37.701172, 34.706532, 29.292782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311588, 34.053493, 29.138571>,  <38.342457, 34.638500, 29.565041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311588, 34.053493, 29.138571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016144, 34.288338, 29.006058>,  <37.838875, 34.429245, 28.926550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016144, 34.288338, 29.006058>,  <38.311588, 34.053493, 29.138571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016144, 34.288338, 29.006058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150509, -0.335402, -0.929975,
		-0.657111, -0.736754, 0.159368,
		-0.738615, 0.587111, -0.331284,
		37.794559, 34.464470, 28.906672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804447, 33.667522, 28.936359>,  <38.311588, 34.053493, 29.138571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804447, 33.667522, 28.936359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743477, 34.007496, 28.734613>,  <37.706894, 34.211479, 28.613565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743477, 34.007496, 28.734613>,  <37.804447, 33.667522, 28.936359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743477, 34.007496, 28.734613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004675, -0.509702, -0.860339,
		-0.988304, -0.133495, 0.073718,
		-0.152426, 0.849931, -0.504364,
		37.697750, 34.262474, 28.583303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174278, 33.601521, 28.539873>,  <37.804447, 33.667522, 28.936359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174278, 33.601521, 28.539873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425179, 33.861603, 28.368389>,  <37.575718, 34.017651, 28.265499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425179, 33.861603, 28.368389>,  <37.174278, 33.601521, 28.539873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425179, 33.861603, 28.368389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098455, -0.479847, -0.871811,
		-0.772569, 0.589053, -0.236969,
		0.627252, 0.650203, -0.428710,
		37.613354, 34.056664, 28.239777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964321, 33.724930, 27.863310>,  <37.174278, 33.601521, 28.539873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964321, 33.724930, 27.863310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340851, 33.854027, 27.823818>,  <37.566769, 33.931484, 27.800123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340851, 33.854027, 27.823818>,  <36.964321, 33.724930, 27.863310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340851, 33.854027, 27.823818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018605, -0.242461, -0.969983,
		-0.336988, 0.914906, -0.222230,
		0.941325, 0.322738, -0.098728,
		37.623249, 33.950848, 27.794199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936695, 33.901878, 27.232136>,  <36.964321, 33.724930, 27.863310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936695, 33.901878, 27.232136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330250, 33.914989, 27.302433>,  <37.566383, 33.922855, 27.344612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330250, 33.914989, 27.302433>,  <36.936695, 33.901878, 27.232136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330250, 33.914989, 27.302433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176938, -0.319100, -0.931058,
		0.025565, 0.947154, -0.319758,
		0.983890, 0.032775, 0.175745,
		37.625416, 33.924824, 27.355156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340137, 34.381611, 26.719418>,  <36.936695, 33.901878, 27.232136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340137, 34.381611, 26.719418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628868, 34.151222, 26.872894>,  <37.802105, 34.012989, 26.964981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628868, 34.151222, 26.872894>,  <37.340137, 34.381611, 26.719418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628868, 34.151222, 26.872894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388055, -0.122218, -0.913497,
		0.573044, 0.808281, 0.135288,
		0.721827, -0.575973, 0.383694,
		37.845417, 33.978432, 26.988003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005405, 34.632889, 26.469921>,  <37.340137, 34.381611, 26.719418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005405, 34.632889, 26.469921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038738, 34.243118, 26.553392>,  <38.058739, 34.009254, 26.603476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038738, 34.243118, 26.553392>,  <38.005405, 34.632889, 26.469921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038738, 34.243118, 26.553392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436598, -0.152541, -0.886630,
		0.895789, 0.164990, 0.412722,
		0.083328, -0.974428, 0.208679,
		38.063736, 33.950790, 26.615995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748985, 34.454098, 26.491556>,  <38.005405, 34.632889, 26.469921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748985, 34.454098, 26.491556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535149, 34.125690, 26.411404>,  <38.406849, 33.928646, 26.363312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535149, 34.125690, 26.411404>,  <38.748985, 34.454098, 26.491556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535149, 34.125690, 26.411404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522379, -0.134627, -0.842019,
		0.664332, -0.554808, 0.500850,
		-0.534587, -0.821014, -0.200383,
		38.374771, 33.879387, 26.351288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155300, 33.977818, 26.071808>,  <38.748985, 34.454098, 26.491556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155300, 33.977818, 26.071808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793079, 33.816799, 26.018253>,  <38.575745, 33.720188, 25.986120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793079, 33.816799, 26.018253>,  <39.155300, 33.977818, 26.071808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793079, 33.816799, 26.018253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174689, -0.066228, -0.982394,
		0.386590, -0.913002, 0.130293,
		-0.905556, -0.402544, -0.133888,
		38.521412, 33.696037, 25.978086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297787, 33.591400, 25.488573>,  <39.155300, 33.977818, 26.071808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297787, 33.591400, 25.488573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901928, 33.633888, 25.527184>,  <38.664413, 33.659382, 25.550350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901928, 33.633888, 25.527184>,  <39.297787, 33.591400, 25.488573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901928, 33.633888, 25.527184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112705, -0.158679, -0.980877,
		-0.088869, -0.981600, 0.169007,
		-0.989646, 0.106218, 0.096529,
		38.605034, 33.665756, 25.556143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984081, 33.003662, 25.217316>,  <39.297787, 33.591400, 25.488573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984081, 33.003662, 25.217316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695457, 33.280586, 25.214243>,  <38.522282, 33.446739, 25.212399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695457, 33.280586, 25.214243>,  <38.984081, 33.003662, 25.217316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695457, 33.280586, 25.214243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203170, -0.222336, -0.953566,
		-0.661873, -0.686492, 0.301085,
		-0.721558, 0.692311, -0.007684,
		38.478989, 33.488281, 25.211937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.377926, 32.596790, 24.841976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358482, 32.996197, 24.832176>,  <38.346817, 33.235840, 24.826296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358482, 32.996197, 24.832176>,  <38.377926, 32.596790, 24.841976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358482, 32.996197, 24.832176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075816, -0.028148, -0.996724,
		-0.995936, -0.046591, 0.077072,
		-0.048608, 0.998517, -0.024501,
		38.343899, 33.295753, 24.824825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023979, 32.690056, 24.300280>,  <38.377926, 32.596790, 24.841976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023979, 32.690056, 24.300280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135952, 33.071056, 24.348253>,  <38.203136, 33.299656, 24.377037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135952, 33.071056, 24.348253>,  <38.023979, 32.690056, 24.300280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135952, 33.071056, 24.348253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071384, 0.103931, -0.992020,
		-0.957362, 0.286262, -0.038899,
		0.279934, 0.952498, 0.119934,
		38.219933, 33.356804, 24.384233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573051, 33.216194, 23.947956>,  <38.023979, 32.690056, 24.300280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573051, 33.216194, 23.947956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911198, 33.423462, 23.999880>,  <38.114086, 33.547825, 24.031034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.911198, 33.423462, 23.999880>,  <37.573051, 33.216194, 23.947956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911198, 33.423462, 23.999880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044486, 0.173866, -0.983764,
		-0.532329, 0.837417, 0.123930,
		0.845368, 0.518173, 0.129808,
		38.164806, 33.578915, 24.038822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458096, 33.832169, 23.556061>,  <37.573051, 33.216194, 23.947956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458096, 33.832169, 23.556061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847866, 33.765640, 23.616489>,  <38.081730, 33.725723, 23.652746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847866, 33.765640, 23.616489>,  <37.458096, 33.832169, 23.556061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847866, 33.765640, 23.616489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176908, 0.153406, -0.972198,
		0.138520, 0.974066, 0.178907,
		0.974431, -0.166319, 0.151070,
		38.140194, 33.715744, 23.661810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781105, 34.373207, 23.135040>,  <37.458096, 33.832169, 23.556061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781105, 34.373207, 23.135040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047684, 34.086143, 23.215853>,  <38.207630, 33.913906, 23.264339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047684, 34.086143, 23.215853>,  <37.781105, 34.373207, 23.135040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047684, 34.086143, 23.215853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256375, -0.033860, -0.965984,
		0.700089, 0.695570, 0.161424,
		0.666444, -0.717660, 0.202031,
		38.247616, 33.870846, 23.276463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474583, 34.644997, 22.857182>,  <37.781105, 34.373207, 23.135040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474583, 34.644997, 22.857182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494617, 34.246296, 22.882383>,  <38.506638, 34.007076, 22.897505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.494617, 34.246296, 22.882383>,  <38.474583, 34.644997, 22.857182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494617, 34.246296, 22.882383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483119, -0.031029, -0.875005,
		0.874121, 0.074266, 0.479998,
		0.050089, -0.996756, 0.063003,
		38.509644, 33.947269, 22.901283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194603, 34.485210, 22.603991>,  <38.474583, 34.644997, 22.857182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194603, 34.485210, 22.603991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025234, 34.122929, 22.612144>,  <38.923615, 33.905560, 22.617037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025234, 34.122929, 22.612144>,  <39.194603, 34.485210, 22.603991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025234, 34.122929, 22.612144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678148, -0.331795, -0.655764,
		0.600691, -0.263841, 0.754690,
		-0.423420, -0.905704, 0.020383,
		38.898209, 33.851219, 22.618259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 33.993164, 22.695951>,  <39.194603, 34.485210, 22.603991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748032, 33.993164, 22.695951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442238, 33.780350, 22.550348>,  <39.258762, 33.652660, 22.462986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442238, 33.780350, 22.550348>,  <39.748032, 33.993164, 22.695951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442238, 33.780350, 22.550348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592236, -0.356624, -0.722548,
		0.254609, -0.767954, 0.587725,
		-0.764481, -0.532039, -0.364010,
		39.212894, 33.620739, 22.441145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965736, 33.351196, 22.720358>,  <39.748032, 33.993164, 22.695951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965736, 33.351196, 22.720358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668667, 33.367901, 22.453018>,  <39.490425, 33.377922, 22.292614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.668667, 33.367901, 22.453018>,  <39.965736, 33.351196, 22.720358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668667, 33.367901, 22.453018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653201, -0.174682, -0.736760,
		-0.147513, -0.983739, 0.102457,
		-0.742677, 0.041756, -0.668347,
		39.445866, 33.380428, 22.252514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141685, 32.813232, 22.289173>,  <39.965736, 33.351196, 22.720358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141685, 32.813232, 22.289173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894829, 33.056919, 22.089977>,  <39.746716, 33.203133, 21.970459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894829, 33.056919, 22.089977>,  <40.141685, 32.813232, 22.289173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894829, 33.056919, 22.089977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613897, -0.023108, -0.789048,
		-0.492208, -0.792668, -0.359735,
		-0.617140, 0.609216, -0.497990,
		39.709686, 33.239685, 21.940580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970806, 32.485374, 21.664137>,  <40.141685, 32.813232, 22.289173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970806, 32.485374, 21.664137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913895, 32.877316, 21.608063>,  <39.879749, 33.112480, 21.574419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913895, 32.877316, 21.608063>,  <39.970806, 32.485374, 21.664137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913895, 32.877316, 21.608063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504904, -0.049971, -0.861728,
		-0.851369, -0.193384, -0.487620,
		-0.142278, 0.979850, -0.140184,
		39.871212, 33.171272, 21.566008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635731, 32.522774, 21.061672>,  <39.970806, 32.485374, 21.664137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635731, 32.522774, 21.061672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796925, 32.881462, 21.134871>,  <39.893642, 33.096676, 21.178789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796925, 32.881462, 21.134871>,  <39.635731, 32.522774, 21.061672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796925, 32.881462, 21.134871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481853, -0.037895, -0.875432,
		-0.778086, 0.440966, -0.447360,
		0.402989, 0.896723, 0.182995,
		39.917820, 33.150478, 21.189770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465435, 32.980915, 20.483803>,  <39.635731, 32.522774, 21.061672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465435, 32.980915, 20.483803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779812, 33.155067, 20.659410>,  <39.968437, 33.259560, 20.764776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779812, 33.155067, 20.659410>,  <39.465435, 32.980915, 20.483803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779812, 33.155067, 20.659410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408278, 0.167791, -0.897304,
		-0.464334, 0.884471, -0.045884,
		0.785941, 0.435382, 0.439021,
		40.015594, 33.285683, 20.791117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671654, 33.433563, 19.944368>,  <39.465435, 32.980915, 20.483803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671654, 33.433563, 19.944368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990284, 33.404789, 20.184465>,  <40.181461, 33.387524, 20.328524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.990284, 33.404789, 20.184465>,  <39.671654, 33.433563, 19.944368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990284, 33.404789, 20.184465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598879, 0.229458, -0.767263,
		-0.082534, 0.970656, 0.225864,
		0.796575, -0.071939, 0.600244,
		40.229256, 33.383205, 20.364538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077023, 34.049198, 19.656120>,  <39.671654, 33.433563, 19.944368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077023, 34.049198, 19.656120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314293, 33.808472, 19.870020>,  <40.456657, 33.664036, 19.998360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314293, 33.808472, 19.870020>,  <40.077023, 34.049198, 19.656120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314293, 33.808472, 19.870020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753290, 0.180525, -0.632428,
		0.284069, 0.777964, 0.560425,
		0.593177, -0.601816, 0.534751,
		40.492245, 33.627926, 20.030445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600811, 34.500515, 19.867678>,  <40.077023, 34.049198, 19.656120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600811, 34.500515, 19.867678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725758, 34.120552, 19.871656>,  <40.800728, 33.892574, 19.874044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725758, 34.120552, 19.871656>,  <40.600811, 34.500515, 19.867678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725758, 34.120552, 19.871656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655783, 0.208051, -0.725716,
		0.687294, 0.233215, 0.687923,
		0.312371, -0.949908, 0.009947,
		40.819469, 33.835579, 19.874641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423500, 34.395634, 19.933292>,  <40.600811, 34.500515, 19.867678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423500, 34.395634, 19.933292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287182, 34.054035, 19.776045>,  <41.205391, 33.849075, 19.681696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287182, 34.054035, 19.776045>,  <41.423500, 34.395634, 19.933292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287182, 34.054035, 19.776045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590342, 0.131043, -0.796444,
		0.731678, -0.503501, 0.459493,
		-0.340797, -0.853999, -0.393119,
		41.184944, 33.797836, 19.658110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928825, 34.320026, 19.517685>,  <41.423500, 34.395634, 19.933292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928825, 34.320026, 19.517685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655411, 34.063736, 19.377825>,  <41.491364, 33.909962, 19.293909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.655411, 34.063736, 19.377825>,  <41.928825, 34.320026, 19.517685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655411, 34.063736, 19.377825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454866, 0.000734, -0.890560,
		0.570858, -0.767772, 0.290941,
		-0.683534, -0.640722, -0.349652,
		41.450352, 33.871521, 19.272928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283047, 33.941330, 19.065266>,  <41.928825, 34.320026, 19.517685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283047, 33.941330, 19.065266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909458, 33.885818, 18.933546>,  <41.685307, 33.852512, 18.854513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909458, 33.885818, 18.933546>,  <42.283047, 33.941330, 19.065266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909458, 33.885818, 18.933546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332278, 0.001818, -0.943180,
		0.131495, -0.990321, 0.044417,
		-0.933970, -0.138782, -0.329301,
		41.629269, 33.844185, 18.834755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246727, 33.420055, 18.548658>,  <42.283047, 33.941330, 19.065266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246727, 33.420055, 18.548658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926785, 33.642509, 18.458385>,  <41.734818, 33.775982, 18.404221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.926785, 33.642509, 18.458385>,  <42.246727, 33.420055, 18.548658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926785, 33.642509, 18.458385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204773, -0.100591, -0.973627,
		-0.564173, -0.824980, -0.033424,
		-0.799860, 0.556139, -0.225684,
		41.686825, 33.809349, 18.390680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013489, 32.972794, 18.008272>,  <42.246727, 33.420055, 18.548658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013489, 32.972794, 18.008272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840855, 33.331882, 17.972876>,  <41.737274, 33.547337, 17.951637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840855, 33.331882, 17.972876>,  <42.013489, 32.972794, 18.008272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840855, 33.331882, 17.972876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156408, -0.022143, -0.987444,
		-0.888409, -0.440008, -0.130854,
		-0.431586, 0.897721, -0.088493,
		41.711380, 33.601200, 17.946327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784580, 33.027988, 17.409460>,  <42.013489, 32.972794, 18.008272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784580, 33.027988, 17.409460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.797607, 33.423466, 17.468012>,  <41.805424, 33.660751, 17.503143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.797607, 33.423466, 17.468012>,  <41.784580, 33.027988, 17.409460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797607, 33.423466, 17.468012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283349, 0.131318, -0.949983,
		-0.958464, 0.072412, -0.275869,
		0.032564, 0.988692, 0.146382,
		41.807377, 33.720074, 17.511927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507648, 33.181915, 16.816603>,  <41.784580, 33.027988, 17.409460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507648, 33.181915, 16.816603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.717163, 33.487419, 16.967501>,  <41.842873, 33.670723, 17.058039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.717163, 33.487419, 16.967501>,  <41.507648, 33.181915, 16.816603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717163, 33.487419, 16.967501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377309, 0.189030, -0.906590,
		-0.763729, 0.617200, -0.189162,
		0.523790, 0.763762, 0.377243,
		41.874302, 33.716549, 17.080673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272564, 33.837059, 16.440708>,  <41.507648, 33.181915, 16.816603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272564, 33.837059, 16.440708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642811, 33.801701, 16.587906>,  <41.864960, 33.780487, 16.676226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.642811, 33.801701, 16.587906>,  <41.272564, 33.837059, 16.440708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642811, 33.801701, 16.587906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373708, 0.059810, -0.925616,
		0.059810, 0.994288, 0.088395,
		0.925616, -0.088395, 0.367996,
		41.920494, 33.775181, 16.698305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977757, 34.381077, 16.079657>,  <41.272564, 33.837059, 16.440708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977757, 34.381077, 16.079657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721272, 34.120060, 15.918151>,  <40.567379, 33.963448, 15.821247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721272, 34.120060, 15.918151>,  <40.977757, 34.381077, 16.079657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721272, 34.120060, 15.918151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721900, 0.334557, 0.605749,
		-0.260198, 0.679893, -0.685596,
		-0.641215, -0.652547, -0.403764,
		40.528908, 33.924297, 15.797022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389027, 34.580879, 16.257940>,  <40.977757, 34.381077, 16.079657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389027, 34.580879, 16.257940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272655, 34.212830, 16.153076>,  <40.202835, 33.992001, 16.090158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.272655, 34.212830, 16.153076>,  <40.389027, 34.580879, 16.257940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272655, 34.212830, 16.153076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566223, -0.055288, 0.822396,
		-0.771204, 0.387696, -0.504913,
		-0.290924, -0.920128, -0.262160,
		40.185379, 33.936790, 16.074429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562149, 34.552872, 16.254948>,  <40.389027, 34.580879, 16.257940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562149, 34.552872, 16.254948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672306, 34.168613, 16.269438>,  <39.738400, 33.938057, 16.278131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672306, 34.168613, 16.269438>,  <39.562149, 34.552872, 16.254948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672306, 34.168613, 16.269438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764808, -0.196106, 0.613686,
		-0.582434, -0.196707, -0.788719,
		0.275389, -0.960650, 0.036225,
		39.754921, 33.880417, 16.280306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929241, 34.124466, 16.229017>,  <39.562149, 34.552872, 16.254948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929241, 34.124466, 16.229017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223587, 33.888405, 16.361816>,  <39.400196, 33.746769, 16.441496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223587, 33.888405, 16.361816>,  <38.929241, 34.124466, 16.229017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223587, 33.888405, 16.361816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644168, -0.459019, 0.611841,
		-0.208684, -0.664097, -0.717932,
		0.735866, -0.590150, 0.332000,
		39.444347, 33.711361, 16.461416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652653, 33.493000, 16.274963>,  <38.929241, 34.124466, 16.229017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652653, 33.493000, 16.274963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965755, 33.492344, 16.523893>,  <39.153618, 33.491951, 16.673252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.965755, 33.492344, 16.523893>,  <38.652653, 33.493000, 16.274963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965755, 33.492344, 16.523893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548959, -0.472873, 0.689228,
		0.293148, -0.881129, -0.371047,
		0.782757, -0.001644, 0.622325,
		39.200584, 33.491852, 16.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540607, 32.880020, 16.671364>,  <38.652653, 33.493000, 16.274963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540607, 32.880020, 16.671364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781883, 33.117165, 16.884785>,  <38.926647, 33.259453, 17.012836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781883, 33.117165, 16.884785>,  <38.540607, 32.880020, 16.671364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781883, 33.117165, 16.884785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331987, -0.421624, 0.843812,
		0.725223, -0.686110, -0.057495,
		0.603189, 0.592864, 0.533551,
		38.962841, 33.295025, 17.044849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847225, 32.437317, 17.088081>,  <38.540607, 32.880020, 16.671364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847225, 32.437317, 17.088081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891659, 32.798859, 17.253345>,  <38.918320, 33.015785, 17.352505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891659, 32.798859, 17.253345>,  <38.847225, 32.437317, 17.088081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891659, 32.798859, 17.253345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425445, -0.332463, 0.841703,
		0.898141, -0.269277, 0.347611,
		0.111084, 0.903858, 0.413161,
		38.924984, 33.070015, 17.377295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112251, 32.304981, 17.824234>,  <38.847225, 32.437317, 17.088081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112251, 32.304981, 17.824234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026276, 32.694500, 17.853939>,  <38.974689, 32.928211, 17.871761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026276, 32.694500, 17.853939>,  <39.112251, 32.304981, 17.824234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026276, 32.694500, 17.853939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278978, -0.134091, 0.950889,
		0.935934, 0.183664, 0.300490,
		-0.214937, 0.973800, 0.074262,
		38.961796, 32.986641, 17.876217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353161, 32.467457, 18.435904>,  <39.112251, 32.304981, 17.824234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353161, 32.467457, 18.435904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.064541, 32.728287, 18.342817>,  <38.891369, 32.884785, 18.286966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.064541, 32.728287, 18.342817>,  <39.353161, 32.467457, 18.435904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064541, 32.728287, 18.342817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420684, -0.145960, 0.895389,
		0.549895, 0.743970, 0.379636,
		-0.721554, 0.652077, -0.232714,
		38.848076, 32.923908, 18.273003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378189, 32.927387, 18.936586>,  <39.353161, 32.467457, 18.435904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378189, 32.927387, 18.936586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006386, 32.966534, 18.794353>,  <38.783306, 32.990021, 18.709013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006386, 32.966534, 18.794353>,  <39.378189, 32.927387, 18.936586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006386, 32.966534, 18.794353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367519, -0.165311, 0.915206,
		0.030788, 0.981373, 0.189626,
		-0.929506, 0.097869, -0.355583,
		38.727535, 32.995895, 18.687679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971352, 33.366814, 19.367197>,  <39.378189, 32.927387, 18.936586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971352, 33.366814, 19.367197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676304, 33.169415, 19.182858>,  <38.499275, 33.050976, 19.072254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676304, 33.169415, 19.182858>,  <38.971352, 33.366814, 19.367197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676304, 33.169415, 19.182858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564425, 0.076031, 0.821976,
		-0.370605, 0.866417, -0.334625,
		-0.737615, -0.493499, -0.460850,
		38.455021, 33.021366, 19.044603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424202, 33.638634, 19.625977>,  <38.971352, 33.366814, 19.367197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424202, 33.638634, 19.625977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278675, 33.292259, 19.488688>,  <38.191360, 33.084435, 19.406313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278675, 33.292259, 19.488688>,  <38.424202, 33.638634, 19.625977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278675, 33.292259, 19.488688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580243, -0.077565, 0.810741,
		-0.728669, 0.494111, -0.474232,
		-0.363813, -0.865932, -0.343224,
		38.169533, 33.032478, 19.385721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668388, 33.707996, 19.749378>,  <38.424202, 33.638634, 19.625977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668388, 33.707996, 19.749378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782089, 33.326542, 19.709812>,  <37.850307, 33.097668, 19.686073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.782089, 33.326542, 19.709812>,  <37.668388, 33.707996, 19.749378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782089, 33.326542, 19.709812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630564, -0.263667, 0.729979,
		-0.722213, -0.145123, -0.676274,
		0.284248, -0.953635, -0.098914,
		37.867363, 33.040451, 19.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006001, 33.212498, 19.652851>,  <37.668388, 33.707996, 19.749378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006001, 33.212498, 19.652851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316315, 32.993156, 19.777729>,  <37.502502, 32.861549, 19.852655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.316315, 32.993156, 19.777729>,  <37.006001, 33.212498, 19.652851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316315, 32.993156, 19.777729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537650, -0.315459, 0.781932,
		-0.330309, -0.774450, -0.539558,
		0.775776, -0.548373, 0.312184,
		37.549049, 32.828651, 19.871387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674744, 32.673954, 19.920940>,  <37.006001, 33.212498, 19.652851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674744, 32.673954, 19.920940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045902, 32.627979, 20.062807>,  <37.268597, 32.600395, 20.147928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045902, 32.627979, 20.062807>,  <36.674744, 32.673954, 19.920940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045902, 32.627979, 20.062807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372652, -0.256650, 0.891774,
		-0.011474, -0.959646, -0.280978,
		0.927900, -0.114939, 0.354668,
		37.324272, 32.593498, 20.169209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622757, 32.059544, 20.406111>,  <36.674744, 32.673954, 19.920940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622757, 32.059544, 20.406111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951183, 32.243401, 20.541506>,  <37.148239, 32.353714, 20.622744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951183, 32.243401, 20.541506>,  <36.622757, 32.059544, 20.406111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951183, 32.243401, 20.541506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308202, -0.142156, 0.940640,
		0.480475, -0.876654, 0.024942,
		0.821070, 0.459641, 0.338489,
		37.197506, 32.381294, 20.643053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002895, 31.584064, 20.794756>,  <36.622757, 32.059544, 20.406111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002895, 31.584064, 20.794756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061569, 31.964216, 20.904491>,  <37.096775, 32.192307, 20.970333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061569, 31.964216, 20.904491>,  <37.002895, 31.584064, 20.794756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061569, 31.964216, 20.904491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212260, -0.240638, 0.947121,
		0.966142, -0.197158, 0.166430,
		0.146683, 0.950380, 0.274339,
		37.105576, 32.249329, 20.986794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174633, 31.461172, 21.438246>,  <37.002895, 31.584064, 20.794756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174633, 31.461172, 21.438246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150055, 31.859999, 21.420004>,  <37.135307, 32.099297, 21.409060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150055, 31.859999, 21.420004>,  <37.174633, 31.461172, 21.438246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150055, 31.859999, 21.420004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114291, 0.038361, 0.992706,
		0.991545, 0.066208, 0.111599,
		-0.061444, 0.997068, -0.045604,
		37.131622, 32.159119, 21.406322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716438, 31.753191, 21.860023>,  <37.174633, 31.461172, 21.438246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716438, 31.753191, 21.860023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409428, 32.004852, 21.810934>,  <37.225220, 32.155849, 21.781481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.409428, 32.004852, 21.810934>,  <37.716438, 31.753191, 21.860023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409428, 32.004852, 21.810934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249333, -0.116645, 0.961367,
		0.590534, 0.768478, 0.246397,
		-0.767530, 0.629155, -0.122724,
		37.179169, 32.193600, 21.774117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667114, 32.081936, 22.436378>,  <37.716438, 31.753191, 21.860023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667114, 32.081936, 22.436378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305878, 32.166786, 22.287018>,  <37.089134, 32.217697, 22.197401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.305878, 32.166786, 22.287018>,  <37.667114, 32.081936, 22.436378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305878, 32.166786, 22.287018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352201, 0.131660, 0.926617,
		0.245722, 0.968332, -0.044190,
		-0.903092, 0.212127, -0.373400,
		37.034950, 32.230423, 22.174997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.905827, 33.930725, 27.442942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505909, 33.932526, 27.435064>,  <38.265957, 33.933605, 27.430338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505909, 33.932526, 27.435064>,  <38.905827, 33.930725, 27.442942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505909, 33.932526, 27.435064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013407, 0.581415, 0.813496,
		0.015110, 0.813594, -0.581236,
		-0.999796, 0.004499, -0.019693,
		38.205971, 33.933876, 27.429157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688011, 34.604050, 27.650888>,  <38.905827, 33.930725, 27.442942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688011, 34.604050, 27.650888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364151, 34.382130, 27.727480>,  <38.169834, 34.248978, 27.773434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.364151, 34.382130, 27.727480>,  <38.688011, 34.604050, 27.650888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364151, 34.382130, 27.727480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170507, 0.534524, 0.827775,
		-0.561596, 0.637562, -0.527375,
		-0.809653, -0.554796, 0.191477,
		38.121254, 34.215691, 27.784924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224659, 35.126392, 27.823881>,  <38.688011, 34.604050, 27.650888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224659, 35.126392, 27.823881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080017, 34.775581, 27.950407>,  <37.993233, 34.565094, 28.026323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.080017, 34.775581, 27.950407>,  <38.224659, 35.126392, 27.823881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080017, 34.775581, 27.950407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283295, 0.426593, 0.858931,
		-0.888248, 0.220985, -0.402717,
		-0.361607, -0.877032, 0.316316,
		37.971535, 34.512470, 28.045301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598507, 35.413349, 28.021473>,  <38.224659, 35.126392, 27.823881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598507, 35.413349, 28.021473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607166, 35.047539, 28.183050>,  <37.612362, 34.828053, 28.279997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607166, 35.047539, 28.183050>,  <37.598507, 35.413349, 28.021473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607166, 35.047539, 28.183050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325404, 0.375594, 0.867780,
		-0.945327, -0.150232, -0.289459,
		0.021649, -0.914527, 0.403945,
		37.613663, 34.773182, 28.304234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981441, 35.335697, 28.340912>,  <37.598507, 35.413349, 28.021473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981441, 35.335697, 28.340912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213337, 35.060078, 28.514860>,  <37.352474, 34.894707, 28.619228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213337, 35.060078, 28.514860>,  <36.981441, 35.335697, 28.340912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213337, 35.060078, 28.514860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441992, 0.182418, 0.878275,
		-0.684505, -0.701378, -0.198800,
		0.579738, -0.689052, 0.434869,
		37.387257, 34.853363, 28.645321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520000, 35.032967, 28.833408>,  <36.981441, 35.335697, 28.340912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520000, 35.032967, 28.833408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.881752, 34.928478, 28.968382>,  <37.098804, 34.865788, 29.049366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.881752, 34.928478, 28.968382>,  <36.520000, 35.032967, 28.833408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881752, 34.928478, 28.968382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380138, -0.133896, 0.915187,
		-0.193881, -0.955949, -0.220391,
		0.904381, -0.261216, 0.337433,
		37.153065, 34.850113, 29.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377842, 34.530109, 29.287504>,  <36.520000, 35.032967, 28.833408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377842, 34.530109, 29.287504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.740074, 34.660725, 29.395800>,  <36.957413, 34.739094, 29.460777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.740074, 34.660725, 29.395800>,  <36.377842, 34.530109, 29.287504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740074, 34.660725, 29.395800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273266, -0.039059, 0.961145,
		0.324425, -0.944377, 0.053861,
		0.905579, 0.326538, 0.270738,
		37.011749, 34.758686, 29.477020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613136, 34.033684, 29.842693>,  <36.377842, 34.530109, 29.287504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613136, 34.033684, 29.842693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791908, 34.389210, 29.883196>,  <36.899174, 34.602528, 29.907497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.791908, 34.389210, 29.883196>,  <36.613136, 34.033684, 29.842693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791908, 34.389210, 29.883196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225542, 0.002422, 0.974231,
		0.865668, -0.458254, 0.201548,
		0.446933, 0.888818, 0.101258,
		36.925987, 34.655857, 29.913574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014278, 33.968128, 30.421656>,  <36.613136, 34.033684, 29.842693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014278, 33.968128, 30.421656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007980, 34.366013, 30.381065>,  <37.004200, 34.604744, 30.356710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007980, 34.366013, 30.381065>,  <37.014278, 33.968128, 30.421656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007980, 34.366013, 30.381065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183757, 0.096881, 0.978186,
		0.982846, 0.034047, 0.181260,
		-0.015744, 0.994713, -0.101475,
		37.003258, 34.664425, 30.350622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343094, 34.207756, 30.995285>,  <37.014278, 33.968128, 30.421656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343094, 34.207756, 30.995285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149269, 34.541985, 30.891727>,  <37.032974, 34.742519, 30.829594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149269, 34.541985, 30.891727>,  <37.343094, 34.207756, 30.995285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149269, 34.541985, 30.891727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145021, 0.215130, 0.965758,
		0.862651, 0.505516, 0.016931,
		-0.484564, 0.835567, -0.258892,
		37.003899, 34.792656, 30.814060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567715, 34.769718, 31.416225>,  <37.343094, 34.207756, 30.995285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567715, 34.769718, 31.416225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200649, 34.863705, 31.288048>,  <36.980412, 34.920097, 31.211142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.200649, 34.863705, 31.288048>,  <37.567715, 34.769718, 31.416225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200649, 34.863705, 31.288048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281598, 0.184422, 0.941643,
		0.280353, 0.954347, -0.103071,
		-0.917663, 0.234968, -0.320445,
		36.925350, 34.934196, 31.191914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387062, 35.485085, 31.697792>,  <37.567715, 34.769718, 31.416225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387062, 35.485085, 31.697792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057262, 35.279800, 31.602438>,  <36.859383, 35.156631, 31.545225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.057262, 35.279800, 31.602438>,  <37.387062, 35.485085, 31.697792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057262, 35.279800, 31.602438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394917, 0.220149, 0.891950,
		-0.405274, 0.829551, -0.384185,
		-0.824496, -0.513206, -0.238383,
		36.809914, 35.125839, 31.530924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004448, 35.840042, 31.836439>,  <37.387062, 35.485085, 31.697792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004448, 35.840042, 31.836439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247353, 35.763287, 32.144833>,  <38.393093, 35.717232, 32.329868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247353, 35.763287, 32.144833>,  <38.004448, 35.840042, 31.836439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247353, 35.763287, 32.144833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241895, 0.879672, 0.409469,
		-0.756785, -0.435151, 0.487771,
		0.607259, -0.191891, 0.770983,
		38.429531, 35.705719, 32.376129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679779, 35.984638, 32.468224>,  <38.004448, 35.840042, 31.836439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679779, 35.984638, 32.468224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076519, 36.015106, 32.509090>,  <38.314564, 36.033386, 32.533611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.076519, 36.015106, 32.509090>,  <37.679779, 35.984638, 32.468224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076519, 36.015106, 32.509090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106809, 0.934168, 0.340473,
		-0.069509, -0.348609, 0.934687,
		0.991847, 0.076168, 0.102168,
		38.374073, 36.037956, 32.539742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804569, 36.669727, 32.458954>,  <37.679779, 35.984638, 32.468224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804569, 36.669727, 32.458954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972851, 37.032600, 32.461292>,  <38.073818, 37.250324, 32.462696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972851, 37.032600, 32.461292>,  <37.804569, 36.669727, 32.458954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972851, 37.032600, 32.461292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311992, 0.150733, -0.938051,
		-0.851863, 0.392815, 0.346446,
		0.420702, 0.907180, 0.005849,
		38.099060, 37.304756, 32.463047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353539, 36.938004, 32.084862>,  <37.804569, 36.669727, 32.458954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353539, 36.938004, 32.084862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658535, 37.195713, 32.061138>,  <37.841534, 37.350338, 32.046906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658535, 37.195713, 32.061138>,  <37.353539, 36.938004, 32.084862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658535, 37.195713, 32.061138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164196, 0.104027, -0.980927,
		-0.625813, 0.757690, 0.185107,
		0.762494, 0.644271, -0.059308,
		37.887283, 37.388996, 32.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181770, 37.300457, 31.545010>,  <37.353539, 36.938004, 32.084862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181770, 37.300457, 31.545010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570969, 37.388714, 31.572124>,  <37.804489, 37.441669, 31.588392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570969, 37.388714, 31.572124>,  <37.181770, 37.300457, 31.545010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570969, 37.388714, 31.572124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054734, 0.064747, -0.996400,
		-0.224239, 0.973203, 0.050921,
		0.972996, 0.220644, 0.067786,
		37.862869, 37.454906, 31.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238235, 37.963985, 31.141802>,  <37.181770, 37.300457, 31.545010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238235, 37.963985, 31.141802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595551, 37.784988, 31.158665>,  <37.809940, 37.677589, 31.168783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.595551, 37.784988, 31.158665>,  <37.238235, 37.963985, 31.141802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595551, 37.784988, 31.158665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171963, 0.253596, -0.951902,
		0.415282, 0.857575, 0.303488,
		0.893291, -0.447497, 0.042157,
		37.863537, 37.650738, 31.171312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691036, 38.400852, 30.731783>,  <37.238235, 37.963985, 31.141802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691036, 38.400852, 30.731783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896919, 38.059437, 30.764153>,  <38.020447, 37.854588, 30.783575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896919, 38.059437, 30.764153>,  <37.691036, 38.400852, 30.731783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896919, 38.059437, 30.764153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342547, 0.118197, -0.932036,
		0.785965, 0.507444, 0.353214,
		0.514705, -0.853540, 0.080924,
		38.051331, 37.803375, 30.788429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432423, 38.486004, 30.481323>,  <37.691036, 38.400852, 30.731783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432423, 38.486004, 30.481323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346146, 38.095421, 30.482489>,  <38.294380, 37.861073, 30.483187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346146, 38.095421, 30.482489>,  <38.432423, 38.486004, 30.481323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346146, 38.095421, 30.482489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248387, -0.057751, -0.966938,
		0.944342, -0.207836, 0.254996,
		-0.215691, -0.976457, 0.002913,
		38.281437, 37.802483, 30.483362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002514, 38.222061, 30.074030>,  <38.432423, 38.486004, 30.481323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002514, 38.222061, 30.074030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692085, 37.969814, 30.071926>,  <38.505829, 37.818466, 30.070663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692085, 37.969814, 30.071926>,  <39.002514, 38.222061, 30.074030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692085, 37.969814, 30.071926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080618, -0.090936, -0.992588,
		0.625467, -0.770746, 0.121413,
		-0.776074, -0.630619, -0.005258,
		38.459263, 37.780628, 30.070349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174942, 37.730030, 29.686695>,  <39.002514, 38.222061, 30.074030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174942, 37.730030, 29.686695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786888, 37.635941, 29.710398>,  <38.554058, 37.579487, 29.724619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.786888, 37.635941, 29.710398>,  <39.174942, 37.730030, 29.686695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786888, 37.635941, 29.710398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029546, -0.357045, -0.933620,
		0.240769, -0.903984, 0.353331,
		-0.970133, -0.235226, 0.059256,
		38.495850, 37.565372, 29.728174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148235, 37.120579, 29.374922>,  <39.174942, 37.730030, 29.686695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148235, 37.120579, 29.374922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774540, 37.263012, 29.366796>,  <38.550323, 37.348473, 29.361921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.774540, 37.263012, 29.366796>,  <39.148235, 37.120579, 29.374922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774540, 37.263012, 29.366796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070710, -0.240744, -0.968010,
		-0.349584, -0.902910, 0.250089,
		-0.934233, 0.356084, -0.020315,
		38.494270, 37.369835, 29.360703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714634, 36.650894, 29.015560>,  <39.148235, 37.120579, 29.374922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714634, 36.650894, 29.015560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519676, 37.000004, 29.004934>,  <38.402702, 37.209469, 28.998558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519676, 37.000004, 29.004934>,  <38.714634, 36.650894, 29.015560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519676, 37.000004, 29.004934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084706, -0.077539, -0.993385,
		-0.869064, -0.481920, 0.111722,
		-0.487395, 0.872778, -0.026565,
		38.373459, 37.261837, 28.996965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130547, 36.586018, 28.541908>,  <38.714634, 36.650894, 29.015560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130547, 36.586018, 28.541908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.228142, 36.973843, 28.550020>,  <38.286697, 37.206539, 28.554888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.228142, 36.973843, 28.550020>,  <38.130547, 36.586018, 28.541908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228142, 36.973843, 28.550020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056294, 0.006719, -0.998392,
		-0.968144, 0.244734, -0.052942,
		0.243984, 0.969567, 0.020282,
		38.301338, 37.264713, 28.556105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645748, 36.918819, 28.010101>,  <38.130547, 36.586018, 28.541908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645748, 36.918819, 28.010101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.936459, 37.189240, 28.058685>,  <38.110886, 37.351494, 28.087835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.936459, 37.189240, 28.058685>,  <37.645748, 36.918819, 28.010101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936459, 37.189240, 28.058685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202093, -0.041456, -0.978489,
		-0.656474, 0.735686, -0.166755,
		0.726774, 0.676053, 0.121462,
		38.154491, 37.392056, 28.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509327, 37.570728, 27.626339>,  <37.645748, 36.918819, 28.010101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509327, 37.570728, 27.626339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905647, 37.579163, 27.679804>,  <38.143440, 37.584221, 27.711882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.905647, 37.579163, 27.679804>,  <37.509327, 37.570728, 27.626339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905647, 37.579163, 27.679804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135304, -0.165948, -0.976808,
		0.001587, 0.985909, -0.167274,
		0.990803, 0.021082, 0.133661,
		38.202888, 37.585487, 27.719902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757557, 37.983028, 27.078390>,  <37.509327, 37.570728, 27.626339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757557, 37.983028, 27.078390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068951, 37.761021, 27.195633>,  <38.255787, 37.627815, 27.265980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068951, 37.761021, 27.195633>,  <37.757557, 37.983028, 27.078390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068951, 37.761021, 27.195633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225693, -0.188222, -0.955843,
		0.585683, 0.810261, -0.021263,
		0.778484, -0.555022, 0.293109,
		38.302494, 37.594513, 27.283566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677418, 38.519753, 26.595970>,  <37.757557, 37.983028, 27.078390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677418, 38.519753, 26.595970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303371, 38.524063, 26.454300>,  <37.078945, 38.526649, 26.369297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303371, 38.524063, 26.454300>,  <37.677418, 38.519753, 26.595970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303371, 38.524063, 26.454300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338844, 0.265155, 0.902706,
		0.103640, 0.964145, -0.244299,
		-0.935117, 0.010777, -0.354175,
		37.022835, 38.527298, 26.348047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350292, 38.962917, 26.983158>,  <37.677418, 38.519753, 26.595970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350292, 38.962917, 26.983158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024063, 38.787632, 26.831993>,  <36.828327, 38.682461, 26.741295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.024063, 38.787632, 26.831993>,  <37.350292, 38.962917, 26.983158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024063, 38.787632, 26.831993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497150, 0.196415, 0.845141,
		-0.296122, 0.877150, -0.378046,
		-0.815569, -0.438211, -0.377913,
		36.779392, 38.656170, 26.718618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765900, 39.451786, 27.149181>,  <37.350292, 38.962917, 26.983158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765900, 39.451786, 27.149181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621578, 39.085785, 27.076977>,  <36.534985, 38.866184, 27.033653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621578, 39.085785, 27.076977>,  <36.765900, 39.451786, 27.149181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621578, 39.085785, 27.076977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539843, 0.047064, 0.840449,
		-0.760521, 0.400683, -0.510941,
		-0.360801, -0.915007, -0.180513,
		36.513336, 38.811283, 27.022823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072098, 39.523628, 27.272921>,  <36.765900, 39.451786, 27.149181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072098, 39.523628, 27.272921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.146893, 39.132381, 27.309412>,  <36.191769, 38.897633, 27.331306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.146893, 39.132381, 27.309412>,  <36.072098, 39.523628, 27.272921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146893, 39.132381, 27.309412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495302, -0.013672, 0.868613,
		-0.848358, -0.207609, -0.487019,
		0.186990, -0.978116, 0.091230,
		36.202991, 38.838947, 27.336781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460533, 39.275230, 27.397371>,  <36.072098, 39.523628, 27.272921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460533, 39.275230, 27.397371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.728065, 39.005753, 27.523106>,  <35.888584, 38.844067, 27.598545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.728065, 39.005753, 27.523106>,  <35.460533, 39.275230, 27.397371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728065, 39.005753, 27.523106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444066, -0.022942, 0.895701,
		-0.596214, -0.738657, -0.314507,
		0.668831, -0.673691, 0.314334,
		35.928715, 38.803646, 27.617405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022934, 38.604195, 27.526407>,  <35.460533, 39.275230, 27.397371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022934, 38.604195, 27.526407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365688, 38.606834, 27.732590>,  <35.571342, 38.608418, 27.856300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.365688, 38.606834, 27.732590>,  <35.022934, 38.604195, 27.526407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365688, 38.606834, 27.732590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511508, -0.113326, 0.851773,
		0.064036, -0.993536, -0.093732,
		0.856889, 0.006599, 0.515459,
		35.622757, 38.608814, 27.887228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978287, 37.963501, 27.789785>,  <35.022934, 38.604195, 27.526407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978287, 37.963501, 27.789785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.222275, 38.194191, 28.007160>,  <35.368668, 38.332603, 28.137585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.222275, 38.194191, 28.007160>,  <34.978287, 37.963501, 27.789785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222275, 38.194191, 28.007160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563141, -0.166995, 0.809311,
		0.557499, -0.799691, 0.222913,
		0.609973, 0.576721, 0.543438,
		35.405266, 38.367207, 28.170191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056419, 37.589348, 28.362566>,  <34.978287, 37.963501, 27.789785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056419, 37.589348, 28.362566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194469, 37.947155, 28.476212>,  <35.277298, 38.161839, 28.544399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194469, 37.947155, 28.476212>,  <35.056419, 37.589348, 28.362566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194469, 37.947155, 28.476212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495729, -0.083307, 0.864472,
		0.796958, -0.439193, 0.414689,
		0.345124, 0.894522, 0.284113,
		35.298008, 38.215511, 28.561445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162373, 37.529182, 29.078188>,  <35.056419, 37.589348, 28.362566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162373, 37.529182, 29.078188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179966, 37.926952, 29.039848>,  <35.190521, 38.165615, 29.016846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.179966, 37.926952, 29.039848>,  <35.162373, 37.529182, 29.078188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179966, 37.926952, 29.039848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549309, 0.104209, 0.829096,
		0.834461, 0.016184, 0.550829,
		0.043983, 0.994424, -0.095848,
		35.193161, 38.225281, 29.011093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430515, 37.896217, 29.721918>,  <35.162373, 37.529182, 29.078188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430515, 37.896217, 29.721918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.202118, 38.168736, 29.538702>,  <35.065079, 38.332249, 29.428772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.202118, 38.168736, 29.538702>,  <35.430515, 37.896217, 29.721918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202118, 38.168736, 29.538702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524593, 0.126371, 0.841922,
		0.631484, 0.721014, 0.285248,
		-0.570991, 0.681300, -0.458040,
		35.030819, 38.373127, 29.401291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380665, 38.470280, 30.265867>,  <35.430515, 37.896217, 29.721918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380665, 38.470280, 30.265867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.084618, 38.495697, 29.998081>,  <34.906990, 38.510948, 29.837410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.084618, 38.495697, 29.998081>,  <35.380665, 38.470280, 30.265867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084618, 38.495697, 29.998081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670400, 0.008415, 0.741952,
		0.052779, 0.997943, 0.036371,
		-0.740120, 0.063542, -0.669466,
		34.862583, 38.514759, 29.797241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933064, 39.124157, 30.288582>,  <35.380665, 38.470280, 30.265867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933064, 39.124157, 30.288582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741024, 38.802204, 30.149059>,  <34.625801, 38.609032, 30.065346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.741024, 38.802204, 30.149059>,  <34.933064, 39.124157, 30.288582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741024, 38.802204, 30.149059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514425, -0.063752, 0.855162,
		-0.710544, 0.589998, -0.383446,
		-0.480098, -0.804884, -0.348809,
		34.596996, 38.560738, 30.044416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.735424, 39.379250, 23.215105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490337, 39.099274, 23.068316>,  <38.343285, 38.931290, 22.980242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490337, 39.099274, 23.068316>,  <38.735424, 39.379250, 23.215105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490337, 39.099274, 23.068316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454535, -0.067762, 0.888147,
		-0.646515, 0.710982, -0.276627,
		-0.612712, -0.699937, -0.366976,
		38.306522, 38.889294, 22.958223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176704, 39.413895, 23.633886>,  <38.735424, 39.379250, 23.215105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176704, 39.413895, 23.633886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076149, 39.058640, 23.479992>,  <38.015816, 38.845486, 23.387655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076149, 39.058640, 23.479992>,  <38.176704, 39.413895, 23.633886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076149, 39.058640, 23.479992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700365, -0.107441, 0.705652,
		-0.668050, 0.446850, -0.595008,
		-0.251392, -0.888134, -0.384734,
		38.000732, 38.792198, 23.364573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371490, 39.381931, 23.479542>,  <38.176704, 39.413895, 23.633886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371490, 39.381931, 23.479542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529209, 39.017464, 23.527376>,  <37.623840, 38.798782, 23.556078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529209, 39.017464, 23.527376>,  <37.371490, 39.381931, 23.479542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529209, 39.017464, 23.527376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557820, -0.133889, 0.819092,
		-0.730319, -0.389674, -0.561060,
		0.394298, -0.911168, 0.119587,
		37.647499, 38.744114, 23.563251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768089, 38.973961, 23.643707>,  <37.371490, 39.381931, 23.479542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768089, 38.973961, 23.643707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065208, 38.734688, 23.763994>,  <37.243481, 38.591122, 23.836166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065208, 38.734688, 23.763994>,  <36.768089, 38.973961, 23.643707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065208, 38.734688, 23.763994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467890, -0.142518, 0.872220,
		-0.478890, -0.788584, -0.385746,
		0.742795, -0.598184, 0.300719,
		37.288048, 38.555233, 23.854210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474964, 38.328148, 23.955502>,  <36.768089, 38.973961, 23.643707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474964, 38.328148, 23.955502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846195, 38.383305, 24.093866>,  <37.068935, 38.416397, 24.176886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846195, 38.383305, 24.093866>,  <36.474964, 38.328148, 23.955502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846195, 38.383305, 24.093866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306140, -0.246322, 0.919567,
		0.212002, -0.959329, -0.186394,
		0.928080, 0.137887, 0.345910,
		37.124619, 38.424671, 24.197639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606915, 37.741547, 24.439198>,  <36.474964, 38.328148, 23.955502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606915, 37.741547, 24.439198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880512, 38.021038, 24.523033>,  <37.044670, 38.188732, 24.573336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880512, 38.021038, 24.523033>,  <36.606915, 37.741547, 24.439198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880512, 38.021038, 24.523033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116366, -0.179125, 0.976920,
		0.720145, -0.692598, -0.041212,
		0.683996, 0.698729, 0.209591,
		37.085712, 38.230656, 24.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017380, 37.432076, 24.948351>,  <36.606915, 37.741547, 24.439198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017380, 37.432076, 24.948351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047665, 37.828999, 24.987545>,  <37.065838, 38.067150, 25.011061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047665, 37.828999, 24.987545>,  <37.017380, 37.432076, 24.948351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047665, 37.828999, 24.987545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103873, -0.089884, 0.990521,
		0.991704, -0.085176, 0.096267,
		0.075716, 0.992303, 0.097986,
		37.070381, 38.126690, 25.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446941, 37.657959, 25.514597>,  <37.017380, 37.432076, 24.948351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446941, 37.657959, 25.514597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214912, 37.981106, 25.472902>,  <37.075695, 38.174995, 25.447886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214912, 37.981106, 25.472902>,  <37.446941, 37.657959, 25.514597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214912, 37.981106, 25.472902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142809, 0.025125, 0.989432,
		0.801948, 0.588829, 0.100796,
		-0.580073, 0.807867, -0.104238,
		37.040890, 38.223465, 25.441631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612286, 37.917645, 26.110197>,  <37.446941, 37.657959, 25.514597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612286, 37.917645, 26.110197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300617, 38.142612, 25.999502>,  <37.113617, 38.277592, 25.933084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300617, 38.142612, 25.999502>,  <37.612286, 37.917645, 26.110197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300617, 38.142612, 25.999502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288003, 0.070912, 0.955000,
		0.556734, 0.823806, 0.106725,
		-0.779167, 0.562418, -0.276738,
		37.066868, 38.311337, 25.916481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280384, 38.076382, 26.450235>,  <37.612286, 37.917645, 26.110197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280384, 38.076382, 26.450235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406738, 37.756817, 26.654961>,  <38.482552, 37.565079, 26.777796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406738, 37.756817, 26.654961>,  <38.280384, 38.076382, 26.450235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406738, 37.756817, 26.654961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350761, -0.402885, -0.845370,
		0.881580, 0.446564, 0.152963,
		0.315885, -0.798915, 0.511813,
		38.501503, 37.517143, 26.808504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970196, 38.053818, 26.353800>,  <38.280384, 38.076382, 26.450235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970196, 38.053818, 26.353800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891602, 37.673222, 26.448509>,  <38.844444, 37.444862, 26.505335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891602, 37.673222, 26.448509>,  <38.970196, 38.053818, 26.353800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891602, 37.673222, 26.448509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605365, -0.307678, -0.734076,
		0.771315, -0.000901, 0.636452,
		-0.196484, -0.951490, 0.236771,
		38.832657, 37.387775, 26.519541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599438, 37.875355, 26.520849>,  <38.970196, 38.053818, 26.353800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599438, 37.875355, 26.520849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373440, 37.550514, 26.462498>,  <39.237843, 37.355610, 26.427486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373440, 37.550514, 26.462498>,  <39.599438, 37.875355, 26.520849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373440, 37.550514, 26.462498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636682, -0.316652, -0.703113,
		0.524804, -0.490131, 0.695954,
		-0.564993, -0.812098, -0.145877,
		39.203941, 37.306885, 26.418734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077858, 37.394615, 26.523960>,  <39.599438, 37.875355, 26.520849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077858, 37.394615, 26.523960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758209, 37.243893, 26.336592>,  <39.566418, 37.153461, 26.224171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758209, 37.243893, 26.336592>,  <40.077858, 37.394615, 26.523960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758209, 37.243893, 26.336592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578697, -0.271125, -0.769156,
		0.162819, -0.885726, 0.434717,
		-0.799124, -0.376802, -0.468423,
		39.518471, 37.130852, 26.196064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310936, 36.736248, 26.245745>,  <40.077858, 37.394615, 26.523960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310936, 36.736248, 26.245745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979229, 36.809986, 26.034718>,  <39.780205, 36.854229, 25.908102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979229, 36.809986, 26.034718>,  <40.310936, 36.736248, 26.245745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979229, 36.809986, 26.034718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468587, -0.285055, -0.836164,
		-0.304531, -0.940617, 0.150005,
		-0.829269, 0.184347, -0.527569,
		39.730450, 36.865288, 25.876448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301926, 36.123886, 25.860413>,  <40.310936, 36.736248, 26.245745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301926, 36.123886, 25.860413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073730, 36.391804, 25.670288>,  <39.936813, 36.552555, 25.556213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073730, 36.391804, 25.670288>,  <40.301926, 36.123886, 25.860413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073730, 36.391804, 25.670288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442456, -0.236927, -0.864927,
		-0.691939, -0.703731, -0.161192,
		-0.570486, 0.669797, -0.475309,
		39.902584, 36.592743, 25.527695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118385, 35.769707, 25.317698>,  <40.301926, 36.123886, 25.860413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118385, 35.769707, 25.317698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052101, 36.153538, 25.226696>,  <40.012329, 36.383835, 25.172094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052101, 36.153538, 25.226696>,  <40.118385, 35.769707, 25.317698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052101, 36.153538, 25.226696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374196, -0.152259, -0.914764,
		-0.912424, -0.236716, -0.333838,
		-0.165710, 0.959574, -0.227504,
		40.002388, 36.441410, 25.158445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762478, 35.746830, 24.712385>,  <40.118385, 35.769707, 25.317698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762478, 35.746830, 24.712385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914196, 36.115837, 24.740938>,  <40.005226, 36.337242, 24.758070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914196, 36.115837, 24.740938>,  <39.762478, 35.746830, 24.712385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914196, 36.115837, 24.740938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333663, -0.064417, -0.940489,
		-0.863018, 0.380544, -0.332243,
		0.379300, 0.922517, 0.071380,
		40.027985, 36.392593, 24.762352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553234, 36.118656, 24.075605>,  <39.762478, 35.746830, 24.712385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553234, 36.118656, 24.075605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870876, 36.315041, 24.218908>,  <40.061462, 36.432873, 24.304890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870876, 36.315041, 24.218908>,  <39.553234, 36.118656, 24.075605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870876, 36.315041, 24.218908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393420, 0.034056, -0.918728,
		-0.463261, 0.870515, -0.166110,
		0.794110, 0.490962, 0.358255,
		40.109108, 36.462330, 24.326385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635574, 36.764641, 23.668940>,  <39.553234, 36.118656, 24.075605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635574, 36.764641, 23.668940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991165, 36.677574, 23.830109>,  <40.204517, 36.625336, 23.926809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991165, 36.677574, 23.830109>,  <39.635574, 36.764641, 23.668940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991165, 36.677574, 23.830109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431501, 0.103416, -0.896165,
		0.153395, 0.970529, 0.185856,
		0.888975, -0.217665, 0.402920,
		40.257858, 36.612274, 23.950985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060127, 37.254913, 23.418503>,  <39.635574, 36.764641, 23.668940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060127, 37.254913, 23.418503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297737, 36.952045, 23.527193>,  <40.440304, 36.770325, 23.592407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297737, 36.952045, 23.527193>,  <40.060127, 37.254913, 23.418503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297737, 36.952045, 23.527193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317903, -0.089334, -0.943905,
		0.738971, 0.647081, 0.187640,
		0.594020, -0.757170, 0.271724,
		40.475945, 36.724895, 23.608711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535114, 37.345295, 22.989025>,  <40.060127, 37.254913, 23.418503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535114, 37.345295, 22.989025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638248, 36.980057, 23.115370>,  <40.700130, 36.760914, 23.191177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638248, 36.980057, 23.115370>,  <40.535114, 37.345295, 22.989025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638248, 36.980057, 23.115370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408618, -0.193188, -0.892025,
		0.875529, 0.359064, 0.323298,
		0.257837, -0.913100, 0.315862,
		40.715599, 36.706127, 23.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116985, 37.197800, 22.664902>,  <40.535114, 37.345295, 22.989025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116985, 37.197800, 22.664902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038979, 36.828247, 22.796606>,  <40.992176, 36.606514, 22.875628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038979, 36.828247, 22.796606>,  <41.116985, 37.197800, 22.664902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038979, 36.828247, 22.796606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598982, -0.378015, -0.705922,
		0.776653, 0.059555, 0.627107,
		-0.195015, -0.923882, 0.329259,
		40.980473, 36.551083, 22.895384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739643, 36.842724, 22.759571>,  <41.116985, 37.197800, 22.664902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739643, 36.842724, 22.759571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450855, 36.570129, 22.711676>,  <41.277584, 36.406570, 22.682938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450855, 36.570129, 22.711676>,  <41.739643, 36.842724, 22.759571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450855, 36.570129, 22.711676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530997, -0.434738, -0.727354,
		0.443628, -0.588707, 0.675735,
		-0.721967, -0.681488, -0.119740,
		41.234264, 36.365685, 22.675755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.212040, 32.924969, 19.897581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472492, 33.129826, 20.121632>,  <34.628761, 33.252739, 20.256062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.472492, 33.129826, 20.121632>,  <34.212040, 32.924969, 19.897581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472492, 33.129826, 20.121632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205453, -0.591516, 0.779678,
		0.730633, -0.622748, -0.279929,
		0.651126, 0.512146, 0.560127,
		34.667831, 33.283470, 20.289669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547428, 32.381519, 20.329271>,  <34.212040, 32.924969, 19.897581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547428, 32.381519, 20.329271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598450, 32.748928, 20.478968>,  <34.629063, 32.969372, 20.568785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.598450, 32.748928, 20.478968>,  <34.547428, 32.381519, 20.329271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598450, 32.748928, 20.478968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292557, -0.325693, 0.899074,
		0.947703, -0.224165, 0.227176,
		0.127552, 0.918517, 0.374241,
		34.636715, 33.024483, 20.591240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715088, 32.255417, 20.994507>,  <34.547428, 32.381519, 20.329271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715088, 32.255417, 20.994507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641384, 32.647671, 21.021070>,  <34.597160, 32.883022, 21.037008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641384, 32.647671, 21.021070>,  <34.715088, 32.255417, 20.994507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641384, 32.647671, 21.021070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191931, -0.102164, 0.976076,
		0.963956, 0.167106, 0.207038,
		-0.184260, 0.980632, 0.066409,
		34.586105, 32.941860, 21.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177338, 32.641956, 21.550634>,  <34.715088, 32.255417, 20.994507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177338, 32.641956, 21.550634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826611, 32.830132, 21.510857>,  <34.616177, 32.943035, 21.486990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826611, 32.830132, 21.510857>,  <35.177338, 32.641956, 21.550634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826611, 32.830132, 21.510857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210707, -0.190019, 0.958903,
		0.432205, 0.861733, 0.265735,
		-0.876813, 0.470435, -0.099446,
		34.563568, 32.971264, 21.481024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060867, 32.851498, 22.203356>,  <35.177338, 32.641956, 21.550634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060867, 32.851498, 22.203356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696148, 32.864365, 22.039600>,  <34.477318, 32.872086, 21.941347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696148, 32.864365, 22.039600>,  <35.060867, 32.851498, 22.203356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696148, 32.864365, 22.039600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405870, -0.222228, 0.886501,
		-0.062461, 0.974464, 0.215681,
		-0.911794, 0.032166, -0.409387,
		34.422611, 32.874016, 21.916784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745403, 33.363487, 22.669504>,  <35.060867, 32.851498, 22.203356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745403, 33.363487, 22.669504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469616, 33.145096, 22.479120>,  <34.304142, 33.014061, 22.364889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469616, 33.145096, 22.479120>,  <34.745403, 33.363487, 22.669504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469616, 33.145096, 22.479120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429474, -0.220983, 0.875625,
		-0.583254, 0.808128, -0.082124,
		-0.689469, -0.545982, -0.475959,
		34.262775, 32.981300, 22.336332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078373, 33.757393, 22.703434>,  <34.745403, 33.363487, 22.669504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078373, 33.757393, 22.703434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011387, 33.365700, 22.657717>,  <33.971195, 33.130684, 22.630287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.011387, 33.365700, 22.657717>,  <34.078373, 33.757393, 22.703434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011387, 33.365700, 22.657717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530103, -0.008305, 0.847893,
		-0.831231, 0.202583, -0.517702,
		-0.167469, -0.979230, -0.114294,
		33.961147, 33.071930, 22.623428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361183, 33.649925, 22.926971>,  <34.078373, 33.757393, 22.703434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361183, 33.649925, 22.926971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505554, 33.276890, 22.927908>,  <33.592178, 33.053070, 22.928471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.505554, 33.276890, 22.927908>,  <33.361183, 33.649925, 22.926971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505554, 33.276890, 22.927908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398120, -0.151809, 0.904685,
		-0.843344, -0.327462, -0.426075,
		0.360932, -0.932589, 0.002342,
		33.613834, 32.997112, 22.928610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776447, 33.241863, 23.124086>,  <33.361183, 33.649925, 22.926971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776447, 33.241863, 23.124086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.105492, 33.025684, 23.194763>,  <33.302917, 32.895977, 23.237169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.105492, 33.025684, 23.194763>,  <32.776447, 33.241863, 23.124086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105492, 33.025684, 23.194763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279997, -0.114564, 0.953140,
		-0.494882, -0.833540, -0.245567,
		0.822614, -0.540450, 0.176693,
		33.352276, 32.863548, 23.247770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591373, 32.581406, 23.393349>,  <32.776447, 33.241863, 23.124086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591373, 32.581406, 23.393349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966072, 32.669720, 23.501986>,  <33.190891, 32.722706, 23.567167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.966072, 32.669720, 23.501986>,  <32.591373, 32.581406, 23.393349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966072, 32.669720, 23.501986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309035, 0.157402, 0.937935,
		0.164373, -0.962528, 0.215688,
		0.936739, 0.220827, 0.271582,
		33.247097, 32.735954, 23.583462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471325, 32.409573, 24.073408>,  <32.591373, 32.581406, 23.393349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471325, 32.409573, 24.073408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.840900, 32.562336, 24.082239>,  <33.062645, 32.653996, 24.087538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.840900, 32.562336, 24.082239>,  <32.471325, 32.409573, 24.073408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840900, 32.562336, 24.082239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123851, 0.244031, 0.961826,
		0.361944, -0.891400, 0.272769,
		0.923936, 0.381910, 0.022075,
		33.118080, 32.676910, 24.088861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838219, 32.159702, 24.693600>,  <32.471325, 32.409573, 24.073408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838219, 32.159702, 24.693600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.019947, 32.502331, 24.595715>,  <33.128983, 32.707909, 24.536983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.019947, 32.502331, 24.595715>,  <32.838219, 32.159702, 24.693600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019947, 32.502331, 24.595715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122377, 0.332107, 0.935270,
		0.882394, -0.394962, 0.255707,
		0.454318, 0.856569, -0.244714,
		33.156242, 32.759300, 24.522301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361336, 32.166641, 25.186146>,  <32.838219, 32.159702, 24.693600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361336, 32.166641, 25.186146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326454, 32.540192, 25.047421>,  <33.305527, 32.764320, 24.964186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.326454, 32.540192, 25.047421>,  <33.361336, 32.166641, 25.186146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326454, 32.540192, 25.047421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138923, 0.333338, 0.932516,
		0.986457, 0.129496, 0.100669,
		-0.087200, 0.933872, -0.346813,
		33.300293, 32.820354, 24.943377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871284, 32.580837, 25.526218>,  <33.361336, 32.166641, 25.186146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871284, 32.580837, 25.526218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576099, 32.818344, 25.397930>,  <33.398991, 32.960846, 25.320957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.576099, 32.818344, 25.397930>,  <33.871284, 32.580837, 25.526218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576099, 32.818344, 25.397930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177573, 0.287651, 0.941130,
		0.651065, 0.751466, -0.106838,
		-0.737958, 0.593765, -0.320719,
		33.354713, 32.996475, 25.301714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493458, 32.982662, 25.513443>,  <33.871284, 32.580837, 25.526218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493458, 32.982662, 25.513443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820415, 32.805984, 25.661373>,  <35.016590, 32.699978, 25.750132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.820415, 32.805984, 25.661373>,  <34.493458, 32.982662, 25.513443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820415, 32.805984, 25.661373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242001, -0.319307, -0.916231,
		0.522779, 0.838422, -0.154110,
		0.817397, -0.441692, 0.369826,
		35.065636, 32.673477, 25.772322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046986, 33.253983, 25.155485>,  <34.493458, 32.982662, 25.513443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046986, 33.253983, 25.155485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184216, 32.910728, 25.308273>,  <35.266556, 32.704777, 25.399946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.184216, 32.910728, 25.308273>,  <35.046986, 33.253983, 25.155485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184216, 32.910728, 25.308273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240902, -0.312664, -0.918808,
		0.907890, 0.407240, 0.099459,
		0.343078, -0.858136, 0.381969,
		35.287140, 32.653286, 25.422865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737732, 33.282890, 25.101852>,  <35.046986, 33.253983, 25.155485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737732, 33.282890, 25.101852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655304, 32.892822, 25.134287>,  <35.605846, 32.658783, 25.153748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.655304, 32.892822, 25.134287>,  <35.737732, 33.282890, 25.101852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655304, 32.892822, 25.134287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579853, -0.188444, -0.792628,
		0.788229, -0.116320, 0.604289,
		-0.206073, -0.975171, 0.081088,
		35.593483, 32.600269, 25.158613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431759, 33.032608, 25.014061>,  <35.737732, 33.282890, 25.101852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431759, 33.032608, 25.014061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161442, 32.747974, 24.937166>,  <35.999252, 32.577194, 24.891029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161442, 32.747974, 24.937166>,  <36.431759, 33.032608, 25.014061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161442, 32.747974, 24.937166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353479, -0.084005, -0.931663,
		0.646806, -0.697563, 0.308299,
		-0.675792, -0.711582, -0.192239,
		35.958706, 32.534500, 24.879494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891705, 32.465500, 24.716761>,  <36.431759, 33.032608, 25.014061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891705, 32.465500, 24.716761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513737, 32.399212, 24.603857>,  <36.286957, 32.359440, 24.536114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.513737, 32.399212, 24.603857>,  <36.891705, 32.465500, 24.716761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513737, 32.399212, 24.603857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312130, -0.196616, -0.929471,
		0.098538, -0.966374, 0.237513,
		-0.944916, -0.165723, -0.282260,
		36.230263, 32.349495, 24.519178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954453, 31.902504, 24.278492>,  <36.891705, 32.465500, 24.716761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954453, 31.902504, 24.278492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591595, 32.035374, 24.175154>,  <36.373878, 32.115097, 24.113152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591595, 32.035374, 24.175154>,  <36.954453, 31.902504, 24.278492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591595, 32.035374, 24.175154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222027, -0.143702, -0.964393,
		-0.357471, -0.932207, 0.056607,
		-0.907148, 0.332175, -0.258344,
		36.319450, 32.135025, 24.097651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588177, 31.436295, 23.786850>,  <36.954453, 31.902504, 24.278492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588177, 31.436295, 23.786850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430325, 31.797400, 23.718403>,  <36.335613, 32.014065, 23.677334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430325, 31.797400, 23.718403>,  <36.588177, 31.436295, 23.786850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430325, 31.797400, 23.718403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344321, -0.027369, -0.938453,
		-0.851885, -0.429264, -0.300040,
		-0.394632, 0.902764, -0.171120,
		36.311935, 32.068230, 23.667067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155193, 31.404310, 23.170416>,  <36.588177, 31.436295, 23.786850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155193, 31.404310, 23.170416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188904, 31.802652, 23.184086>,  <36.209129, 32.041656, 23.192287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188904, 31.802652, 23.184086>,  <36.155193, 31.404310, 23.170416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188904, 31.802652, 23.184086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187085, 0.017874, -0.982181,
		-0.978722, 0.089170, -0.184803,
		0.084278, 0.995856, 0.034176,
		36.214188, 32.101410, 23.194338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784981, 31.605530, 22.559647>,  <36.155193, 31.404310, 23.170416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784981, 31.605530, 22.559647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021835, 31.913616, 22.654419>,  <36.163948, 32.098469, 22.711283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021835, 31.913616, 22.654419>,  <35.784981, 31.605530, 22.559647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021835, 31.913616, 22.654419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252081, 0.102220, -0.962292,
		-0.765392, 0.629539, -0.133629,
		0.592140, 0.770216, 0.236933,
		36.199478, 32.144680, 22.725498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733986, 32.015713, 22.059921>,  <35.784981, 31.605530, 22.559647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733986, 32.015713, 22.059921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072830, 32.153633, 22.221670>,  <36.276134, 32.236385, 22.318720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072830, 32.153633, 22.221670>,  <35.733986, 32.015713, 22.059921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072830, 32.153633, 22.221670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362425, 0.181661, -0.914137,
		-0.388658, 0.920928, 0.028921,
		0.847109, 0.344805, 0.404371,
		36.326962, 32.257076, 22.342981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889690, 32.558025, 21.672409>,  <35.733986, 32.015713, 22.059921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889690, 32.558025, 21.672409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238182, 32.464748, 21.845186>,  <36.447277, 32.408783, 21.948853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238182, 32.464748, 21.845186>,  <35.889690, 32.558025, 21.672409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238182, 32.464748, 21.845186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481022, 0.230180, -0.845952,
		0.097846, 0.944795, 0.312712,
		0.871231, -0.233194, 0.431945,
		36.499550, 32.394791, 21.974770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209702, 33.139297, 21.615297>,  <35.889690, 32.558025, 21.672409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209702, 33.139297, 21.615297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477505, 32.846001, 21.662830>,  <36.638187, 32.670021, 21.691351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477505, 32.846001, 21.662830>,  <36.209702, 33.139297, 21.615297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477505, 32.846001, 21.662830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440309, 0.262902, -0.858493,
		0.598241, 0.627088, 0.498867,
		0.669504, -0.733241, 0.118834,
		36.678356, 32.626030, 21.698481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862358, 33.475231, 21.546101>,  <36.209702, 33.139297, 21.615297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862358, 33.475231, 21.546101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914654, 33.083439, 21.484758>,  <36.946030, 32.848362, 21.447952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914654, 33.083439, 21.484758>,  <36.862358, 33.475231, 21.546101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914654, 33.083439, 21.484758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677898, 0.201189, -0.707091,
		0.723438, -0.011517, 0.690293,
		0.130736, -0.979485, -0.153355,
		36.953873, 32.789593, 21.438751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677521, 33.391598, 21.469980>,  <36.862358, 33.475231, 21.546101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677521, 33.391598, 21.469980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.501003, 33.066700, 21.317396>,  <37.395092, 32.871761, 21.225845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.501003, 33.066700, 21.317396>,  <37.677521, 33.391598, 21.469980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501003, 33.066700, 21.317396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508056, 0.124252, -0.852315,
		0.739688, -0.569926, 0.357835,
		-0.441295, -0.812247, -0.381462,
		37.368614, 32.823025, 21.202957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175297, 32.968971, 21.924358>,  <37.677521, 33.391598, 21.469980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175297, 32.968971, 21.924358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500217, 33.135342, 22.087906>,  <38.695168, 33.235165, 22.186035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500217, 33.135342, 22.087906>,  <38.175297, 32.968971, 21.924358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500217, 33.135342, 22.087906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463157, 0.033942, 0.885626,
		0.354480, -0.908763, 0.220212,
		0.812299, 0.415930, 0.408868,
		38.743908, 33.260120, 22.210566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278893, 32.703457, 22.612841>,  <38.175297, 32.968971, 21.924358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278893, 32.703457, 22.612841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458477, 33.060646, 22.599957>,  <38.566227, 33.274960, 22.592226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458477, 33.060646, 22.599957>,  <38.278893, 32.703457, 22.612841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458477, 33.060646, 22.599957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296578, 0.182919, 0.937327,
		0.842898, -0.411269, 0.346959,
		0.448959, 0.892972, -0.032209,
		38.593166, 33.328537, 22.590294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675835, 32.606625, 23.193554>,  <38.278893, 32.703457, 22.612841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675835, 32.606625, 23.193554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642464, 32.991898, 23.091330>,  <38.622440, 33.223061, 23.029995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642464, 32.991898, 23.091330>,  <38.675835, 32.606625, 23.193554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642464, 32.991898, 23.091330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081092, 0.249043, 0.965092,
		0.993209, 0.101241, 0.057329,
		-0.083430, 0.963186, -0.255562,
		38.617435, 33.280853, 23.014662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219044, 33.014965, 23.484762>,  <38.675835, 32.606625, 23.193554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219044, 33.014965, 23.484762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935795, 33.289444, 23.418194>,  <38.765846, 33.454132, 23.378254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935795, 33.289444, 23.418194>,  <39.219044, 33.014965, 23.484762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935795, 33.289444, 23.418194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030139, 0.264853, 0.963818,
		0.705443, 0.677488, -0.208230,
		-0.708125, 0.686195, -0.166420,
		38.723358, 33.495304, 23.368267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407558, 33.647636, 23.809174>,  <39.219044, 33.014965, 23.484762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407558, 33.647636, 23.809174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011585, 33.692528, 23.774693>,  <38.774002, 33.719463, 23.754004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011585, 33.692528, 23.774693>,  <39.407558, 33.647636, 23.809174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011585, 33.692528, 23.774693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058873, 0.227340, 0.972034,
		0.128687, 0.967327, -0.218445,
		-0.989936, 0.112228, -0.086205,
		38.714603, 33.726196, 23.748831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237331, 34.248577, 24.203636>,  <39.407558, 33.647636, 23.809174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237331, 34.248577, 24.203636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884430, 34.064632, 24.163338>,  <38.672688, 33.954266, 24.139158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.884430, 34.064632, 24.163338>,  <39.237331, 34.248577, 24.203636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884430, 34.064632, 24.163338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178591, 0.128935, 0.975439,
		-0.435576, 0.878581, -0.195880,
		-0.882258, -0.459861, -0.100745,
		38.619751, 33.926674, 24.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619434, 34.646198, 24.560221>,  <39.237331, 34.248577, 24.203636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619434, 34.646198, 24.560221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489513, 34.269005, 24.531145>,  <38.411560, 34.042690, 24.513700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489513, 34.269005, 24.531145>,  <38.619434, 34.646198, 24.560221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489513, 34.269005, 24.531145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263757, 0.016507, 0.964448,
		-0.908258, 0.332431, -0.254080,
		-0.324807, -0.942983, -0.072689,
		38.392071, 33.986111, 24.509338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015236, 34.607365, 24.900003>,  <38.619434, 34.646198, 24.560221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015236, 34.607365, 24.900003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119213, 34.221931, 24.874899>,  <38.181599, 33.990673, 24.859837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119213, 34.221931, 24.874899>,  <38.015236, 34.607365, 24.900003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119213, 34.221931, 24.874899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171313, -0.109985, 0.979058,
		-0.950305, -0.243751, -0.193664,
		0.259947, -0.963581, -0.062761,
		38.197197, 33.932858, 24.856071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497375, 34.255459, 25.209743>,  <38.015236, 34.607365, 24.900003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497375, 34.255459, 25.209743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822498, 34.022476, 25.213461>,  <38.017570, 33.882687, 25.215691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822498, 34.022476, 25.213461>,  <37.497375, 34.255459, 25.209743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822498, 34.022476, 25.213461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088335, -0.107468, 0.990276,
		-0.575797, -0.805724, -0.138803,
		0.812806, -0.582460, 0.009294,
		38.066341, 33.847740, 25.216249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299782, 33.712997, 25.491959>,  <37.497375, 34.255459, 25.209743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299782, 33.712997, 25.491959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696323, 33.708263, 25.544222>,  <37.934250, 33.705421, 25.575581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696323, 33.708263, 25.544222>,  <37.299782, 33.712997, 25.491959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696323, 33.708263, 25.544222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131133, -0.059201, 0.989595,
		-0.003977, -0.998176, -0.060241,
		0.991357, -0.011835, 0.130659,
		37.993729, 33.704712, 25.583420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403286, 33.129322, 25.983032>,  <37.299782, 33.712997, 25.491959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403286, 33.129322, 25.983032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773254, 33.280838, 25.970188>,  <37.995235, 33.371750, 25.962482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773254, 33.280838, 25.970188>,  <37.403286, 33.129322, 25.983032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773254, 33.280838, 25.970188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079324, -0.109703, 0.990794,
		0.371783, -0.918957, -0.131514,
		0.924925, 0.378792, -0.032110,
		38.050732, 33.394474, 25.960556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848240, 32.661404, 26.379032>,  <37.403286, 33.129322, 25.983032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848240, 32.661404, 26.379032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002430, 33.030281, 26.366550>,  <38.094944, 33.251606, 26.359062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002430, 33.030281, 26.366550>,  <37.848240, 32.661404, 26.379032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002430, 33.030281, 26.366550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119992, 0.083631, 0.989246,
		0.914882, -0.377588, 0.142893,
		0.385478, 0.922189, -0.031205,
		38.118073, 33.306938, 26.357189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249203, 32.651920, 26.972338>,  <37.848240, 32.661404, 26.379032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249203, 32.651920, 26.972338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199276, 33.025719, 26.838985>,  <38.169319, 33.249996, 26.758974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199276, 33.025719, 26.838985>,  <38.249203, 32.651920, 26.972338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199276, 33.025719, 26.838985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244111, 0.296757, 0.923225,
		0.961681, 0.196615, 0.191080,
		-0.124815, 0.934493, -0.333381,
		38.161831, 33.306068, 26.738972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740761, 33.111519, 27.404209>,  <38.249203, 32.651920, 26.972338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740761, 33.111519, 27.404209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455845, 33.362431, 27.278248>,  <38.284893, 33.512978, 27.202671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455845, 33.362431, 27.278248>,  <38.740761, 33.111519, 27.404209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455845, 33.362431, 27.278248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144298, 0.308200, 0.940314,
		0.686890, 0.715218, -0.129014,
		-0.712292, 0.627276, -0.314905,
		38.242157, 33.550613, 27.183777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.100163, 36.206963, 22.533339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.717220, 36.121284, 22.455786>,  <41.487453, 36.069878, 22.409254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.717220, 36.121284, 22.455786>,  <42.100163, 36.206963, 22.533339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717220, 36.121284, 22.455786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245912, -0.251899, -0.935988,
		0.151645, -0.943752, 0.293830,
		-0.957356, -0.214194, -0.193881,
		41.430012, 36.057026, 22.397621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135006, 35.523304, 22.063950>,  <42.100163, 36.206963, 22.533339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135006, 35.523304, 22.063950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.780468, 35.696075, 21.997231>,  <41.567745, 35.799740, 21.957199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.780468, 35.696075, 21.997231>,  <42.135006, 35.523304, 22.063950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780468, 35.696075, 21.997231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255846, 0.156625, -0.953945,
		-0.385915, -0.888202, -0.249333,
		-0.886348, 0.431933, -0.166799,
		41.514565, 35.825657, 21.947191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801357, 35.102261, 21.615191>,  <42.135006, 35.523304, 22.063950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801357, 35.102261, 21.615191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644875, 35.468048, 21.573830>,  <41.550983, 35.687523, 21.549013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.644875, 35.468048, 21.573830>,  <41.801357, 35.102261, 21.615191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644875, 35.468048, 21.573830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394933, 0.065333, -0.916384,
		-0.831253, -0.399337, -0.386715,
		-0.391211, 0.914474, -0.103403,
		41.527512, 35.742390, 21.542809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497578, 35.138626, 20.982199>,  <41.801357, 35.102261, 21.615191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497578, 35.138626, 20.982199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543293, 35.527523, 21.063860>,  <41.570721, 35.760860, 21.112858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.543293, 35.527523, 21.063860>,  <41.497578, 35.138626, 20.982199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543293, 35.527523, 21.063860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315536, 0.159334, -0.935441,
		-0.942006, 0.171328, -0.288568,
		0.114288, 0.972245, 0.204154,
		41.577579, 35.819195, 21.125107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095749, 35.400166, 20.431646>,  <41.497578, 35.138626, 20.982199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095749, 35.400166, 20.431646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325127, 35.684422, 20.594698>,  <41.462753, 35.854973, 20.692530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.325127, 35.684422, 20.594698>,  <41.095749, 35.400166, 20.431646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325127, 35.684422, 20.594698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464876, 0.127446, -0.876155,
		-0.674579, 0.691919, -0.257275,
		0.573440, 0.710637, 0.407629,
		41.497158, 35.897614, 20.716988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136868, 35.860767, 19.954048>,  <41.095749, 35.400166, 20.431646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136868, 35.860767, 19.954048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.445324, 35.973927, 20.182192>,  <41.630398, 36.041824, 20.319078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.445324, 35.973927, 20.182192>,  <41.136868, 35.860767, 19.954048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445324, 35.973927, 20.182192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476137, 0.338457, -0.811628,
		-0.422653, 0.897448, 0.126298,
		0.771141, 0.282902, 0.570358,
		41.676666, 36.058796, 20.353300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186138, 36.578205, 19.960943>,  <41.136868, 35.860767, 19.954048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186138, 36.578205, 19.960943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548927, 36.423481, 20.027617>,  <41.766602, 36.330647, 20.067619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.548927, 36.423481, 20.027617>,  <41.186138, 36.578205, 19.960943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548927, 36.423481, 20.027617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278585, 0.254099, -0.926188,
		0.315909, 0.886459, 0.338220,
		0.906969, -0.386814, 0.166682,
		41.821018, 36.307438, 20.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705223, 37.099392, 19.710257>,  <41.186138, 36.578205, 19.960943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705223, 37.099392, 19.710257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.882893, 36.741268, 19.723705>,  <41.989494, 36.526394, 19.731775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.882893, 36.741268, 19.723705>,  <41.705223, 37.099392, 19.710257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882893, 36.741268, 19.723705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321116, 0.124049, -0.938881,
		0.836420, 0.427819, 0.342598,
		0.444169, -0.895312, 0.033623,
		42.016144, 36.472675, 19.733791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356426, 37.137402, 19.284653>,  <41.705223, 37.099392, 19.710257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356426, 37.137402, 19.284653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.298679, 36.742908, 19.316900>,  <42.264030, 36.506210, 19.336248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.298679, 36.742908, 19.316900>,  <42.356426, 37.137402, 19.284653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298679, 36.742908, 19.316900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423869, -0.135251, -0.895568,
		0.894144, -0.095116, 0.437560,
		-0.144364, -0.986235, 0.080617,
		42.255371, 36.447037, 19.341085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984161, 36.866848, 19.159800>,  <42.356426, 37.137402, 19.284653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984161, 36.866848, 19.159800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.713596, 36.584953, 19.074190>,  <42.551258, 36.415817, 19.022823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.713596, 36.584953, 19.074190>,  <42.984161, 36.866848, 19.159800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713596, 36.584953, 19.074190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381015, -0.086134, -0.920548,
		0.630312, -0.704218, 0.326779,
		-0.676413, -0.704740, -0.214026,
		42.510674, 36.373531, 19.009983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357216, 36.275921, 18.880211>,  <42.984161, 36.866848, 19.159800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357216, 36.275921, 18.880211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.978027, 36.234951, 18.759638>,  <42.750515, 36.210369, 18.687294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.978027, 36.234951, 18.759638>,  <43.357216, 36.275921, 18.880211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978027, 36.234951, 18.759638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317071, -0.218681, -0.922846,
		0.028601, -0.970406, 0.239778,
		-0.947971, -0.102421, -0.301433,
		42.693638, 36.204224, 18.669209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414211, 35.822521, 18.267691>,  <43.357216, 36.275921, 18.880211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414211, 35.822521, 18.267691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042236, 35.969536, 18.263107>,  <42.819050, 36.057743, 18.260357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.042236, 35.969536, 18.263107>,  <43.414211, 35.822521, 18.267691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042236, 35.969536, 18.263107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035512, -0.120777, -0.992044,
		-0.365998, -0.922133, 0.125367,
		-0.929938, 0.367538, -0.011457,
		42.763256, 36.079796, 18.259670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929844, 35.316685, 17.981850>,  <43.414211, 35.822521, 18.267691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929844, 35.316685, 17.981850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800461, 35.690254, 17.920965>,  <42.722832, 35.914394, 17.884436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.800461, 35.690254, 17.920965>,  <42.929844, 35.316685, 17.981850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800461, 35.690254, 17.920965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017993, -0.154757, -0.987789,
		-0.946072, -0.322245, 0.033253,
		-0.323456, 0.933921, -0.152209,
		42.703423, 35.970432, 17.875303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351357, 35.344360, 17.446308>,  <42.929844, 35.316685, 17.981850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351357, 35.344360, 17.446308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.565056, 35.682053, 17.463522>,  <42.693275, 35.884666, 17.473850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.565056, 35.682053, 17.463522>,  <42.351357, 35.344360, 17.446308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565056, 35.682053, 17.463522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020597, 0.037894, -0.999069,
		-0.845075, 0.534640, 0.002856,
		0.534250, 0.844230, 0.043036,
		42.725330, 35.935322, 17.476433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693527, 34.977383, 17.724417>,  <42.351357, 35.344360, 17.446308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693527, 34.977383, 17.724417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.685272, 34.583618, 17.654554>,  <41.680321, 34.347359, 17.612637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.685272, 34.583618, 17.654554>,  <41.693527, 34.977383, 17.724417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685272, 34.583618, 17.654554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267243, -0.162908, 0.949759,
		-0.963408, 0.066274, -0.259716,
		-0.020635, -0.984413, -0.174658,
		41.679081, 34.288296, 17.602158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972492, 34.690388, 17.796122>,  <41.693527, 34.977383, 17.724417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972492, 34.690388, 17.796122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.231186, 34.391167, 17.855654>,  <41.386402, 34.211636, 17.891373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.231186, 34.391167, 17.855654>,  <40.972492, 34.690388, 17.796122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231186, 34.391167, 17.855654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478438, -0.245921, 0.842982,
		-0.593992, -0.616396, -0.516942,
		0.646739, -0.748050, 0.148832,
		41.425209, 34.166752, 17.900303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521820, 34.335804, 18.191639>,  <40.972492, 34.690388, 17.796122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521820, 34.335804, 18.191639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.882874, 34.171635, 18.243511>,  <41.099506, 34.073135, 18.274635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.882874, 34.171635, 18.243511>,  <40.521820, 34.335804, 18.191639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882874, 34.171635, 18.243511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333087, -0.475233, 0.814375,
		-0.272605, -0.778274, -0.565664,
		0.902629, -0.410418, 0.129682,
		41.153664, 34.048508, 18.282415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411140, 33.626171, 18.446737>,  <40.521820, 34.335804, 18.191639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411140, 33.626171, 18.446737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788986, 33.688282, 18.562386>,  <41.015694, 33.725548, 18.631775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.788986, 33.688282, 18.562386>,  <40.411140, 33.626171, 18.446737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788986, 33.688282, 18.562386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219950, -0.354288, 0.908902,
		0.243563, -0.922155, -0.300513,
		0.944616, 0.155277, 0.289119,
		41.072372, 33.734863, 18.649122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444775, 33.107933, 18.923569>,  <40.411140, 33.626171, 18.446737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444775, 33.107933, 18.923569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.766739, 33.325874, 19.017590>,  <40.959919, 33.456638, 19.074001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.766739, 33.325874, 19.017590>,  <40.444775, 33.107933, 18.923569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766739, 33.325874, 19.017590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126054, -0.230070, 0.964976,
		0.579850, -0.806350, -0.116504,
		0.804912, 0.544856, 0.235050,
		41.008213, 33.489330, 19.088104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817120, 32.626831, 19.313503>,  <40.444775, 33.107933, 18.923569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817120, 32.626831, 19.313503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929558, 33.002815, 19.390921>,  <40.997021, 33.228405, 19.437370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.929558, 33.002815, 19.390921>,  <40.817120, 32.626831, 19.313503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929558, 33.002815, 19.390921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283321, -0.111406, 0.952532,
		0.916905, -0.322586, 0.234995,
		0.281094, 0.939961, 0.193544,
		41.013885, 33.284805, 19.448984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150791, 32.572498, 19.984226>,  <40.817120, 32.626831, 19.313503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150791, 32.572498, 19.984226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037605, 32.953773, 19.941605>,  <40.969692, 33.182541, 19.916033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037605, 32.953773, 19.941605>,  <41.150791, 32.572498, 19.984226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037605, 32.953773, 19.941605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326762, 0.008640, 0.945067,
		0.901751, 0.302241, 0.309022,
		-0.282968, 0.953192, -0.106552,
		40.952713, 33.239731, 19.909639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334454, 32.855145, 20.633198>,  <41.150791, 32.572498, 19.984226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334454, 32.855145, 20.633198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073860, 33.098789, 20.452288>,  <40.917503, 33.244976, 20.343742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.073860, 33.098789, 20.452288>,  <41.334454, 32.855145, 20.633198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073860, 33.098789, 20.452288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503954, 0.098164, 0.858134,
		0.567095, 0.786987, 0.243011,
		-0.651486, 0.609110, -0.452273,
		40.878414, 33.281521, 20.316607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269817, 33.359489, 21.108671>,  <41.334454, 32.855145, 20.633198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269817, 33.359489, 21.108671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952801, 33.398441, 20.867876>,  <40.762589, 33.421814, 20.723398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952801, 33.398441, 20.867876>,  <41.269817, 33.359489, 21.108671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952801, 33.398441, 20.867876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572407, 0.221630, 0.789449,
		0.210298, 0.970256, -0.119909,
		-0.792543, 0.097383, -0.601990,
		40.715038, 33.427654, 20.687279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948849, 34.022194, 21.230726>,  <41.269817, 33.359489, 21.108671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948849, 34.022194, 21.230726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668179, 33.768627, 21.100620>,  <40.499775, 33.616486, 21.022556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.668179, 33.768627, 21.100620>,  <40.948849, 34.022194, 21.230726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668179, 33.768627, 21.100620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507412, 0.124114, 0.852718,
		-0.500185, 0.763375, -0.408747,
		-0.701675, -0.633920, -0.325266,
		40.457676, 33.578453, 21.003040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336628, 34.366425, 21.440123>,  <40.948849, 34.022194, 21.230726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336628, 34.366425, 21.440123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205475, 33.997910, 21.356476>,  <40.126781, 33.776802, 21.306288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205475, 33.997910, 21.356476>,  <40.336628, 34.366425, 21.440123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205475, 33.997910, 21.356476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730744, 0.107036, 0.674209,
		-0.598755, 0.373871, -0.708318,
		-0.327883, -0.921284, -0.209115,
		40.107109, 33.721523, 21.293741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631737, 34.419003, 21.302023>,  <40.336628, 34.366425, 21.440123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631737, 34.419003, 21.302023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.697899, 34.038555, 21.406345>,  <39.737598, 33.810287, 21.468939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.697899, 34.038555, 21.406345>,  <39.631737, 34.419003, 21.302023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697899, 34.038555, 21.406345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788556, 0.031273, 0.614167,
		-0.592300, -0.307248, -0.744835,
		0.165409, -0.951115, 0.260805,
		39.747520, 33.753220, 21.484587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947056, 34.073059, 21.234291>,  <39.631737, 34.419003, 21.302023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947056, 34.073059, 21.234291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176487, 33.832485, 21.456743>,  <39.314144, 33.688141, 21.590214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176487, 33.832485, 21.456743>,  <38.947056, 34.073059, 21.234291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176487, 33.832485, 21.456743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745480, -0.101874, 0.658697,
		-0.339509, -0.792398, -0.506792,
		0.573579, -0.601437, 0.556130,
		39.348560, 33.652054, 21.623583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413643, 33.547466, 21.435661>,  <38.947056, 34.073059, 21.234291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413643, 33.547466, 21.435661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716797, 33.473312, 21.685858>,  <38.898689, 33.428822, 21.835976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.716797, 33.473312, 21.685858>,  <38.413643, 33.547466, 21.435661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716797, 33.473312, 21.685858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648041, -0.103437, 0.754549,
		-0.075183, -0.977207, -0.198530,
		0.757886, -0.185385, 0.625493,
		38.944164, 33.417698, 21.873507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225159, 32.994961, 21.065439>,  <38.413643, 33.547466, 21.435661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225159, 32.994961, 21.065439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894341, 32.813194, 20.933077>,  <37.695850, 32.704136, 20.853659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894341, 32.813194, 20.933077>,  <38.225159, 32.994961, 21.065439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894341, 32.813194, 20.933077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364197, 0.015248, -0.931197,
		0.428194, -0.890661, 0.152885,
		-0.827049, -0.454413, -0.330905,
		37.646225, 32.676872, 20.833805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530022, 32.542496, 20.695242>,  <38.225159, 32.994961, 21.065439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530022, 32.542496, 20.695242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159721, 32.535351, 20.544153>,  <37.937542, 32.531063, 20.453499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.159721, 32.535351, 20.544153>,  <38.530022, 32.542496, 20.695242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159721, 32.535351, 20.544153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377996, -0.015579, -0.925676,
		0.010653, -0.999719, 0.021175,
		-0.925746, -0.017865, -0.377724,
		37.881996, 32.529991, 20.430836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520203, 32.027699, 20.121300>,  <38.530022, 32.542496, 20.695242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520203, 32.027699, 20.121300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224068, 32.292351, 20.073721>,  <38.046387, 32.451141, 20.045174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224068, 32.292351, 20.073721>,  <38.520203, 32.027699, 20.121300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224068, 32.292351, 20.073721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247603, 0.103877, -0.963277,
		-0.624977, -0.742600, -0.240725,
		-0.740336, 0.661630, -0.118949,
		38.001968, 32.490841, 20.038036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235580, 31.805519, 19.569935>,  <38.520203, 32.027699, 20.121300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235580, 31.805519, 19.569935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110859, 32.183807, 19.606571>,  <38.036026, 32.410782, 19.628553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110859, 32.183807, 19.606571>,  <38.235580, 31.805519, 19.569935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110859, 32.183807, 19.606571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253994, 0.175852, -0.951085,
		-0.915568, -0.273290, -0.295040,
		-0.311805, 0.945721, 0.091590,
		38.017319, 32.467525, 19.634048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550140, 31.938393, 19.064911>,  <38.235580, 31.805519, 19.569935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550140, 31.938393, 19.064911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776455, 32.256847, 19.150747>,  <37.912243, 32.447922, 19.202250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776455, 32.256847, 19.150747>,  <37.550140, 31.938393, 19.064911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776455, 32.256847, 19.150747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192336, 0.125643, -0.973253,
		-0.801805, 0.591927, -0.082039,
		0.565787, 0.796138, 0.214590,
		37.946190, 32.495689, 19.215124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694473, 32.263527, 18.441885>,  <37.550140, 31.938393, 19.064911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694473, 32.263527, 18.441885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915089, 32.512371, 18.664158>,  <38.047459, 32.661678, 18.797522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.915089, 32.512371, 18.664158>,  <37.694473, 32.263527, 18.441885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915089, 32.512371, 18.664158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218182, 0.535382, -0.815943,
		-0.805112, 0.571261, 0.159548,
		0.551535, 0.622115, 0.555681,
		38.080547, 32.699005, 18.830862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528416, 32.980461, 18.215012>,  <37.694473, 32.263527, 18.441885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528416, 32.980461, 18.215012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889519, 33.000900, 18.385851>,  <38.106182, 33.013165, 18.488356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.889519, 33.000900, 18.385851>,  <37.528416, 32.980461, 18.215012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889519, 33.000900, 18.385851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349325, 0.492280, -0.797266,
		-0.250994, 0.868936, 0.426559,
		0.902759, 0.051101, 0.427100,
		38.160347, 33.016232, 18.513981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151581, 33.596256, 18.409441>,  <37.528416, 32.980461, 18.215012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151581, 33.596256, 18.409441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835876, 33.812157, 18.292315>,  <36.646454, 33.941696, 18.222038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835876, 33.812157, 18.292315>,  <37.151581, 33.596256, 18.409441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835876, 33.812157, 18.292315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522501, -0.339806, 0.782000,
		0.322582, 0.770199, 0.550214,
		-0.789261, 0.539746, -0.292814,
		36.599098, 33.974079, 18.204470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912418, 34.137260, 18.941414>,  <37.151581, 33.596256, 18.409441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912418, 34.137260, 18.941414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581463, 34.127369, 18.716980>,  <36.382889, 34.121433, 18.582319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581463, 34.127369, 18.716980>,  <36.912418, 34.137260, 18.941414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581463, 34.127369, 18.716980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559690, -0.046614, 0.827390,
		-0.046614, 0.998607, 0.024728,
		-0.827390, -0.024728, -0.561084,
		36.333244, 34.119949, 18.548655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381584, 34.757790, 19.080687>,  <36.912418, 34.137260, 18.941414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381584, 34.757790, 19.080687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184105, 34.451508, 18.915785>,  <36.065617, 34.267738, 18.816845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184105, 34.451508, 18.915785>,  <36.381584, 34.757790, 19.080687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184105, 34.451508, 18.915785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454340, -0.177102, 0.873047,
		-0.741508, 0.618328, -0.260455,
		-0.493702, -0.765706, -0.412253,
		36.035995, 34.221794, 18.792109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712460, 34.849182, 19.278502>,  <36.381584, 34.757790, 19.080687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712460, 34.849182, 19.278502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689751, 34.467285, 19.161718>,  <35.676125, 34.238148, 19.091648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689751, 34.467285, 19.161718>,  <35.712460, 34.849182, 19.278502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689751, 34.467285, 19.161718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503916, -0.225047, 0.833920,
		-0.861885, 0.194468, -0.468334,
		-0.056774, -0.954744, -0.291960,
		35.672718, 34.180862, 19.074131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030396, 34.662586, 19.350084>,  <35.712460, 34.849182, 19.278502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030396, 34.662586, 19.350084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223618, 34.312378, 19.345676>,  <35.339550, 34.102253, 19.343031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223618, 34.312378, 19.345676>,  <35.030396, 34.662586, 19.350084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223618, 34.312378, 19.345676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512921, -0.293153, 0.806829,
		-0.709625, -0.384092, -0.590683,
		0.483057, -0.875520, -0.011020,
		35.368534, 34.049721, 19.342371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512325, 34.159130, 19.377481>,  <35.030396, 34.662586, 19.350084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512325, 34.159130, 19.377481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827141, 33.967373, 19.532791>,  <35.016029, 33.852318, 19.625977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.827141, 33.967373, 19.532791>,  <34.512325, 34.159130, 19.377481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827141, 33.967373, 19.532791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572485, -0.333049, 0.749226,
		-0.229855, -0.811952, -0.536564,
		0.787037, -0.479388, 0.388278,
		35.063251, 33.823555, 19.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205914, 33.624580, 19.646877>,  <34.512325, 34.159130, 19.377481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205914, 33.624580, 19.646877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567692, 33.599758, 19.815699>,  <34.784760, 33.584866, 19.916992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567692, 33.599758, 19.815699>,  <34.205914, 33.624580, 19.646877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567692, 33.599758, 19.815699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411733, -0.385851, 0.825588,
		0.111615, -0.920471, -0.374532,
		0.904444, -0.062060, 0.422055,
		34.839024, 33.581139, 19.942314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.137108, 37.777241, 16.652494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.259293, 37.419174, 16.782335>,  <40.332603, 37.204334, 16.860239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.259293, 37.419174, 16.782335>,  <40.137108, 37.777241, 16.652494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259293, 37.419174, 16.782335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382369, 0.196888, 0.902790,
		-0.872058, -0.399888, -0.282142,
		0.305465, -0.895167, 0.324602,
		40.350933, 37.150623, 16.879717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550671, 37.391727, 16.971046>,  <40.137108, 37.777241, 16.652494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550671, 37.391727, 16.971046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898087, 37.274315, 17.130783>,  <40.106537, 37.203865, 17.226625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898087, 37.274315, 17.130783>,  <39.550671, 37.391727, 16.971046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898087, 37.274315, 17.130783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386871, 0.102098, 0.916464,
		-0.309787, -0.950480, -0.024884,
		0.868541, -0.293536, 0.399342,
		40.158649, 37.186253, 17.250586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446827, 36.898918, 17.500988>,  <39.550671, 37.391727, 16.971046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446827, 36.898918, 17.500988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779758, 37.115860, 17.546753>,  <39.979515, 37.246025, 17.574211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.779758, 37.115860, 17.546753>,  <39.446827, 36.898918, 17.500988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779758, 37.115860, 17.546753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275163, 0.225107, 0.934672,
		0.481167, -0.809432, 0.336597,
		0.832324, 0.542352, 0.114412,
		40.029457, 37.278564, 17.581078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690582, 36.883808, 18.193827>,  <39.446827, 36.898918, 17.500988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690582, 36.883808, 18.193827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875168, 37.218746, 18.076584>,  <39.985920, 37.419708, 18.006239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875168, 37.218746, 18.076584>,  <39.690582, 36.883808, 18.193827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875168, 37.218746, 18.076584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198499, 0.419463, 0.885804,
		0.864667, -0.350585, 0.359778,
		0.461464, 0.837341, -0.293105,
		40.013607, 37.469948, 17.988653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219742, 37.071384, 18.753433>,  <39.690582, 36.883808, 18.193827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219742, 37.071384, 18.753433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.176819, 37.404568, 18.536303>,  <40.151066, 37.604477, 18.406025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.176819, 37.404568, 18.536303>,  <40.219742, 37.071384, 18.753433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176819, 37.404568, 18.536303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341439, 0.481897, 0.806966,
		0.933758, 0.271936, 0.232694,
		-0.107309, 0.832962, -0.542824,
		40.144627, 37.654457, 18.373455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484432, 37.491150, 19.218367>,  <40.219742, 37.071384, 18.753433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484432, 37.491150, 19.218367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257610, 37.703476, 18.966436>,  <40.121517, 37.830872, 18.815277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257610, 37.703476, 18.966436>,  <40.484432, 37.491150, 19.218367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257610, 37.703476, 18.966436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381779, 0.508171, 0.772015,
		0.729861, 0.678227, -0.085503,
		-0.567052, 0.530820, -0.629827,
		40.087494, 37.862720, 18.777489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535557, 38.266094, 19.365498>,  <40.484432, 37.491150, 19.218367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535557, 38.266094, 19.365498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200901, 38.142357, 19.184677>,  <40.000107, 38.068115, 19.076185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.200901, 38.142357, 19.184677>,  <40.535557, 38.266094, 19.365498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200901, 38.142357, 19.184677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542004, 0.348183, 0.764854,
		-0.079207, 0.884916, -0.458967,
		-0.836635, -0.309343, -0.452049,
		39.949909, 38.049553, 19.049063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103127, 38.743523, 19.574961>,  <40.535557, 38.266094, 19.365498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103127, 38.743523, 19.574961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865341, 38.443024, 19.460245>,  <39.722672, 38.262726, 19.391417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865341, 38.443024, 19.460245>,  <40.103127, 38.743523, 19.574961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865341, 38.443024, 19.460245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648753, 0.237337, 0.723043,
		-0.475118, 0.615874, -0.628460,
		-0.594460, -0.751246, -0.286787,
		39.687004, 38.217651, 19.374208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465748, 38.979626, 19.673666>,  <40.103127, 38.743523, 19.574961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465748, 38.979626, 19.673666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415146, 38.583256, 19.655519>,  <39.384785, 38.345432, 19.644632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.415146, 38.583256, 19.655519>,  <39.465748, 38.979626, 19.673666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415146, 38.583256, 19.655519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668747, 0.051414, 0.741710,
		-0.732649, 0.124165, -0.669185,
		-0.126500, -0.990929, -0.045367,
		39.377197, 38.285976, 19.641909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800884, 38.925522, 19.698088>,  <39.465748, 38.979626, 19.673666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800884, 38.925522, 19.698088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908020, 38.555397, 19.805458>,  <38.972301, 38.333321, 19.869881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.908020, 38.555397, 19.805458>,  <38.800884, 38.925522, 19.698088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908020, 38.555397, 19.805458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688514, 0.011059, 0.725138,
		-0.673951, -0.379035, -0.634131,
		0.267840, -0.925316, 0.268425,
		38.988373, 38.277802, 19.885986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239876, 38.599564, 19.714167>,  <38.800884, 38.925522, 19.698088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239876, 38.599564, 19.714167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.486313, 38.371128, 19.931158>,  <38.634174, 38.234066, 20.061354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.486313, 38.371128, 19.931158>,  <38.239876, 38.599564, 19.714167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486313, 38.371128, 19.931158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668285, -0.014442, 0.743765,
		-0.416923, -0.820759, -0.390550,
		0.616092, -0.571092, 0.542480,
		38.671139, 38.199802, 20.093903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776997, 38.036251, 20.075787>,  <38.239876, 38.599564, 19.714167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776997, 38.036251, 20.075787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122032, 38.084305, 20.272358>,  <38.329056, 38.113136, 20.390301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122032, 38.084305, 20.272358>,  <37.776997, 38.036251, 20.075787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122032, 38.084305, 20.272358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500603, 0.062475, 0.863420,
		0.073080, -0.990782, 0.114062,
		0.862587, 0.120199, 0.491423,
		38.380810, 38.120346, 20.419786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296284, 37.458660, 20.098726>,  <37.776997, 38.036251, 20.075787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296284, 37.458660, 20.098726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.943275, 37.590878, 19.964922>,  <36.731472, 37.670208, 19.884640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.943275, 37.590878, 19.964922>,  <37.296284, 37.458660, 20.098726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943275, 37.590878, 19.964922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229153, -0.318891, -0.919672,
		-0.410668, -0.888283, 0.205682,
		-0.882519, 0.330547, -0.334512,
		36.678520, 37.690041, 19.864569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221989, 37.012878, 19.542643>,  <37.296284, 37.458660, 20.098726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221989, 37.012878, 19.542643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965374, 37.312950, 19.478565>,  <36.811405, 37.492992, 19.440119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.965374, 37.312950, 19.478565>,  <37.221989, 37.012878, 19.542643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965374, 37.312950, 19.478565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116009, -0.111549, -0.986964,
		-0.758271, -0.651756, -0.015465,
		-0.641535, 0.750181, -0.160194,
		36.772915, 37.538006, 19.430508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639381, 36.766621, 19.166243>,  <37.221989, 37.012878, 19.542643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639381, 36.766621, 19.166243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635681, 37.160755, 19.098103>,  <36.633461, 37.397236, 19.057219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.635681, 37.160755, 19.098103>,  <36.639381, 36.766621, 19.166243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635681, 37.160755, 19.098103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036928, -0.169905, -0.984768,
		-0.999275, -0.015396, -0.034815,
		-0.009246, 0.985340, -0.170351,
		36.632908, 37.456356, 19.046997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238739, 36.907871, 18.608950>,  <36.639381, 36.766621, 19.166243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238739, 36.907871, 18.608950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464581, 37.237759, 18.621971>,  <36.600086, 37.435692, 18.629784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464581, 37.237759, 18.621971>,  <36.238739, 36.907871, 18.608950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464581, 37.237759, 18.621971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232479, -0.121066, -0.965037,
		-0.791944, 0.552431, -0.260085,
		0.564604, 0.824720, 0.032552,
		36.633961, 37.485176, 18.631737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145348, 37.208698, 17.965113>,  <36.238739, 36.907871, 18.608950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145348, 37.208698, 17.965113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476330, 37.391472, 18.095667>,  <36.674919, 37.501137, 18.174000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.476330, 37.391472, 18.095667>,  <36.145348, 37.208698, 17.965113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476330, 37.391472, 18.095667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404068, -0.080896, -0.911145,
		-0.389926, 0.885817, -0.251569,
		0.827458, 0.456930, 0.326386,
		36.724567, 37.528549, 18.193583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260841, 37.602478, 17.472008>,  <36.145348, 37.208698, 17.965113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260841, 37.602478, 17.472008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616837, 37.614716, 17.653992>,  <36.830433, 37.622059, 17.763182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616837, 37.614716, 17.653992>,  <36.260841, 37.602478, 17.472008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616837, 37.614716, 17.653992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453603, 0.042508, -0.890190,
		-0.046576, 0.998628, 0.023954,
		0.889986, 0.030596, 0.454960,
		36.883831, 37.623894, 17.790480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671089, 38.199589, 17.236492>,  <36.260841, 37.602478, 17.472008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671089, 38.199589, 17.236492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.944248, 37.940300, 17.371231>,  <37.108143, 37.784725, 17.452074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.944248, 37.940300, 17.371231>,  <36.671089, 38.199589, 17.236492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944248, 37.940300, 17.371231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556022, 0.162146, -0.815199,
		0.473811, 0.743988, 0.471153,
		0.682893, -0.648222, 0.336847,
		37.149117, 37.745834, 17.472284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377892, 38.516319, 17.070862>,  <36.671089, 38.199589, 17.236492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377892, 38.516319, 17.070862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434830, 38.122963, 17.115887>,  <37.468994, 37.886948, 17.142902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.434830, 38.122963, 17.115887>,  <37.377892, 38.516319, 17.070862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434830, 38.122963, 17.115887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576350, -0.010107, -0.817140,
		0.804709, 0.181194, 0.565342,
		0.142347, -0.983395, 0.112564,
		37.477535, 37.827946, 17.149656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983162, 38.446487, 16.840853>,  <37.377892, 38.516319, 17.070862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983162, 38.446487, 16.840853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875923, 38.061310, 16.829105>,  <37.811581, 37.830204, 16.822058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.875923, 38.061310, 16.829105>,  <37.983162, 38.446487, 16.840853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875923, 38.061310, 16.829105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563133, -0.131904, -0.815771,
		0.781669, -0.235242, 0.577629,
		-0.268095, -0.962945, -0.029368,
		37.795494, 37.772427, 16.820295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492935, 38.205215, 16.420805>,  <37.983162, 38.446487, 16.840853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492935, 38.205215, 16.420805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.215137, 37.919312, 16.387848>,  <38.048458, 37.747768, 16.368073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.215137, 37.919312, 16.387848>,  <38.492935, 38.205215, 16.420805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215137, 37.919312, 16.387848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340249, -0.225364, -0.912930,
		0.633960, -0.662062, 0.399712,
		-0.694497, -0.714763, -0.082394,
		38.006790, 37.704884, 16.363131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834473, 37.614010, 16.244978>,  <38.492935, 38.205215, 16.420805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834473, 37.614010, 16.244978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463120, 37.535534, 16.118727>,  <38.240307, 37.488449, 16.042976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.463120, 37.535534, 16.118727>,  <38.834473, 37.614010, 16.244978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463120, 37.535534, 16.118727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352721, -0.197684, -0.914609,
		0.117047, -0.960431, 0.252728,
		-0.928379, -0.196194, -0.315626,
		38.184605, 37.476677, 16.024038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865704, 37.017708, 15.935483>,  <38.834473, 37.614010, 16.244978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865704, 37.017708, 15.935483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525837, 37.176266, 15.796377>,  <38.321918, 37.271400, 15.712914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525837, 37.176266, 15.796377>,  <38.865704, 37.017708, 15.935483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525837, 37.176266, 15.796377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258473, -0.261764, -0.929877,
		-0.459635, -0.879970, 0.119953,
		-0.849663, 0.396399, -0.347765,
		38.270939, 37.295185, 15.692048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548382, 36.492069, 15.511052>,  <38.865704, 37.017708, 15.935483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548382, 36.492069, 15.511052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411835, 36.847988, 15.389902>,  <38.329906, 37.061539, 15.317212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.411835, 36.847988, 15.389902>,  <38.548382, 36.492069, 15.511052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411835, 36.847988, 15.389902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188659, -0.250809, -0.949475,
		-0.920800, -0.381264, -0.082249,
		-0.341372, 0.889793, -0.302874,
		38.309422, 37.114925, 15.299040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253422, 36.249821, 16.189405>,  <38.548382, 36.492069, 15.511052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253422, 36.249821, 16.189405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173119, 35.957966, 15.927925>,  <38.124935, 35.782852, 15.771036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.173119, 35.957966, 15.927925>,  <38.253422, 36.249821, 16.189405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173119, 35.957966, 15.927925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705417, -0.355358, 0.613276,
		-0.679767, 0.584252, -0.443357,
		-0.200757, -0.729637, -0.653702,
		38.112892, 35.739075, 15.731814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649086, 36.221889, 16.022432>,  <38.253422, 36.249821, 16.189405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649086, 36.221889, 16.022432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746719, 35.838436, 15.963847>,  <37.805302, 35.608364, 15.928696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.746719, 35.838436, 15.963847>,  <37.649086, 36.221889, 16.022432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746719, 35.838436, 15.963847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728660, -0.280962, 0.624592,
		-0.639903, -0.045732, -0.767093,
		0.244087, -0.958629, -0.146466,
		37.819946, 35.550846, 15.919908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091312, 35.858147, 15.889895>,  <37.649086, 36.221889, 16.022432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091312, 35.858147, 15.889895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320770, 35.568562, 16.043156>,  <37.458447, 35.394810, 16.135113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320770, 35.568562, 16.043156>,  <37.091312, 35.858147, 15.889895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320770, 35.568562, 16.043156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702516, -0.194320, 0.684624,
		-0.421190, -0.661903, -0.620068,
		0.573647, -0.723965, 0.383152,
		37.492863, 35.351372, 16.158102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636063, 35.305328, 15.998159>,  <37.091312, 35.858147, 15.889895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636063, 35.305328, 15.998159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953083, 35.232216, 16.230865>,  <37.143295, 35.188347, 16.370489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953083, 35.232216, 16.230865>,  <36.636063, 35.305328, 15.998159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953083, 35.232216, 16.230865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608323, -0.303412, 0.733406,
		0.042460, -0.935164, -0.351662,
		0.792553, -0.182783, 0.581764,
		37.190849, 35.177380, 16.405396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515022, 34.652664, 16.176556>,  <36.636063, 35.305328, 15.998159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515022, 34.652664, 16.176556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792427, 34.734856, 16.452765>,  <36.958870, 34.784168, 16.618490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792427, 34.734856, 16.452765>,  <36.515022, 34.652664, 16.176556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792427, 34.734856, 16.452765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477913, -0.586013, 0.654361,
		0.539110, -0.783817, -0.308208,
		0.693513, 0.205476, 0.690521,
		37.000481, 34.796497, 16.659922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526962, 34.090549, 16.478361>,  <36.515022, 34.652664, 16.176556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526962, 34.090549, 16.478361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.689968, 34.352661, 16.732777>,  <36.787773, 34.509926, 16.885426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.689968, 34.352661, 16.732777>,  <36.526962, 34.090549, 16.478361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689968, 34.352661, 16.732777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374305, -0.515445, 0.770852,
		0.832964, -0.552205, 0.035223,
		0.407513, 0.655275, 0.636040,
		36.812222, 34.549244, 16.923588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871147, 33.685284, 16.896412>,  <36.526962, 34.090549, 16.478361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871147, 33.685284, 16.896412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800396, 34.029861, 17.086834>,  <36.757946, 34.236607, 17.201086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800396, 34.029861, 17.086834>,  <36.871147, 33.685284, 16.896412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800396, 34.029861, 17.086834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314559, -0.507790, 0.801999,
		0.932613, -0.007891, 0.360792,
		-0.176878, 0.861445, 0.476053,
		36.747334, 34.288296, 17.229650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212006, 33.701794, 17.534258>,  <36.871147, 33.685284, 16.896412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212006, 33.701794, 17.534258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879810, 33.916611, 17.593414>,  <36.680492, 34.045502, 17.628908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.879810, 33.916611, 17.593414>,  <37.212006, 33.701794, 17.534258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879810, 33.916611, 17.593414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205029, -0.541566, 0.815273,
		0.517931, 0.646753, 0.559874,
		-0.830488, 0.537045, 0.147890,
		36.630665, 34.077724, 17.637781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940697, 33.651104, 17.858555>,  <37.212006, 33.701794, 17.534258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940697, 33.651104, 17.858555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237000, 33.436943, 18.020851>,  <38.414780, 33.308445, 18.118229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237000, 33.436943, 18.020851>,  <37.940697, 33.651104, 17.858555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237000, 33.436943, 18.020851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665071, 0.499376, -0.555252,
		0.094664, 0.681153, 0.725995,
		0.740756, -0.535401, 0.405742,
		38.459225, 33.276321, 18.142574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479889, 34.160156, 18.030970>,  <37.940697, 33.651104, 17.858555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479889, 34.160156, 18.030970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616337, 33.792416, 17.952553>,  <38.698208, 33.571774, 17.905502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.616337, 33.792416, 17.952553>,  <38.479889, 34.160156, 18.030970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616337, 33.792416, 17.952553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671491, 0.384264, -0.633594,
		0.657827, 0.084491, 0.748415,
		0.341122, -0.919349, -0.196044,
		38.718674, 33.516609, 17.893740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158588, 34.218773, 17.993587>,  <38.479889, 34.160156, 18.030970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158588, 34.218773, 17.993587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074974, 33.875751, 17.805584>,  <39.024803, 33.669941, 17.692781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074974, 33.875751, 17.805584>,  <39.158588, 34.218773, 17.993587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074974, 33.875751, 17.805584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727223, 0.185013, -0.660997,
		0.653796, -0.479977, 0.584955,
		-0.209039, -0.857550, -0.470011,
		39.012264, 33.618484, 17.664581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795109, 34.012211, 17.775517>,  <39.158588, 34.218773, 17.993587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795109, 34.012211, 17.775517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559834, 33.761223, 17.571432>,  <39.418667, 33.610630, 17.448982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.559834, 33.761223, 17.571432>,  <39.795109, 34.012211, 17.775517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559834, 33.761223, 17.571432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574156, 0.120301, -0.809860,
		0.569540, -0.769292, 0.289505,
		-0.588191, -0.627469, -0.510210,
		39.383377, 33.572983, 17.418369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234222, 33.463734, 17.492659>,  <39.795109, 34.012211, 17.775517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234222, 33.463734, 17.492659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905216, 33.477871, 17.265600>,  <39.707813, 33.486355, 17.129364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905216, 33.477871, 17.265600>,  <40.234222, 33.463734, 17.492659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905216, 33.477871, 17.265600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568547, 0.077522, -0.818990,
		0.015056, -0.996364, -0.083860,
		-0.822513, 0.035348, -0.567647,
		39.658463, 33.488476, 17.095306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481964, 33.085339, 16.920900>,  <40.234222, 33.463734, 17.492659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481964, 33.085339, 16.920900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.141861, 33.276123, 16.831846>,  <39.937798, 33.390594, 16.778414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.141861, 33.276123, 16.831846>,  <40.481964, 33.085339, 16.920900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141861, 33.276123, 16.831846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343821, 0.182994, -0.921032,
		-0.398559, -0.859662, -0.319582,
		-0.850258, 0.476965, -0.222636,
		39.886784, 33.419212, 16.765055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204475, 32.700245, 16.391867>,  <40.481964, 33.085339, 16.920900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204475, 32.700245, 16.391867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080654, 33.079559, 16.363802>,  <40.006359, 33.307148, 16.346962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080654, 33.079559, 16.363802>,  <40.204475, 32.700245, 16.391867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080654, 33.079559, 16.363802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401891, 0.063605, -0.913476,
		-0.861777, -0.310970, -0.400798,
		-0.309556, 0.948289, -0.070163,
		39.987785, 33.364044, 16.342752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816757, 32.725803, 15.753753>,  <40.204475, 32.700245, 16.391867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816757, 32.725803, 15.753753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.922588, 33.099113, 15.850913>,  <39.986088, 33.323097, 15.909209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.922588, 33.099113, 15.850913>,  <39.816757, 32.725803, 15.753753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922588, 33.099113, 15.850913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192042, 0.195842, -0.961647,
		-0.945049, 0.301078, -0.127412,
		0.264578, 0.933273, 0.242900,
		40.001961, 33.379097, 15.923783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704781, 33.131599, 15.113081>,  <39.816757, 32.725803, 15.753753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704781, 33.131599, 15.113081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967293, 33.338726, 15.332595>,  <40.124802, 33.463001, 15.464303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967293, 33.338726, 15.332595>,  <39.704781, 33.131599, 15.113081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967293, 33.338726, 15.332595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400192, 0.377709, -0.834974,
		-0.639643, 0.767596, 0.040657,
		0.656279, 0.517815, 0.548785,
		40.164177, 33.494072, 15.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.545357, 33.446411, 30.045414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892239, 33.625175, 30.133255>,  <34.100368, 33.732433, 30.185959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892239, 33.625175, 30.133255>,  <33.545357, 33.446411, 30.045414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892239, 33.625175, 30.133255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226891, 0.037928, -0.973181,
		-0.443259, 0.893772, -0.068510,
		0.867204, 0.446915, 0.219600,
		34.152401, 33.759251, 30.199135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564655, 33.946346, 29.589840>,  <33.545357, 33.446411, 30.045414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564655, 33.946346, 29.589840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940857, 33.889687, 29.713379>,  <34.166576, 33.855690, 29.787502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940857, 33.889687, 29.713379>,  <33.564655, 33.946346, 29.589840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940857, 33.889687, 29.713379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319659, 0.060702, -0.945586,
		0.115195, 0.988054, 0.102371,
		0.940504, -0.141650, 0.308848,
		34.223007, 33.847191, 29.806034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018524, 34.348457, 29.062792>,  <33.564655, 33.946346, 29.589840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018524, 34.348457, 29.062792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286438, 34.137394, 29.271772>,  <34.447186, 34.010757, 29.397161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286438, 34.137394, 29.271772>,  <34.018524, 34.348457, 29.062792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286438, 34.137394, 29.271772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520702, -0.167857, -0.837074,
		0.529388, 0.832706, 0.162325,
		0.669789, -0.527660, 0.522454,
		34.487373, 33.979095, 29.428509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685005, 34.609539, 28.912521>,  <34.018524, 34.348457, 29.062792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685005, 34.609539, 28.912521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732502, 34.231113, 29.033091>,  <34.761002, 34.004059, 29.105433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732502, 34.231113, 29.033091>,  <34.685005, 34.609539, 28.912521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732502, 34.231113, 29.033091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521389, -0.198938, -0.829805,
		0.845017, 0.255691, 0.469648,
		0.118743, -0.946068, 0.301421,
		34.768124, 33.947292, 29.123516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353001, 34.426811, 28.757492>,  <34.685005, 34.609539, 28.912521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353001, 34.426811, 28.757492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166252, 34.075268, 28.796761>,  <35.054203, 33.864342, 28.820322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166252, 34.075268, 28.796761>,  <35.353001, 34.426811, 28.757492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166252, 34.075268, 28.796761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429977, -0.322603, -0.843236,
		0.772756, -0.351471, 0.528504,
		-0.466870, -0.878860, 0.098169,
		35.026192, 33.811611, 28.826212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785614, 33.952755, 28.610117>,  <35.353001, 34.426811, 28.757492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785614, 33.952755, 28.610117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448612, 33.746902, 28.546444>,  <35.246410, 33.623390, 28.508240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448612, 33.746902, 28.546444>,  <35.785614, 33.952755, 28.610117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448612, 33.746902, 28.546444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395757, -0.390846, -0.831033,
		0.365458, -0.763148, 0.532959,
		-0.842506, -0.514630, -0.159183,
		35.195862, 33.592514, 28.498690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982159, 33.379326, 28.381102>,  <35.785614, 33.952755, 28.610117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982159, 33.379326, 28.381102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604725, 33.399082, 28.250130>,  <35.378265, 33.410938, 28.171547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604725, 33.399082, 28.250130>,  <35.982159, 33.379326, 28.381102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604725, 33.399082, 28.250130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276411, -0.426997, -0.860971,
		-0.182337, -0.902903, 0.389255,
		-0.943584, 0.049393, -0.327430,
		35.321651, 33.413898, 28.151901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991726, 32.785088, 27.840624>,  <35.982159, 33.379326, 28.381102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991726, 32.785088, 27.840624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632660, 32.955738, 27.796473>,  <35.417221, 33.058128, 27.769981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632660, 32.955738, 27.796473>,  <35.991726, 32.785088, 27.840624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632660, 32.955738, 27.796473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188841, -0.598716, -0.778382,
		-0.398165, -0.677883, 0.618013,
		-0.897666, 0.426630, -0.110375,
		35.363361, 33.083729, 27.763359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535938, 32.268948, 27.678337>,  <35.991726, 32.785088, 27.840624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535938, 32.268948, 27.678337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371780, 32.605003, 27.536495>,  <35.273285, 32.806637, 27.451389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371780, 32.605003, 27.536495>,  <35.535938, 32.268948, 27.678337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371780, 32.605003, 27.536495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128806, -0.438366, -0.889519,
		-0.902767, -0.319376, 0.288116,
		-0.410392, 0.840140, -0.354605,
		35.248661, 32.857044, 27.430115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865444, 32.098999, 27.308779>,  <35.535938, 32.268948, 27.678337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865444, 32.098999, 27.308779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985077, 32.452461, 27.164724>,  <35.056854, 32.664539, 27.078291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985077, 32.452461, 27.164724>,  <34.865444, 32.098999, 27.308779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985077, 32.452461, 27.164724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127900, -0.336883, -0.932819,
		-0.945618, 0.325048, 0.012266,
		0.299079, 0.883659, -0.360137,
		35.074799, 32.717560, 27.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366531, 32.229389, 26.766832>,  <34.865444, 32.098999, 27.308779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366531, 32.229389, 26.766832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683147, 32.462463, 26.693144>,  <34.873119, 32.602306, 26.648932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.683147, 32.462463, 26.693144>,  <34.366531, 32.229389, 26.766832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683147, 32.462463, 26.693144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074588, -0.207083, -0.975476,
		-0.606545, 0.785871, -0.120453,
		0.791542, 0.582686, -0.184222,
		34.920609, 32.637268, 26.637877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216106, 32.718872, 26.226477>,  <34.366531, 32.229389, 26.766832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216106, 32.718872, 26.226477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615269, 32.693008, 26.225056>,  <34.854767, 32.677490, 26.224203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615269, 32.693008, 26.225056>,  <34.216106, 32.718872, 26.226477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615269, 32.693008, 26.225056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005429, -0.028895, -0.999568,
		0.064524, 0.997489, -0.029185,
		0.997901, -0.064655, -0.003551,
		34.914639, 32.673611, 26.223989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046951, 33.367126, 25.898405>,  <34.216106, 32.718872, 26.226477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046951, 33.367126, 25.898405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666691, 33.351570, 25.775284>,  <33.438534, 33.342236, 25.701410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666691, 33.351570, 25.775284>,  <34.046951, 33.367126, 25.898405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666691, 33.351570, 25.775284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280226, 0.533413, 0.798087,
		0.133149, 0.844960, -0.517990,
		-0.950655, -0.038890, -0.307803,
		33.381493, 33.339905, 25.682943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935722, 33.975246, 26.064552>,  <34.046951, 33.367126, 25.898405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935722, 33.975246, 26.064552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573700, 33.813660, 26.011354>,  <33.356487, 33.716709, 25.979437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.573700, 33.813660, 26.011354>,  <33.935722, 33.975246, 26.064552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573700, 33.813660, 26.011354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345381, 0.515663, 0.784094,
		-0.248167, 0.755582, -0.606225,
		-0.905055, -0.403965, -0.132993,
		33.302185, 33.692471, 25.971457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476654, 34.514385, 26.012659>,  <33.935722, 33.975246, 26.064552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476654, 34.514385, 26.012659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201336, 34.228836, 26.064245>,  <33.036144, 34.057507, 26.095196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201336, 34.228836, 26.064245>,  <33.476654, 34.514385, 26.012659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201336, 34.228836, 26.064245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475728, 0.578393, 0.662680,
		-0.547664, 0.394766, -0.737715,
		-0.688293, -0.713877, 0.128964,
		32.994846, 34.014671, 26.102934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754910, 34.855530, 25.954182>,  <33.476654, 34.514385, 26.012659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754910, 34.855530, 25.954182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718990, 34.530518, 26.184568>,  <32.697437, 34.335510, 26.322800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718990, 34.530518, 26.184568>,  <32.754910, 34.855530, 25.954182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718990, 34.530518, 26.184568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450253, 0.548952, 0.704218,
		-0.888373, -0.196089, -0.415140,
		-0.089803, -0.812527, 0.575964,
		32.692051, 34.286758, 26.357357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998421, 34.815926, 26.259436>,  <32.754910, 34.855530, 25.954182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998421, 34.815926, 26.259436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248608, 34.613300, 26.496817>,  <32.398720, 34.491726, 26.639244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.248608, 34.613300, 26.496817>,  <31.998421, 34.815926, 26.259436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248608, 34.613300, 26.496817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539825, 0.268223, 0.797901,
		-0.563366, -0.819420, -0.105691,
		0.625467, -0.506564, 0.593451,
		32.436249, 34.461330, 26.674852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637308, 34.678650, 26.878872>,  <31.998421, 34.815926, 26.259436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637308, 34.678650, 26.878872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010754, 34.643337, 27.017767>,  <32.234821, 34.622150, 27.101103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.010754, 34.643337, 27.017767>,  <31.637308, 34.678650, 26.878872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010754, 34.643337, 27.017767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309558, 0.289208, 0.905833,
		-0.180390, -0.953187, 0.242681,
		0.933613, -0.088279, 0.347237,
		32.290836, 34.616852, 27.121939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543810, 34.352570, 27.516867>,  <31.637308, 34.678650, 26.878872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543810, 34.352570, 27.516867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915539, 34.498222, 27.541414>,  <32.138577, 34.585613, 27.556143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915539, 34.498222, 27.541414>,  <31.543810, 34.352570, 27.516867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915539, 34.498222, 27.541414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178051, 0.296270, 0.938361,
		0.323515, -0.882964, 0.340165,
		0.929320, 0.364141, 0.061365,
		32.194336, 34.607464, 27.559824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824305, 34.113419, 28.162262>,  <31.543810, 34.352570, 27.516867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824305, 34.113419, 28.162262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040401, 34.439552, 28.078959>,  <32.170059, 34.635231, 28.028976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.040401, 34.439552, 28.078959>,  <31.824305, 34.113419, 28.162262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040401, 34.439552, 28.078959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016283, 0.257567, 0.966123,
		0.841351, -0.518550, 0.152426,
		0.540243, 0.815331, -0.208261,
		32.202473, 34.684151, 28.016479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201958, 34.135361, 28.721411>,  <31.824305, 34.113419, 28.162262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201958, 34.135361, 28.721411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227745, 34.503899, 28.568064>,  <32.243217, 34.725021, 28.476055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227745, 34.503899, 28.568064>,  <32.201958, 34.135361, 28.721411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227745, 34.503899, 28.568064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064745, 0.387220, 0.919711,
		0.995817, -0.034472, 0.084616,
		0.064470, 0.921343, -0.383368,
		32.247086, 34.780300, 28.453053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704666, 34.497421, 29.153954>,  <32.201958, 34.135361, 28.721411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704666, 34.497421, 29.153954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525890, 34.806801, 28.974163>,  <32.418625, 34.992428, 28.866289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525890, 34.806801, 28.974163>,  <32.704666, 34.497421, 29.153954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525890, 34.806801, 28.974163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072961, 0.469262, 0.880040,
		0.891584, 0.426118, -0.153300,
		-0.446938, 0.773445, -0.449477,
		32.391808, 35.038834, 28.839319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003864, 35.112446, 29.490629>,  <32.704666, 34.497421, 29.153954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003864, 35.112446, 29.490629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697239, 35.286079, 29.301334>,  <32.513264, 35.390259, 29.187757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697239, 35.286079, 29.301334>,  <33.003864, 35.112446, 29.490629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697239, 35.286079, 29.301334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155136, 0.589926, 0.792414,
		0.623147, 0.680852, -0.384874,
		-0.766564, 0.434083, -0.473236,
		32.467270, 35.416306, 29.159363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090942, 35.889271, 29.546535>,  <33.003864, 35.112446, 29.490629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090942, 35.889271, 29.546535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703320, 35.869045, 29.449896>,  <32.470745, 35.856911, 29.391912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703320, 35.869045, 29.449896>,  <33.090942, 35.889271, 29.546535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703320, 35.869045, 29.449896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211115, 0.676931, 0.705121,
		0.127896, 0.734308, -0.666659,
		-0.969058, -0.050559, -0.241600,
		32.412601, 35.853878, 29.377417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742695, 36.592445, 29.359615>,  <33.090942, 35.889271, 29.546535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742695, 36.592445, 29.359615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477169, 36.323254, 29.490118>,  <32.317852, 36.161739, 29.568420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477169, 36.323254, 29.490118>,  <32.742695, 36.592445, 29.359615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477169, 36.323254, 29.490118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355239, 0.667606, 0.654300,
		-0.658142, 0.318436, -0.682237,
		-0.663818, -0.672979, 0.326259,
		32.278023, 36.121361, 29.587996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079540, 36.963123, 29.249231>,  <32.742695, 36.592445, 29.359615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079540, 36.963123, 29.249231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023735, 36.653461, 29.496204>,  <31.990252, 36.467663, 29.644388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023735, 36.653461, 29.496204>,  <32.079540, 36.963123, 29.249231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023735, 36.653461, 29.496204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595717, 0.563690, 0.572166,
		-0.790985, -0.287990, -0.539819,
		-0.139512, -0.774154, 0.617431,
		31.981882, 36.421215, 29.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365446, 36.655476, 29.506401>,  <32.079540, 36.963123, 29.249231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365446, 36.655476, 29.506401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094494, 36.521435, 29.768351>,  <30.931923, 36.441010, 29.925520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.094494, 36.521435, 29.768351>,  <31.365446, 36.655476, 29.506401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094494, 36.521435, 29.768351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372889, -0.610965, -0.698338,
		0.634121, -0.717236, 0.288900,
		-0.677381, -0.335103, 0.654875,
		30.891279, 36.420902, 29.964813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312311, 37.185734, 28.891273>,  <31.365446, 36.655476, 29.506401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312311, 37.185734, 28.891273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543226, 37.438343, 29.098318>,  <31.681776, 37.589909, 29.222546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543226, 37.438343, 29.098318>,  <31.312311, 37.185734, 28.891273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543226, 37.438343, 29.098318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380727, 0.352604, -0.854820,
		-0.722347, 0.690547, -0.036882,
		0.577289, 0.631519, 0.517612,
		31.716413, 37.627800, 29.253601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216900, 37.853031, 28.623306>,  <31.312311, 37.185734, 28.891273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216900, 37.853031, 28.623306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572666, 37.873722, 28.804974>,  <31.786125, 37.886135, 28.913973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.572666, 37.873722, 28.804974>,  <31.216900, 37.853031, 28.623306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572666, 37.873722, 28.804974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393844, 0.417589, -0.818844,
		-0.232011, 0.907162, 0.351037,
		0.889414, 0.051727, 0.454166,
		31.839491, 37.889240, 28.941223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487909, 38.589626, 28.632875>,  <31.216900, 37.853031, 28.623306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487909, 38.589626, 28.632875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791355, 38.330349, 28.659256>,  <31.973423, 38.174782, 28.675083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.791355, 38.330349, 28.659256>,  <31.487909, 38.589626, 28.632875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791355, 38.330349, 28.659256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399715, 0.383077, -0.832754,
		0.514523, 0.658100, 0.549701,
		0.758613, -0.648195, 0.065950,
		32.018940, 38.135891, 28.679041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057186, 38.947338, 28.243164>,  <31.487909, 38.589626, 28.632875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057186, 38.947338, 28.243164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211487, 38.578377, 28.235550>,  <32.304070, 38.356998, 28.230982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.211487, 38.578377, 28.235550>,  <32.057186, 38.947338, 28.243164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211487, 38.578377, 28.235550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570109, 0.254543, -0.781143,
		0.725375, 0.290479, 0.624062,
		0.385756, -0.922405, -0.019034,
		32.327213, 38.301655, 28.229839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695847, 39.053730, 28.014669>,  <32.057186, 38.947338, 28.243164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695847, 39.053730, 28.014669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675751, 38.657028, 27.967516>,  <32.663692, 38.419006, 27.939224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675751, 38.657028, 27.967516>,  <32.695847, 39.053730, 28.014669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675751, 38.657028, 27.967516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721096, 0.045647, -0.691330,
		0.691011, -0.119733, 0.712859,
		-0.050235, -0.991756, -0.117882,
		32.660679, 38.359501, 27.932152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338192, 38.672245, 27.746864>,  <32.695847, 39.053730, 28.014669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338192, 38.672245, 27.746864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084976, 38.370926, 27.675528>,  <32.933048, 38.190136, 27.632727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.084976, 38.370926, 27.675528>,  <33.338192, 38.672245, 27.746864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084976, 38.370926, 27.675528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589256, -0.319498, -0.742090,
		0.502035, -0.574860, 0.646140,
		-0.633038, -0.753297, -0.178341,
		32.895065, 38.144936, 27.622025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757164, 38.102882, 27.654020>,  <33.338192, 38.672245, 27.746864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757164, 38.102882, 27.654020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413456, 38.042294, 27.458590>,  <33.207230, 38.005939, 27.341331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413456, 38.042294, 27.458590>,  <33.757164, 38.102882, 27.654020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413456, 38.042294, 27.458590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511503, -0.246876, -0.823054,
		0.004052, -0.957135, 0.289612,
		-0.859272, -0.151473, -0.488577,
		33.155674, 37.996853, 27.312016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799679, 37.443096, 27.335878>,  <33.757164, 38.102882, 27.654020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799679, 37.443096, 27.335878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503391, 37.629265, 27.142086>,  <33.325619, 37.740967, 27.025810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503391, 37.629265, 27.142086>,  <33.799679, 37.443096, 27.335878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503391, 37.629265, 27.142086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458140, -0.177511, -0.870975,
		-0.491374, -0.867104, -0.081744,
		-0.740715, 0.465425, -0.484480,
		33.281178, 37.768890, 26.996742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510895, 36.919609, 26.852430>,  <33.799679, 37.443096, 27.335878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510895, 36.919609, 26.852430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444229, 37.297535, 26.739611>,  <33.404228, 37.524288, 26.671919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.444229, 37.297535, 26.739611>,  <33.510895, 36.919609, 26.852430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444229, 37.297535, 26.739611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256588, -0.234637, -0.937607,
		-0.952042, -0.228640, -0.203321,
		-0.166668, 0.944812, -0.282051,
		33.394230, 37.580978, 26.654995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343010, 36.833637, 26.181774>,  <33.510895, 36.919609, 26.852430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343010, 36.833637, 26.181774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380707, 37.231567, 26.166601>,  <33.403324, 37.470325, 26.157497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380707, 37.231567, 26.166601>,  <33.343010, 36.833637, 26.181774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380707, 37.231567, 26.166601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172666, -0.053855, -0.983507,
		-0.980462, 0.086134, -0.176848,
		0.094237, 0.994827, -0.037931,
		33.408978, 37.530014, 26.155222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067284, 37.028645, 25.495298>,  <33.343010, 36.833637, 26.181774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067284, 37.028645, 25.495298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328442, 37.302368, 25.625189>,  <33.485138, 37.466602, 25.703123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.328442, 37.302368, 25.625189>,  <33.067284, 37.028645, 25.495298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328442, 37.302368, 25.625189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377502, 0.077697, -0.922743,
		-0.656675, 0.725037, -0.207601,
		0.652894, 0.684313, 0.324725,
		33.524311, 37.507664, 25.722607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085644, 37.544518, 24.919838>,  <33.067284, 37.028645, 25.495298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085644, 37.544518, 24.919838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396297, 37.606472, 25.164083>,  <33.582691, 37.643642, 25.310631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396297, 37.606472, 25.164083>,  <33.085644, 37.544518, 24.919838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396297, 37.606472, 25.164083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534329, 0.351441, -0.768753,
		-0.333663, 0.923309, 0.190182,
		0.776635, 0.154884, 0.610614,
		33.629288, 37.652939, 25.347267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229069, 38.276905, 24.849133>,  <33.085644, 37.544518, 24.919838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229069, 38.276905, 24.849133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560822, 38.092316, 24.975094>,  <33.759872, 37.981564, 25.050671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560822, 38.092316, 24.975094>,  <33.229069, 38.276905, 24.849133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560822, 38.092316, 24.975094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433130, 0.175108, -0.884158,
		0.352871, 0.869703, 0.345108,
		0.829386, -0.461470, 0.314904,
		33.809639, 37.953876, 25.069565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802002, 38.740646, 24.604111>,  <33.229069, 38.276905, 24.849133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802002, 38.740646, 24.604111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954956, 38.381477, 24.691309>,  <34.046730, 38.165977, 24.743628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954956, 38.381477, 24.691309>,  <33.802002, 38.740646, 24.604111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954956, 38.381477, 24.691309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568673, 0.042743, -0.821453,
		0.728282, 0.438078, 0.526967,
		0.382384, -0.897920, 0.217994,
		34.069672, 38.112103, 24.756706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485867, 38.823635, 24.586958>,  <33.802002, 38.740646, 24.604111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485867, 38.823635, 24.586958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402424, 38.435787, 24.535841>,  <34.352360, 38.203079, 24.505171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402424, 38.435787, 24.535841>,  <34.485867, 38.823635, 24.586958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402424, 38.435787, 24.535841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540563, -0.005419, -0.841286,
		0.815031, -0.244575, 0.525269,
		-0.208604, -0.969615, -0.127792,
		34.339844, 38.144901, 24.497503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159000, 38.475170, 24.417894>,  <34.485867, 38.823635, 24.586958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159000, 38.475170, 24.417894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847130, 38.258610, 24.292038>,  <34.660007, 38.128674, 24.216524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.847130, 38.258610, 24.292038>,  <35.159000, 38.475170, 24.417894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847130, 38.258610, 24.292038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438452, -0.113264, -0.891589,
		0.447066, -0.833103, 0.325686,
		-0.779674, -0.541396, -0.314639,
		34.613228, 38.096191, 24.197647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531956, 37.979271, 24.095114>,  <35.159000, 38.475170, 24.417894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531956, 37.979271, 24.095114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150280, 37.955742, 23.977772>,  <34.921272, 37.941624, 23.907366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150280, 37.955742, 23.977772>,  <35.531956, 37.979271, 24.095114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150280, 37.955742, 23.977772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298349, -0.113420, -0.947694,
		0.022476, -0.991804, 0.125775,
		-0.954192, -0.058825, -0.293355,
		34.864021, 37.938095, 23.889765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618248, 37.380657, 23.780081>,  <35.531956, 37.979271, 24.095114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618248, 37.380657, 23.780081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277905, 37.535236, 23.637701>,  <35.073700, 37.627983, 23.552273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277905, 37.535236, 23.637701>,  <35.618248, 37.380657, 23.780081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277905, 37.535236, 23.637701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257433, -0.283940, -0.923638,
		-0.458007, -0.877516, 0.142107,
		-0.850857, 0.386450, -0.355948,
		35.022648, 37.651173, 23.530916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307228, 36.913616, 23.203852>,  <35.618248, 37.380657, 23.780081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307228, 36.913616, 23.203852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139164, 37.269657, 23.133215>,  <35.038326, 37.483280, 23.090834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139164, 37.269657, 23.133215>,  <35.307228, 36.913616, 23.203852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139164, 37.269657, 23.133215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034981, -0.210345, -0.977001,
		-0.906774, -0.404323, 0.119516,
		-0.420164, 0.890100, -0.176592,
		35.013115, 37.536686, 23.080238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849400, 36.739479, 22.690485>,  <35.307228, 36.913616, 23.203852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849400, 36.739479, 22.690485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889591, 37.136883, 22.669159>,  <34.913708, 37.375324, 22.656364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889591, 37.136883, 22.669159>,  <34.849400, 36.739479, 22.690485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889591, 37.136883, 22.669159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318907, -0.082920, -0.944152,
		-0.942444, 0.077869, -0.325169,
		0.100483, 0.993509, -0.053314,
		34.919735, 37.434937, 22.653164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480473, 36.970230, 22.179310>,  <34.849400, 36.739479, 22.690485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480473, 36.970230, 22.179310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766445, 37.246128, 22.225128>,  <34.938030, 37.411667, 22.252619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766445, 37.246128, 22.225128>,  <34.480473, 36.970230, 22.179310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766445, 37.246128, 22.225128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183114, -0.026596, -0.982732,
		-0.674788, 0.723564, -0.145317,
		0.714934, 0.689745, 0.114548,
		34.980927, 37.453053, 22.259493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567062, 37.313381, 21.561211>,  <34.480473, 36.970230, 22.179310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567062, 37.313381, 21.561211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919323, 37.437675, 21.704262>,  <35.130680, 37.512253, 21.790092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919323, 37.437675, 21.704262>,  <34.567062, 37.313381, 21.561211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919323, 37.437675, 21.704262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290140, 0.243016, -0.925614,
		-0.374531, 0.918905, 0.123855,
		0.880650, 0.310736, 0.357628,
		35.183517, 37.530895, 21.811550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721325, 37.998657, 21.258183>,  <34.567062, 37.313381, 21.561211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721325, 37.998657, 21.258183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058178, 37.813770, 21.369303>,  <35.260288, 37.702839, 21.435976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058178, 37.813770, 21.369303>,  <34.721325, 37.998657, 21.258183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058178, 37.813770, 21.369303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389604, 0.165292, -0.906028,
		0.372862, 0.871226, 0.319278,
		0.842130, -0.462215, 0.277802,
		35.310818, 37.675106, 21.452642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208321, 38.268227, 20.925274>,  <34.721325, 37.998657, 21.258183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208321, 38.268227, 20.925274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416702, 37.947708, 21.042942>,  <35.541729, 37.755398, 21.113543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416702, 37.947708, 21.042942>,  <35.208321, 38.268227, 20.925274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416702, 37.947708, 21.042942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591049, 0.089979, -0.801601,
		0.615849, 0.591466, 0.520479,
		0.520952, -0.801294, 0.294172,
		35.572987, 37.707321, 21.131193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926723, 38.565369, 20.868004>,  <35.208321, 38.268227, 20.925274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926723, 38.565369, 20.868004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949795, 38.166164, 20.878115>,  <35.963638, 37.926640, 20.884180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949795, 38.166164, 20.878115>,  <35.926723, 38.565369, 20.868004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949795, 38.166164, 20.878115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617610, 0.015781, -0.786326,
		0.784367, 0.060967, 0.617294,
		0.057681, -0.998015, 0.025276,
		35.967098, 37.866760, 20.885698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583130, 38.482056, 20.686333>,  <35.926723, 38.565369, 20.868004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583130, 38.482056, 20.686333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379425, 38.144230, 20.620171>,  <36.257202, 37.941532, 20.580473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379425, 38.144230, 20.620171>,  <36.583130, 38.482056, 20.686333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379425, 38.144230, 20.620171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523821, -0.151694, -0.838213,
		0.682835, -0.513514, 0.519654,
		-0.509262, -0.844567, -0.165408,
		36.226646, 37.890862, 20.570549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068348, 37.908867, 20.610197>,  <36.583130, 38.482056, 20.686333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068348, 37.908867, 20.610197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723011, 37.826725, 20.425816>,  <36.515808, 37.777439, 20.315187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723011, 37.826725, 20.425816>,  <37.068348, 37.908867, 20.610197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723011, 37.826725, 20.425816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503353, -0.285604, -0.815516,
		0.035821, -0.936087, 0.349939,
		-0.863338, -0.205356, -0.460952,
		36.464008, 37.765118, 20.287529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669456, 37.730373, 20.948980>,  <37.068348, 37.908867, 20.610197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669456, 37.730373, 20.948980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009861, 37.938423, 20.977959>,  <38.214104, 38.063251, 20.995346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009861, 37.938423, 20.977959>,  <37.669456, 37.730373, 20.948980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009861, 37.938423, 20.977959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218638, 0.225492, 0.949395,
		0.477466, -0.823787, 0.305615,
		0.851013, 0.520123, 0.072446,
		38.265163, 38.094460, 20.999693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000679, 37.531853, 21.544254>,  <37.669456, 37.730373, 20.948980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000679, 37.531853, 21.544254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183147, 37.880211, 21.471102>,  <38.292629, 38.089226, 21.427210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183147, 37.880211, 21.471102>,  <38.000679, 37.531853, 21.544254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183147, 37.880211, 21.471102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009654, 0.200653, 0.979615,
		0.889839, -0.448639, 0.083124,
		0.456172, 0.870897, -0.182880,
		38.320000, 38.141479, 21.416237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736675, 37.571590, 21.897564>,  <38.000679, 37.531853, 21.544254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736675, 37.571590, 21.897564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583855, 37.939869, 21.865677>,  <38.492161, 38.160835, 21.846544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583855, 37.939869, 21.865677>,  <38.736675, 37.571590, 21.897564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583855, 37.939869, 21.865677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126930, 0.137722, 0.982304,
		0.915383, 0.365171, -0.169481,
		-0.382050, 0.920697, -0.079717,
		38.469238, 38.216080, 21.841763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162426, 38.021656, 22.286940>,  <38.736675, 37.571590, 21.897564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162426, 38.021656, 22.286940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826973, 38.228806, 22.219421>,  <38.625702, 38.353096, 22.178911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826973, 38.228806, 22.219421>,  <39.162426, 38.021656, 22.286940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826973, 38.228806, 22.219421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013278, 0.290360, 0.956825,
		0.544529, 0.804671, -0.236630,
		-0.838637, 0.517877, -0.168794,
		38.575382, 38.384171, 22.168783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189674, 38.611286, 22.838467>,  <39.162426, 38.021656, 22.286940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189674, 38.611286, 22.838467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815323, 38.592087, 22.698854>,  <38.590710, 38.580566, 22.615088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.815323, 38.592087, 22.698854>,  <39.189674, 38.611286, 22.838467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815323, 38.592087, 22.698854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352300, 0.118713, 0.928328,
		-0.003120, 0.991768, -0.128010,
		-0.935882, -0.047994, -0.349029,
		38.534557, 38.577690, 22.594145>
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
