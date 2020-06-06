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
	<24.213284, 35.064556, 34.653015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309006, 34.964092, 35.028175>,  <24.366440, 34.903816, 35.253269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309006, 34.964092, 35.028175>,  <24.213284, 35.064556, 34.653015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309006, 34.964092, 35.028175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807423, 0.587971, -0.048566,
		-0.539259, 0.768902, 0.343495,
		0.239307, -0.251156, 0.937898,
		24.380798, 34.888744, 35.309544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.245476, 35.679417, 35.128181>,  <24.213284, 35.064556, 34.653015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.245476, 35.679417, 35.128181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486303, 35.384357, 35.250423>,  <24.630798, 35.207321, 35.323769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486303, 35.384357, 35.250423>,  <24.245476, 35.679417, 35.128181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486303, 35.384357, 35.250423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784637, 0.617476, -0.055386,
		-0.147851, 0.273138, 0.950545,
		0.602066, -0.737644, 0.305609,
		24.666924, 35.163063, 35.342106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916197, 36.033886, 35.217346>,  <24.245476, 35.679417, 35.128181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916197, 36.033886, 35.217346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973499, 35.645588, 35.294422>,  <25.007881, 35.412609, 35.340668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973499, 35.645588, 35.294422>,  <24.916197, 36.033886, 35.217346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973499, 35.645588, 35.294422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966345, 0.179238, 0.184528,
		-0.213667, 0.159772, 0.963753,
		0.143258, -0.970746, 0.192692,
		25.016478, 35.354362, 35.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342165, 36.036987, 35.780937>,  <24.916197, 36.033886, 35.217346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342165, 36.036987, 35.780937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385651, 35.663223, 35.645260>,  <25.411741, 35.438965, 35.563854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385651, 35.663223, 35.645260>,  <25.342165, 36.036987, 35.780937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385651, 35.663223, 35.645260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992778, 0.119470, -0.010926,
		0.050733, -0.335557, 0.940653,
		0.108713, -0.934413, -0.339195,
		25.418264, 35.382900, 35.543503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928432, 35.671989, 36.106926>,  <25.342165, 36.036987, 35.780937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928432, 35.671989, 36.106926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882746, 35.467754, 35.766045>,  <25.855333, 35.345215, 35.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882746, 35.467754, 35.766045>,  <25.928432, 35.671989, 36.106926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882746, 35.467754, 35.766045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993455, -0.059967, -0.097219,
		-0.001465, -0.857734, 0.514091,
		-0.114217, -0.510584, -0.852208,
		25.848480, 35.314579, 35.510384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209702, 34.999237, 36.194939>,  <25.928432, 35.671989, 36.106926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209702, 34.999237, 36.194939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237204, 35.119415, 35.814411>,  <26.253704, 35.191525, 35.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237204, 35.119415, 35.814411>,  <26.209702, 34.999237, 36.194939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237204, 35.119415, 35.814411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996754, -0.060718, 0.052861,
		-0.041880, -0.951864, -0.303647,
		0.068754, 0.300447, -0.951317,
		26.257830, 35.209549, 35.529015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439663, 34.475750, 35.732716>,  <26.209702, 34.999237, 36.194939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439663, 34.475750, 35.732716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549074, 34.832821, 35.589432>,  <26.614721, 35.047062, 35.503460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549074, 34.832821, 35.589432>,  <26.439663, 34.475750, 35.732716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549074, 34.832821, 35.589432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940829, -0.325758, -0.093395,
		-0.200061, -0.311467, -0.928958,
		0.273526, 0.892676, -0.358209,
		26.631132, 35.100624, 35.481968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791527, 34.495335, 35.017136>,  <26.439663, 34.475750, 35.732716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791527, 34.495335, 35.017136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890371, 34.827217, 35.217342>,  <26.949678, 35.026348, 35.337467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890371, 34.827217, 35.217342>,  <26.791527, 34.495335, 35.017136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890371, 34.827217, 35.217342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944229, -0.090171, -0.316703,
		-0.217640, 0.550863, -0.805719,
		0.247113, 0.829710, 0.500516,
		26.964504, 35.076130, 35.367496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049681, 34.955875, 34.547447>,  <26.791527, 34.495335, 35.017136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049681, 34.955875, 34.547447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174911, 35.112862, 34.893383>,  <27.250050, 35.207054, 35.100945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174911, 35.112862, 34.893383>,  <27.049681, 34.955875, 34.547447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174911, 35.112862, 34.893383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913025, 0.126332, -0.387847,
		-0.261475, 0.911048, -0.318783,
		0.313075, 0.392469, 0.864842,
		27.268833, 35.230602, 35.152836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478136, 35.585346, 34.397911>,  <27.049681, 34.955875, 34.547447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478136, 35.585346, 34.397911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573986, 35.460735, 34.765720>,  <27.631496, 35.385967, 34.986408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573986, 35.460735, 34.765720>,  <27.478136, 35.585346, 34.397911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573986, 35.460735, 34.765720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960764, 0.212359, -0.178427,
		-0.139685, 0.926204, 0.350192,
		0.239626, -0.311529, 0.919527,
		27.645874, 35.367275, 35.041580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907114, 36.108654, 34.632320>,  <27.478136, 35.585346, 34.397911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907114, 36.108654, 34.632320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998117, 35.771748, 34.827805>,  <28.052719, 35.569603, 34.945095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998117, 35.771748, 34.827805>,  <27.907114, 36.108654, 34.632320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998117, 35.771748, 34.827805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925252, 0.030529, -0.378121,
		0.303557, 0.538204, 0.786250,
		0.227510, -0.842262, 0.488707,
		28.066370, 35.519070, 34.974415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466091, 35.553238, 34.427303>,  <27.907114, 36.108654, 34.632320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466091, 35.553238, 34.427303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510265, 35.928600, 34.558273>,  <28.536770, 36.153816, 34.636856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510265, 35.928600, 34.558273>,  <28.466091, 35.553238, 34.427303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510265, 35.928600, 34.558273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269318, -0.345367, 0.898993,
		0.956698, -0.011102, -0.290870,
		0.110437, 0.938402, 0.327423,
		28.543396, 36.210121, 34.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169195, 35.529640, 34.171337>,  <28.466091, 35.553238, 34.427303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169195, 35.529640, 34.171337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241875, 35.518425, 34.564518>,  <29.285482, 35.511696, 34.800426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241875, 35.518425, 34.564518>,  <29.169195, 35.529640, 34.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241875, 35.518425, 34.564518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825093, -0.548165, 0.136882,
		0.534983, -0.835900, -0.122735,
		0.181698, -0.028039, 0.982955,
		29.296385, 35.510014, 34.859406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896265, 34.846985, 34.530907>,  <29.169195, 35.529640, 34.171337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896265, 34.846985, 34.530907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917606, 35.138020, 34.804482>,  <28.930412, 35.312641, 34.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917606, 35.138020, 34.804482>,  <28.896265, 34.846985, 34.530907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917606, 35.138020, 34.804482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852597, -0.323359, 0.410508,
		0.519837, -0.605027, 0.603085,
		0.053355, 0.727586, 0.683938,
		28.933613, 35.356297, 35.009663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800959, 34.533352, 35.222736>,  <28.896265, 34.846985, 34.530907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800959, 34.533352, 35.222736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685120, 34.916206, 35.224922>,  <28.615616, 35.145920, 35.226234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685120, 34.916206, 35.224922>,  <28.800959, 34.533352, 35.222736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685120, 34.916206, 35.224922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932800, -0.283507, 0.222503,
		0.214515, 0.059336, 0.974917,
		-0.289598, 0.957133, 0.005468,
		28.598240, 35.203346, 35.226562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402168, 34.679611, 35.827126>,  <28.800959, 34.533352, 35.222736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402168, 34.679611, 35.827126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270971, 34.942738, 35.555920>,  <28.192253, 35.100613, 35.393196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270971, 34.942738, 35.555920>,  <28.402168, 34.679611, 35.827126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270971, 34.942738, 35.555920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938404, -0.144276, 0.313978,
		0.108718, 0.739233, 0.664616,
		-0.327991, 0.657814, -0.678014,
		28.172573, 35.140083, 35.352516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962389, 35.028435, 36.237354>,  <28.402168, 34.679611, 35.827126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962389, 35.028435, 36.237354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872845, 35.143661, 35.864922>,  <27.819118, 35.212795, 35.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872845, 35.143661, 35.864922>,  <27.962389, 35.028435, 36.237354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872845, 35.143661, 35.864922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919342, 0.254751, 0.299854,
		0.323570, 0.923105, 0.207799,
		-0.223859, 0.288062, -0.931079,
		27.805687, 35.230080, 35.585598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610958, 35.646317, 36.272655>,  <27.962389, 35.028435, 36.237354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610958, 35.646317, 36.272655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487831, 35.462444, 35.939442>,  <27.413954, 35.352119, 35.739513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487831, 35.462444, 35.939442>,  <27.610958, 35.646317, 36.272655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487831, 35.462444, 35.939442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951427, 0.154086, 0.266541,
		0.005834, 0.874615, -0.484784,
		-0.307819, -0.459681, -0.833031,
		27.395485, 35.324539, 35.689533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729792, 36.325275, 35.815559>,  <27.610958, 35.646317, 36.272655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729792, 36.325275, 35.815559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035463, 36.085365, 35.910477>,  <28.218866, 35.941422, 35.967426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035463, 36.085365, 35.910477>,  <27.729792, 36.325275, 35.815559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035463, 36.085365, 35.910477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567308, 0.800040, 0.195186,
		-0.306911, -0.014539, 0.951627,
		0.764177, -0.599771, 0.237294,
		28.264717, 35.905434, 35.981667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484129, 36.427666, 35.451023>,  <27.729792, 36.325275, 35.815559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484129, 36.427666, 35.451023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505360, 36.034664, 35.522438>,  <28.518097, 35.798862, 35.565289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505360, 36.034664, 35.522438>,  <28.484129, 36.427666, 35.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505360, 36.034664, 35.522438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979673, 0.016596, -0.199911,
		0.193450, 0.185517, 0.963411,
		0.053076, -0.982501, 0.178536,
		28.521282, 35.739914, 35.576000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973579, 36.211754, 35.978565>,  <28.484129, 36.427666, 35.451023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973579, 36.211754, 35.978565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956251, 35.948952, 35.677509>,  <28.945854, 35.791271, 35.496876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956251, 35.948952, 35.677509>,  <28.973579, 36.211754, 35.978565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956251, 35.948952, 35.677509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982491, 0.108620, -0.151370,
		0.181203, -0.746016, 0.640800,
		-0.043321, -0.657009, -0.752637,
		28.943254, 35.751850, 35.451717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577204, 35.708733, 36.096371>,  <28.973579, 36.211754, 35.978565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577204, 35.708733, 36.096371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458096, 35.760330, 35.718018>,  <29.386631, 35.791290, 35.491005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458096, 35.760330, 35.718018>,  <29.577204, 35.708733, 36.096371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458096, 35.760330, 35.718018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939201, 0.217054, -0.266064,
		0.170985, -0.967598, -0.185787,
		-0.297769, 0.128999, -0.945882,
		29.368765, 35.799030, 35.434254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909094, 35.308704, 35.665348>,  <29.577204, 35.708733, 36.096371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909094, 35.308704, 35.665348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790575, 35.625202, 35.451378>,  <29.719463, 35.815102, 35.322994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790575, 35.625202, 35.451378>,  <29.909094, 35.308704, 35.665348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790575, 35.625202, 35.451378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955077, 0.248949, -0.160784,
		0.005950, -0.558535, -0.829459,
		-0.296297, 0.791241, -0.534926,
		29.701685, 35.862576, 35.290901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374487, 35.581146, 35.091045>,  <29.909094, 35.308704, 35.665348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374487, 35.581146, 35.091045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138254, 35.895515, 35.164295>,  <29.996513, 36.084137, 35.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138254, 35.895515, 35.164295>,  <30.374487, 35.581146, 35.091045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138254, 35.895515, 35.164295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710306, 0.613972, -0.344244,
		-0.382983, -0.073230, -0.920848,
		-0.590584, 0.785924, 0.183125,
		29.961079, 36.131294, 35.219234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053694, 35.887466, 34.429409>,  <30.374487, 35.581146, 35.091045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053694, 35.887466, 34.429409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143097, 36.152367, 34.715477>,  <30.196739, 36.311306, 34.887119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143097, 36.152367, 34.715477>,  <30.053694, 35.887466, 34.429409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143097, 36.152367, 34.715477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626094, 0.464797, -0.626075,
		-0.747028, 0.587696, -0.310745,
		0.223509, 0.662251, 0.715169,
		30.210150, 36.351044, 34.930027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231220, 36.490852, 34.213799>,  <30.053694, 35.887466, 34.429409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231220, 36.490852, 34.213799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387609, 36.606808, 34.563221>,  <30.481443, 36.676380, 34.772877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387609, 36.606808, 34.563221>,  <30.231220, 36.490852, 34.213799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387609, 36.606808, 34.563221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718448, 0.497125, -0.486518,
		-0.575302, 0.817823, -0.013904,
		0.390974, 0.289884, 0.873560,
		30.504902, 36.693771, 34.825291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244892, 37.250782, 34.514709>,  <30.231220, 36.490852, 34.213799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244892, 37.250782, 34.514709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568499, 37.070465, 34.665588>,  <30.762663, 36.962276, 34.756115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568499, 37.070465, 34.665588>,  <30.244892, 37.250782, 34.514709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568499, 37.070465, 34.665588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565384, 0.772295, -0.289656,
		-0.160736, 0.447600, 0.879669,
		0.809014, -0.450793, 0.377202,
		30.811203, 36.935226, 34.778748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932873, 37.413998, 34.310020>,  <30.244892, 37.250782, 34.514709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932873, 37.413998, 34.310020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213310, 37.417534, 34.595226>,  <31.381573, 37.419655, 34.766350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213310, 37.417534, 34.595226>,  <30.932873, 37.413998, 34.310020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213310, 37.417534, 34.595226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107646, -0.989776, -0.093576,
		0.704896, 0.142359, -0.694879,
		0.701095, 0.008839, 0.713013,
		31.423639, 37.420185, 34.809132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568027, 36.927235, 34.182838>,  <30.932873, 37.413998, 34.310020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568027, 36.927235, 34.182838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589432, 36.954674, 34.581322>,  <31.602274, 36.971138, 34.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589432, 36.954674, 34.581322>,  <31.568027, 36.927235, 34.182838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589432, 36.954674, 34.581322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398013, -0.916430, 0.041722,
		0.915818, 0.394272, -0.076340,
		0.053510, 0.068594, 0.996209,
		31.605486, 36.975254, 34.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842110, 36.248173, 34.649994>,  <31.568027, 36.927235, 34.182838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842110, 36.248173, 34.649994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488573, 36.335194, 34.815639>,  <31.276451, 36.387405, 34.915028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488573, 36.335194, 34.815639>,  <31.842110, 36.248173, 34.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488573, 36.335194, 34.815639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459703, -0.567787, -0.682855,
		0.086570, -0.793906, 0.601846,
		-0.883843, 0.217556, 0.414115,
		31.223419, 36.400459, 34.939873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170742, 35.635960, 34.445721>,  <31.842110, 36.248173, 34.649994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170742, 35.635960, 34.445721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569824, 35.622051, 34.468971>,  <32.809273, 35.613705, 34.482922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569824, 35.622051, 34.468971>,  <32.170742, 35.635960, 34.445721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569824, 35.622051, 34.468971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066237, -0.321433, 0.944613,
		-0.014165, -0.946294, -0.322998,
		0.997703, -0.034775, 0.058127,
		32.869137, 35.611618, 34.486408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323246, 35.031666, 34.761711>,  <32.170742, 35.635960, 34.445721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323246, 35.031666, 34.761711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689682, 35.186905, 34.802021>,  <32.909546, 35.280048, 34.826206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689682, 35.186905, 34.802021>,  <32.323246, 35.031666, 34.761711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689682, 35.186905, 34.802021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036427, -0.330838, 0.942984,
		0.399310, -0.860189, -0.317215,
		0.916092, 0.388098, 0.100773,
		32.964508, 35.303333, 34.832253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641750, 34.473885, 35.061176>,  <32.323246, 35.031666, 34.761711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641750, 34.473885, 35.061176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873573, 34.790630, 35.138184>,  <33.012669, 34.980679, 35.184387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873573, 34.790630, 35.138184>,  <32.641750, 34.473885, 35.061176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873573, 34.790630, 35.138184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046432, -0.267947, 0.962314,
		0.813607, -0.548778, -0.192059,
		0.579558, 0.791863, 0.192523,
		33.047440, 35.028191, 35.195942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344727, 34.189632, 35.421085>,  <32.641750, 34.473885, 35.061176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344727, 34.189632, 35.421085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265491, 34.569359, 35.518703>,  <33.217953, 34.797195, 35.577274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265491, 34.569359, 35.518703>,  <33.344727, 34.189632, 35.421085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265491, 34.569359, 35.518703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269210, -0.186714, 0.944809,
		0.942490, 0.252852, -0.218581,
		-0.198085, 0.949318, 0.244047,
		33.206066, 34.854153, 35.591919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569241, 34.288250, 36.092491>,  <33.344727, 34.189632, 35.421085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569241, 34.288250, 36.092491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634335, 33.895374, 36.054901>,  <33.673389, 33.659649, 36.032349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634335, 33.895374, 36.054901>,  <33.569241, 34.288250, 36.092491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634335, 33.895374, 36.054901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541862, -0.168557, 0.823392,
		-0.824563, -0.083072, -0.559638,
		0.162732, -0.982185, -0.093972,
		33.683155, 33.600719, 36.026711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626263, 34.688496, 36.761269>,  <33.569241, 34.288250, 36.092491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626263, 34.688496, 36.761269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475266, 35.000107, 36.561028>,  <33.384666, 35.187073, 36.440884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475266, 35.000107, 36.561028>,  <33.626263, 34.688496, 36.761269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475266, 35.000107, 36.561028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310570, 0.402783, 0.860995,
		0.872379, 0.480494, 0.089896,
		-0.377494, 0.779032, -0.500606,
		33.362019, 35.233818, 36.410847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951775, 35.231743, 37.104137>,  <33.626263, 34.688496, 36.761269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951775, 35.231743, 37.104137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587914, 35.303284, 36.954182>,  <33.369598, 35.346210, 36.864208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587914, 35.303284, 36.954182>,  <33.951775, 35.231743, 37.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587914, 35.303284, 36.954182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317560, 0.282332, 0.905232,
		0.267750, 0.942496, -0.200026,
		-0.909651, 0.178856, -0.374893,
		33.315018, 35.356941, 36.841713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748711, 35.964802, 37.237289>,  <33.951775, 35.231743, 37.104137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748711, 35.964802, 37.237289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408798, 35.766037, 37.166927>,  <33.204849, 35.646778, 37.124710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408798, 35.766037, 37.166927>,  <33.748711, 35.964802, 37.237289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408798, 35.766037, 37.166927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386360, 0.360139, 0.849133,
		-0.358599, 0.789541, -0.498029,
		-0.849784, -0.496916, -0.175902,
		33.153862, 35.616962, 37.114159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126575, 36.375954, 37.282974>,  <33.748711, 35.964802, 37.237289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126575, 36.375954, 37.282974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070305, 35.988853, 37.366570>,  <33.036545, 35.756596, 37.416725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070305, 35.988853, 37.366570>,  <33.126575, 36.375954, 37.282974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070305, 35.988853, 37.366570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443800, 0.250327, 0.860452,
		-0.885016, 0.028294, -0.464701,
		-0.140672, -0.967748, 0.208986,
		33.028103, 35.698528, 37.429264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503609, 36.228397, 37.594994>,  <33.126575, 36.375954, 37.282974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503609, 36.228397, 37.594994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745472, 35.936996, 37.723789>,  <32.890591, 35.762154, 37.801067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745472, 35.936996, 37.723789>,  <32.503609, 36.228397, 37.594994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745472, 35.936996, 37.723789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435336, 0.036253, 0.899538,
		-0.666991, -0.684080, -0.295224,
		0.604653, -0.728505, 0.321985,
		32.926868, 35.718445, 37.820385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012096, 35.790222, 37.796974>,  <32.503609, 36.228397, 37.594994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012096, 35.790222, 37.796974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331940, 35.738239, 38.031494>,  <32.523846, 35.707050, 38.172207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331940, 35.738239, 38.031494>,  <32.012096, 35.790222, 37.796974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331940, 35.738239, 38.031494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600313, -0.146922, 0.786154,
		-0.016022, -0.980575, -0.195492,
		0.799605, -0.129952, 0.586298,
		32.571819, 35.699253, 38.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961311, 35.101921, 38.112591>,  <32.012096, 35.790222, 37.796974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961311, 35.101921, 38.112591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156193, 35.348980, 38.359539>,  <32.273121, 35.497215, 38.507710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156193, 35.348980, 38.359539>,  <31.961311, 35.101921, 38.112591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156193, 35.348980, 38.359539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707996, -0.134507, 0.693289,
		0.511246, -0.774870, 0.371757,
		0.487205, 0.617644, 0.617371,
		32.302353, 35.534271, 38.544750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151535, 34.855442, 37.436184>,  <31.961311, 35.101921, 38.112591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151535, 34.855442, 37.436184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273270, 35.224506, 37.341465>,  <32.346310, 35.445946, 37.284634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273270, 35.224506, 37.341465>,  <32.151535, 34.855442, 37.436184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273270, 35.224506, 37.341465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510919, -0.367920, -0.776915,
		-0.803952, 0.115462, -0.583378,
		0.304341, 0.922661, -0.236798,
		32.364571, 35.501305, 37.270424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988295, 35.185448, 36.820763>,  <32.151535, 34.855442, 37.436184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988295, 35.185448, 36.820763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344677, 35.345943, 36.905811>,  <32.558506, 35.442242, 36.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344677, 35.345943, 36.905811>,  <31.988295, 35.185448, 36.820763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344677, 35.345943, 36.905811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322145, -0.228505, -0.918699,
		-0.320030, 0.887015, -0.332844,
		0.890956, 0.401236, 0.212619,
		32.611965, 35.466312, 36.969597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127853, 35.587811, 36.375168>,  <31.988295, 35.185448, 36.820763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127853, 35.587811, 36.375168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497208, 35.517803, 36.511826>,  <32.718822, 35.475800, 36.593819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497208, 35.517803, 36.511826>,  <32.127853, 35.587811, 36.375168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497208, 35.517803, 36.511826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308140, -0.192781, -0.931603,
		0.228910, 0.965507, -0.124082,
		0.923390, -0.175019, 0.341641,
		32.774223, 35.465298, 36.614319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453140, 35.771477, 35.892529>,  <32.127853, 35.587811, 36.375168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453140, 35.771477, 35.892529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751266, 35.538795, 36.022831>,  <32.930145, 35.399185, 36.101013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751266, 35.538795, 36.022831>,  <32.453140, 35.771477, 35.892529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751266, 35.538795, 36.022831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437831, 0.058577, -0.897147,
		0.502794, 0.811287, 0.298348,
		0.745320, -0.581706, 0.325755,
		32.974861, 35.364285, 36.120556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111992, 36.104572, 35.967995>,  <32.453140, 35.771477, 35.892529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111992, 36.104572, 35.967995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138382, 35.722889, 35.851288>,  <33.154217, 35.493877, 35.781265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138382, 35.722889, 35.851288>,  <33.111992, 36.104572, 35.967995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138382, 35.722889, 35.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415607, 0.292109, -0.861361,
		0.907148, -0.064430, 0.415849,
		0.065976, -0.954212, -0.291764,
		33.158176, 35.436626, 35.763760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675182, 36.070366, 35.586086>,  <33.111992, 36.104572, 35.967995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675182, 36.070366, 35.586086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475632, 35.751202, 35.450756>,  <33.355904, 35.559704, 35.369560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475632, 35.751202, 35.450756>,  <33.675182, 36.070366, 35.586086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475632, 35.751202, 35.450756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245568, 0.244233, -0.938108,
		0.831158, -0.551077, 0.074100,
		-0.498872, -0.797912, -0.338323,
		33.325970, 35.511829, 35.349258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104416, 35.871998, 35.043709>,  <33.675182, 36.070366, 35.586086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104416, 35.871998, 35.043709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767231, 35.670288, 34.968739>,  <33.564922, 35.549263, 34.923756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767231, 35.670288, 34.968739>,  <34.104416, 35.871998, 35.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767231, 35.670288, 34.968739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040058, 0.288582, -0.956617,
		0.536482, -0.813898, -0.223063,
		-0.842961, -0.504273, -0.187422,
		33.514343, 35.519005, 34.912514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179813, 35.353378, 34.438908>,  <34.104416, 35.871998, 35.043709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179813, 35.353378, 34.438908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800182, 35.466816, 34.493797>,  <33.572403, 35.534878, 34.526730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800182, 35.466816, 34.493797>,  <34.179813, 35.353378, 34.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800182, 35.466816, 34.493797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063624, 0.254065, -0.965092,
		-0.308555, -0.924677, -0.223084,
		-0.949076, 0.283591, 0.137225,
		33.515461, 35.551891, 34.534966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753708, 35.809227, 34.367065>,  <34.179813, 35.353378, 34.438908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753708, 35.809227, 34.367065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936417, 35.456181, 34.411537>,  <35.046040, 35.244354, 34.438221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936417, 35.456181, 34.411537>,  <34.753708, 35.809227, 34.367065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936417, 35.456181, 34.411537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058764, -0.094764, -0.993764,
		0.887643, 0.460453, 0.008581,
		0.456769, -0.882611, 0.111175,
		35.073448, 35.191399, 34.444889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412415, 35.645554, 33.960651>,  <34.753708, 35.809227, 34.367065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412415, 35.645554, 33.960651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238644, 35.293766, 34.038433>,  <35.134380, 35.082695, 34.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238644, 35.293766, 34.038433>,  <35.412415, 35.645554, 33.960651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238644, 35.293766, 34.038433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081137, -0.253226, -0.963999,
		0.897047, -0.403006, 0.181365,
		-0.434424, -0.879467, 0.194457,
		35.108315, 35.029926, 34.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685024, 34.983238, 33.672440>,  <35.412415, 35.645554, 33.960651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685024, 34.983238, 33.672440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291771, 34.917873, 33.705292>,  <35.055820, 34.878654, 33.725002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291771, 34.917873, 33.705292>,  <35.685024, 34.983238, 33.672440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291771, 34.917873, 33.705292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031491, -0.291124, -0.956167,
		0.180156, -0.942627, 0.281068,
		-0.983134, -0.163409, 0.082132,
		34.996830, 34.868851, 33.729931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528378, 34.265255, 33.437115>,  <35.685024, 34.983238, 33.672440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528378, 34.265255, 33.437115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223022, 34.523094, 33.420475>,  <35.039810, 34.677799, 33.410492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223022, 34.523094, 33.420475>,  <35.528378, 34.265255, 33.437115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223022, 34.523094, 33.420475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118293, -0.202823, -0.972044,
		-0.635014, -0.737128, 0.231084,
		-0.763390, 0.644597, -0.041599,
		34.994007, 34.716473, 33.407997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033100, 34.021290, 32.978825>,  <35.528378, 34.265255, 33.437115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033100, 34.021290, 32.978825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007076, 34.420441, 32.979416>,  <34.991463, 34.659931, 32.979771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007076, 34.420441, 32.979416>,  <35.033100, 34.021290, 32.978825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007076, 34.420441, 32.979416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076202, -0.003491, -0.997087,
		-0.994968, -0.064979, 0.076267,
		-0.065056, 0.997881, 0.001478,
		34.987560, 34.719807, 32.979858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477001, 34.226036, 32.584213>,  <35.033100, 34.021290, 32.978825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477001, 34.226036, 32.584213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769878, 34.498440, 32.579704>,  <34.945602, 34.661880, 32.577000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769878, 34.498440, 32.579704>,  <34.477001, 34.226036, 32.584213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769878, 34.498440, 32.579704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128277, -0.154129, -0.979688,
		-0.668910, 0.715874, -0.200210,
		0.732191, 0.681006, -0.011268,
		34.989536, 34.702740, 32.576324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429379, 34.982628, 32.239639>,  <34.477001, 34.226036, 32.584213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429379, 34.982628, 32.239639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806076, 34.851246, 32.210686>,  <35.032093, 34.772415, 32.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806076, 34.851246, 32.210686>,  <34.429379, 34.982628, 32.239639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806076, 34.851246, 32.210686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073439, 0.009215, -0.997257,
		0.328222, 0.944474, -0.015443,
		0.941742, -0.328456, -0.072386,
		35.088600, 34.752708, 32.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953484, 35.479053, 31.885769>,  <34.429379, 34.982628, 32.239639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953484, 35.479053, 31.885769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062473, 35.101261, 31.812323>,  <35.127869, 34.874584, 31.768255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062473, 35.101261, 31.812323>,  <34.953484, 35.479053, 31.885769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062473, 35.101261, 31.812323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121681, 0.155481, -0.980316,
		0.954438, 0.289453, -0.072561,
		0.272474, -0.944480, -0.183618,
		35.144215, 34.817917, 31.757236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145390, 35.544106, 31.188604>,  <34.953484, 35.479053, 31.885769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145390, 35.544106, 31.188604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154888, 35.154358, 31.278084>,  <35.160587, 34.920509, 31.331772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154888, 35.154358, 31.278084>,  <35.145390, 35.544106, 31.188604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154888, 35.154358, 31.278084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052484, -0.224666, -0.973021,
		0.998339, 0.011370, -0.056475,
		0.023751, -0.974369, 0.223696,
		35.162014, 34.862045, 31.345192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651131, 35.273670, 30.713213>,  <35.145390, 35.544106, 31.188604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651131, 35.273670, 30.713213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447437, 34.949474, 30.828993>,  <35.325222, 34.754955, 30.898460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447437, 34.949474, 30.828993>,  <35.651131, 35.273670, 30.713213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447437, 34.949474, 30.828993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066419, -0.372331, -0.925720,
		0.858061, -0.452183, 0.243436,
		-0.509234, -0.810494, 0.289449,
		35.294666, 34.706326, 30.915827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058727, 34.685192, 30.484991>,  <35.651131, 35.273670, 30.713213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058727, 34.685192, 30.484991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680508, 34.566841, 30.539227>,  <35.453575, 34.495831, 30.571768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680508, 34.566841, 30.539227>,  <36.058727, 34.685192, 30.484991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680508, 34.566841, 30.539227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000355, -0.417535, -0.908661,
		0.325467, -0.859139, 0.394907,
		-0.945554, -0.295879, 0.135588,
		35.396843, 34.478077, 30.579903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002087, 34.061687, 30.172665>,  <36.058727, 34.685192, 30.484991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002087, 34.061687, 30.172665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650524, 34.252460, 30.175898>,  <35.439587, 34.366924, 30.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650524, 34.252460, 30.175898>,  <36.002087, 34.061687, 30.172665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650524, 34.252460, 30.175898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151722, -0.263452, -0.952667,
		-0.452226, -0.838529, 0.303910,
		-0.878904, 0.476930, 0.008083,
		35.386852, 34.395538, 30.178322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351162, 33.683826, 30.158873>,  <36.002087, 34.061687, 30.172665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351162, 33.683826, 30.158873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374340, 34.026138, 29.953241>,  <35.388248, 34.231525, 29.829863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374340, 34.026138, 29.953241>,  <35.351162, 33.683826, 30.158873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374340, 34.026138, 29.953241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031252, -0.513136, -0.857738,
		-0.997831, 0.065767, -0.002988,
		0.057944, 0.855784, -0.514078,
		35.391724, 34.282875, 29.799019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786358, 33.803162, 29.624502>,  <35.351162, 33.683826, 30.158873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786358, 33.803162, 29.624502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112915, 33.985542, 29.482742>,  <35.308849, 34.094971, 29.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112915, 33.985542, 29.482742>,  <34.786358, 33.803162, 29.624502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112915, 33.985542, 29.482742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016689, -0.594805, -0.803697,
		-0.577249, 0.662051, -0.477988,
		0.816398, 0.455956, -0.354399,
		35.357834, 34.122330, 29.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572968, 34.008263, 28.969715>,  <34.786358, 33.803162, 29.624502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572968, 34.008263, 28.969715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965187, 33.935211, 28.998508>,  <35.200520, 33.891380, 29.015783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965187, 33.935211, 28.998508>,  <34.572968, 34.008263, 28.969715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965187, 33.935211, 28.998508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061941, -0.635815, -0.769352,
		0.186270, 0.749925, -0.634757,
		0.980544, -0.182625, 0.071982,
		35.259350, 33.880424, 29.020103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948231, 34.163452, 28.381649>,  <34.572968, 34.008263, 28.969715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948231, 34.163452, 28.381649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120354, 33.859581, 28.576675>,  <35.223629, 33.677258, 28.693691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120354, 33.859581, 28.576675>,  <34.948231, 34.163452, 28.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120354, 33.859581, 28.576675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114648, -0.489763, -0.864285,
		0.895372, 0.427807, -0.123653,
		0.430307, -0.759680, 0.487568,
		35.249447, 33.631676, 28.722946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505455, 34.164650, 27.878265>,  <34.948231, 34.163452, 28.381649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505455, 34.164650, 27.878265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437325, 33.859482, 28.127726>,  <35.396446, 33.676380, 28.277403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437325, 33.859482, 28.127726>,  <35.505455, 34.164650, 27.878265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437325, 33.859482, 28.127726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103623, -0.643259, -0.758604,
		0.979924, -0.064586, 0.188620,
		-0.170327, -0.762920, 0.623652,
		35.386227, 33.630608, 28.314821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894867, 33.668789, 27.527946>,  <35.505455, 34.164650, 27.878265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894867, 33.668789, 27.527946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623089, 33.531841, 27.787527>,  <35.460022, 33.449673, 27.943275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623089, 33.531841, 27.787527>,  <35.894867, 33.668789, 27.527946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623089, 33.531841, 27.787527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000669, -0.884749, -0.466067,
		0.733724, -0.316234, 0.601369,
		-0.679447, -0.342367, 0.648950,
		35.419254, 33.429131, 27.982212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136173, 33.081215, 27.939142>,  <35.894867, 33.668789, 27.527946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136173, 33.081215, 27.939142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739403, 33.061535, 27.892395>,  <35.501339, 33.049725, 27.864347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739403, 33.061535, 27.892395>,  <36.136173, 33.081215, 27.939142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739403, 33.061535, 27.892395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118306, -0.690795, -0.713307,
		-0.045635, -0.721375, 0.691039,
		-0.991928, -0.049203, -0.116867,
		35.441826, 33.046776, 27.857334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057816, 32.455029, 27.655098>,  <36.136173, 33.081215, 27.939142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057816, 32.455029, 27.655098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715061, 32.641209, 27.566465>,  <35.509407, 32.752918, 27.513287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715061, 32.641209, 27.566465>,  <36.057816, 32.455029, 27.655098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715061, 32.641209, 27.566465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074214, -0.536740, -0.840478,
		-0.510129, -0.703753, 0.494470,
		-0.856890, 0.465448, -0.221578,
		35.457996, 32.780846, 27.499990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697895, 31.933802, 27.317001>,  <36.057816, 32.455029, 27.655098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697895, 31.933802, 27.317001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500385, 32.269226, 27.224915>,  <35.381878, 32.470482, 27.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500385, 32.269226, 27.224915>,  <35.697895, 31.933802, 27.317001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500385, 32.269226, 27.224915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168818, -0.352146, -0.920594,
		-0.853044, -0.415705, 0.315446,
		-0.493778, 0.838560, -0.230217,
		35.352253, 32.520794, 27.155849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048126, 31.778282, 26.914568>,  <35.697895, 31.933802, 27.317001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048126, 31.778282, 26.914568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127525, 32.153507, 26.800983>,  <35.175163, 32.378643, 26.732832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127525, 32.153507, 26.800983>,  <35.048126, 31.778282, 26.914568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127525, 32.153507, 26.800983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139695, -0.313847, -0.939141,
		-0.970095, 0.146749, -0.193341,
		0.198497, 0.938065, -0.283961,
		35.187073, 32.434925, 26.715796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643410, 31.993395, 26.288260>,  <35.048126, 31.778282, 26.914568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643410, 31.993395, 26.288260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921276, 32.280823, 26.301500>,  <35.087997, 32.453281, 26.309444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921276, 32.280823, 26.301500>,  <34.643410, 31.993395, 26.288260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921276, 32.280823, 26.301500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034546, 0.012640, -0.999323,
		-0.718502, 0.695340, -0.016043,
		0.694667, 0.718570, 0.033103,
		35.129677, 32.496395, 26.311432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399857, 32.624466, 25.854065>,  <34.643410, 31.993395, 26.288260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399857, 32.624466, 25.854065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798565, 32.645622, 25.878252>,  <35.037788, 32.658318, 25.892763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798565, 32.645622, 25.878252>,  <34.399857, 32.624466, 25.854065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798565, 32.645622, 25.878252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038095, 0.351479, -0.935421,
		-0.070726, 0.934701, 0.348328,
		0.996768, 0.052889, 0.060466,
		35.097595, 32.661488, 25.896391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498676, 33.130024, 25.351608>,  <34.399857, 32.624466, 25.854065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498676, 33.130024, 25.351608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869865, 32.992466, 25.409008>,  <35.092579, 32.909931, 25.443447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869865, 32.992466, 25.409008>,  <34.498676, 33.130024, 25.351608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869865, 32.992466, 25.409008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191653, 0.110213, -0.975255,
		0.319574, 0.932516, 0.168184,
		0.927977, -0.343899, 0.143499,
		35.148258, 32.889297, 25.452057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909740, 33.705921, 25.071712>,  <34.498676, 33.130024, 25.351608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909740, 33.705921, 25.071712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099533, 33.353924, 25.080475>,  <35.213409, 33.142727, 25.085732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099533, 33.353924, 25.080475>,  <34.909740, 33.705921, 25.071712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099533, 33.353924, 25.080475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225128, 0.097252, -0.969463,
		0.850991, 0.464923, 0.244256,
		0.474480, -0.879994, 0.021906,
		35.241879, 33.089924, 25.087048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492077, 33.847057, 24.701796>,  <34.909740, 33.705921, 25.071712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492077, 33.847057, 24.701796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465431, 33.448765, 24.676212>,  <35.449444, 33.209789, 24.660862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465431, 33.448765, 24.676212>,  <35.492077, 33.847057, 24.701796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465431, 33.448765, 24.676212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365862, 0.035258, -0.930001,
		0.928282, -0.085352, 0.361950,
		-0.066616, -0.995727, -0.063957,
		35.445446, 33.150047, 24.657024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143463, 33.524464, 24.428852>,  <35.492077, 33.847057, 24.701796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143463, 33.524464, 24.428852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846432, 33.266476, 24.356644>,  <35.668213, 33.111683, 24.313318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846432, 33.266476, 24.356644>,  <36.143463, 33.524464, 24.428852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846432, 33.266476, 24.356644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240871, -0.005679, -0.970541,
		0.624942, -0.764189, 0.159571,
		-0.742583, -0.644968, -0.180522,
		35.623657, 33.072987, 24.302486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416161, 33.075012, 24.008692>,  <36.143463, 33.524464, 24.428852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416161, 33.075012, 24.008692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020882, 33.031017, 23.966040>,  <35.783714, 33.004620, 23.940449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020882, 33.031017, 23.966040>,  <36.416161, 33.075012, 24.008692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020882, 33.031017, 23.966040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093089, 0.121660, -0.988197,
		0.121660, -0.986459, -0.109986,
		0.988197, 0.109986, 0.106630,
		35.724422, 32.998020, 23.934052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387054, 32.922771, 23.326607>,  <36.416161, 33.075012, 24.008692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387054, 32.922771, 23.326607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001541, 32.936630, 23.432375>,  <35.770233, 32.944946, 23.495836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001541, 32.936630, 23.432375>,  <36.387054, 32.922771, 23.326607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001541, 32.936630, 23.432375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266660, -0.137841, -0.953883,
		0.003404, -0.989848, 0.142087,
		-0.963784, 0.034642, 0.264422,
		35.712406, 32.947025, 23.511702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940014, 32.263451, 23.044916>,  <36.387054, 32.922771, 23.326607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940014, 32.263451, 23.044916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704227, 32.579605, 23.111628>,  <35.562756, 32.769299, 23.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704227, 32.579605, 23.111628>,  <35.940014, 32.263451, 23.044916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704227, 32.579605, 23.111628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386447, -0.094623, -0.917445,
		-0.709357, -0.605254, 0.361220,
		-0.589467, 0.790388, 0.166777,
		35.527386, 32.816723, 23.161661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178696, 32.013435, 23.031977>,  <35.940014, 32.263451, 23.044916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178696, 32.013435, 23.031977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201199, 32.406322, 22.960333>,  <35.214699, 32.642056, 22.917347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201199, 32.406322, 22.960333>,  <35.178696, 32.013435, 23.031977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201199, 32.406322, 22.960333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636288, -0.102975, -0.764548,
		-0.769397, 0.156977, 0.619181,
		0.056256, 0.982219, -0.179112,
		35.218075, 32.700989, 22.906599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527145, 32.282131, 22.891212>,  <35.178696, 32.013435, 23.031977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527145, 32.282131, 22.891212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754539, 32.572544, 22.736446>,  <34.890976, 32.746792, 22.643587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754539, 32.572544, 22.736446>,  <34.527145, 32.282131, 22.891212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754539, 32.572544, 22.736446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531684, -0.034663, -0.846234,
		-0.627802, 0.686790, 0.366312,
		0.568487, 0.726029, -0.386916,
		34.925087, 32.790352, 22.620371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118130, 32.618217, 22.281147>,  <34.527145, 32.282131, 22.891212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118130, 32.618217, 22.281147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463005, 32.796196, 22.184275>,  <34.669930, 32.902985, 22.126152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463005, 32.796196, 22.184275>,  <34.118130, 32.618217, 22.281147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463005, 32.796196, 22.184275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206938, -0.127012, -0.970074,
		-0.462394, 0.886503, -0.017431,
		0.862188, 0.444950, -0.242181,
		34.721661, 32.929680, 22.111620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977158, 33.095371, 21.769791>,  <34.118130, 32.618217, 22.281147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977158, 33.095371, 21.769791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369370, 33.032337, 21.722929>,  <34.604698, 32.994518, 21.694811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369370, 33.032337, 21.722929>,  <33.977158, 33.095371, 21.769791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369370, 33.032337, 21.722929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139182, -0.136893, -0.980759,
		0.138512, 0.977971, -0.156161,
		0.980532, -0.157582, -0.117155,
		34.663528, 32.985062, 21.687782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190361, 33.583691, 21.288908>,  <33.977158, 33.095371, 21.769791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190361, 33.583691, 21.288908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480293, 33.308128, 21.291180>,  <34.654251, 33.142792, 21.292543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480293, 33.308128, 21.291180>,  <34.190361, 33.583691, 21.288908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480293, 33.308128, 21.291180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011662, 0.004025, -0.999924,
		0.688832, 0.724838, 0.010951,
		0.724827, -0.688908, 0.005680,
		34.697742, 33.101456, 21.292883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610573, 33.848282, 20.792122>,  <34.190361, 33.583691, 21.288908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610573, 33.848282, 20.792122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715351, 33.465496, 20.842079>,  <34.778217, 33.235825, 20.872053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715351, 33.465496, 20.842079>,  <34.610573, 33.848282, 20.792122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715351, 33.465496, 20.842079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013928, -0.133146, -0.990999,
		0.964982, 0.257851, -0.048206,
		0.261948, -0.956967, 0.124892,
		34.793934, 33.178406, 20.879547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190895, 33.657963, 20.408829>,  <34.610573, 33.848282, 20.792122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190895, 33.657963, 20.408829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980480, 33.322788, 20.467010>,  <34.854233, 33.121685, 20.501919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980480, 33.322788, 20.467010>,  <35.190895, 33.657963, 20.408829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980480, 33.322788, 20.467010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021622, -0.184149, -0.982660,
		0.850189, -0.513767, 0.114986,
		-0.526033, -0.837934, 0.145452,
		34.822670, 33.071407, 20.510647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504265, 33.278873, 19.944546>,  <35.190895, 33.657963, 20.408829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504265, 33.278873, 19.944546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174129, 33.070015, 20.030504>,  <34.976048, 32.944698, 20.082079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174129, 33.070015, 20.030504>,  <35.504265, 33.278873, 19.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174129, 33.070015, 20.030504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004615, -0.386816, -0.922145,
		0.564624, -0.760087, 0.321663,
		-0.825336, -0.522150, 0.214898,
		34.926529, 32.913372, 20.094973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578133, 32.657677, 19.507633>,  <35.504265, 33.278873, 19.944546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578133, 32.657677, 19.507633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190151, 32.680298, 19.602287>,  <34.957363, 32.693871, 19.659079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190151, 32.680298, 19.602287>,  <35.578133, 32.657677, 19.507633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190151, 32.680298, 19.602287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241102, -0.353766, -0.903725,
		0.032608, -0.933623, 0.356770,
		-0.969952, 0.056549, 0.236634,
		34.899166, 32.697262, 19.673277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236614, 32.024673, 19.307667>,  <35.578133, 32.657677, 19.507633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236614, 32.024673, 19.307667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933994, 32.277191, 19.375914>,  <34.752422, 32.428699, 19.416862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933994, 32.277191, 19.375914>,  <35.236614, 32.024673, 19.307667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933994, 32.277191, 19.375914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363541, -0.189139, -0.912176,
		-0.543577, -0.752130, 0.372592,
		-0.756546, 0.631290, 0.170619,
		34.707031, 32.466579, 19.427099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673286, 31.645945, 19.044174>,  <35.236614, 32.024673, 19.307667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673286, 31.645945, 19.044174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567120, 32.031395, 19.056707>,  <34.503422, 32.262665, 19.064228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567120, 32.031395, 19.056707>,  <34.673286, 31.645945, 19.044174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567120, 32.031395, 19.056707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402235, -0.081135, -0.911934,
		-0.876221, -0.254644, 0.409139,
		-0.265414, 0.963625, 0.031334,
		34.487495, 32.320484, 19.066107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054089, 31.681408, 18.744316>,  <34.673286, 31.645945, 19.044174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054089, 31.681408, 18.744316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177029, 32.061413, 18.722366>,  <34.250793, 32.289417, 18.709196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177029, 32.061413, 18.722366>,  <34.054089, 31.681408, 18.744316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177029, 32.061413, 18.722366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396699, 0.075495, -0.914839,
		-0.864967, 0.302941, 0.400073,
		0.307346, 0.950014, -0.054875,
		34.269234, 32.346416, 18.705904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419468, 32.076065, 18.541821>,  <34.054089, 31.681408, 18.744316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419468, 32.076065, 18.541821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755341, 32.269302, 18.442585>,  <33.956863, 32.385246, 18.383043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755341, 32.269302, 18.442585>,  <33.419468, 32.076065, 18.541821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755341, 32.269302, 18.442585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298775, 0.029460, -0.953869,
		-0.453500, 0.875072, 0.169073,
		0.839685, 0.483094, -0.248090,
		34.007248, 32.414230, 18.368158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149887, 32.584419, 18.174095>,  <33.419468, 32.076065, 18.541821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149887, 32.584419, 18.174095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530296, 32.579788, 18.050533>,  <33.758541, 32.577011, 17.976397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530296, 32.579788, 18.050533>,  <33.149887, 32.584419, 18.174095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530296, 32.579788, 18.050533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303591, 0.153161, -0.940412,
		0.058200, 0.988134, 0.142144,
		0.951023, -0.011578, -0.308902,
		33.815605, 32.576313, 17.957863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201565, 33.116604, 17.759724>,  <33.149887, 32.584419, 18.174095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201565, 33.116604, 17.759724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490025, 32.863174, 17.647635>,  <33.663101, 32.711117, 17.580381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490025, 32.863174, 17.647635>,  <33.201565, 33.116604, 17.759724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490025, 32.863174, 17.647635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287738, 0.094025, -0.953083,
		0.630200, 0.767944, -0.114498,
		0.721148, -0.633578, -0.280221,
		33.706367, 32.673100, 17.563568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613663, 33.538750, 17.291016>,  <33.201565, 33.116604, 17.759724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613663, 33.538750, 17.291016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703518, 33.156029, 17.217178>,  <33.757431, 32.926395, 17.172876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703518, 33.156029, 17.217178>,  <33.613663, 33.538750, 17.291016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703518, 33.156029, 17.217178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252411, 0.125836, -0.959403,
		0.941183, 0.262113, -0.213239,
		0.224639, -0.956798, -0.184595,
		33.770908, 32.868988, 17.161800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969070, 33.605473, 16.705183>,  <33.613663, 33.538750, 17.291016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969070, 33.605473, 16.705183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873871, 33.217262, 16.720325>,  <33.816750, 32.984337, 16.729412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873871, 33.217262, 16.720325>,  <33.969070, 33.605473, 16.705183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873871, 33.217262, 16.720325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324556, 0.042733, -0.944901,
		0.915434, -0.237174, -0.325161,
		-0.238001, -0.970527, 0.037857,
		33.802471, 32.926105, 16.731682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137802, 33.380615, 16.163044>,  <33.969070, 33.605473, 16.705183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137802, 33.380615, 16.163044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864887, 33.103889, 16.257601>,  <33.701138, 32.937855, 16.314335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864887, 33.103889, 16.257601>,  <34.137802, 33.380615, 16.163044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864887, 33.103889, 16.257601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309870, -0.019215, -0.950585,
		0.662170, -0.721820, -0.201262,
		-0.682284, -0.691814, 0.236394,
		33.660202, 32.896347, 16.328520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130207, 32.813576, 15.561497>,  <34.137802, 33.380615, 16.163044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130207, 32.813576, 15.561497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796616, 32.743015, 15.770630>,  <33.596458, 32.700680, 15.896110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796616, 32.743015, 15.770630>,  <34.130207, 32.813576, 15.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796616, 32.743015, 15.770630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476717, -0.246813, -0.843697,
		0.277873, -0.952872, 0.121743,
		-0.833983, -0.176404, 0.522833,
		33.546421, 32.690094, 15.927480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926018, 32.114445, 15.313088>,  <34.130207, 32.813576, 15.561497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926018, 32.114445, 15.313088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634453, 32.331585, 15.479940>,  <33.459515, 32.461868, 15.580051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634453, 32.331585, 15.479940>,  <33.926018, 32.114445, 15.313088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634453, 32.331585, 15.479940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602262, -0.218743, -0.767745,
		-0.325530, -0.810839, 0.486385,
		-0.728911, 0.542855, 0.417130,
		33.415779, 32.494442, 15.605080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371101, 31.657280, 15.182163>,  <33.926018, 32.114445, 15.313088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371101, 31.657280, 15.182163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216389, 32.022453, 15.234241>,  <33.123562, 32.241558, 15.265489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216389, 32.022453, 15.234241>,  <33.371101, 31.657280, 15.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216389, 32.022453, 15.234241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687516, -0.191381, -0.700496,
		-0.614590, -0.360451, 0.701680,
		-0.386783, 0.912934, 0.130195,
		33.100353, 32.296333, 15.273300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600689, 31.687416, 15.137055>,  <33.371101, 31.657280, 15.182163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600689, 31.687416, 15.137055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695580, 32.070957, 15.074668>,  <32.752514, 32.301083, 15.037235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695580, 32.070957, 15.074668>,  <32.600689, 31.687416, 15.137055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695580, 32.070957, 15.074668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562591, 0.004711, -0.826722,
		-0.791970, 0.283865, 0.540560,
		0.237223, 0.958853, -0.155969,
		32.766747, 32.358612, 15.027877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971247, 32.104160, 15.154433>,  <32.600689, 31.687416, 15.137055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971247, 32.104160, 15.154433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226055, 32.338116, 14.953593>,  <32.378941, 32.478489, 14.833089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226055, 32.338116, 14.953593>,  <31.971247, 32.104160, 15.154433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226055, 32.338116, 14.953593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664450, 0.086430, -0.742318,
		-0.390779, 0.806493, 0.443689,
		0.637022, 0.584891, -0.502100,
		32.417160, 32.513584, 14.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528145, 32.774551, 15.091651>,  <31.971247, 32.104160, 15.154433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528145, 32.774551, 15.091651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823812, 32.776562, 14.822251>,  <32.001213, 32.777767, 14.660611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823812, 32.776562, 14.822251>,  <31.528145, 32.774551, 15.091651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823812, 32.776562, 14.822251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641286, 0.310893, -0.701497,
		0.205863, 0.950432, 0.233024,
		0.739171, 0.005022, -0.673500,
		32.045563, 32.778069, 14.620201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476967, 33.411873, 14.685199>,  <31.528145, 32.774551, 15.091651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476967, 33.411873, 14.685199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691956, 33.180336, 14.439902>,  <31.820950, 33.041412, 14.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691956, 33.180336, 14.439902>,  <31.476967, 33.411873, 14.685199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691956, 33.180336, 14.439902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637827, 0.196661, -0.744649,
		0.551634, 0.791371, -0.263500,
		0.537473, -0.578841, -0.613242,
		31.853197, 33.006683, 14.255930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480822, 33.793064, 14.124646>,  <31.476967, 33.411873, 14.685199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480822, 33.793064, 14.124646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603355, 33.439270, 13.983883>,  <31.676876, 33.226994, 13.899425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603355, 33.439270, 13.983883>,  <31.480822, 33.793064, 14.124646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603355, 33.439270, 13.983883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559970, 0.131516, -0.818008,
		0.769800, 0.447643, -0.454999,
		0.306335, -0.884488, -0.351908,
		31.695255, 33.173923, 13.878310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693886, 33.890629, 13.414886>,  <31.480822, 33.793064, 14.124646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693886, 33.890629, 13.414886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600737, 33.506142, 13.473985>,  <31.544847, 33.275448, 13.509443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600737, 33.506142, 13.473985>,  <31.693886, 33.890629, 13.414886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600737, 33.506142, 13.473985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543843, 0.002769, -0.839183,
		0.806229, -0.275773, -0.523397,
		-0.232873, -0.961219, 0.147745,
		31.530874, 33.217777, 13.518308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876429, 33.624535, 12.831439>,  <31.693886, 33.890629, 13.414886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876429, 33.624535, 12.831439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597422, 33.399769, 13.009302>,  <31.430017, 33.264912, 13.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597422, 33.399769, 13.009302>,  <31.876429, 33.624535, 12.831439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597422, 33.399769, 13.009302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618416, 0.158585, -0.769683,
		0.361978, -0.811853, -0.458112,
		-0.697519, -0.561912, 0.444659,
		31.388166, 33.231194, 13.142700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715879, 32.940731, 12.402232>,  <31.876429, 33.624535, 12.831439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715879, 32.940731, 12.402232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421638, 33.049866, 12.650249>,  <31.245094, 33.115345, 12.799060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421638, 33.049866, 12.650249>,  <31.715879, 32.940731, 12.402232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421638, 33.049866, 12.650249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558856, 0.272879, -0.783082,
		-0.382847, -0.922551, -0.048256,
		-0.735601, 0.272832, 0.620044,
		31.200958, 33.131714, 12.836263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087599, 32.551552, 12.286378>,  <31.715879, 32.940731, 12.402232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087599, 32.551552, 12.286378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041367, 32.921185, 12.432097>,  <31.013626, 33.142963, 12.519529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041367, 32.921185, 12.432097>,  <31.087599, 32.551552, 12.286378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041367, 32.921185, 12.432097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604501, 0.225580, -0.763998,
		-0.788175, -0.308523, 0.532535,
		-0.115582, 0.924082, 0.364299,
		31.006693, 33.198410, 12.541388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391943, 32.607422, 12.265071>,  <31.087599, 32.551552, 12.286378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391943, 32.607422, 12.265071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613026, 32.938324, 12.224733>,  <30.745676, 33.136864, 12.200531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613026, 32.938324, 12.224733>,  <30.391943, 32.607422, 12.265071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613026, 32.938324, 12.224733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612833, 0.321451, -0.721876,
		-0.564756, 0.460787, 0.684636,
		0.552708, 0.827252, -0.100844,
		30.778837, 33.186501, 12.194480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300270, 32.118412, 12.736347>,  <30.391943, 32.607422, 12.265071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300270, 32.118412, 12.736347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955545, 31.924948, 12.797469>,  <29.748711, 31.808868, 12.834143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955545, 31.924948, 12.797469>,  <30.300270, 32.118412, 12.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955545, 31.924948, 12.797469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187952, 0.024695, -0.981868,
		0.471120, -0.874905, -0.112188,
		-0.861812, -0.483664, 0.152806,
		29.697002, 31.779848, 12.843310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207855, 31.554981, 12.229012>,  <30.300270, 32.118412, 12.736347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207855, 31.554981, 12.229012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834097, 31.648754, 12.336301>,  <29.609842, 31.705019, 12.400674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834097, 31.648754, 12.336301>,  <30.207855, 31.554981, 12.229012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834097, 31.648754, 12.336301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296078, -0.092394, -0.950685,
		-0.198092, -0.967731, 0.155744,
		-0.934397, 0.234435, 0.268221,
		29.553778, 31.719084, 12.416767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767632, 31.149836, 11.829445>,  <30.207855, 31.554981, 12.229012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767632, 31.149836, 11.829445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596865, 31.496233, 11.933599>,  <29.494404, 31.704071, 11.996091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596865, 31.496233, 11.933599>,  <29.767632, 31.149836, 11.829445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596865, 31.496233, 11.933599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297044, 0.137670, -0.944887,
		-0.854112, -0.480734, 0.198464,
		-0.426917, 0.865992, 0.260385,
		29.468790, 31.756031, 12.011714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037481, 31.028118, 11.874350>,  <29.767632, 31.149836, 11.829445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037481, 31.028118, 11.874350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154699, 31.398050, 11.777348>,  <29.225031, 31.620010, 11.719147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154699, 31.398050, 11.777348>,  <29.037481, 31.028118, 11.874350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154699, 31.398050, 11.777348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478093, -0.077908, -0.874847,
		-0.827980, 0.372310, 0.419326,
		0.293045, 0.924832, -0.242505,
		29.242613, 31.675501, 11.704597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440004, 31.465452, 11.684955>,  <29.037481, 31.028118, 11.874350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440004, 31.465452, 11.684955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782833, 31.573360, 11.509385>,  <28.988529, 31.638105, 11.404043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782833, 31.573360, 11.509385>,  <28.440004, 31.465452, 11.684955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782833, 31.573360, 11.509385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471614, 0.067868, -0.879189,
		-0.207389, 0.960531, 0.185394,
		0.857071, 0.269768, -0.438925,
		29.039955, 31.654291, 11.377707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896215, 31.864983, 12.086354>,  <28.440004, 31.465452, 11.684955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896215, 31.864983, 12.086354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600197, 31.863804, 11.817333>,  <27.422586, 31.863096, 11.655921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600197, 31.863804, 11.817333>,  <27.896215, 31.864983, 12.086354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600197, 31.863804, 11.817333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589137, 0.485212, 0.646132,
		0.324426, 0.874392, -0.360815,
		-0.740044, -0.002947, -0.672552,
		27.378183, 31.862919, 11.615568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313236, 31.790953, 12.753222>,  <27.896215, 31.864983, 12.086354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313236, 31.790953, 12.753222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701046, 31.793524, 12.655258>,  <28.933731, 31.795067, 12.596480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701046, 31.793524, 12.655258>,  <28.313236, 31.790953, 12.753222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701046, 31.793524, 12.655258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234283, -0.316654, 0.919152,
		-0.071644, -0.948519, -0.308510,
		0.969525, 0.006427, -0.244909,
		28.991903, 31.795452, 12.581785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621227, 31.109364, 12.795078>,  <28.313236, 31.790953, 12.753222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621227, 31.109364, 12.795078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870411, 31.397665, 12.916694>,  <29.019920, 31.570646, 12.989663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870411, 31.397665, 12.916694>,  <28.621227, 31.109364, 12.795078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870411, 31.397665, 12.916694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076756, -0.443113, 0.893174,
		0.778480, -0.533074, -0.331363,
		0.622959, 0.720752, 0.304038,
		29.057299, 31.613890, 13.007905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140173, 30.846424, 13.300678>,  <28.621227, 31.109364, 12.795078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140173, 30.846424, 13.300678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162571, 31.239859, 13.369285>,  <29.176010, 31.475920, 13.410448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162571, 31.239859, 13.369285>,  <29.140173, 30.846424, 13.300678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162571, 31.239859, 13.369285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036556, -0.173690, 0.984122,
		0.997762, -0.048838, -0.045682,
		0.055997, 0.983589, 0.171516,
		29.179371, 31.534935, 13.420739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553057, 30.849911, 13.856894>,  <29.140173, 30.846424, 13.300678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553057, 30.849911, 13.856894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379311, 31.209942, 13.843106>,  <29.275063, 31.425961, 13.834834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379311, 31.209942, 13.843106>,  <29.553057, 30.849911, 13.856894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379311, 31.209942, 13.843106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042704, 0.058802, 0.997356,
		0.899724, 0.431745, -0.063978,
		-0.434365, 0.900077, -0.034469,
		29.249001, 31.479965, 13.832766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950329, 31.268358, 14.251712>,  <29.553057, 30.849911, 13.856894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950329, 31.268358, 14.251712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606466, 31.472240, 14.265528>,  <29.400148, 31.594570, 14.273817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606466, 31.472240, 14.265528>,  <29.950329, 31.268358, 14.251712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606466, 31.472240, 14.265528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060643, 0.034680, 0.997557,
		0.507263, 0.859649, -0.060723,
		-0.859655, 0.509706, 0.034540,
		29.348570, 31.625153, 14.275889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032736, 31.803360, 14.578033>,  <29.950329, 31.268358, 14.251712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032736, 31.803360, 14.578033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633913, 31.823021, 14.601557>,  <29.394619, 31.834818, 14.615670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633913, 31.823021, 14.601557>,  <30.032736, 31.803360, 14.578033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633913, 31.823021, 14.601557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069098, 0.244474, 0.967191,
		0.033161, 0.968409, -0.247151,
		-0.997059, 0.049150, 0.058808,
		29.334795, 31.837767, 14.619199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859446, 32.425007, 14.789798>,  <30.032736, 31.803360, 14.578033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859446, 32.425007, 14.789798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546070, 32.196274, 14.887152>,  <29.358046, 32.059036, 14.945564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546070, 32.196274, 14.887152>,  <29.859446, 32.425007, 14.789798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546070, 32.196274, 14.887152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176776, 0.170403, 0.969388,
		-0.595798, 0.802480, -0.032414,
		-0.783438, -0.571830, 0.243385,
		29.311039, 32.024723, 14.960167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551092, 32.719284, 15.271568>,  <29.859446, 32.425007, 14.789798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551092, 32.719284, 15.271568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380669, 32.359081, 15.306366>,  <29.278414, 32.142960, 15.327245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380669, 32.359081, 15.306366>,  <29.551092, 32.719284, 15.271568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380669, 32.359081, 15.306366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180525, 0.009602, 0.983523,
		-0.886501, 0.434744, 0.158473,
		-0.426059, -0.900503, 0.086995,
		29.252851, 32.088932, 15.332464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076397, 32.813808, 15.801368>,  <29.551092, 32.719284, 15.271568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076397, 32.813808, 15.801368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145842, 32.421387, 15.766958>,  <29.187510, 32.185936, 15.746313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145842, 32.421387, 15.766958>,  <29.076397, 32.813808, 15.801368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145842, 32.421387, 15.766958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120984, -0.065441, 0.990495,
		-0.977354, -0.182370, 0.107330,
		0.173612, -0.981050, -0.086023,
		29.197926, 32.127071, 15.741152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687658, 32.523727, 16.353868>,  <29.076397, 32.813808, 15.801368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687658, 32.523727, 16.353868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974323, 32.267899, 16.242630>,  <29.146322, 32.114399, 16.175886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974323, 32.267899, 16.242630>,  <28.687658, 32.523727, 16.353868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974323, 32.267899, 16.242630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283229, -0.097483, 0.954085,
		-0.637319, -0.762522, 0.111284,
		0.716663, -0.639576, -0.278096,
		29.189322, 32.076027, 16.159201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633623, 31.937006, 16.792141>,  <28.687658, 32.523727, 16.353868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633623, 31.937006, 16.792141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003326, 31.900251, 16.643921>,  <29.225147, 31.878199, 16.554989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003326, 31.900251, 16.643921>,  <28.633623, 31.937006, 16.792141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003326, 31.900251, 16.643921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379432, 0.113783, 0.918197,
		-0.042210, -0.989247, 0.140031,
		0.924257, -0.091889, -0.370549,
		29.280603, 31.872684, 16.532757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948931, 31.454163, 17.182888>,  <28.633623, 31.937006, 16.792141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948931, 31.454163, 17.182888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234587, 31.675291, 17.011126>,  <29.405981, 31.807968, 16.908068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234587, 31.675291, 17.011126>,  <28.948931, 31.454163, 17.182888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234587, 31.675291, 17.011126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481039, 0.058072, 0.874774,
		0.508530, -0.831274, -0.224457,
		0.714142, 0.552821, -0.429407,
		29.448830, 31.841137, 16.882303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542963, 31.182310, 17.381445>,  <28.948931, 31.454163, 17.182888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542963, 31.182310, 17.381445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677082, 31.542480, 17.270588>,  <29.757553, 31.758583, 17.204073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677082, 31.542480, 17.270588>,  <29.542963, 31.182310, 17.381445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677082, 31.542480, 17.270588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314634, 0.170258, 0.933819,
		0.888021, -0.400305, -0.226218,
		0.335297, 0.900427, -0.277142,
		29.777672, 31.812609, 17.187445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166105, 31.202700, 17.791315>,  <29.542963, 31.182310, 17.381445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166105, 31.202700, 17.791315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104631, 31.578896, 17.670082>,  <30.067747, 31.804613, 17.597342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104631, 31.578896, 17.670082>,  <30.166105, 31.202700, 17.791315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104631, 31.578896, 17.670082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319146, 0.337532, 0.885561,
		0.935161, 0.039369, -0.352027,
		-0.153684, 0.940490, -0.303082,
		30.058527, 31.861042, 17.579157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725744, 31.613373, 18.013912>,  <30.166105, 31.202700, 17.791315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725744, 31.613373, 18.013912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442179, 31.891901, 17.969049>,  <30.272039, 32.059017, 17.942131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442179, 31.891901, 17.969049>,  <30.725744, 31.613373, 18.013912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442179, 31.891901, 17.969049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313305, 0.453376, 0.834440,
		0.631886, 0.556407, -0.539565,
		-0.708914, 0.696320, -0.112157,
		30.229504, 32.100796, 17.935402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105911, 32.366970, 17.945528>,  <30.725744, 31.613373, 18.013912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105911, 32.366970, 17.945528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731749, 32.348946, 18.085806>,  <30.507252, 32.338131, 18.169971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731749, 32.348946, 18.085806>,  <31.105911, 32.366970, 17.945528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731749, 32.348946, 18.085806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313011, 0.355753, 0.880604,
		-0.164440, 0.933493, -0.318670,
		-0.935406, -0.045059, 0.350693,
		30.451126, 32.335426, 18.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042664, 32.966599, 18.219320>,  <31.105911, 32.366970, 17.945528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042664, 32.966599, 18.219320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757336, 32.746674, 18.393162>,  <30.586138, 32.614719, 18.497467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757336, 32.746674, 18.393162>,  <31.042664, 32.966599, 18.219320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757336, 32.746674, 18.393162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310338, 0.308213, 0.899275,
		-0.628381, 0.776346, -0.049228,
		-0.713322, -0.549810, 0.434605,
		30.543339, 32.581730, 18.523542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105206, 33.325054, 18.766335>,  <31.042664, 32.966599, 18.219320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105206, 33.325054, 18.766335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900740, 32.993420, 18.856953>,  <30.778061, 32.794437, 18.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900740, 32.993420, 18.856953>,  <31.105206, 33.325054, 18.766335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900740, 32.993420, 18.856953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345311, 0.043267, 0.937490,
		-0.787065, 0.557439, 0.264178,
		-0.511164, -0.829090, 0.226544,
		30.747391, 32.744694, 18.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789471, 33.508926, 19.376514>,  <31.105206, 33.325054, 18.766335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789471, 33.508926, 19.376514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771963, 33.110714, 19.409988>,  <30.761459, 32.871788, 19.430073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771963, 33.110714, 19.409988>,  <30.789471, 33.508926, 19.376514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771963, 33.110714, 19.409988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167502, 0.075268, 0.982994,
		-0.984900, 0.057042, 0.163459,
		-0.043768, -0.995531, 0.083686,
		30.758833, 32.812054, 19.435095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288965, 33.311741, 19.881317>,  <30.789471, 33.508926, 19.376514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288965, 33.311741, 19.881317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522127, 32.988770, 19.844919>,  <30.662025, 32.794987, 19.823080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522127, 32.988770, 19.844919>,  <30.288965, 33.311741, 19.881317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522127, 32.988770, 19.844919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193483, 0.029163, 0.980670,
		-0.789167, -0.589245, 0.173223,
		0.582907, -0.807428, -0.090994,
		30.696999, 32.746540, 19.817621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095682, 32.860764, 20.580885>,  <30.288965, 33.311741, 19.881317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095682, 32.860764, 20.580885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450274, 32.730938, 20.448938>,  <30.663029, 32.653042, 20.369770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450274, 32.730938, 20.448938>,  <30.095682, 32.860764, 20.580885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450274, 32.730938, 20.448938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250399, -0.263039, 0.931725,
		-0.389174, -0.908553, -0.151907,
		0.886479, -0.324565, -0.329868,
		30.716217, 32.633568, 20.349977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194620, 32.254333, 20.966427>,  <30.095682, 32.860764, 20.580885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194620, 32.254333, 20.966427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555304, 32.344845, 20.819065>,  <30.771713, 32.399151, 20.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555304, 32.344845, 20.819065>,  <30.194620, 32.254333, 20.966427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555304, 32.344845, 20.819065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422910, -0.284583, 0.860325,
		0.089832, -0.931563, -0.352306,
		0.901708, 0.226279, -0.368403,
		30.825815, 32.412727, 20.708544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464149, 31.597801, 20.873930>,  <30.194620, 32.254333, 20.966427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464149, 31.597801, 20.873930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744913, 31.879166, 20.918716>,  <30.913372, 32.047985, 20.945589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744913, 31.879166, 20.918716>,  <30.464149, 31.597801, 20.873930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744913, 31.879166, 20.918716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144681, -0.294728, 0.944565,
		0.697416, -0.646801, -0.308643,
		0.701911, 0.703409, 0.111968,
		30.955486, 32.090187, 20.952307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019983, 31.246023, 21.123983>,  <30.464149, 31.597801, 20.873930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019983, 31.246023, 21.123983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072086, 31.627497, 21.232439>,  <31.103348, 31.856380, 21.297512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072086, 31.627497, 21.232439>,  <31.019983, 31.246023, 21.123983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072086, 31.627497, 21.232439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375967, -0.300554, 0.876536,
		0.917432, -0.012238, -0.397705,
		0.130259, 0.953686, 0.271137,
		31.111164, 31.913603, 21.313780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719692, 31.302908, 21.464344>,  <31.019983, 31.246023, 21.123983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719692, 31.302908, 21.464344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485142, 31.612267, 21.560694>,  <31.344412, 31.797882, 21.618504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485142, 31.612267, 21.560694>,  <31.719692, 31.302908, 21.464344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485142, 31.612267, 21.560694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187305, -0.159851, 0.969208,
		0.788086, 0.613438, -0.051128,
		-0.586376, 0.773396, 0.240877,
		31.309229, 31.844286, 21.632957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156311, 31.559378, 21.990501>,  <31.719692, 31.302908, 21.464344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156311, 31.559378, 21.990501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801283, 31.739126, 22.031080>,  <31.588266, 31.846975, 22.055428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801283, 31.739126, 22.031080>,  <32.156311, 31.559378, 21.990501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801283, 31.739126, 22.031080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125092, 0.023160, 0.991875,
		0.443368, 0.893046, -0.076769,
		-0.887568, 0.449369, 0.101445,
		31.535013, 31.873938, 22.061514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273102, 32.063656, 22.418968>,  <32.156311, 31.559378, 21.990501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273102, 32.063656, 22.418968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883055, 31.984861, 22.459661>,  <31.649027, 31.937586, 22.484077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883055, 31.984861, 22.459661>,  <32.273102, 32.063656, 22.418968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883055, 31.984861, 22.459661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086271, 0.085563, 0.992591,
		-0.204228, 0.976666, -0.066440,
		-0.975114, -0.196983, 0.101732,
		31.590521, 31.925766, 22.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994568, 32.576305, 22.821918>,  <32.273102, 32.063656, 22.418968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994568, 32.576305, 22.821918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726664, 32.286053, 22.885002>,  <31.565922, 32.111900, 22.922853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.726664, 32.286053, 22.885002>,  <31.994568, 32.576305, 22.821918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726664, 32.286053, 22.885002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098758, 0.123455, 0.987424,
		-0.735980, 0.676913, -0.011023,
		-0.669761, -0.725636, 0.157710,
		31.525736, 32.068363, 22.932316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773804, 32.816193, 23.314514>,  <31.994568, 32.576305, 22.821918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773804, 32.816193, 23.314514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619713, 32.447460, 23.331617>,  <31.527258, 32.226219, 23.341879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619713, 32.447460, 23.331617>,  <31.773804, 32.816193, 23.314514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619713, 32.447460, 23.331617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099583, 0.004539, 0.995019,
		-0.917433, 0.387567, 0.090050,
		-0.385228, -0.921830, 0.042759,
		31.504145, 32.170910, 23.344444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315266, 32.808197, 23.853384>,  <31.773804, 32.816193, 23.314514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315266, 32.808197, 23.853384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397358, 32.419495, 23.806772>,  <31.446613, 32.186275, 23.778805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397358, 32.419495, 23.806772>,  <31.315266, 32.808197, 23.853384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397358, 32.419495, 23.806772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263904, -0.059710, 0.962699,
		-0.942463, -0.228327, 0.244195,
		0.205230, -0.971752, -0.116531,
		31.458927, 32.127968, 23.771812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116817, 32.546486, 24.471449>,  <31.315266, 32.808197, 23.853384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116817, 32.546486, 24.471449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331488, 32.239815, 24.330492>,  <31.460291, 32.055813, 24.245918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331488, 32.239815, 24.330492>,  <31.116817, 32.546486, 24.471449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331488, 32.239815, 24.330492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381347, -0.152162, 0.911823,
		-0.752697, -0.623738, 0.210709,
		0.536677, -0.766680, -0.352392,
		31.492491, 32.009811, 24.224775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004496, 31.830256, 24.776419>,  <31.116817, 32.546486, 24.471449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004496, 31.830256, 24.776419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383089, 31.842297, 24.647879>,  <31.610245, 31.849522, 24.570755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383089, 31.842297, 24.647879>,  <31.004496, 31.830256, 24.776419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383089, 31.842297, 24.647879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318785, 0.068496, 0.945349,
		0.050461, -0.997197, 0.055237,
		0.946483, 0.030095, -0.321348,
		31.667034, 31.851328, 24.551474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302629, 31.478863, 25.358749>,  <31.004496, 31.830256, 24.776419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302629, 31.478863, 25.358749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597160, 31.635572, 25.138084>,  <31.773878, 31.729599, 25.005686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597160, 31.635572, 25.138084>,  <31.302629, 31.478863, 25.358749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597160, 31.635572, 25.138084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593870, 0.016519, 0.804392,
		0.324254, -0.919912, -0.220501,
		0.736327, 0.391776, -0.551665,
		31.818058, 31.753105, 24.972586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934748, 31.048546, 25.572147>,  <31.302629, 31.478863, 25.358749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934748, 31.048546, 25.572147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062939, 31.388891, 25.405619>,  <32.139854, 31.593098, 25.305700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062939, 31.388891, 25.405619>,  <31.934748, 31.048546, 25.572147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062939, 31.388891, 25.405619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658688, 0.115682, 0.743470,
		0.680753, -0.512493, -0.523380,
		0.320478, 0.850863, -0.416324,
		32.159081, 31.644150, 25.280722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679237, 30.932880, 25.614733>,  <31.934748, 31.048546, 25.572147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679237, 30.932880, 25.614733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590900, 31.321436, 25.579788>,  <32.537899, 31.554569, 25.558821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590900, 31.321436, 25.579788>,  <32.679237, 30.932880, 25.614733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590900, 31.321436, 25.579788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597842, 0.205601, 0.774799,
		0.770592, 0.118883, -0.626143,
		-0.220846, 0.971388, -0.087361,
		32.524647, 31.612852, 25.553579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290627, 31.300659, 25.726133>,  <32.679237, 30.932880, 25.614733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290627, 31.300659, 25.726133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991802, 31.558184, 25.792358>,  <32.812508, 31.712698, 25.832094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991802, 31.558184, 25.792358>,  <33.290627, 31.300659, 25.726133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991802, 31.558184, 25.792358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435974, 0.286498, 0.853139,
		0.501826, 0.709526, -0.494715,
		-0.747059, 0.643810, 0.165563,
		32.767685, 31.751328, 25.842028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595882, 31.942066, 26.051748>,  <33.290627, 31.300659, 25.726133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595882, 31.942066, 26.051748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213184, 31.922161, 26.166401>,  <32.983566, 31.910219, 26.235193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213184, 31.922161, 26.166401>,  <33.595882, 31.942066, 26.051748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213184, 31.922161, 26.166401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250035, 0.363010, 0.897612,
		-0.148716, 0.930456, -0.334867,
		-0.956748, -0.049760, 0.286631,
		32.926159, 31.907232, 26.252390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487381, 32.498409, 26.346317>,  <33.595882, 31.942066, 26.051748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487381, 32.498409, 26.346317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173920, 32.318813, 26.518036>,  <32.985844, 32.211056, 26.621067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173920, 32.318813, 26.518036>,  <33.487381, 32.498409, 26.346317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173920, 32.318813, 26.518036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207494, 0.462195, 0.862161,
		-0.585521, 0.764712, -0.269037,
		-0.783653, -0.448990, 0.429298,
		32.938824, 32.184116, 26.646826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446548, 32.847630, 26.954918>,  <33.487381, 32.498409, 26.346317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446548, 32.847630, 26.954918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209934, 32.533657, 27.028643>,  <33.067966, 32.345272, 27.072878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209934, 32.533657, 27.028643>,  <33.446548, 32.847630, 26.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209934, 32.533657, 27.028643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057801, 0.186722, 0.980711,
		-0.804205, 0.590778, -0.065083,
		-0.591535, -0.784931, 0.184310,
		33.032475, 32.298180, 27.083937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905941, 33.110065, 27.377260>,  <33.446548, 32.847630, 26.954918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905941, 33.110065, 27.377260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899441, 32.712814, 27.423620>,  <32.895538, 32.474464, 27.451437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899441, 32.712814, 27.423620>,  <32.905941, 33.110065, 27.377260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899441, 32.712814, 27.423620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173975, 0.116957, 0.977780,
		-0.984616, -0.004272, -0.174681,
		-0.016253, -0.993128, 0.115901,
		32.894566, 32.414875, 27.458391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382866, 32.996380, 27.844881>,  <32.905941, 33.110065, 27.377260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382866, 32.996380, 27.844881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604683, 32.663925, 27.861357>,  <32.737774, 32.464455, 27.871243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604683, 32.663925, 27.861357>,  <32.382866, 32.996380, 27.844881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604683, 32.663925, 27.861357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249406, -0.118778, 0.961087,
		-0.793899, -0.543240, -0.273157,
		0.554546, -0.831133, 0.041190,
		32.771046, 32.414585, 27.873714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996536, 33.524445, 27.514023>,  <32.382866, 32.996380, 27.844881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996536, 33.524445, 27.514023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782951, 33.722969, 27.787828>,  <31.654800, 33.842083, 27.952112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782951, 33.722969, 27.787828>,  <31.996536, 33.524445, 27.514023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782951, 33.722969, 27.787828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823089, -0.119930, -0.555105,
		-0.193411, -0.859821, 0.472547,
		-0.533963, 0.496311, 0.684513,
		31.622763, 33.871864, 27.993183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406445, 33.099205, 27.542004>,  <31.996536, 33.524445, 27.514023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406445, 33.099205, 27.542004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319220, 33.471092, 27.660717>,  <31.266884, 33.694225, 27.731945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319220, 33.471092, 27.660717>,  <31.406445, 33.099205, 27.542004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319220, 33.471092, 27.660717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678655, 0.074080, -0.730712,
		-0.701338, -0.360755, 0.614801,
		-0.218063, 0.929714, 0.296784,
		31.253801, 33.750008, 27.749752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722462, 33.153931, 27.485346>,  <31.406445, 33.099205, 27.542004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722462, 33.153931, 27.485346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854584, 33.531399, 27.477474>,  <30.933857, 33.757877, 27.472752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854584, 33.531399, 27.477474>,  <30.722462, 33.153931, 27.485346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854584, 33.531399, 27.477474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564341, 0.180736, -0.805514,
		-0.756582, 0.277171, 0.592250,
		0.330306, 0.943669, -0.019678,
		30.953676, 33.814499, 27.471571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114542, 33.402752, 27.241602>,  <30.722462, 33.153931, 27.485346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114542, 33.402752, 27.241602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379318, 33.697823, 27.188427>,  <30.538183, 33.874863, 27.156523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379318, 33.697823, 27.188427>,  <30.114542, 33.402752, 27.241602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379318, 33.697823, 27.188427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472961, 0.273465, -0.837571,
		-0.581500, 0.617296, 0.529908,
		0.661941, 0.737674, -0.132937,
		30.577900, 33.919125, 27.148546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695543, 34.025398, 27.047253>,  <30.114542, 33.402752, 27.241602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695543, 34.025398, 27.047253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069944, 34.076477, 26.916046>,  <30.294584, 34.107124, 26.837322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069944, 34.076477, 26.916046>,  <29.695543, 34.025398, 27.047253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069944, 34.076477, 26.916046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347302, 0.183380, -0.919648,
		-0.057283, 0.974713, 0.215993,
		0.936002, 0.127695, -0.328016,
		30.350744, 34.114784, 26.817642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701462, 34.673668, 26.743185>,  <29.695543, 34.025398, 27.047253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701462, 34.673668, 26.743185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006184, 34.469955, 26.583044>,  <30.189016, 34.347729, 26.486959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006184, 34.469955, 26.583044>,  <29.701462, 34.673668, 26.743185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006184, 34.469955, 26.583044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353914, 0.190435, -0.915685,
		0.542585, 0.839264, -0.035168,
		0.761805, -0.509284, -0.400355,
		30.234726, 34.317169, 26.462938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023920, 35.132889, 26.157082>,  <29.701462, 34.673668, 26.743185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023920, 35.132889, 26.157082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154615, 34.759842, 26.095818>,  <30.233032, 34.536015, 26.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154615, 34.759842, 26.095818>,  <30.023920, 35.132889, 26.157082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154615, 34.759842, 26.095818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235699, 0.076529, -0.968808,
		0.915253, 0.352648, -0.194813,
		0.326740, -0.932621, -0.153162,
		30.252638, 34.480057, 26.049870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230555, 35.143902, 25.540173>,  <30.023920, 35.132889, 26.157082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230555, 35.143902, 25.540173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179762, 34.749561, 25.583948>,  <30.149286, 34.512959, 25.610212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179762, 34.749561, 25.583948>,  <30.230555, 35.143902, 25.540173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179762, 34.749561, 25.583948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242529, -0.076123, -0.967153,
		0.961798, -0.149354, -0.229430,
		-0.126984, -0.985849, 0.109437,
		30.141666, 34.453808, 25.616779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496634, 34.980320, 24.933455>,  <30.230555, 35.143902, 25.540173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496634, 34.980320, 24.933455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305246, 34.657246, 25.071276>,  <30.190414, 34.463402, 25.153969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305246, 34.657246, 25.071276>,  <30.496634, 34.980320, 24.933455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305246, 34.657246, 25.071276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294475, -0.222074, -0.929499,
		0.827255, -0.546199, -0.131587,
		-0.478469, -0.807682, 0.344554,
		30.161705, 34.414940, 25.174643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665234, 34.390755, 24.451067>,  <30.496634, 34.980320, 24.933455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665234, 34.390755, 24.451067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319407, 34.354767, 24.648825>,  <30.111910, 34.333172, 24.767479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319407, 34.354767, 24.648825>,  <30.665234, 34.390755, 24.451067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319407, 34.354767, 24.648825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481613, -0.132423, -0.866322,
		0.143413, -0.987102, 0.071158,
		-0.864570, -0.089971, 0.494392,
		30.060036, 34.327774, 24.797142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413244, 33.770401, 24.194979>,  <30.665234, 34.390755, 24.451067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413244, 33.770401, 24.194979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118608, 33.985691, 24.358807>,  <29.941826, 34.114864, 24.457104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118608, 33.985691, 24.358807>,  <30.413244, 33.770401, 24.194979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118608, 33.985691, 24.358807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549355, -0.122880, -0.826504,
		-0.394517, -0.833795, 0.386189,
		-0.736590, 0.538225, 0.409571,
		29.897631, 34.147160, 24.481678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768515, 33.491356, 23.902769>,  <30.413244, 33.770401, 24.194979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768515, 33.491356, 23.902769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638596, 33.825970, 24.079277>,  <29.560644, 34.026737, 24.185183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638596, 33.825970, 24.079277>,  <29.768515, 33.491356, 23.902769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638596, 33.825970, 24.079277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635719, 0.152349, -0.756737,
		-0.700262, -0.526311, 0.482317,
		-0.324798, 0.836533, 0.441270,
		29.541157, 34.076931, 24.211658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005686, 33.540943, 23.825094>,  <29.768515, 33.491356, 23.902769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005686, 33.540943, 23.825094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112921, 33.921013, 23.888720>,  <29.177261, 34.149055, 23.926895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112921, 33.921013, 23.888720>,  <29.005686, 33.540943, 23.825094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112921, 33.921013, 23.888720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437718, 0.267215, -0.858486,
		-0.858214, 0.160524, 0.487545,
		0.268087, 0.950173, 0.159064,
		29.193348, 34.206066, 23.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375368, 33.969383, 23.750093>,  <29.005686, 33.540943, 23.825094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375368, 33.969383, 23.750093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717728, 34.162865, 23.676912>,  <28.923143, 34.278954, 23.633003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717728, 34.162865, 23.676912>,  <28.375368, 33.969383, 23.750093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717728, 34.162865, 23.676912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333670, 0.246243, -0.909961,
		-0.395098, 0.839880, 0.372155,
		0.855898, 0.483701, -0.182952,
		28.974497, 34.307976, 23.622026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154568, 34.608547, 23.365553>,  <28.375368, 33.969383, 23.750093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154568, 34.608547, 23.365553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545162, 34.570641, 23.288095>,  <28.779518, 34.547897, 23.241621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545162, 34.570641, 23.288095>,  <28.154568, 34.608547, 23.365553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545162, 34.570641, 23.288095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201018, -0.075604, -0.976666,
		0.077917, 0.992624, -0.092876,
		0.976484, -0.094768, -0.193645,
		28.838108, 34.542210, 23.230001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243315, 35.044956, 22.808575>,  <28.154568, 34.608547, 23.365553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243315, 35.044956, 22.808575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543756, 34.780960, 22.802101>,  <28.724022, 34.622562, 22.798216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543756, 34.780960, 22.802101>,  <28.243315, 35.044956, 22.808575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543756, 34.780960, 22.802101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104822, -0.095015, -0.989942,
		0.651810, 0.745245, -0.140547,
		0.751103, -0.659986, -0.016186,
		28.769087, 34.582966, 22.797245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704155, 35.279133, 22.337921>,  <28.243315, 35.044956, 22.808575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704155, 35.279133, 22.337921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779772, 34.888226, 22.376299>,  <28.825142, 34.653679, 22.399324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779772, 34.888226, 22.376299>,  <28.704155, 35.279133, 22.337921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779772, 34.888226, 22.376299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000223, -0.097662, -0.995220,
		0.981969, 0.188161, -0.018244,
		0.189043, -0.977271, 0.095943,
		28.836485, 34.595043, 22.405083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210138, 35.195950, 21.843931>,  <28.704155, 35.279133, 22.337921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210138, 35.195950, 21.843931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046852, 34.836052, 21.905680>,  <28.948881, 34.620113, 21.942730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046852, 34.836052, 21.905680>,  <29.210138, 35.195950, 21.843931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046852, 34.836052, 21.905680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097033, -0.210911, -0.972677,
		0.907715, -0.382080, 0.173401,
		-0.408213, -0.899739, 0.154373,
		28.924389, 34.566132, 21.951992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693110, 34.787273, 21.500610>,  <29.210138, 35.195950, 21.843931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693110, 34.787273, 21.500610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353943, 34.578030, 21.535002>,  <29.150442, 34.452484, 21.555637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353943, 34.578030, 21.535002>,  <29.693110, 34.787273, 21.500610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353943, 34.578030, 21.535002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027088, -0.204731, -0.978444,
		0.529434, -0.827311, 0.187765,
		-0.847919, -0.523107, 0.085981,
		29.099567, 34.421097, 21.560797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848852, 34.096569, 21.407690>,  <29.693110, 34.787273, 21.500610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848852, 34.096569, 21.407690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470510, 34.186264, 21.313820>,  <29.243505, 34.240082, 21.257498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470510, 34.186264, 21.313820>,  <29.848852, 34.096569, 21.407690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470510, 34.186264, 21.313820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175868, -0.253628, -0.951180,
		-0.272820, -0.940950, 0.200458,
		-0.945854, 0.224247, -0.234677,
		29.186754, 34.253536, 21.243418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633261, 33.589870, 20.946634>,  <29.848852, 34.096569, 21.407690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633261, 33.589870, 20.946634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377007, 33.893089, 20.897720>,  <29.223253, 34.075020, 20.868372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377007, 33.893089, 20.897720>,  <29.633261, 33.589870, 20.946634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377007, 33.893089, 20.897720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035464, -0.129874, -0.990896,
		-0.767025, -0.639141, 0.056319,
		-0.640637, 0.758045, -0.122283,
		29.184816, 34.120502, 20.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218645, 33.361389, 20.384977>,  <29.633261, 33.589870, 20.946634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218645, 33.361389, 20.384977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175749, 33.758701, 20.402409>,  <29.150011, 33.997089, 20.412867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175749, 33.758701, 20.402409>,  <29.218645, 33.361389, 20.384977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175749, 33.758701, 20.402409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241526, 0.016492, -0.970254,
		-0.964450, -0.114576, 0.238134,
		-0.107241, 0.993278, 0.043579,
		29.143576, 34.056686, 20.415482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484123, 33.559677, 20.158882>,  <29.218645, 33.361389, 20.384977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484123, 33.559677, 20.158882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764868, 33.831516, 20.073524>,  <28.933315, 33.994621, 20.022310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764868, 33.831516, 20.073524>,  <28.484123, 33.559677, 20.158882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764868, 33.831516, 20.073524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225292, -0.072408, -0.971597,
		-0.675748, 0.730002, 0.102288,
		0.701861, 0.679599, -0.213393,
		28.975426, 34.035397, 20.009506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159781, 34.104824, 19.836250>,  <28.484123, 33.559677, 20.158882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159781, 34.104824, 19.836250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538572, 34.141804, 19.713171>,  <28.765848, 34.163994, 19.639322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538572, 34.141804, 19.713171>,  <28.159781, 34.104824, 19.836250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538572, 34.141804, 19.713171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307413, -0.017686, -0.951412,
		-0.093403, 0.995560, 0.011673,
		0.946981, 0.092453, -0.307700,
		28.822666, 34.169540, 19.620861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148254, 34.680065, 19.326820>,  <28.159781, 34.104824, 19.836250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148254, 34.680065, 19.326820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460653, 34.435516, 19.275805>,  <28.648092, 34.288788, 19.245195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460653, 34.435516, 19.275805>,  <28.148254, 34.680065, 19.326820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460653, 34.435516, 19.275805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166206, -0.006615, -0.986069,
		0.602013, 0.791314, -0.106780,
		0.780997, -0.611374, -0.127539,
		28.694952, 34.252106, 19.237543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556080, 34.996292, 18.929445>,  <28.148254, 34.680065, 19.326820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556080, 34.996292, 18.929445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651264, 34.610981, 18.879700>,  <28.708374, 34.379795, 18.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651264, 34.610981, 18.879700>,  <28.556080, 34.996292, 18.929445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651264, 34.610981, 18.879700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005366, 0.129343, -0.991585,
		0.971260, 0.235291, 0.035948,
		0.237961, -0.963280, -0.124363,
		28.722652, 34.321999, 18.842390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054007, 35.022099, 18.523071>,  <28.556080, 34.996292, 18.929445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054007, 35.022099, 18.523071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875872, 34.664478, 18.503658>,  <28.768991, 34.449905, 18.492010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875872, 34.664478, 18.503658>,  <29.054007, 35.022099, 18.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875872, 34.664478, 18.503658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002765, 0.052831, -0.998600,
		0.895359, -0.444848, -0.021055,
		-0.445337, -0.894047, -0.048533,
		28.742271, 34.396263, 18.489098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504578, 34.726700, 17.938261>,  <29.054007, 35.022099, 18.523071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504578, 34.726700, 17.938261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200678, 34.467236, 17.956240>,  <29.018337, 34.311558, 17.967028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200678, 34.467236, 17.956240>,  <29.504578, 34.726700, 17.938261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200678, 34.467236, 17.956240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119250, 0.071049, -0.990319,
		0.639186, -0.757755, -0.131332,
		-0.759750, -0.648659, 0.044949,
		28.972754, 34.272636, 17.969725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625513, 34.206188, 17.599463>,  <29.504578, 34.726700, 17.938261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625513, 34.206188, 17.599463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225529, 34.202717, 17.600080>,  <28.985538, 34.200634, 17.600451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225529, 34.202717, 17.600080>,  <29.625513, 34.206188, 17.599463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225529, 34.202717, 17.600080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001848, 0.035223, -0.999378,
		0.008611, -0.999342, -0.035238,
		-0.999961, -0.008670, 0.001544,
		28.925541, 34.200115, 17.600544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398672, 33.859821, 16.927557>,  <29.625513, 34.206188, 17.599463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398672, 33.859821, 16.927557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065458, 34.050076, 17.040573>,  <28.865530, 34.164227, 17.108383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065458, 34.050076, 17.040573>,  <29.398672, 33.859821, 16.927557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065458, 34.050076, 17.040573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223921, 0.177126, -0.958377,
		-0.505880, -0.861627, -0.041048,
		-0.833033, 0.475632, 0.282541,
		28.815548, 34.192764, 17.125336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936806, 33.639847, 16.436996>,  <29.398672, 33.859821, 16.927557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936806, 33.639847, 16.436996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772833, 33.963463, 16.605476>,  <28.674450, 34.157631, 16.706564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772833, 33.963463, 16.605476>,  <28.936806, 33.639847, 16.436996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772833, 33.963463, 16.605476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275031, 0.330651, -0.902789,
		-0.869663, -0.485925, 0.086967,
		-0.409932, 0.809041, 0.421199,
		28.649853, 34.206177, 16.731836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344568, 33.885464, 15.956244>,  <28.936806, 33.639847, 16.436996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344568, 33.885464, 15.956244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411888, 34.205421, 16.186670>,  <28.452280, 34.397396, 16.324926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411888, 34.205421, 16.186670>,  <28.344568, 33.885464, 15.956244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411888, 34.205421, 16.186670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177291, 0.599434, -0.780542,
		-0.969661, 0.029236, 0.242699,
		0.168302, 0.799890, 0.576065,
		28.462379, 34.445389, 16.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704145, 34.290230, 15.835320>,  <28.344568, 33.885464, 15.956244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704145, 34.290230, 15.835320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971493, 34.547169, 15.985349>,  <28.131901, 34.701332, 16.075365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971493, 34.547169, 15.985349>,  <27.704145, 34.290230, 15.835320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971493, 34.547169, 15.985349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168150, 0.621666, -0.765021,
		-0.724575, 0.448248, 0.523512,
		0.668369, 0.642343, 0.375071,
		28.172003, 34.739872, 16.097870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366470, 34.900597, 15.934381>,  <27.704145, 34.290230, 15.835320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366470, 34.900597, 15.934381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756105, 34.988667, 15.913674>,  <27.989885, 35.041508, 15.901250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756105, 34.988667, 15.913674>,  <27.366470, 34.900597, 15.934381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756105, 34.988667, 15.913674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193995, 0.695637, -0.691705,
		-0.116282, 0.683823, 0.720323,
		0.974087, 0.220172, -0.051768,
		28.048332, 35.054718, 15.898144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430676, 35.737900, 15.809299>,  <27.366470, 34.900597, 15.934381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430676, 35.737900, 15.809299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759754, 35.549492, 15.681979>,  <27.957201, 35.436447, 15.605588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759754, 35.549492, 15.681979>,  <27.430676, 35.737900, 15.809299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759754, 35.549492, 15.681979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006154, 0.552495, -0.833493,
		0.568449, 0.687670, 0.451637,
		0.822695, -0.471019, -0.318298,
		28.006563, 35.408188, 15.586490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859827, 36.275833, 15.700905>,  <27.430676, 35.737900, 15.809299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859827, 36.275833, 15.700905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021711, 35.972382, 15.496674>,  <28.118841, 35.790310, 15.374135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021711, 35.972382, 15.496674>,  <27.859827, 36.275833, 15.700905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021711, 35.972382, 15.496674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175379, 0.612377, -0.770867,
		0.897469, 0.222434, 0.380884,
		0.404711, -0.758629, -0.510579,
		28.143126, 35.744793, 15.343500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419128, 36.562477, 15.445615>,  <27.859827, 36.275833, 15.700905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419128, 36.562477, 15.445615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352396, 36.235771, 15.224683>,  <28.312357, 36.039749, 15.092124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352396, 36.235771, 15.224683>,  <28.419128, 36.562477, 15.445615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352396, 36.235771, 15.224683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038317, 0.554387, -0.831377,
		0.985241, -0.159862, -0.061193,
		-0.166830, -0.816761, -0.552330,
		28.302347, 35.990742, 15.058984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999083, 36.499149, 15.030407>,  <28.419128, 36.562477, 15.445615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999083, 36.499149, 15.030407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705639, 36.303379, 14.841820>,  <28.529573, 36.185917, 14.728667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705639, 36.303379, 14.841820>,  <28.999083, 36.499149, 15.030407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705639, 36.303379, 14.841820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222135, 0.482960, -0.846998,
		0.642241, -0.726095, -0.245586,
		-0.733609, -0.489424, -0.471468,
		28.485556, 36.156551, 14.700379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419708, 36.823265, 15.436119>,  <28.999083, 36.499149, 15.030407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419708, 36.823265, 15.436119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503483, 37.147015, 15.216649>,  <29.553747, 37.341267, 15.084968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503483, 37.147015, 15.216649>,  <29.419708, 36.823265, 15.436119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503483, 37.147015, 15.216649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267629, 0.492245, 0.828293,
		0.940485, -0.320314, -0.113520,
		0.209434, 0.809379, -0.548674,
		29.566313, 37.389828, 15.052047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072771, 36.940781, 15.587630>,  <29.419708, 36.823265, 15.436119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072771, 36.940781, 15.587630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885616, 37.277565, 15.480159>,  <29.773323, 37.479633, 15.415676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885616, 37.277565, 15.480159>,  <30.072771, 36.940781, 15.587630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885616, 37.277565, 15.480159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238594, 0.413055, 0.878896,
		0.850973, 0.347118, -0.394149,
		-0.467886, 0.841959, -0.268679,
		29.745251, 37.530151, 15.399555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569603, 37.387394, 15.736969>,  <30.072771, 36.940781, 15.587630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569603, 37.387394, 15.736969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217167, 37.570698, 15.690194>,  <30.005705, 37.680679, 15.662129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217167, 37.570698, 15.690194>,  <30.569603, 37.387394, 15.736969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217167, 37.570698, 15.690194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116786, 0.450412, 0.885150,
		0.458298, 0.766242, -0.450373,
		-0.881092, 0.458260, -0.116937,
		29.952839, 37.708176, 15.655113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680038, 38.019905, 15.961639>,  <30.569603, 37.387394, 15.736969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680038, 38.019905, 15.961639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280300, 38.017857, 15.975966>,  <30.040457, 38.016628, 15.984563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280300, 38.017857, 15.975966>,  <30.680038, 38.019905, 15.961639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280300, 38.017857, 15.975966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027369, 0.540423, 0.840948,
		-0.023667, 0.841378, -0.539929,
		-0.999345, -0.005126, 0.035818,
		29.980497, 38.016319, 15.986712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440620, 38.690464, 16.019041>,  <30.680038, 38.019905, 15.961639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440620, 38.690464, 16.019041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167093, 38.446228, 16.178825>,  <30.002977, 38.299686, 16.274696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167093, 38.446228, 16.178825>,  <30.440620, 38.690464, 16.019041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167093, 38.446228, 16.178825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055441, 0.589365, 0.805962,
		-0.727541, 0.528987, -0.436872,
		-0.683820, -0.610591, 0.399460,
		29.961946, 38.263050, 16.298664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887310, 39.048874, 16.361189>,  <30.440620, 38.690464, 16.019041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887310, 39.048874, 16.361189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853205, 38.677483, 16.505774>,  <29.832741, 38.454647, 16.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853205, 38.677483, 16.505774>,  <29.887310, 39.048874, 16.361189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853205, 38.677483, 16.505774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027083, 0.360490, 0.932370,
		-0.995990, 0.089287, -0.005591,
		-0.085264, -0.928480, 0.361463,
		29.827625, 38.398937, 16.614212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457415, 39.106258, 16.929081>,  <29.887310, 39.048874, 16.361189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457415, 39.106258, 16.929081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648849, 38.760647, 16.991570>,  <29.763710, 38.553280, 17.029062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648849, 38.760647, 16.991570>,  <29.457415, 39.106258, 16.929081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648849, 38.760647, 16.991570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014136, 0.170316, 0.985288,
		-0.877926, -0.473755, 0.069297,
		0.478588, -0.864030, 0.156222,
		29.792425, 38.501438, 17.038437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138803, 38.747227, 17.447800>,  <29.457415, 39.106258, 16.929081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138803, 38.747227, 17.447800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495441, 38.566101, 17.446276>,  <29.709425, 38.457424, 17.445362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495441, 38.566101, 17.446276>,  <29.138803, 38.747227, 17.447800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495441, 38.566101, 17.446276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054995, -0.116629, 0.991652,
		-0.449483, -0.883942, -0.128888,
		0.891594, -0.452819, -0.003810,
		29.762920, 38.430256, 17.445133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092690, 38.224445, 17.843163>,  <29.138803, 38.747227, 17.447800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092690, 38.224445, 17.843163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490854, 38.214828, 17.806110>,  <29.729753, 38.209057, 17.783880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490854, 38.214828, 17.806110>,  <29.092690, 38.224445, 17.843163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490854, 38.214828, 17.806110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072839, -0.437457, 0.896285,
		-0.062070, -0.898918, -0.433698,
		0.995410, -0.024042, -0.092629,
		29.789478, 38.207615, 17.778322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223288, 37.501820, 17.805977>,  <29.092690, 38.224445, 17.843163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223288, 37.501820, 17.805977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543573, 37.711239, 17.922424>,  <29.735744, 37.836891, 17.992292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543573, 37.711239, 17.922424>,  <29.223288, 37.501820, 17.805977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543573, 37.711239, 17.922424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080414, -0.387630, 0.918301,
		0.593624, -0.758707, -0.268280,
		0.800715, 0.523552, 0.291117,
		29.783789, 37.868305, 18.009760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594772, 36.957745, 18.237246>,  <29.223288, 37.501820, 17.805977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594772, 36.957745, 18.237246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763323, 37.308136, 18.331144>,  <29.864452, 37.518372, 18.387484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763323, 37.308136, 18.331144>,  <29.594772, 36.957745, 18.237246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763323, 37.308136, 18.331144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008775, -0.262775, 0.964817,
		0.906844, -0.404490, -0.118414,
		0.421375, 0.875978, 0.234747,
		29.889736, 37.570930, 18.401567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193224, 36.843391, 18.683672>,  <29.594772, 36.957745, 18.237246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193224, 36.843391, 18.683672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120373, 37.226456, 18.772858>,  <30.076662, 37.456295, 18.826368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120373, 37.226456, 18.772858>,  <30.193224, 36.843391, 18.683672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120373, 37.226456, 18.772858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017824, -0.223502, 0.974541,
		0.983113, 0.181467, 0.023637,
		-0.182130, 0.957662, 0.222962,
		30.065733, 37.513756, 18.839746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631998, 36.990444, 19.140089>,  <30.193224, 36.843391, 18.683672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631998, 36.990444, 19.140089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351593, 37.271843, 19.186874>,  <30.183350, 37.440681, 19.214945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.351593, 37.271843, 19.186874>,  <30.631998, 36.990444, 19.140089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351593, 37.271843, 19.186874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061869, -0.223380, 0.972766,
		0.710462, 0.674683, 0.200116,
		-0.701011, 0.703494, 0.116962,
		30.141291, 37.482891, 19.221962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754564, 37.306530, 19.736582>,  <30.631998, 36.990444, 19.140089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754564, 37.306530, 19.736582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370977, 37.402893, 19.676790>,  <30.140825, 37.460712, 19.640915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370977, 37.402893, 19.676790>,  <30.754564, 37.306530, 19.736582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370977, 37.402893, 19.676790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217894, -0.288930, 0.932224,
		0.181394, 0.926543, 0.329567,
		-0.958967, 0.240910, -0.149478,
		30.083286, 37.475166, 19.631947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615274, 37.676273, 20.224728>,  <30.754564, 37.306530, 19.736582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615274, 37.676273, 20.224728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241892, 37.581551, 20.116966>,  <30.017862, 37.524715, 20.052309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241892, 37.581551, 20.116966>,  <30.615274, 37.676273, 20.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241892, 37.581551, 20.116966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226328, -0.193824, 0.954572,
		-0.278266, 0.952027, 0.127331,
		-0.933458, -0.236806, -0.269404,
		29.961855, 37.510509, 20.036144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102301, 38.240337, 20.620394>,  <30.615274, 37.676273, 20.224728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102301, 38.240337, 20.620394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868599, 37.926075, 20.539022>,  <29.728378, 37.737518, 20.490200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868599, 37.926075, 20.539022>,  <30.102301, 38.240337, 20.620394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868599, 37.926075, 20.539022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141523, -0.148191, 0.978780,
		-0.799135, 0.600647, -0.024608,
		-0.584255, -0.785661, -0.203430,
		29.693323, 37.690376, 20.477993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507883, 38.404694, 20.925308>,  <30.102301, 38.240337, 20.620394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507883, 38.404694, 20.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551842, 38.009472, 20.882097>,  <29.578217, 37.772339, 20.856171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551842, 38.009472, 20.882097>,  <29.507883, 38.404694, 20.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551842, 38.009472, 20.882097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389956, -0.142830, 0.909689,
		-0.914252, -0.057846, -0.400994,
		0.109896, -0.988055, -0.108025,
		29.584810, 37.713055, 20.849689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992655, 38.068848, 21.282078>,  <29.507883, 38.404694, 20.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992655, 38.068848, 21.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223694, 37.746952, 21.227264>,  <29.362318, 37.553814, 21.194376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223694, 37.746952, 21.227264>,  <28.992655, 38.068848, 21.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223694, 37.746952, 21.227264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170221, -0.282910, 0.943921,
		-0.798377, -0.521880, -0.300391,
		0.577597, -0.804738, -0.137034,
		29.396973, 37.505531, 21.186153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687408, 37.560257, 21.625380>,  <28.992655, 38.068848, 21.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687408, 37.560257, 21.625380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050957, 37.400700, 21.576654>,  <29.269085, 37.304966, 21.547419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050957, 37.400700, 21.576654>,  <28.687408, 37.560257, 21.625380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050957, 37.400700, 21.576654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003502, -0.299356, 0.954135,
		-0.417065, -0.866758, -0.273473,
		0.908870, -0.398894, -0.121815,
		29.323618, 37.281033, 21.540110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667311, 36.896507, 21.880220>,  <28.687408, 37.560257, 21.625380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667311, 36.896507, 21.880220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062748, 36.947582, 21.912165>,  <29.300011, 36.978226, 21.931332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062748, 36.947582, 21.912165>,  <28.667311, 36.896507, 21.880220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062748, 36.947582, 21.912165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037466, -0.305091, 0.951586,
		0.145870, -0.943724, -0.296827,
		0.988594, 0.127687, 0.079861,
		29.359325, 36.985889, 21.936123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905287, 36.287483, 22.269529>,  <28.667311, 36.896507, 21.880220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905287, 36.287483, 22.269529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177303, 36.577881, 22.310465>,  <29.340513, 36.752121, 22.335026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177303, 36.577881, 22.310465>,  <28.905287, 36.287483, 22.269529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177303, 36.577881, 22.310465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135903, -0.261985, 0.955455,
		0.720467, -0.635842, -0.276826,
		0.680042, 0.725995, 0.102339,
		29.381315, 36.795681, 22.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362556, 35.967339, 22.631903>,  <28.905287, 36.287483, 22.269529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362556, 35.967339, 22.631903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430559, 36.358776, 22.678289>,  <29.471361, 36.593639, 22.706121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430559, 36.358776, 22.678289>,  <29.362556, 35.967339, 22.631903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430559, 36.358776, 22.678289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299698, -0.163450, 0.939928,
		0.938764, -0.125041, -0.321071,
		0.170009, 0.978595, 0.115966,
		29.481562, 36.652355, 22.713079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064516, 36.015278, 23.004009>,  <29.362556, 35.967339, 22.631903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064516, 36.015278, 23.004009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902382, 36.372917, 23.080208>,  <29.805101, 36.587502, 23.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902382, 36.372917, 23.080208>,  <30.064516, 36.015278, 23.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902382, 36.372917, 23.080208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363700, -0.033459, 0.930915,
		0.838704, 0.446619, -0.311621,
		-0.405338, 0.894099, 0.190497,
		29.780781, 36.641148, 23.137358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621309, 36.515362, 23.168123>,  <30.064516, 36.015278, 23.004009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621309, 36.515362, 23.168123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274422, 36.627991, 23.332392>,  <30.066290, 36.695568, 23.430952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274422, 36.627991, 23.332392>,  <30.621309, 36.515362, 23.168123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274422, 36.627991, 23.332392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392809, -0.119975, 0.911761,
		0.305996, 0.952010, -0.006559,
		-0.867218, 0.281572, 0.410670,
		30.014256, 36.712463, 23.455593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808109, 36.798607, 23.855270>,  <30.621309, 36.515362, 23.168123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808109, 36.798607, 23.855270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408777, 36.780991, 23.870245>,  <30.169178, 36.770420, 23.879229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408777, 36.780991, 23.870245>,  <30.808109, 36.798607, 23.855270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408777, 36.780991, 23.870245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033488, 0.087160, 0.995631,
		-0.047113, 0.995220, -0.085540,
		-0.998328, -0.044042, 0.037435,
		30.109280, 36.767776, 23.881475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605104, 37.276600, 24.345839>,  <30.808109, 36.798607, 23.855270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605104, 37.276600, 24.345839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276913, 37.050068, 24.314646>,  <30.079998, 36.914146, 24.295931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276913, 37.050068, 24.314646>,  <30.605104, 37.276600, 24.345839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276913, 37.050068, 24.314646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198166, 0.153800, 0.968027,
		-0.536231, 0.809699, -0.238418,
		-0.820479, -0.566333, -0.077982,
		30.030769, 36.880169, 24.291250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993896, 37.610630, 24.612679>,  <30.605104, 37.276600, 24.345839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993896, 37.610630, 24.612679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960136, 37.213486, 24.646406>,  <29.939880, 36.975201, 24.666643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960136, 37.213486, 24.646406>,  <29.993896, 37.610630, 24.612679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960136, 37.213486, 24.646406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009027, 0.085380, 0.996308,
		-0.996391, 0.083326, -0.016169,
		-0.084399, -0.992858, 0.084320,
		29.934816, 36.915627, 24.671701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649670, 37.512569, 25.352341>,  <29.993896, 37.610630, 24.612679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649670, 37.512569, 25.352341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767794, 37.149441, 25.233238>,  <29.838667, 36.931564, 25.161776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.767794, 37.149441, 25.233238>,  <29.649670, 37.512569, 25.352341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767794, 37.149441, 25.233238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307878, -0.204608, 0.929165,
		-0.904436, -0.366063, 0.219074,
		0.295309, -0.907818, -0.297757,
		29.856386, 36.877094, 25.143911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267773, 36.980652, 25.722811>,  <29.649670, 37.512569, 25.352341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267773, 36.980652, 25.722811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623728, 36.851402, 25.594006>,  <29.837301, 36.773853, 25.516722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623728, 36.851402, 25.594006>,  <29.267773, 36.980652, 25.722811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623728, 36.851402, 25.594006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224654, -0.303939, 0.925825,
		-0.397034, -0.896219, -0.197878,
		0.889885, -0.323130, -0.322014,
		29.890694, 36.754463, 25.497402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455875, 36.383610, 26.133993>,  <29.267773, 36.980652, 25.722811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455875, 36.383610, 26.133993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791651, 36.539181, 25.982161>,  <29.993116, 36.632523, 25.891062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791651, 36.539181, 25.982161>,  <29.455875, 36.383610, 26.133993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791651, 36.539181, 25.982161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456167, -0.124613, 0.881126,
		0.295392, -0.912803, -0.282020,
		0.839437, 0.388926, -0.379581,
		30.043482, 36.655857, 25.868286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974596, 35.993439, 26.495737>,  <29.455875, 36.383610, 26.133993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974596, 35.993439, 26.495737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183912, 36.312843, 26.376711>,  <30.309502, 36.504486, 26.305296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183912, 36.312843, 26.376711>,  <29.974596, 35.993439, 26.495737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183912, 36.312843, 26.376711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413107, 0.067704, 0.908163,
		0.745326, -0.598158, -0.294443,
		0.523290, 0.798514, -0.297564,
		30.340899, 36.552399, 26.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616127, 35.846432, 26.625452>,  <29.974596, 35.993439, 26.495737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616127, 35.846432, 26.625452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670097, 36.239822, 26.577166>,  <30.702478, 36.475857, 26.548193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670097, 36.239822, 26.577166>,  <30.616127, 35.846432, 26.625452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670097, 36.239822, 26.577166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582058, 0.019928, 0.812903,
		0.801875, -0.179945, -0.569751,
		0.134923, 0.983475, -0.120718,
		30.710575, 36.534866, 26.540951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317518, 35.988174, 26.824778>,  <30.616127, 35.846432, 26.625452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317518, 35.988174, 26.824778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132061, 36.342438, 26.834942>,  <31.020786, 36.554996, 26.841040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132061, 36.342438, 26.834942>,  <31.317518, 35.988174, 26.824778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132061, 36.342438, 26.834942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315537, 0.138251, 0.938788,
		0.827933, 0.443278, -0.343557,
		-0.463641, 0.885659, 0.025408,
		30.992970, 36.608135, 26.842564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693579, 36.395645, 27.171492>,  <31.317518, 35.988174, 26.824778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693579, 36.395645, 27.171492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378923, 36.638794, 27.214741>,  <31.190130, 36.784683, 27.240690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378923, 36.638794, 27.214741>,  <31.693579, 36.395645, 27.171492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378923, 36.638794, 27.214741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332985, 0.270225, 0.903382,
		0.519925, 0.746638, -0.414982,
		-0.786638, 0.607873, 0.108122,
		31.142933, 36.821156, 27.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986618, 37.146580, 27.434013>,  <31.693579, 36.395645, 27.171492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986618, 37.146580, 27.434013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607351, 37.092945, 27.549252>,  <31.379791, 37.060764, 27.618395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607351, 37.092945, 27.549252>,  <31.986618, 37.146580, 27.434013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607351, 37.092945, 27.549252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234003, 0.318747, 0.918500,
		-0.214986, 0.938308, -0.270850,
		-0.948169, -0.134085, 0.288093,
		31.322901, 37.052719, 27.635679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832878, 37.740845, 27.817823>,  <31.986618, 37.146580, 27.434013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832878, 37.740845, 27.817823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560995, 37.467010, 27.923155>,  <31.397865, 37.302711, 27.986355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560995, 37.467010, 27.923155>,  <31.832878, 37.740845, 27.817823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560995, 37.467010, 27.923155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147981, 0.223640, 0.963372,
		-0.718401, 0.693779, -0.050704,
		-0.679707, -0.684584, 0.263330,
		31.357082, 37.261635, 28.002153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363281, 38.136379, 28.245087>,  <31.832878, 37.740845, 27.817823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363281, 38.136379, 28.245087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301226, 37.747047, 28.312693>,  <31.263992, 37.513451, 28.353256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301226, 37.747047, 28.312693>,  <31.363281, 38.136379, 28.245087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301226, 37.747047, 28.312693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013338, 0.169008, 0.985524,
		-0.987802, 0.155148, -0.013238,
		-0.155140, -0.973327, 0.169016,
		31.254684, 37.455048, 28.363398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710241, 38.122379, 28.583681>,  <31.363281, 38.136379, 28.245087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710241, 38.122379, 28.583681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906860, 37.785133, 28.670897>,  <31.024832, 37.582787, 28.723227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906860, 37.785133, 28.670897>,  <30.710241, 38.122379, 28.583681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906860, 37.785133, 28.670897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072227, 0.288982, 0.954606,
		-0.867850, -0.453488, 0.202944,
		0.491549, -0.843112, 0.218039,
		31.054325, 37.532200, 28.736309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431227, 37.927700, 29.113848>,  <30.710241, 38.122379, 28.583681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431227, 37.927700, 29.113848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760992, 37.702061, 29.132299>,  <30.958851, 37.566677, 29.143370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760992, 37.702061, 29.132299>,  <30.431227, 37.927700, 29.113848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760992, 37.702061, 29.132299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065201, 0.175616, 0.982297,
		-0.562218, -0.806813, 0.181560,
		0.824415, -0.564103, 0.046130,
		31.008316, 37.532829, 29.146139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299810, 37.530361, 29.651869>,  <30.431227, 37.927700, 29.113848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299810, 37.530361, 29.651869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691366, 37.497662, 29.576933>,  <30.926300, 37.478043, 29.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691366, 37.497662, 29.576933>,  <30.299810, 37.530361, 29.651869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691366, 37.497662, 29.576933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203778, 0.318954, 0.925604,
		-0.015915, -0.944238, 0.328879,
		0.978888, -0.081749, -0.187339,
		30.985033, 37.473137, 29.520731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589991, 37.131016, 30.216299>,  <30.299810, 37.530361, 29.651869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589991, 37.131016, 30.216299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838217, 37.396645, 30.049490>,  <30.987152, 37.556023, 29.949404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838217, 37.396645, 30.049490>,  <30.589991, 37.131016, 30.216299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838217, 37.396645, 30.049490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114547, 0.449340, 0.885987,
		0.775743, -0.597582, 0.202778,
		0.620566, 0.664070, -0.417024,
		31.024387, 37.595867, 29.924383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007433, 36.806412, 30.538673>,  <30.589991, 37.131016, 30.216299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007433, 36.806412, 30.538673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233519, 36.510998, 30.391651>,  <30.369171, 36.333748, 30.303438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233519, 36.510998, 30.391651>,  <30.007433, 36.806412, 30.538673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233519, 36.510998, 30.391651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448354, -0.098987, 0.888358,
		-0.692466, -0.666910, 0.275175,
		0.565216, -0.738534, -0.367557,
		30.403084, 36.289436, 30.281384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678354, 36.808846, 30.960594>,  <30.007433, 36.806412, 30.538673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678354, 36.808846, 30.960594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711956, 36.488632, 30.723244>,  <30.732117, 36.296505, 30.580833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711956, 36.488632, 30.723244>,  <30.678354, 36.808846, 30.960594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711956, 36.488632, 30.723244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843777, -0.259624, 0.469719,
		-0.530079, -0.540134, 0.653661,
		0.084005, -0.800532, -0.593374,
		30.737158, 36.248474, 30.545231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485235, 36.194778, 31.308966>,  <30.678354, 36.808846, 30.960594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485235, 36.194778, 31.308966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786810, 36.191750, 31.046204>,  <30.967754, 36.189934, 30.888546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786810, 36.191750, 31.046204>,  <30.485235, 36.194778, 31.308966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786810, 36.191750, 31.046204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615524, -0.341309, 0.710379,
		-0.229585, -0.939920, -0.252666,
		0.753937, -0.007570, -0.656903,
		31.012991, 36.189480, 30.849133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739063, 35.592369, 31.446434>,  <30.485235, 36.194778, 31.308966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739063, 35.592369, 31.446434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036591, 35.787758, 31.263948>,  <31.215107, 35.904991, 31.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036591, 35.787758, 31.263948>,  <30.739063, 35.592369, 31.446434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036591, 35.787758, 31.263948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666505, -0.490976, 0.560993,
		0.050036, -0.721347, -0.690764,
		0.743820, 0.488468, -0.456215,
		31.259737, 35.934299, 31.127085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175510, 35.046749, 31.136093>,  <30.739063, 35.592369, 31.446434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175510, 35.046749, 31.136093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334505, 35.394146, 31.254570>,  <31.429901, 35.602585, 31.325657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334505, 35.394146, 31.254570>,  <31.175510, 35.046749, 31.136093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334505, 35.394146, 31.254570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660894, -0.494885, 0.564188,
		0.636573, -0.028504, -0.770689,
		0.397484, 0.868491, 0.296193,
		31.453751, 35.654694, 31.343428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892653, 35.065815, 30.995564>,  <31.175510, 35.046749, 31.136093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892653, 35.065815, 30.995564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827072, 35.299740, 31.313334>,  <31.787724, 35.440094, 31.503996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827072, 35.299740, 31.313334>,  <31.892653, 35.065815, 30.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827072, 35.299740, 31.313334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778338, -0.418082, 0.468398,
		0.606062, 0.695127, -0.386638,
		-0.163950, 0.584813, 0.794427,
		31.777887, 35.475185, 31.551662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045361, 34.508186, 31.433966>,  <31.892653, 35.065815, 30.995564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045361, 34.508186, 31.433966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073124, 34.472889, 31.831436>,  <32.089783, 34.451710, 32.069920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073124, 34.472889, 31.831436>,  <32.045361, 34.508186, 31.433966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073124, 34.472889, 31.831436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744104, -0.658864, -0.110484,
		0.664448, 0.747069, 0.019929,
		0.069409, -0.088241, 0.993678,
		32.093948, 34.446415, 32.129539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665176, 34.763428, 31.556107>,  <32.045361, 34.508186, 31.433966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665176, 34.763428, 31.556107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545219, 34.493717, 31.826046>,  <32.473248, 34.331890, 31.988008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545219, 34.493717, 31.826046>,  <32.665176, 34.763428, 31.556107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545219, 34.493717, 31.826046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850919, -0.508876, -0.130312,
		0.431279, 0.535161, 0.726362,
		-0.299890, -0.674276, 0.674846,
		32.455254, 34.291435, 32.028500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092304, 34.584560, 32.256729>,  <32.665176, 34.763428, 31.556107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092304, 34.584560, 32.256729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880016, 34.254246, 32.180389>,  <32.752644, 34.056057, 32.134586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880016, 34.254246, 32.180389>,  <33.092304, 34.584560, 32.256729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880016, 34.254246, 32.180389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840058, -0.542389, 0.010801,
		-0.112433, -0.154591, 0.981560,
		-0.530717, -0.825782, -0.190848,
		32.720802, 34.006512, 32.123135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065701, 34.098999, 32.835506>,  <33.092304, 34.584560, 32.256729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065701, 34.098999, 32.835506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031269, 33.923328, 32.477798>,  <33.010612, 33.817924, 32.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031269, 33.923328, 32.477798>,  <33.065701, 34.098999, 32.835506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031269, 33.923328, 32.477798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567430, -0.759401, 0.318330,
		-0.818910, -0.480033, 0.314569,
		-0.086075, -0.439180, -0.894266,
		33.005447, 33.791576, 32.209518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931053, 33.316544, 32.907467>,  <33.065701, 34.098999, 32.835506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931053, 33.316544, 32.907467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105221, 33.372997, 32.551830>,  <33.209721, 33.406868, 32.338448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105221, 33.372997, 32.551830>,  <32.931053, 33.316544, 32.907467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105221, 33.372997, 32.551830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637538, -0.745627, 0.193869,
		-0.635572, -0.651247, -0.414639,
		0.435422, 0.141130, -0.889095,
		33.235847, 33.415337, 32.285103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243351, 32.635204, 32.724346>,  <32.931053, 33.316544, 32.907467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243351, 32.635204, 32.724346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424519, 32.924107, 32.515266>,  <33.533218, 33.097446, 32.389820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424519, 32.924107, 32.515266>,  <33.243351, 32.635204, 32.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424519, 32.924107, 32.515266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712429, -0.645678, -0.274854,
		-0.536008, -0.247898, -0.806995,
		0.452923, 0.722251, -0.522698,
		33.560394, 33.140781, 32.358456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351387, 32.378822, 31.985159>,  <33.243351, 32.635204, 32.724346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351387, 32.378822, 31.985159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634453, 32.632992, 32.108738>,  <33.804291, 32.785492, 32.182884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634453, 32.632992, 32.108738>,  <33.351387, 32.378822, 31.985159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634453, 32.632992, 32.108738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704939, -0.664477, -0.248054,
		0.047670, 0.393329, -0.918161,
		0.707664, 0.635423, 0.308949,
		33.846752, 32.823620, 32.201424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956703, 32.594067, 31.438131>,  <33.351387, 32.378822, 31.985159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956703, 32.594067, 31.438131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027382, 32.587399, 31.831781>,  <34.069790, 32.583397, 32.067970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027382, 32.587399, 31.831781>,  <33.956703, 32.594067, 31.438131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027382, 32.587399, 31.831781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662532, -0.737410, -0.131444,
		0.727895, 0.675239, -0.119252,
		0.176694, -0.016669, 0.984125,
		34.080391, 32.582397, 32.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727310, 32.524384, 31.536810>,  <33.956703, 32.594067, 31.438131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727310, 32.524384, 31.536810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546467, 32.372807, 31.859797>,  <34.437962, 32.281860, 32.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546467, 32.372807, 31.859797>,  <34.727310, 32.524384, 31.536810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546467, 32.372807, 31.859797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689404, -0.722867, 0.046759,
		0.565972, 0.577810, 0.588057,
		-0.452105, -0.378945, 0.807467,
		34.410835, 32.259125, 32.102036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005806, 32.439129, 30.841042>,  <34.727310, 32.524384, 31.536810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005806, 32.439129, 30.841042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346912, 32.431728, 31.049829>,  <35.551575, 32.427288, 31.175102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346912, 32.431728, 31.049829>,  <35.005806, 32.439129, 30.841042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346912, 32.431728, 31.049829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484655, -0.344497, -0.804010,
		0.194691, 0.938605, -0.284808,
		0.852763, -0.018500, 0.521970,
		35.602741, 32.426178, 31.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896515, 33.171646, 30.759256>,  <35.005806, 32.439129, 30.841042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896515, 33.171646, 30.759256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694046, 32.847492, 30.877281>,  <34.572563, 32.653000, 30.948097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694046, 32.847492, 30.877281>,  <34.896515, 33.171646, 30.759256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694046, 32.847492, 30.877281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714060, 0.201940, -0.670327,
		0.483638, -0.549995, -0.680881,
		-0.506174, -0.810386, 0.295064,
		34.542194, 32.604378, 30.965801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743919, 33.008152, 30.134502>,  <34.896515, 33.171646, 30.759256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743919, 33.008152, 30.134502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503277, 32.863052, 30.419174>,  <34.358891, 32.775993, 30.589977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503277, 32.863052, 30.419174>,  <34.743919, 33.008152, 30.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503277, 32.863052, 30.419174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792056, 0.155402, -0.590337,
		0.103545, -0.918840, -0.380805,
		-0.601603, -0.362745, 0.711681,
		34.322796, 32.754227, 30.632679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413700, 33.638687, 30.295296>,  <34.743919, 33.008152, 30.134502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413700, 33.638687, 30.295296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197021, 33.338940, 30.142973>,  <34.067017, 33.159092, 30.051579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197021, 33.338940, 30.142973>,  <34.413700, 33.638687, 30.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197021, 33.338940, 30.142973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564146, 0.011740, -0.825591,
		0.623143, -0.662049, 0.416394,
		-0.541694, -0.749368, -0.380808,
		34.034512, 33.114128, 30.028730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208595, 34.045719, 30.848145>,  <34.413700, 33.638687, 30.295296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208595, 34.045719, 30.848145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585976, 34.152924, 30.770105>,  <34.812405, 34.217247, 30.723282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585976, 34.152924, 30.770105>,  <34.208595, 34.045719, 30.848145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585976, 34.152924, 30.770105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218477, -0.060062, 0.973992,
		0.249324, -0.961542, -0.115220,
		0.943454, 0.268012, -0.195100,
		34.869011, 34.233326, 30.711575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603966, 33.630470, 31.231894>,  <34.208595, 34.045719, 30.848145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603966, 33.630470, 31.231894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 33.947407, 31.154110>,  <34.974049, 34.137569, 31.107439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835266, 33.947407, 31.154110>,  <34.603966, 33.630470, 31.231894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835266, 33.947407, 31.154110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299371, 0.015653, 0.954009,
		0.758946, -0.609874, -0.228153,
		0.578254, 0.792344, -0.194458,
		35.008743, 34.185108, 31.095772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210899, 33.552460, 31.564547>,  <34.603966, 33.630470, 31.231894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210899, 33.552460, 31.564547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213871, 33.947742, 31.503363>,  <35.215652, 34.184910, 31.466652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213871, 33.947742, 31.503363>,  <35.210899, 33.552460, 31.564547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213871, 33.947742, 31.503363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380493, 0.138665, 0.914329,
		0.924754, -0.064989, -0.374976,
		0.007425, 0.988205, -0.152959,
		35.216099, 34.244205, 31.457476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873337, 33.797482, 31.695137>,  <35.210899, 33.552460, 31.564547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873337, 33.797482, 31.695137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638859, 34.119137, 31.734621>,  <35.498173, 34.312130, 31.758310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638859, 34.119137, 31.734621>,  <35.873337, 33.797482, 31.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638859, 34.119137, 31.734621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364964, 0.153326, 0.918309,
		0.723311, 0.574332, -0.383359,
		-0.586193, 0.804135, 0.098709,
		35.463001, 34.360378, 31.764235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240685, 34.203770, 32.135178>,  <35.873337, 33.797482, 31.695137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240685, 34.203770, 32.135178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882530, 34.381737, 32.142544>,  <35.667637, 34.488518, 32.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882530, 34.381737, 32.142544>,  <36.240685, 34.203770, 32.135178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882530, 34.381737, 32.142544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190219, 0.344769, 0.919212,
		0.402628, 0.826547, -0.393332,
		-0.895381, 0.444920, 0.018411,
		35.613914, 34.515213, 32.148067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404095, 34.813812, 32.387215>,  <36.240685, 34.203770, 32.135178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404095, 34.813812, 32.387215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023518, 34.717052, 32.463364>,  <35.795170, 34.658997, 32.509052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023518, 34.717052, 32.463364>,  <36.404095, 34.813812, 32.387215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023518, 34.717052, 32.463364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116749, 0.288668, 0.950284,
		-0.284824, 0.926368, -0.246410,
		-0.951444, -0.241895, 0.190372,
		35.738083, 34.644485, 32.520473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142197, 35.560051, 32.472084>,  <36.404095, 34.813812, 32.387215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142197, 35.560051, 32.472084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247002, 35.865490, 32.708141>,  <36.309883, 36.048756, 32.849773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247002, 35.865490, 32.708141>,  <36.142197, 35.560051, 32.472084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247002, 35.865490, 32.708141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952477, -0.106163, -0.285513,
		-0.155367, 0.636903, -0.755127,
		0.262010, 0.763600, 0.590141,
		36.325603, 36.094570, 32.885185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532814, 36.034069, 32.082153>,  <36.142197, 35.560051, 32.472084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532814, 36.034069, 32.082153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638847, 36.060848, 32.466911>,  <36.702469, 36.076916, 32.697765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638847, 36.060848, 32.466911>,  <36.532814, 36.034069, 32.082153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638847, 36.060848, 32.466911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941335, -0.234044, -0.243130,
		0.208850, 0.969919, -0.125058,
		0.265085, 0.066944, 0.961898,
		36.718372, 36.080933, 32.755482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185047, 36.421429, 32.112518>,  <36.532814, 36.034069, 32.082153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185047, 36.421429, 32.112518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144917, 36.173435, 32.423786>,  <37.120838, 36.024639, 32.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144917, 36.173435, 32.423786>,  <37.185047, 36.421429, 32.112518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144917, 36.173435, 32.423786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860951, -0.446113, -0.244431,
		0.498696, 0.645446, 0.578534,
		-0.100325, -0.619986, 0.778172,
		37.114819, 35.987438, 32.657238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685062, 36.399334, 32.618832>,  <37.185047, 36.421429, 32.112518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685062, 36.399334, 32.618832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531918, 36.031914, 32.579460>,  <37.440033, 35.811462, 32.555836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531918, 36.031914, 32.579460>,  <37.685062, 36.399334, 32.618832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531918, 36.031914, 32.579460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901648, -0.348351, -0.256285,
		0.201121, -0.186871, 0.961577,
		-0.382859, -0.918548, -0.098431,
		37.417061, 35.756348, 32.549931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135315, 36.733131, 33.079277>,  <37.685062, 36.399334, 32.618832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135315, 36.733131, 33.079277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395531, 36.928997, 32.847061>,  <37.551659, 37.046516, 32.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395531, 36.928997, 32.847061>,  <37.135315, 36.733131, 33.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395531, 36.928997, 32.847061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127338, 0.683254, 0.718992,
		0.748726, -0.541654, 0.382127,
		0.650535, 0.489668, -0.580543,
		37.590691, 37.075897, 32.672897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164326, 37.169067, 33.674168>,  <37.135315, 36.733131, 33.079277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164326, 37.169067, 33.674168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260986, 37.146790, 34.061672>,  <37.318981, 37.133423, 34.294174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260986, 37.146790, 34.061672>,  <37.164326, 37.169067, 33.674168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260986, 37.146790, 34.061672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948032, 0.226496, -0.223460,
		-0.206976, 0.972418, 0.107533,
		0.241652, -0.055694, 0.968763,
		37.333481, 37.130081, 34.352303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640934, 37.735516, 33.715797>,  <37.164326, 37.169067, 33.674168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640934, 37.735516, 33.715797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699898, 37.509941, 34.040821>,  <37.735275, 37.374596, 34.235836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699898, 37.509941, 34.040821>,  <37.640934, 37.735516, 33.715797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699898, 37.509941, 34.040821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988786, 0.103887, -0.107282,
		-0.023914, 0.819257, 0.572927,
		0.147412, -0.563937, 0.812555,
		37.744122, 37.340759, 34.284588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114922, 38.101582, 34.220432>,  <37.640934, 37.735516, 33.715797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114922, 38.101582, 34.220432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132607, 37.702091, 34.230148>,  <38.143219, 37.462399, 34.235977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132607, 37.702091, 34.230148>,  <38.114922, 38.101582, 34.220432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132607, 37.702091, 34.230148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998092, 0.043109, -0.044213,
		0.043109, 0.026194, 0.998727,
		0.044213, -0.998727, 0.024286,
		38.145870, 37.402473, 34.237434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559517, 37.841152, 34.763172>,  <38.114922, 38.101582, 34.220432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559517, 37.841152, 34.763172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551445, 37.549339, 34.489712>,  <38.546600, 37.374252, 34.325638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551445, 37.549339, 34.489712>,  <38.559517, 37.841152, 34.763172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551445, 37.549339, 34.489712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998713, -0.046541, 0.020182,
		-0.046541, -0.682360, 0.729533,
		-0.020182, -0.729533, -0.683648,
		38.545391, 37.330479, 34.284618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846901, 37.283569, 35.002548>,  <38.559517, 37.841152, 34.763172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846901, 37.283569, 35.002548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891144, 37.301929, 34.605427>,  <38.917690, 37.312946, 34.367153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891144, 37.301929, 34.605427>,  <38.846901, 37.283569, 35.002548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891144, 37.301929, 34.605427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993863, -0.006194, 0.110442,
		-0.001080, -0.998927, -0.046301,
		0.110610, 0.045898, -0.992803,
		38.924328, 37.315701, 34.307587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140251, 36.631958, 34.670021>,  <38.846901, 37.283569, 35.002548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140251, 36.631958, 34.670021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239250, 36.997620, 34.541603>,  <39.298649, 37.217018, 34.464554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239250, 36.997620, 34.541603>,  <39.140251, 36.631958, 34.670021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239250, 36.997620, 34.541603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967089, -0.212905, 0.139320,
		0.059008, -0.344958, -0.936761,
		0.247500, 0.914153, -0.321042,
		39.313499, 37.271866, 34.445290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564304, 36.717072, 33.991894>,  <39.140251, 36.631958, 34.670021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564304, 36.717072, 33.991894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679527, 36.998951, 34.251255>,  <39.748661, 37.168079, 34.406872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679527, 36.998951, 34.251255>,  <39.564304, 36.717072, 33.991894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679527, 36.998951, 34.251255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941356, -0.332616, -0.056704,
		0.175709, 0.626710, -0.759185,
		0.288054, 0.704700, 0.648400,
		39.765945, 37.210361, 34.445774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182938, 37.267162, 33.806213>,  <39.564304, 36.717072, 33.991894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182938, 37.267162, 33.806213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179642, 37.280014, 34.205994>,  <40.177662, 37.287727, 34.445862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179642, 37.280014, 34.205994>,  <40.182938, 37.267162, 33.806213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179642, 37.280014, 34.205994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998638, -0.051232, 0.009883,
		0.051521, 0.998170, -0.031665,
		-0.008243, 0.032131, 0.999450,
		40.177170, 37.289654, 34.505829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501297, 37.872688, 33.996529>,  <40.182938, 37.267162, 33.806213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501297, 37.872688, 33.996529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532017, 37.578335, 34.265625>,  <40.550449, 37.401722, 34.427082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532017, 37.578335, 34.265625>,  <40.501297, 37.872688, 33.996529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532017, 37.578335, 34.265625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996749, 0.073143, -0.033776,
		-0.024352, 0.673149, 0.739106,
		0.076797, -0.735881, 0.672742,
		40.555058, 37.357571, 34.467449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845448, 38.107647, 34.656345>,  <40.501297, 37.872688, 33.996529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845448, 38.107647, 34.656345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922997, 37.725857, 34.565666>,  <40.969524, 37.496784, 34.511257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922997, 37.725857, 34.565666>,  <40.845448, 38.107647, 34.656345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922997, 37.725857, 34.565666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917613, 0.258164, -0.302221,
		0.346988, -0.149432, 0.925888,
		0.193870, -0.954474, -0.226701,
		40.981159, 37.439514, 34.497658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437729, 38.025558, 34.970573>,  <40.845448, 38.107647, 34.656345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437729, 38.025558, 34.970573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407192, 37.773396, 34.661572>,  <41.388870, 37.622097, 34.476170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407192, 37.773396, 34.661572>,  <41.437729, 38.025558, 34.970573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407192, 37.773396, 34.661572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881644, 0.319180, -0.347603,
		0.465699, -0.707608, 0.531428,
		-0.076346, -0.630408, -0.772500,
		41.384289, 37.584274, 34.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993973, 38.541119, 35.190304>,  <41.437729, 38.025558, 34.970573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993973, 38.541119, 35.190304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798523, 38.816528, 34.975948>,  <41.681252, 38.981773, 34.847336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798523, 38.816528, 34.975948>,  <41.993973, 38.541119, 35.190304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798523, 38.816528, 34.975948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653194, 0.695876, 0.298485,
		0.578428, -0.204193, -0.789763,
		-0.488629, 0.688521, -0.535892,
		41.651936, 39.023087, 34.815182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627270, 38.051506, 35.651531>,  <41.993973, 38.541119, 35.190304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627270, 38.051506, 35.651531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011959, 37.981697, 35.736038>,  <42.242771, 37.939812, 35.786743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011959, 37.981697, 35.736038>,  <41.627270, 38.051506, 35.651531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011959, 37.981697, 35.736038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028915, 0.831288, 0.555090,
		-0.272502, -0.527732, 0.804513,
		0.961721, -0.174525, 0.211268,
		42.300476, 37.929340, 35.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780468, 38.054386, 36.400967>,  <41.627270, 38.051506, 35.651531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780468, 38.054386, 36.400967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119244, 38.148991, 36.210491>,  <42.322510, 38.205753, 36.096207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119244, 38.148991, 36.210491>,  <41.780468, 38.054386, 36.400967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119244, 38.148991, 36.210491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008563, 0.901569, 0.432550,
		0.531617, -0.362267, 0.765602,
		0.846942, 0.236507, -0.476187,
		42.373325, 38.219944, 36.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370693, 38.261387, 36.890617>,  <41.780468, 38.054386, 36.400967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370693, 38.261387, 36.890617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348225, 38.447865, 36.537460>,  <42.334743, 38.559753, 36.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348225, 38.447865, 36.537460>,  <42.370693, 38.261387, 36.890617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348225, 38.447865, 36.537460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083090, 0.879041, 0.469450,
		0.994958, 0.099730, -0.010643,
		-0.056174, 0.466199, -0.882895,
		42.331371, 38.587723, 36.272591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740170, 38.861919, 36.921513>,  <42.370693, 38.261387, 36.890617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740170, 38.861919, 36.921513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439911, 38.946365, 36.671085>,  <42.259754, 38.997032, 36.520828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439911, 38.946365, 36.671085>,  <42.740170, 38.861919, 36.921513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439911, 38.946365, 36.671085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166130, 0.856823, 0.488113,
		0.639478, 0.470409, -0.608098,
		-0.750645, 0.211114, -0.626069,
		42.214718, 39.009701, 36.483265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441132, 39.155071, 37.023926>,  <42.740170, 38.861919, 36.921513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441132, 39.155071, 37.023926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474422, 39.501728, 37.220703>,  <43.494396, 39.709721, 37.338768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474422, 39.501728, 37.220703>,  <43.441132, 39.155071, 37.023926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474422, 39.501728, 37.220703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322412, 0.490522, -0.809592,
		-0.942934, -0.091232, 0.320239,
		0.083224, 0.866640, 0.491944,
		43.499390, 39.761719, 37.368286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989464, 38.656414, 36.895046>,  <43.441132, 39.155071, 37.023926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989464, 38.656414, 36.895046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004738, 38.822727, 37.258511>,  <44.013901, 38.922516, 37.476589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004738, 38.822727, 37.258511>,  <43.989464, 38.656414, 36.895046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004738, 38.822727, 37.258511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083397, -0.907480, 0.411735,
		0.995785, 0.060060, -0.069323,
		0.038181, 0.415780, 0.908663,
		44.016193, 38.947460, 37.531109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657135, 38.490799, 37.229153>,  <43.989464, 38.656414, 36.895046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657135, 38.490799, 37.229153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361073, 38.555977, 37.490112>,  <44.183434, 38.595085, 37.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361073, 38.555977, 37.490112>,  <44.657135, 38.490799, 37.229153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361073, 38.555977, 37.490112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308956, -0.779321, 0.545165,
		0.597258, 0.605068, 0.526475,
		-0.740155, 0.162946, 0.652395,
		44.139027, 38.604862, 37.685829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915443, 37.625206, 37.185455>,  <44.657135, 38.490799, 37.229153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915443, 37.625206, 37.185455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064941, 37.977364, 37.068687>,  <45.154640, 38.188660, 36.998627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.064941, 37.977364, 37.068687>,  <44.915443, 37.625206, 37.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064941, 37.977364, 37.068687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909400, -0.285892, 0.302090,
		0.182503, -0.378373, -0.907484,
		0.373744, 0.880398, -0.291916,
		45.177063, 38.241482, 36.981113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605694, 37.534653, 36.827572>,  <44.915443, 37.625206, 37.185455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605694, 37.534653, 36.827572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600731, 37.922657, 36.924675>,  <45.597752, 38.155460, 36.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600731, 37.922657, 36.924675>,  <45.605694, 37.534653, 36.827572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600731, 37.922657, 36.924675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916598, -0.085993, 0.390452,
		0.399617, 0.227359, -0.888039,
		-0.012407, 0.970007, 0.242761,
		45.597008, 38.213657, 36.997505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349220, 36.820713, 37.144230>,  <45.605694, 37.534653, 36.827572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349220, 36.820713, 37.144230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016052, 36.670517, 37.306839>,  <44.816151, 36.580399, 37.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016052, 36.670517, 37.306839>,  <45.349220, 36.820713, 37.144230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016052, 36.670517, 37.306839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457751, -0.880277, 0.124802,
		0.310992, 0.290036, 0.905076,
		-0.832915, -0.375487, 0.406524,
		44.766178, 36.557873, 37.428795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572536, 36.395817, 37.840263>,  <45.349220, 36.820713, 37.144230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572536, 36.395817, 37.840263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252068, 36.272236, 37.635258>,  <45.059788, 36.198086, 37.512253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252068, 36.272236, 37.635258>,  <45.572536, 36.395817, 37.840263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252068, 36.272236, 37.635258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416297, -0.902978, -0.106431,
		-0.429907, -0.298628, 0.852058,
		-0.801172, -0.308954, -0.512514,
		45.011715, 36.179550, 37.481503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111233, 35.908264, 38.095146>,  <45.572536, 36.395817, 37.840263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111233, 35.908264, 38.095146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114964, 35.794567, 37.711662>,  <45.117203, 35.726349, 37.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114964, 35.794567, 37.711662>,  <45.111233, 35.908264, 38.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114964, 35.794567, 37.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220171, -0.934637, 0.279244,
		-0.975417, -0.213684, 0.053865,
		0.009326, -0.284239, -0.958708,
		45.117760, 35.709297, 37.424049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743225, 35.958923, 38.514393>,  <45.111233, 35.908264, 38.095146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743225, 35.958923, 38.514393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635914, 35.584206, 38.424553>,  <45.571529, 35.359375, 38.370647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635914, 35.584206, 38.424553>,  <45.743225, 35.958923, 38.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635914, 35.584206, 38.424553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026756, 0.240301, -0.970329,
		0.962970, -0.254307, -0.089532,
		-0.268276, -0.936794, -0.224599,
		45.555431, 35.303169, 38.357174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265186, 35.647892, 38.036865>,  <45.743225, 35.958923, 38.514393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265186, 35.647892, 38.036865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908463, 35.482014, 37.964527>,  <45.694427, 35.382488, 37.921124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908463, 35.482014, 37.964527>,  <46.265186, 35.647892, 38.036865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908463, 35.482014, 37.964527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009265, 0.382919, -0.923736,
		0.452321, -0.825470, -0.337647,
		-0.891807, -0.414697, -0.180850,
		45.640919, 35.357605, 37.910271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311134, 35.173878, 37.458149>,  <46.265186, 35.647892, 38.036865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311134, 35.173878, 37.458149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927345, 35.286587, 37.459469>,  <45.697071, 35.354214, 37.460262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927345, 35.286587, 37.459469>,  <46.311134, 35.173878, 37.458149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927345, 35.286587, 37.459469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097520, 0.343020, -0.934252,
		-0.264380, -0.896070, -0.356598,
		-0.959476, 0.281773, 0.003303,
		45.639503, 35.371120, 37.460461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928635, 35.013634, 36.858902>,  <46.311134, 35.173878, 37.458149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928635, 35.013634, 36.858902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691883, 35.312893, 36.978874>,  <45.549831, 35.492447, 37.050858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691883, 35.312893, 36.978874>,  <45.928635, 35.013634, 36.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691883, 35.312893, 36.978874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104825, 0.297500, -0.948950,
		-0.799181, -0.593105, -0.097660,
		-0.591880, 0.748145, 0.299928,
		45.514320, 35.537338, 37.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292137, 34.987514, 36.443237>,  <45.928635, 35.013634, 36.858902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292137, 34.987514, 36.443237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369019, 35.356518, 36.577129>,  <45.415146, 35.577919, 36.657463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369019, 35.356518, 36.577129>,  <45.292137, 34.987514, 36.443237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369019, 35.356518, 36.577129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039631, 0.348105, -0.936618,
		-0.980555, 0.166754, 0.103466,
		0.192202, 0.922505, 0.334727,
		45.426678, 35.633270, 36.677547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886517, 34.977970, 35.846577>,  <45.292137, 34.987514, 36.443237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886517, 34.977970, 35.846577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922054, 35.323013, 35.647369>,  <44.943378, 35.530037, 35.527847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922054, 35.323013, 35.647369>,  <44.886517, 34.977970, 35.846577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922054, 35.323013, 35.647369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732862, -0.395220, -0.553818,
		-0.674552, -0.315773, -0.667284,
		0.088843, 0.862606, -0.498014,
		44.948708, 35.581795, 35.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818111, 34.839748, 35.074780>,  <44.886517, 34.977970, 35.846577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818111, 34.839748, 35.074780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037399, 35.170444, 35.125301>,  <45.168972, 35.368862, 35.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037399, 35.170444, 35.125301>,  <44.818111, 34.839748, 35.074780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037399, 35.170444, 35.125301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741944, -0.411066, -0.529664,
		-0.385977, 0.384081, -0.838751,
		0.548216, 0.826744, 0.126305,
		45.201862, 35.418468, 35.163193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051514, 35.049934, 34.493843>,  <44.818111, 34.839748, 35.074780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051514, 35.049934, 34.493843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328510, 35.205685, 34.736771>,  <45.494709, 35.299137, 34.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328510, 35.205685, 34.736771>,  <45.051514, 35.049934, 34.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328510, 35.205685, 34.736771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709023, -0.522749, -0.473307,
		0.133178, 0.758365, -0.638080,
		0.692495, 0.389379, 0.607317,
		45.536259, 35.322498, 34.918964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716358, 35.240147, 34.073254>,  <45.051514, 35.049934, 34.493843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716358, 35.240147, 34.073254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780746, 35.160007, 34.459820>,  <45.819378, 35.111923, 34.691757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780746, 35.160007, 34.459820>,  <45.716358, 35.240147, 34.073254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780746, 35.160007, 34.459820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707511, -0.659277, -0.254521,
		0.688125, 0.724717, 0.035625,
		0.160969, -0.200347, 0.966411,
		45.829037, 35.099903, 34.749744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456409, 35.195278, 34.271847>,  <45.716358, 35.240147, 34.073254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456409, 35.195278, 34.271847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257809, 34.999722, 34.558754>,  <46.138649, 34.882385, 34.730896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257809, 34.999722, 34.558754>,  <46.456409, 35.195278, 34.271847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257809, 34.999722, 34.558754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568512, -0.807571, -0.156918,
		0.655958, 0.329864, 0.678903,
		-0.496500, -0.488896, 0.717264,
		46.108860, 34.853054, 34.773933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001328, 34.819576, 34.758747>,  <46.456409, 35.195278, 34.271847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001328, 34.819576, 34.758747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657558, 34.615158, 34.764732>,  <46.451298, 34.492508, 34.768322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.657558, 34.615158, 34.764732>,  <47.001328, 34.819576, 34.758747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.657558, 34.615158, 34.764732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481037, -0.818175, -0.314949,
		0.173193, -0.263478, 0.948991,
		-0.859423, -0.511047, 0.014959,
		46.399731, 34.461845, 34.769218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.736832, 34.866230, 34.697163>,  <47.001328, 34.819576, 34.758747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.736832, 34.866230, 34.697163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680756, 35.211285, 34.891567>,  <47.647110, 35.418316, 35.008209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680756, 35.211285, 34.891567>,  <47.736832, 34.866230, 34.697163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680756, 35.211285, 34.891567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679462, -0.440860, 0.586493,
		0.720193, -0.248006, 0.647932,
		-0.140193, 0.862633, 0.486015,
		47.638699, 35.470074, 35.037373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.475178, 35.993198, 19.384321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518112, 35.600765, 19.448753>,  <35.543873, 35.365303, 19.487413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.518112, 35.600765, 19.448753>,  <35.475178, 35.993198, 19.384321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518112, 35.600765, 19.448753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127529, 0.147094, 0.980867,
		-0.986010, -0.125822, -0.109329,
		0.107333, -0.981087, 0.161082,
		35.550312, 35.306438, 19.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912266, 35.790100, 19.850410>,  <35.475178, 35.993198, 19.384321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912266, 35.790100, 19.850410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182766, 35.496441, 19.874769>,  <35.345066, 35.320244, 19.889383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182766, 35.496441, 19.874769>,  <34.912266, 35.790100, 19.850410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182766, 35.496441, 19.874769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153055, -0.059161, 0.986445,
		-0.720595, -0.676406, -0.152373,
		0.676252, -0.734149, 0.060896,
		35.385643, 35.276196, 19.893038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588871, 35.237854, 20.255407>,  <34.912266, 35.790100, 19.850410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588871, 35.237854, 20.255407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984455, 35.181179, 20.272785>,  <35.221806, 35.147175, 20.283213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984455, 35.181179, 20.272785>,  <34.588871, 35.237854, 20.255407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984455, 35.181179, 20.272785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044892, -0.007029, 0.998967,
		-0.141240, -0.989886, -0.013312,
		0.988957, -0.141692, 0.043445,
		35.281143, 35.138672, 20.285818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660801, 34.722469, 20.733767>,  <34.588871, 35.237854, 20.255407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660801, 34.722469, 20.733767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026474, 34.883480, 20.714825>,  <35.245876, 34.980087, 20.703459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026474, 34.883480, 20.714825>,  <34.660801, 34.722469, 20.733767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026474, 34.883480, 20.714825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039284, 0.028291, 0.998828,
		0.403394, -0.914972, 0.010050,
		0.914183, 0.402526, -0.047356,
		35.300728, 35.004238, 20.700617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091152, 34.392368, 21.256596>,  <34.660801, 34.722469, 20.733767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091152, 34.392368, 21.256596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271500, 34.744373, 21.196863>,  <35.379707, 34.955574, 21.161024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.271500, 34.744373, 21.196863>,  <35.091152, 34.392368, 21.256596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271500, 34.744373, 21.196863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132942, 0.099230, 0.986144,
		0.882634, -0.464476, -0.072250,
		0.450871, 0.880009, -0.149333,
		35.406761, 35.008377, 21.152063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701378, 34.371483, 21.633657>,  <35.091152, 34.392368, 21.256596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701378, 34.371483, 21.633657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676788, 34.768314, 21.589840>,  <35.662033, 35.006413, 21.563549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.676788, 34.768314, 21.589840>,  <35.701378, 34.371483, 21.633657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676788, 34.768314, 21.589840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353898, 0.124286, 0.926989,
		0.933261, 0.018220, -0.358736,
		-0.061475, 0.992079, -0.109544,
		35.658344, 35.065937, 21.556976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327217, 34.605663, 21.842972>,  <35.701378, 34.371483, 21.633657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327217, 34.605663, 21.842972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059380, 34.901581, 21.869349>,  <35.898678, 35.079132, 21.885174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059380, 34.901581, 21.869349>,  <36.327217, 34.605663, 21.842972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059380, 34.901581, 21.869349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220184, 0.112929, 0.968899,
		0.709339, 0.663289, -0.238507,
		-0.669595, 0.739794, 0.065940,
		35.858501, 35.123520, 21.889132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590542, 34.957397, 22.277491>,  <36.327217, 34.605663, 21.842972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590542, 34.957397, 22.277491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223110, 35.115494, 22.277451>,  <36.002651, 35.210350, 22.277428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223110, 35.115494, 22.277451>,  <36.590542, 34.957397, 22.277491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223110, 35.115494, 22.277451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047549, 0.110757, 0.992709,
		0.392365, 0.911878, -0.120533,
		-0.918580, 0.395236, -0.000098,
		35.947536, 35.234066, 22.277422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586048, 35.577568, 22.665661>,  <36.590542, 34.957397, 22.277491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586048, 35.577568, 22.665661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191818, 35.512062, 22.682785>,  <35.955280, 35.472759, 22.693060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191818, 35.512062, 22.682785>,  <36.586048, 35.577568, 22.665661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191818, 35.512062, 22.682785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033916, 0.056727, 0.997814,
		-0.165835, 0.984867, -0.050354,
		-0.985570, -0.163764, 0.042811,
		35.896149, 35.462933, 22.695629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340454, 36.141575, 23.086233>,  <36.586048, 35.577568, 22.665661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340454, 36.141575, 23.086233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.054398, 35.862518, 23.103479>,  <35.882763, 35.695084, 23.113827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.054398, 35.862518, 23.103479>,  <36.340454, 36.141575, 23.086233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054398, 35.862518, 23.103479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046940, 0.109477, 0.992880,
		-0.697398, 0.708030, -0.111039,
		-0.715145, -0.697645, 0.043114,
		35.839855, 35.653225, 23.116413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857166, 36.390625, 23.580320>,  <36.340454, 36.141575, 23.086233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857166, 36.390625, 23.580320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790966, 35.996769, 23.558069>,  <35.751247, 35.760456, 23.544720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790966, 35.996769, 23.558069>,  <35.857166, 36.390625, 23.580320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790966, 35.996769, 23.558069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225221, -0.017178, 0.974156,
		-0.960149, 0.173750, -0.218918,
		-0.165499, -0.984640, -0.055626,
		35.741318, 35.701378, 23.541382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296494, 36.365276, 24.004850>,  <35.857166, 36.390625, 23.580320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296494, 36.365276, 24.004850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418861, 35.984642, 23.992884>,  <35.492283, 35.756260, 23.985704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418861, 35.984642, 23.992884>,  <35.296494, 36.365276, 24.004850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418861, 35.984642, 23.992884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198418, -0.094456, 0.975555,
		-0.931152, -0.292506, -0.217708,
		0.305920, -0.951587, -0.029914,
		35.510639, 35.699165, 23.983910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740330, 35.961571, 24.190258>,  <35.296494, 36.365276, 24.004850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740330, 35.961571, 24.190258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065392, 35.738995, 24.259499>,  <35.260429, 35.605450, 24.301043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.065392, 35.738995, 24.259499>,  <34.740330, 35.961571, 24.190258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065392, 35.738995, 24.259499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223835, -0.023795, 0.974337,
		-0.538044, -0.830545, -0.143889,
		0.812654, -0.556443, 0.173103,
		35.309189, 35.572063, 24.311430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589352, 35.513397, 24.810495>,  <34.740330, 35.961571, 24.190258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589352, 35.513397, 24.810495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987232, 35.512589, 24.769367>,  <35.225960, 35.512104, 24.744690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987232, 35.512589, 24.769367>,  <34.589352, 35.513397, 24.810495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987232, 35.512589, 24.769367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102744, 0.063322, 0.992690,
		0.004495, -0.997991, 0.063195,
		0.994698, -0.002031, -0.102822,
		35.285641, 35.511982, 24.738520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832218, 35.027229, 25.223232>,  <34.589352, 35.513397, 24.810495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832218, 35.027229, 25.223232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129990, 35.285999, 25.157116>,  <35.308651, 35.441261, 25.117447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129990, 35.285999, 25.157116>,  <34.832218, 35.027229, 25.223232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129990, 35.285999, 25.157116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152577, 0.076185, 0.985351,
		0.650037, -0.758741, -0.041991,
		0.744427, 0.646922, -0.165290,
		35.353317, 35.480076, 25.107529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353977, 34.770008, 25.647890>,  <34.832218, 35.027229, 25.223232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353977, 34.770008, 25.647890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453266, 35.151176, 25.578230>,  <35.512840, 35.379879, 25.536434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453266, 35.151176, 25.578230>,  <35.353977, 34.770008, 25.647890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453266, 35.151176, 25.578230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199729, 0.125569, 0.971772,
		0.947889, -0.275999, -0.159157,
		0.248223, 0.952920, -0.174150,
		35.527733, 35.437054, 25.525984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868191, 34.891041, 26.143246>,  <35.353977, 34.770008, 25.647890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868191, 34.891041, 26.143246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743958, 35.252098, 26.024063>,  <35.669418, 35.468731, 25.952553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743958, 35.252098, 26.024063>,  <35.868191, 34.891041, 26.143246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743958, 35.252098, 26.024063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102364, 0.343399, 0.933595,
		0.945017, 0.259463, -0.199053,
		-0.310587, 0.902639, -0.297958,
		35.650780, 35.522888, 25.934675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323631, 35.261494, 26.525579>,  <35.868191, 34.891041, 26.143246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323631, 35.261494, 26.525579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037521, 35.513695, 26.405012>,  <35.865856, 35.665016, 26.332672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037521, 35.513695, 26.405012>,  <36.323631, 35.261494, 26.525579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037521, 35.513695, 26.405012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032058, 0.401249, 0.915408,
		0.698111, 0.664428, -0.266789,
		-0.715272, 0.630503, -0.301417,
		35.822941, 35.702847, 26.314587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504021, 35.978065, 26.783051>,  <36.323631, 35.261494, 26.525579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504021, 35.978065, 26.783051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113323, 36.035263, 26.719141>,  <35.878906, 36.069584, 26.680796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113323, 36.035263, 26.719141>,  <36.504021, 35.978065, 26.783051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113323, 36.035263, 26.719141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049311, 0.575369, 0.816406,
		0.208673, 0.805296, -0.554935,
		-0.976741, 0.142998, -0.159773,
		35.820301, 36.078163, 26.671209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397182, 36.641247, 26.840837>,  <36.504021, 35.978065, 26.783051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397182, 36.641247, 26.840837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027596, 36.497849, 26.894148>,  <35.805843, 36.411808, 26.926134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.027596, 36.497849, 26.894148>,  <36.397182, 36.641247, 26.840837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027596, 36.497849, 26.894148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151908, 0.663774, 0.732344,
		-0.351006, 0.656418, -0.667765,
		-0.923969, -0.358496, 0.133274,
		35.750404, 36.390301, 26.934130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929371, 37.262627, 26.827370>,  <36.397182, 36.641247, 26.840837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929371, 37.262627, 26.827370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728886, 36.967937, 27.008928>,  <35.608597, 36.791122, 27.117863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.728886, 36.967937, 27.008928>,  <35.929371, 37.262627, 26.827370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728886, 36.967937, 27.008928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013406, 0.531086, 0.847212,
		-0.865222, 0.418546, -0.276062,
		-0.501210, -0.736728, 0.453896,
		35.578522, 36.746918, 27.145098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174000, 37.432625, 27.164948>,  <35.929371, 37.262627, 26.827370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174000, 37.432625, 27.164948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350636, 37.135872, 27.366785>,  <35.456615, 36.957821, 27.487888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350636, 37.135872, 27.366785>,  <35.174000, 37.432625, 27.164948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350636, 37.135872, 27.366785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122359, 0.507349, 0.853009,
		-0.888835, -0.438421, 0.133264,
		0.441589, -0.741878, 0.504595,
		35.483112, 36.913307, 27.518164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438305, 37.204235, 27.489012>,  <35.174000, 37.432625, 27.164948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438305, 37.204235, 27.489012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068882, 37.228191, 27.640511>,  <33.847229, 37.242565, 27.731411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068882, 37.228191, 27.640511>,  <34.438305, 37.204235, 27.489012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068882, 37.228191, 27.640511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383080, -0.187778, -0.904428,
		0.016955, -0.980384, 0.196367,
		-0.923560, 0.059890, 0.378749,
		33.791813, 37.246159, 27.754135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110962, 36.713829, 27.186390>,  <34.438305, 37.204235, 27.489012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110962, 36.713829, 27.186390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.839996, 36.979362, 27.313156>,  <33.677418, 37.138683, 27.389215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.839996, 36.979362, 27.313156>,  <34.110962, 36.713829, 27.186390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839996, 36.979362, 27.313156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418720, 0.006239, -0.908094,
		-0.604798, -0.747857, 0.273732,
		-0.677417, 0.663830, 0.316916,
		33.636772, 37.178513, 27.408232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429985, 36.461761, 26.943935>,  <34.110962, 36.713829, 27.186390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429985, 36.461761, 26.943935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.404167, 36.853958, 27.018202>,  <33.388676, 37.089275, 27.062761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.404167, 36.853958, 27.018202>,  <33.429985, 36.461761, 26.943935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404167, 36.853958, 27.018202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481970, 0.132285, -0.866144,
		-0.873807, -0.145395, 0.464028,
		-0.064549, 0.980490, 0.185668,
		33.384804, 37.148106, 27.073902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694904, 36.654507, 26.844246>,  <33.429985, 36.461761, 26.943935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694904, 36.654507, 26.844246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935234, 36.971691, 26.803822>,  <33.079433, 37.162003, 26.779568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.935234, 36.971691, 26.803822>,  <32.694904, 36.654507, 26.844246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935234, 36.971691, 26.803822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360200, 0.155699, -0.919790,
		-0.713627, 0.589037, 0.379174,
		0.600827, 0.792965, -0.101060,
		33.115482, 37.209579, 26.773504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206696, 37.145756, 26.495415>,  <32.694904, 36.654507, 26.844246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206696, 37.145756, 26.495415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578224, 37.282085, 26.437277>,  <32.801140, 37.363884, 26.402393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578224, 37.282085, 26.437277>,  <32.206696, 37.145756, 26.495415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578224, 37.282085, 26.437277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246318, 0.274933, -0.929376,
		-0.276797, 0.899026, 0.339316,
		0.928822, 0.340828, -0.145346,
		32.856873, 37.384335, 26.393673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119625, 37.878120, 26.022209>,  <32.206696, 37.145756, 26.495415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119625, 37.878120, 26.022209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508190, 37.784283, 26.007692>,  <32.741329, 37.727978, 25.998983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.508190, 37.784283, 26.007692>,  <32.119625, 37.878120, 26.022209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508190, 37.784283, 26.007692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012802, 0.204419, -0.978800,
		0.237043, 0.950356, 0.201579,
		0.971415, -0.234598, -0.036290,
		32.799614, 37.713902, 25.996805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524250, 38.482464, 25.686569>,  <32.119625, 37.878120, 26.022209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524250, 38.482464, 25.686569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716370, 38.138519, 25.617344>,  <32.831642, 37.932152, 25.575808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716370, 38.138519, 25.617344>,  <32.524250, 38.482464, 25.686569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716370, 38.138519, 25.617344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031699, 0.180167, -0.983125,
		0.876534, 0.477675, 0.059276,
		0.480294, -0.859864, -0.173064,
		32.860458, 37.880562, 25.565424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970989, 38.610489, 25.082617>,  <32.524250, 38.482464, 25.686569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970989, 38.610489, 25.082617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001682, 38.212177, 25.102789>,  <33.020096, 37.973190, 25.114891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.001682, 38.212177, 25.102789>,  <32.970989, 38.610489, 25.082617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001682, 38.212177, 25.102789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069421, -0.045119, -0.996567,
		0.994632, 0.079968, 0.065665,
		0.076730, -0.995776, 0.050428,
		33.024700, 37.913445, 25.117918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573269, 38.387421, 24.742094>,  <32.970989, 38.610489, 25.082617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573269, 38.387421, 24.742094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315147, 38.082130, 24.729044>,  <33.160275, 37.898956, 24.721214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315147, 38.082130, 24.729044>,  <33.573269, 38.387421, 24.742094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315147, 38.082130, 24.729044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186807, -0.116244, -0.975495,
		0.740735, -0.635584, 0.217589,
		-0.645302, -0.763230, -0.032625,
		33.121555, 37.853161, 24.719255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988201, 37.992107, 24.365747>,  <33.573269, 38.387421, 24.742094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988201, 37.992107, 24.365747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611629, 37.857433, 24.373217>,  <33.385685, 37.776630, 24.377697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611629, 37.857433, 24.373217>,  <33.988201, 37.992107, 24.365747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611629, 37.857433, 24.373217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069292, -0.247346, -0.966446,
		0.330008, -0.908549, 0.256189,
		-0.941432, -0.336687, 0.018671,
		33.329201, 37.756428, 24.378819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023006, 37.283829, 24.038744>,  <33.988201, 37.992107, 24.365747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023006, 37.283829, 24.038744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645927, 37.411400, 23.999533>,  <33.419682, 37.487942, 23.976006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.645927, 37.411400, 23.999533>,  <34.023006, 37.283829, 24.038744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645927, 37.411400, 23.999533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030365, -0.210580, -0.977105,
		-0.332267, -0.924090, 0.188829,
		-0.942696, 0.318926, -0.098028,
		33.363117, 37.507076, 23.970123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709255, 36.758430, 23.664719>,  <34.023006, 37.283829, 24.038744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709255, 36.758430, 23.664719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471149, 37.076450, 23.618139>,  <33.328285, 37.267262, 23.590193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.471149, 37.076450, 23.618139>,  <33.709255, 36.758430, 23.664719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471149, 37.076450, 23.618139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037603, -0.172322, -0.984323,
		-0.802652, -0.581550, 0.132473,
		-0.595261, 0.795050, -0.116446,
		33.292572, 37.314964, 23.583206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068962, 36.571404, 23.235891>,  <33.709255, 36.758430, 23.664719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068962, 36.571404, 23.235891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.111805, 36.966545, 23.190866>,  <33.137508, 37.203629, 23.163851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.111805, 36.966545, 23.190866>,  <33.068962, 36.571404, 23.235891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111805, 36.966545, 23.190866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060688, -0.106509, -0.992458,
		-0.992394, 0.113127, 0.048544,
		0.107103, 0.987855, -0.112564,
		33.143936, 37.262901, 23.157097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489182, 36.788826, 22.850441>,  <33.068962, 36.571404, 23.235891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489182, 36.788826, 22.850441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785202, 37.053574, 22.802696>,  <32.962814, 37.212421, 22.774050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.785202, 37.053574, 22.802696>,  <32.489182, 36.788826, 22.850441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785202, 37.053574, 22.802696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034191, -0.140219, -0.989530,
		-0.671676, 0.736388, -0.081139,
		0.740056, 0.661869, -0.119360,
		33.007217, 37.252136, 22.766888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359959, 37.234127, 22.258266>,  <32.489182, 36.788826, 22.850441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359959, 37.234127, 22.258266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752296, 37.294018, 22.308119>,  <32.987698, 37.329952, 22.338030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.752296, 37.294018, 22.308119>,  <32.359959, 37.234127, 22.258266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752296, 37.294018, 22.308119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151535, -0.184365, -0.971106,
		-0.122422, 0.971386, -0.203522,
		0.980842, 0.149725, 0.124629,
		33.046551, 37.338936, 22.345507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548473, 37.717487, 21.771805>,  <32.359959, 37.234127, 22.258266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548473, 37.717487, 21.771805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901115, 37.554543, 21.867149>,  <33.112701, 37.456776, 21.924356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.901115, 37.554543, 21.867149>,  <32.548473, 37.717487, 21.771805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901115, 37.554543, 21.867149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208560, -0.116810, -0.971009,
		0.423399, 0.905764, -0.018021,
		0.881610, -0.407366, 0.238364,
		33.165600, 37.432331, 21.938658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026993, 38.064339, 21.440210>,  <32.548473, 37.717487, 21.771805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026993, 38.064339, 21.440210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.210777, 37.722454, 21.536844>,  <33.321049, 37.517323, 21.594824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.210777, 37.722454, 21.536844>,  <33.026993, 38.064339, 21.440210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210777, 37.722454, 21.536844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324039, -0.091942, -0.941565,
		0.826980, 0.510894, 0.234717,
		0.459460, -0.854713, 0.241584,
		33.348614, 37.466042, 21.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621830, 38.119724, 21.087875>,  <33.026993, 38.064339, 21.440210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621830, 38.119724, 21.087875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598846, 37.728413, 21.167545>,  <33.585056, 37.493626, 21.215347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.598846, 37.728413, 21.167545>,  <33.621830, 38.119724, 21.087875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598846, 37.728413, 21.167545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183495, -0.206456, -0.961096,
		0.981340, -0.018674, 0.191371,
		-0.057458, -0.978278, 0.199177,
		33.581608, 37.434929, 21.227299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.291618, 37.773769, 20.837587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006813, 37.494091, 20.863382>,  <33.835930, 37.326283, 20.878860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006813, 37.494091, 20.863382>,  <34.291618, 37.773769, 20.837587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006813, 37.494091, 20.863382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285628, -0.372313, -0.883063,
		0.641443, -0.610335, 0.464802,
		-0.712016, -0.699195, 0.064489,
		33.793209, 37.284332, 20.882729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520729, 37.132168, 20.453810>,  <34.291618, 37.773769, 20.837587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520729, 37.132168, 20.453810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130234, 37.055027, 20.493326>,  <33.895935, 37.008743, 20.517036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130234, 37.055027, 20.493326>,  <34.520729, 37.132168, 20.453810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130234, 37.055027, 20.493326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000226, -0.455024, -0.890479,
		0.216685, -0.869345, 0.444169,
		-0.976242, -0.192853, 0.098793,
		33.837360, 36.997169, 20.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469524, 36.426235, 20.461657>,  <34.520729, 37.132168, 20.453810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469524, 36.426235, 20.461657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121078, 36.589153, 20.351915>,  <33.912010, 36.686905, 20.286070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121078, 36.589153, 20.351915>,  <34.469524, 36.426235, 20.461657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121078, 36.589153, 20.351915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115397, -0.373256, -0.920523,
		-0.477325, -0.833543, 0.278150,
		-0.871117, 0.407291, -0.274353,
		33.859745, 36.711342, 20.269609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156807, 35.873558, 20.138933>,  <34.469524, 36.426235, 20.461657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156807, 35.873558, 20.138933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947479, 36.197781, 20.033760>,  <33.821880, 36.392315, 19.970655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.947479, 36.197781, 20.033760>,  <34.156807, 35.873558, 20.138933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947479, 36.197781, 20.033760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071649, -0.265609, -0.961415,
		-0.849117, -0.521969, 0.080923,
		-0.523323, 0.810555, -0.262932,
		33.790482, 36.440948, 19.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559719, 35.604839, 19.734474>,  <34.156807, 35.873558, 20.138933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559719, 35.604839, 19.734474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609333, 35.988533, 19.632898>,  <33.639099, 36.218750, 19.571953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.609333, 35.988533, 19.632898>,  <33.559719, 35.604839, 19.734474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609333, 35.988533, 19.632898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122814, -0.239109, -0.963194,
		-0.984648, 0.150656, 0.088150,
		0.124033, 0.959234, -0.253941,
		33.646542, 36.276302, 19.556717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393543, 35.601265, 19.012802>,  <33.559719, 35.604839, 19.734474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393543, 35.601265, 19.012802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546310, 35.970661, 19.027260>,  <33.637970, 36.192299, 19.035934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.546310, 35.970661, 19.027260>,  <33.393543, 35.601265, 19.012802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546310, 35.970661, 19.027260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231202, 0.133336, -0.963726,
		-0.894810, 0.359706, 0.264436,
		0.381917, 0.923489, 0.036146,
		33.660885, 36.247707, 19.038103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931564, 35.959770, 18.616394>,  <33.393543, 35.601265, 19.012802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931564, 35.959770, 18.616394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281357, 36.153763, 18.620098>,  <33.491230, 36.270157, 18.622320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281357, 36.153763, 18.620098>,  <32.931564, 35.959770, 18.616394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281357, 36.153763, 18.620098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190719, 0.361322, -0.912728,
		-0.446000, 0.796394, 0.408462,
		0.874477, 0.484978, 0.009262,
		33.543701, 36.299255, 18.622877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801540, 36.666313, 18.424690>,  <32.931564, 35.959770, 18.616394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801540, 36.666313, 18.424690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184826, 36.594769, 18.335388>,  <33.414795, 36.551842, 18.281807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184826, 36.594769, 18.335388>,  <32.801540, 36.666313, 18.424690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184826, 36.594769, 18.335388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109037, 0.493148, -0.863085,
		0.264472, 0.851359, 0.453036,
		0.958210, -0.178864, -0.223254,
		33.472290, 36.541111, 18.268412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898392, 37.278023, 18.149174>,  <32.801540, 36.666313, 18.424690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898392, 37.278023, 18.149174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203014, 37.047840, 18.029926>,  <33.385788, 36.909729, 17.958378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203014, 37.047840, 18.029926>,  <32.898392, 37.278023, 18.149174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203014, 37.047840, 18.029926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006554, 0.466804, -0.884336,
		0.648062, 0.671521, 0.359271,
		0.761559, -0.575459, -0.298117,
		33.431480, 36.875202, 17.940491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459087, 37.726727, 17.875204>,  <32.898392, 37.278023, 18.149174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459087, 37.726727, 17.875204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515366, 37.366570, 17.710527>,  <33.549133, 37.150475, 17.611721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515366, 37.366570, 17.710527>,  <33.459087, 37.726727, 17.875204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515366, 37.366570, 17.710527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088092, 0.402795, -0.911041,
		0.986126, 0.164448, -0.022645,
		0.140697, -0.900396, -0.411693,
		33.557575, 37.096451, 17.587019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990696, 37.825603, 17.256374>,  <33.459087, 37.726727, 17.875204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990696, 37.825603, 17.256374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804127, 37.478325, 17.188625>,  <33.692184, 37.269958, 17.147976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.804127, 37.478325, 17.188625>,  <33.990696, 37.825603, 17.256374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804127, 37.478325, 17.188625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021837, 0.202721, -0.978993,
		0.884292, -0.452925, -0.113513,
		-0.466423, -0.868195, -0.169375,
		33.664200, 37.217865, 17.137814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272083, 37.522873, 16.602518>,  <33.990696, 37.825603, 17.256374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272083, 37.522873, 16.602518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913742, 37.354996, 16.660912>,  <33.698738, 37.254269, 16.695948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913742, 37.354996, 16.660912>,  <34.272083, 37.522873, 16.602518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913742, 37.354996, 16.660912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269763, 0.252617, -0.929200,
		0.353103, -0.871804, -0.339525,
		-0.895849, -0.419694, 0.145981,
		33.644985, 37.229088, 16.704706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142609, 37.053001, 16.063646>,  <34.272083, 37.522873, 16.602518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142609, 37.053001, 16.063646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770123, 37.105518, 16.199646>,  <33.546631, 37.137028, 16.281246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.770123, 37.105518, 16.199646>,  <34.142609, 37.053001, 16.063646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770123, 37.105518, 16.199646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330883, 0.086590, -0.939691,
		-0.152819, -0.987554, -0.037190,
		-0.931215, 0.131298, 0.339998,
		33.490757, 37.144909, 16.301645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738129, 36.605797, 15.574162>,  <34.142609, 37.053001, 16.063646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738129, 36.605797, 15.574162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511448, 36.874981, 15.764310>,  <33.375439, 37.036491, 15.878398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511448, 36.874981, 15.764310>,  <33.738129, 36.605797, 15.574162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511448, 36.874981, 15.764310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476806, 0.202670, -0.855325,
		-0.671944, -0.711369, 0.206020,
		-0.566698, 0.672962, 0.475368,
		33.341438, 37.076870, 15.906920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025513, 36.424595, 15.414099>,  <33.738129, 36.605797, 15.574162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025513, 36.424595, 15.414099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026726, 36.800411, 15.551071>,  <33.027454, 37.025902, 15.633254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026726, 36.800411, 15.551071>,  <33.025513, 36.424595, 15.414099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026726, 36.800411, 15.551071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387319, 0.316807, -0.865804,
		-0.921941, -0.130005, 0.364862,
		0.003032, 0.939538, 0.342430,
		33.027634, 37.082272, 15.653800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385052, 36.651451, 15.637302>,  <33.025513, 36.424595, 15.414099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385052, 36.651451, 15.637302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566315, 36.997032, 15.549459>,  <32.675072, 37.204380, 15.496753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566315, 36.997032, 15.549459>,  <32.385052, 36.651451, 15.637302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566315, 36.997032, 15.549459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741236, 0.228343, -0.631212,
		-0.495193, 0.448821, 0.743870,
		0.453159, 0.863955, -0.219609,
		32.702263, 37.256218, 15.483576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811588, 37.251286, 15.647285>,  <32.385052, 36.651451, 15.637302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811588, 37.251286, 15.647285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113384, 37.419785, 15.445971>,  <32.294460, 37.520885, 15.325183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.113384, 37.419785, 15.445971>,  <31.811588, 37.251286, 15.647285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113384, 37.419785, 15.445971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656118, 0.465524, -0.593967,
		-0.015915, 0.778357, 0.627621,
		0.754491, 0.421246, -0.503285,
		32.339733, 37.546158, 15.294986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555670, 37.963387, 15.433608>,  <31.811588, 37.251286, 15.647285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555670, 37.963387, 15.433608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870514, 37.877213, 15.202420>,  <32.059422, 37.825508, 15.063707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870514, 37.877213, 15.202420>,  <31.555670, 37.963387, 15.433608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870514, 37.877213, 15.202420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457864, 0.423796, -0.781510,
		0.413303, 0.879765, 0.234935,
		0.787109, -0.215432, -0.577969,
		32.106647, 37.812584, 15.029030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579321, 38.477589, 14.973845>,  <31.555670, 37.963387, 15.433608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579321, 38.477589, 14.973845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794851, 38.203171, 14.778291>,  <31.924170, 38.038521, 14.660958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794851, 38.203171, 14.778291>,  <31.579321, 38.477589, 14.973845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794851, 38.203171, 14.778291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363064, 0.334556, -0.869631,
		0.760164, 0.646078, -0.068810,
		0.538828, -0.686044, -0.488884,
		31.956499, 37.997356, 14.631625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893965, 38.879276, 14.379741>,  <31.579321, 38.477589, 14.973845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893965, 38.879276, 14.379741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917025, 38.490013, 14.290614>,  <31.930861, 38.256454, 14.237139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917025, 38.490013, 14.290614>,  <31.893965, 38.879276, 14.379741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917025, 38.490013, 14.290614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326287, 0.192563, -0.925449,
		0.943511, 0.126055, -0.306426,
		0.057651, -0.973154, -0.222816,
		31.934320, 38.198067, 14.223769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176468, 38.833836, 13.713894>,  <31.893965, 38.879276, 14.379741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176468, 38.833836, 13.713894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977386, 38.491428, 13.769786>,  <31.857937, 38.285984, 13.803321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.977386, 38.491428, 13.769786>,  <32.176468, 38.833836, 13.713894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977386, 38.491428, 13.769786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427512, 0.101942, -0.898243,
		0.754667, -0.506797, -0.416695,
		-0.497706, -0.856017, 0.139730,
		31.828075, 38.234623, 13.811705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401184, 38.416710, 13.108561>,  <32.176468, 38.833836, 13.713894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401184, 38.416710, 13.108561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057102, 38.261936, 13.241424>,  <31.850653, 38.169071, 13.321141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057102, 38.261936, 13.241424>,  <32.401184, 38.416710, 13.108561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057102, 38.261936, 13.241424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361153, 0.002395, -0.932503,
		0.360022, -0.922104, -0.141803,
		-0.860205, -0.386935, 0.332159,
		31.799040, 38.145855, 13.341071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151058, 37.901966, 12.657911>,  <32.401184, 38.416710, 13.108561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151058, 37.901966, 12.657911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811409, 37.977013, 12.855409>,  <31.607618, 38.022041, 12.973907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811409, 37.977013, 12.855409>,  <32.151058, 37.901966, 12.657911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811409, 37.977013, 12.855409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515732, -0.092694, -0.851721,
		-0.114024, -0.977860, 0.175465,
		-0.849128, 0.187609, 0.493744,
		31.556671, 38.033298, 13.003531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641365, 37.520721, 13.139414>,  <32.151058, 37.901966, 12.657911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641365, 37.520721, 13.139414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628918, 37.505558, 12.739896>,  <32.621449, 37.496460, 12.500185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628918, 37.505558, 12.739896>,  <32.641365, 37.520721, 13.139414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628918, 37.505558, 12.739896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075346, -0.996526, 0.035479,
		-0.996672, -0.074151, 0.033870,
		-0.031122, -0.037913, -0.998796,
		32.619579, 37.494183, 12.440257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176121, 36.888962, 12.892918>,  <32.641365, 37.520721, 13.139414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176121, 36.888962, 12.892918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.092129, 36.529869, 12.738008>,  <32.041733, 36.314411, 12.645063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.092129, 36.529869, 12.738008>,  <32.176121, 36.888962, 12.892918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092129, 36.529869, 12.738008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260914, -0.433190, 0.862711,
		-0.942249, 0.080103, 0.325191,
		-0.209975, -0.897736, -0.387273,
		32.029137, 36.260548, 12.621827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724421, 36.615173, 13.342391>,  <32.176121, 36.888962, 12.892918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724421, 36.615173, 13.342391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882196, 36.308346, 13.139994>,  <31.976862, 36.124249, 13.018556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.882196, 36.308346, 13.139994>,  <31.724421, 36.615173, 13.342391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882196, 36.308346, 13.139994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095813, -0.513305, 0.852841,
		-0.913914, -0.384873, -0.128972,
		0.394438, -0.767067, -0.505992,
		32.000526, 36.078224, 12.988196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358732, 35.942627, 13.443804>,  <31.724421, 36.615173, 13.342391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358732, 35.942627, 13.443804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736128, 35.853085, 13.346058>,  <31.962566, 35.799358, 13.287411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.736128, 35.853085, 13.346058>,  <31.358732, 35.942627, 13.443804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736128, 35.853085, 13.346058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095581, -0.522226, 0.847434,
		-0.317316, -0.822903, -0.471319,
		0.943491, -0.223855, -0.244364,
		32.019176, 35.785927, 13.272748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507816, 35.169815, 13.760652>,  <31.358732, 35.942627, 13.443804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507816, 35.169815, 13.760652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854239, 35.340023, 13.655669>,  <32.062092, 35.442146, 13.592680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854239, 35.340023, 13.655669>,  <31.507816, 35.169815, 13.760652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854239, 35.340023, 13.655669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476558, -0.543936, 0.690670,
		0.151134, -0.723234, -0.673863,
		0.866055, 0.425518, -0.262456,
		32.114056, 35.467678, 13.576932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985586, 34.687225, 13.815689>,  <31.507816, 35.169815, 13.760652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985586, 34.687225, 13.815689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243927, 34.991257, 13.786964>,  <32.398933, 35.173676, 13.769730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243927, 34.991257, 13.786964>,  <31.985586, 34.687225, 13.815689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243927, 34.991257, 13.786964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581362, -0.428657, 0.691571,
		0.494864, -0.488403, -0.718729,
		0.645854, 0.760076, -0.071812,
		32.437683, 35.219280, 13.765421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645000, 34.374687, 13.715962>,  <31.985586, 34.687225, 13.815689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645000, 34.374687, 13.715962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720898, 34.737251, 13.866918>,  <32.766438, 34.954788, 13.957491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720898, 34.737251, 13.866918>,  <32.645000, 34.374687, 13.715962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720898, 34.737251, 13.866918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761849, -0.378380, 0.525751,
		0.619341, 0.187756, -0.762341,
		0.189742, 0.906409, 0.377387,
		32.777821, 35.009174, 13.980134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424500, 34.479485, 13.727789>,  <32.645000, 34.374687, 13.715962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424500, 34.479485, 13.727789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258526, 34.734325, 13.987615>,  <33.158943, 34.887230, 14.143510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.258526, 34.734325, 13.987615>,  <33.424500, 34.479485, 13.727789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258526, 34.734325, 13.987615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619640, -0.324900, 0.714483,
		0.666242, 0.698957, -0.259963,
		-0.414931, 0.637102, 0.649564,
		33.134048, 34.925457, 14.182484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993336, 34.889210, 14.026850>,  <33.424500, 34.479485, 13.727789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993336, 34.889210, 14.026850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692131, 34.912777, 14.288996>,  <33.511410, 34.926918, 14.446283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.692131, 34.912777, 14.288996>,  <33.993336, 34.889210, 14.026850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692131, 34.912777, 14.288996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642344, -0.150202, 0.751554,
		0.142714, 0.986898, 0.075261,
		-0.753012, 0.058913, 0.655364,
		33.466228, 34.930450, 14.485605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200611, 35.427681, 14.566127>,  <33.993336, 34.889210, 14.026850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200611, 35.427681, 14.566127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895840, 35.218899, 14.719502>,  <33.712975, 35.093628, 14.811527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.895840, 35.218899, 14.719502>,  <34.200611, 35.427681, 14.566127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895840, 35.218899, 14.719502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414439, 0.062024, 0.907961,
		-0.497696, 0.850716, 0.169060,
		-0.761931, -0.521954, 0.383439,
		33.667259, 35.062313, 14.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839668, 35.884563, 15.109234>,  <34.200611, 35.427681, 14.566127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839668, 35.884563, 15.109234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818077, 35.490559, 15.174762>,  <33.805122, 35.254154, 15.214079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818077, 35.490559, 15.174762>,  <33.839668, 35.884563, 15.109234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818077, 35.490559, 15.174762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330503, 0.137189, 0.933781,
		-0.942260, 0.104543, 0.318145,
		-0.053975, -0.985013, 0.163820,
		33.801884, 35.195053, 15.223907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907749, 35.804897, 15.806543>,  <33.839668, 35.884563, 15.109234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907749, 35.804897, 15.806543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884087, 35.406990, 15.773229>,  <33.869888, 35.168247, 15.753240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884087, 35.406990, 15.773229>,  <33.907749, 35.804897, 15.806543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884087, 35.406990, 15.773229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520450, -0.101933, 0.847786,
		-0.851840, 0.006808, 0.523758,
		-0.059160, -0.994768, -0.083287,
		33.866337, 35.108559, 15.748242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663567, 35.636044, 16.395922>,  <33.907749, 35.804897, 15.806543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663567, 35.636044, 16.395922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839092, 35.311615, 16.241207>,  <33.944408, 35.116959, 16.148378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839092, 35.311615, 16.241207>,  <33.663567, 35.636044, 16.395922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839092, 35.311615, 16.241207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388282, -0.217034, 0.895619,
		-0.810356, -0.543196, 0.219685,
		0.438818, -0.811070, -0.386788,
		33.970737, 35.068295, 16.125172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485050, 35.065811, 16.808832>,  <33.663567, 35.636044, 16.395922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485050, 35.065811, 16.808832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.838451, 34.988468, 16.638170>,  <34.050491, 34.942062, 16.535774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.838451, 34.988468, 16.638170>,  <33.485050, 35.065811, 16.808832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838451, 34.988468, 16.638170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373778, -0.257967, 0.890923,
		-0.282337, -0.946606, -0.155638,
		0.883502, -0.193367, -0.426654,
		34.103504, 34.930458, 16.510174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625935, 34.498295, 17.158606>,  <33.485050, 35.065811, 16.808832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625935, 34.498295, 17.158606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979954, 34.608398, 17.008444>,  <34.192364, 34.674461, 16.918346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979954, 34.608398, 17.008444>,  <33.625935, 34.498295, 17.158606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979954, 34.608398, 17.008444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450102, -0.300291, 0.840972,
		0.118755, -0.913267, -0.389666,
		0.885046, 0.275259, -0.375402,
		34.245468, 34.690975, 16.895823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105679, 34.070591, 17.389086>,  <33.625935, 34.498295, 17.158606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105679, 34.070591, 17.389086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344601, 34.375515, 17.289398>,  <34.487953, 34.558472, 17.229586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344601, 34.375515, 17.289398>,  <34.105679, 34.070591, 17.389086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344601, 34.375515, 17.289398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517654, -0.129091, 0.845795,
		0.612589, -0.634204, -0.471720,
		0.597301, 0.762313, -0.249219,
		34.523792, 34.604210, 17.214632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813541, 33.833286, 17.661003>,  <34.105679, 34.070591, 17.389086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813541, 33.833286, 17.661003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861130, 34.228348, 17.620253>,  <34.889683, 34.465385, 17.595802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.861130, 34.228348, 17.620253>,  <34.813541, 33.833286, 17.661003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861130, 34.228348, 17.620253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547251, 0.020384, 0.836720,
		0.828469, -0.155300, -0.538071,
		0.118975, 0.987657, -0.101875,
		34.896824, 34.524647, 17.589689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624313, 33.981812, 17.729349>,  <34.813541, 33.833286, 17.661003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624313, 33.981812, 17.729349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387997, 34.291477, 17.820236>,  <35.246204, 34.477276, 17.874769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387997, 34.291477, 17.820236>,  <35.624313, 33.981812, 17.729349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387997, 34.291477, 17.820236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622388, 0.258091, 0.738933,
		0.513413, 0.577978, -0.634310,
		-0.590796, 0.774165, 0.227219,
		35.210758, 34.523727, 17.888403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108067, 34.529099, 17.998138>,  <35.624313, 33.981812, 17.729349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108067, 34.529099, 17.998138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752930, 34.655731, 18.131712>,  <35.539848, 34.731709, 18.211857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.752930, 34.655731, 18.131712>,  <36.108067, 34.529099, 17.998138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752930, 34.655731, 18.131712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441493, 0.381535, 0.812105,
		0.129688, 0.868452, -0.478511,
		-0.887843, 0.316579, 0.333935,
		35.486576, 34.750706, 18.231892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273380, 35.203232, 18.381140>,  <36.108067, 34.529099, 17.998138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273380, 35.203232, 18.381140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916599, 35.086971, 18.519676>,  <35.702530, 35.017216, 18.602798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916599, 35.086971, 18.519676>,  <36.273380, 35.203232, 18.381140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916599, 35.086971, 18.519676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257122, 0.304018, 0.917312,
		-0.371908, 0.907247, -0.196436,
		-0.891949, -0.290648, 0.346340,
		35.649014, 34.999779, 18.623579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946545, 35.815025, 18.825695>,  <36.273380, 35.203232, 18.381140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946545, 35.815025, 18.825695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770912, 35.482227, 18.961334>,  <35.665531, 35.282547, 19.042717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.770912, 35.482227, 18.961334>,  <35.946545, 35.815025, 18.825695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770912, 35.482227, 18.961334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220971, 0.265829, 0.938353,
		-0.870850, 0.486943, 0.067127,
		-0.439080, -0.831998, 0.339097,
		35.639187, 35.232628, 19.063063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.620167, 38.433392, 23.457203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824829, 38.091347, 23.490669>,  <32.947628, 37.886120, 23.510750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.824829, 38.091347, 23.490669>,  <32.620167, 38.433392, 23.457203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824829, 38.091347, 23.490669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125079, 0.022210, 0.991898,
		-0.850038, -0.517974, -0.095592,
		0.511654, -0.855108, 0.083667,
		32.978325, 37.834816, 23.515770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129879, 37.903645, 23.866560>,  <32.620167, 38.433392, 23.457203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129879, 37.903645, 23.866560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.507786, 37.776596, 23.898914>,  <32.734528, 37.700367, 23.918327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.507786, 37.776596, 23.898914>,  <32.129879, 37.903645, 23.866560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507786, 37.776596, 23.898914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094845, -0.028705, 0.995078,
		-0.313734, -0.947784, -0.057245,
		0.944762, -0.317619, 0.080887,
		32.791214, 37.681309, 23.923180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149189, 37.274174, 24.321238>,  <32.129879, 37.903645, 23.866560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149189, 37.274174, 24.321238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.518719, 37.425785, 24.342764>,  <32.740437, 37.516750, 24.355679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.518719, 37.425785, 24.342764>,  <32.149189, 37.274174, 24.321238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518719, 37.425785, 24.342764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003881, -0.149835, 0.988703,
		0.382807, -0.913175, -0.139892,
		0.923820, 0.379025, 0.053814,
		32.795864, 37.539494, 24.358908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333668, 36.877590, 24.891308>,  <32.149189, 37.274174, 24.321238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333668, 36.877590, 24.891308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.627483, 37.142460, 24.832001>,  <32.803772, 37.301380, 24.796417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.627483, 37.142460, 24.832001>,  <32.333668, 36.877590, 24.891308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627483, 37.142460, 24.832001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236741, -0.045305, 0.970516,
		0.635931, -0.747981, -0.190041,
		0.734538, 0.662172, -0.148267,
		32.847843, 37.341110, 24.787521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002087, 36.658474, 25.091663>,  <32.333668, 36.877590, 24.891308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002087, 36.658474, 25.091663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.974033, 37.057194, 25.106977>,  <32.957203, 37.296425, 25.116167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.974033, 37.057194, 25.106977>,  <33.002087, 36.658474, 25.091663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974033, 37.057194, 25.106977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284972, -0.016762, 0.958389,
		0.955967, 0.078123, -0.282885,
		-0.070131, 0.996803, 0.038287,
		32.952995, 37.356236, 25.118464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604393, 36.840408, 25.473867>,  <33.002087, 36.658474, 25.091663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604393, 36.840408, 25.473867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.377697, 37.169662, 25.487989>,  <33.241680, 37.367214, 25.496464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.377697, 37.169662, 25.487989>,  <33.604393, 36.840408, 25.473867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377697, 37.169662, 25.487989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281063, 0.152877, 0.947434,
		0.774473, 0.546874, -0.317996,
		-0.566741, 0.823139, 0.035306,
		33.207676, 37.416603, 25.498581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026810, 37.273865, 25.946127>,  <33.604393, 36.840408, 25.473867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026810, 37.273865, 25.946127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656055, 37.423985, 25.948692>,  <33.433605, 37.514057, 25.950232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656055, 37.423985, 25.948692>,  <34.026810, 37.273865, 25.946127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656055, 37.423985, 25.948692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042534, 0.088047, 0.995208,
		0.372935, 0.922713, -0.097572,
		-0.926882, 0.375298, 0.006411,
		33.377991, 37.536575, 25.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039566, 37.834305, 26.304230>,  <34.026810, 37.273865, 25.946127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039566, 37.834305, 26.304230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656269, 37.720222, 26.312450>,  <33.426289, 37.651772, 26.317383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.656269, 37.720222, 26.312450>,  <34.039566, 37.834305, 26.304230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656269, 37.720222, 26.312450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067790, 0.296413, 0.952651,
		-0.277794, 0.911481, -0.303370,
		-0.958246, -0.285206, 0.020553,
		33.368793, 37.634659, 26.318617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755375, 38.314636, 26.671753>,  <34.039566, 37.834305, 26.304230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755375, 38.314636, 26.671753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.543156, 37.976883, 26.701488>,  <33.415825, 37.774231, 26.719330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.543156, 37.976883, 26.701488>,  <33.755375, 38.314636, 26.671753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543156, 37.976883, 26.701488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138472, 0.000187, 0.990366,
		-0.836266, 0.535734, 0.116825,
		-0.530551, -0.844387, 0.074341,
		33.383991, 37.723568, 26.723791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420200, 38.402859, 27.297770>,  <33.755375, 38.314636, 26.671753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420200, 38.402859, 27.297770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374607, 38.012550, 27.223063>,  <33.347252, 37.778366, 27.178238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374607, 38.012550, 27.223063>,  <33.420200, 38.402859, 27.297770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374607, 38.012550, 27.223063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067390, -0.195154, 0.978455,
		-0.991195, 0.098941, 0.088001,
		-0.113983, -0.975769, -0.186768,
		33.340412, 37.719818, 27.167032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721043, 38.100918, 27.585377>,  <33.420200, 38.402859, 27.297770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721043, 38.100918, 27.585377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.008438, 37.824497, 27.553814>,  <33.180874, 37.658646, 27.534876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.008438, 37.824497, 27.553814>,  <32.721043, 38.100918, 27.585377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008438, 37.824497, 27.553814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128802, -0.243680, 0.961265,
		-0.683510, -0.680493, -0.264089,
		0.718487, -0.691049, -0.078909,
		33.223984, 37.617184, 27.530142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584961, 37.669891, 28.176497>,  <32.721043, 38.100918, 27.585377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584961, 37.669891, 28.176497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.943367, 37.543556, 28.051655>,  <33.158409, 37.467754, 27.976749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.943367, 37.543556, 28.051655>,  <32.584961, 37.669891, 28.176497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943367, 37.543556, 28.051655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181858, -0.380208, 0.906846,
		-0.405089, -0.869301, -0.283230,
		0.896008, -0.315845, -0.312108,
		33.212170, 37.448803, 27.958023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699265, 36.931499, 28.178280>,  <32.584961, 37.669891, 28.176497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699265, 36.931499, 28.178280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.049759, 37.118427, 28.225302>,  <33.260056, 37.230583, 28.253515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.049759, 37.118427, 28.225302>,  <32.699265, 36.931499, 28.178280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049759, 37.118427, 28.225302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048004, -0.327394, 0.943668,
		0.479481, -0.821235, -0.309308,
		0.876238, 0.467318, 0.117557,
		33.312630, 37.258621, 28.260569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466988, 37.010036, 28.786957>,  <32.699265, 36.931499, 28.178280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466988, 37.010036, 28.786957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067135, 37.020512, 28.790047>,  <31.827225, 37.026794, 28.791901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.067135, 37.020512, 28.790047>,  <32.466988, 37.010036, 28.786957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067135, 37.020512, 28.790047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017318, 0.389532, 0.920850,
		0.021104, 0.920641, -0.389841,
		-0.999627, 0.026185, 0.007723,
		31.767246, 37.028366, 28.792364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176437, 37.531315, 29.248716>,  <32.466988, 37.010036, 28.786957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176437, 37.531315, 29.248716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.802734, 37.496864, 29.387131>,  <31.578512, 37.476192, 29.470179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.802734, 37.496864, 29.387131>,  <32.176437, 37.531315, 29.248716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802734, 37.496864, 29.387131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241476, -0.561224, -0.791655,
		0.262389, -0.823170, 0.503530,
		-0.934260, -0.086131, 0.346034,
		31.522457, 37.471024, 29.490940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047001, 36.770901, 29.295870>,  <32.176437, 37.531315, 29.248716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047001, 36.770901, 29.295870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716177, 36.992138, 29.255760>,  <31.517681, 37.124882, 29.231693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716177, 36.992138, 29.255760>,  <32.047001, 36.770901, 29.295870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716177, 36.992138, 29.255760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203014, -0.460266, -0.864257,
		-0.524170, -0.694437, 0.492954,
		-0.827062, 0.553094, -0.100277,
		31.468058, 37.158066, 29.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552916, 36.338383, 29.021936>,  <32.047001, 36.770901, 29.295870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552916, 36.338383, 29.021936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.427204, 36.707676, 28.933504>,  <31.351776, 36.929253, 28.880445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.427204, 36.707676, 28.933504>,  <31.552916, 36.338383, 29.021936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427204, 36.707676, 28.933504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278051, -0.312186, -0.908421,
		-0.907698, -0.224027, 0.354818,
		-0.314280, 0.923229, -0.221079,
		31.332920, 36.984646, 28.867180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985741, 36.234505, 28.654411>,  <31.552916, 36.338383, 29.021936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985741, 36.234505, 28.654411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.043337, 36.619411, 28.562048>,  <31.077894, 36.850353, 28.506630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.043337, 36.619411, 28.562048>,  <30.985741, 36.234505, 28.654411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043337, 36.619411, 28.562048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192877, -0.201573, -0.960295,
		-0.970600, 0.182810, 0.156574,
		0.143991, 0.962262, -0.230906,
		31.086535, 36.908089, 28.492777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399643, 36.414425, 28.256332>,  <30.985741, 36.234505, 28.654411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399643, 36.414425, 28.256332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.675776, 36.694973, 28.185310>,  <30.841455, 36.863300, 28.142696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.675776, 36.694973, 28.185310>,  <30.399643, 36.414425, 28.256332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675776, 36.694973, 28.185310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213715, -0.036780, -0.976203,
		-0.691207, 0.711851, 0.124502,
		0.690332, 0.701367, -0.177555,
		30.882875, 36.905384, 28.132044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030176, 37.010197, 28.017605>,  <30.399643, 36.414425, 28.256332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030176, 37.010197, 28.017605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.410597, 37.007511, 27.894022>,  <30.638849, 37.005901, 27.819872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.410597, 37.007511, 27.894022>,  <30.030176, 37.010197, 28.017605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410597, 37.007511, 27.894022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308869, -0.052820, -0.949637,
		-0.009944, 0.998581, -0.052308,
		0.951053, -0.006713, -0.308956,
		30.695913, 37.005497, 27.801334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052635, 37.487736, 27.493017>,  <30.030176, 37.010197, 28.017605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052635, 37.487736, 27.493017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.377352, 37.263012, 27.429308>,  <30.572182, 37.128178, 27.391083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.377352, 37.263012, 27.429308>,  <30.052635, 37.487736, 27.493017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377352, 37.263012, 27.429308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267475, -0.115279, -0.956644,
		0.519089, 0.819197, -0.243852,
		0.811791, -0.561807, -0.159275,
		30.620890, 37.094471, 27.381525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182295, 37.628120, 26.884506>,  <30.052635, 37.487736, 27.493017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182295, 37.628120, 26.884506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.427393, 37.312592, 26.903713>,  <30.574451, 37.123276, 26.915237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.427393, 37.312592, 26.903713>,  <30.182295, 37.628120, 26.884506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427393, 37.312592, 26.903713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144946, -0.171907, -0.974391,
		0.776873, 0.590096, -0.219672,
		0.612747, -0.788819, 0.048018,
		30.611217, 37.075947, 26.918119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592543, 37.835339, 26.272360>,  <30.182295, 37.628120, 26.884506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592543, 37.835339, 26.272360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.620819, 37.451752, 26.382181>,  <30.637785, 37.221600, 26.448074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.620819, 37.451752, 26.382181>,  <30.592543, 37.835339, 26.272360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620819, 37.451752, 26.382181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206152, -0.283344, -0.936599,
		0.975963, 0.009611, -0.217724,
		0.070692, -0.958970, 0.274552,
		30.642027, 37.164062, 26.464546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987045, 37.561577, 25.822905>,  <30.592543, 37.835339, 26.272360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987045, 37.561577, 25.822905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.772938, 37.257141, 25.969456>,  <30.644474, 37.074478, 26.057386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.772938, 37.257141, 25.969456>,  <30.987045, 37.561577, 25.822905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772938, 37.257141, 25.969456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289007, -0.242551, -0.926090,
		0.793702, -0.601593, -0.090130,
		-0.535268, -0.761088, 0.366378,
		30.612358, 37.028816, 26.079369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172779, 37.031548, 25.381130>,  <30.987045, 37.561577, 25.822905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172779, 37.031548, 25.381130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.823868, 36.924637, 25.544933>,  <30.614521, 36.860493, 25.643215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.823868, 36.924637, 25.544933>,  <31.172779, 37.031548, 25.381130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823868, 36.924637, 25.544933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346619, -0.252776, -0.903305,
		0.344942, -0.929876, 0.127849,
		-0.872279, -0.267273, 0.409506,
		30.562183, 36.844456, 25.667786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033346, 36.513039, 25.037777>,  <31.172779, 37.031548, 25.381130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033346, 36.513039, 25.037777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.673746, 36.594307, 25.192965>,  <30.457985, 36.643066, 25.286077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.673746, 36.594307, 25.192965>,  <31.033346, 36.513039, 25.037777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673746, 36.594307, 25.192965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423893, -0.181074, -0.887427,
		-0.110047, -0.962255, 0.248907,
		-0.899002, 0.203169, 0.387966,
		30.404045, 36.655258, 25.309355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539839, 35.844036, 24.893854>,  <31.033346, 36.513039, 25.037777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539839, 35.844036, 24.893854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327585, 36.177608, 24.954500>,  <30.200233, 36.377750, 24.990889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327585, 36.177608, 24.954500>,  <30.539839, 35.844036, 24.893854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327585, 36.177608, 24.954500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574028, -0.221961, -0.788178,
		-0.623633, -0.505266, 0.596480,
		-0.530635, 0.833930, 0.151615,
		30.168394, 36.427788, 24.999985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857624, 35.633961, 24.664509>,  <30.539839, 35.844036, 24.893854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857624, 35.633961, 24.664509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.893240, 36.031475, 24.637794>,  <29.914610, 36.269985, 24.621767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.893240, 36.031475, 24.637794>,  <29.857624, 35.633961, 24.664509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893240, 36.031475, 24.637794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496382, -0.013857, -0.867994,
		-0.863526, 0.110437, 0.492064,
		0.089040, 0.993786, -0.066785,
		29.919952, 36.329613, 24.617760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129711, 35.200024, 24.703352>,  <29.857624, 35.633961, 24.664509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129711, 35.200024, 24.703352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.256771, 34.855194, 24.545399>,  <29.333008, 34.648296, 24.450626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.256771, 34.855194, 24.545399>,  <29.129711, 35.200024, 24.703352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256771, 34.855194, 24.545399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134528, -0.371265, 0.918730,
		-0.938616, -0.344959, -0.001960,
		0.317652, -0.862071, -0.394882,
		29.352066, 34.596573, 24.426933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919674, 34.750397, 25.182991>,  <29.129711, 35.200024, 24.703352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919674, 34.750397, 25.182991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.204981, 34.580696, 24.959827>,  <29.376165, 34.478874, 24.825930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.204981, 34.580696, 24.959827>,  <28.919674, 34.750397, 25.182991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204981, 34.580696, 24.959827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371706, -0.445874, 0.814267,
		-0.594212, -0.788167, -0.160329,
		0.713265, -0.424252, -0.557910,
		29.418961, 34.453423, 24.792454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938440, 34.149372, 25.497932>,  <28.919674, 34.750397, 25.182991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938440, 34.149372, 25.497932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.267120, 34.202084, 25.276142>,  <29.464329, 34.233711, 25.143068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.267120, 34.202084, 25.276142>,  <28.938440, 34.149372, 25.497932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267120, 34.202084, 25.276142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568607, -0.123586, 0.813273,
		0.038645, -0.983545, -0.176479,
		0.821701, 0.131776, -0.554475,
		29.513630, 34.241615, 25.109800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403515, 33.494781, 25.584988>,  <28.938440, 34.149372, 25.497932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403515, 33.494781, 25.584988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664049, 33.775963, 25.470715>,  <29.820370, 33.944672, 25.402151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.664049, 33.775963, 25.470715>,  <29.403515, 33.494781, 25.584988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664049, 33.775963, 25.470715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598337, -0.244273, 0.763101,
		0.466641, -0.667971, -0.579708,
		0.651336, 0.702955, -0.285684,
		29.859449, 33.986851, 25.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994961, 33.230198, 25.808189>,  <29.403515, 33.494781, 25.584988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994961, 33.230198, 25.808189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.069132, 33.620525, 25.761906>,  <30.113634, 33.854721, 25.734137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.069132, 33.620525, 25.761906>,  <29.994961, 33.230198, 25.808189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069132, 33.620525, 25.761906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686182, -0.044294, 0.726080,
		0.703400, -0.214030, -0.677805,
		0.185426, 0.975822, -0.115708,
		30.124760, 33.913273, 25.727194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703362, 33.263000, 25.896828>,  <29.994961, 33.230198, 25.808189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703362, 33.263000, 25.896828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.555983, 33.631882, 25.943811>,  <30.467556, 33.853210, 25.972002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.555983, 33.631882, 25.943811>,  <30.703362, 33.263000, 25.896828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555983, 33.631882, 25.943811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483605, 0.082223, 0.871416,
		0.793961, 0.377873, -0.476275,
		-0.368445, 0.922199, 0.117459,
		30.445450, 33.908543, 25.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310287, 33.710464, 26.090343>,  <30.703362, 33.263000, 25.896828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310287, 33.710464, 26.090343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.979393, 33.910206, 26.193356>,  <30.780857, 34.030052, 26.255163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.979393, 33.910206, 26.193356>,  <31.310287, 33.710464, 26.090343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979393, 33.910206, 26.193356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403061, 0.208098, 0.891200,
		0.391436, 0.841033, -0.373418,
		-0.827236, 0.499358, 0.257531,
		30.731222, 34.060013, 26.270615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490656, 34.405525, 26.285929>,  <31.310287, 33.710464, 26.090343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490656, 34.405525, 26.285929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.150135, 34.295422, 26.464598>,  <30.945822, 34.229359, 26.571798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.150135, 34.295422, 26.464598>,  <31.490656, 34.405525, 26.285929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150135, 34.295422, 26.464598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424367, 0.139396, 0.894696,
		-0.308538, 0.951210, -0.001857,
		-0.851303, -0.275260, 0.446671,
		30.894745, 34.212845, 26.598598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554361, 34.729397, 26.951069>,  <31.490656, 34.405525, 26.285929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554361, 34.729397, 26.951069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241629, 34.488808, 27.016764>,  <31.053989, 34.344456, 27.056181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241629, 34.488808, 27.016764>,  <31.554361, 34.729397, 26.951069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241629, 34.488808, 27.016764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311972, -0.149314, 0.938285,
		-0.539828, 0.784817, 0.304381,
		-0.781830, -0.601471, 0.164237,
		31.007080, 34.308365, 27.066034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101847, 35.042786, 27.489801>,  <31.554361, 34.729397, 26.951069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101847, 35.042786, 27.489801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.054190, 34.646172, 27.469189>,  <31.025595, 34.408203, 27.456821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.054190, 34.646172, 27.469189>,  <31.101847, 35.042786, 27.489801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054190, 34.646172, 27.469189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359335, -0.091443, 0.928717,
		-0.925572, 0.092134, 0.367190,
		-0.119143, -0.991539, -0.051530,
		31.018446, 34.348709, 27.453730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900137, 34.948612, 28.163973>,  <31.101847, 35.042786, 27.489801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900137, 34.948612, 28.163973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.041916, 34.603912, 28.018776>,  <31.126984, 34.397095, 27.931658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.041916, 34.603912, 28.018776>,  <30.900137, 34.948612, 28.163973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041916, 34.603912, 28.018776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524191, -0.138346, 0.840288,
		-0.774333, -0.488114, 0.402683,
		0.354447, -0.861745, -0.362991,
		31.148251, 34.345390, 27.909878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837852, 34.472488, 28.809914>,  <30.900137, 34.948612, 28.163973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837852, 34.472488, 28.809914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.078768, 34.310062, 28.535000>,  <31.223316, 34.212608, 28.370052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.078768, 34.310062, 28.535000>,  <30.837852, 34.472488, 28.809914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078768, 34.310062, 28.535000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553445, -0.408044, 0.726084,
		-0.575282, -0.817685, -0.021024,
		0.602287, -0.406068, -0.687284,
		31.259455, 34.188244, 28.328815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.123781, 34.743649, 20.803776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377298, 34.436481, 20.840899>,  <28.529409, 34.252182, 20.863173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377298, 34.436481, 20.840899>,  <28.123781, 34.743649, 20.803776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377298, 34.436481, 20.840899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170947, -0.022045, 0.985033,
		-0.754377, -0.640172, -0.145245,
		0.633793, -0.767916, 0.092805,
		28.567436, 34.206108, 20.868740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866539, 34.168602, 21.258516>,  <28.123781, 34.743649, 20.803776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866539, 34.168602, 21.258516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265015, 34.194973, 21.235676>,  <28.504101, 34.210796, 21.221972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265015, 34.194973, 21.235676>,  <27.866539, 34.168602, 21.258516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265015, 34.194973, 21.235676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056940, 0.004341, 0.998368,
		0.066072, -0.997815, 0.000570,
		0.996189, 0.065932, -0.057103,
		28.563871, 34.214752, 21.218546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014717, 33.797359, 21.784111>,  <27.866539, 34.168602, 21.258516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014717, 33.797359, 21.784111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356190, 33.985817, 21.695335>,  <28.561073, 34.098892, 21.642071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356190, 33.985817, 21.695335>,  <28.014717, 33.797359, 21.784111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356190, 33.985817, 21.695335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230924, 0.039533, 0.972168,
		0.466801, -0.881172, -0.075049,
		0.853680, 0.471140, -0.221938,
		28.612293, 34.127159, 21.628754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618279, 33.347244, 22.119316>,  <28.014717, 33.797359, 21.784111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618279, 33.347244, 22.119316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733404, 33.727188, 22.070454>,  <28.802479, 33.955154, 22.041136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733404, 33.727188, 22.070454>,  <28.618279, 33.347244, 22.119316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733404, 33.727188, 22.070454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155914, 0.079378, 0.984576,
		0.944909, -0.302421, -0.125251,
		0.287814, 0.949864, -0.122157,
		28.819748, 34.012146, 22.033806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131407, 33.345295, 22.614389>,  <28.618279, 33.347244, 22.119316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131407, 33.345295, 22.614389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079660, 33.730961, 22.521746>,  <29.048613, 33.962360, 22.466160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079660, 33.730961, 22.521746>,  <29.131407, 33.345295, 22.614389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079660, 33.730961, 22.521746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328747, 0.262065, 0.907330,
		0.935516, 0.041235, -0.350869,
		-0.129364, 0.964169, -0.231611,
		29.040852, 34.020210, 22.452263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779636, 33.698364, 22.711161>,  <29.131407, 33.345295, 22.614389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779636, 33.698364, 22.711161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471676, 33.951569, 22.743532>,  <29.286900, 34.103493, 22.762955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471676, 33.951569, 22.743532>,  <29.779636, 33.698364, 22.711161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471676, 33.951569, 22.743532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207936, 0.128938, 0.969607,
		0.603339, 0.763328, -0.230895,
		-0.769899, 0.633013, 0.080930,
		29.240705, 34.141472, 22.767811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082502, 34.260769, 23.145720>,  <29.779636, 33.698364, 22.711161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082502, 34.260769, 23.145720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695713, 34.362373, 23.154146>,  <29.463640, 34.423336, 23.159203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695713, 34.362373, 23.154146>,  <30.082502, 34.260769, 23.145720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695713, 34.362373, 23.154146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104913, 0.321342, 0.941134,
		0.232286, 0.912261, -0.337377,
		-0.966973, 0.254007, 0.021065,
		29.405621, 34.438576, 23.160465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022232, 35.006023, 23.394743>,  <30.082502, 34.260769, 23.145720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022232, 35.006023, 23.394743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686985, 34.802715, 23.473963>,  <29.485836, 34.680733, 23.521494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686985, 34.802715, 23.473963>,  <30.022232, 35.006023, 23.394743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686985, 34.802715, 23.473963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121401, 0.180165, 0.976116,
		-0.531808, 0.842144, -0.089296,
		-0.838118, -0.508266, 0.198050,
		29.435549, 34.650234, 23.533379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653587, 35.411327, 23.891600>,  <30.022232, 35.006023, 23.394743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653587, 35.411327, 23.891600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523392, 35.033897, 23.916012>,  <29.445274, 34.807438, 23.930658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523392, 35.033897, 23.916012>,  <29.653587, 35.411327, 23.891600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523392, 35.033897, 23.916012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176280, 0.002859, 0.984336,
		-0.928968, 0.331151, 0.165403,
		-0.325491, -0.943573, 0.061031,
		29.425745, 34.750824, 23.934320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198559, 35.857784, 24.300024>,  <29.653587, 35.411327, 23.891600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198559, 35.857784, 24.300024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439955, 36.175648, 24.273754>,  <29.584793, 36.366367, 24.257992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439955, 36.175648, 24.273754>,  <29.198559, 35.857784, 24.300024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439955, 36.175648, 24.273754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408381, 0.237292, -0.881429,
		-0.684852, 0.558756, 0.467728,
		0.603492, 0.794660, -0.065675,
		29.621002, 36.414047, 24.254051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818184, 36.543949, 24.072323>,  <29.198559, 35.857784, 24.300024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818184, 36.543949, 24.072323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208487, 36.607471, 24.012087>,  <29.442669, 36.645584, 23.975945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208487, 36.607471, 24.012087>,  <28.818184, 36.543949, 24.072323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208487, 36.607471, 24.012087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205004, 0.422330, -0.882956,
		-0.076620, 0.892422, 0.444648,
		0.975757, 0.158807, -0.150591,
		29.501213, 36.655113, 23.966909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898142, 37.208847, 23.831358>,  <28.818184, 36.543949, 24.072323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898142, 37.208847, 23.831358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259428, 37.071217, 23.728743>,  <29.476200, 36.988640, 23.667173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259428, 37.071217, 23.728743>,  <28.898142, 37.208847, 23.831358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259428, 37.071217, 23.728743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192798, 0.208750, -0.958776,
		0.383444, 0.915443, 0.122210,
		0.903216, -0.344075, -0.256540,
		29.530394, 36.967995, 23.651781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107595, 37.679768, 23.375074>,  <28.898142, 37.208847, 23.831358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107595, 37.679768, 23.375074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336878, 37.360893, 23.299263>,  <29.474447, 37.169567, 23.253777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336878, 37.360893, 23.299263>,  <29.107595, 37.679768, 23.375074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336878, 37.360893, 23.299263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072396, 0.181126, -0.980792,
		0.816205, 0.575919, 0.046109,
		0.573208, -0.797189, -0.189530,
		29.508841, 37.121735, 23.242405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663538, 37.939594, 22.880793>,  <29.107595, 37.679768, 23.375074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663538, 37.939594, 22.880793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636559, 37.544235, 22.826351>,  <29.620371, 37.307022, 22.793686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636559, 37.544235, 22.826351>,  <29.663538, 37.939594, 22.880793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636559, 37.544235, 22.826351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080360, 0.130590, -0.988174,
		0.994481, -0.077589, 0.070620,
		-0.067449, -0.988396, -0.136105,
		29.616323, 37.247715, 22.785521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216772, 37.743561, 22.420551>,  <29.663538, 37.939594, 22.880793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216772, 37.743561, 22.420551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952999, 37.443596, 22.399439>,  <29.794735, 37.263618, 22.386770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952999, 37.443596, 22.399439>,  <30.216772, 37.743561, 22.420551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952999, 37.443596, 22.399439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070328, 0.008366, -0.997489,
		0.748468, -0.661487, 0.047222,
		-0.659431, -0.749910, -0.052783,
		29.755169, 37.218624, 22.383604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591846, 37.152802, 22.079615>,  <30.216772, 37.743561, 22.420551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591846, 37.152802, 22.079615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198572, 37.141529, 22.007444>,  <29.962608, 37.134766, 21.964142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198572, 37.141529, 22.007444>,  <30.591846, 37.152802, 22.079615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198572, 37.141529, 22.007444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181431, -0.038564, -0.982647,
		0.020735, -0.998859, 0.043029,
		-0.983185, -0.028182, -0.180424,
		29.903616, 37.133076, 21.953318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505768, 36.872334, 21.411711>,  <30.591846, 37.152802, 22.079615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505768, 36.872334, 21.411711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130913, 37.003208, 21.460239>,  <29.906000, 37.081734, 21.489357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130913, 37.003208, 21.460239>,  <30.505768, 36.872334, 21.411711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130913, 37.003208, 21.460239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153403, -0.073995, -0.985389,
		-0.313430, -0.942058, 0.119535,
		-0.937139, 0.327188, 0.121322,
		29.849771, 37.101364, 21.496635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224693, 36.528496, 20.951492>,  <30.505768, 36.872334, 21.411711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224693, 36.528496, 20.951492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981287, 36.834816, 21.034683>,  <29.835243, 37.018608, 21.084599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981287, 36.834816, 21.034683>,  <30.224693, 36.528496, 20.951492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981287, 36.834816, 21.034683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229585, 0.080980, -0.969914,
		-0.759604, -0.637957, 0.126539,
		-0.608517, 0.765802, 0.207978,
		29.798733, 37.064556, 21.097076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596891, 36.445824, 20.564690>,  <30.224693, 36.528496, 20.951492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596891, 36.445824, 20.564690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573616, 36.834812, 20.654949>,  <29.559650, 37.068203, 20.709105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573616, 36.834812, 20.654949>,  <29.596891, 36.445824, 20.564690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573616, 36.834812, 20.654949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321240, 0.195772, -0.926541,
		-0.945209, -0.126400, 0.301004,
		-0.058186, 0.972469, 0.225650,
		29.556160, 37.126553, 20.722645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105530, 36.588722, 20.127649>,  <29.596891, 36.445824, 20.564690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105530, 36.588722, 20.127649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309015, 36.915031, 20.237722>,  <29.431107, 37.110817, 20.303766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309015, 36.915031, 20.237722>,  <29.105530, 36.588722, 20.127649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309015, 36.915031, 20.237722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099083, 0.372981, -0.922534,
		-0.855217, 0.442038, 0.270569,
		0.508712, 0.815775, 0.275181,
		29.461628, 37.159763, 20.320276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733635, 37.222515, 19.736502>,  <29.105530, 36.588722, 20.127649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733635, 37.222515, 19.736502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119305, 37.291996, 19.816698>,  <29.350706, 37.333687, 19.864815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119305, 37.291996, 19.816698>,  <28.733635, 37.222515, 19.736502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119305, 37.291996, 19.816698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121953, 0.380929, -0.916526,
		-0.235578, 0.908140, 0.346098,
		0.964173, 0.173706, 0.200490,
		29.408556, 37.344109, 19.876844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820747, 37.834991, 19.563509>,  <28.733635, 37.222515, 19.736502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820747, 37.834991, 19.563509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207052, 37.733036, 19.582834>,  <29.438835, 37.671864, 19.594429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207052, 37.733036, 19.582834>,  <28.820747, 37.834991, 19.563509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207052, 37.733036, 19.582834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153285, 0.410408, -0.898926,
		0.209294, 0.875556, 0.435427,
		0.965764, -0.254884, 0.048314,
		29.496782, 37.656570, 19.597328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209484, 38.401299, 19.342417>,  <28.820747, 37.834991, 19.563509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209484, 38.401299, 19.342417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497169, 38.124325, 19.319555>,  <29.669781, 37.958141, 19.305838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497169, 38.124325, 19.319555>,  <29.209484, 38.401299, 19.342417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497169, 38.124325, 19.319555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239988, 0.324779, -0.914836,
		0.652028, 0.644244, 0.399761,
		0.719211, -0.692437, -0.057154,
		29.712933, 37.916595, 19.302408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.052338, 32.392727, 17.608616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668915, 32.455963, 17.703424>,  <34.438862, 32.493904, 17.760309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668915, 32.455963, 17.703424>,  <35.052338, 32.392727, 17.608616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668915, 32.455963, 17.703424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264851, 0.187852, 0.945815,
		0.105000, 0.969391, -0.221937,
		-0.958556, 0.158091, 0.237020,
		34.381348, 32.503391, 17.774530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131752, 32.991493, 18.070389>,  <35.052338, 32.392727, 17.608616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131752, 32.991493, 18.070389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.790035, 32.803085, 18.158316>,  <34.585003, 32.690041, 18.211071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.790035, 32.803085, 18.158316>,  <35.131752, 32.991493, 18.070389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790035, 32.803085, 18.158316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177219, 0.133619, 0.975059,
		-0.488646, 0.871943, -0.030676,
		-0.854294, -0.471022, 0.219817,
		34.533749, 32.661777, 18.224260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698307, 33.494644, 18.526749>,  <35.131752, 32.991493, 18.070389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698307, 33.494644, 18.526749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588017, 33.112583, 18.569939>,  <34.521843, 32.883347, 18.595854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588017, 33.112583, 18.569939>,  <34.698307, 33.494644, 18.526749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588017, 33.112583, 18.569939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124494, 0.075901, 0.989313,
		-0.953142, 0.286218, 0.097983,
		-0.275722, -0.955154, 0.107976,
		34.505299, 32.826038, 18.602331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223160, 33.685020, 19.008776>,  <34.698307, 33.494644, 18.526749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223160, 33.685020, 19.008776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.293312, 33.291504, 19.023746>,  <34.335403, 33.055393, 19.032728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.293312, 33.291504, 19.023746>,  <34.223160, 33.685020, 19.008776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293312, 33.291504, 19.023746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067975, 0.025823, 0.997353,
		-0.982151, -0.177462, -0.062345,
		0.175382, -0.983789, 0.037425,
		34.345928, 32.996368, 19.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766483, 33.394398, 19.417439>,  <34.223160, 33.685020, 19.008776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766483, 33.394398, 19.417439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052670, 33.114941, 19.416088>,  <34.224380, 32.947266, 19.415277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.052670, 33.114941, 19.416088>,  <33.766483, 33.394398, 19.417439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052670, 33.114941, 19.416088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032462, -0.038070, 0.998748,
		-0.697892, -0.714462, -0.049917,
		0.715467, -0.698638, -0.003376,
		34.267311, 32.905350, 19.415075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633324, 32.742687, 19.892132>,  <33.766483, 33.394398, 19.417439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633324, 32.742687, 19.892132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.028179, 32.736176, 19.828512>,  <34.265091, 32.732269, 19.790340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.028179, 32.736176, 19.828512>,  <33.633324, 32.742687, 19.892132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028179, 32.736176, 19.828512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158733, -0.019108, 0.987137,
		-0.019108, -0.999685, -0.016279,
		-0.987137, 0.016279, 0.159048,
		34.324322, 32.731293, 19.780798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825352, 32.259823, 20.309372>,  <33.633324, 32.742687, 19.892132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825352, 32.259823, 20.309372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167526, 32.449211, 20.225414>,  <34.372829, 32.562843, 20.175039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167526, 32.449211, 20.225414>,  <33.825352, 32.259823, 20.309372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167526, 32.449211, 20.225414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203241, 0.065867, 0.976911,
		0.476363, -0.878344, -0.039884,
		0.855437, 0.473470, -0.209892,
		34.424156, 32.591251, 20.162447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303444, 31.915792, 20.633598>,  <33.825352, 32.259823, 20.309372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303444, 31.915792, 20.633598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489132, 32.269878, 20.621618>,  <34.600544, 32.482330, 20.614429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489132, 32.269878, 20.621618>,  <34.303444, 31.915792, 20.633598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489132, 32.269878, 20.621618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272861, -0.110759, 0.955656,
		0.842643, -0.451807, -0.292957,
		0.464220, 0.885213, -0.029950,
		34.628399, 32.535442, 20.612633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801781, 31.837368, 21.051432>,  <34.303444, 31.915792, 20.633598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801781, 31.837368, 21.051432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838158, 32.232182, 20.998520>,  <34.859985, 32.469070, 20.966774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.838158, 32.232182, 20.998520>,  <34.801781, 31.837368, 21.051432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838158, 32.232182, 20.998520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322480, 0.096482, 0.941646,
		0.942197, -0.128295, -0.309524,
		0.090945, 0.987032, -0.132277,
		34.865440, 32.528290, 20.958838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352726, 32.005608, 21.547295>,  <34.801781, 31.837368, 21.051432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352726, 32.005608, 21.547295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165367, 32.343147, 21.442587>,  <35.052952, 32.545673, 21.379763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165367, 32.343147, 21.442587>,  <35.352726, 32.005608, 21.547295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165367, 32.343147, 21.442587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229424, 0.402281, 0.886304,
		0.853213, 0.355083, -0.382025,
		-0.468393, 0.843852, -0.261767,
		35.024849, 32.596302, 21.364058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859493, 32.498882, 21.691828>,  <35.352726, 32.005608, 21.547295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859493, 32.498882, 21.691828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511993, 32.695236, 21.665604>,  <35.303493, 32.813049, 21.649870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511993, 32.695236, 21.665604>,  <35.859493, 32.498882, 21.691828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511993, 32.695236, 21.665604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088008, 0.283298, 0.954985,
		0.487361, 0.823878, -0.289318,
		-0.868754, 0.490885, -0.065561,
		35.251366, 32.842503, 21.645935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978661, 33.168953, 21.880638>,  <35.859493, 32.498882, 21.691828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978661, 33.168953, 21.880638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592754, 33.088013, 21.947910>,  <35.361210, 33.039448, 21.988274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592754, 33.088013, 21.947910>,  <35.978661, 33.168953, 21.880638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592754, 33.088013, 21.947910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099626, 0.310666, 0.945284,
		-0.243529, 0.928730, -0.279559,
		-0.964763, -0.202353, 0.168182,
		35.303326, 33.027306, 21.998365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570110, 33.768822, 22.114407>,  <35.978661, 33.168953, 21.880638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570110, 33.768822, 22.114407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361862, 33.467800, 22.275713>,  <35.236912, 33.287189, 22.372498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361862, 33.467800, 22.275713>,  <35.570110, 33.768822, 22.114407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361862, 33.467800, 22.275713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, 0.365495, 0.913403,
		-0.834772, 0.547798, -0.055434,
		-0.520621, -0.752550, 0.403265,
		35.205677, 33.242035, 22.396692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221241, 34.011711, 22.718512>,  <35.570110, 33.768822, 22.114407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221241, 34.011711, 22.718512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250748, 33.615364, 22.763662>,  <35.268452, 33.377556, 22.790752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250748, 33.615364, 22.763662>,  <35.221241, 34.011711, 22.718512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250748, 33.615364, 22.763662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277094, 0.129093, 0.952131,
		-0.958007, -0.038957, 0.284086,
		0.073766, -0.990867, 0.112878,
		35.272877, 33.318104, 22.797525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999329, 34.672398, 23.024355>,  <35.221241, 34.011711, 22.718512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999329, 34.672398, 23.024355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258553, 34.976013, 23.049295>,  <35.414085, 35.158180, 23.064259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.258553, 34.976013, 23.049295>,  <34.999329, 34.672398, 23.024355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258553, 34.976013, 23.049295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137134, 0.196828, -0.970800,
		-0.749144, 0.620583, 0.231645,
		0.648056, 0.759036, 0.062350,
		35.452969, 35.203724, 23.068001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647865, 35.192200, 22.711771>,  <34.999329, 34.672398, 23.024355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647865, 35.192200, 22.711771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040276, 35.269539, 22.706160>,  <35.275723, 35.315941, 22.702793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040276, 35.269539, 22.706160>,  <34.647865, 35.192200, 22.711771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040276, 35.269539, 22.706160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037339, 0.117463, -0.992375,
		-0.190227, 0.974073, 0.122454,
		0.981030, 0.193349, -0.014027,
		35.334583, 35.327545, 22.701952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796726, 35.890572, 22.375406>,  <34.647865, 35.192200, 22.711771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796726, 35.890572, 22.375406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130619, 35.673397, 22.338646>,  <35.330956, 35.543091, 22.316589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130619, 35.673397, 22.338646>,  <34.796726, 35.890572, 22.375406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130619, 35.673397, 22.338646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061017, 0.257064, -0.964466,
		0.547271, 0.799460, 0.247707,
		0.834728, -0.542939, -0.091903,
		35.381039, 35.510517, 22.311075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177155, 36.241970, 21.957111>,  <34.796726, 35.890572, 22.375406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177155, 36.241970, 21.957111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371716, 35.893829, 21.926411>,  <35.488453, 35.684944, 21.907990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371716, 35.893829, 21.926411>,  <35.177155, 36.241970, 21.957111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371716, 35.893829, 21.926411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013688, 0.095426, -0.995342,
		0.873626, 0.483090, 0.058329,
		0.486406, -0.870355, -0.076754,
		35.517639, 35.632721, 21.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497158, 36.342186, 21.344084>,  <35.177155, 36.241970, 21.957111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497158, 36.342186, 21.344084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566814, 35.955887, 21.421036>,  <35.608608, 35.724110, 21.467207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566814, 35.955887, 21.421036>,  <35.497158, 36.342186, 21.344084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566814, 35.955887, 21.421036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313785, -0.130761, -0.940447,
		0.933389, 0.224134, 0.280266,
		0.174138, -0.965746, 0.192381,
		35.619057, 35.666164, 21.478750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071835, 36.064987, 20.869810>,  <35.497158, 36.342186, 21.344084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071835, 36.064987, 20.869810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864033, 35.737057, 20.966145>,  <35.739349, 35.540298, 21.023945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864033, 35.737057, 20.966145>,  <36.071835, 36.064987, 20.869810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864033, 35.737057, 20.966145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029094, -0.298663, -0.953915,
		0.853970, -0.488560, 0.179010,
		-0.519508, -0.819823, 0.240835,
		35.708179, 35.491112, 21.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478916, 35.548965, 20.557581>,  <36.071835, 36.064987, 20.869810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478916, 35.548965, 20.557581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112270, 35.396191, 20.604801>,  <35.892281, 35.304527, 20.633133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.112270, 35.396191, 20.604801>,  <36.478916, 35.548965, 20.557581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112270, 35.396191, 20.604801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010294, -0.317755, -0.948117,
		0.399632, -0.867845, 0.295192,
		-0.916618, -0.381937, 0.118051,
		35.837284, 35.281609, 20.640217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562157, 34.942936, 20.301233>,  <36.478916, 35.548965, 20.557581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562157, 34.942936, 20.301233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165577, 34.995110, 20.299438>,  <35.927631, 35.026413, 20.298361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.165577, 34.995110, 20.299438>,  <36.562157, 34.942936, 20.301233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165577, 34.995110, 20.299438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038781, -0.327262, -0.944138,
		-0.124616, -0.935888, 0.329522,
		-0.991447, 0.130433, -0.004487,
		35.868141, 35.034241, 20.298092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210361, 34.334881, 19.989412>,  <36.562157, 34.942936, 20.301233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210361, 34.334881, 19.989412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952934, 34.639297, 19.956827>,  <35.798477, 34.821949, 19.937275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952934, 34.639297, 19.956827>,  <36.210361, 34.334881, 19.989412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952934, 34.639297, 19.956827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193940, -0.265108, -0.944513,
		-0.740410, -0.592060, 0.318211,
		-0.643569, 0.761041, -0.081465,
		35.759865, 34.867611, 19.932388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722878, 34.066246, 19.733164>,  <36.210361, 34.334881, 19.989412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722878, 34.066246, 19.733164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653919, 34.453571, 19.660896>,  <35.612545, 34.685966, 19.617535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653919, 34.453571, 19.660896>,  <35.722878, 34.066246, 19.733164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653919, 34.453571, 19.660896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341323, -0.230778, -0.911175,
		-0.924001, -0.095417, 0.370295,
		-0.172397, 0.968317, -0.180671,
		35.602200, 34.744068, 19.606695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009541, 34.185284, 19.456892>,  <35.722878, 34.066246, 19.733164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009541, 34.185284, 19.456892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 34.500107, 19.328913>,  <35.347095, 34.688999, 19.252125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 34.500107, 19.328913>,  <35.009541, 34.185284, 19.456892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220512, 34.500107, 19.328913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310817, -0.171732, -0.934827,
		-0.790704, 0.592499, 0.154053,
		0.527428, 0.787054, -0.319948,
		35.378742, 34.736221, 19.232929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517616, 34.615036, 19.098038>,  <35.009541, 34.185284, 19.456892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517616, 34.615036, 19.098038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870846, 34.748119, 18.965685>,  <35.082783, 34.827969, 18.886272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.870846, 34.748119, 18.965685>,  <34.517616, 34.615036, 19.098038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870846, 34.748119, 18.965685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362269, 0.035235, -0.931407,
		-0.298229, 0.942371, 0.151645,
		0.883075, 0.332708, -0.330884,
		35.135769, 34.847931, 18.866421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384525, 35.178886, 18.730310>,  <34.517616, 34.615036, 19.098038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384525, 35.178886, 18.730310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727806, 35.046726, 18.573170>,  <34.933773, 34.967430, 18.478886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.727806, 35.046726, 18.573170>,  <34.384525, 35.178886, 18.730310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727806, 35.046726, 18.573170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365273, 0.144633, -0.919596,
		0.360650, 0.932695, 0.003439,
		0.858200, -0.330397, -0.392850,
		34.985268, 34.947609, 18.455315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536888, 35.661156, 18.192923>,  <34.384525, 35.178886, 18.730310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536888, 35.661156, 18.192923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733795, 35.329296, 18.087578>,  <34.851940, 35.130180, 18.024370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.733795, 35.329296, 18.087578>,  <34.536888, 35.661156, 18.192923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733795, 35.329296, 18.087578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329458, 0.102462, -0.938594,
		0.805684, 0.548809, -0.222893,
		0.492271, -0.829644, -0.263362,
		34.881477, 35.080402, 18.008570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749352, 36.381519, 18.083504>,  <34.536888, 35.661156, 18.192923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749352, 36.381519, 18.083504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359821, 36.462868, 18.124126>,  <34.126102, 36.511677, 18.148500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.359821, 36.462868, 18.124126>,  <34.749352, 36.381519, 18.083504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359821, 36.462868, 18.124126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135735, 0.161858, 0.977434,
		0.182342, 0.965631, -0.185225,
		-0.973821, 0.203369, 0.101556,
		34.067677, 36.523880, 18.154593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686569, 36.998077, 18.564724>,  <34.749352, 36.381519, 18.083504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686569, 36.998077, 18.564724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339157, 36.800552, 18.581709>,  <34.130711, 36.682037, 18.591900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339157, 36.800552, 18.581709>,  <34.686569, 36.998077, 18.564724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339157, 36.800552, 18.581709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069144, 0.205561, 0.976199,
		-0.490786, 0.844924, -0.212680,
		-0.868532, -0.493810, 0.042465,
		34.078598, 36.652409, 18.594448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196850, 37.396076, 18.907785>,  <34.686569, 36.998077, 18.564724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196850, 37.396076, 18.907785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037544, 37.032066, 18.953808>,  <33.941959, 36.813660, 18.981421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037544, 37.032066, 18.953808>,  <34.196850, 37.396076, 18.907785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037544, 37.032066, 18.953808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200444, 0.208742, 0.957209,
		-0.895103, 0.358159, -0.265543,
		-0.398263, -0.910027, 0.115055,
		33.918064, 36.759060, 18.988325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698261, 37.581947, 19.303783>,  <34.196850, 37.396076, 18.907785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698261, 37.581947, 19.303783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.712292, 37.185844, 19.357679>,  <33.720711, 36.948181, 19.390017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.712292, 37.185844, 19.357679>,  <33.698261, 37.581947, 19.303783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712292, 37.185844, 19.357679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171346, 0.126866, 0.977008,
		-0.984586, -0.057361, -0.165227,
		0.035080, -0.990260, 0.134739,
		33.722816, 36.888767, 19.398102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153111, 37.556961, 19.695065>,  <33.698261, 37.581947, 19.303783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153111, 37.556961, 19.695065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.359589, 37.218136, 19.745697>,  <33.483475, 37.014839, 19.776077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.359589, 37.218136, 19.745697>,  <33.153111, 37.556961, 19.695065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359589, 37.218136, 19.745697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168410, 0.044524, 0.984711,
		-0.839751, -0.529619, -0.119672,
		0.516193, -0.847066, 0.126582,
		33.514446, 36.964016, 19.783672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644417, 37.108608, 19.945711>,  <33.153111, 37.556961, 19.695065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644417, 37.108608, 19.945711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.016033, 36.993706, 20.038977>,  <33.239002, 36.924763, 20.094936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.016033, 36.993706, 20.038977>,  <32.644417, 37.108608, 19.945711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016033, 36.993706, 20.038977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263733, -0.072209, 0.961889,
		-0.259475, -0.955127, -0.142844,
		0.929042, -0.287259, 0.233162,
		33.294746, 36.907528, 20.108925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550053, 36.576717, 20.519863>,  <32.644417, 37.108608, 19.945711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550053, 36.576717, 20.519863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930138, 36.697189, 20.551811>,  <33.158188, 36.769474, 20.570980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.930138, 36.697189, 20.551811>,  <32.550053, 36.576717, 20.519863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930138, 36.697189, 20.551811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102530, 0.060176, 0.992908,
		0.294240, -0.951666, 0.088061,
		0.950216, 0.301182, 0.079868,
		33.215202, 36.787544, 20.575771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941677, 36.291565, 21.006271>,  <32.550053, 36.576717, 20.519863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941677, 36.291565, 21.006271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204311, 36.590580, 20.966106>,  <33.361893, 36.769989, 20.942007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.204311, 36.590580, 20.966106>,  <32.941677, 36.291565, 21.006271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204311, 36.590580, 20.966106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010749, 0.142388, 0.989752,
		0.754176, -0.648777, 0.101525,
		0.656585, 0.747539, -0.100412,
		33.401287, 36.814842, 20.935984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218559, 36.241116, 21.586214>,  <32.941677, 36.291565, 21.006271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218559, 36.241116, 21.586214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.374905, 36.586956, 21.459913>,  <33.468712, 36.794460, 21.384132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.374905, 36.586956, 21.459913>,  <33.218559, 36.241116, 21.586214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374905, 36.586956, 21.459913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125693, 0.289693, 0.948830,
		0.911827, -0.410548, 0.004556,
		0.390861, 0.864597, -0.315754,
		33.492165, 36.846336, 21.365187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852409, 36.375889, 22.009476>,  <33.218559, 36.241116, 21.586214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852409, 36.375889, 22.009476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736286, 36.727203, 21.857508>,  <33.666615, 36.937992, 21.766327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736286, 36.727203, 21.857508>,  <33.852409, 36.375889, 22.009476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736286, 36.727203, 21.857508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065185, 0.377945, 0.923530,
		0.954711, 0.292872, -0.052469,
		-0.290306, 0.878285, -0.379919,
		33.649193, 36.990688, 21.743532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267330, 36.904243, 22.339012>,  <33.852409, 36.375889, 22.009476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267330, 36.904243, 22.339012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913090, 37.048569, 22.222031>,  <33.700546, 37.135162, 22.151842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.913090, 37.048569, 22.222031>,  <34.267330, 36.904243, 22.339012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913090, 37.048569, 22.222031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090222, 0.484039, 0.870383,
		0.455604, 0.797195, -0.396111,
		-0.885599, 0.360812, -0.292455,
		33.647411, 37.156811, 22.134295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272194, 37.619766, 22.490665>,  <34.267330, 36.904243, 22.339012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272194, 37.619766, 22.490665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882065, 37.540855, 22.451015>,  <33.647987, 37.493511, 22.427225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.882065, 37.540855, 22.451015>,  <34.272194, 37.619766, 22.490665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882065, 37.540855, 22.451015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168858, 0.377310, 0.910563,
		-0.142231, 0.904832, -0.401311,
		-0.975324, -0.197274, -0.099123,
		33.589466, 37.481674, 22.421278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920277, 38.195080, 22.685156>,  <34.272194, 37.619766, 22.490665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920277, 38.195080, 22.685156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640556, 37.910042, 22.707769>,  <33.472725, 37.739021, 22.721338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640556, 37.910042, 22.707769>,  <33.920277, 38.195080, 22.685156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640556, 37.910042, 22.707769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204847, 0.275541, 0.939210,
		-0.684850, 0.645206, -0.338658,
		-0.699298, -0.712591, 0.056536,
		33.430767, 37.696266, 22.724730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170475, 38.525433, 22.884302>,  <33.920277, 38.195080, 22.685156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170475, 38.525433, 22.884302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183105, 38.134613, 22.968573>,  <33.190685, 37.900124, 23.019135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.183105, 38.134613, 22.968573>,  <33.170475, 38.525433, 22.884302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183105, 38.134613, 22.968573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287890, 0.192959, 0.938022,
		-0.957143, -0.090275, -0.275188,
		0.031580, -0.977045, 0.210678,
		33.192581, 37.841499, 23.031776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.813974, 38.749348, 19.142458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898243, 38.371979, 19.040030>,  <29.948805, 38.145557, 18.978573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.898243, 38.371979, 19.040030>,  <29.813974, 38.749348, 19.142458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898243, 38.371979, 19.040030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285131, 0.309863, -0.907020,
		0.935050, 0.118069, 0.334278,
		0.210671, -0.943422, -0.256072,
		29.961445, 38.088951, 18.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461838, 38.737156, 18.751598>,  <29.813974, 38.749348, 19.142458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461838, 38.737156, 18.751598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272238, 38.398060, 18.656376>,  <30.158478, 38.194603, 18.599243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272238, 38.398060, 18.656376>,  <30.461838, 38.737156, 18.751598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272238, 38.398060, 18.656376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178542, 0.172207, -0.968745,
		0.862235, -0.501686, 0.069730,
		-0.473997, -0.847736, -0.238055,
		30.130039, 38.143738, 18.584959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911617, 38.418659, 18.341644>,  <30.461838, 38.737156, 18.751598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911617, 38.418659, 18.341644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555845, 38.260792, 18.249426>,  <30.342382, 38.166069, 18.194096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555845, 38.260792, 18.249426>,  <30.911617, 38.418659, 18.341644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555845, 38.260792, 18.249426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181143, 0.158727, -0.970563,
		0.419648, -0.905008, -0.069684,
		-0.889428, -0.394672, -0.230546,
		30.289017, 38.142391, 18.180262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063824, 38.192303, 17.751225>,  <30.911617, 38.418659, 18.341644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063824, 38.192303, 17.751225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.665110, 38.163101, 17.764399>,  <30.425880, 38.145580, 17.772303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.665110, 38.163101, 17.764399>,  <31.063824, 38.192303, 17.751225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665110, 38.163101, 17.764399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054859, 0.322766, -0.944887,
		0.058354, -0.943659, -0.325734,
		-0.996787, -0.073008, 0.032933,
		30.366074, 38.141197, 17.774279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841219, 37.827862, 17.194572>,  <31.063824, 38.192303, 17.751225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841219, 37.827862, 17.194572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.481340, 37.970940, 17.294649>,  <30.265413, 38.056786, 17.354696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.481340, 37.970940, 17.294649>,  <30.841219, 37.827862, 17.194572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481340, 37.970940, 17.294649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264959, 0.007998, -0.964227,
		-0.346904, -0.933803, 0.087580,
		-0.899697, 0.357699, 0.250194,
		30.211432, 38.078251, 17.369707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298561, 37.346565, 17.104580>,  <30.841219, 37.827862, 17.194572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298561, 37.346565, 17.104580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146034, 37.713291, 17.057182>,  <30.054518, 37.933327, 17.028744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146034, 37.713291, 17.057182>,  <30.298561, 37.346565, 17.104580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146034, 37.713291, 17.057182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268487, -0.232487, -0.934807,
		-0.884598, -0.324642, 0.334805,
		-0.381316, 0.916819, -0.118496,
		30.031639, 37.988338, 17.021633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609585, 37.197704, 17.047155>,  <30.298561, 37.346565, 17.104580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609585, 37.197704, 17.047155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651711, 37.574051, 16.918362>,  <29.676987, 37.799858, 16.841085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.651711, 37.574051, 16.918362>,  <29.609585, 37.197704, 17.047155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651711, 37.574051, 16.918362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325626, -0.273306, -0.905136,
		-0.939615, 0.200172, 0.277588,
		0.105316, 0.940869, -0.321984,
		29.683306, 37.856312, 16.821766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993464, 37.487133, 16.739286>,  <29.609585, 37.197704, 17.047155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993464, 37.487133, 16.739286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292048, 37.707203, 16.589565>,  <29.471199, 37.839245, 16.499733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.292048, 37.707203, 16.589565>,  <28.993464, 37.487133, 16.739286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292048, 37.707203, 16.589565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246097, -0.294363, -0.923465,
		-0.618249, 0.781445, -0.084334,
		0.746461, 0.550177, -0.374301,
		29.515985, 37.872257, 16.477276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734983, 37.849083, 16.196623>,  <28.993464, 37.487133, 16.739286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734983, 37.849083, 16.196623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128633, 37.876923, 16.131321>,  <29.364824, 37.893627, 16.092140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128633, 37.876923, 16.131321>,  <28.734983, 37.849083, 16.196623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128633, 37.876923, 16.131321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141187, -0.250303, -0.957818,
		-0.107530, 0.965662, -0.236503,
		0.984126, 0.069603, -0.163254,
		29.423872, 37.897804, 16.082344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867626, 38.357811, 15.704266>,  <28.734983, 37.849083, 16.196623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867626, 38.357811, 15.704266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.213854, 38.164852, 15.650472>,  <29.421591, 38.049076, 15.618196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.213854, 38.164852, 15.650472>,  <28.867626, 38.357811, 15.704266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213854, 38.164852, 15.650472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233204, -0.150612, -0.960693,
		0.443179, 0.862908, -0.242862,
		0.865568, -0.482396, -0.134485,
		29.473524, 38.020134, 15.610126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185581, 38.636642, 15.025064>,  <28.867626, 38.357811, 15.704266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185581, 38.636642, 15.025064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368664, 38.299778, 15.139091>,  <29.478514, 38.097660, 15.207508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368664, 38.299778, 15.139091>,  <29.185581, 38.636642, 15.025064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368664, 38.299778, 15.139091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096320, -0.271769, -0.957530,
		0.883870, 0.465726, -0.043273,
		0.457707, -0.842164, 0.285067,
		29.505976, 38.047127, 15.224611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776361, 38.580528, 14.609420>,  <29.185581, 38.636642, 15.025064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776361, 38.580528, 14.609420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708603, 38.202503, 14.721250>,  <29.667948, 37.975689, 14.788347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708603, 38.202503, 14.721250>,  <29.776361, 38.580528, 14.609420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708603, 38.202503, 14.721250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189769, -0.309643, -0.931724,
		0.967106, -0.104774, 0.231796,
		-0.169394, -0.945063, 0.279575,
		29.657785, 37.918983, 14.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301147, 38.254284, 14.363766>,  <29.776361, 38.580528, 14.609420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301147, 38.254284, 14.363766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.985250, 38.011318, 14.398088>,  <29.795713, 37.865540, 14.418682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.985250, 38.011318, 14.398088>,  <30.301147, 38.254284, 14.363766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985250, 38.011318, 14.398088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168275, -0.349018, -0.921884,
		0.589910, -0.713610, 0.377845,
		-0.789740, -0.607411, 0.085807,
		29.748329, 37.829094, 14.423831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657747, 38.264797, 13.763416>,  <30.301147, 38.254284, 14.363766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657747, 38.264797, 13.763416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.912224, 38.097221, 13.504265>,  <31.064911, 37.996677, 13.348774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.912224, 38.097221, 13.504265>,  <30.657747, 38.264797, 13.763416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912224, 38.097221, 13.504265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613377, -0.234736, 0.754101,
		-0.468005, -0.877147, 0.107632,
		0.636192, -0.418942, -0.647879,
		31.103081, 37.971539, 13.309901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792105, 37.521118, 13.872499>,  <30.657747, 38.264797, 13.763416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792105, 37.521118, 13.872499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091755, 37.727814, 13.706708>,  <31.271545, 37.851830, 13.607234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.091755, 37.727814, 13.706708>,  <30.792105, 37.521118, 13.872499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091755, 37.727814, 13.706708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589747, -0.235307, 0.772547,
		0.301677, -0.823171, -0.481021,
		0.749126, 0.516740, -0.414476,
		31.316492, 37.882835, 13.582365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276108, 37.067642, 14.027094>,  <30.792105, 37.521118, 13.872499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276108, 37.067642, 14.027094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426134, 37.435497, 13.980460>,  <31.516150, 37.656212, 13.952480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426134, 37.435497, 13.980460>,  <31.276108, 37.067642, 14.027094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426134, 37.435497, 13.980460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664575, -0.179072, 0.725447,
		0.646272, -0.349568, -0.678332,
		0.375063, 0.919639, -0.116585,
		31.538652, 37.711388, 13.945485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080128, 36.936195, 13.971158>,  <31.276108, 37.067642, 14.027094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080128, 36.936195, 13.971158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039070, 37.326237, 14.049777>,  <32.014435, 37.560261, 14.096949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039070, 37.326237, 14.049777>,  <32.080128, 36.936195, 13.971158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039070, 37.326237, 14.049777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669788, -0.078329, 0.738409,
		0.735423, 0.207441, -0.645074,
		-0.102649, 0.975106, 0.196547,
		32.008274, 37.618767, 14.108741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745346, 37.242905, 13.895055>,  <32.080128, 36.936195, 13.971158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745346, 37.242905, 13.895055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522449, 37.460049, 14.146381>,  <32.388710, 37.590336, 14.297177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.522449, 37.460049, 14.146381>,  <32.745346, 37.242905, 13.895055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522449, 37.460049, 14.146381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670401, -0.152345, 0.726191,
		0.489943, 0.825888, -0.279042,
		-0.557242, 0.542862, 0.628317,
		32.355278, 37.622906, 14.334876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120674, 37.640198, 14.258913>,  <32.745346, 37.242905, 13.895055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120674, 37.640198, 14.258913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.805225, 37.702244, 14.496911>,  <32.615955, 37.739471, 14.639709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.805225, 37.702244, 14.496911>,  <33.120674, 37.640198, 14.258913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805225, 37.702244, 14.496911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608017, 0.052534, 0.792184,
		0.091619, 0.986499, -0.135739,
		-0.788620, 0.155111, 0.594995,
		32.568638, 37.748775, 14.675409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251411, 38.273880, 14.734711>,  <33.120674, 37.640198, 14.258913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251411, 38.273880, 14.734711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979839, 38.034206, 14.904432>,  <32.816898, 37.890404, 15.006265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979839, 38.034206, 14.904432>,  <33.251411, 38.273880, 14.734711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979839, 38.034206, 14.904432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638120, -0.195741, 0.744639,
		-0.363123, 0.776314, 0.515246,
		-0.678929, -0.599185, 0.424303,
		32.776161, 37.854450, 15.031723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258183, 38.410557, 15.334248>,  <33.251411, 38.273880, 14.734711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258183, 38.410557, 15.334248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077332, 38.057411, 15.385063>,  <32.968822, 37.845524, 15.415552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077332, 38.057411, 15.385063>,  <33.258183, 38.410557, 15.334248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077332, 38.057411, 15.385063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285243, -0.008166, 0.958421,
		-0.845116, 0.469562, 0.255522,
		-0.452124, -0.882862, 0.127038,
		32.941696, 37.792553, 15.423175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894493, 38.358917, 16.010654>,  <33.258183, 38.410557, 15.334248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894493, 38.358917, 16.010654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934608, 37.972034, 15.917308>,  <32.958679, 37.739906, 15.861300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.934608, 37.972034, 15.917308>,  <32.894493, 38.358917, 16.010654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934608, 37.972034, 15.917308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119526, -0.221136, 0.967891,
		-0.987753, -0.124963, 0.093428,
		0.100290, -0.967204, -0.233364,
		32.964695, 37.681873, 15.847299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498867, 37.943703, 16.470577>,  <32.894493, 38.358917, 16.010654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498867, 37.943703, 16.470577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754761, 37.682777, 16.307985>,  <32.908295, 37.526222, 16.210430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754761, 37.682777, 16.307985>,  <32.498867, 37.943703, 16.470577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754761, 37.682777, 16.307985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157759, -0.406153, 0.900084,
		-0.752233, -0.639938, -0.156920,
		0.639732, -0.652318, -0.406478,
		32.946682, 37.487083, 16.186043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255585, 37.215622, 16.689980>,  <32.498867, 37.943703, 16.470577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255585, 37.215622, 16.689980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636341, 37.199329, 16.568495>,  <32.864796, 37.189556, 16.495604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.636341, 37.199329, 16.568495>,  <32.255585, 37.215622, 16.689980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636341, 37.199329, 16.568495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197548, -0.676110, 0.709824,
		-0.234251, -0.735674, -0.635539,
		0.951894, -0.040727, -0.303711,
		32.921909, 37.187111, 16.477381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541718, 36.586601, 16.903316>,  <32.255585, 37.215622, 16.689980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541718, 36.586601, 16.903316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881485, 36.789536, 16.845224>,  <33.085346, 36.911297, 16.810369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881485, 36.789536, 16.845224>,  <32.541718, 36.586601, 16.903316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881485, 36.789536, 16.845224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430320, -0.506603, 0.747113,
		0.305467, -0.697108, -0.648637,
		0.849420, 0.507340, -0.145228,
		33.136311, 36.941738, 16.801657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061935, 36.059177, 16.988016>,  <32.541718, 36.586601, 16.903316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061935, 36.059177, 16.988016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240856, 36.415878, 17.015455>,  <33.348209, 36.629898, 17.031918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240856, 36.415878, 17.015455>,  <33.061935, 36.059177, 16.988016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240856, 36.415878, 17.015455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455735, -0.293247, 0.840424,
		0.769562, -0.344662, -0.537571,
		0.447303, 0.891748, 0.068597,
		33.375046, 36.683403, 17.036034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750511, 35.911549, 17.091061>,  <33.061935, 36.059177, 16.988016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750511, 35.911549, 17.091061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699890, 36.279408, 17.239782>,  <33.669518, 36.500122, 17.329016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.699890, 36.279408, 17.239782>,  <33.750511, 35.911549, 17.091061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699890, 36.279408, 17.239782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279518, -0.326567, 0.902898,
		0.951764, 0.218189, -0.215729,
		-0.126552, 0.919646, 0.371802,
		33.661926, 36.555302, 17.351322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353252, 36.094479, 17.402927>,  <33.750511, 35.911549, 17.091061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353252, 36.094479, 17.402927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071377, 36.327267, 17.565273>,  <33.902252, 36.466938, 17.662680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.071377, 36.327267, 17.565273>,  <34.353252, 36.094479, 17.402927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071377, 36.327267, 17.565273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278451, -0.299294, 0.912627,
		0.652595, 0.756130, 0.048858,
		-0.704688, 0.581971, 0.405863,
		33.859970, 36.501858, 17.687033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034290, 35.814892, 17.554928>,  <34.353252, 36.094479, 17.402927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034290, 35.814892, 17.554928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971188, 35.420155, 17.569077>,  <34.933327, 35.183311, 17.577566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971188, 35.420155, 17.569077>,  <35.034290, 35.814892, 17.554928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971188, 35.420155, 17.569077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333392, 0.019508, -0.942587,
		0.929496, -0.160491, -0.332083,
		-0.157755, -0.986844, 0.035374,
		34.923862, 35.124100, 17.579689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261421, 35.583851, 16.905336>,  <35.034290, 35.814892, 17.554928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261421, 35.583851, 16.905336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034595, 35.270271, 17.006416>,  <34.898499, 35.082123, 17.067064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.034595, 35.270271, 17.006416>,  <35.261421, 35.583851, 16.905336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034595, 35.270271, 17.006416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400842, -0.005360, -0.916131,
		0.719556, -0.620800, -0.311201,
		-0.567067, -0.783950, 0.252699,
		34.864475, 35.035088, 17.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401703, 35.032249, 16.463591>,  <35.261421, 35.583851, 16.905336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401703, 35.032249, 16.463591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038799, 34.935379, 16.601128>,  <34.821056, 34.877254, 16.683651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038799, 34.935379, 16.601128>,  <35.401703, 35.032249, 16.463591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038799, 34.935379, 16.601128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300344, -0.199215, -0.932795,
		0.294403, -0.949559, 0.108003,
		-0.907260, -0.242180, 0.343844,
		34.766621, 34.862724, 16.704281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245323, 34.520855, 15.955015>,  <35.401703, 35.032249, 16.463591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245323, 34.520855, 15.955015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894249, 34.640724, 16.104609>,  <34.683605, 34.712646, 16.194365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894249, 34.640724, 16.104609>,  <35.245323, 34.520855, 15.955015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894249, 34.640724, 16.104609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427835, -0.138347, -0.893206,
		-0.215929, -0.943958, 0.249635,
		-0.877686, 0.299672, 0.373985,
		34.630943, 34.730625, 16.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721062, 34.099625, 15.638174>,  <35.245323, 34.520855, 15.955015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721062, 34.099625, 15.638174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503403, 34.413219, 15.757687>,  <34.372807, 34.601376, 15.829394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503403, 34.413219, 15.757687>,  <34.721062, 34.099625, 15.638174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503403, 34.413219, 15.757687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463739, 0.015723, -0.885832,
		-0.699178, -0.620580, 0.355009,
		-0.544148, 0.783986, 0.298780,
		34.340160, 34.648415, 15.847321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035625, 33.828190, 15.387225>,  <34.721062, 34.099625, 15.638174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035625, 33.828190, 15.387225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990150, 34.213341, 15.485161>,  <33.962868, 34.444431, 15.543922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990150, 34.213341, 15.485161>,  <34.035625, 33.828190, 15.387225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990150, 34.213341, 15.485161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744983, 0.080430, -0.662217,
		-0.657325, -0.257683, 0.708183,
		-0.113683, 0.962876, 0.244838,
		33.956047, 34.502205, 15.558612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304935, 34.033283, 15.499202>,  <34.035625, 33.828190, 15.387225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304935, 34.033283, 15.499202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480057, 34.381123, 15.407879>,  <33.585129, 34.589828, 15.353086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480057, 34.381123, 15.407879>,  <33.304935, 34.033283, 15.499202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480057, 34.381123, 15.407879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783812, 0.244770, -0.570725,
		-0.440421, 0.428813, 0.788764,
		0.437800, 0.869602, -0.228306,
		33.611397, 34.642002, 15.339387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669102, 33.536186, 15.471078>,  <33.304935, 34.033283, 15.499202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669102, 33.536186, 15.471078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791462, 33.158947, 15.418937>,  <32.864880, 32.932602, 15.387652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791462, 33.158947, 15.418937>,  <32.669102, 33.536186, 15.471078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791462, 33.158947, 15.418937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325705, -0.024990, 0.945141,
		-0.894618, -0.331576, 0.299527,
		0.305901, -0.943097, -0.130352,
		32.883232, 32.876019, 15.379831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496834, 33.220497, 16.102722>,  <32.669102, 33.536186, 15.471078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496834, 33.220497, 16.102722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773426, 32.980297, 15.942094>,  <32.939381, 32.836178, 15.845717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773426, 32.980297, 15.942094>,  <32.496834, 33.220497, 16.102722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773426, 32.980297, 15.942094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330392, -0.231452, 0.915025,
		-0.642415, -0.765396, 0.038355,
		0.691480, -0.600498, -0.401569,
		32.980869, 32.800148, 15.821623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386726, 32.617039, 16.522703>,  <32.496834, 33.220497, 16.102722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386726, 32.617039, 16.522703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751740, 32.651615, 16.362797>,  <32.970749, 32.672359, 16.266853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751740, 32.651615, 16.362797>,  <32.386726, 32.617039, 16.522703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751740, 32.651615, 16.362797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408666, -0.153131, 0.899746,
		0.016555, -0.984418, -0.175062,
		0.912534, 0.086437, -0.399764,
		33.025501, 32.677547, 16.242868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822762, 31.994234, 16.788542>,  <32.386726, 32.617039, 16.522703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822762, 31.994234, 16.788542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077358, 32.263233, 16.637478>,  <33.230118, 32.424633, 16.546841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077358, 32.263233, 16.637478>,  <32.822762, 31.994234, 16.788542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077358, 32.263233, 16.637478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645324, -0.196166, 0.738292,
		0.422416, -0.713628, -0.558838,
		0.636491, 0.672498, -0.377658,
		33.268307, 32.464981, 16.524181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387817, 31.700315, 16.797924>,  <32.822762, 31.994234, 16.788542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387817, 31.700315, 16.797924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535633, 32.071953, 16.791906>,  <33.624325, 32.294933, 16.788296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535633, 32.071953, 16.791906>,  <33.387817, 31.700315, 16.797924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535633, 32.071953, 16.791906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684545, -0.261255, 0.680547,
		0.628360, -0.261789, -0.732550,
		0.369543, 0.929092, -0.015044,
		33.646496, 32.350681, 16.787394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234272, 31.696941, 16.745628>,  <33.387817, 31.700315, 16.797924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234272, 31.696941, 16.745628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.086189, 32.043411, 16.879904>,  <33.997341, 32.251293, 16.960470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.086189, 32.043411, 16.879904>,  <34.234272, 31.696941, 16.745628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086189, 32.043411, 16.879904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527324, -0.101551, 0.843574,
		0.764772, 0.489315, -0.419160,
		-0.370207, 0.866175, 0.335691,
		33.975128, 32.303265, 16.980612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684784, 31.843571, 17.344467>,  <34.234272, 31.696941, 16.745628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684784, 31.843571, 17.344467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390518, 32.104202, 17.418482>,  <34.213959, 32.260582, 17.462891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390518, 32.104202, 17.418482>,  <34.684784, 31.843571, 17.344467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390518, 32.104202, 17.418482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440963, 0.253355, 0.861024,
		0.514146, 0.715021, -0.473708,
		-0.735666, 0.651580, 0.185036,
		34.169819, 32.299675, 17.473993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.618820, 35.407169, 14.096800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903246, 35.634499, 14.262403>,  <28.073900, 35.770897, 14.361766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903246, 35.634499, 14.262403>,  <27.618820, 35.407169, 14.096800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903246, 35.634499, 14.262403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051167, -0.629071, 0.775662,
		0.701265, -0.530360, -0.476388,
		0.711062, 0.568320, 0.414009,
		28.116564, 35.804993, 14.386606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176329, 34.915928, 14.230188>,  <27.618820, 35.407169, 14.096800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176329, 34.915928, 14.230188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210409, 35.222710, 14.484597>,  <28.230858, 35.406776, 14.637242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210409, 35.222710, 14.484597>,  <28.176329, 34.915928, 14.230188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210409, 35.222710, 14.484597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090450, -0.641661, 0.761636,
		0.992250, -0.007362, -0.124040,
		0.085199, 0.766953, 0.636023,
		28.235970, 35.452797, 14.675404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782650, 34.806427, 14.656248>,  <28.176329, 34.915928, 14.230188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782650, 34.806427, 14.656248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576736, 35.076397, 14.867707>,  <28.453188, 35.238380, 14.994583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576736, 35.076397, 14.867707>,  <28.782650, 34.806427, 14.656248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576736, 35.076397, 14.867707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085923, -0.572909, 0.815103,
		0.853002, 0.465026, 0.236934,
		-0.514786, 0.674927, 0.528649,
		28.422300, 35.278873, 15.026302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145369, 34.846867, 15.301292>,  <28.782650, 34.806427, 14.656248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145369, 34.846867, 15.301292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792549, 35.014576, 15.387269>,  <28.580858, 35.115200, 15.438855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792549, 35.014576, 15.387269>,  <29.145369, 34.846867, 15.301292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792549, 35.014576, 15.387269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002257, -0.452431, 0.891796,
		0.471152, 0.787093, 0.398120,
		-0.882049, 0.419273, 0.214940,
		28.527935, 35.140358, 15.451751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305304, 35.279427, 15.807354>,  <29.145369, 34.846867, 15.301292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305304, 35.279427, 15.807354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910021, 35.223270, 15.831800>,  <28.672852, 35.189579, 15.846468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910021, 35.223270, 15.831800>,  <29.305304, 35.279427, 15.807354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910021, 35.223270, 15.831800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116091, -0.426737, 0.896894,
		-0.099833, 0.893413, 0.438003,
		-0.988209, -0.140388, 0.061115,
		28.613558, 35.181152, 15.850135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128887, 35.502544, 16.444454>,  <29.305304, 35.279427, 15.807354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128887, 35.502544, 16.444454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822847, 35.262035, 16.352283>,  <28.639223, 35.117729, 16.296982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822847, 35.262035, 16.352283>,  <29.128887, 35.502544, 16.444454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822847, 35.262035, 16.352283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020521, -0.380442, 0.924577,
		-0.643583, 0.702666, 0.303415,
		-0.765101, -0.601269, -0.230427,
		28.593317, 35.081654, 16.283155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680849, 35.461067, 17.089033>,  <29.128887, 35.502544, 16.444454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680849, 35.461067, 17.089033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605324, 35.144180, 16.856916>,  <28.560009, 34.954048, 16.717646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605324, 35.144180, 16.856916>,  <28.680849, 35.461067, 17.089033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605324, 35.144180, 16.856916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119531, -0.567988, 0.814310,
		-0.974711, 0.223115, 0.012549,
		-0.188813, -0.792218, -0.580294,
		28.548679, 34.906513, 16.682829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070959, 35.184605, 17.386883>,  <28.680849, 35.461067, 17.089033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070959, 35.184605, 17.386883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227991, 34.881367, 17.178587>,  <28.322210, 34.699425, 17.053610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227991, 34.881367, 17.178587>,  <28.070959, 35.184605, 17.386883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227991, 34.881367, 17.178587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099103, -0.597768, 0.795520,
		-0.914363, -0.260698, -0.309802,
		0.392580, -0.758096, -0.520741,
		28.345766, 34.653938, 17.022366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645918, 34.620064, 17.532284>,  <28.070959, 35.184605, 17.386883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645918, 34.620064, 17.532284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010756, 34.507458, 17.413065>,  <28.229658, 34.439896, 17.341534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010756, 34.507458, 17.413065>,  <27.645918, 34.620064, 17.532284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010756, 34.507458, 17.413065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141212, -0.466775, 0.873029,
		-0.384888, -0.838374, -0.385991,
		0.912097, -0.281512, -0.298045,
		28.284384, 34.423004, 17.323650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674496, 33.970997, 17.758406>,  <27.645918, 34.620064, 17.532284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674496, 33.970997, 17.758406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062925, 34.037907, 17.690245>,  <28.295982, 34.078053, 17.649349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062925, 34.037907, 17.690245>,  <27.674496, 33.970997, 17.758406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062925, 34.037907, 17.690245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233851, -0.521908, 0.820320,
		0.048286, -0.836439, -0.545928,
		0.971073, 0.167276, -0.170402,
		28.354248, 34.088089, 17.639124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008034, 33.424122, 17.962818>,  <27.674496, 33.970997, 17.758406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008034, 33.424122, 17.962818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288790, 33.707878, 17.988487>,  <28.457243, 33.878132, 18.003889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288790, 33.707878, 17.988487>,  <28.008034, 33.424122, 17.962818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288790, 33.707878, 17.988487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203987, -0.286513, 0.936109,
		0.682453, -0.643953, -0.345807,
		0.701888, 0.709390, 0.064174,
		28.499357, 33.920696, 18.007740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596233, 33.167500, 18.104034>,  <28.008034, 33.424122, 17.962818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596233, 33.167500, 18.104034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695793, 33.532497, 18.233892>,  <28.755529, 33.751495, 18.311808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695793, 33.532497, 18.233892>,  <28.596233, 33.167500, 18.104034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695793, 33.532497, 18.233892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389191, -0.401173, 0.829210,
		0.886893, -0.080041, -0.454989,
		0.248900, 0.912498, 0.324647,
		28.770464, 33.806248, 18.331285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320665, 33.060658, 17.994450>,  <28.596233, 33.167500, 18.104034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320665, 33.060658, 17.994450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598564, 32.773788, 17.972605>,  <29.765305, 32.601665, 17.959497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598564, 32.773788, 17.972605>,  <29.320665, 33.060658, 17.994450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598564, 32.773788, 17.972605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156459, -0.076584, -0.984711,
		0.702029, 0.692671, -0.165415,
		0.694749, -0.717176, -0.054610,
		29.806990, 32.558636, 17.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640430, 33.098572, 17.371859>,  <29.320665, 33.060658, 17.994450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640430, 33.098572, 17.371859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797678, 32.733868, 17.419455>,  <29.892027, 32.515045, 17.448011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797678, 32.733868, 17.419455>,  <29.640430, 33.098572, 17.371859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797678, 32.733868, 17.419455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068182, -0.157959, -0.985089,
		0.916956, 0.379144, -0.124262,
		0.393119, -0.911756, 0.118991,
		29.915613, 32.460342, 17.455153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183285, 32.987259, 16.882751>,  <29.640430, 33.098572, 17.371859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183285, 32.987259, 16.882751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062565, 32.616425, 16.971680>,  <29.990133, 32.393925, 17.025038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.062565, 32.616425, 16.971680>,  <30.183285, 32.987259, 16.882751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062565, 32.616425, 16.971680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193210, -0.168881, -0.966514,
		0.933588, -0.334649, -0.128155,
		-0.301800, -0.927086, 0.222323,
		29.972025, 32.338299, 17.038376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411503, 32.557438, 16.322002>,  <30.183285, 32.987259, 16.882751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411503, 32.557438, 16.322002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114662, 32.358528, 16.501780>,  <29.936558, 32.239182, 16.609646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114662, 32.358528, 16.501780>,  <30.411503, 32.557438, 16.322002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114662, 32.358528, 16.501780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314776, -0.333436, -0.888671,
		0.591776, -0.800960, 0.090913,
		-0.742104, -0.497277, 0.449442,
		29.892031, 32.209347, 16.636612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458084, 31.906113, 15.958154>,  <30.411503, 32.557438, 16.322002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458084, 31.906113, 15.958154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106472, 31.889811, 16.148163>,  <29.895506, 31.880030, 16.262169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106472, 31.889811, 16.148163>,  <30.458084, 31.906113, 15.958154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106472, 31.889811, 16.148163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442084, -0.303394, -0.844105,
		0.178521, -0.951993, 0.248676,
		-0.879029, -0.040755, 0.475023,
		29.842764, 31.877584, 16.290670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139471, 31.213413, 15.837793>,  <30.458084, 31.906113, 15.958154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139471, 31.213413, 15.837793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857302, 31.474701, 15.947837>,  <29.688000, 31.631474, 16.013863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857302, 31.474701, 15.947837>,  <30.139471, 31.213413, 15.837793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857302, 31.474701, 15.947837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504434, -0.190011, -0.842284,
		-0.497922, -0.732940, 0.463543,
		-0.705422, 0.653219, 0.275109,
		29.645676, 31.670666, 16.030369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597893, 30.928734, 15.493691>,  <30.139471, 31.213413, 15.837793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597893, 30.928734, 15.493691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462788, 31.287214, 15.608749>,  <29.381723, 31.502302, 15.677784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462788, 31.287214, 15.608749>,  <29.597893, 30.928734, 15.493691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462788, 31.287214, 15.608749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536712, 0.067664, -0.841048,
		-0.773211, -0.438459, 0.458147,
		-0.337765, 0.896200, 0.287645,
		29.361458, 31.556074, 15.695043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783777, 30.864828, 15.312643>,  <29.597893, 30.928734, 15.493691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783777, 30.864828, 15.312643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909136, 31.244503, 15.324155>,  <28.984350, 31.472307, 15.331061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.909136, 31.244503, 15.324155>,  <28.783777, 30.864828, 15.312643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909136, 31.244503, 15.324155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379722, 0.153036, -0.912355,
		-0.870399, 0.275001, 0.408388,
		0.313396, 0.949186, 0.028778,
		29.003155, 31.529259, 15.332788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182682, 31.329832, 15.200667>,  <28.783777, 30.864828, 15.312643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182682, 31.329832, 15.200667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526154, 31.519764, 15.123516>,  <28.732237, 31.633724, 15.077226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526154, 31.519764, 15.123516>,  <28.182682, 31.329832, 15.200667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526154, 31.519764, 15.123516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358523, 0.287593, -0.888117,
		-0.366235, 0.831760, 0.417189,
		0.858681, 0.474831, -0.192878,
		28.783758, 31.662214, 15.065653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004213, 31.812128, 14.750520>,  <28.182682, 31.329832, 15.200667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004213, 31.812128, 14.750520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402237, 31.831171, 14.715670>,  <28.641050, 31.842596, 14.694759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402237, 31.831171, 14.715670>,  <28.004213, 31.812128, 14.750520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402237, 31.831171, 14.715670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094289, 0.178303, -0.979448,
		-0.031093, 0.982823, 0.181911,
		0.995059, 0.047607, -0.087126,
		28.700754, 31.845453, 14.689532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230659, 32.256016, 14.250049>,  <28.004213, 31.812128, 14.750520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230659, 32.256016, 14.250049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574583, 32.051910, 14.257697>,  <28.780937, 31.929447, 14.262286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574583, 32.051910, 14.257697>,  <28.230659, 32.256016, 14.250049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574583, 32.051910, 14.257697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060054, 0.063862, -0.996150,
		0.507075, 0.857645, 0.085552,
		0.859807, -0.510261, 0.019122,
		28.832525, 31.898832, 14.263433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724876, 32.639050, 13.847543>,  <28.230659, 32.256016, 14.250049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724876, 32.639050, 13.847543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870579, 32.267433, 13.821601>,  <28.958000, 32.044464, 13.806036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870579, 32.267433, 13.821601>,  <28.724876, 32.639050, 13.847543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870579, 32.267433, 13.821601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238660, 0.160433, -0.957759,
		0.900200, 0.333391, 0.280162,
		0.364256, -0.929038, -0.064854,
		28.979855, 31.988722, 13.802145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313139, 32.794842, 13.505164>,  <28.724876, 32.639050, 13.847543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313139, 32.794842, 13.505164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268639, 32.397770, 13.486342>,  <29.241938, 32.159527, 13.475049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.268639, 32.397770, 13.486342>,  <29.313139, 32.794842, 13.505164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268639, 32.397770, 13.486342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347240, 0.005535, -0.937760,
		0.931154, -0.120668, 0.344082,
		-0.111253, -0.992678, -0.047055,
		29.235262, 32.099968, 13.472226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914581, 32.539837, 13.324438>,  <29.313139, 32.794842, 13.505164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914581, 32.539837, 13.324438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634724, 32.271770, 13.225337>,  <29.466808, 32.110931, 13.165876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634724, 32.271770, 13.225337>,  <29.914581, 32.539837, 13.324438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634724, 32.271770, 13.225337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209319, 0.139287, -0.967876,
		0.683143, -0.729028, 0.042827,
		-0.699644, -0.670162, -0.247752,
		29.424831, 32.070721, 13.151011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625723, 32.375702, 13.773272>,  <29.914581, 32.539837, 13.324438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625723, 32.375702, 13.773272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860144, 32.617764, 13.557741>,  <31.000795, 32.763000, 13.428423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860144, 32.617764, 13.557741>,  <30.625723, 32.375702, 13.773272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860144, 32.617764, 13.557741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777871, -0.234015, 0.583226,
		0.226849, -0.760938, -0.607876,
		0.586051, 0.605154, -0.538826,
		31.035959, 32.799309, 13.396093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251902, 31.945202, 13.560203>,  <30.625723, 32.375702, 13.773272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251902, 31.945202, 13.560203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328377, 32.337788, 13.554905>,  <31.374262, 32.573338, 13.551726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328377, 32.337788, 13.554905>,  <31.251902, 31.945202, 13.560203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328377, 32.337788, 13.554905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764899, -0.140518, 0.628636,
		0.615123, -0.130317, -0.777587,
		0.191187, 0.981464, -0.013244,
		31.385733, 32.632225, 13.550932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962557, 31.904377, 13.535147>,  <31.251902, 31.945202, 13.560203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962557, 31.904377, 13.535147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.891905, 32.287895, 13.624154>,  <31.849514, 32.518005, 13.677559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.891905, 32.287895, 13.624154>,  <31.962557, 31.904377, 13.535147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891905, 32.287895, 13.624154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626398, -0.064887, 0.776798,
		0.759228, 0.276591, -0.589126,
		-0.176629, 0.958795, 0.222520,
		31.838917, 32.575535, 13.690910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584961, 32.332043, 13.428658>,  <31.962557, 31.904377, 13.535147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584961, 32.332043, 13.428658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342991, 32.511650, 13.691701>,  <32.197807, 32.619415, 13.849527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342991, 32.511650, 13.691701>,  <32.584961, 32.332043, 13.428658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342991, 32.511650, 13.691701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784084, 0.191894, 0.590245,
		0.138838, 0.872675, -0.468147,
		-0.604927, 0.449015, 0.657608,
		32.161514, 32.646355, 13.888984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082344, 32.703022, 13.696473>,  <32.584961, 32.332043, 13.428658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082344, 32.703022, 13.696473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776016, 32.746861, 13.949931>,  <32.592220, 32.773163, 14.102006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.776016, 32.746861, 13.949931>,  <33.082344, 32.703022, 13.696473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776016, 32.746861, 13.949931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637663, 0.002095, 0.770313,
		0.083097, 0.993974, -0.071491,
		-0.765821, 0.109598, 0.633646,
		32.546268, 32.779739, 14.140025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151012, 33.334904, 14.130966>,  <33.082344, 32.703022, 13.696473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151012, 33.334904, 14.130966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.911762, 33.086910, 14.334087>,  <32.768211, 32.938114, 14.455960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.911762, 33.086910, 14.334087>,  <33.151012, 33.334904, 14.130966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911762, 33.086910, 14.334087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561415, 0.128014, 0.817573,
		-0.571886, 0.774103, 0.271498,
		-0.598130, -0.619982, 0.507802,
		32.732323, 32.900917, 14.486428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926849, 33.650417, 14.816317>,  <33.151012, 33.334904, 14.130966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926849, 33.650417, 14.816317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881706, 33.257305, 14.874836>,  <32.854618, 33.021439, 14.909947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.881706, 33.257305, 14.874836>,  <32.926849, 33.650417, 14.816317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881706, 33.257305, 14.874836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300190, 0.106634, 0.947900,
		-0.947179, 0.150899, 0.282986,
		-0.112861, -0.982781, 0.146299,
		32.847847, 32.962471, 14.918726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654503, 34.360710, 15.232864>,  <32.926849, 33.650417, 14.816317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654503, 34.360710, 15.232864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965633, 34.590187, 15.130205>,  <33.152313, 34.727871, 15.068610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.965633, 34.590187, 15.130205>,  <32.654503, 34.360710, 15.232864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965633, 34.590187, 15.130205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578807, 0.494779, -0.648210,
		-0.244888, 0.652743, 0.716907,
		0.777825, 0.573690, -0.256647,
		33.198982, 34.762295, 15.053211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411842, 35.047306, 15.223665>,  <32.654503, 34.360710, 15.232864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411842, 35.047306, 15.223665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748959, 35.022144, 15.009845>,  <32.951229, 35.007046, 14.881553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748959, 35.022144, 15.009845>,  <32.411842, 35.047306, 15.223665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748959, 35.022144, 15.009845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458409, 0.436578, -0.774119,
		0.282071, 0.897464, 0.339107,
		0.842792, -0.062907, -0.534551,
		33.001797, 35.003273, 14.849480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648911, 35.772926, 15.030266>,  <32.411842, 35.047306, 15.223665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648911, 35.772926, 15.030266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825226, 35.532581, 14.763531>,  <32.931015, 35.388374, 14.603489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825226, 35.532581, 14.763531>,  <32.648911, 35.772926, 15.030266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825226, 35.532581, 14.763531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423422, 0.515867, -0.744712,
		0.791468, 0.610612, -0.027031,
		0.440786, -0.600861, -0.666839,
		32.957462, 35.352322, 14.563479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892265, 36.193085, 14.487124>,  <32.648911, 35.772926, 15.030266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892265, 36.193085, 14.487124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.869644, 35.827641, 14.326070>,  <32.856071, 35.608376, 14.229437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.869644, 35.827641, 14.326070>,  <32.892265, 36.193085, 14.487124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869644, 35.827641, 14.326070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383234, 0.392253, -0.836223,
		0.921918, 0.107014, -0.372310,
		-0.056552, -0.913611, -0.402636,
		32.852680, 35.553558, 14.205279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203342, 36.274948, 13.821688>,  <32.892265, 36.193085, 14.487124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203342, 36.274948, 13.821688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973011, 35.948357, 13.804792>,  <32.834812, 35.752399, 13.794655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973011, 35.948357, 13.804792>,  <33.203342, 36.274948, 13.821688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973011, 35.948357, 13.804792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396190, 0.323859, -0.859156,
		0.715164, -0.477989, -0.509968,
		-0.575825, -0.816481, -0.042238,
		32.800262, 35.703411, 13.792121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221615, 35.965714, 13.087842>,  <33.203342, 36.274948, 13.821688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221615, 35.965714, 13.087842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891987, 35.800922, 13.243372>,  <32.694210, 35.702049, 13.336690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.891987, 35.800922, 13.243372>,  <33.221615, 35.965714, 13.087842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891987, 35.800922, 13.243372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459732, 0.085320, -0.883950,
		0.330993, -0.907191, -0.259709,
		-0.824069, -0.411978, 0.388824,
		32.644768, 35.677330, 13.360020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080715, 35.429325, 12.688963>,  <33.221615, 35.965714, 13.087842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080715, 35.429325, 12.688963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749462, 35.556625, 12.873537>,  <32.550713, 35.633003, 12.984282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749462, 35.556625, 12.873537>,  <33.080715, 35.429325, 12.688963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749462, 35.556625, 12.873537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462245, 0.077921, -0.883322,
		-0.317069, -0.944800, 0.082579,
		-0.828128, 0.318246, 0.461436,
		32.501022, 35.652100, 13.011968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488777, 35.130116, 12.268420>,  <33.080715, 35.429325, 12.688963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488777, 35.130116, 12.268420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.357052, 35.434975, 12.491376>,  <32.278015, 35.617889, 12.625149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.357052, 35.434975, 12.491376>,  <32.488777, 35.130116, 12.268420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357052, 35.434975, 12.491376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454093, 0.389735, -0.801191,
		-0.827861, -0.516948, 0.217742,
		-0.329312, 0.762150, 0.557388,
		32.258259, 35.663620, 12.658592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790373, 35.085754, 12.018484>,  <32.488777, 35.130116, 12.268420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790373, 35.085754, 12.018484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906332, 35.429604, 12.186770>,  <31.975908, 35.635914, 12.287743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906332, 35.429604, 12.186770>,  <31.790373, 35.085754, 12.018484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906332, 35.429604, 12.186770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286901, 0.497433, -0.818687,
		-0.913042, 0.116633, 0.390833,
		0.289899, 0.859626, 0.420715,
		31.993301, 35.687492, 12.312985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.450180, 35.963593, 28.087301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319096, 36.278515, 27.878393>,  <35.240444, 36.467468, 27.753048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319096, 36.278515, 27.878393>,  <35.450180, 35.963593, 28.087301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319096, 36.278515, 27.878393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006639, -0.550861, -0.834571,
		-0.944756, -0.276962, 0.175294,
		-0.327707, 0.787302, -0.522268,
		35.220783, 36.514706, 27.721712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852959, 35.809250, 27.748186>,  <35.450180, 35.963593, 28.087301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852959, 35.809250, 27.748186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078053, 36.077534, 27.554907>,  <35.213108, 36.238503, 27.438938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.078053, 36.077534, 27.554907>,  <34.852959, 35.809250, 27.748186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078053, 36.077534, 27.554907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041987, -0.560590, -0.827029,
		-0.825571, 0.485686, -0.287302,
		0.562734, 0.670708, -0.483199,
		35.246872, 36.278748, 27.409946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534519, 36.073963, 27.127634>,  <34.852959, 35.809250, 27.748186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534519, 36.073963, 27.127634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922600, 36.140400, 27.057062>,  <35.155449, 36.180260, 27.014719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922600, 36.140400, 27.057062>,  <34.534519, 36.073963, 27.127634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922600, 36.140400, 27.057062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142934, -0.195660, -0.970199,
		-0.195660, 0.966505, -0.166090,
		0.970199, 0.166090, -0.176430,
		35.213661, 36.190228, 27.004133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520603, 36.216881, 26.357040>,  <34.534519, 36.073963, 27.127634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520603, 36.216881, 26.357040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908031, 36.179142, 26.449106>,  <35.140488, 36.156498, 26.504347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908031, 36.179142, 26.449106>,  <34.520603, 36.216881, 26.357040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908031, 36.179142, 26.449106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219540, -0.110841, -0.969286,
		0.116965, 0.989349, -0.086643,
		0.968566, -0.094351, 0.230167,
		35.198601, 36.150837, 26.518156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881126, 36.548592, 25.892900>,  <34.520603, 36.216881, 26.357040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881126, 36.548592, 25.892900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160751, 36.296379, 26.027803>,  <35.328526, 36.145050, 26.108746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160751, 36.296379, 26.027803>,  <34.881126, 36.548592, 25.892900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160751, 36.296379, 26.027803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290158, -0.180943, -0.939717,
		0.653549, 0.754775, 0.056465,
		0.699058, -0.630535, 0.337259,
		35.370468, 36.107220, 26.128981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527645, 36.821770, 25.655268>,  <34.881126, 36.548592, 25.892900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527645, 36.821770, 25.655268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573139, 36.427773, 25.707195>,  <35.600437, 36.191376, 25.738352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573139, 36.427773, 25.707195>,  <35.527645, 36.821770, 25.655268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573139, 36.427773, 25.707195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270097, -0.095089, -0.958126,
		0.956092, 0.144036, 0.255229,
		0.113735, -0.984993, 0.129817,
		35.607262, 36.132275, 25.746141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988064, 36.633774, 25.228416>,  <35.527645, 36.821770, 25.655268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988064, 36.633774, 25.228416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844479, 36.272785, 25.323658>,  <35.758327, 36.056190, 25.380804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844479, 36.272785, 25.323658>,  <35.988064, 36.633774, 25.228416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844479, 36.272785, 25.323658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085880, -0.285961, -0.954385,
		0.929394, -0.322137, 0.180153,
		-0.358959, -0.902471, 0.238105,
		35.736790, 36.002045, 25.395090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472038, 36.107151, 24.869450>,  <35.988064, 36.633774, 25.228416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472038, 36.107151, 24.869450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125954, 35.929310, 24.962177>,  <35.918304, 35.822605, 25.017813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125954, 35.929310, 24.962177>,  <36.472038, 36.107151, 24.869450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125954, 35.929310, 24.962177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035340, -0.407109, -0.912695,
		0.500165, -0.797865, 0.336522,
		-0.865209, -0.444606, 0.231818,
		35.866390, 35.795929, 25.031723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636055, 35.364071, 24.754118>,  <36.472038, 36.107151, 24.869450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636055, 35.364071, 24.754118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240707, 35.418934, 24.727837>,  <36.003498, 35.451851, 24.712067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240707, 35.418934, 24.727837>,  <36.636055, 35.364071, 24.754118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240707, 35.418934, 24.727837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036213, -0.207358, -0.977595,
		-0.147709, -0.968602, 0.199979,
		-0.988368, 0.137158, -0.065704,
		35.944199, 35.460083, 24.708126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343452, 34.793514, 24.467499>,  <36.636055, 35.364071, 24.754118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343452, 34.793514, 24.467499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036995, 35.044426, 24.411570>,  <35.853123, 35.194973, 24.378012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036995, 35.044426, 24.411570>,  <36.343452, 34.793514, 24.467499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036995, 35.044426, 24.411570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035492, -0.175940, -0.983761,
		-0.641692, -0.758662, 0.112531,
		-0.766140, 0.627278, -0.139825,
		35.807152, 35.232609, 24.369621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059082, 34.513268, 23.956820>,  <36.343452, 34.793514, 24.467499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059082, 34.513268, 23.956820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874054, 34.867863, 23.961924>,  <35.763039, 35.080620, 23.964985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874054, 34.867863, 23.961924>,  <36.059082, 34.513268, 23.956820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874054, 34.867863, 23.961924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091678, -0.033514, -0.995225,
		-0.881832, -0.461528, 0.096775,
		-0.462567, 0.886493, 0.012758,
		35.735283, 35.133812, 23.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553864, 34.438652, 23.541557>,  <36.059082, 34.513268, 23.956820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553864, 34.438652, 23.541557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559555, 34.838604, 23.539030>,  <35.562969, 35.078575, 23.537514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559555, 34.838604, 23.539030>,  <35.553864, 34.438652, 23.541557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559555, 34.838604, 23.539030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130131, -0.008117, -0.991464,
		-0.991395, 0.013285, -0.130231,
		0.014229, 0.999879, -0.006318,
		35.563824, 35.138569, 23.537134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960140, 33.972271, 23.387054>,  <35.553864, 34.438652, 23.541557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960140, 33.972271, 23.387054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116108, 33.609619, 23.322575>,  <35.209686, 33.392029, 23.283886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116108, 33.609619, 23.322575>,  <34.960140, 33.972271, 23.387054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116108, 33.609619, 23.322575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018703, -0.182817, 0.982969,
		-0.920660, -0.380262, -0.088241,
		0.389917, -0.906630, -0.161200,
		35.233082, 33.337631, 23.274214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518272, 33.362595, 23.591650>,  <34.960140, 33.972271, 23.387054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518272, 33.362595, 23.591650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882328, 33.198540, 23.568209>,  <35.100761, 33.100109, 23.554144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882328, 33.198540, 23.568209>,  <34.518272, 33.362595, 23.591650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882328, 33.198540, 23.568209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054076, -0.257846, 0.964672,
		-0.410756, -0.874817, -0.256855,
		0.910140, -0.410135, -0.058605,
		35.155369, 33.075500, 23.550627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461700, 32.782871, 23.948015>,  <34.518272, 33.362595, 23.591650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461700, 32.782871, 23.948015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858086, 32.824211, 23.913809>,  <35.095917, 32.849014, 23.893286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858086, 32.824211, 23.913809>,  <34.461700, 32.782871, 23.948015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858086, 32.824211, 23.913809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115091, -0.327582, 0.937787,
		0.068911, -0.939153, -0.336516,
		0.990962, 0.103354, -0.085515,
		35.155373, 32.855217, 23.888155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743916, 32.092865, 24.169905>,  <34.461700, 32.782871, 23.948015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743916, 32.092865, 24.169905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993877, 32.398029, 24.236193>,  <35.143856, 32.581127, 24.275965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993877, 32.398029, 24.236193>,  <34.743916, 32.092865, 24.169905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993877, 32.398029, 24.236193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044496, -0.246729, 0.968062,
		0.779429, -0.597576, -0.188129,
		0.624908, 0.762907, 0.165719,
		35.181351, 32.626900, 24.285908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254166, 31.860735, 24.692783>,  <34.743916, 32.092865, 24.169905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254166, 31.860735, 24.692783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318039, 32.255299, 24.677324>,  <35.356361, 32.492039, 24.668049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318039, 32.255299, 24.677324>,  <35.254166, 31.860735, 24.692783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318039, 32.255299, 24.677324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036870, 0.033161, 0.998770,
		0.986479, -0.160913, -0.031074,
		0.159684, 0.986412, -0.038645,
		35.365944, 32.551224, 24.665731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884552, 31.967224, 25.095043>,  <35.254166, 31.860735, 24.692783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884552, 31.967224, 25.095043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695473, 32.319683, 25.099766>,  <35.582027, 32.531158, 25.102600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695473, 32.319683, 25.099766>,  <35.884552, 31.967224, 25.095043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695473, 32.319683, 25.099766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127863, 0.055323, 0.990248,
		0.871901, 0.469595, -0.138817,
		-0.472695, 0.881147, 0.011808,
		35.553665, 32.584026, 25.103308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315163, 32.281410, 25.588402>,  <35.884552, 31.967224, 25.095043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315163, 32.281410, 25.588402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970028, 32.481598, 25.560009>,  <35.762947, 32.601711, 25.542973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970028, 32.481598, 25.560009>,  <36.315163, 32.281410, 25.588402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970028, 32.481598, 25.560009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060048, 0.037948, 0.997474,
		0.501902, 0.864920, -0.002690,
		-0.862837, 0.500473, -0.070983,
		35.711178, 32.631741, 25.538713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447220, 32.762074, 26.107279>,  <36.315163, 32.281410, 25.588402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447220, 32.762074, 26.107279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056232, 32.743446, 26.024935>,  <35.821640, 32.732269, 25.975529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056232, 32.743446, 26.024935>,  <36.447220, 32.762074, 26.107279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056232, 32.743446, 26.024935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210721, 0.159977, 0.964367,
		-0.011971, 0.986022, -0.166185,
		-0.977473, -0.046563, -0.205860,
		35.762989, 32.729477, 25.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054409, 33.402348, 26.259321>,  <36.447220, 32.762074, 26.107279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054409, 33.402348, 26.259321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814816, 33.088432, 26.322975>,  <35.671059, 32.900082, 26.361168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814816, 33.088432, 26.322975>,  <36.054409, 33.402348, 26.259321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814816, 33.088432, 26.322975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264906, 0.381739, 0.885494,
		-0.755675, 0.488240, -0.436551,
		-0.598982, -0.784791, 0.159133,
		35.635120, 32.852997, 26.370716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510712, 33.648998, 26.538258>,  <36.054409, 33.402348, 26.259321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510712, 33.648998, 26.538258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404510, 33.266705, 26.588972>,  <35.340790, 33.037327, 26.619402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404510, 33.266705, 26.588972>,  <35.510712, 33.648998, 26.538258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404510, 33.266705, 26.588972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412069, 0.231385, 0.881283,
		-0.871611, 0.181741, -0.455263,
		-0.265506, -0.955736, 0.126788,
		35.324860, 32.979984, 26.627008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780594, 33.628662, 26.683540>,  <35.510712, 33.648998, 26.538258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780594, 33.628662, 26.683540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987156, 33.321529, 26.835201>,  <35.111092, 33.137249, 26.926197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.987156, 33.321529, 26.835201>,  <34.780594, 33.628662, 26.683540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987156, 33.321529, 26.835201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223510, 0.306556, 0.925239,
		-0.826662, -0.562541, -0.013312,
		0.516404, -0.767835, 0.379152,
		35.142078, 33.091179, 26.948946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401047, 33.423065, 27.184263>,  <34.780594, 33.628662, 26.683540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401047, 33.423065, 27.184263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726978, 33.213306, 27.283108>,  <34.922539, 33.087452, 27.342415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726978, 33.213306, 27.283108>,  <34.401047, 33.423065, 27.184263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726978, 33.213306, 27.283108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146201, 0.226600, 0.962953,
		-0.560961, -0.820771, 0.107973,
		0.814830, -0.524393, 0.247111,
		34.971428, 33.055988, 27.357241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142517, 33.126137, 27.782064>,  <34.401047, 33.423065, 27.184263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142517, 33.126137, 27.782064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539177, 33.078598, 27.802078>,  <34.777172, 33.050076, 27.814087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539177, 33.078598, 27.802078>,  <34.142517, 33.126137, 27.782064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539177, 33.078598, 27.802078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001139, 0.379927, 0.925016,
		-0.128943, -0.917350, 0.376620,
		0.991651, -0.118846, 0.050034,
		34.836674, 33.042946, 27.817089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267784, 32.980217, 28.473429>,  <34.142517, 33.126137, 27.782064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267784, 32.980217, 28.473429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620480, 33.119225, 28.345819>,  <34.832096, 33.202629, 28.269255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620480, 33.119225, 28.345819>,  <34.267784, 32.980217, 28.473429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620480, 33.119225, 28.345819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069977, 0.572426, 0.816965,
		0.466528, -0.742670, 0.480410,
		0.881734, 0.347519, -0.319023,
		34.884998, 33.223480, 28.250113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488300, 32.241722, 28.363518>,  <34.267784, 32.980217, 28.473429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488300, 32.241722, 28.363518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530632, 32.107220, 27.989195>,  <34.556030, 32.026520, 27.764601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530632, 32.107220, 27.989195>,  <34.488300, 32.241722, 28.363518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530632, 32.107220, 27.989195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973092, 0.158684, -0.167068,
		0.204675, 0.928306, -0.310414,
		0.105832, -0.336256, -0.935805,
		34.562382, 32.006344, 27.708454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812786, 31.870314, 28.366875>,  <34.488300, 32.241722, 28.363518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812786, 31.870314, 28.366875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417362, 31.928907, 28.352549>,  <33.180107, 31.964064, 28.343954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417362, 31.928907, 28.352549>,  <33.812786, 31.870314, 28.366875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417362, 31.928907, 28.352549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012667, -0.155985, -0.987678,
		-0.150243, -0.976841, 0.152346,
		-0.988568, 0.146462, -0.035809,
		33.120792, 31.972853, 28.341805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472996, 31.329382, 28.024426>,  <33.812786, 31.870314, 28.366875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472996, 31.329382, 28.024426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239174, 31.651741, 27.986855>,  <33.098881, 31.845158, 27.964312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239174, 31.651741, 27.986855>,  <33.472996, 31.329382, 28.024426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239174, 31.651741, 27.986855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000329, -0.116001, -0.993249,
		-0.811354, -0.580578, 0.068074,
		-0.584555, 0.805899, -0.093927,
		33.063808, 31.893511, 27.958677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992279, 31.082563, 27.589046>,  <33.472996, 31.329382, 28.024426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992279, 31.082563, 27.589046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945251, 31.478765, 27.560549>,  <32.917034, 31.716486, 27.543449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945251, 31.478765, 27.560549>,  <32.992279, 31.082563, 27.589046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945251, 31.478765, 27.560549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168787, -0.090631, -0.981477,
		-0.978616, -0.103365, 0.177840,
		-0.117568, 0.990506, -0.071246,
		32.909981, 31.775917, 27.539175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394051, 31.189770, 27.179474>,  <32.992279, 31.082563, 27.589046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394051, 31.189770, 27.179474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576122, 31.545628, 27.164782>,  <32.685364, 31.759142, 27.155966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576122, 31.545628, 27.164782>,  <32.394051, 31.189770, 27.179474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576122, 31.545628, 27.164782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197803, 0.060809, -0.978354,
		-0.868153, 0.452588, 0.203653,
		0.455175, 0.889644, -0.036732,
		32.712673, 31.812521, 27.153763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863979, 31.573917, 26.945490>,  <32.394051, 31.189770, 27.179474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863979, 31.573917, 26.945490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227085, 31.721361, 26.865402>,  <32.444950, 31.809828, 26.817350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227085, 31.721361, 26.865402>,  <31.863979, 31.573917, 26.945490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227085, 31.721361, 26.865402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234090, 0.049077, -0.970975,
		-0.348086, 0.928287, 0.130839,
		0.907766, 0.368611, -0.200219,
		32.499416, 31.831944, 26.805336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704979, 32.134914, 26.575548>,  <31.863979, 31.573917, 26.945490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704979, 32.134914, 26.575548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074627, 32.025082, 26.469259>,  <32.296413, 31.959181, 26.405485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074627, 32.025082, 26.469259>,  <31.704979, 32.134914, 26.575548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074627, 32.025082, 26.469259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241774, 0.118314, -0.963092,
		0.295891, 0.954256, 0.042948,
		0.924118, -0.274587, -0.265723,
		32.351864, 31.942705, 26.389542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736307, 32.517029, 25.983576>,  <31.704979, 32.134914, 26.575548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736307, 32.517029, 25.983576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050835, 32.270367, 25.968412>,  <32.239552, 32.122368, 25.959314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050835, 32.270367, 25.968412>,  <31.736307, 32.517029, 25.983576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050835, 32.270367, 25.968412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029380, 0.023964, -0.999281,
		0.617125, 0.786865, 0.000726,
		0.786317, -0.616660, -0.037907,
		32.286728, 32.085369, 25.957041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180740, 32.818203, 25.473854>,  <31.736307, 32.517029, 25.983576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180740, 32.818203, 25.473854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274338, 32.429729, 25.491926>,  <32.330498, 32.196644, 25.502769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274338, 32.429729, 25.491926>,  <32.180740, 32.818203, 25.473854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274338, 32.429729, 25.491926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154626, -0.083054, -0.984476,
		0.959863, 0.223376, -0.169605,
		0.233995, -0.971188, 0.045181,
		32.344536, 32.138374, 25.505480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639755, 32.755291, 24.933891>,  <32.180740, 32.818203, 25.473854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639755, 32.755291, 24.933891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469887, 32.406734, 25.032137>,  <32.367966, 32.197601, 25.091085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469887, 32.406734, 25.032137>,  <32.639755, 32.755291, 24.933891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469887, 32.406734, 25.032137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281504, -0.130754, -0.950610,
		0.860472, -0.472836, -0.189774,
		-0.424669, -0.871395, 0.245615,
		32.342487, 32.145317, 25.105822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672504, 32.448288, 24.322876>,  <32.639755, 32.755291, 24.933891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672504, 32.448288, 24.322876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430050, 32.213581, 24.537655>,  <32.284576, 32.072758, 24.666521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430050, 32.213581, 24.537655>,  <32.672504, 32.448288, 24.322876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430050, 32.213581, 24.537655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365930, -0.393671, -0.843278,
		0.706185, -0.707624, 0.023903,
		-0.606134, -0.586763, 0.536945,
		32.248211, 32.037552, 24.698738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774612, 31.884764, 23.963772>,  <32.672504, 32.448288, 24.322876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774612, 31.884764, 23.963772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426388, 31.857557, 24.158709>,  <32.217453, 31.841234, 24.275671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426388, 31.857557, 24.158709>,  <32.774612, 31.884764, 23.963772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426388, 31.857557, 24.158709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450182, -0.289763, -0.844614,
		0.198662, -0.954679, 0.221636,
		-0.870557, -0.068016, 0.487344,
		32.165222, 31.837152, 24.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402477, 31.294777, 23.716440>,  <32.774612, 31.884764, 23.963772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402477, 31.294777, 23.716440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104733, 31.513586, 23.869646>,  <31.926086, 31.644871, 23.961569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.104733, 31.513586, 23.869646>,  <32.402477, 31.294777, 23.716440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104733, 31.513586, 23.869646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524977, -0.124878, -0.841905,
		-0.412711, -0.827752, 0.380128,
		-0.744358, 0.547022, 0.383013,
		31.881426, 31.677692, 23.984550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867472, 30.897152, 23.464296>,  <32.402477, 31.294777, 23.716440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867472, 30.897152, 23.464296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769394, 31.272015, 23.563585>,  <31.710546, 31.496933, 23.623159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769394, 31.272015, 23.563585>,  <31.867472, 30.897152, 23.464296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769394, 31.272015, 23.563585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536592, 0.082056, -0.839842,
		-0.807433, -0.339120, 0.482752,
		-0.245195, 0.937157, 0.248224,
		31.695835, 31.553162, 23.638052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219614, 30.880722, 23.331865>,  <31.867472, 30.897152, 23.464296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219614, 30.880722, 23.331865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.304420, 31.271236, 23.349358>,  <31.355305, 31.505545, 23.359854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.304420, 31.271236, 23.349358>,  <31.219614, 30.880722, 23.331865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304420, 31.271236, 23.349358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473586, 0.141783, -0.869261,
		-0.854848, 0.163588, 0.492416,
		0.212017, 0.976287, 0.043730,
		31.368025, 31.564123, 23.362476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617174, 31.235336, 23.285383>,  <31.219614, 30.880722, 23.331865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617174, 31.235336, 23.285383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896406, 31.492201, 23.158695>,  <31.063946, 31.646318, 23.082682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896406, 31.492201, 23.158695>,  <30.617174, 31.235336, 23.285383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896406, 31.492201, 23.158695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490211, 0.106218, -0.865107,
		-0.521896, 0.759176, 0.388943,
		0.698081, 0.642160, -0.316722,
		31.105831, 31.684849, 23.063679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300034, 31.816351, 22.863321>,  <30.617174, 31.235336, 23.285383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300034, 31.816351, 22.863321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675495, 31.828402, 22.725906>,  <30.900772, 31.835632, 22.643457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.675495, 31.828402, 22.725906>,  <30.300034, 31.816351, 22.863321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675495, 31.828402, 22.725906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333641, 0.331298, -0.882567,
		0.087224, 0.943045, 0.321027,
		0.938656, 0.030127, -0.343536,
		30.957092, 31.837440, 22.622845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337347, 32.283031, 22.301933>,  <30.300034, 31.816351, 22.863321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337347, 32.283031, 22.301933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713549, 32.164478, 22.235468>,  <30.939270, 32.093346, 22.195589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713549, 32.164478, 22.235468>,  <30.337347, 32.283031, 22.301933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713549, 32.164478, 22.235468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011324, 0.461405, -0.887118,
		0.339598, 0.836218, 0.430596,
		0.940503, -0.296387, -0.166161,
		30.995699, 32.075562, 22.185619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671461, 32.919357, 21.949772>,  <30.337347, 32.283031, 22.301933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671461, 32.919357, 21.949772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879293, 32.587502, 21.868052>,  <31.003992, 32.388390, 21.819019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879293, 32.587502, 21.868052>,  <30.671461, 32.919357, 21.949772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879293, 32.587502, 21.868052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110178, 0.302171, -0.946865,
		0.847288, 0.469463, 0.248410,
		0.519580, -0.829637, -0.204301,
		31.035168, 32.338612, 21.806761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308641, 33.190849, 21.693193>,  <30.671461, 32.919357, 21.949772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308641, 33.190849, 21.693193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243874, 32.813267, 21.578142>,  <31.205013, 32.586716, 21.509111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.243874, 32.813267, 21.578142>,  <31.308641, 33.190849, 21.693193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243874, 32.813267, 21.578142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134219, 0.267699, -0.954108,
		0.977633, -0.193095, 0.083351,
		-0.161920, -0.943955, -0.287629,
		31.195297, 32.530079, 21.491854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826796, 32.999184, 21.158886>,  <31.308641, 33.190849, 21.693193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826796, 32.999184, 21.158886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546507, 32.719570, 21.101843>,  <31.378334, 32.551800, 21.067617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.546507, 32.719570, 21.101843>,  <31.826796, 32.999184, 21.158886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546507, 32.719570, 21.101843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118093, 0.083481, -0.989487,
		0.703595, -0.710194, 0.024055,
		-0.700720, -0.699039, -0.142606,
		31.336290, 32.509857, 21.059061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979723, 32.839630, 20.456121>,  <31.826796, 32.999184, 21.158886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979723, 32.839630, 20.456121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618008, 32.683784, 20.525938>,  <31.400978, 32.590279, 20.567829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618008, 32.683784, 20.525938>,  <31.979723, 32.839630, 20.456121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618008, 32.683784, 20.525938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275223, 0.219477, -0.935993,
		0.326368, -0.894444, -0.305701,
		-0.904288, -0.389614, 0.174542,
		31.346722, 32.566902, 20.578300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869087, 32.254219, 20.008110>,  <31.979723, 32.839630, 20.456121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869087, 32.254219, 20.008110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500963, 32.375622, 20.106833>,  <31.280088, 32.448463, 20.166065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500963, 32.375622, 20.106833>,  <31.869087, 32.254219, 20.008110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500963, 32.375622, 20.106833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262207, -0.010393, -0.964956,
		-0.290306, -0.952773, 0.089146,
		-0.920310, 0.303507, 0.246806,
		31.224871, 32.466675, 20.180874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486237, 31.723200, 19.647219>,  <31.869087, 32.254219, 20.008110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486237, 31.723200, 19.647219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248274, 32.040379, 19.699871>,  <31.105497, 32.230686, 19.731462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.248274, 32.040379, 19.699871>,  <31.486237, 31.723200, 19.647219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248274, 32.040379, 19.699871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350265, -0.108341, -0.930364,
		-0.723466, -0.599583, 0.342194,
		-0.594904, 0.792945, 0.131632,
		31.069803, 32.278263, 19.739361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820145, 31.471918, 19.416821>,  <31.486237, 31.723200, 19.647219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820145, 31.471918, 19.416821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795858, 31.871178, 19.418039>,  <30.781286, 32.110733, 19.418770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.795858, 31.871178, 19.418039>,  <30.820145, 31.471918, 19.416821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795858, 31.871178, 19.418039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468842, -0.025826, -0.882904,
		-0.881193, -0.055036, 0.469543,
		-0.060718, 0.998151, 0.003046,
		30.777643, 32.170624, 19.418953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176167, 31.622536, 19.351202>,  <30.820145, 31.471918, 19.416821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176167, 31.622536, 19.351202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349863, 31.957611, 19.218712>,  <30.454081, 32.158657, 19.139217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349863, 31.957611, 19.218712>,  <30.176167, 31.622536, 19.351202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349863, 31.957611, 19.218712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629389, 0.019092, -0.776856,
		-0.644441, 0.545812, 0.535523,
		0.434241, 0.837690, -0.331224,
		30.480135, 32.208920, 19.119345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588528, 31.792667, 19.002022>,  <30.176167, 31.622536, 19.351202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588528, 31.792667, 19.002022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859344, 32.046768, 18.853390>,  <30.021833, 32.199230, 18.764210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859344, 32.046768, 18.853390>,  <29.588528, 31.792667, 19.002022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859344, 32.046768, 18.853390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612166, 0.205859, -0.763463,
		-0.408497, 0.744364, 0.528254,
		0.677040, 0.635251, -0.371581,
		30.062456, 32.237343, 18.741915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228178, 32.415493, 18.692780>,  <29.588528, 31.792667, 19.002022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228178, 32.415493, 18.692780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.597307, 32.397518, 18.539742>,  <29.818785, 32.386734, 18.447920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.597307, 32.397518, 18.539742>,  <29.228178, 32.415493, 18.692780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597307, 32.397518, 18.539742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381940, 0.022660, -0.923909,
		0.050186, 0.998733, 0.003749,
		0.922824, -0.044936, -0.382593,
		29.874155, 32.384037, 18.424963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098764, 33.120514, 18.665556>,  <29.228178, 32.415493, 18.692780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098764, 33.120514, 18.665556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967543, 33.493809, 18.724136>,  <28.888809, 33.717785, 18.759285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.967543, 33.493809, 18.724136>,  <29.098764, 33.120514, 18.665556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967543, 33.493809, 18.724136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288284, -0.048731, 0.956304,
		0.899595, 0.355941, -0.253051,
		-0.328057, 0.933237, 0.146450,
		28.869125, 33.773781, 18.768072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744841, 33.584915, 18.796715>,  <29.098764, 33.120514, 18.665556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744841, 33.584915, 18.796715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.433519, 33.789246, 18.942755>,  <29.246727, 33.911846, 19.030378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.433519, 33.789246, 18.942755>,  <29.744841, 33.584915, 18.796715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433519, 33.789246, 18.942755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521378, 0.201783, 0.829125,
		0.349870, 0.835665, -0.423384,
		-0.778303, 0.510829, 0.365099,
		29.200027, 33.942493, 19.052284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032038, 34.086590, 19.200233>,  <29.744841, 33.584915, 18.796715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032038, 34.086590, 19.200233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.655230, 34.124741, 19.328918>,  <29.429144, 34.147629, 19.406130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.655230, 34.124741, 19.328918>,  <30.032038, 34.086590, 19.200233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655230, 34.124741, 19.328918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335008, 0.321966, 0.885498,
		-0.019128, 0.941935, -0.335249,
		-0.942021, 0.095373, 0.321715,
		29.372623, 34.153351, 19.425432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915453, 34.794041, 19.579119>,  <30.032038, 34.086590, 19.200233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915453, 34.794041, 19.579119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.639193, 34.534180, 19.706209>,  <29.473436, 34.378262, 19.782463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.639193, 34.534180, 19.706209>,  <29.915453, 34.794041, 19.579119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639193, 34.534180, 19.706209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145162, 0.305862, 0.940944,
		-0.708468, 0.695988, -0.116939,
		-0.690653, -0.649654, 0.317725,
		29.431997, 34.339283, 19.801527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278124, 34.660160, 19.232653>,  <29.915453, 34.794041, 19.579119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278124, 34.660160, 19.232653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.533020, 34.890629, 19.027927>,  <29.685959, 35.028908, 18.905092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.533020, 34.890629, 19.027927>,  <29.278124, 34.660160, 19.232653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533020, 34.890629, 19.027927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282334, -0.792486, -0.540605,
		-0.717085, 0.199993, -0.667677,
		0.637242, 0.576167, -0.511815,
		29.724192, 35.063480, 18.874384>
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
