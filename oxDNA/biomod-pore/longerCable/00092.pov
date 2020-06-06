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
	<24.373756, 35.306923, 35.174377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344116, 34.937832, 35.023071>,  <24.326332, 34.716377, 34.932285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344116, 34.937832, 35.023071>,  <24.373756, 35.306923, 35.174377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344116, 34.937832, 35.023071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107034, 0.369763, -0.922940,
		0.991490, -0.108878, 0.071364,
		-0.074100, -0.922725, -0.378270,
		24.321886, 34.661015, 34.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626657, 34.954308, 35.803066>,  <24.373756, 35.306923, 35.174377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626657, 34.954308, 35.803066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532440, 34.619411, 36.000469>,  <24.475910, 34.418472, 36.118912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532440, 34.619411, 36.000469>,  <24.626657, 34.954308, 35.803066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532440, 34.619411, 36.000469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969110, -0.164140, 0.184073,
		-0.073109, 0.521620, 0.850040,
		-0.235542, -0.837240, 0.493508,
		24.461777, 34.368240, 36.148521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179039, 35.043968, 36.263638>,  <24.626657, 34.954308, 35.803066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179039, 35.043968, 36.263638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021751, 34.676208, 36.267193>,  <24.927380, 34.455551, 36.269325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021751, 34.676208, 36.267193>,  <25.179039, 35.043968, 36.263638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021751, 34.676208, 36.267193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849336, -0.359513, 0.386495,
		-0.352149, 0.159527, 0.922249,
		-0.393217, -0.919403, 0.008890,
		24.903786, 34.400387, 36.269859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234734, 34.808666, 36.982861>,  <25.179039, 35.043968, 36.263638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234734, 34.808666, 36.982861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240503, 34.537788, 36.688595>,  <25.243965, 34.375263, 36.512035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240503, 34.537788, 36.688595>,  <25.234734, 34.808666, 36.982861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240503, 34.537788, 36.688595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801381, -0.432174, 0.413538,
		-0.597980, -0.595514, 0.536454,
		0.014426, -0.677192, -0.735665,
		25.244831, 34.334629, 36.467896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260910, 34.144547, 37.296776>,  <25.234734, 34.808666, 36.982861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260910, 34.144547, 37.296776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415352, 34.167091, 36.928482>,  <25.508017, 34.180618, 36.707508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415352, 34.167091, 36.928482>,  <25.260910, 34.144547, 37.296776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415352, 34.167091, 36.928482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860780, -0.380855, 0.337650,
		-0.331633, -0.922915, -0.195568,
		0.386105, 0.056365, -0.920731,
		25.531183, 34.184002, 36.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207224, 33.536713, 36.992027>,  <25.260910, 34.144547, 37.296776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207224, 33.536713, 36.992027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541960, 33.720657, 36.873215>,  <25.742802, 33.831024, 36.801926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541960, 33.720657, 36.873215>,  <25.207224, 33.536713, 36.992027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541960, 33.720657, 36.873215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545235, -0.651328, 0.527723,
		0.049215, -0.603571, -0.795789,
		0.836838, 0.459863, -0.297033,
		25.793011, 33.858616, 36.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823067, 33.079262, 36.639763>,  <25.207224, 33.536713, 36.992027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823067, 33.079262, 36.639763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975073, 33.402363, 36.820038>,  <26.066277, 33.596222, 36.928204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975073, 33.402363, 36.820038>,  <25.823067, 33.079262, 36.639763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975073, 33.402363, 36.820038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549045, -0.589104, 0.592879,
		0.744405, 0.022147, -0.667361,
		0.380014, 0.807754, 0.450692,
		26.089077, 33.644688, 36.955246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602455, 32.891045, 36.629593>,  <25.823067, 33.079262, 36.639763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602455, 32.891045, 36.629593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535683, 33.174549, 36.903759>,  <26.495619, 33.344650, 37.068260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535683, 33.174549, 36.903759>,  <26.602455, 32.891045, 36.629593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535683, 33.174549, 36.903759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675208, -0.424403, 0.603304,
		0.718490, 0.563508, -0.407715,
		-0.166931, 0.708761, 0.685414,
		26.485603, 33.387177, 37.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217888, 32.788872, 36.923481>,  <26.602455, 32.891045, 36.629593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217888, 32.788872, 36.923481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983778, 32.976585, 37.187973>,  <26.843311, 33.089214, 37.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983778, 32.976585, 37.187973>,  <27.217888, 32.788872, 36.923481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983778, 32.976585, 37.187973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341680, -0.596808, 0.725999,
		0.735329, 0.650837, 0.188950,
		-0.585274, 0.469287, 0.661229,
		26.808195, 33.117371, 37.386341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592659, 33.107830, 37.428452>,  <27.217888, 32.788872, 36.923481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592659, 33.107830, 37.428452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262064, 33.049366, 37.645912>,  <27.063707, 33.014290, 37.776386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262064, 33.049366, 37.645912>,  <27.592659, 33.107830, 37.428452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262064, 33.049366, 37.645912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554528, -0.377815, 0.741454,
		0.097029, 0.914272, 0.393308,
		-0.826489, -0.146158, 0.543649,
		27.014118, 33.005520, 37.809006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771072, 33.120186, 38.111835>,  <27.592659, 33.107830, 37.428452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771072, 33.120186, 38.111835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417404, 32.949482, 38.187851>,  <27.205202, 32.847057, 38.233459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417404, 32.949482, 38.187851>,  <27.771072, 33.120186, 38.111835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417404, 32.949482, 38.187851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418504, -0.542814, 0.728153,
		-0.207592, 0.723344, 0.658542,
		-0.884172, -0.426762, 0.190039,
		27.152153, 32.821453, 38.244862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325794, 32.670547, 38.359547>,  <27.771072, 33.120186, 38.111835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325794, 32.670547, 38.359547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490360, 32.416817, 38.097748>,  <28.589100, 32.264576, 37.940670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490360, 32.416817, 38.097748>,  <28.325794, 32.670547, 38.359547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490360, 32.416817, 38.097748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003373, -0.717018, 0.697047,
		-0.911443, -0.288982, -0.292851,
		0.411413, -0.634331, -0.654495,
		28.613785, 32.226517, 37.901398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925503, 32.195305, 38.253586>,  <28.325794, 32.670547, 38.359547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925503, 32.195305, 38.253586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304607, 32.074921, 38.211308>,  <28.532070, 32.002689, 38.185940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304607, 32.074921, 38.211308>,  <27.925503, 32.195305, 38.253586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304607, 32.074921, 38.211308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144502, -0.700491, 0.698879,
		-0.284374, -0.647097, -0.707388,
		0.947761, -0.300962, -0.105694,
		28.588936, 31.984632, 38.179600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790884, 31.922487, 38.917900>,  <27.925503, 32.195305, 38.253586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790884, 31.922487, 38.917900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449768, 31.806385, 39.091568>,  <27.245098, 31.736723, 39.195766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449768, 31.806385, 39.091568>,  <27.790884, 31.922487, 38.917900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449768, 31.806385, 39.091568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500293, 0.692576, -0.519660,
		-0.149858, -0.660371, -0.735835,
		-0.852790, -0.290258, 0.434167,
		27.193932, 31.719307, 39.221817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281977, 31.773556, 38.289219>,  <27.790884, 31.922487, 38.917900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281977, 31.773556, 38.289219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130030, 31.910278, 38.633049>,  <27.038862, 31.992311, 38.839348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130030, 31.910278, 38.633049>,  <27.281977, 31.773556, 38.289219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130030, 31.910278, 38.633049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311339, 0.827775, -0.466751,
		-0.871074, -0.444922, -0.208025,
		-0.379865, 0.341809, 0.859575,
		27.016069, 32.012821, 38.890923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516069, 31.811010, 38.362614>,  <27.281977, 31.773556, 38.289219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516069, 31.811010, 38.362614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688023, 32.116257, 38.555634>,  <26.791195, 32.299404, 38.671448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688023, 32.116257, 38.555634>,  <26.516069, 31.811010, 38.362614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688023, 32.116257, 38.555634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341854, 0.632234, -0.695282,
		-0.835666, 0.133927, 0.532660,
		0.429883, 0.763115, 0.482552,
		26.816988, 32.345192, 38.700397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003473, 32.363438, 38.596230>,  <26.516069, 31.811010, 38.362614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003473, 32.363438, 38.596230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355183, 32.523106, 38.492275>,  <26.566208, 32.618904, 38.429901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355183, 32.523106, 38.492275>,  <26.003473, 32.363438, 38.596230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355183, 32.523106, 38.492275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473541, 0.673750, -0.567291,
		-0.051344, 0.621873, 0.781433,
		0.879274, 0.399168, -0.259890,
		26.618965, 32.642857, 38.414307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891094, 33.056210, 38.429760>,  <26.003473, 32.363438, 38.596230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891094, 33.056210, 38.429760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245350, 33.040333, 38.244690>,  <26.457903, 33.030807, 38.133648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245350, 33.040333, 38.244690>,  <25.891094, 33.056210, 38.429760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245350, 33.040333, 38.244690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338635, 0.626564, -0.701957,
		0.317753, 0.778359, 0.541471,
		0.885641, -0.039688, -0.462672,
		26.511042, 33.028427, 38.105888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983614, 33.681934, 38.287483>,  <25.891094, 33.056210, 38.429760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983614, 33.681934, 38.287483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265795, 33.540977, 38.041508>,  <26.435104, 33.456402, 37.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265795, 33.540977, 38.041508>,  <25.983614, 33.681934, 38.287483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265795, 33.540977, 38.041508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336831, 0.596704, -0.728347,
		0.623603, 0.720947, 0.302250,
		0.705454, -0.352392, -0.614943,
		26.477430, 33.435261, 37.857025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298870, 34.215153, 38.029854>,  <25.983614, 33.681934, 38.287483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298870, 34.215153, 38.029854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347795, 33.929085, 37.754589>,  <26.377151, 33.757442, 37.589428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347795, 33.929085, 37.754589>,  <26.298870, 34.215153, 38.029854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347795, 33.929085, 37.754589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480212, 0.564162, -0.671653,
		0.868583, 0.412618, -0.274428,
		0.122314, -0.715170, -0.688165,
		26.384489, 33.714535, 37.548138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675611, 34.510468, 37.616295>,  <26.298870, 34.215153, 38.029854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675611, 34.510468, 37.616295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482611, 34.218449, 37.422707>,  <26.366810, 34.043240, 37.306553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482611, 34.218449, 37.422707>,  <26.675611, 34.510468, 37.616295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482611, 34.218449, 37.422707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277110, 0.651393, -0.706327,
		0.830904, -0.206692, -0.516602,
		-0.482503, -0.730045, -0.483968,
		26.337860, 33.999435, 37.277515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775391, 34.725754, 37.011532>,  <26.675611, 34.510468, 37.616295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775391, 34.725754, 37.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443531, 34.502460, 37.014427>,  <26.244415, 34.368484, 37.016163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443531, 34.502460, 37.014427>,  <26.775391, 34.725754, 37.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443531, 34.502460, 37.014427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336973, 0.490390, -0.803721,
		0.445111, -0.669250, -0.594963,
		-0.829654, -0.558231, 0.007241,
		26.194635, 34.334991, 37.016598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041361, 34.682178, 36.308270>,  <26.775391, 34.725754, 37.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041361, 34.682178, 36.308270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153360, 34.372662, 36.535545>,  <27.220560, 34.186951, 36.671909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153360, 34.372662, 36.535545>,  <27.041361, 34.682178, 36.308270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153360, 34.372662, 36.535545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781367, -0.160164, -0.603169,
		0.557734, 0.612851, 0.559774,
		0.279997, -0.773797, 0.568190,
		27.237360, 34.140522, 36.706001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712372, 34.747906, 36.637436>,  <27.041361, 34.682178, 36.308270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712372, 34.747906, 36.637436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634508, 34.361340, 36.570328>,  <27.587790, 34.129398, 36.530064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.634508, 34.361340, 36.570328>,  <27.712372, 34.747906, 36.637436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634508, 34.361340, 36.570328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944055, -0.138170, -0.299448,
		0.266211, -0.216672, 0.939247,
		-0.194658, -0.966417, -0.167768,
		27.576111, 34.071415, 36.519997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106241, 34.377270, 37.038734>,  <27.712372, 34.747906, 36.637436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106241, 34.377270, 37.038734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004831, 34.175625, 36.708500>,  <27.943985, 34.054638, 36.510357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004831, 34.175625, 36.708500>,  <28.106241, 34.377270, 37.038734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004831, 34.175625, 36.708500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954149, -0.270730, -0.127694,
		-0.159140, -0.820110, 0.549631,
		-0.253524, -0.504108, -0.825591,
		27.928774, 34.024391, 36.460823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290014, 33.680401, 37.175423>,  <28.106241, 34.377270, 37.038734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290014, 33.680401, 37.175423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281981, 33.746792, 36.781052>,  <28.277161, 33.786625, 36.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281981, 33.746792, 36.781052>,  <28.290014, 33.680401, 37.175423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281981, 33.746792, 36.781052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920866, -0.380965, -0.082892,
		-0.389361, -0.909570, -0.145189,
		-0.020084, 0.165975, -0.985925,
		28.275955, 33.796585, 36.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603468, 33.175007, 36.747295>,  <28.290014, 33.680401, 37.175423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603468, 33.175007, 36.747295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660616, 33.513683, 36.542278>,  <28.694904, 33.716888, 36.419266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660616, 33.513683, 36.542278>,  <28.603468, 33.175007, 36.747295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660616, 33.513683, 36.542278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970659, -0.221064, -0.094615,
		-0.193415, -0.483990, -0.853431,
		0.142869, 0.846690, -0.512546,
		28.703476, 33.767689, 36.388515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955215, 33.108101, 36.113522>,  <28.603468, 33.175007, 36.747295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955215, 33.108101, 36.113522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068007, 33.487206, 36.173176>,  <29.135681, 33.714668, 36.208969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068007, 33.487206, 36.173176>,  <28.955215, 33.108101, 36.113522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068007, 33.487206, 36.173176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956330, -0.265189, -0.122911,
		-0.076941, 0.177283, -0.981148,
		0.281979, 0.947758, 0.149138,
		29.152599, 33.771534, 36.217918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324524, 33.319355, 35.590923>,  <28.955215, 33.108101, 36.113522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324524, 33.319355, 35.590923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441013, 33.555294, 35.892193>,  <29.510906, 33.696857, 36.072956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441013, 33.555294, 35.892193>,  <29.324524, 33.319355, 35.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441013, 33.555294, 35.892193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945699, -0.296317, -0.133605,
		0.144372, 0.751186, -0.644109,
		0.291223, 0.589844, 0.753175,
		29.528379, 33.732246, 36.118145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796049, 33.885910, 35.452724>,  <29.324524, 33.319355, 35.590923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796049, 33.885910, 35.452724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853510, 33.710766, 35.807720>,  <29.887987, 33.605679, 36.020718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853510, 33.710766, 35.807720>,  <29.796049, 33.885910, 35.452724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853510, 33.710766, 35.807720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761306, -0.524070, -0.381790,
		0.632279, 0.730497, 0.258065,
		0.143652, -0.437865, 0.887490,
		29.896606, 33.579407, 36.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508064, 33.675678, 35.425747>,  <29.796049, 33.885910, 35.452724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508064, 33.675678, 35.425747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370398, 33.432362, 35.711830>,  <30.287798, 33.286369, 35.883480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370398, 33.432362, 35.711830>,  <30.508064, 33.675678, 35.425747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370398, 33.432362, 35.711830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621301, -0.718665, -0.312257,
		0.703942, 0.336892, 0.625276,
		-0.344167, -0.608296, 0.715210,
		30.267147, 33.249874, 35.926392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112219, 33.271366, 35.665039>,  <30.508064, 33.675678, 35.425747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112219, 33.271366, 35.665039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797531, 33.045742, 35.765362>,  <30.608719, 32.910366, 35.825554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797531, 33.045742, 35.765362>,  <31.112219, 33.271366, 35.665039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797531, 33.045742, 35.765362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577234, -0.816197, -0.024985,
		0.218800, 0.125117, 0.967715,
		-0.786720, -0.564064, 0.250806,
		30.561516, 32.876522, 35.840603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262896, 32.853889, 36.292656>,  <31.112219, 33.271366, 35.665039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262896, 32.853889, 36.292656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992411, 32.678352, 36.055962>,  <30.830120, 32.573029, 35.913944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992411, 32.678352, 36.055962>,  <31.262896, 32.853889, 36.292656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992411, 32.678352, 36.055962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617081, -0.776161, -0.129558,
		-0.402427, -0.452759, 0.795652,
		-0.676212, -0.438844, -0.591737,
		30.789547, 32.546700, 35.878441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333363, 32.121788, 36.451797>,  <31.262896, 32.853889, 36.292656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333363, 32.121788, 36.451797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155909, 32.147198, 36.094215>,  <31.049437, 32.162445, 35.879665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155909, 32.147198, 36.094215>,  <31.333363, 32.121788, 36.451797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155909, 32.147198, 36.094215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679339, -0.626759, -0.381670,
		-0.584540, -0.776620, 0.234895,
		-0.443635, 0.063527, -0.893953,
		31.022818, 32.166256, 35.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254192, 31.389086, 36.107914>,  <31.333363, 32.121788, 36.451797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254192, 31.389086, 36.107914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243126, 31.677000, 35.830456>,  <31.236486, 31.849749, 35.663982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243126, 31.677000, 35.830456>,  <31.254192, 31.389086, 36.107914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243126, 31.677000, 35.830456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681392, -0.494137, -0.539939,
		-0.731396, -0.487582, -0.476785,
		-0.027668, 0.719786, -0.693644,
		31.234825, 31.892937, 35.622364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755093, 31.182648, 35.697861>,  <31.254192, 31.389086, 36.107914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755093, 31.182648, 35.697861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664715, 31.508722, 35.484535>,  <31.610489, 31.704367, 35.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664715, 31.508722, 35.484535>,  <31.755093, 31.182648, 35.697861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664715, 31.508722, 35.484535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593644, -0.318842, -0.738869,
		-0.772358, -0.483539, -0.411891,
		-0.225944, 0.815187, -0.533310,
		31.596931, 31.753279, 35.324543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064892, 31.628527, 35.091164>,  <31.755093, 31.182648, 35.697861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064892, 31.628527, 35.091164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724243, 31.472704, 34.950886>,  <31.519855, 31.379210, 34.866718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724243, 31.472704, 34.950886>,  <32.064892, 31.628527, 35.091164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724243, 31.472704, 34.950886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522372, 0.575527, 0.629203,
		-0.043274, 0.719037, -0.693624,
		-0.851619, -0.389558, -0.350699,
		31.468758, 31.355837, 34.845676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758165, 32.152962, 34.758179>,  <32.064892, 31.628527, 35.091164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758165, 32.152962, 34.758179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521786, 31.869867, 34.913044>,  <31.379957, 31.700012, 35.005962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521786, 31.869867, 34.913044>,  <31.758165, 32.152962, 34.758179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521786, 31.869867, 34.913044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552028, 0.704735, 0.445661,
		-0.588253, 0.049641, -0.807152,
		-0.590951, -0.707732, 0.387160,
		31.344500, 31.657547, 35.029190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072771, 32.286247, 34.578445>,  <31.758165, 32.152962, 34.758179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072771, 32.286247, 34.578445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076939, 32.071445, 34.915852>,  <31.079439, 31.942566, 35.118298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076939, 32.071445, 34.915852>,  <31.072771, 32.286247, 34.578445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076939, 32.071445, 34.915852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658233, 0.631338, 0.410051,
		-0.752742, -0.559503, -0.346895,
		0.010417, -0.537000, 0.843518,
		31.080063, 31.910345, 35.168907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371252, 32.178200, 34.726376>,  <31.072771, 32.286247, 34.578445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371252, 32.178200, 34.726376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545284, 32.131584, 35.083504>,  <30.649704, 32.103615, 35.297779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.545284, 32.131584, 35.083504>,  <30.371252, 32.178200, 34.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545284, 32.131584, 35.083504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774700, 0.456878, 0.437152,
		-0.458853, -0.881863, 0.108498,
		0.435079, -0.116535, 0.892819,
		30.675808, 32.096622, 35.351349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879953, 32.007416, 35.179157>,  <30.371252, 32.178200, 34.726376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879953, 32.007416, 35.179157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161051, 32.165588, 35.415726>,  <30.329710, 32.260494, 35.557667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161051, 32.165588, 35.415726>,  <29.879953, 32.007416, 35.179157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161051, 32.165588, 35.415726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686575, 0.594815, 0.418102,
		-0.186456, -0.699876, 0.689498,
		0.702743, 0.395435, 0.591425,
		30.371874, 32.284218, 35.593155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505030, 32.156464, 35.846714>,  <29.879953, 32.007416, 35.179157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505030, 32.156464, 35.846714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828196, 32.389957, 35.814396>,  <30.022095, 32.530056, 35.795006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828196, 32.389957, 35.814396>,  <29.505030, 32.156464, 35.846714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828196, 32.389957, 35.814396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523597, 0.773965, 0.356126,
		0.270414, -0.245416, 0.930939,
		0.807912, 0.583738, -0.080792,
		30.070570, 32.565079, 35.790157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744322, 32.426781, 36.471218>,  <29.505030, 32.156464, 35.846714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744322, 32.426781, 36.471218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830626, 32.679302, 36.173252>,  <29.882408, 32.830814, 35.994473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830626, 32.679302, 36.173252>,  <29.744322, 32.426781, 36.471218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830626, 32.679302, 36.173252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643146, 0.665907, 0.378063,
		0.734718, 0.397520, 0.549698,
		0.215760, 0.631306, -0.744917,
		29.895353, 32.868694, 35.949776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104168, 33.038311, 36.778175>,  <29.744322, 32.426781, 36.471218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104168, 33.038311, 36.778175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912773, 33.116264, 36.435696>,  <29.797937, 33.163036, 36.230209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912773, 33.116264, 36.435696>,  <30.104168, 33.038311, 36.778175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912773, 33.116264, 36.435696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649335, 0.577861, 0.494410,
		0.591114, 0.792526, -0.149954,
		-0.478485, 0.194883, -0.856197,
		29.769228, 33.174728, 36.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967733, 33.605320, 37.268101>,  <30.104168, 33.038311, 36.778175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967733, 33.605320, 37.268101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015795, 33.746105, 36.896793>,  <30.044632, 33.830578, 36.674007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015795, 33.746105, 36.896793>,  <29.967733, 33.605320, 37.268101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015795, 33.746105, 36.896793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795563, 0.593453, 0.122038,
		0.593843, 0.723849, 0.351274,
		0.120127, 0.351932, -0.928285,
		30.051840, 33.851692, 36.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905235, 34.349483, 37.213318>,  <29.967733, 33.605320, 37.268101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905235, 34.349483, 37.213318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788734, 34.182205, 36.869160>,  <29.718834, 34.081837, 36.662663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788734, 34.182205, 36.869160>,  <29.905235, 34.349483, 37.213318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788734, 34.182205, 36.869160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778811, 0.625943, -0.040607,
		0.555542, 0.658260, -0.508003,
		-0.291251, -0.418197, -0.860397,
		29.701359, 34.056747, 36.611042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524443, 34.713882, 37.312824>,  <29.905235, 34.349483, 37.213318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524443, 34.713882, 37.312824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784822, 34.996510, 37.423836>,  <30.941051, 35.166088, 37.490444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784822, 34.996510, 37.423836>,  <30.524443, 34.713882, 37.312824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784822, 34.996510, 37.423836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415153, -0.637429, 0.649102,
		0.635540, -0.307317, -0.708269,
		0.650951, 0.706570, 0.277528,
		30.980108, 35.208481, 37.507095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247549, 34.483425, 37.362629>,  <30.524443, 34.713882, 37.312824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247549, 34.483425, 37.362629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181767, 34.793957, 37.606030>,  <31.142298, 34.980274, 37.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181767, 34.793957, 37.606030>,  <31.247549, 34.483425, 37.362629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181767, 34.793957, 37.606030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420164, -0.503001, 0.755283,
		0.892422, 0.379880, -0.243463,
		-0.164454, 0.776325, 0.608501,
		31.132431, 35.026855, 37.788578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835678, 34.594376, 37.721958>,  <31.247549, 34.483425, 37.362629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835678, 34.594376, 37.721958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523518, 34.711334, 37.943039>,  <31.336220, 34.781509, 38.075687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523518, 34.711334, 37.943039>,  <31.835678, 34.594376, 37.721958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523518, 34.711334, 37.943039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354463, -0.521298, 0.776276,
		0.515099, 0.801720, 0.303180,
		-0.780404, 0.292393, 0.552699,
		31.289396, 34.799053, 38.108849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202824, 34.158085, 38.206367>,  <31.835678, 34.594376, 37.721958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202824, 34.158085, 38.206367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524807, 33.924980, 38.161758>,  <32.717995, 33.785118, 38.134995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524807, 33.924980, 38.161758>,  <32.202824, 34.158085, 38.206367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524807, 33.924980, 38.161758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034459, -0.141727, 0.989306,
		-0.592333, -0.800191, -0.094002,
		0.804956, -0.582759, -0.111524,
		32.766293, 33.750153, 38.128300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093346, 33.524006, 38.523743>,  <32.202824, 34.158085, 38.206367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093346, 33.524006, 38.523743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485176, 33.599758, 38.496735>,  <32.720276, 33.645210, 38.480530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485176, 33.599758, 38.496735>,  <32.093346, 33.524006, 38.523743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485176, 33.599758, 38.496735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097462, -0.153557, 0.983322,
		0.175851, -0.969823, -0.168878,
		0.979580, 0.189378, -0.067518,
		32.779049, 33.656570, 38.476479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394466, 33.109089, 38.979424>,  <32.093346, 33.524006, 38.523743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394466, 33.109089, 38.979424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690987, 33.371994, 38.925060>,  <32.868900, 33.529739, 38.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690987, 33.371994, 38.925060>,  <32.394466, 33.109089, 38.979424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690987, 33.371994, 38.925060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255445, -0.089042, 0.962714,
		0.620657, -0.748381, -0.233902,
		0.741305, 0.657264, -0.135906,
		32.913380, 33.569172, 38.884289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934937, 32.790646, 39.357563>,  <32.394466, 33.109089, 38.979424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934937, 32.790646, 39.357563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041004, 33.173885, 39.314240>,  <33.104645, 33.403828, 39.288246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041004, 33.173885, 39.314240>,  <32.934937, 32.790646, 39.357563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041004, 33.173885, 39.314240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392710, -0.004731, 0.919650,
		0.880604, -0.286396, -0.377510,
		0.265170, 0.958100, -0.108305,
		33.120556, 33.461315, 39.281750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784077, 32.980919, 39.509785>,  <32.934937, 32.790646, 39.357563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784077, 32.980919, 39.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545998, 33.292915, 39.587093>,  <33.403152, 33.480114, 39.633480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545998, 33.292915, 39.587093>,  <33.784077, 32.980919, 39.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545998, 33.292915, 39.587093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402318, 0.081040, 0.911906,
		0.695617, 0.620519, -0.362040,
		-0.595195, 0.779993, 0.193273,
		33.367439, 33.526913, 39.645077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240463, 33.493328, 39.639462>,  <33.784077, 32.980919, 39.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240463, 33.493328, 39.639462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899082, 33.548939, 39.840374>,  <33.694252, 33.582306, 39.960922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899082, 33.548939, 39.840374>,  <34.240463, 33.493328, 39.639462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899082, 33.548939, 39.840374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511286, 0.036545, 0.858633,
		0.101018, 0.989614, -0.102272,
		-0.853453, 0.139028, 0.502284,
		33.643047, 33.590649, 39.991058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243416, 34.206852, 40.073315>,  <34.240463, 33.493328, 39.639462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243416, 34.206852, 40.073315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078224, 33.856503, 40.173157>,  <33.979111, 33.646294, 40.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078224, 33.856503, 40.173157>,  <34.243416, 34.206852, 40.073315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078224, 33.856503, 40.173157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494589, 0.014448, 0.869007,
		-0.764742, 0.482333, 0.427229,
		-0.412978, -0.875869, 0.249606,
		33.954330, 33.593742, 40.248039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361256, 34.092480, 40.848297>,  <34.243416, 34.206852, 40.073315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361256, 34.092480, 40.848297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049759, 34.301025, 40.987862>,  <33.862862, 34.426151, 41.071602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049759, 34.301025, 40.987862>,  <34.361256, 34.092480, 40.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049759, 34.301025, 40.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545434, -0.287905, -0.787155,
		-0.309948, -0.803294, 0.508577,
		-0.778738, 0.521372, 0.348908,
		33.816135, 34.457436, 41.092537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808338, 33.650135, 40.925941>,  <34.361256, 34.092480, 40.848297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808338, 33.650135, 40.925941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730942, 34.034164, 40.845127>,  <33.684505, 34.264584, 40.796638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730942, 34.034164, 40.845127>,  <33.808338, 33.650135, 40.925941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730942, 34.034164, 40.845127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623768, -0.279331, -0.729991,
		-0.757281, -0.015221, 0.652911,
		-0.193489, 0.960074, -0.202038,
		33.672894, 34.322186, 40.784515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006050, 33.846611, 40.845306>,  <33.808338, 33.650135, 40.925941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006050, 33.846611, 40.845306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234383, 34.087467, 40.622028>,  <33.371380, 34.231983, 40.488064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234383, 34.087467, 40.622028>,  <33.006050, 33.846611, 40.845306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234383, 34.087467, 40.622028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523472, -0.256857, -0.812405,
		-0.632560, 0.755941, 0.168584,
		0.570828, 0.602144, -0.558191,
		33.405632, 34.268112, 40.454571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575241, 34.311256, 40.311420>,  <33.006050, 33.846611, 40.845306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575241, 34.311256, 40.311420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946445, 34.211391, 40.200817>,  <33.169170, 34.151474, 40.134457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946445, 34.211391, 40.200817>,  <32.575241, 34.311256, 40.311420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946445, 34.211391, 40.200817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305445, -0.084962, -0.948412,
		0.213291, 0.964598, -0.155104,
		0.928014, -0.249663, -0.276510,
		33.224850, 34.136494, 40.117863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884567, 34.713058, 39.682552>,  <32.575241, 34.311256, 40.311420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884567, 34.713058, 39.682552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049931, 34.348942, 39.691113>,  <33.149151, 34.130470, 39.696251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049931, 34.348942, 39.691113>,  <32.884567, 34.713058, 39.682552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049931, 34.348942, 39.691113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066128, -0.053460, -0.996378,
		0.908140, 0.410498, -0.082297,
		0.413410, -0.910293, 0.021404,
		33.173954, 34.075855, 39.697533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480125, 34.722401, 39.171001>,  <32.884567, 34.713058, 39.682552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480125, 34.722401, 39.171001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348274, 34.346912, 39.211311>,  <33.269165, 34.121620, 39.235497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348274, 34.346912, 39.211311>,  <33.480125, 34.722401, 39.171001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348274, 34.346912, 39.211311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063042, -0.084617, -0.994417,
		0.942003, -0.334142, -0.031286,
		-0.329629, -0.938717, 0.100775,
		33.249386, 34.065296, 39.241543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945354, 34.328991, 38.879963>,  <33.480125, 34.722401, 39.171001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945354, 34.328991, 38.879963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606083, 34.118172, 38.858727>,  <33.402519, 33.991680, 38.845985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606083, 34.118172, 38.858727>,  <33.945354, 34.328991, 38.879963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606083, 34.118172, 38.858727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113685, -0.083229, -0.990025,
		0.517368, -0.845753, 0.130510,
		-0.848178, -0.527044, -0.053089,
		33.351631, 33.960060, 38.842800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105736, 33.797157, 38.424900>,  <33.945354, 34.328991, 38.879963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105736, 33.797157, 38.424900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708195, 33.757744, 38.445084>,  <33.469669, 33.734097, 38.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708195, 33.757744, 38.445084>,  <34.105736, 33.797157, 38.424900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708195, 33.757744, 38.445084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041008, -0.095698, -0.994565,
		0.102825, -0.990522, 0.091069,
		-0.993854, -0.098532, 0.050460,
		33.410038, 33.728184, 38.460220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986668, 33.288532, 37.913231>,  <34.105736, 33.797157, 38.424900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986668, 33.288532, 37.913231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621704, 33.439598, 37.976330>,  <33.402725, 33.530235, 38.014187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621704, 33.439598, 37.976330>,  <33.986668, 33.288532, 37.913231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621704, 33.439598, 37.976330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209326, -0.099406, -0.972780,
		-0.351701, -0.920592, 0.169753,
		-0.912408, 0.377662, 0.157743,
		33.347980, 33.552895, 38.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377903, 32.899792, 37.866318>,  <33.986668, 33.288532, 37.913231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377903, 32.899792, 37.866318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262573, 33.267742, 37.759964>,  <33.193375, 33.488514, 37.696152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262573, 33.267742, 37.759964>,  <33.377903, 32.899792, 37.866318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262573, 33.267742, 37.759964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086437, -0.301549, -0.949524,
		-0.953622, -0.250792, 0.166457,
		-0.288328, 0.919876, -0.265886,
		33.176075, 33.543705, 37.680199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641605, 32.901028, 37.438725>,  <33.377903, 32.899792, 37.866318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641605, 32.901028, 37.438725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811016, 33.255997, 37.365936>,  <32.912663, 33.468979, 37.322262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811016, 33.255997, 37.365936>,  <32.641605, 32.901028, 37.438725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811016, 33.255997, 37.365936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137616, -0.135516, -0.981171,
		-0.895369, 0.440594, 0.064728,
		0.423527, 0.887419, -0.181969,
		32.938076, 33.522221, 37.311344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693943, 32.838947, 36.755482>,  <32.641605, 32.901028, 37.438725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693943, 32.838947, 36.755482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887493, 33.187653, 36.786175>,  <33.003624, 33.396877, 36.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887493, 33.187653, 36.786175>,  <32.693943, 32.838947, 36.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887493, 33.187653, 36.786175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069117, 0.049343, -0.996387,
		-0.872401, 0.487435, -0.036378,
		0.483879, 0.871764, 0.076737,
		33.032658, 33.449181, 36.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336685, 33.397278, 36.258423>,  <32.693943, 32.838947, 36.755482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336685, 33.397278, 36.258423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704018, 33.534756, 36.336948>,  <32.924419, 33.617241, 36.384064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704018, 33.534756, 36.336948>,  <32.336685, 33.397278, 36.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704018, 33.534756, 36.336948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122333, 0.225227, -0.966596,
		-0.376429, 0.911672, 0.164788,
		0.918333, 0.343696, 0.196310,
		32.979519, 33.637863, 36.395840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398567, 33.885880, 35.786625>,  <32.336685, 33.397278, 36.258423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398567, 33.885880, 35.786625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774551, 33.842346, 35.916016>,  <33.000141, 33.816227, 35.993649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774551, 33.842346, 35.916016>,  <32.398567, 33.885880, 35.786625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774551, 33.842346, 35.916016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339417, 0.198819, -0.919384,
		0.035748, 0.973974, 0.223822,
		0.939957, -0.108835, 0.323476,
		33.056538, 33.809696, 36.013058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786015, 34.530365, 35.587158>,  <32.398567, 33.885880, 35.786625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786015, 34.530365, 35.587158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063728, 34.245419, 35.628143>,  <33.230358, 34.074451, 35.652733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063728, 34.245419, 35.628143>,  <32.786015, 34.530365, 35.587158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063728, 34.245419, 35.628143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476424, 0.348210, -0.807323,
		0.539435, 0.609327, 0.581146,
		0.694284, -0.712370, 0.102461,
		33.272015, 34.031708, 35.658882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351696, 34.885777, 35.552723>,  <32.786015, 34.530365, 35.587158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351696, 34.885777, 35.552723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456398, 34.512333, 35.454849>,  <33.519218, 34.288269, 35.396126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456398, 34.512333, 35.454849>,  <33.351696, 34.885777, 35.552723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456398, 34.512333, 35.454849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533659, 0.351242, -0.769309,
		0.804173, 0.070791, 0.590165,
		0.261751, -0.933605, -0.244681,
		33.534924, 34.232250, 35.381443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900593, 35.017097, 35.324310>,  <33.351696, 34.885777, 35.552723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900593, 35.017097, 35.324310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792194, 34.663021, 35.173046>,  <33.727158, 34.450577, 35.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792194, 34.663021, 35.173046>,  <33.900593, 35.017097, 35.324310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792194, 34.663021, 35.173046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445915, 0.232719, -0.864293,
		0.853067, -0.402842, 0.331655,
		-0.270991, -0.885189, -0.378158,
		33.710896, 34.397465, 35.059597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557064, 34.838463, 35.019108>,  <33.900593, 35.017097, 35.324310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557064, 34.838463, 35.019108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261551, 34.614285, 34.869389>,  <34.084244, 34.479778, 34.779556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261551, 34.614285, 34.869389>,  <34.557064, 34.838463, 35.019108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261551, 34.614285, 34.869389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359133, 0.142576, -0.922331,
		0.570283, -0.815826, 0.095942,
		-0.738783, -0.560446, -0.374299,
		34.039917, 34.446152, 34.757099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878021, 34.578739, 34.480343>,  <34.557064, 34.838463, 35.019108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878021, 34.578739, 34.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489838, 34.537865, 34.392929>,  <34.256927, 34.513340, 34.340481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489838, 34.537865, 34.392929>,  <34.878021, 34.578739, 34.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489838, 34.537865, 34.392929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170309, 0.351409, -0.920601,
		0.170867, -0.930629, -0.323627,
		-0.970464, -0.102183, -0.218538,
		34.198700, 34.507210, 34.327366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902966, 34.244221, 33.772858>,  <34.878021, 34.578739, 34.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902966, 34.244221, 33.772858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548531, 34.416924, 33.840309>,  <34.335869, 34.520546, 33.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548531, 34.416924, 33.840309>,  <34.902966, 34.244221, 33.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548531, 34.416924, 33.840309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150086, 0.611453, -0.776917,
		-0.438550, -0.663106, -0.606601,
		-0.886086, 0.431760, 0.168630,
		34.282703, 34.546452, 33.890900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657070, 34.300209, 33.176754>,  <34.902966, 34.244221, 33.772858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657070, 34.300209, 33.176754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432972, 34.558739, 33.383976>,  <34.298512, 34.713856, 33.508308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432972, 34.558739, 33.383976>,  <34.657070, 34.300209, 33.176754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432972, 34.558739, 33.383976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028410, 0.610066, -0.791841,
		-0.827840, -0.458343, -0.323424,
		-0.560244, 0.646329, 0.518059,
		34.264900, 34.752636, 33.539394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084110, 34.525448, 32.733524>,  <34.657070, 34.300209, 33.176754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084110, 34.525448, 32.733524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140522, 34.819214, 32.999081>,  <34.174370, 34.995472, 33.158413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140522, 34.819214, 32.999081>,  <34.084110, 34.525448, 32.733524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140522, 34.819214, 32.999081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105951, 0.655541, -0.747690,
		-0.984319, 0.175787, 0.014640,
		0.141031, 0.734415, 0.663886,
		34.182831, 35.039539, 33.198246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672058, 35.041885, 32.605850>,  <34.084110, 34.525448, 32.733524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672058, 35.041885, 32.605850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955727, 35.244663, 32.801842>,  <34.125927, 35.366329, 32.919437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955727, 35.244663, 32.801842>,  <33.672058, 35.041885, 32.605850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955727, 35.244663, 32.801842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061740, 0.736952, -0.673119,
		-0.702324, 0.447109, 0.553927,
		0.709176, 0.506947, 0.489975,
		34.168480, 35.396748, 32.948833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302731, 35.793514, 32.684650>,  <33.672058, 35.041885, 32.605850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302731, 35.793514, 32.684650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688332, 35.849842, 32.774864>,  <33.919693, 35.883640, 32.828991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688332, 35.849842, 32.774864>,  <33.302731, 35.793514, 32.684650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688332, 35.849842, 32.774864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024496, 0.891655, -0.452053,
		-0.264757, 0.430256, 0.863008,
		0.964004, 0.140824, 0.225532,
		33.977531, 35.892090, 32.842525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365669, 36.487976, 32.909153>,  <33.302731, 35.793514, 32.684650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365669, 36.487976, 32.909153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740009, 36.389553, 32.808250>,  <33.964615, 36.330498, 32.747711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740009, 36.389553, 32.808250>,  <33.365669, 36.487976, 32.909153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740009, 36.389553, 32.808250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112358, 0.886836, -0.448216,
		0.333997, 0.391122, 0.857595,
		0.935853, -0.246061, -0.252254,
		34.020767, 36.315735, 32.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702095, 37.201767, 33.050167>,  <33.365669, 36.487976, 32.909153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702095, 37.201767, 33.050167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910782, 36.945320, 32.825035>,  <34.035992, 36.791451, 32.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910782, 36.945320, 32.825035>,  <33.702095, 37.201767, 33.050167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910782, 36.945320, 32.825035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149061, 0.718088, -0.679801,
		0.839997, 0.270765, 0.470203,
		0.521714, -0.641120, -0.562832,
		34.067295, 36.752983, 32.656185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246464, 37.573723, 32.747787>,  <33.702095, 37.201767, 33.050167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246464, 37.573723, 32.747787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213272, 37.247574, 32.518608>,  <34.193356, 37.051884, 32.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213272, 37.247574, 32.518608>,  <34.246464, 37.573723, 32.747787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213272, 37.247574, 32.518608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064365, 0.569350, -0.819572,
		0.994470, -0.104890, 0.005235,
		-0.082984, -0.815377, -0.572953,
		34.188377, 37.002960, 32.346722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864227, 37.643444, 32.245594>,  <34.246464, 37.573723, 32.747787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864227, 37.643444, 32.245594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603600, 37.403442, 32.059921>,  <34.447224, 37.259441, 31.948519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603600, 37.403442, 32.059921>,  <34.864227, 37.643444, 32.245594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603600, 37.403442, 32.059921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095300, 0.542305, -0.834759,
		0.752583, -0.588136, -0.296167,
		-0.651565, -0.600001, -0.464179,
		34.408131, 37.223442, 31.920668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196438, 37.415039, 31.691322>,  <34.864227, 37.643444, 32.245594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196438, 37.415039, 31.691322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803669, 37.394485, 31.618452>,  <34.568008, 37.382153, 31.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803669, 37.394485, 31.618452>,  <35.196438, 37.415039, 31.691322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803669, 37.394485, 31.618452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133339, 0.495337, -0.858407,
		0.134342, -0.867180, -0.479532,
		-0.981923, -0.051380, -0.182173,
		34.509090, 37.379070, 31.563801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112915, 37.288628, 30.977255>,  <35.196438, 37.415039, 31.691322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112915, 37.288628, 30.977255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730103, 37.366627, 31.063112>,  <34.500416, 37.413425, 31.114626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730103, 37.366627, 31.063112>,  <35.112915, 37.288628, 30.977255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730103, 37.366627, 31.063112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096866, 0.482700, -0.870412,
		-0.273336, -0.853802, -0.443069,
		-0.957029, 0.194997, 0.214644,
		34.442993, 37.425125, 31.127504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749939, 37.125607, 30.451801>,  <35.112915, 37.288628, 30.977255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749939, 37.125607, 30.451801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516468, 37.387722, 30.643599>,  <34.376385, 37.544991, 30.758677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516468, 37.387722, 30.643599>,  <34.749939, 37.125607, 30.451801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516468, 37.387722, 30.643599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168468, 0.479943, -0.860972,
		-0.794315, -0.583312, -0.169738,
		-0.583680, 0.655288, 0.479495,
		34.341366, 37.584309, 30.787447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214390, 37.197132, 29.953867>,  <34.749939, 37.125607, 30.451801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214390, 37.197132, 29.953867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180023, 37.513195, 30.196609>,  <34.159405, 37.702831, 30.342255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180023, 37.513195, 30.196609>,  <34.214390, 37.197132, 29.953867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180023, 37.513195, 30.196609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135258, 0.594217, -0.792850,
		-0.987079, -0.150197, 0.055825,
		-0.085912, 0.790156, 0.606854,
		34.154251, 37.750240, 30.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617119, 37.542236, 29.755451>,  <34.214390, 37.197132, 29.953867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617119, 37.542236, 29.755451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872700, 37.803051, 29.918709>,  <34.026051, 37.959541, 30.016665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872700, 37.803051, 29.918709>,  <33.617119, 37.542236, 29.755451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872700, 37.803051, 29.918709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119225, 0.608110, -0.784849,
		-0.759949, 0.452821, 0.466294,
		0.638954, 0.652040, 0.408145,
		34.064384, 37.998661, 30.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400856, 38.248898, 29.399824>,  <33.617119, 37.542236, 29.755451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400856, 38.248898, 29.399824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747963, 38.344028, 29.574373>,  <33.956226, 38.401108, 29.679102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747963, 38.344028, 29.574373>,  <33.400856, 38.248898, 29.399824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747963, 38.344028, 29.574373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256345, 0.538030, -0.803002,
		-0.425760, 0.808678, 0.405917,
		0.867765, 0.237831, 0.436372,
		34.008293, 38.415379, 29.705284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443314, 38.917866, 29.413618>,  <33.400856, 38.248898, 29.399824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443314, 38.917866, 29.413618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814880, 38.770340, 29.400368>,  <34.037819, 38.681824, 29.392418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814880, 38.770340, 29.400368>,  <33.443314, 38.917866, 29.413618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814880, 38.770340, 29.400368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246854, 0.683442, -0.687001,
		0.276014, 0.629987, 0.725901,
		0.928913, -0.368813, -0.033125,
		34.093555, 38.659695, 29.390430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756180, 39.542641, 29.414362>,  <33.443314, 38.917866, 29.413618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756180, 39.542641, 29.414362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010181, 39.257252, 29.295893>,  <34.162582, 39.086018, 29.224812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010181, 39.257252, 29.295893>,  <33.756180, 39.542641, 29.414362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010181, 39.257252, 29.295893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359981, 0.612516, -0.703731,
		0.683506, 0.340257, 0.645790,
		0.635006, -0.713477, -0.296173,
		34.200684, 39.043209, 29.207041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307636, 39.885399, 29.237562>,  <33.756180, 39.542641, 29.414362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307636, 39.885399, 29.237562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405865, 39.540222, 29.060917>,  <34.464802, 39.333115, 28.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405865, 39.540222, 29.060917>,  <34.307636, 39.885399, 29.237562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405865, 39.540222, 29.060917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325085, 0.502495, -0.801136,
		0.913244, 0.053174, 0.403929,
		0.245571, -0.862944, -0.441614,
		34.479538, 39.281338, 28.928432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952602, 39.974957, 28.926468>,  <34.307636, 39.885399, 29.237562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952602, 39.974957, 28.926468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762714, 39.683758, 28.728613>,  <34.648781, 39.509041, 28.609900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762714, 39.683758, 28.728613>,  <34.952602, 39.974957, 28.926468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762714, 39.683758, 28.728613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213086, 0.450217, -0.867121,
		0.853954, -0.517039, -0.058601,
		-0.474718, -0.727994, -0.494639,
		34.620300, 39.465359, 28.580221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455631, 39.616642, 28.585411>,  <34.952602, 39.974957, 28.926468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455631, 39.616642, 28.585411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109051, 39.541470, 28.400394>,  <34.901104, 39.496365, 28.289385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109051, 39.541470, 28.400394>,  <35.455631, 39.616642, 28.585411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109051, 39.541470, 28.400394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316951, 0.508769, -0.800435,
		0.385752, -0.840141, -0.381259,
		-0.866451, -0.187929, -0.462542,
		34.849117, 39.485092, 28.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646793, 39.342869, 28.049606>,  <35.455631, 39.616642, 28.585411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646793, 39.342869, 28.049606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277214, 39.463013, 27.954866>,  <35.055466, 39.535099, 27.898024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277214, 39.463013, 27.954866>,  <35.646793, 39.342869, 28.049606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277214, 39.463013, 27.954866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363141, 0.494256, -0.789835,
		-0.120171, -0.815779, -0.565742,
		-0.923952, 0.300360, -0.236847,
		35.000027, 39.553120, 27.883812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655422, 39.240067, 27.363525>,  <35.646793, 39.342869, 28.049606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655422, 39.240067, 27.363525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361603, 39.500637, 27.439512>,  <35.185310, 39.656979, 27.485104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361603, 39.500637, 27.439512>,  <35.655422, 39.240067, 27.363525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361603, 39.500637, 27.439512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182595, 0.459388, -0.869265,
		-0.653529, -0.603828, -0.456389,
		-0.734546, 0.651424, 0.189968,
		35.141239, 39.696064, 27.496502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417553, 39.448620, 26.735109>,  <35.655422, 39.240067, 27.363525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417553, 39.448620, 26.735109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259640, 39.740932, 26.957859>,  <35.164890, 39.916321, 27.091509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259640, 39.740932, 26.957859>,  <35.417553, 39.448620, 26.735109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259640, 39.740932, 26.957859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110363, 0.639434, -0.760884,
		-0.912121, -0.238928, -0.333090,
		-0.394786, 0.730779, 0.556872,
		35.141205, 39.960167, 27.124920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903744, 39.824654, 26.344158>,  <35.417553, 39.448620, 26.735109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903744, 39.824654, 26.344158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036636, 40.069870, 26.630877>,  <35.116371, 40.216999, 26.802908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036636, 40.069870, 26.630877>,  <34.903744, 39.824654, 26.344158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036636, 40.069870, 26.630877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048797, 0.747776, -0.662156,
		-0.941935, 0.254965, 0.218518,
		0.332230, 0.613045, 0.716798,
		35.136307, 40.253784, 26.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778797, 40.385918, 26.012074>,  <34.903744, 39.824654, 26.344158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778797, 40.385918, 26.012074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034164, 40.494511, 26.300161>,  <35.187386, 40.559666, 26.473013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034164, 40.494511, 26.300161>,  <34.778797, 40.385918, 26.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034164, 40.494511, 26.300161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263769, 0.801895, -0.536088,
		-0.723080, 0.532221, 0.440337,
		0.638421, 0.271487, 0.720217,
		35.225689, 40.575958, 26.516226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735901, 41.107773, 26.024284>,  <34.778797, 40.385918, 26.012074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735901, 41.107773, 26.024284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069160, 41.018867, 26.226856>,  <35.269115, 40.965527, 26.348398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069160, 41.018867, 26.226856>,  <34.735901, 41.107773, 26.024284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069160, 41.018867, 26.226856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449324, 0.805910, -0.385508,
		-0.322452, 0.548734, 0.771307,
		0.833146, -0.222259, 0.506427,
		35.319103, 40.952190, 26.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011505, 41.707455, 26.234789>,  <34.735901, 41.107773, 26.024284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011505, 41.707455, 26.234789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341114, 41.483150, 26.267136>,  <35.538879, 41.348568, 26.286543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341114, 41.483150, 26.267136>,  <35.011505, 41.707455, 26.234789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341114, 41.483150, 26.267136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551870, 0.762133, -0.338517,
		0.128198, 0.323571, 0.937479,
		0.824018, -0.560764, 0.080865,
		35.588318, 41.314922, 26.291395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481213, 42.066971, 26.674206>,  <35.011505, 41.707455, 26.234789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481213, 42.066971, 26.674206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702431, 41.809772, 26.462282>,  <35.835163, 41.655453, 26.335127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702431, 41.809772, 26.462282>,  <35.481213, 42.066971, 26.674206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702431, 41.809772, 26.462282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597213, 0.749348, -0.286030,
		0.580929, -0.158223, 0.798428,
		0.553044, -0.642995, -0.529811,
		35.868343, 41.616875, 26.303339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226688, 42.181149, 26.822296>,  <35.481213, 42.066971, 26.674206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226688, 42.181149, 26.822296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235588, 41.999359, 26.466103>,  <36.240929, 41.890285, 26.252386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235588, 41.999359, 26.466103>,  <36.226688, 42.181149, 26.822296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235588, 41.999359, 26.466103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456054, 0.797247, -0.395490,
		0.889674, -0.397307, 0.225005,
		0.022254, -0.454472, -0.890483,
		36.242264, 41.863018, 26.198957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885204, 42.456402, 26.551552>,  <36.226688, 42.181149, 26.822296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885204, 42.456402, 26.551552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667892, 42.317932, 26.245607>,  <36.537506, 42.234848, 26.062042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667892, 42.317932, 26.245607>,  <36.885204, 42.456402, 26.551552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667892, 42.317932, 26.245607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333609, 0.747002, -0.575059,
		0.770425, -0.567580, -0.290340,
		-0.543277, -0.346180, -0.764859,
		36.504910, 42.214077, 26.016150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308681, 42.569908, 25.899042>,  <36.885204, 42.456402, 26.551552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308681, 42.569908, 25.899042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942432, 42.521648, 25.745642>,  <36.722683, 42.492691, 25.653601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942432, 42.521648, 25.745642>,  <37.308681, 42.569908, 25.899042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942432, 42.521648, 25.745642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184436, 0.721549, -0.667346,
		0.357232, -0.681770, -0.638416,
		-0.915625, -0.120651, -0.383503,
		36.667744, 42.485455, 25.630590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408905, 42.568993, 25.172787>,  <37.308681, 42.569908, 25.899042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408905, 42.568993, 25.172787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016357, 42.639194, 25.204048>,  <36.780827, 42.681316, 25.222805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016357, 42.639194, 25.204048>,  <37.408905, 42.568993, 25.172787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016357, 42.639194, 25.204048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067624, 0.696328, -0.714531,
		-0.179824, -0.695935, -0.695225,
		-0.981372, 0.175504, 0.078155,
		36.721947, 42.691845, 25.227495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214436, 42.624065, 24.573812>,  <37.408905, 42.568993, 25.172787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214436, 42.624065, 24.573812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936131, 42.806114, 24.796085>,  <36.769146, 42.915344, 24.929449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936131, 42.806114, 24.796085>,  <37.214436, 42.624065, 24.573812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936131, 42.806114, 24.796085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118851, 0.690024, -0.713962,
		-0.708370, -0.562791, -0.426002,
		-0.695763, 0.455118, 0.555681,
		36.727402, 42.942650, 24.962790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652752, 42.736534, 24.102493>,  <37.214436, 42.624065, 24.573812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652752, 42.736534, 24.102493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626167, 42.987793, 24.412594>,  <36.610214, 43.138550, 24.598654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626167, 42.987793, 24.412594>,  <36.652752, 42.736534, 24.102493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626167, 42.987793, 24.412594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098136, 0.769085, -0.631568,
		-0.992951, -0.118058, 0.010526,
		-0.066466, 0.628149, 0.775249,
		36.606228, 43.176239, 24.645168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138847, 43.107830, 23.908371>,  <36.652752, 42.736534, 24.102493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138847, 43.107830, 23.908371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308689, 43.322453, 24.200073>,  <36.410595, 43.451225, 24.375093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308689, 43.322453, 24.200073>,  <36.138847, 43.107830, 23.908371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308689, 43.322453, 24.200073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012650, 0.808907, -0.587800,
		-0.905289, 0.240360, 0.350256,
		0.424608, 0.536560, 0.729254,
		36.436073, 43.483421, 24.418850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752003, 43.747971, 23.920094>,  <36.138847, 43.107830, 23.908371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752003, 43.747971, 23.920094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119904, 43.777950, 24.074203>,  <36.340645, 43.795937, 24.166670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119904, 43.777950, 24.074203>,  <35.752003, 43.747971, 23.920094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119904, 43.777950, 24.074203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188253, 0.777089, -0.600578,
		-0.344408, 0.624913, 0.700620,
		0.919752, 0.074950, 0.385277,
		36.395828, 43.800434, 24.189787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812088, 44.435677, 24.161934>,  <35.752003, 43.747971, 23.920094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812088, 44.435677, 24.161934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166668, 44.272102, 24.075239>,  <36.379417, 44.173958, 24.023222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166668, 44.272102, 24.075239>,  <35.812088, 44.435677, 24.161934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166668, 44.272102, 24.075239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263813, 0.831228, -0.489349,
		0.380272, 0.376606, 0.844726,
		0.886451, -0.408935, -0.216739,
		36.432602, 44.149422, 24.010218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458786, 44.656593, 24.473059>,  <35.812088, 44.435677, 24.161934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458786, 44.656593, 24.473059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506481, 44.535198, 24.094921>,  <36.535099, 44.462360, 23.868038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506481, 44.535198, 24.094921>,  <36.458786, 44.656593, 24.473059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506481, 44.535198, 24.094921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262390, 0.927919, -0.264797,
		0.957566, -0.216475, 0.190276,
		0.119239, -0.303488, -0.945345,
		36.542252, 44.444153, 23.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181057, 44.824482, 24.166092>,  <36.458786, 44.656593, 24.473059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181057, 44.824482, 24.166092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877441, 44.800060, 23.906824>,  <36.695271, 44.785408, 23.751263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877441, 44.800060, 23.906824>,  <37.181057, 44.824482, 24.166092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877441, 44.800060, 23.906824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280676, 0.867628, -0.410418,
		0.587429, -0.493451, -0.641430,
		-0.759044, -0.061058, -0.648170,
		36.649727, 44.781742, 23.712374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554630, 44.825573, 23.507679>,  <37.181057, 44.824482, 24.166092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554630, 44.825573, 23.507679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174969, 44.942860, 23.461836>,  <36.947174, 45.013233, 23.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174969, 44.942860, 23.461836>,  <37.554630, 44.825573, 23.507679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174969, 44.942860, 23.461836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301798, 0.743817, -0.596368,
		-0.089618, -0.600632, -0.794487,
		-0.949150, 0.293220, -0.114610,
		36.890224, 45.030827, 23.427452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565540, 45.490116, 23.838764>,  <37.554630, 44.825573, 23.507679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565540, 45.490116, 23.838764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963383, 45.525433, 23.817013>,  <38.202087, 45.546623, 23.803963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963383, 45.525433, 23.817013>,  <37.565540, 45.490116, 23.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963383, 45.525433, 23.817013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059227, 0.914176, 0.400967,
		0.085110, -0.395585, 0.914477,
		0.994609, 0.088288, -0.054377,
		38.261765, 45.551918, 23.800699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833767, 45.784557, 24.495878>,  <37.565540, 45.490116, 23.838764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833767, 45.784557, 24.495878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063248, 45.912155, 24.194120>,  <38.200935, 45.988716, 24.013065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063248, 45.912155, 24.194120>,  <37.833767, 45.784557, 24.495878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063248, 45.912155, 24.194120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059203, 0.934783, 0.350252,
		0.816923, -0.156278, 0.555171,
		0.573700, 0.318997, -0.754393,
		38.235359, 46.007854, 23.967802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103607, 45.898006, 25.201862>,  <37.833767, 45.784557, 24.495878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103607, 45.898006, 25.201862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987923, 46.226753, 25.398186>,  <37.918510, 46.424000, 25.515980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987923, 46.226753, 25.398186>,  <38.103607, 45.898006, 25.201862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987923, 46.226753, 25.398186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240529, -0.558662, 0.793753,
		0.926554, 0.111508, 0.359254,
		-0.289211, 0.821866, 0.490809,
		37.901161, 46.473312, 25.545429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452942, 46.073997, 25.736540>,  <38.103607, 45.898006, 25.201862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452942, 46.073997, 25.736540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088127, 46.214531, 25.821163>,  <37.869240, 46.298851, 25.871937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088127, 46.214531, 25.821163>,  <38.452942, 46.073997, 25.736540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088127, 46.214531, 25.821163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033483, -0.577928, 0.815401,
		0.408742, 0.736591, 0.538854,
		-0.912036, 0.351331, 0.211560,
		37.814518, 46.319931, 25.884632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377930, 46.242268, 26.540852>,  <38.452942, 46.073997, 25.736540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377930, 46.242268, 26.540852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053493, 46.102726, 26.353054>,  <37.858829, 46.019001, 26.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053493, 46.102726, 26.353054>,  <38.377930, 46.242268, 26.540852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053493, 46.102726, 26.353054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092927, -0.715622, 0.692279,
		-0.577488, 0.605132, 0.548017,
		-0.811093, -0.348857, -0.469496,
		37.810165, 45.998070, 26.212206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713661, 46.205303, 27.002333>,  <38.377930, 46.242268, 26.540852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713661, 46.205303, 27.002333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645756, 45.932453, 26.717829>,  <37.605011, 45.768742, 26.547127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645756, 45.932453, 26.717829>,  <37.713661, 46.205303, 27.002333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645756, 45.932453, 26.717829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243691, -0.670263, 0.700972,
		-0.954880, 0.292326, -0.052442,
		-0.169763, -0.682124, -0.711258,
		37.594826, 45.727818, 26.504452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080540, 45.936218, 27.293587>,  <37.713661, 46.205303, 27.002333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080540, 45.936218, 27.293587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225319, 45.677288, 27.025270>,  <37.312187, 45.521931, 26.864281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225319, 45.677288, 27.025270>,  <37.080540, 45.936218, 27.293587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225319, 45.677288, 27.025270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269448, -0.761512, 0.589489,
		-0.892407, -0.032622, -0.450050,
		0.361949, -0.647329, -0.670789,
		37.333904, 45.483089, 26.824034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542675, 45.447018, 27.008617>,  <37.080540, 45.936218, 27.293587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542675, 45.447018, 27.008617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888454, 45.254345, 26.951056>,  <37.095924, 45.138741, 26.916519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888454, 45.254345, 26.951056>,  <36.542675, 45.447018, 27.008617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888454, 45.254345, 26.951056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406640, -0.838291, 0.363197,
		-0.295577, -0.255449, -0.920532,
		0.864452, -0.481678, -0.143903,
		37.147789, 45.109840, 26.907885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416027, 44.701550, 26.795162>,  <36.542675, 45.447018, 27.008617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416027, 44.701550, 26.795162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791126, 44.682522, 26.932775>,  <37.016186, 44.671104, 27.015345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791126, 44.682522, 26.932775>,  <36.416027, 44.701550, 26.795162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791126, 44.682522, 26.932775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212886, -0.861403, 0.461156,
		0.274414, -0.505689, -0.817909,
		0.937751, -0.047573, 0.344035,
		37.072453, 44.668251, 27.035986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512928, 44.019707, 26.768995>,  <36.416027, 44.701550, 26.795162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512928, 44.019707, 26.768995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807926, 44.133671, 27.013920>,  <36.984924, 44.202049, 27.160875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807926, 44.133671, 27.013920>,  <36.512928, 44.019707, 26.768995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807926, 44.133671, 27.013920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189817, -0.782662, 0.592799,
		0.648130, -0.553413, -0.523127,
		0.737494, 0.284912, 0.612313,
		37.029175, 44.219143, 27.197615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774506, 43.343563, 27.000992>,  <36.512928, 44.019707, 26.768995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774506, 43.343563, 27.000992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908512, 43.634747, 27.240274>,  <36.988914, 43.809456, 27.383844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908512, 43.634747, 27.240274>,  <36.774506, 43.343563, 27.000992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908512, 43.634747, 27.240274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020694, -0.629054, 0.777086,
		0.941986, -0.272713, -0.195677,
		0.335013, 0.727955, 0.598204,
		37.009014, 43.853134, 27.419735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366978, 43.060040, 27.404831>,  <36.774506, 43.343563, 27.000992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366978, 43.060040, 27.404831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171780, 43.359604, 27.584158>,  <37.054661, 43.539345, 27.691753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171780, 43.359604, 27.584158>,  <37.366978, 43.060040, 27.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171780, 43.359604, 27.584158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065731, -0.543700, 0.836702,
		0.870366, 0.378841, 0.314551,
		-0.487998, 0.748913, 0.448316,
		37.025379, 43.584278, 27.718653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694084, 43.130314, 28.112270>,  <37.366978, 43.060040, 27.404831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694084, 43.130314, 28.112270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347961, 43.326130, 28.155319>,  <37.140285, 43.443619, 28.181149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347961, 43.326130, 28.155319>,  <37.694084, 43.130314, 28.112270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347961, 43.326130, 28.155319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197086, -0.529725, 0.824954,
		0.460862, 0.692631, 0.554859,
		-0.865311, 0.489545, 0.107622,
		37.088367, 43.472992, 28.187605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647541, 43.245541, 28.770409>,  <37.694084, 43.130314, 28.112270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647541, 43.245541, 28.770409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278568, 43.244011, 28.615955>,  <37.057182, 43.243092, 28.523283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278568, 43.244011, 28.615955>,  <37.647541, 43.245541, 28.770409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278568, 43.244011, 28.615955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282191, -0.675906, 0.680822,
		-0.263596, 0.736978, 0.622400,
		-0.922434, -0.003826, -0.386135,
		37.001839, 43.242863, 28.500114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400879, 43.155712, 29.388073>,  <37.647541, 43.245541, 28.770409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400879, 43.155712, 29.388073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118870, 43.081139, 29.114374>,  <36.949665, 43.036396, 28.950155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118870, 43.081139, 29.114374>,  <37.400879, 43.155712, 29.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118870, 43.081139, 29.114374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415831, -0.672899, 0.611794,
		-0.574485, 0.715857, 0.396883,
		-0.705019, -0.186430, -0.684246,
		36.907364, 43.025211, 28.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847580, 43.110092, 29.772520>,  <37.400879, 43.155712, 29.388073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847580, 43.110092, 29.772520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764500, 42.901978, 29.441179>,  <36.714653, 42.777111, 29.242374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764500, 42.901978, 29.441179>,  <36.847580, 43.110092, 29.772520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764500, 42.901978, 29.441179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416732, -0.719064, 0.556131,
		-0.884984, 0.460707, -0.067471,
		-0.207698, -0.520284, -0.828351,
		36.702190, 42.745892, 29.192675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210869, 42.842655, 29.927963>,  <36.847580, 43.110092, 29.772520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210869, 42.842655, 29.927963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335190, 42.612701, 29.625200>,  <36.409782, 42.474731, 29.443542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335190, 42.612701, 29.625200>,  <36.210869, 42.842655, 29.927963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335190, 42.612701, 29.625200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401037, -0.801308, 0.443930,
		-0.861725, 0.165574, -0.479598,
		0.310803, -0.574882, -0.756909,
		36.428432, 42.440235, 29.398127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592888, 42.476761, 29.678164>,  <36.210869, 42.842655, 29.927963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592888, 42.476761, 29.678164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915627, 42.263840, 29.575678>,  <36.109272, 42.136086, 29.514187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915627, 42.263840, 29.575678>,  <35.592888, 42.476761, 29.678164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915627, 42.263840, 29.575678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362583, -0.788622, 0.496597,
		-0.466397, -0.307780, -0.829304,
		0.806850, -0.532303, -0.256215,
		36.157681, 42.104149, 29.498814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370277, 41.889366, 29.656864>,  <35.592888, 42.476761, 29.678164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370277, 41.889366, 29.656864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757122, 41.814495, 29.725758>,  <35.989227, 41.769573, 29.767094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757122, 41.814495, 29.725758>,  <35.370277, 41.889366, 29.656864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757122, 41.814495, 29.725758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251823, -0.799952, 0.544667,
		0.035832, -0.570125, -0.820776,
		0.967110, -0.187174, 0.172234,
		36.047256, 41.758343, 29.777428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476257, 41.180256, 29.471523>,  <35.370277, 41.889366, 29.656864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476257, 41.180256, 29.471523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745415, 41.323914, 29.730206>,  <35.906910, 41.410110, 29.885416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745415, 41.323914, 29.730206>,  <35.476257, 41.180256, 29.471523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745415, 41.323914, 29.730206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177199, -0.770526, 0.612282,
		0.718204, -0.526596, -0.454840,
		0.672891, 0.359146, 0.646708,
		35.947281, 41.431656, 29.924217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872570, 40.613045, 29.621374>,  <35.476257, 41.180256, 29.471523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872570, 40.613045, 29.621374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943092, 40.869614, 29.920036>,  <35.985405, 41.023556, 30.099234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943092, 40.869614, 29.920036>,  <35.872570, 40.613045, 29.621374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943092, 40.869614, 29.920036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176007, -0.725771, 0.665040,
		0.968471, -0.248670, -0.015065,
		0.176309, 0.641421, 0.746656,
		35.995987, 41.062038, 30.144033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353260, 40.300537, 30.084621>,  <35.872570, 40.613045, 29.621374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353260, 40.300537, 30.084621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199356, 40.575001, 30.331572>,  <36.107014, 40.739677, 30.479742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199356, 40.575001, 30.331572>,  <36.353260, 40.300537, 30.084621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199356, 40.575001, 30.331572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247420, -0.721058, 0.647194,
		0.889237, 0.096265, 0.447203,
		-0.384761, 0.686155, 0.617373,
		36.083927, 40.780846, 30.516783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629845, 40.215530, 30.713396>,  <36.353260, 40.300537, 30.084621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629845, 40.215530, 30.713396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305191, 40.426655, 30.813528>,  <36.110397, 40.553329, 30.873608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305191, 40.426655, 30.813528>,  <36.629845, 40.215530, 30.713396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305191, 40.426655, 30.813528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203134, -0.656792, 0.726196,
		0.547707, 0.538556, 0.640292,
		-0.811636, 0.527808, 0.250331,
		36.061699, 40.584999, 30.888628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689945, 40.387852, 31.465158>,  <36.629845, 40.215530, 30.713396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689945, 40.387852, 31.465158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301289, 40.419281, 31.375954>,  <36.068092, 40.438141, 31.322432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301289, 40.419281, 31.375954>,  <36.689945, 40.387852, 31.465158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301289, 40.419281, 31.375954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236067, -0.376025, 0.896034,
		-0.013452, 0.923272, 0.383911,
		-0.971644, 0.078576, -0.223012,
		36.009796, 40.442852, 31.309050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304314, 40.727150, 32.087727>,  <36.689945, 40.387852, 31.465158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304314, 40.727150, 32.087727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022236, 40.530449, 31.883417>,  <35.852989, 40.412430, 31.760832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022236, 40.530449, 31.883417>,  <36.304314, 40.727150, 32.087727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022236, 40.530449, 31.883417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469284, -0.216288, 0.856150,
		-0.531484, 0.843447, -0.078245,
		-0.705193, -0.491749, -0.510769,
		35.810677, 40.382923, 31.730186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672180, 40.975769, 32.405193>,  <36.304314, 40.727150, 32.087727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672180, 40.975769, 32.405193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594170, 40.635361, 32.210163>,  <35.547363, 40.431114, 32.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594170, 40.635361, 32.210163>,  <35.672180, 40.975769, 32.405193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594170, 40.635361, 32.210163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421562, -0.376120, 0.825118,
		-0.885578, 0.366464, -0.285404,
		-0.195030, -0.851022, -0.487571,
		35.535660, 40.380054, 32.063892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944401, 40.738388, 32.565296>,  <35.672180, 40.975769, 32.405193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944401, 40.738388, 32.565296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 40.415424, 32.429974>,  <35.253757, 40.221645, 32.348782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137749, 40.415424, 32.429974>,  <34.944401, 40.738388, 32.565296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137749, 40.415424, 32.429974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424528, -0.554163, 0.716016,
		-0.765591, -0.202480, -0.610632,
		0.483369, -0.807406, -0.338304,
		35.282761, 40.173203, 32.328484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491730, 40.270229, 32.721191>,  <34.944401, 40.738388, 32.565296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491730, 40.270229, 32.721191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800411, 40.026592, 32.647999>,  <34.985619, 39.880409, 32.604084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800411, 40.026592, 32.647999>,  <34.491730, 40.270229, 32.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800411, 40.026592, 32.647999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254771, -0.559687, 0.788570,
		-0.582732, -0.561916, -0.587089,
		0.771696, -0.609098, -0.182987,
		35.031921, 39.843864, 32.593105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255001, 39.653130, 32.896938>,  <34.491730, 40.270229, 32.721191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255001, 39.653130, 32.896938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642517, 39.554562, 32.886196>,  <34.875027, 39.495422, 32.879749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642517, 39.554562, 32.886196>,  <34.255001, 39.653130, 32.896938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642517, 39.554562, 32.886196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175471, -0.758304, 0.627842,
		-0.175076, -0.603535, -0.777877,
		0.968792, -0.246415, -0.026858,
		34.933155, 39.480637, 32.878139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390923, 38.926884, 32.771206>,  <34.255001, 39.653130, 32.896938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390923, 38.926884, 32.771206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688602, 39.085308, 32.986355>,  <34.867210, 39.180363, 33.115444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688602, 39.085308, 32.986355>,  <34.390923, 38.926884, 32.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688602, 39.085308, 32.986355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094691, -0.734557, 0.671907,
		0.661215, -0.550963, -0.509152,
		0.744197, 0.396063, 0.537871,
		34.911861, 39.204128, 33.147717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618729, 38.313698, 32.978989>,  <34.390923, 38.926884, 32.771206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618729, 38.313698, 32.978989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788795, 38.597649, 33.203598>,  <34.890835, 38.768021, 33.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788795, 38.597649, 33.203598>,  <34.618729, 38.313698, 32.978989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788795, 38.597649, 33.203598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191750, -0.535660, 0.822375,
		0.884568, -0.457322, -0.091628,
		0.425171, 0.709877, 0.561519,
		34.916348, 38.810612, 33.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072750, 38.003891, 33.421684>,  <34.618729, 38.313698, 32.978989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072750, 38.003891, 33.421684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020172, 38.353279, 33.609207>,  <34.988625, 38.562912, 33.721722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020172, 38.353279, 33.609207>,  <35.072750, 38.003891, 33.421684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020172, 38.353279, 33.609207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036580, -0.476857, 0.878219,
		0.990649, 0.098286, 0.094630,
		-0.131442, 0.873469, 0.468803,
		34.980740, 38.615318, 33.749847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529732, 37.930618, 34.005650>,  <35.072750, 38.003891, 33.421684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529732, 37.930618, 34.005650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305096, 38.239529, 34.124451>,  <35.170315, 38.424873, 34.195732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305096, 38.239529, 34.124451>,  <35.529732, 37.930618, 34.005650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305096, 38.239529, 34.124451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080013, -0.306582, 0.948475,
		0.823539, 0.556416, 0.110381,
		-0.561588, 0.772275, 0.297003,
		35.136620, 38.471210, 34.213551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868378, 38.262333, 34.611065>,  <35.529732, 37.930618, 34.005650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868378, 38.262333, 34.611065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484650, 38.375076, 34.617592>,  <35.254414, 38.442722, 34.621510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484650, 38.375076, 34.617592>,  <35.868378, 38.262333, 34.611065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484650, 38.375076, 34.617592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046307, -0.214091, 0.975715,
		0.278507, 0.935265, 0.218434,
		-0.959317, 0.281858, 0.016317,
		35.196854, 38.459633, 34.622486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811104, 38.587082, 35.318893>,  <35.868378, 38.262333, 34.611065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811104, 38.587082, 35.318893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443287, 38.504368, 35.185215>,  <35.222599, 38.454739, 35.105007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443287, 38.504368, 35.185215>,  <35.811104, 38.587082, 35.318893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443287, 38.504368, 35.185215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244903, -0.363558, 0.898804,
		-0.307358, 0.908331, 0.283664,
		-0.919540, -0.206785, -0.334195,
		35.167423, 38.442333, 35.084957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287472, 38.794193, 35.824032>,  <35.811104, 38.587082, 35.318893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287472, 38.794193, 35.824032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103775, 38.514503, 35.604877>,  <34.993557, 38.346687, 35.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103775, 38.514503, 35.604877>,  <35.287472, 38.794193, 35.824032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103775, 38.514503, 35.604877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328181, -0.439588, 0.836098,
		-0.825466, 0.563776, -0.027596,
		-0.459241, -0.699227, -0.547885,
		34.966003, 38.304737, 35.440514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626915, 38.620911, 36.166466>,  <35.287472, 38.794193, 35.824032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626915, 38.620911, 36.166466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695393, 38.307438, 35.927620>,  <34.736481, 38.119354, 35.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695393, 38.307438, 35.927620>,  <34.626915, 38.620911, 36.166466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695393, 38.307438, 35.927620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334272, -0.616311, 0.713038,
		-0.926797, 0.077528, -0.367473,
		0.171197, -0.783677, -0.597110,
		34.746750, 38.072334, 35.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185856, 38.108963, 36.413860>,  <34.626915, 38.620911, 36.166466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185856, 38.108963, 36.413860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433636, 37.888397, 36.190353>,  <34.582302, 37.756058, 36.056252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433636, 37.888397, 36.190353>,  <34.185856, 38.108963, 36.413860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433636, 37.888397, 36.190353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344047, -0.830464, 0.438133,
		-0.705629, -0.079160, -0.704146,
		0.619451, -0.551418, -0.558765,
		34.619473, 37.722973, 36.022724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762466, 37.467255, 36.073383>,  <34.185856, 38.108963, 36.413860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762466, 37.467255, 36.073383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149582, 37.369537, 36.097725>,  <34.381851, 37.310909, 36.112331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149582, 37.369537, 36.097725>,  <33.762466, 37.467255, 36.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149582, 37.369537, 36.097725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236970, -0.802315, 0.547846,
		-0.085006, -0.544622, -0.834363,
		0.967791, -0.244289, 0.060857,
		34.439919, 37.296249, 36.115982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780945, 36.733448, 35.959389>,  <33.762466, 37.467255, 36.073383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780945, 36.733448, 35.959389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143131, 36.777576, 36.123325>,  <34.360443, 36.804054, 36.221687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143131, 36.777576, 36.123325>,  <33.780945, 36.733448, 35.959389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143131, 36.777576, 36.123325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186709, -0.763638, 0.618059,
		0.381153, -0.636150, -0.670847,
		0.905463, 0.110322, 0.409837,
		34.414768, 36.810673, 36.246277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077244, 36.106155, 35.937969>,  <33.780945, 36.733448, 35.959389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077244, 36.106155, 35.937969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249886, 36.305744, 36.238567>,  <34.353470, 36.425499, 36.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249886, 36.305744, 36.238567>,  <34.077244, 36.106155, 35.937969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249886, 36.305744, 36.238567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105239, -0.799541, 0.591320,
		0.895905, -0.334301, -0.292571,
		0.431601, 0.498976, 0.751494,
		34.379368, 36.455437, 36.464016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511730, 35.603901, 36.208393>,  <34.077244, 36.106155, 35.937969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511730, 35.603901, 36.208393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504200, 35.886581, 36.491295>,  <34.499680, 36.056190, 36.661037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504200, 35.886581, 36.491295>,  <34.511730, 35.603901, 36.208393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504200, 35.886581, 36.491295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077523, -0.704222, 0.705734,
		0.996813, 0.068117, -0.041527,
		-0.018828, 0.706704, 0.707258,
		34.498550, 36.098591, 36.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079266, 35.368198, 36.528286>,  <34.511730, 35.603901, 36.208393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079266, 35.368198, 36.528286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862797, 35.597584, 36.774300>,  <34.732914, 35.735214, 36.921909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862797, 35.597584, 36.774300>,  <35.079266, 35.368198, 36.528286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862797, 35.597584, 36.774300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203023, -0.620658, 0.757341,
		0.816033, 0.534722, 0.219460,
		-0.541176, 0.573460, 0.615038,
		34.700443, 35.769623, 36.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437302, 35.287781, 37.133991>,  <35.079266, 35.368198, 36.528286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437302, 35.287781, 37.133991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065777, 35.397312, 37.233849>,  <34.842861, 35.463032, 37.293762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065777, 35.397312, 37.233849>,  <35.437302, 35.287781, 37.133991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065777, 35.397312, 37.233849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029738, -0.726637, 0.686378,
		0.369350, 0.630094, 0.683054,
		-0.928814, 0.273826, 0.249646,
		34.787132, 35.479462, 37.308743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210339, 35.355167, 36.934669>,  <35.437302, 35.287781, 37.133991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210339, 35.355167, 36.934669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527073, 35.300407, 37.172749>,  <36.717113, 35.267551, 37.315594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527073, 35.300407, 37.172749>,  <36.210339, 35.355167, 36.934669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527073, 35.300407, 37.172749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493563, 0.717439, -0.491606,
		-0.359715, 0.683037, 0.635662,
		0.791833, -0.136901, 0.595196,
		36.764622, 35.259338, 37.351307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399628, 35.966370, 37.159966>,  <36.210339, 35.355167, 36.934669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399628, 35.966370, 37.159966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705975, 35.710804, 37.131008>,  <36.889782, 35.557465, 37.113632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705975, 35.710804, 37.131008>,  <36.399628, 35.966370, 37.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705975, 35.710804, 37.131008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476583, 0.639615, -0.603126,
		0.431650, 0.427410, 0.794354,
		0.765863, -0.638915, -0.072393,
		36.935734, 35.519131, 37.109291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935978, 36.377956, 37.227818>,  <36.399628, 35.966370, 37.159966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935978, 36.377956, 37.227818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088669, 36.059345, 37.040276>,  <37.180283, 35.868179, 36.927750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088669, 36.059345, 37.040276>,  <36.935978, 36.377956, 37.227818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088669, 36.059345, 37.040276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490162, 0.604515, -0.627935,
		0.783598, 0.009886, 0.621189,
		0.381726, -0.796532, -0.468851,
		37.203186, 35.820385, 36.899620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739723, 36.442043, 37.280056>,  <36.935978, 36.377956, 37.227818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739723, 36.442043, 37.280056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632141, 36.196812, 36.982925>,  <37.567593, 36.049675, 36.804646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632141, 36.196812, 36.982925>,  <37.739723, 36.442043, 37.280056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632141, 36.196812, 36.982925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360403, 0.651157, -0.667910,
		0.893180, -0.447359, 0.045820,
		-0.268960, -0.613077, -0.742830,
		37.551453, 36.012890, 36.760075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414406, 36.239994, 36.826271>,  <37.739723, 36.442043, 37.280056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414406, 36.239994, 36.826271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079742, 36.196938, 36.611454>,  <37.878944, 36.171104, 36.482563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079742, 36.196938, 36.611454>,  <38.414406, 36.239994, 36.826271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079742, 36.196938, 36.611454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405148, 0.538207, -0.739046,
		0.368594, -0.835911, -0.406684,
		-0.836656, -0.107641, -0.537047,
		37.828747, 36.164646, 36.450340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666603, 36.148151, 36.180302>,  <38.414406, 36.239994, 36.826271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666603, 36.148151, 36.180302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279324, 36.228554, 36.120724>,  <38.046955, 36.276794, 36.084976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279324, 36.228554, 36.120724>,  <38.666603, 36.148151, 36.180302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279324, 36.228554, 36.120724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228838, 0.470931, -0.851972,
		-0.101111, -0.858964, -0.501954,
		-0.968199, 0.201009, -0.148947,
		37.988865, 36.288857, 36.076038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461849, 35.886459, 35.580505>,  <38.666603, 36.148151, 36.180302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461849, 35.886459, 35.580505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221180, 36.194950, 35.663643>,  <38.076778, 36.380043, 35.713528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221180, 36.194950, 35.663643>,  <38.461849, 35.886459, 35.580505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221180, 36.194950, 35.663643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127860, 0.349857, -0.928037,
		-0.788442, -0.531800, -0.309108,
		-0.601673, 0.771226, 0.207846,
		38.040676, 36.426319, 35.725998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246758, 36.066799, 34.954365>,  <38.461849, 35.886459, 35.580505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246758, 36.066799, 34.954365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100285, 36.378448, 35.157883>,  <38.012402, 36.565437, 35.279995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100285, 36.378448, 35.157883>,  <38.246758, 36.066799, 34.954365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100285, 36.378448, 35.157883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167350, 0.592999, -0.787620,
		-0.915371, -0.203266, -0.347533,
		-0.366183, 0.779124, 0.508798,
		37.990429, 36.612186, 35.310520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649498, 36.488010, 34.563766>,  <38.246758, 36.066799, 34.954365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649498, 36.488010, 34.563766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853813, 36.725197, 34.812759>,  <37.976402, 36.867508, 34.962154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853813, 36.725197, 34.812759>,  <37.649498, 36.488010, 34.563766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853813, 36.725197, 34.812759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124313, 0.665514, -0.735960,
		-0.850673, 0.453301, 0.266221,
		0.510785, 0.592967, 0.622486,
		38.007050, 36.903088, 34.999504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228996, 37.153439, 34.422146>,  <37.649498, 36.488010, 34.563766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228996, 37.153439, 34.422146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556091, 37.249447, 34.631409>,  <37.752350, 37.307053, 34.756966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556091, 37.249447, 34.631409>,  <37.228996, 37.153439, 34.422146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556091, 37.249447, 34.631409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005626, 0.912194, -0.409721,
		-0.575565, 0.332101, 0.747284,
		0.817737, 0.240025, 0.523158,
		37.801411, 37.321453, 34.788357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277195, 37.917835, 34.529736>,  <37.228996, 37.153439, 34.422146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277195, 37.917835, 34.529736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657288, 37.840736, 34.627632>,  <37.885345, 37.794476, 34.686371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657288, 37.840736, 34.627632>,  <37.277195, 37.917835, 34.529736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657288, 37.840736, 34.627632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294521, 0.811876, -0.504099,
		-0.101537, 0.551095, 0.828242,
		0.950236, -0.192750, 0.244744,
		37.942360, 37.782913, 34.701054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588970, 38.483486, 34.894463>,  <37.277195, 37.917835, 34.529736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588970, 38.483486, 34.894463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872097, 38.262547, 34.718323>,  <38.041973, 38.129982, 34.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872097, 38.262547, 34.718323>,  <37.588970, 38.483486, 34.894463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872097, 38.262547, 34.718323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359623, 0.818303, -0.448388,
		0.608005, 0.159017, 0.777845,
		0.707814, -0.552353, -0.440346,
		38.084442, 38.096840, 34.586220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247692, 38.967094, 34.951714>,  <37.588970, 38.483486, 34.894463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247692, 38.967094, 34.951714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272446, 38.693176, 34.661270>,  <38.287300, 38.528828, 34.487003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272446, 38.693176, 34.661270>,  <38.247692, 38.967094, 34.951714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272446, 38.693176, 34.661270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454467, 0.667041, -0.590353,
		0.888611, -0.293456, 0.352496,
		0.061886, -0.684792, -0.726106,
		38.291012, 38.487740, 34.443439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896214, 39.068096, 34.698669>,  <38.247692, 38.967094, 34.951714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896214, 39.068096, 34.698669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736984, 38.839211, 34.411865>,  <38.641445, 38.701881, 34.239780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736984, 38.839211, 34.411865>,  <38.896214, 39.068096, 34.698669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736984, 38.839211, 34.411865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456993, 0.554024, -0.695855,
		0.795420, -0.604674, 0.040952,
		-0.398077, -0.572212, -0.717013,
		38.617561, 38.667545, 34.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495201, 38.827522, 34.261539>,  <38.896214, 39.068096, 34.698669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495201, 38.827522, 34.261539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148743, 38.831635, 34.061665>,  <38.940868, 38.834103, 33.941742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148743, 38.831635, 34.061665>,  <39.495201, 38.827522, 34.261539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148743, 38.831635, 34.061665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436375, 0.502961, -0.746061,
		0.243654, -0.864248, -0.440123,
		-0.866147, 0.010278, -0.499685,
		38.888897, 38.834717, 33.911758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722515, 38.938316, 33.499035>,  <39.495201, 38.827522, 34.261539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722515, 38.938316, 33.499035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326923, 38.978043, 33.455116>,  <39.089569, 39.001881, 33.428764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326923, 38.978043, 33.455116>,  <39.722515, 38.938316, 33.499035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326923, 38.978043, 33.455116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137827, 0.346833, -0.927745,
		-0.054064, -0.932653, -0.356700,
		-0.988980, 0.099321, -0.109794,
		39.030228, 39.007839, 33.422176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524017, 38.751736, 32.819408>,  <39.722515, 38.938316, 33.499035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524017, 38.751736, 32.819408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204491, 38.963608, 32.933475>,  <39.012775, 39.090733, 33.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204491, 38.963608, 32.933475>,  <39.524017, 38.751736, 32.819408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204491, 38.963608, 32.933475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062784, 0.398043, -0.915216,
		-0.598285, -0.748996, -0.284709,
		-0.798820, 0.529684, 0.285169,
		38.964844, 39.122513, 33.019028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013458, 38.706360, 32.200108>,  <39.524017, 38.751736, 32.819408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013458, 38.706360, 32.200108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937790, 39.035393, 32.414612>,  <38.892387, 39.232811, 32.543316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937790, 39.035393, 32.414612>,  <39.013458, 38.706360, 32.200108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937790, 39.035393, 32.414612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138702, 0.518265, -0.843898,
		-0.972098, -0.234024, 0.016051,
		-0.189174, 0.822578, 0.536264,
		38.881039, 39.282166, 32.575493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537483, 38.999138, 31.798080>,  <39.013458, 38.706360, 32.200108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537483, 38.999138, 31.798080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647842, 39.283688, 32.056641>,  <38.714058, 39.454418, 32.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647842, 39.283688, 32.056641>,  <38.537483, 38.999138, 31.798080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647842, 39.283688, 32.056641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046016, 0.681505, -0.730366,
		-0.960085, 0.171761, 0.220759,
		0.275896, 0.711372, 0.646399,
		38.730610, 39.497101, 32.250561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052521, 39.514950, 31.711243>,  <38.537483, 38.999138, 31.798080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052521, 39.514950, 31.711243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359779, 39.703251, 31.884832>,  <38.544136, 39.816231, 31.988985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359779, 39.703251, 31.884832>,  <38.052521, 39.514950, 31.711243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359779, 39.703251, 31.884832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049903, 0.719755, -0.692432,
		-0.638321, 0.510235, 0.576373,
		0.768151, 0.470757, 0.433973,
		38.590225, 39.844479, 32.015022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862999, 40.136444, 32.007561>,  <38.052521, 39.514950, 31.711243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862999, 40.136444, 32.007561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245068, 40.137032, 31.889141>,  <38.474308, 40.137383, 31.818090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245068, 40.137032, 31.889141>,  <37.862999, 40.136444, 32.007561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245068, 40.137032, 31.889141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213649, 0.695646, -0.685879,
		0.204940, 0.718383, 0.664775,
		0.955172, 0.001464, -0.296047,
		38.531620, 40.137470, 31.800327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877392, 40.775318, 31.595570>,  <37.862999, 40.136444, 32.007561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877392, 40.775318, 31.595570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225582, 40.616776, 31.478830>,  <38.434494, 40.521648, 31.408787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225582, 40.616776, 31.478830>,  <37.877392, 40.775318, 31.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225582, 40.616776, 31.478830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012405, 0.575070, -0.818010,
		0.492059, 0.715676, 0.495666,
		0.870473, -0.396360, -0.291847,
		38.486725, 40.497868, 31.391275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376610, 41.365845, 31.367907>,  <37.877392, 40.775318, 31.595570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376610, 41.365845, 31.367907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488380, 41.021709, 31.197384>,  <38.555443, 40.815228, 31.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488380, 41.021709, 31.197384>,  <38.376610, 41.365845, 31.367907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488380, 41.021709, 31.197384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203998, 0.487049, -0.849216,
		0.938245, 0.150330, 0.311603,
		0.279429, -0.860339, -0.426305,
		38.572208, 40.763607, 31.069492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998795, 41.605488, 31.046646>,  <38.376610, 41.365845, 31.367907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998795, 41.605488, 31.046646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852119, 41.268711, 30.888313>,  <38.764114, 41.066647, 30.793314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852119, 41.268711, 30.888313>,  <38.998795, 41.605488, 31.046646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852119, 41.268711, 30.888313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075476, 0.397142, -0.914648,
		0.927279, -0.365262, -0.082080,
		-0.366684, -0.841939, -0.395830,
		38.742115, 41.016129, 30.769564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195065, 41.622364, 30.306543>,  <38.998795, 41.605488, 31.046646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195065, 41.622364, 30.306543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 41.300175, 30.301111>,  <38.815884, 41.106861, 30.297852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 41.300175, 30.301111>,  <39.195065, 41.622364, 30.306543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958076, 41.300175, 30.301111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134625, 0.115618, -0.984128,
		0.794261, -0.581242, -0.176937,
		-0.592474, -0.805475, -0.013581,
		38.780334, 41.058533, 30.297037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509491, 41.037525, 29.894913>,  <39.195065, 41.622364, 30.306543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509491, 41.037525, 29.894913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111408, 40.998402, 29.895338>,  <38.872559, 40.974926, 29.895594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111408, 40.998402, 29.895338>,  <39.509491, 41.037525, 29.894913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111408, 40.998402, 29.895338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005137, 0.041405, -0.999129,
		0.097687, -0.994343, -0.041709,
		-0.995204, -0.097816, 0.001063,
		38.812847, 40.969059, 29.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367153, 40.590664, 29.362888>,  <39.509491, 41.037525, 29.894913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367153, 40.590664, 29.362888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027660, 40.795254, 29.416611>,  <38.823963, 40.918007, 29.448845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027660, 40.795254, 29.416611>,  <39.367153, 40.590664, 29.362888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027660, 40.795254, 29.416611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114016, 0.071008, -0.990938,
		-0.516381, -0.856357, -0.001951,
		-0.848735, 0.511479, 0.134305,
		38.773041, 40.948696, 29.456902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968658, 40.276855, 28.837416>,  <39.367153, 40.590664, 29.362888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968658, 40.276855, 28.837416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830112, 40.638184, 28.938646>,  <38.746983, 40.854980, 28.999386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830112, 40.638184, 28.938646>,  <38.968658, 40.276855, 28.837416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830112, 40.638184, 28.938646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186627, 0.198033, -0.962265,
		-0.919348, -0.380527, 0.099991,
		-0.346367, 0.903317, 0.253078,
		38.726204, 40.909180, 29.014570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439465, 40.474056, 28.287251>,  <38.968658, 40.276855, 28.837416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439465, 40.474056, 28.287251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451244, 40.830929, 28.467541>,  <38.458313, 41.045052, 28.575714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451244, 40.830929, 28.467541>,  <38.439465, 40.474056, 28.287251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451244, 40.830929, 28.467541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204544, 0.446756, -0.870960,
		-0.978414, -0.066543, 0.195646,
		0.029450, 0.892178, 0.450723,
		38.460079, 41.098583, 28.602758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873444, 40.878307, 28.011534>,  <38.439465, 40.474056, 28.287251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873444, 40.878307, 28.011534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145897, 41.136234, 28.150249>,  <38.309368, 41.290993, 28.233479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145897, 41.136234, 28.150249>,  <37.873444, 40.878307, 28.011534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145897, 41.136234, 28.150249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136213, 0.576988, -0.805314,
		-0.719378, 0.501288, 0.480838,
		0.681132, 0.644822, 0.346791,
		38.350235, 41.329681, 28.254288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682743, 41.531006, 27.669323>,  <37.873444, 40.878307, 28.011534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682743, 41.531006, 27.669323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060265, 41.551449, 27.799938>,  <38.286777, 41.563717, 27.878307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060265, 41.551449, 27.799938>,  <37.682743, 41.531006, 27.669323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060265, 41.551449, 27.799938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201083, 0.695295, -0.690022,
		-0.262309, 0.716905, 0.645942,
		0.943801, 0.051111, 0.326540,
		38.343407, 41.566784, 27.897900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817459, 42.196632, 27.459337>,  <37.682743, 41.531006, 27.669323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817459, 42.196632, 27.459337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170010, 42.011200, 27.495714>,  <38.381538, 41.899940, 27.517540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170010, 42.011200, 27.495714>,  <37.817459, 42.196632, 27.459337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170010, 42.011200, 27.495714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330330, 0.467131, -0.820165,
		0.337734, 0.752912, 0.564853,
		0.881373, -0.463586, 0.090944,
		38.434422, 41.872124, 27.522997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269543, 42.663158, 27.236320>,  <37.817459, 42.196632, 27.459337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269543, 42.663158, 27.236320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 42.337067, 27.210262>,  <38.637836, 42.141411, 27.194628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 42.337067, 27.210262>,  <38.269543, 42.663158, 27.236320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499725, 42.337067, 27.210262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358121, 0.322803, -0.876098,
		0.735252, 0.480828, 0.477712,
		0.575460, -0.815231, -0.065147,
		38.672363, 42.092499, 27.190718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940697, 42.909298, 27.146338>,  <38.269543, 42.663158, 27.236320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940697, 42.909298, 27.146338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904934, 42.539371, 26.998430>,  <38.883476, 42.317417, 26.909687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904934, 42.539371, 26.998430>,  <38.940697, 42.909298, 27.146338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904934, 42.539371, 26.998430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394735, 0.307950, -0.865651,
		0.914435, -0.223355, 0.337523,
		-0.089407, -0.924813, -0.369766,
		38.878113, 42.261929, 26.887501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612934, 42.787369, 26.780277>,  <38.940697, 42.909298, 27.146338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612934, 42.787369, 26.780277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346176, 42.532898, 26.625086>,  <39.186119, 42.380215, 26.531971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346176, 42.532898, 26.625086>,  <39.612934, 42.787369, 26.780277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346176, 42.532898, 26.625086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323844, 0.221477, -0.919822,
		0.671099, -0.739070, 0.058320,
		-0.666897, -0.636178, -0.387976,
		39.146107, 42.342045, 26.508694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959980, 42.364799, 26.303446>,  <39.612934, 42.787369, 26.780277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959980, 42.364799, 26.303446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578876, 42.302547, 26.199116>,  <39.350216, 42.265194, 26.136518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578876, 42.302547, 26.199116>,  <39.959980, 42.364799, 26.303446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578876, 42.302547, 26.199116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258562, 0.034974, -0.965361,
		0.159365, -0.987196, 0.006919,
		-0.952758, -0.155634, -0.260825,
		39.293049, 42.255859, 26.120869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018032, 41.871048, 25.690729>,  <39.959980, 42.364799, 26.303446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018032, 41.871048, 25.690729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645237, 42.015991, 25.694765>,  <39.421562, 42.102959, 25.697187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645237, 42.015991, 25.694765>,  <40.018032, 41.871048, 25.690729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645237, 42.015991, 25.694765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080529, 0.234101, -0.968872,
		-0.353441, -0.902160, -0.247358,
		-0.931984, 0.362359, 0.010091,
		39.365643, 42.124699, 25.697792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734222, 41.859951, 25.907532>,  <40.018032, 41.871048, 25.690729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734222, 41.859951, 25.907532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932320, 41.883091, 25.560802>,  <41.051178, 41.896973, 25.352764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932320, 41.883091, 25.560802>,  <40.734222, 41.859951, 25.907532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932320, 41.883091, 25.560802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387798, -0.907575, 0.160996,
		-0.777396, -0.415886, -0.471905,
		0.495246, 0.057846, -0.866825,
		41.080894, 41.900444, 25.300755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786144, 41.125992, 25.706404>,  <40.734222, 41.859951, 25.907532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786144, 41.125992, 25.706404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041969, 41.348686, 25.494366>,  <41.195465, 41.482304, 25.367142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041969, 41.348686, 25.494366>,  <40.786144, 41.125992, 25.706404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041969, 41.348686, 25.494366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681530, -0.729648, 0.055952,
		-0.355633, -0.397061, -0.846090,
		0.639564, 0.556737, -0.530096,
		41.233837, 41.515709, 25.335337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980721, 40.677044, 25.100082>,  <40.786144, 41.125992, 25.706404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980721, 40.677044, 25.100082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252079, 40.957054, 25.189304>,  <41.414894, 41.125061, 25.242838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252079, 40.957054, 25.189304>,  <40.980721, 40.677044, 25.100082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252079, 40.957054, 25.189304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685303, -0.712356, 0.151356,
		0.264847, 0.050181, -0.962984,
		0.678392, 0.700022, 0.223054,
		41.455597, 41.167061, 25.256220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650768, 40.412922, 24.920876>,  <40.980721, 40.677044, 25.100082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650768, 40.412922, 24.920876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698601, 40.683304, 25.211748>,  <41.727303, 40.845531, 25.386271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698601, 40.683304, 25.211748>,  <41.650768, 40.412922, 24.920876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698601, 40.683304, 25.211748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829919, -0.470059, 0.300463,
		0.544916, 0.567569, -0.617197,
		0.119585, 0.675951, 0.727179,
		41.734478, 40.886089, 25.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295322, 40.337425, 25.086845>,  <41.650768, 40.412922, 24.920876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295322, 40.337425, 25.086845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173054, 40.538330, 25.410400>,  <42.099693, 40.658871, 25.604534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173054, 40.538330, 25.410400>,  <42.295322, 40.337425, 25.086845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173054, 40.538330, 25.410400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604696, -0.553818, 0.572389,
		0.735464, 0.664095, -0.134428,
		-0.305672, 0.502259, 0.808889,
		42.081352, 40.689007, 25.653067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928940, 40.270584, 25.497776>,  <42.295322, 40.337425, 25.086845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928940, 40.270584, 25.497776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628052, 40.366138, 25.743412>,  <42.447521, 40.423470, 25.890793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628052, 40.366138, 25.743412>,  <42.928940, 40.270584, 25.497776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628052, 40.366138, 25.743412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385972, -0.595597, 0.704478,
		0.534037, 0.766941, 0.355817,
		-0.752217, 0.238882, 0.614089,
		42.402386, 40.437801, 25.927639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247784, 40.347000, 26.117664>,  <42.928940, 40.270584, 25.497776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247784, 40.347000, 26.117664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863697, 40.309551, 26.222908>,  <42.633247, 40.287083, 26.286055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863697, 40.309551, 26.222908>,  <43.247784, 40.347000, 26.117664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863697, 40.309551, 26.222908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273226, -0.509874, 0.815706,
		0.057789, 0.855140, 0.515166,
		-0.960213, -0.093618, 0.263111,
		42.575634, 40.281467, 26.301842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170723, 40.526283, 26.785477>,  <43.247784, 40.347000, 26.117664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170723, 40.526283, 26.785477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833141, 40.313370, 26.758881>,  <42.630592, 40.185623, 26.742922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833141, 40.313370, 26.758881>,  <43.170723, 40.526283, 26.785477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833141, 40.313370, 26.758881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220049, -0.456579, 0.862040,
		-0.489207, 0.712889, 0.502459,
		-0.843952, -0.532282, -0.066491,
		42.579956, 40.153687, 26.738934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869362, 40.533772, 27.491899>,  <43.170723, 40.526283, 26.785477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869362, 40.533772, 27.491899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684841, 40.229916, 27.308535>,  <42.574127, 40.047600, 27.198515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684841, 40.229916, 27.308535>,  <42.869362, 40.533772, 27.491899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684841, 40.229916, 27.308535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033548, -0.501368, 0.864584,
		-0.886607, 0.414216, 0.205800,
		-0.461306, -0.759641, -0.458412,
		42.546448, 40.002022, 27.171011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350174, 40.458088, 27.883652>,  <42.869362, 40.533772, 27.491899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350174, 40.458088, 27.883652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396473, 40.109501, 27.693010>,  <42.424252, 39.900349, 27.578625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396473, 40.109501, 27.693010>,  <42.350174, 40.458088, 27.883652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396473, 40.109501, 27.693010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079780, -0.486436, 0.870066,
		-0.990070, -0.062683, -0.125829,
		0.115746, -0.871465, -0.476604,
		42.431198, 39.848061, 27.550030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787388, 40.112099, 28.076075>,  <42.350174, 40.458088, 27.883652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787388, 40.112099, 28.076075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044323, 39.837978, 27.938807>,  <42.198483, 39.673508, 27.856445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044323, 39.837978, 27.938807>,  <41.787388, 40.112099, 28.076075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044323, 39.837978, 27.938807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102920, -0.520825, 0.847436,
		-0.759481, -0.509020, -0.405076,
		0.642336, -0.685302, -0.343168,
		42.237022, 39.632389, 27.835855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445290, 39.506329, 28.099264>,  <41.787388, 40.112099, 28.076075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445290, 39.506329, 28.099264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835815, 39.420048, 28.105873>,  <42.070133, 39.368279, 28.109838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835815, 39.420048, 28.105873>,  <41.445290, 39.506329, 28.099264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835815, 39.420048, 28.105873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134205, -0.544001, 0.828282,
		-0.169676, -0.810885, -0.560067,
		0.976319, -0.215703, 0.016521,
		42.128712, 39.355335, 28.110828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470924, 38.707531, 28.088408>,  <41.445290, 39.506329, 28.099264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470924, 38.707531, 28.088408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832104, 38.823643, 28.215162>,  <42.048813, 38.893311, 28.291216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832104, 38.823643, 28.215162>,  <41.470924, 38.707531, 28.088408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832104, 38.823643, 28.215162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088086, -0.596717, 0.797602,
		0.420615, -0.748110, -0.513239,
		0.902953, 0.290275, 0.316886,
		42.102989, 38.910725, 28.310228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832180, 38.092438, 28.321802>,  <41.470924, 38.707531, 28.088408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832180, 38.092438, 28.321802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037418, 38.373608, 28.518829>,  <42.160561, 38.542309, 28.637047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037418, 38.373608, 28.518829>,  <41.832180, 38.092438, 28.321802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037418, 38.373608, 28.518829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020054, -0.563895, 0.825603,
		0.858096, -0.433493, -0.275237,
		0.513098, 0.702927, 0.492570,
		42.191349, 38.584484, 28.666601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296631, 37.709904, 28.704222>,  <41.832180, 38.092438, 28.321802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296631, 37.709904, 28.704222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242592, 38.072594, 28.864025>,  <42.210171, 38.290207, 28.959908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242592, 38.072594, 28.864025>,  <42.296631, 37.709904, 28.704222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242592, 38.072594, 28.864025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052312, -0.409169, 0.910958,
		0.989451, 0.102165, 0.102709,
		-0.135094, 0.906721, 0.399508,
		42.202065, 38.344608, 28.983877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627716, 37.598480, 29.395388>,  <42.296631, 37.709904, 28.704222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627716, 37.598480, 29.395388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406300, 37.929001, 29.436993>,  <42.273449, 38.127312, 29.461956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406300, 37.929001, 29.436993>,  <42.627716, 37.598480, 29.395388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406300, 37.929001, 29.436993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226418, -0.269498, 0.936005,
		0.801451, 0.494571, 0.336268,
		-0.553545, 0.826299, 0.104010,
		42.240234, 38.176891, 29.468195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887920, 37.942078, 29.939308>,  <42.627716, 37.598480, 29.395388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887920, 37.942078, 29.939308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512489, 38.074585, 29.900642>,  <42.287231, 38.154087, 29.877443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512489, 38.074585, 29.900642>,  <42.887920, 37.942078, 29.939308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512489, 38.074585, 29.900642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157045, -0.160604, 0.974445,
		0.307273, 0.929769, 0.202762,
		-0.938573, 0.331264, -0.096666,
		42.230919, 38.173965, 29.871643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747410, 38.332775, 30.519657>,  <42.887920, 37.942078, 29.939308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747410, 38.332775, 30.519657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387897, 38.218533, 30.386614>,  <42.172192, 38.149986, 30.306787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387897, 38.218533, 30.386614>,  <42.747410, 38.332775, 30.519657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387897, 38.218533, 30.386614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339843, -0.025399, 0.940139,
		-0.276958, 0.958010, -0.074234,
		-0.898777, -0.285607, -0.332608,
		42.118263, 38.132851, 30.286831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418262, 38.583855, 30.951481>,  <42.747410, 38.332775, 30.519657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418262, 38.583855, 30.951481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157890, 38.314117, 30.812023>,  <42.001667, 38.152275, 30.728350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.157890, 38.314117, 30.812023>,  <42.418262, 38.583855, 30.951481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157890, 38.314117, 30.812023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359504, -0.130670, 0.923949,
		-0.668618, 0.726763, -0.157373,
		-0.650928, -0.674345, -0.348643,
		41.962612, 38.111813, 30.707430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718204, 38.814465, 31.319090>,  <42.418262, 38.583855, 30.951481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718204, 38.814465, 31.319090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668270, 38.444008, 31.176725>,  <41.638309, 38.221733, 31.091307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668270, 38.444008, 31.176725>,  <41.718204, 38.814465, 31.319090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668270, 38.444008, 31.176725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660924, -0.189923, 0.726023,
		-0.739998, 0.325863, -0.588402,
		-0.124833, -0.926144, -0.355913,
		41.630821, 38.166164, 31.069952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993462, 38.699924, 31.208084>,  <41.718204, 38.814465, 31.319090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993462, 38.699924, 31.208084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153255, 38.335403, 31.247965>,  <41.249130, 38.116692, 31.271893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153255, 38.335403, 31.247965>,  <40.993462, 38.699924, 31.208084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153255, 38.335403, 31.247965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676347, -0.219566, 0.703097,
		-0.618842, -0.348311, -0.704069,
		0.399486, -0.911301, 0.099703,
		41.273102, 38.062012, 31.277876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355938, 38.255791, 31.328161>,  <40.993462, 38.699924, 31.208084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355938, 38.255791, 31.328161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667419, 38.030998, 31.439730>,  <40.854309, 37.896122, 31.506670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667419, 38.030998, 31.439730>,  <40.355938, 38.255791, 31.328161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667419, 38.030998, 31.439730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586089, -0.492958, 0.643033,
		-0.223877, -0.664204, -0.713240,
		0.778703, -0.561983, 0.278921,
		40.901031, 37.862404, 31.523405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044708, 37.585663, 31.482155>,  <40.355938, 38.255791, 31.328161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044708, 37.585663, 31.482155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408070, 37.560032, 31.647415>,  <40.626087, 37.544655, 31.746572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408070, 37.560032, 31.647415>,  <40.044708, 37.585663, 31.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408070, 37.560032, 31.647415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403828, -0.390372, 0.827365,
		0.108272, -0.918425, -0.380490,
		0.908405, -0.064072, 0.413152,
		40.680592, 37.540810, 31.771360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039913, 36.919540, 31.747561>,  <40.044708, 37.585663, 31.482155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039913, 36.919540, 31.747561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316883, 37.124115, 31.951120>,  <40.483067, 37.246861, 32.073257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316883, 37.124115, 31.951120>,  <40.039913, 36.919540, 31.747561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316883, 37.124115, 31.951120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331040, -0.401505, 0.853936,
		0.641063, -0.759751, -0.108704,
		0.692424, 0.511441, 0.508898,
		40.524609, 37.277546, 32.103790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502815, 36.440063, 32.106380>,  <40.039913, 36.919540, 31.747561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502815, 36.440063, 32.106380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522793, 36.789410, 32.300182>,  <40.534779, 36.999016, 32.416462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522793, 36.789410, 32.300182>,  <40.502815, 36.440063, 32.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522793, 36.789410, 32.300182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243008, -0.459901, 0.854071,
		0.968738, -0.160392, 0.189266,
		0.049943, 0.873364, 0.484500,
		40.537777, 37.051418, 32.445534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855095, 36.294247, 32.771008>,  <40.502815, 36.440063, 32.106380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855095, 36.294247, 32.771008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661255, 36.637062, 32.841034>,  <40.544952, 36.842751, 32.883049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661255, 36.637062, 32.841034>,  <40.855095, 36.294247, 32.771008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661255, 36.637062, 32.841034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062840, -0.233724, 0.970270,
		0.872475, 0.459192, 0.167119,
		-0.484600, 0.857039, 0.175063,
		40.515873, 36.894173, 32.893555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128994, 36.578846, 33.391659>,  <40.855095, 36.294247, 32.771008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128994, 36.578846, 33.391659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772171, 36.757339, 33.363056>,  <40.558079, 36.864437, 33.345894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772171, 36.757339, 33.363056>,  <41.128994, 36.578846, 33.391659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772171, 36.757339, 33.363056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181912, -0.209713, 0.960692,
		0.413699, 0.869997, 0.268251,
		-0.892054, 0.446236, -0.071504,
		40.504555, 36.891209, 33.341606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196152, 36.959248, 33.934578>,  <41.128994, 36.578846, 33.391659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196152, 36.959248, 33.934578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800613, 36.966675, 33.875477>,  <40.563290, 36.971130, 33.840015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800613, 36.966675, 33.875477>,  <41.196152, 36.959248, 33.934578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800613, 36.966675, 33.875477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147473, -0.259908, 0.954306,
		-0.020686, 0.965455, 0.259748,
		-0.988850, 0.018565, -0.147755,
		40.503960, 36.972244, 33.831150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913727, 37.350971, 34.396553>,  <41.196152, 36.959248, 33.934578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913727, 37.350971, 34.396553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577290, 37.153259, 34.308697>,  <40.375427, 37.034630, 34.255981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577290, 37.153259, 34.308697>,  <40.913727, 37.350971, 34.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577290, 37.153259, 34.308697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099883, -0.257153, 0.961195,
		-0.531583, 0.830396, 0.166921,
		-0.841096, -0.494282, -0.219641,
		40.324959, 37.004974, 34.242805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494625, 37.489784, 34.995182>,  <40.913727, 37.350971, 34.396553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494625, 37.489784, 34.995182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342651, 37.157173, 34.833092>,  <40.251469, 36.957607, 34.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342651, 37.157173, 34.833092>,  <40.494625, 37.489784, 34.995182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342651, 37.157173, 34.833092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002653, -0.439051, 0.898458,
		-0.925009, 0.340281, 0.169018,
		-0.379936, -0.831531, -0.405223,
		40.228672, 36.907715, 34.711525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866943, 37.376102, 35.378822>,  <40.494625, 37.489784, 34.995182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866943, 37.376102, 35.378822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973404, 37.025967, 35.217361>,  <40.037281, 36.815884, 35.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973404, 37.025967, 35.217361>,  <39.866943, 37.376102, 35.378822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973404, 37.025967, 35.217361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102202, -0.390772, 0.914796,
		-0.958498, -0.284728, -0.014542,
		0.266151, -0.875344, -0.403654,
		40.053249, 36.763363, 35.096264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418743, 36.866741, 35.601585>,  <39.866943, 37.376102, 35.378822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418743, 36.866741, 35.601585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760624, 36.688614, 35.494873>,  <39.965752, 36.581738, 35.430847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760624, 36.688614, 35.494873>,  <39.418743, 36.866741, 35.601585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760624, 36.688614, 35.494873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070686, -0.409288, 0.909663,
		-0.514285, -0.796348, -0.318340,
		0.854702, -0.445324, -0.266781,
		40.017036, 36.555016, 35.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289528, 36.167702, 35.780148>,  <39.418743, 36.866741, 35.601585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289528, 36.167702, 35.780148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685169, 36.226433, 35.775715>,  <39.922554, 36.261673, 35.773056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685169, 36.226433, 35.775715>,  <39.289528, 36.167702, 35.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685169, 36.226433, 35.775715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077643, -0.456147, 0.886511,
		0.125110, -0.877708, -0.462575,
		0.989100, 0.146827, -0.011079,
		39.981899, 36.270481, 35.772392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506191, 35.498360, 35.868847>,  <39.289528, 36.167702, 35.780148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506191, 35.498360, 35.868847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831341, 35.716503, 35.950653>,  <40.026428, 35.847389, 35.999737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831341, 35.716503, 35.950653>,  <39.506191, 35.498360, 35.868847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831341, 35.716503, 35.950653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107490, -0.485572, 0.867563,
		0.572438, -0.683234, -0.453328,
		0.812872, 0.545354, 0.204520,
		40.075203, 35.880108, 36.012009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037510, 35.029560, 36.164001>,  <39.506191, 35.498360, 35.868847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037510, 35.029560, 36.164001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214561, 35.372849, 36.267948>,  <40.320793, 35.578823, 36.330315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214561, 35.372849, 36.267948>,  <40.037510, 35.029560, 36.164001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214561, 35.372849, 36.267948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469308, -0.468662, 0.748403,
		0.764085, -0.209310, -0.610215,
		0.442633, 0.858222, 0.259867,
		40.347351, 35.630314, 36.345909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690071, 34.763935, 36.406185>,  <40.037510, 35.029560, 36.164001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690071, 34.763935, 36.406185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605766, 35.131638, 36.539177>,  <40.555183, 35.352261, 36.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605766, 35.131638, 36.539177>,  <40.690071, 34.763935, 36.406185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605766, 35.131638, 36.539177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314972, -0.258122, 0.913327,
		0.925403, 0.297219, -0.235137,
		-0.210764, 0.919257, 0.332483,
		40.542538, 35.407413, 36.638924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232094, 34.992573, 36.743382>,  <40.690071, 34.763935, 36.406185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232094, 34.992573, 36.743382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929302, 35.201443, 36.900513>,  <40.747627, 35.326767, 36.994789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929302, 35.201443, 36.900513>,  <41.232094, 34.992573, 36.743382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929302, 35.201443, 36.900513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170810, -0.422135, 0.890296,
		0.630716, 0.741036, 0.230355,
		-0.756982, 0.522177, 0.392824,
		40.702209, 35.358097, 37.018360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465496, 35.321186, 37.401539>,  <41.232094, 34.992573, 36.743382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465496, 35.321186, 37.401539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066048, 35.315861, 37.421829>,  <40.826378, 35.312668, 37.434006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066048, 35.315861, 37.421829>,  <41.465496, 35.321186, 37.401539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066048, 35.315861, 37.421829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051555, -0.426534, 0.903001,
		0.009619, 0.904373, 0.426633,
		-0.998624, -0.013309, 0.050728,
		40.766460, 35.311867, 37.437046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295208, 35.363483, 38.067322>,  <41.465496, 35.321186, 37.401539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295208, 35.363483, 38.067322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964394, 35.207100, 37.905750>,  <40.765903, 35.113270, 37.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964394, 35.207100, 37.905750>,  <41.295208, 35.363483, 38.067322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964394, 35.207100, 37.905750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125633, -0.571822, 0.810701,
		-0.547926, 0.721228, 0.423801,
		-0.827039, -0.390960, -0.403926,
		40.716282, 35.089813, 37.784573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911591, 35.195400, 38.731655>,  <41.295208, 35.363483, 38.067322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911591, 35.195400, 38.731655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715618, 35.001553, 38.441795>,  <40.598034, 34.885242, 38.267879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715618, 35.001553, 38.441795>,  <40.911591, 35.195400, 38.731655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715618, 35.001553, 38.441795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313310, -0.677819, 0.665130,
		-0.813517, 0.552904, 0.180245,
		-0.489926, -0.484622, -0.724647,
		40.568642, 34.856167, 38.224400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232101, 34.938114, 38.972523>,  <40.911591, 35.195400, 38.731655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232101, 34.938114, 38.972523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366894, 34.706017, 38.675938>,  <40.447769, 34.566757, 38.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366894, 34.706017, 38.675938>,  <40.232101, 34.938114, 38.972523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366894, 34.706017, 38.675938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066157, -0.800168, 0.596116,
		-0.939185, -0.151825, -0.308026,
		0.336978, -0.580242, -0.741462,
		40.467987, 34.531944, 38.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833649, 34.308670, 38.784286>,  <40.232101, 34.938114, 38.972523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833649, 34.308670, 38.784286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199409, 34.198158, 38.665932>,  <40.418865, 34.131851, 38.594921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199409, 34.198158, 38.665932>,  <39.833649, 34.308670, 38.784286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199409, 34.198158, 38.665932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102863, -0.865486, 0.490259,
		-0.391531, -0.417856, -0.819817,
		0.914397, -0.276281, -0.295882,
		40.473728, 34.115273, 38.577168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709064, 33.650848, 38.456169>,  <39.833649, 34.308670, 38.784286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709064, 33.650848, 38.456169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087582, 33.701805, 38.575027>,  <40.314693, 33.732380, 38.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087582, 33.701805, 38.575027>,  <39.709064, 33.650848, 38.456169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087582, 33.701805, 38.575027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020807, -0.893195, 0.449187,
		0.322636, -0.431246, -0.842575,
		0.946294, 0.127393, 0.297150,
		40.371471, 33.740025, 38.664173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124229, 32.987633, 38.418652>,  <39.709064, 33.650848, 38.456169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124229, 32.987633, 38.418652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347618, 33.206516, 38.668026>,  <40.481651, 33.337845, 38.817650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347618, 33.206516, 38.668026>,  <40.124229, 32.987633, 38.418652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347618, 33.206516, 38.668026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125125, -0.687391, 0.715428,
		0.820035, -0.477551, -0.315416,
		0.558468, 0.547210, 0.623438,
		40.515160, 33.370678, 38.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532066, 32.432636, 38.683590>,  <40.124229, 32.987633, 38.418652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532066, 32.432636, 38.683590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635117, 32.745781, 38.910130>,  <40.696945, 32.933666, 39.046055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635117, 32.745781, 38.910130>,  <40.532066, 32.432636, 38.683590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635117, 32.745781, 38.910130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066270, -0.599073, 0.797947,
		0.963970, -0.168038, -0.206216,
		0.257624, 0.782863, 0.566353,
		40.712402, 32.980640, 39.080036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146103, 32.267773, 39.088558>,  <40.532066, 32.432636, 38.683590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146103, 32.267773, 39.088558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963551, 32.550861, 39.304276>,  <40.854019, 32.720715, 39.433708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963551, 32.550861, 39.304276>,  <41.146103, 32.267773, 39.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963551, 32.550861, 39.304276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214241, -0.500863, 0.838592,
		0.863605, 0.498260, 0.076962,
		-0.456384, 0.707724, 0.539295,
		40.826633, 32.763180, 39.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471790, 32.200100, 39.688194>,  <41.146103, 32.267773, 39.088558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471790, 32.200100, 39.688194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164013, 32.438393, 39.780327>,  <40.979347, 32.581367, 39.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164013, 32.438393, 39.780327>,  <41.471790, 32.200100, 39.688194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164013, 32.438393, 39.780327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066043, -0.284486, 0.956403,
		0.635288, 0.751112, 0.179553,
		-0.769446, 0.595733, 0.230336,
		40.933178, 32.617111, 39.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744385, 32.743416, 40.041920>,  <41.471790, 32.200100, 39.688194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744385, 32.743416, 40.041920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364555, 32.674404, 40.146648>,  <41.136658, 32.632999, 40.209484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364555, 32.674404, 40.146648>,  <41.744385, 32.743416, 40.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364555, 32.674404, 40.146648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297598, -0.232910, 0.925845,
		-0.098752, 0.957072, 0.272508,
		-0.949570, -0.172527, 0.261822,
		41.079685, 32.622646, 40.225197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737785, 33.033161, 40.633255>,  <41.744385, 32.743416, 40.041920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737785, 33.033161, 40.633255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403450, 32.813980, 40.646603>,  <41.202847, 32.682472, 40.654610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403450, 32.813980, 40.646603>,  <41.737785, 33.033161, 40.633255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403450, 32.813980, 40.646603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092944, -0.081344, 0.992343,
		-0.541047, 0.832542, 0.118920,
		-0.835841, -0.547957, 0.033369,
		41.152699, 32.649593, 40.656612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382545, 33.316982, 41.148617>,  <41.737785, 33.033161, 40.633255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382545, 33.316982, 41.148617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254707, 32.939888, 41.110428>,  <41.178005, 32.713631, 41.087517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254707, 32.939888, 41.110428>,  <41.382545, 33.316982, 41.148617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254707, 32.939888, 41.110428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000885, -0.100456, 0.994941,
		-0.947553, 0.318066, 0.031272,
		-0.319599, -0.942731, -0.095469,
		41.158829, 32.657070, 41.081787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884838, 33.288250, 41.593719>,  <41.382545, 33.316982, 41.148617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884838, 33.288250, 41.593719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954441, 32.896832, 41.549587>,  <40.996204, 32.661980, 41.523106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954441, 32.896832, 41.549587>,  <40.884838, 33.288250, 41.593719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954441, 32.896832, 41.549587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176048, -0.141151, 0.974209,
		-0.968880, -0.150094, -0.196832,
		0.174006, -0.978544, -0.110335,
		41.006641, 32.603268, 41.516487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273109, 33.521362, 41.621513>,  <40.884838, 33.288250, 41.593719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273109, 33.521362, 41.621513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187943, 33.712391, 41.280552>,  <40.136841, 33.827007, 41.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187943, 33.712391, 41.280552>,  <40.273109, 33.521362, 41.621513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187943, 33.712391, 41.280552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952383, -0.093435, -0.290236,
		-0.218251, -0.873613, -0.434933,
		-0.212916, 0.477567, -0.852406,
		40.124069, 33.855659, 41.024830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219944, 32.853653, 41.785019>,  <40.273109, 33.521362, 41.621513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219944, 32.853653, 41.785019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511189, 32.579578, 41.792728>,  <40.685936, 32.415134, 41.797356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511189, 32.579578, 41.792728>,  <40.219944, 32.853653, 41.785019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511189, 32.579578, 41.792728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414360, -0.417574, 0.808664,
		-0.546036, -0.596787, -0.587955,
		0.728114, -0.685185, 0.019274,
		40.729622, 32.374023, 41.798512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859123, 32.181671, 41.867718>,  <40.219944, 32.853653, 41.785019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859123, 32.181671, 41.867718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232727, 32.148094, 42.006615>,  <40.456890, 32.127949, 42.089954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232727, 32.148094, 42.006615>,  <39.859123, 32.181671, 41.867718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232727, 32.148094, 42.006615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331756, -0.564380, 0.755919,
		0.132528, -0.821236, -0.554984,
		0.934009, -0.083939, 0.347246,
		40.512932, 32.122913, 42.110790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785366, 31.526989, 42.243786>,  <39.859123, 32.181671, 41.867718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785366, 31.526989, 42.243786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117542, 31.691566, 42.394032>,  <40.316849, 31.790314, 42.484177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117542, 31.691566, 42.394032>,  <39.785366, 31.526989, 42.243786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117542, 31.691566, 42.394032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238140, -0.347354, 0.906992,
		0.503648, -0.842650, -0.190475,
		0.830439, 0.411445, 0.375612,
		40.366673, 31.815001, 42.506714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144421, 31.021053, 42.764141>,  <39.785366, 31.526989, 42.243786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144421, 31.021053, 42.764141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245522, 31.403461, 42.823662>,  <40.306183, 31.632906, 42.859375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245522, 31.403461, 42.823662>,  <40.144421, 31.021053, 42.764141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245522, 31.403461, 42.823662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153658, -0.112177, 0.981736,
		0.955251, -0.271002, 0.118547,
		0.252754, 0.956020, 0.148799,
		40.321346, 31.690268, 42.868301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679077, 31.024487, 43.234871>,  <40.144421, 31.021053, 42.764141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679077, 31.024487, 43.234871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529579, 31.394445, 43.262802>,  <40.439880, 31.616421, 43.279560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529579, 31.394445, 43.262802>,  <40.679077, 31.024487, 43.234871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529579, 31.394445, 43.262802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028727, -0.086786, 0.995813,
		0.927086, 0.370177, 0.059006,
		-0.373747, 0.924899, 0.069824,
		40.417454, 31.671915, 43.283749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057346, 31.404732, 43.701164>,  <40.679077, 31.024487, 43.234871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057346, 31.404732, 43.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690914, 31.561749, 43.668400>,  <40.471054, 31.655958, 43.648743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690914, 31.561749, 43.668400>,  <41.057346, 31.404732, 43.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690914, 31.561749, 43.668400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042380, 0.108341, 0.993210,
		0.398750, 0.913331, -0.082613,
		-0.916080, 0.392541, -0.081908,
		40.416092, 31.679510, 43.643829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105904, 32.040802, 44.121864>,  <41.057346, 31.404732, 43.701164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105904, 32.040802, 44.121864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715912, 31.959545, 44.085743>,  <40.481918, 31.910789, 44.064068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715912, 31.959545, 44.085743>,  <41.105904, 32.040802, 44.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715912, 31.959545, 44.085743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122709, 0.153020, 0.980575,
		-0.185381, 0.967118, -0.174118,
		-0.974975, -0.203146, -0.090307,
		40.423420, 31.898602, 44.058651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777237, 32.616463, 44.286663>,  <41.105904, 32.040802, 44.121864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777237, 32.616463, 44.286663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519264, 32.318863, 44.356560>,  <40.364483, 32.140305, 44.398499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519264, 32.318863, 44.356560>,  <40.777237, 32.616463, 44.286663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519264, 32.318863, 44.356560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076660, 0.290472, 0.953808,
		-0.760387, 0.601743, -0.244369,
		-0.644930, -0.743997, 0.174742,
		40.325787, 32.095665, 44.408981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188244, 32.789719, 44.637478>,  <40.777237, 32.616463, 44.286663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188244, 32.789719, 44.637478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265892, 32.409069, 44.732754>,  <40.312481, 32.180679, 44.789921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265892, 32.409069, 44.732754>,  <40.188244, 32.789719, 44.637478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265892, 32.409069, 44.732754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312337, 0.290128, 0.904583,
		-0.929927, -0.101201, 0.353546,
		0.194119, -0.951622, 0.238189,
		40.324127, 32.123581, 44.804211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652184, 32.671593, 45.208851>,  <40.188244, 32.789719, 44.637478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652184, 32.671593, 45.208851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715744, 33.046043, 45.334335>,  <39.753880, 33.270714, 45.409626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715744, 33.046043, 45.334335>,  <39.652184, 32.671593, 45.208851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715744, 33.046043, 45.334335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437661, -0.351610, 0.827541,
		0.884989, 0.005806, -0.465576,
		0.158897, 0.936129, 0.313712,
		39.763412, 33.326881, 45.428448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359295, 32.974754, 45.395580>,  <39.652184, 32.671593, 45.208851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359295, 32.974754, 45.395580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660873, 32.840961, 45.621746>,  <40.841820, 32.760685, 45.757446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660873, 32.840961, 45.621746>,  <40.359295, 32.974754, 45.395580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660873, 32.840961, 45.621746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645183, -0.214891, 0.733185,
		-0.123735, -0.917575, -0.377817,
		0.753942, -0.334481, 0.565414,
		40.887054, 32.740616, 45.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100361, 32.433220, 45.866802>,  <40.359295, 32.974754, 45.395580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100361, 32.433220, 45.866802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089424, 32.073105, 46.040577>,  <40.082863, 31.857037, 46.144844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089424, 32.073105, 46.040577>,  <40.100361, 32.433220, 45.866802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089424, 32.073105, 46.040577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070440, -0.431788, -0.899220,
		0.997141, -0.055188, -0.051610,
		-0.027342, -0.900285, 0.434441,
		40.081223, 31.803019, 46.170910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640511, 31.937428, 45.763905>,  <40.100361, 32.433220, 45.866802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640511, 31.937428, 45.763905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276917, 31.773453, 45.794102>,  <40.058762, 31.675068, 45.812222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276917, 31.773453, 45.794102>,  <40.640511, 31.937428, 45.763905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276917, 31.773453, 45.794102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061662, -0.046883, -0.996995,
		0.412245, -0.910908, 0.017339,
		-0.908984, -0.409937, 0.075496,
		40.004223, 31.650473, 45.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616455, 31.376638, 45.322536>,  <40.640511, 31.937428, 45.763905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616455, 31.376638, 45.322536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271671, 31.578154, 45.299850>,  <40.064800, 31.699062, 45.286240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271671, 31.578154, 45.299850>,  <40.616455, 31.376638, 45.322536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271671, 31.578154, 45.299850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061456, -0.214880, -0.974705,
		-0.503233, -0.836674, 0.216179,
		-0.861963, 0.503789, -0.056716,
		40.013081, 31.729290, 45.282837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070717, 30.927097, 45.061901>,  <40.616455, 31.376638, 45.322536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070717, 30.927097, 45.061901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045834, 31.316488, 44.973835>,  <40.030903, 31.550123, 44.920994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045834, 31.316488, 44.973835>,  <40.070717, 30.927097, 45.061901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045834, 31.316488, 44.973835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073673, -0.224471, -0.971692,
		-0.995341, -0.044223, 0.085682,
		-0.062205, 0.973477, -0.220167,
		40.027172, 31.608532, 44.907784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542381, 31.057985, 44.590134>,  <40.070717, 30.927097, 45.061901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542381, 31.057985, 44.590134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796104, 31.363171, 44.540272>,  <39.948338, 31.546282, 44.510357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796104, 31.363171, 44.540272>,  <39.542381, 31.057985, 44.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796104, 31.363171, 44.540272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003869, -0.164373, -0.986390,
		-0.773068, 0.625196, -0.107215,
		0.634311, 0.762962, -0.124653,
		39.986397, 31.592060, 44.502876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116154, 31.617020, 44.049328>,  <39.542381, 31.057985, 44.590134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116154, 31.617020, 44.049328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508541, 31.690887, 44.025326>,  <39.743973, 31.735209, 44.010925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508541, 31.690887, 44.025326>,  <39.116154, 31.617020, 44.049328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508541, 31.690887, 44.025326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080711, 0.106705, -0.991009,
		-0.176608, 0.976990, 0.119579,
		0.980967, 0.184672, -0.060009,
		39.802830, 31.746288, 44.007324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195751, 32.200592, 43.602715>,  <39.116154, 31.617020, 44.049328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195751, 32.200592, 43.602715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564217, 32.045033, 43.608604>,  <39.785297, 31.951696, 43.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564217, 32.045033, 43.608604>,  <39.195751, 32.200592, 43.602715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564217, 32.045033, 43.608604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135866, 0.285907, -0.948577,
		0.364689, 0.875795, 0.316205,
		0.921164, -0.388897, 0.014724,
		39.840565, 31.928364, 43.613022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494030, 32.674271, 43.203342>,  <39.195751, 32.200592, 43.602715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494030, 32.674271, 43.203342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731342, 32.352299, 43.207420>,  <39.873730, 32.159115, 43.209869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731342, 32.352299, 43.207420>,  <39.494030, 32.674271, 43.203342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731342, 32.352299, 43.207420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009758, -0.019857, -0.999755,
		0.804933, 0.593040, -0.019636,
		0.593285, -0.804928, 0.010197,
		39.909328, 32.110821, 43.210480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203148, 32.747246, 42.987038>,  <39.494030, 32.674271, 43.203342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203148, 32.747246, 42.987038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013966, 32.406830, 42.895786>,  <39.900455, 32.202579, 42.841034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013966, 32.406830, 42.895786>,  <40.203148, 32.747246, 42.987038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013966, 32.406830, 42.895786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063831, 0.225144, -0.972232,
		0.878771, -0.474385, -0.052160,
		-0.472955, -0.851040, -0.228131,
		39.872078, 32.151516, 42.827347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803467, 32.554138, 43.440639>,  <40.203148, 32.747246, 42.987038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803467, 32.554138, 43.440639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787113, 32.205372, 43.245464>,  <40.777302, 31.996111, 43.128357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787113, 32.205372, 43.245464>,  <40.803467, 32.554138, 43.440639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787113, 32.205372, 43.245464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097170, 0.482566, -0.870453,
		0.994428, -0.083002, 0.064995,
		-0.040885, -0.871918, -0.487942,
		40.774849, 31.943796, 43.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418488, 32.340908, 43.061001>,  <40.803467, 32.554138, 43.440639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418488, 32.340908, 43.061001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139885, 32.121304, 42.876190>,  <40.972725, 31.989540, 42.765305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139885, 32.121304, 42.876190>,  <41.418488, 32.340908, 43.061001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139885, 32.121304, 42.876190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318857, 0.340019, -0.884713,
		0.642815, -0.763527, -0.061768,
		-0.696505, -0.549011, -0.462025,
		40.930935, 31.956600, 42.737583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745728, 31.933048, 42.495190>,  <41.418488, 32.340908, 43.061001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745728, 31.933048, 42.495190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365990, 31.994375, 42.385471>,  <41.138145, 32.031170, 42.319641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365990, 31.994375, 42.385471>,  <41.745728, 31.933048, 42.495190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365990, 31.994375, 42.385471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311962, 0.355074, -0.881250,
		-0.037716, -0.922180, -0.384917,
		-0.949346, 0.153317, -0.274293,
		41.081184, 32.040371, 42.303185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757172, 31.700117, 41.861546>,  <41.745728, 31.933048, 42.495190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757172, 31.700117, 41.861546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409096, 31.897095, 41.855000>,  <41.200249, 32.015282, 41.851074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409096, 31.897095, 41.855000>,  <41.757172, 31.700117, 41.861546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409096, 31.897095, 41.855000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104562, 0.152115, -0.982816,
		-0.481492, -0.856949, -0.183860,
		-0.870191, 0.492443, -0.016362,
		41.148037, 32.044827, 41.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302536, 31.356064, 41.356022>,  <41.757172, 31.700117, 41.861546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302536, 31.356064, 41.356022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207031, 31.742546, 41.394875>,  <41.149727, 31.974436, 41.418186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207031, 31.742546, 41.394875>,  <41.302536, 31.356064, 41.356022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207031, 31.742546, 41.394875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050437, 0.087555, -0.994882,
		-0.969767, -0.242440, 0.027827,
		-0.238763, 0.966208, 0.097136,
		41.135403, 32.032410, 41.424015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580452, 31.525927, 40.983658>,  <41.302536, 31.356064, 41.356022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580452, 31.525927, 40.983658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778389, 31.872404, 41.011478>,  <40.897152, 32.080292, 41.028172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778389, 31.872404, 41.011478>,  <40.580452, 31.525927, 40.983658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778389, 31.872404, 41.011478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299145, 0.244946, -0.922233,
		-0.815868, 0.435557, 0.380328,
		0.494845, 0.866193, 0.069549,
		40.926842, 32.132263, 41.032345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344215, 32.055813, 41.318195>,  <40.580452, 31.525927, 40.983658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344215, 32.055813, 41.318195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361458, 31.716738, 41.529690>,  <40.371803, 31.513292, 41.656586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361458, 31.716738, 41.529690>,  <40.344215, 32.055813, 41.318195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361458, 31.716738, 41.529690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954401, -0.121539, -0.272666,
		0.295398, 0.516382, 0.803797,
		0.043107, -0.847690, 0.528738,
		40.374390, 31.462431, 41.688313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025196, 31.926800, 40.705299>,  <40.344215, 32.055813, 41.318195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025196, 31.926800, 40.705299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351261, 32.158138, 40.692432>,  <40.546898, 32.296940, 40.684711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351261, 32.158138, 40.692432>,  <40.025196, 31.926800, 40.705299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351261, 32.158138, 40.692432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332082, 0.421120, -0.844026,
		-0.474593, 0.698695, 0.535337,
		0.815158, 0.578345, -0.032163,
		40.595810, 32.331642, 40.682785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772148, 32.606464, 40.560669>,  <40.025196, 31.926800, 40.705299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772148, 32.606464, 40.560669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159176, 32.591351, 40.460770>,  <40.391392, 32.582283, 40.400829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159176, 32.591351, 40.460770>,  <39.772148, 32.606464, 40.560669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159176, 32.591351, 40.460770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186559, 0.559674, -0.807441,
		0.170287, 0.827851, 0.534477,
		0.967573, -0.037785, -0.249748,
		40.449448, 32.580013, 40.385845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740726, 33.135738, 40.169216>,  <39.772148, 32.606464, 40.560669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740726, 33.135738, 40.169216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113724, 33.003792, 40.110382>,  <40.337524, 32.924622, 40.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113724, 33.003792, 40.110382>,  <39.740726, 33.135738, 40.169216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113724, 33.003792, 40.110382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081124, 0.588129, -0.804688,
		0.351949, 0.738437, 0.575189,
		0.932497, -0.329871, -0.147087,
		40.393475, 32.904831, 40.066257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258984, 33.757366, 40.144848>,  <39.740726, 33.135738, 40.169216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258984, 33.757366, 40.144848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444904, 33.467060, 39.941978>,  <40.556458, 33.292877, 39.820259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444904, 33.467060, 39.941978>,  <40.258984, 33.757366, 40.144848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444904, 33.467060, 39.941978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195907, 0.642910, -0.740463,
		0.863467, 0.244814, 0.441011,
		0.464806, -0.725763, -0.507171,
		40.584347, 33.249332, 39.789825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937447, 34.017376, 39.909161>,  <40.258984, 33.757366, 40.144848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937447, 34.017376, 39.909161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814365, 33.722832, 39.668133>,  <40.740517, 33.546104, 39.523518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814365, 33.722832, 39.668133>,  <40.937447, 34.017376, 39.909161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814365, 33.722832, 39.668133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306728, 0.522718, -0.795414,
		0.900688, -0.429572, 0.065024,
		-0.307699, -0.736365, -0.602568,
		40.722057, 33.501923, 39.487362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439594, 33.946201, 39.464222>,  <40.937447, 34.017376, 39.909161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439594, 33.946201, 39.464222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144764, 33.755733, 39.272396>,  <40.967865, 33.641453, 39.157299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144764, 33.755733, 39.272396>,  <41.439594, 33.946201, 39.464222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144764, 33.755733, 39.272396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103665, 0.621556, -0.776480,
		0.667816, -0.622037, -0.408769,
		-0.737072, -0.476171, -0.479569,
		40.923641, 33.612881, 39.128525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704559, 33.916538, 38.716362>,  <41.439594, 33.946201, 39.464222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704559, 33.916538, 38.716362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308949, 33.857578, 38.712296>,  <41.071583, 33.822201, 38.709854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308949, 33.857578, 38.712296>,  <41.704559, 33.916538, 38.716362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308949, 33.857578, 38.712296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086816, 0.635437, -0.767257,
		0.119559, -0.757953, -0.641259,
		-0.989024, -0.147404, -0.010170,
		41.012241, 33.813358, 38.709244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469177, 33.758575, 37.920944>,  <41.704559, 33.916538, 38.716362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469177, 33.758575, 37.920944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157352, 33.886349, 38.136440>,  <40.970257, 33.963013, 38.265739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157352, 33.886349, 38.136440>,  <41.469177, 33.758575, 37.920944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157352, 33.886349, 38.136440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240489, 0.641565, -0.728395,
		-0.578313, -0.697392, -0.423319,
		-0.779563, 0.319436, 0.538740,
		40.923485, 33.982178, 38.298061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189655, 33.789703, 38.038036>,  <41.469177, 33.758575, 37.920944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189655, 33.789703, 38.038036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095352, 33.830814, 37.651493>,  <42.038769, 33.855480, 37.419567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095352, 33.830814, 37.651493>,  <42.189655, 33.789703, 38.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095352, 33.830814, 37.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971383, -0.004605, -0.237474,
		-0.028856, -0.994694, -0.098746,
		-0.235760, 0.102773, -0.966362,
		42.024624, 33.861645, 37.361584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537628, 33.164219, 37.557739>,  <42.189655, 33.789703, 38.038036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537628, 33.164219, 37.557739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467312, 33.493237, 37.341396>,  <42.425121, 33.690647, 37.211590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467312, 33.493237, 37.341396>,  <42.537628, 33.164219, 37.557739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467312, 33.493237, 37.341396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971055, 0.054636, -0.232524,
		-0.161711, -0.566077, -0.808336,
		-0.175790, 0.822540, -0.540856,
		42.414574, 33.739998, 37.179138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865696, 33.051407, 36.947762>,  <42.537628, 33.164219, 37.557739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865696, 33.051407, 36.947762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832645, 33.448029, 36.987755>,  <42.812813, 33.686001, 37.011749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832645, 33.448029, 36.987755>,  <42.865696, 33.051407, 36.947762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832645, 33.448029, 36.987755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911060, 0.115817, -0.395671,
		-0.403908, 0.058395, -0.912934,
		-0.082628, 0.991553, 0.099981,
		42.807858, 33.745495, 37.017750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031918, 33.399014, 36.212017>,  <42.865696, 33.051407, 36.947762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031918, 33.399014, 36.212017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138412, 33.600342, 36.540840>,  <43.202309, 33.721138, 36.738136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138412, 33.600342, 36.540840>,  <43.031918, 33.399014, 36.212017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138412, 33.600342, 36.540840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952246, -0.005086, -0.305288,
		-0.149478, 0.864083, -0.480642,
		0.266239, 0.503324, 0.822060,
		43.218285, 33.751339, 36.787457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769012, 33.556015, 36.542511>,  <43.031918, 33.399014, 36.212017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769012, 33.556015, 36.542511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692505, 33.867710, 36.303780>,  <43.646599, 34.054726, 36.160542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692505, 33.867710, 36.303780>,  <43.769012, 33.556015, 36.542511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692505, 33.867710, 36.303780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726928, 0.296117, 0.619589,
		0.659538, 0.552361, 0.509811,
		-0.191273, 0.779238, -0.596827,
		43.635124, 34.101482, 36.124733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080093, 34.076370, 36.737186>,  <43.769012, 33.556015, 36.542511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080093, 34.076370, 36.737186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723831, 34.121098, 36.560898>,  <43.510075, 34.147934, 36.455124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723831, 34.121098, 36.560898>,  <44.080093, 34.076370, 36.737186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723831, 34.121098, 36.560898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390438, 0.308643, 0.867351,
		0.233007, 0.944583, -0.231237,
		-0.890655, 0.111815, -0.440717,
		43.456635, 34.154644, 36.428684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749405, 34.005226, 36.983791>,  <44.080093, 34.076370, 36.737186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749405, 34.005226, 36.983791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685871, 34.397762, 36.940449>,  <44.647751, 34.633286, 36.914444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685871, 34.397762, 36.940449>,  <44.749405, 34.005226, 36.983791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685871, 34.397762, 36.940449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286397, 0.059237, 0.956278,
		0.944853, 0.182927, 0.271643,
		-0.158837, 0.981340, -0.108360,
		44.638222, 34.692165, 36.907940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968086, 34.451267, 37.560753>,  <44.749405, 34.005226, 36.983791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968086, 34.451267, 37.560753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635010, 34.588360, 37.386780>,  <44.435165, 34.670616, 37.282394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635010, 34.588360, 37.386780>,  <44.968086, 34.451267, 37.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635010, 34.588360, 37.386780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460239, 0.008399, 0.887755,
		0.307917, 0.939395, 0.150745,
		-0.832687, 0.342733, -0.434933,
		44.385204, 34.691181, 37.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706287, 35.168381, 37.749573>,  <44.968086, 34.451267, 37.560753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706287, 35.168381, 37.749573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403008, 34.915829, 37.684456>,  <44.221039, 34.764297, 37.645386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403008, 34.915829, 37.684456>,  <44.706287, 35.168381, 37.749573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403008, 34.915829, 37.684456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269720, 0.076396, 0.959904,
		-0.593624, 0.771704, -0.228218,
		-0.758196, -0.631377, -0.162793,
		44.175549, 34.726414, 37.635616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143314, 35.477127, 37.886955>,  <44.706287, 35.168381, 37.749573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143314, 35.477127, 37.886955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075264, 35.091381, 37.968002>,  <44.034435, 34.859932, 38.016632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075264, 35.091381, 37.968002>,  <44.143314, 35.477127, 37.886955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075264, 35.091381, 37.968002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288235, 0.245322, 0.925601,
		-0.942326, 0.099064, -0.319699,
		-0.170123, -0.964367, 0.202620,
		44.024227, 34.802071, 38.028790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425556, 35.962559, 37.330254>,  <44.143314, 35.477127, 37.886955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425556, 35.962559, 37.330254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666332, 36.254051, 37.460861>,  <44.810799, 36.428947, 37.539227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666332, 36.254051, 37.460861>,  <44.425556, 35.962559, 37.330254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666332, 36.254051, 37.460861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777749, -0.442316, -0.446613,
		-0.181039, 0.522782, -0.833021,
		0.601940, 0.728735, 0.326517,
		44.846912, 36.472672, 37.558815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699234, 36.338295, 36.764248>,  <44.425556, 35.962559, 37.330254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699234, 36.338295, 36.764248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950714, 36.349483, 37.075108>,  <45.101601, 36.356197, 37.261623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950714, 36.349483, 37.075108>,  <44.699234, 36.338295, 36.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950714, 36.349483, 37.075108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723300, -0.388075, -0.571169,
		0.285612, 0.921203, -0.264217,
		0.628699, 0.027976, 0.777145,
		45.139324, 36.357876, 37.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324417, 36.707016, 36.647961>,  <44.699234, 36.338295, 36.764248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324417, 36.707016, 36.647961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405636, 36.422573, 36.917213>,  <45.454365, 36.251907, 37.078766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405636, 36.422573, 36.917213>,  <45.324417, 36.707016, 36.647961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405636, 36.422573, 36.917213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795875, -0.280607, -0.536510,
		0.570400, 0.644661, 0.508976,
		0.203045, -0.711106, 0.673128,
		45.466549, 36.209240, 37.119152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963947, 36.758179, 37.009922>,  <45.324417, 36.707016, 36.647961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963947, 36.758179, 37.009922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850788, 36.376637, 36.969654>,  <45.782890, 36.147713, 36.945492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850788, 36.376637, 36.969654>,  <45.963947, 36.758179, 37.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850788, 36.376637, 36.969654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720494, -0.142054, -0.678755,
		0.633131, -0.264554, 0.727431,
		-0.282902, -0.953851, -0.100671,
		45.765919, 36.090481, 36.939453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458969, 36.151615, 37.120029>,  <45.963947, 36.758179, 37.009922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458969, 36.151615, 37.120029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187737, 36.044491, 36.846245>,  <46.024998, 35.980217, 36.681976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187737, 36.044491, 36.846245>,  <46.458969, 36.151615, 37.120029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187737, 36.044491, 36.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728462, -0.121086, -0.674300,
		0.097705, -0.955833, 0.277195,
		-0.678083, -0.267809, -0.684458,
		45.984310, 35.964149, 36.640907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669655, 35.534622, 36.856647>,  <46.458969, 36.151615, 37.120029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669655, 35.534622, 36.856647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457718, 35.729637, 36.579063>,  <46.330555, 35.846645, 36.412514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457718, 35.729637, 36.579063>,  <46.669655, 35.534622, 36.856647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457718, 35.729637, 36.579063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701061, -0.208699, -0.681879,
		-0.477268, -0.847794, -0.231215,
		-0.529838, 0.487535, -0.693960,
		46.298767, 35.875896, 36.370876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530529, 34.967125, 36.348995>,  <46.669655, 35.534622, 36.856647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530529, 34.967125, 36.348995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563931, 35.347721, 36.230545>,  <46.583973, 35.576080, 36.159473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563931, 35.347721, 36.230545>,  <46.530529, 34.967125, 36.348995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563931, 35.347721, 36.230545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841517, -0.226496, -0.490458,
		-0.533738, -0.208239, -0.819610,
		0.083506, 0.951492, -0.296126,
		46.588982, 35.633167, 36.141708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757961, 34.975960, 35.656036>,  <46.530529, 34.967125, 36.348995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757961, 34.975960, 35.656036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872356, 35.300766, 35.859543>,  <46.940994, 35.495647, 35.981647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872356, 35.300766, 35.859543>,  <46.757961, 34.975960, 35.656036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872356, 35.300766, 35.859543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928250, -0.102988, -0.357414,
		-0.237828, 0.574481, -0.783205,
		0.285989, 0.812013, 0.508769,
		46.958153, 35.544369, 36.012173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020321, 35.588596, 35.194420>,  <46.757961, 34.975960, 35.656036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020321, 35.588596, 35.194420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221416, 35.535175, 35.536045>,  <47.342075, 35.503124, 35.741020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221416, 35.535175, 35.536045>,  <47.020321, 35.588596, 35.194420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221416, 35.535175, 35.536045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863168, 0.024035, -0.504344,
		0.046829, 0.990750, 0.127361,
		0.502740, -0.133552, 0.854059,
		47.372238, 35.495110, 35.792263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707481, 35.950928, 35.240311>,  <47.020321, 35.588596, 35.194420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707481, 35.950928, 35.240311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721771, 35.628296, 35.476326>,  <47.730343, 35.434715, 35.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721771, 35.628296, 35.476326>,  <47.707481, 35.950928, 35.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721771, 35.628296, 35.476326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913387, -0.213230, -0.346780,
		0.405521, 0.551325, 0.729104,
		0.035721, -0.806581, 0.590043,
		47.732487, 35.386322, 35.653339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539722, 35.445442, 34.703392>,  <47.707481, 35.950928, 35.240311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539722, 35.445442, 34.703392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481392, 35.060085, 34.793373>,  <47.446396, 34.828869, 34.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481392, 35.060085, 34.793373>,  <47.539722, 35.445442, 34.703392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481392, 35.060085, 34.793373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787514, -0.024591, -0.615806,
		0.598796, -0.266951, -0.755103,
		-0.145822, -0.963396, 0.224953,
		47.437645, 34.771065, 34.860859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.847622, 36.138798, 28.447664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467449, 36.240513, 28.376093>,  <37.239346, 36.301540, 28.333149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467449, 36.240513, 28.376093>,  <37.847622, 36.138798, 28.447664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467449, 36.240513, 28.376093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257191, -0.319555, 0.911996,
		0.174733, 0.912810, 0.369116,
		-0.950432, 0.254289, -0.178930,
		37.182320, 36.316799, 28.322414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664818, 36.563503, 29.028091>,  <37.847622, 36.138798, 28.447664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664818, 36.563503, 29.028091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329456, 36.404995, 28.878397>,  <37.128239, 36.309891, 28.788580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329456, 36.404995, 28.878397>,  <37.664818, 36.563503, 29.028091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329456, 36.404995, 28.878397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240948, -0.346419, 0.906608,
		-0.488903, 0.850274, 0.194958,
		-0.838402, -0.396268, -0.374237,
		37.077934, 36.286114, 28.766127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072685, 36.845844, 29.503754>,  <37.664818, 36.563503, 29.028091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072685, 36.845844, 29.503754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929863, 36.542088, 29.286194>,  <36.844170, 36.359833, 29.155659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929863, 36.542088, 29.286194>,  <37.072685, 36.845844, 29.503754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929863, 36.542088, 29.286194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441827, -0.375719, 0.814632,
		-0.822981, 0.531181, -0.201368,
		-0.357059, -0.759396, -0.543899,
		36.822746, 36.314270, 29.123024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295883, 36.793224, 29.649115>,  <37.072685, 36.845844, 29.503754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295883, 36.793224, 29.649115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401821, 36.431156, 29.516134>,  <36.465385, 36.213917, 29.436346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401821, 36.431156, 29.516134>,  <36.295883, 36.793224, 29.649115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401821, 36.431156, 29.516134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419207, -0.418556, 0.805652,
		-0.868401, -0.074010, -0.490308,
		0.264848, -0.905170, -0.332449,
		36.481277, 36.159607, 29.416399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688953, 36.384350, 29.643049>,  <36.295883, 36.793224, 29.649115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688953, 36.384350, 29.643049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981949, 36.113827, 29.611889>,  <36.157745, 35.951511, 29.593193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981949, 36.113827, 29.611889>,  <35.688953, 36.384350, 29.643049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981949, 36.113827, 29.611889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303767, -0.427098, 0.851653,
		-0.609255, -0.600159, -0.518284,
		0.732485, -0.676311, -0.077903,
		36.201694, 35.910934, 29.588518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339378, 35.814632, 29.838181>,  <35.688953, 36.384350, 29.643049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339378, 35.814632, 29.838181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730267, 35.738792, 29.876320>,  <35.964798, 35.693287, 29.899204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730267, 35.738792, 29.876320>,  <35.339378, 35.814632, 29.838181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730267, 35.738792, 29.876320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175771, -0.471278, 0.864292,
		-0.118937, -0.861364, -0.493869,
		0.977220, -0.189604, 0.095350,
		36.023434, 35.681911, 29.904924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307983, 35.213619, 30.137579>,  <35.339378, 35.814632, 29.838181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307983, 35.213619, 30.137579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671787, 35.358997, 30.218279>,  <35.890068, 35.446224, 30.266699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671787, 35.358997, 30.218279>,  <35.307983, 35.213619, 30.137579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671787, 35.358997, 30.218279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044958, -0.396489, 0.916938,
		0.413248, -0.843033, -0.344270,
		0.909508, 0.363445, 0.201749,
		35.944641, 35.468029, 30.278803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615986, 34.641930, 30.515558>,  <35.307983, 35.213619, 30.137579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615986, 34.641930, 30.515558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843864, 34.963581, 30.583458>,  <35.980591, 35.156574, 30.624199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843864, 34.963581, 30.583458>,  <35.615986, 34.641930, 30.515558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843864, 34.963581, 30.583458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145520, -0.301981, 0.942142,
		0.808866, -0.512037, -0.289056,
		0.569701, 0.804131, 0.169750,
		36.014774, 35.204819, 30.634382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231602, 34.468571, 30.894148>,  <35.615986, 34.641930, 30.515558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231602, 34.468571, 30.894148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226978, 34.859638, 30.978073>,  <36.224205, 35.094280, 31.028429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226978, 34.859638, 30.978073>,  <36.231602, 34.468571, 30.894148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226978, 34.859638, 30.978073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374747, -0.190300, 0.907387,
		0.927055, 0.089113, -0.364180,
		-0.011556, 0.977673, 0.209813,
		36.223511, 35.152939, 31.041018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898232, 34.630096, 31.152647>,  <36.231602, 34.468571, 30.894148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898232, 34.630096, 31.152647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635517, 34.902481, 31.282213>,  <36.477890, 35.065914, 31.359953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635517, 34.902481, 31.282213>,  <36.898232, 34.630096, 31.152647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635517, 34.902481, 31.282213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241286, -0.217191, 0.945838,
		0.714435, 0.699366, -0.021661,
		-0.656783, 0.680966, 0.323916,
		36.438484, 35.106770, 31.379389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217285, 34.886749, 31.806755>,  <36.898232, 34.630096, 31.152647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217285, 34.886749, 31.806755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831661, 34.991348, 31.825523>,  <36.600285, 35.054108, 31.836784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831661, 34.991348, 31.825523>,  <37.217285, 34.886749, 31.806755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831661, 34.991348, 31.825523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028142, -0.075091, 0.996779,
		0.264181, 0.962278, 0.065034,
		-0.964062, 0.261500, 0.046919,
		36.542442, 35.069798, 31.839600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269680, 35.384262, 32.232395>,  <37.217285, 34.886749, 31.806755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269680, 35.384262, 32.232395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913670, 35.202057, 32.240005>,  <36.700062, 35.092735, 32.244572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913670, 35.202057, 32.240005>,  <37.269680, 35.384262, 32.232395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913670, 35.202057, 32.240005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109145, -0.172360, 0.978969,
		-0.442653, 0.873384, 0.203122,
		-0.890026, -0.455513, 0.019030,
		36.646664, 35.065403, 32.245716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993519, 35.736492, 32.887264>,  <37.269680, 35.384262, 32.232395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993519, 35.736492, 32.887264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753929, 35.429710, 32.795166>,  <36.610176, 35.245640, 32.739906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753929, 35.429710, 32.795166>,  <36.993519, 35.736492, 32.887264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753929, 35.429710, 32.795166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063405, -0.241206, 0.968400,
		-0.798258, 0.594641, 0.095846,
		-0.598970, -0.766956, -0.230248,
		36.574238, 35.199623, 32.726093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389198, 35.760151, 33.315380>,  <36.993519, 35.736492, 32.887264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389198, 35.760151, 33.315380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456257, 35.379818, 33.211220>,  <36.496494, 35.151619, 33.148724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456257, 35.379818, 33.211220>,  <36.389198, 35.760151, 33.315380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456257, 35.379818, 33.211220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001077, -0.263963, 0.964532,
		-0.985846, -0.161985, -0.043230,
		0.167651, -0.950833, -0.260401,
		36.506554, 35.094566, 33.133099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091064, 35.423103, 33.845226>,  <36.389198, 35.760151, 33.315380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091064, 35.423103, 33.845226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305248, 35.132977, 33.672157>,  <36.433758, 34.958900, 33.568314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305248, 35.132977, 33.672157>,  <36.091064, 35.423103, 33.845226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305248, 35.132977, 33.672157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210409, -0.381588, 0.900066,
		-0.817934, -0.572984, -0.051711,
		0.535455, -0.725314, -0.432675,
		36.465885, 34.915382, 33.542355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892799, 34.854694, 34.137455>,  <36.091064, 35.423103, 33.845226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892799, 34.854694, 34.137455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245266, 34.738365, 33.988338>,  <36.456745, 34.668568, 33.898869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245266, 34.738365, 33.988338>,  <35.892799, 34.854694, 34.137455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245266, 34.738365, 33.988338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137698, -0.596429, 0.790767,
		-0.452316, -0.748127, -0.485506,
		0.881164, -0.290823, -0.372790,
		36.509617, 34.651119, 33.876503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902794, 34.121254, 34.256622>,  <35.892799, 34.854694, 34.137455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902794, 34.121254, 34.256622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284069, 34.229416, 34.202477>,  <36.512833, 34.294312, 34.169991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284069, 34.229416, 34.202477>,  <35.902794, 34.121254, 34.256622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284069, 34.229416, 34.202477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296422, -0.747023, 0.595055,
		0.059785, -0.607322, -0.792203,
		0.953184, 0.270402, -0.135363,
		36.570023, 34.310535, 34.161869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242039, 33.524536, 34.192249>,  <35.902794, 34.121254, 34.256622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242039, 33.524536, 34.192249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546314, 33.766132, 34.287376>,  <36.728878, 33.911091, 34.344452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546314, 33.766132, 34.287376>,  <36.242039, 33.524536, 34.192249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546314, 33.766132, 34.287376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411291, -0.731906, 0.543279,
		0.502191, -0.315454, -0.805166,
		0.760686, 0.603988, 0.237813,
		36.774521, 33.947330, 34.358719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797150, 33.118206, 34.209972>,  <36.242039, 33.524536, 34.192249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797150, 33.118206, 34.209972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931004, 33.440750, 34.405029>,  <37.011314, 33.634277, 34.522064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931004, 33.440750, 34.405029>,  <36.797150, 33.118206, 34.209972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931004, 33.440750, 34.405029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362114, -0.587781, 0.723455,
		0.869996, -0.065510, -0.488688,
		0.334635, 0.806363, 0.487645,
		37.031395, 33.682659, 34.551323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433090, 32.920315, 34.541599>,  <36.797150, 33.118206, 34.209972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433090, 32.920315, 34.541599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311047, 33.246391, 34.738525>,  <37.237820, 33.442036, 34.856682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311047, 33.246391, 34.738525>,  <37.433090, 32.920315, 34.541599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311047, 33.246391, 34.738525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270086, -0.421670, 0.865591,
		0.913214, 0.397070, -0.091514,
		-0.305112, 0.815187, 0.492319,
		37.219513, 33.490948, 34.886223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037621, 32.999905, 35.059818>,  <37.433090, 32.920315, 34.541599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037621, 32.999905, 35.059818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721222, 33.199413, 35.201550>,  <37.531384, 33.319118, 35.286591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721222, 33.199413, 35.201550>,  <38.037621, 32.999905, 35.059818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721222, 33.199413, 35.201550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224553, -0.302054, 0.926466,
		0.569119, 0.812400, 0.126924,
		-0.790999, 0.498768, 0.354331,
		37.483921, 33.349045, 35.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381325, 33.347992, 35.647663>,  <38.037621, 32.999905, 35.059818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381325, 33.347992, 35.647663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983269, 33.328480, 35.681885>,  <37.744434, 33.316772, 35.702419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983269, 33.328480, 35.681885>,  <38.381325, 33.347992, 35.647663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983269, 33.328480, 35.681885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093798, -0.204635, 0.974334,
		-0.030017, 0.977622, 0.208215,
		-0.995139, -0.048777, 0.085557,
		37.684727, 33.313847, 35.707550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908012, 33.419315, 35.122517>,  <38.381325, 33.347992, 35.647663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908012, 33.419315, 35.122517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220455, 33.308556, 35.346375>,  <39.407921, 33.242100, 35.480690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.220455, 33.308556, 35.346375>,  <38.908012, 33.419315, 35.122517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220455, 33.308556, 35.346375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624181, 0.370049, -0.688085,
		-0.016563, 0.886785, 0.461885,
		0.781104, -0.276903, 0.559644,
		39.454788, 33.225483, 35.514267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264954, 34.044506, 35.227093>,  <38.908012, 33.419315, 35.122517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264954, 34.044506, 35.227093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522640, 33.742836, 35.278008>,  <39.677250, 33.561832, 35.308556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522640, 33.742836, 35.278008>,  <39.264954, 34.044506, 35.227093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522640, 33.742836, 35.278008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602631, 0.398024, -0.691673,
		0.470980, 0.522295, 0.710905,
		0.644215, -0.754178, 0.127290,
		39.715904, 33.516582, 35.316193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915695, 34.432499, 35.226223>,  <39.264954, 34.044506, 35.227093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915695, 34.432499, 35.226223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002296, 34.049500, 35.149998>,  <40.054256, 33.819698, 35.104263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002296, 34.049500, 35.149998>,  <39.915695, 34.432499, 35.226223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002296, 34.049500, 35.149998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662232, 0.287457, -0.691966,
		0.717338, 0.023619, 0.696325,
		0.216507, -0.957502, -0.190563,
		40.067249, 33.762249, 35.092831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655743, 34.360474, 35.214859>,  <39.915695, 34.432499, 35.226223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655743, 34.360474, 35.214859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516239, 34.046688, 35.009731>,  <40.432537, 33.858418, 34.886654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516239, 34.046688, 35.009731>,  <40.655743, 34.360474, 35.214859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516239, 34.046688, 35.009731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548160, 0.273082, -0.790536,
		0.760190, -0.556809, 0.334774,
		-0.348757, -0.784468, -0.512815,
		40.411613, 33.811348, 34.855888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210472, 34.161991, 34.768295>,  <40.655743, 34.360474, 35.214859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210472, 34.161991, 34.768295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.894421, 33.975735, 34.608856>,  <40.704792, 33.863979, 34.513191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.894421, 33.975735, 34.608856>,  <41.210472, 34.161991, 34.768295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894421, 33.975735, 34.608856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306978, 0.262254, -0.914870,
		0.530536, -0.845222, -0.064271,
		-0.790124, -0.465642, -0.398600,
		40.657383, 33.836040, 34.489277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460388, 33.699028, 34.213486>,  <41.210472, 34.161991, 34.768295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460388, 33.699028, 34.213486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073696, 33.785797, 34.159248>,  <40.841682, 33.837860, 34.126705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073696, 33.785797, 34.159248>,  <41.460388, 33.699028, 34.213486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073696, 33.785797, 34.159248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167336, 0.135305, -0.976571,
		-0.193493, -0.966766, -0.167102,
		-0.966726, 0.216922, -0.135594,
		40.783680, 33.850872, 34.118568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174496, 33.214420, 33.752571>,  <41.460388, 33.699028, 34.213486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174496, 33.214420, 33.752571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.944473, 33.538734, 33.708847>,  <40.806461, 33.733322, 33.682613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.944473, 33.538734, 33.708847>,  <41.174496, 33.214420, 33.752571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944473, 33.538734, 33.708847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265338, 0.058438, -0.962383,
		-0.773893, -0.582426, -0.248736,
		-0.575052, 0.810781, -0.109315,
		40.771957, 33.781967, 33.676052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712372, 33.085419, 33.140976>,  <41.174496, 33.214420, 33.752571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712372, 33.085419, 33.140976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.715191, 33.478817, 33.213287>,  <40.716881, 33.714855, 33.256676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.715191, 33.478817, 33.213287>,  <40.712372, 33.085419, 33.140976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715191, 33.478817, 33.213287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008718, 0.180718, -0.983496,
		-0.999937, 0.008504, -0.007301,
		0.007044, 0.983498, 0.180781,
		40.717304, 33.773865, 33.267521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143394, 33.391811, 32.662392>,  <40.712372, 33.085419, 33.140976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143394, 33.391811, 32.662392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379520, 33.697826, 32.765343>,  <40.521194, 33.881435, 32.827114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379520, 33.697826, 32.765343>,  <40.143394, 33.391811, 32.662392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379520, 33.697826, 32.765343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086432, 0.376945, -0.922194,
		-0.802533, 0.522137, 0.288640,
		0.590313, 0.765039, 0.257381,
		40.556614, 33.927338, 32.842556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711517, 33.923386, 32.502701>,  <40.143394, 33.391811, 32.662392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711517, 33.923386, 32.502701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078857, 34.081234, 32.514732>,  <40.299263, 34.175945, 32.521954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078857, 34.081234, 32.514732>,  <39.711517, 33.923386, 32.502701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078857, 34.081234, 32.514732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152386, 0.422722, -0.893356,
		-0.365257, 0.815829, 0.448342,
		0.918350, 0.394626, 0.030081,
		40.354362, 34.199623, 32.523758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641731, 34.588436, 32.663311>,  <39.711517, 33.923386, 32.502701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641731, 34.588436, 32.663311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005634, 34.586613, 32.497261>,  <40.223976, 34.585518, 32.397633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.005634, 34.586613, 32.497261>,  <39.641731, 34.588436, 32.663311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005634, 34.586613, 32.497261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351592, 0.523246, -0.776271,
		0.220753, 0.852170, 0.474421,
		0.909754, -0.004562, -0.415124,
		40.278561, 34.585243, 32.372723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713409, 35.288731, 32.395279>,  <39.641731, 34.588436, 32.663311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713409, 35.288731, 32.395279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981968, 35.062374, 32.203865>,  <40.143105, 34.926559, 32.089016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.981968, 35.062374, 32.203865>,  <39.713409, 35.288731, 32.395279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981968, 35.062374, 32.203865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169499, 0.511339, -0.842498,
		0.721454, 0.646762, 0.247393,
		0.671397, -0.565891, -0.478533,
		40.183388, 34.892609, 32.060307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156055, 35.817699, 31.890436>,  <39.713409, 35.288731, 32.395279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156055, 35.817699, 31.890436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164307, 35.434101, 31.777370>,  <40.169258, 35.203941, 31.709532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164307, 35.434101, 31.777370>,  <40.156055, 35.817699, 31.890436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164307, 35.434101, 31.777370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180699, 0.274490, -0.944459,
		0.983322, 0.070562, -0.167626,
		0.020631, -0.958997, -0.282663,
		40.170494, 35.146400, 31.692572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512203, 35.869053, 31.215940>,  <40.156055, 35.817699, 31.890436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512203, 35.869053, 31.215940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355743, 35.500999, 31.208281>,  <40.261868, 35.280167, 31.203686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355743, 35.500999, 31.208281>,  <40.512203, 35.869053, 31.215940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355743, 35.500999, 31.208281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460794, 0.213807, -0.861368,
		0.796664, -0.328097, -0.507620,
		-0.391145, -0.920130, -0.019148,
		40.238400, 35.224960, 31.202536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899921, 35.401794, 30.637699>,  <40.512203, 35.869053, 31.215940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899921, 35.401794, 30.637699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.529453, 35.286083, 30.734468>,  <40.307171, 35.216656, 30.792530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.529453, 35.286083, 30.734468>,  <40.899921, 35.401794, 30.637699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529453, 35.286083, 30.734468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277707, 0.089181, -0.956517,
		0.255124, -0.953082, -0.162932,
		-0.926170, -0.289278, 0.241925,
		40.251602, 35.199299, 30.807047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735172, 34.920494, 30.140394>,  <40.899921, 35.401794, 30.637699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735172, 34.920494, 30.140394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380947, 35.046040, 30.277372>,  <40.168411, 35.121368, 30.359560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380947, 35.046040, 30.277372>,  <40.735172, 34.920494, 30.140394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380947, 35.046040, 30.277372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275759, 0.238044, -0.931285,
		-0.373815, -0.919143, -0.124252,
		-0.885562, 0.313865, 0.342446,
		40.115280, 35.140198, 30.380106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214813, 34.752121, 29.619190>,  <40.735172, 34.920494, 30.140394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214813, 34.752121, 29.619190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.033413, 35.013645, 29.861469>,  <39.924572, 35.170559, 30.006836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.033413, 35.013645, 29.861469>,  <40.214813, 34.752121, 29.619190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033413, 35.013645, 29.861469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403446, 0.455388, -0.793633,
		-0.794711, -0.604282, 0.057256,
		-0.453504, 0.653808, 0.605697,
		39.897362, 35.209789, 30.043179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486618, 34.849361, 29.392609>,  <40.214813, 34.752121, 29.619190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486618, 34.849361, 29.392609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603523, 35.179722, 29.585468>,  <39.673664, 35.377937, 29.701185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603523, 35.179722, 29.585468>,  <39.486618, 34.849361, 29.392609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603523, 35.179722, 29.585468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219858, 0.548685, -0.806602,
		-0.930723, 0.129733, 0.341940,
		0.292260, 0.825902, 0.482151,
		39.691200, 35.427494, 29.730114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.987801, 35.390419, 29.189987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295681, 35.599888, 29.336044>,  <39.480408, 35.725571, 29.423679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.295681, 35.599888, 29.336044>,  <38.987801, 35.390419, 29.189987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295681, 35.599888, 29.336044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018339, 0.589865, -0.807294,
		-0.638143, 0.614677, 0.463623,
		0.769700, 0.523671, 0.365145,
		39.526592, 35.756989, 29.445587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788677, 36.031422, 29.212633>,  <38.987801, 35.390419, 29.189987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788677, 36.031422, 29.212633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185062, 36.084858, 29.207792>,  <39.422894, 36.116920, 29.204887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185062, 36.084858, 29.207792>,  <38.788677, 36.031422, 29.212633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185062, 36.084858, 29.207792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091464, 0.606975, -0.789440,
		-0.098114, 0.783413, 0.613708,
		0.990963, 0.133587, -0.012102,
		39.482353, 36.124935, 29.204163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774029, 36.601036, 28.890079>,  <38.788677, 36.031422, 29.212633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774029, 36.601036, 28.890079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166679, 36.524925, 28.895830>,  <39.402267, 36.479259, 28.899281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.166679, 36.524925, 28.895830>,  <38.774029, 36.601036, 28.890079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166679, 36.524925, 28.895830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132942, 0.627880, -0.766872,
		0.136894, 0.754692, 0.641639,
		0.981624, -0.190281, 0.014378,
		39.461166, 36.467842, 28.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032009, 37.215191, 28.845364>,  <38.774029, 36.601036, 28.890079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032009, 37.215191, 28.845364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308556, 36.956562, 28.716398>,  <39.474483, 36.801384, 28.639019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308556, 36.956562, 28.716398>,  <39.032009, 37.215191, 28.845364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308556, 36.956562, 28.716398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254477, 0.635567, -0.728900,
		0.676204, 0.421892, 0.603950,
		0.691368, -0.646576, -0.322411,
		39.515965, 36.762589, 28.619675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614838, 37.657333, 28.768055>,  <39.032009, 37.215191, 28.845364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614838, 37.657333, 28.768055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654499, 37.311150, 28.571630>,  <39.678295, 37.103439, 28.453775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.654499, 37.311150, 28.571630>,  <39.614838, 37.657333, 28.768055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654499, 37.311150, 28.571630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132508, 0.500584, -0.855487,
		0.986210, 0.019754, 0.164315,
		0.099152, -0.865463, -0.491063,
		39.684246, 37.051510, 28.424311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237320, 37.755398, 28.357254>,  <39.614838, 37.657333, 28.768055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237320, 37.755398, 28.357254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998276, 37.475620, 28.200470>,  <39.854847, 37.307755, 28.106400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998276, 37.475620, 28.200470>,  <40.237320, 37.755398, 28.357254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998276, 37.475620, 28.200470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036531, 0.512104, -0.858146,
		0.800952, -0.498521, -0.331591,
		-0.597613, -0.699447, -0.391959,
		39.818993, 37.265785, 28.082882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502022, 37.744991, 27.659403>,  <40.237320, 37.755398, 28.357254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502022, 37.744991, 27.659403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159740, 37.539192, 27.637234>,  <39.954372, 37.415714, 27.623932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159740, 37.539192, 27.637234>,  <40.502022, 37.744991, 27.659403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159740, 37.539192, 27.637234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127484, 0.313398, -0.941026,
		0.501523, -0.798170, -0.333765,
		-0.855700, -0.514496, -0.055422,
		39.903030, 37.384842, 27.620607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501801, 37.473331, 27.017006>,  <40.502022, 37.744991, 27.659403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501801, 37.473331, 27.017006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.114017, 37.458492, 27.113985>,  <39.881348, 37.449589, 27.172173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.114017, 37.458492, 27.113985>,  <40.501801, 37.473331, 27.017006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114017, 37.458492, 27.113985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243561, 0.262090, -0.933802,
		-0.028903, -0.964330, -0.263120,
		-0.969455, -0.037096, 0.242449,
		39.823181, 37.447365, 27.186720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179195, 36.933685, 26.591234>,  <40.501801, 37.473331, 27.017006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179195, 36.933685, 26.591234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900951, 37.191380, 26.718409>,  <39.734005, 37.345997, 26.794712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.900951, 37.191380, 26.718409>,  <40.179195, 36.933685, 26.591234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900951, 37.191380, 26.718409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287430, 0.156016, -0.945009,
		-0.658415, -0.748742, 0.076648,
		-0.695610, 0.644240, 0.317935,
		39.692268, 37.384651, 26.813789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645504, 36.832897, 26.086737>,  <40.179195, 36.933685, 26.591234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645504, 36.832897, 26.086737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589931, 37.189331, 26.259558>,  <39.556587, 37.403191, 26.363251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.589931, 37.189331, 26.259558>,  <39.645504, 36.832897, 26.086737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589931, 37.189331, 26.259558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265215, 0.386865, -0.883174,
		-0.954128, -0.237286, 0.182582,
		-0.138930, 0.891084, 0.432051,
		39.548252, 37.456657, 26.389174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165890, 37.203613, 25.594879>,  <39.645504, 36.832897, 26.086737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165890, 37.203613, 25.594879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319962, 37.493454, 25.823469>,  <39.412407, 37.667358, 25.960623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319962, 37.493454, 25.823469>,  <39.165890, 37.203613, 25.594879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319962, 37.493454, 25.823469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039954, 0.631770, -0.774125,
		-0.921974, 0.275348, 0.272299,
		0.385184, 0.724603, 0.571474,
		39.435516, 37.710835, 25.994911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656479, 37.885998, 25.643707>,  <39.165890, 37.203613, 25.594879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656479, 37.885998, 25.643707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038559, 37.991894, 25.696634>,  <39.267807, 38.055431, 25.728390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.038559, 37.991894, 25.696634>,  <38.656479, 37.885998, 25.643707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038559, 37.991894, 25.696634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099148, 0.707469, -0.699756,
		-0.278862, 0.655287, 0.702022,
		0.955200, 0.264739, 0.132316,
		39.325119, 38.071316, 25.736328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631733, 38.581665, 25.455498>,  <38.656479, 37.885998, 25.643707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631733, 38.581665, 25.455498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028461, 38.532864, 25.470470>,  <39.266499, 38.503582, 25.479454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.028461, 38.532864, 25.470470>,  <38.631733, 38.581665, 25.455498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028461, 38.532864, 25.470470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122097, 0.821822, -0.556508,
		0.037137, 0.556528, 0.829999,
		0.991823, -0.122007, 0.037430,
		39.326008, 38.496262, 25.481699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893700, 39.228100, 25.598425>,  <38.631733, 38.581665, 25.455498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893700, 39.228100, 25.598425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.202881, 39.016144, 25.458853>,  <39.388390, 38.888969, 25.375109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.202881, 39.016144, 25.458853>,  <38.893700, 39.228100, 25.598425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202881, 39.016144, 25.458853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291890, 0.785304, -0.545984,
		0.563329, 0.320172, 0.761676,
		0.772956, -0.529894, -0.348930,
		39.434769, 38.857174, 25.354174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513538, 39.574265, 25.761223>,  <38.893700, 39.228100, 25.598425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513538, 39.574265, 25.761223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.607559, 39.361752, 25.435650>,  <39.663971, 39.234241, 25.240305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.607559, 39.361752, 25.435650>,  <39.513538, 39.574265, 25.761223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607559, 39.361752, 25.435650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336938, 0.830008, -0.444477,
		0.911715, -0.169772, 0.374102,
		0.235048, -0.531286, -0.813933,
		39.678074, 39.202366, 25.191469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276653, 39.644585, 25.618134>,  <39.513538, 39.574265, 25.761223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276653, 39.644585, 25.618134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079601, 39.559105, 25.280695>,  <39.961372, 39.507816, 25.078232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079601, 39.559105, 25.280695>,  <40.276653, 39.644585, 25.618134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079601, 39.559105, 25.280695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389005, 0.813066, -0.433127,
		0.778455, -0.541533, -0.317411,
		-0.492628, -0.213695, -0.843594,
		39.931812, 39.494995, 25.027617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634258, 40.063934, 25.176565>,  <40.276653, 39.644585, 25.618134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634258, 40.063934, 25.176565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354923, 39.934650, 24.921108>,  <40.187325, 39.857082, 24.767834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354923, 39.934650, 24.921108>,  <40.634258, 40.063934, 25.176565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354923, 39.934650, 24.921108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204578, 0.764898, -0.610802,
		0.685911, -0.557198, -0.468036,
		-0.698337, -0.323205, -0.638642,
		40.145424, 39.837688, 24.729515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956406, 40.063847, 24.534163>,  <40.634258, 40.063934, 25.176565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956406, 40.063847, 24.534163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564651, 40.060417, 24.453440>,  <40.329597, 40.058361, 24.405006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.564651, 40.060417, 24.453440>,  <40.956406, 40.063847, 24.534163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564651, 40.060417, 24.453440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140657, 0.688088, -0.711864,
		0.144963, -0.725577, -0.672699,
		-0.979388, -0.008573, -0.201805,
		40.270836, 40.057846, 24.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967548, 39.976383, 23.783438>,  <40.956406, 40.063847, 24.534163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967548, 39.976383, 23.783438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606564, 40.118759, 23.880491>,  <40.389973, 40.204185, 23.938723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606564, 40.118759, 23.880491>,  <40.967548, 39.976383, 23.783438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606564, 40.118759, 23.880491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012151, 0.584060, -0.811620,
		-0.430604, -0.729505, -0.531415,
		-0.902459, 0.355944, 0.242634,
		40.335827, 40.225544, 23.953281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469238, 39.951771, 23.159492>,  <40.967548, 39.976383, 23.783438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469238, 39.951771, 23.159492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325882, 40.233124, 23.405029>,  <40.239868, 40.401936, 23.552351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.325882, 40.233124, 23.405029>,  <40.469238, 39.951771, 23.159492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325882, 40.233124, 23.405029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132586, 0.612509, -0.779265,
		-0.924108, -0.360670, -0.126260,
		-0.358393, 0.703385, 0.613844,
		40.218365, 40.444138, 23.589182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836037, 40.079323, 22.841045>,  <40.469238, 39.951771, 23.159492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836037, 40.079323, 22.841045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931396, 40.393764, 23.069155>,  <39.988613, 40.582428, 23.206020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931396, 40.393764, 23.069155>,  <39.836037, 40.079323, 22.841045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931396, 40.393764, 23.069155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421635, 0.612753, -0.668400,
		-0.874866, -0.081101, 0.477527,
		0.238398, 0.786102, 0.570272,
		40.002914, 40.629597, 23.240236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220188, 40.587349, 22.887148>,  <39.836037, 40.079323, 22.841045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220188, 40.587349, 22.887148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538799, 40.814606, 22.969862>,  <39.729965, 40.950958, 23.019491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538799, 40.814606, 22.969862>,  <39.220188, 40.587349, 22.887148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538799, 40.814606, 22.969862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302535, 0.670655, -0.677270,
		-0.523469, 0.476903, 0.706077,
		0.796525, 0.568143, 0.206787,
		39.777756, 40.985050, 23.031898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998222, 41.349499, 22.937515>,  <39.220188, 40.587349, 22.887148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998222, 41.349499, 22.937515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377140, 41.306110, 22.816936>,  <39.604492, 41.280079, 22.744589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377140, 41.306110, 22.816936>,  <38.998222, 41.349499, 22.937515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377140, 41.306110, 22.816936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191941, 0.561207, -0.805112,
		0.256505, 0.820536, 0.510808,
		0.947293, -0.108470, -0.301448,
		39.661327, 41.273571, 22.726501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881268, 41.262955, 22.201744>,  <38.998222, 41.349499, 22.937515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881268, 41.262955, 22.201744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.114624, 41.084755, 21.930101>,  <39.254639, 40.977833, 21.767117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.114624, 41.084755, 21.930101>,  <38.881268, 41.262955, 22.201744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114624, 41.084755, 21.930101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480503, -0.863430, 0.153642,
		-0.654808, 0.236679, -0.717781,
		0.583390, -0.445502, -0.679106,
		39.289642, 40.951103, 21.726370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230141, 41.389656, 22.432741>,  <38.881268, 41.262955, 22.201744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230141, 41.389656, 22.432741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933830, 41.654366, 22.478901>,  <37.756046, 41.813190, 22.506598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933830, 41.654366, 22.478901>,  <38.230141, 41.389656, 22.432741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933830, 41.654366, 22.478901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079179, -0.256606, 0.963267,
		0.667074, 0.704424, 0.242485,
		-0.740772, 0.661771, 0.115400,
		37.711597, 41.852898, 22.513521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402771, 41.805771, 23.088982>,  <38.230141, 41.389656, 22.432741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402771, 41.805771, 23.088982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021305, 41.756271, 22.979279>,  <37.792427, 41.726574, 22.913456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.021305, 41.756271, 22.979279>,  <38.402771, 41.805771, 23.088982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021305, 41.756271, 22.979279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200562, -0.418022, 0.886021,
		-0.224288, 0.899969, 0.373832,
		-0.953661, -0.123747, -0.274257,
		37.735207, 41.719147, 22.897001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972069, 42.048447, 23.607616>,  <38.402771, 41.805771, 23.088982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972069, 42.048447, 23.607616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772141, 41.761284, 23.413797>,  <37.652184, 41.588985, 23.297506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772141, 41.761284, 23.413797>,  <37.972069, 42.048447, 23.607616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772141, 41.761284, 23.413797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213454, -0.440088, 0.872215,
		-0.839415, 0.539380, 0.066724,
		-0.499820, -0.717908, -0.484549,
		37.622196, 41.545910, 23.268433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343521, 42.092052, 23.949553>,  <37.972069, 42.048447, 23.607616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343521, 42.092052, 23.949553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380039, 41.739128, 23.764862>,  <37.401951, 41.527374, 23.654049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380039, 41.739128, 23.764862>,  <37.343521, 42.092052, 23.949553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380039, 41.739128, 23.764862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377478, -0.459720, 0.803846,
		-0.921508, 0.100905, -0.375023,
		0.091294, -0.882313, -0.461725,
		37.407429, 41.474434, 23.626345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835018, 41.651569, 24.196838>,  <37.343521, 42.092052, 23.949553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835018, 41.651569, 24.196838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064884, 41.385147, 24.006626>,  <37.202805, 41.225292, 23.892498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.064884, 41.385147, 24.006626>,  <36.835018, 41.651569, 24.196838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064884, 41.385147, 24.006626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134383, -0.649969, 0.747985,
		-0.807281, -0.365936, -0.463020,
		0.574663, -0.666057, -0.475532,
		37.237282, 41.185329, 23.863966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443874, 40.996418, 24.156010>,  <36.835018, 41.651569, 24.196838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443874, 40.996418, 24.156010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826630, 40.880424, 24.149284>,  <37.056282, 40.810829, 24.145248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.826630, 40.880424, 24.149284>,  <36.443874, 40.996418, 24.156010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826630, 40.880424, 24.149284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217836, -0.754699, 0.618852,
		-0.192145, -0.588507, -0.785328,
		0.956884, -0.289981, -0.016814,
		37.113693, 40.793430, 24.144239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409695, 40.230923, 24.109303>,  <36.443874, 40.996418, 24.156010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409695, 40.230923, 24.109303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765804, 40.351028, 24.246271>,  <36.979469, 40.423092, 24.328453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765804, 40.351028, 24.246271>,  <36.409695, 40.230923, 24.109303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765804, 40.351028, 24.246271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089257, -0.622254, 0.777710,
		0.446591, -0.722939, -0.527177,
		0.890275, 0.300264, 0.342421,
		37.032887, 40.441109, 24.348997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700947, 39.649887, 24.346304>,  <36.409695, 40.230923, 24.109303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700947, 39.649887, 24.346304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929974, 39.932079, 24.513378>,  <37.067390, 40.101395, 24.613623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.929974, 39.932079, 24.513378>,  <36.700947, 39.649887, 24.346304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929974, 39.932079, 24.513378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005939, -0.513017, 0.858358,
		0.819838, -0.488986, -0.297926,
		0.572565, 0.705483, 0.417687,
		37.101742, 40.143723, 24.638683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362907, 39.405064, 24.387972>,  <36.700947, 39.649887, 24.346304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362907, 39.405064, 24.387972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298050, 39.655678, 24.692907>,  <37.259136, 39.806046, 24.875868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298050, 39.655678, 24.692907>,  <37.362907, 39.405064, 24.387972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298050, 39.655678, 24.692907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116997, -0.754904, 0.645315,
		0.979806, 0.193825, 0.049101,
		-0.162145, 0.626539, 0.762337,
		37.249405, 39.843639, 24.921608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927280, 39.469852, 24.852200>,  <37.362907, 39.405064, 24.387972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927280, 39.469852, 24.852200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585865, 39.557407, 25.041327>,  <37.381016, 39.609940, 25.154802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585865, 39.557407, 25.041327>,  <37.927280, 39.469852, 24.852200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585865, 39.557407, 25.041327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245877, -0.630859, 0.735909,
		0.459363, 0.744383, 0.484644,
		-0.853540, 0.218887, 0.472820,
		37.329803, 39.623074, 25.183172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115505, 39.534725, 25.539707>,  <37.927280, 39.469852, 24.852200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115505, 39.534725, 25.539707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728588, 39.433308, 25.536547>,  <37.496437, 39.372459, 25.534651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728588, 39.433308, 25.536547>,  <38.115505, 39.534725, 25.539707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728588, 39.433308, 25.536547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170755, -0.673850, 0.718867,
		-0.187585, 0.694006, 0.695103,
		-0.967292, -0.253541, -0.007900,
		37.438400, 39.357246, 25.534178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893677, 39.533691, 26.288183>,  <38.115505, 39.534725, 25.539707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893677, 39.533691, 26.288183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629723, 39.318859, 26.078005>,  <37.471352, 39.189960, 25.951897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629723, 39.318859, 26.078005>,  <37.893677, 39.533691, 26.288183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629723, 39.318859, 26.078005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080801, -0.644542, 0.760287,
		-0.747008, 0.544160, 0.381927,
		-0.659886, -0.537081, -0.525447,
		37.431755, 39.157734, 25.920370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626949, 39.141006, 26.788618>,  <37.893677, 39.533691, 26.288183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626949, 39.141006, 26.788618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455925, 38.937653, 26.489622>,  <37.353310, 38.815639, 26.310225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.455925, 38.937653, 26.489622>,  <37.626949, 39.141006, 26.788618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455925, 38.937653, 26.489622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394756, -0.638875, 0.660308,
		-0.813241, 0.577397, 0.072471,
		-0.427559, -0.508381, -0.747490,
		37.327656, 38.785137, 26.265375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914402, 38.921284, 27.027393>,  <37.626949, 39.141006, 26.788618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914402, 38.921284, 27.027393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019493, 38.682632, 26.724075>,  <37.082546, 38.539440, 26.542086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019493, 38.682632, 26.724075>,  <36.914402, 38.921284, 27.027393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019493, 38.682632, 26.724075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225476, -0.802106, 0.552980,
		-0.938156, 0.025696, -0.345258,
		0.262724, -0.596629, -0.758294,
		37.098309, 38.503643, 26.496588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399704, 38.353611, 27.090084>,  <36.914402, 38.921284, 27.027393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399704, 38.353611, 27.090084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723118, 38.218231, 26.897533>,  <36.917168, 38.137005, 26.782003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723118, 38.218231, 26.897533>,  <36.399704, 38.353611, 27.090084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723118, 38.218231, 26.897533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023584, -0.836028, 0.548180,
		-0.587975, -0.431870, -0.683940,
		0.808536, -0.338446, -0.481378,
		36.965679, 38.116699, 26.753120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279953, 37.660542, 26.876783>,  <36.399704, 38.353611, 27.090084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279953, 37.660542, 26.876783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679375, 37.681595, 26.872444>,  <36.919029, 37.694225, 26.869841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.679375, 37.681595, 26.872444>,  <36.279953, 37.660542, 26.876783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679375, 37.681595, 26.872444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052446, -0.910448, 0.410285,
		0.011716, -0.410261, -0.911893,
		0.998555, 0.052632, -0.010850,
		36.978943, 37.697384, 26.869188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627586, 37.035503, 26.558231>,  <36.279953, 37.660542, 26.876783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627586, 37.035503, 26.558231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879398, 37.212063, 26.813999>,  <37.030487, 37.317997, 26.967461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.879398, 37.212063, 26.813999>,  <36.627586, 37.035503, 26.558231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879398, 37.212063, 26.813999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135704, -0.872776, 0.468878,
		0.765031, -0.208403, -0.609341,
		0.629534, 0.441396, 0.639419,
		37.068260, 37.344482, 27.005825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076981, 36.537441, 26.747404>,  <36.627586, 37.035503, 26.558231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076981, 36.537441, 26.747404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132904, 36.808716, 27.035992>,  <37.166458, 36.971481, 27.209145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132904, 36.808716, 27.035992>,  <37.076981, 36.537441, 26.747404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132904, 36.808716, 27.035992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075049, -0.733788, 0.675221,
		0.987330, -0.040257, -0.153488,
		0.139810, 0.678185, 0.721469,
		37.174847, 37.012173, 27.252432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513817, 36.169930, 27.093803>,  <37.076981, 36.537441, 26.747404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513817, 36.169930, 27.093803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376457, 36.459274, 27.333412>,  <37.294041, 36.632881, 27.477177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.376457, 36.459274, 27.333412>,  <37.513817, 36.169930, 27.093803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376457, 36.459274, 27.333412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038309, -0.648064, 0.760622,
		0.938407, 0.238250, 0.250257,
		-0.343400, 0.723360, 0.599021,
		37.273438, 36.676281, 27.513119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766991, 35.973724, 27.753807>,  <37.513817, 36.169930, 27.093803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766991, 35.973724, 27.753807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458229, 36.222111, 27.808317>,  <37.272972, 36.371143, 27.841024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458229, 36.222111, 27.808317>,  <37.766991, 35.973724, 27.753807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458229, 36.222111, 27.808317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246261, -0.489680, 0.836403,
		0.586106, 0.612063, 0.530904,
		-0.771904, 0.620961, 0.136277,
		37.226658, 36.408398, 27.849199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.086170, 34.222149, 31.390354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825035, 34.436974, 31.604033>,  <40.668354, 34.565868, 31.732239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.825035, 34.436974, 31.604033>,  <41.086170, 34.222149, 31.390354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825035, 34.436974, 31.604033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428011, -0.320317, 0.845106,
		0.624985, 0.780361, -0.020752,
		-0.652840, 0.537061, 0.534196,
		40.629185, 34.598091, 31.764292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496048, 34.456833, 31.931530>,  <41.086170, 34.222149, 31.390354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496048, 34.456833, 31.931530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.120445, 34.513866, 32.056713>,  <40.895084, 34.548088, 32.131824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.120445, 34.513866, 32.056713>,  <41.496048, 34.456833, 31.931530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120445, 34.513866, 32.056713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273935, -0.240090, 0.931298,
		0.207930, 0.960222, 0.186385,
		-0.939002, 0.142588, 0.312960,
		40.838745, 34.556644, 32.150600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527752, 34.818611, 32.527676>,  <41.496048, 34.456833, 31.931530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527752, 34.818611, 32.527676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171612, 34.636505, 32.526878>,  <40.957928, 34.527241, 32.526398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171612, 34.636505, 32.526878>,  <41.527752, 34.818611, 32.527676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171612, 34.636505, 32.526878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159397, -0.315832, 0.935330,
		-0.426452, 0.832458, 0.353770,
		-0.890355, -0.455263, -0.001996,
		40.904507, 34.499928, 32.526279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298908, 34.942360, 33.209641>,  <41.527752, 34.818611, 32.527676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298908, 34.942360, 33.209641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077175, 34.644360, 33.061211>,  <40.944138, 34.465561, 32.972153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077175, 34.644360, 33.061211>,  <41.298908, 34.942360, 33.209641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077175, 34.644360, 33.061211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252563, -0.274252, 0.927900,
		-0.793051, 0.608083, -0.036133,
		-0.554330, -0.744998, -0.371075,
		40.910877, 34.420860, 32.949886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643532, 35.002323, 33.517979>,  <41.298908, 34.942360, 33.209641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643532, 35.002323, 33.517979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659134, 34.612507, 33.429668>,  <40.668495, 34.378616, 33.376682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659134, 34.612507, 33.429668>,  <40.643532, 35.002323, 33.517979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659134, 34.612507, 33.429668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364341, -0.219605, 0.905002,
		-0.930448, 0.045139, -0.363632,
		0.039004, -0.974544, -0.220777,
		40.670834, 34.320145, 33.363434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023800, 34.817028, 33.720379>,  <40.643532, 35.002323, 33.517979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023800, 34.817028, 33.720379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260818, 34.495430, 33.700443>,  <40.403030, 34.302471, 33.688480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.260818, 34.495430, 33.700443>,  <40.023800, 34.817028, 33.720379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260818, 34.495430, 33.700443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371138, -0.327396, 0.868947,
		-0.714944, -0.496394, -0.492389,
		0.592547, -0.803993, -0.049839,
		40.438583, 34.254230, 33.685493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531876, 34.166874, 33.831589>,  <40.023800, 34.817028, 33.720379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531876, 34.166874, 33.831589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910999, 34.075054, 33.920097>,  <40.138474, 34.019962, 33.973202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910999, 34.075054, 33.920097>,  <39.531876, 34.166874, 33.831589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910999, 34.075054, 33.920097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311918, -0.523853, 0.792644,
		-0.066037, -0.820296, -0.568114,
		0.947811, -0.229549, 0.221272,
		40.195343, 34.006187, 33.986477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597569, 33.410610, 33.950253>,  <39.531876, 34.166874, 33.831589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597569, 33.410610, 33.950253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940598, 33.527348, 34.119671>,  <40.146416, 33.597389, 34.221321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.940598, 33.527348, 34.119671>,  <39.597569, 33.410610, 33.950253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940598, 33.527348, 34.119671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228247, -0.522014, 0.821830,
		0.460945, -0.801454, -0.381053,
		0.857574, 0.291844, 0.423549,
		40.197868, 33.614902, 34.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872349, 32.812832, 34.243187>,  <39.597569, 33.410610, 33.950253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872349, 32.812832, 34.243187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059551, 33.116478, 34.424164>,  <40.171875, 33.298668, 34.532749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.059551, 33.116478, 34.424164>,  <39.872349, 32.812832, 34.243187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059551, 33.116478, 34.424164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341989, -0.316507, 0.884798,
		0.814868, -0.568825, 0.111482,
		0.468010, 0.759119, 0.452443,
		40.199955, 33.344215, 34.559898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362728, 32.568375, 34.769753>,  <39.872349, 32.812832, 34.243187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362728, 32.568375, 34.769753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.257515, 32.940086, 34.873486>,  <40.194389, 33.163113, 34.935726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.257515, 32.940086, 34.873486>,  <40.362728, 32.568375, 34.769753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257515, 32.940086, 34.873486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308485, -0.335690, 0.890028,
		0.914140, 0.154106, 0.374966,
		-0.263031, 0.929281, 0.259328,
		40.178604, 33.218872, 34.951283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708366, 32.722977, 35.437893>,  <40.362728, 32.568375, 34.769753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708366, 32.722977, 35.437893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381096, 32.951775, 35.414574>,  <40.184734, 33.089054, 35.400581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381096, 32.951775, 35.414574>,  <40.708366, 32.722977, 35.437893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381096, 32.951775, 35.414574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227863, -0.229492, 0.946262,
		0.527882, 0.787496, 0.318103,
		-0.818180, 0.571999, -0.058297,
		40.135643, 33.123375, 35.397083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631168, 33.028419, 36.034725>,  <40.708366, 32.722977, 35.437893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631168, 33.028419, 36.034725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262539, 33.068134, 35.884605>,  <40.041363, 33.091965, 35.794533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262539, 33.068134, 35.884605>,  <40.631168, 33.028419, 36.034725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262539, 33.068134, 35.884605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387968, -0.201400, 0.899399,
		0.013712, 0.974464, 0.224124,
		-0.921571, 0.099286, -0.375299,
		39.986069, 33.097919, 35.772015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381786, 33.741550, 36.208988>,  <40.631168, 33.028419, 36.034725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381786, 33.741550, 36.208988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333633, 33.452255, 35.936977>,  <40.304741, 33.278679, 35.773769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333633, 33.452255, 35.936977>,  <40.381786, 33.741550, 36.208988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333633, 33.452255, 35.936977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992628, -0.097381, -0.072153,
		-0.014038, -0.683701, 0.729628,
		-0.120382, -0.723236, -0.680028,
		40.297520, 33.235283, 35.732967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652954, 33.463871, 36.853107>,  <40.381786, 33.741550, 36.208988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652954, 33.463871, 36.853107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413387, 33.160660, 36.749809>,  <40.269646, 32.978733, 36.687828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.413387, 33.160660, 36.749809>,  <40.652954, 33.463871, 36.853107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413387, 33.160660, 36.749809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763880, -0.637579, 0.099904,
		-0.240383, -0.137436, 0.960899,
		-0.598918, -0.758027, -0.258248,
		40.233711, 32.933250, 36.672337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884018, 33.970058, 37.341965>,  <40.652954, 33.463871, 36.853107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884018, 33.970058, 37.341965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771366, 34.134167, 37.688919>,  <40.703773, 34.232632, 37.897091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.771366, 34.134167, 37.688919>,  <40.884018, 33.970058, 37.341965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771366, 34.134167, 37.688919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287062, 0.826551, -0.484158,
		-0.915576, -0.385348, -0.115010,
		-0.281630, 0.410268, 0.867390,
		40.686878, 34.257248, 37.949135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161484, 34.167717, 37.218792>,  <40.884018, 33.970058, 37.341965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161484, 34.167717, 37.218792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291786, 34.385941, 37.527660>,  <40.369968, 34.516872, 37.712982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291786, 34.385941, 37.527660>,  <40.161484, 34.167717, 37.218792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291786, 34.385941, 37.527660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132778, 0.835027, -0.533948,
		-0.936083, 0.071410, 0.344454,
		0.325758, 0.545556, 0.772173,
		40.389515, 34.549606, 37.759312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631996, 34.732147, 37.286816>,  <40.161484, 34.167717, 37.218792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631996, 34.732147, 37.286816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962593, 34.855335, 37.475307>,  <40.160954, 34.929249, 37.588402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962593, 34.855335, 37.475307>,  <39.631996, 34.732147, 37.286816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962593, 34.855335, 37.475307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080966, 0.893410, -0.441886,
		-0.557089, 0.327064, 0.763335,
		0.826496, 0.307975, 0.471228,
		40.210541, 34.947727, 37.616676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511963, 35.369144, 37.594971>,  <39.631996, 34.732147, 37.286816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511963, 35.369144, 37.594971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904808, 35.341133, 37.525051>,  <40.140514, 35.324326, 37.483101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.904808, 35.341133, 37.525051>,  <39.511963, 35.369144, 37.594971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904808, 35.341133, 37.525051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070670, 0.723345, -0.686860,
		0.174537, 0.686926, 0.705457,
		0.982111, -0.070028, -0.174795,
		40.199440, 35.320126, 37.472614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692348, 36.038628, 37.427681>,  <39.511963, 35.369144, 37.594971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692348, 36.038628, 37.427681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998367, 35.818451, 37.293991>,  <40.181980, 35.686344, 37.213776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998367, 35.818451, 37.293991>,  <39.692348, 36.038628, 37.427681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998367, 35.818451, 37.293991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062698, 0.580214, -0.812047,
		0.640909, 0.600303, 0.478406,
		0.765052, -0.550444, -0.334227,
		40.227882, 35.653316, 37.193722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141804, 36.523869, 37.161560>,  <39.692348, 36.038628, 37.427681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141804, 36.523869, 37.161560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299210, 36.191128, 37.005016>,  <40.393654, 35.991482, 36.911091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299210, 36.191128, 37.005016>,  <40.141804, 36.523869, 37.161560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299210, 36.191128, 37.005016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110143, 0.465299, -0.878274,
		0.912695, 0.302512, 0.274727,
		0.393519, -0.831855, -0.391356,
		40.417267, 35.941570, 36.887611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651112, 36.823826, 36.692005>,  <40.141804, 36.523869, 37.161560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651112, 36.823826, 36.692005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594490, 36.443165, 36.582962>,  <40.560516, 36.214767, 36.517536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.594490, 36.443165, 36.582962>,  <40.651112, 36.823826, 36.692005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594490, 36.443165, 36.582962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076457, 0.264048, -0.961475,
		0.986973, -0.156944, 0.035383,
		-0.141555, -0.951655, -0.272607,
		40.552025, 36.157669, 36.501179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102882, 36.703442, 36.160900>,  <40.651112, 36.823826, 36.692005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102882, 36.703442, 36.160900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816555, 36.428207, 36.113335>,  <40.644760, 36.263065, 36.084797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816555, 36.428207, 36.113335>,  <41.102882, 36.703442, 36.160900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816555, 36.428207, 36.113335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092571, 0.262294, -0.960538,
		0.692125, -0.676562, -0.251451,
		-0.715817, -0.688089, -0.118910,
		40.601810, 36.221783, 36.077663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277237, 36.299484, 35.543175>,  <41.102882, 36.703442, 36.160900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277237, 36.299484, 35.543175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883923, 36.293236, 35.615726>,  <40.647934, 36.289486, 35.659256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883923, 36.293236, 35.615726>,  <41.277237, 36.299484, 35.543175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883923, 36.293236, 35.615726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181009, -0.022453, -0.983225,
		0.019435, -0.999626, 0.019249,
		-0.983290, -0.015625, 0.181377,
		40.588936, 36.288551, 35.670139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084419, 35.883755, 35.035034>,  <41.277237, 36.299484, 35.543175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084419, 35.883755, 35.035034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749416, 36.067471, 35.153446>,  <40.548416, 36.177700, 35.224491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749416, 36.067471, 35.153446>,  <41.084419, 35.883755, 35.035034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749416, 36.067471, 35.153446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216902, 0.217808, -0.951584,
		-0.501533, -0.861168, -0.082794,
		-0.837507, 0.459292, 0.296027,
		40.498165, 36.205257, 35.242256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562496, 35.753059, 34.482597>,  <41.084419, 35.883755, 35.035034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562496, 35.753059, 34.482597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364063, 36.048805, 34.664692>,  <40.245003, 36.226254, 34.773949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364063, 36.048805, 34.664692>,  <40.562496, 35.753059, 34.482597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364063, 36.048805, 34.664692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245435, 0.383512, -0.890326,
		-0.832865, -0.553407, -0.008787,
		-0.496082, 0.739364, 0.455239,
		40.215237, 36.270615, 34.801262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783302, 35.803398, 34.236397>,  <40.562496, 35.753059, 34.482597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783302, 35.803398, 34.236397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931641, 36.145489, 34.381203>,  <40.020645, 36.350742, 34.468086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.931641, 36.145489, 34.381203>,  <39.783302, 35.803398, 34.236397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931641, 36.145489, 34.381203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090157, 0.421122, -0.902512,
		-0.924306, 0.302058, 0.233278,
		0.370850, 0.855229, 0.362013,
		40.042896, 36.402058, 34.489807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303860, 36.282284, 34.056694>,  <39.783302, 35.803398, 34.236397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303860, 36.282284, 34.056694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641567, 36.493904, 34.090927>,  <39.844193, 36.620876, 34.111469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.641567, 36.493904, 34.090927>,  <39.303860, 36.282284, 34.056694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641567, 36.493904, 34.090927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214102, 0.479355, -0.851105,
		-0.491300, 0.700234, 0.517973,
		0.844266, 0.529047, 0.085586,
		39.894848, 36.652618, 34.116604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181423, 36.861225, 33.597645>,  <39.303860, 36.282284, 34.056694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181423, 36.861225, 33.597645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576607, 36.890415, 33.652203>,  <39.813717, 36.907928, 33.684937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576607, 36.890415, 33.652203>,  <39.181423, 36.861225, 33.597645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576607, 36.890415, 33.652203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081437, 0.504292, -0.859684,
		-0.131521, 0.860444, 0.492279,
		0.987963, 0.072976, 0.136397,
		39.872997, 36.912308, 33.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931450, 37.253029, 34.091164>,  <39.181423, 36.861225, 33.597645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931450, 37.253029, 34.091164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682560, 37.522858, 34.250057>,  <38.533226, 37.684753, 34.345394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.682560, 37.522858, 34.250057>,  <38.931450, 37.253029, 34.091164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682560, 37.522858, 34.250057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147036, -0.599102, 0.787056,
		0.768906, 0.431318, 0.471962,
		-0.622225, 0.674568, 0.397234,
		38.495892, 37.725227, 34.369228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175331, 37.424820, 34.838223>,  <38.931450, 37.253029, 34.091164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175331, 37.424820, 34.838223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789707, 37.522003, 34.795223>,  <38.558331, 37.580315, 34.769424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789707, 37.522003, 34.795223>,  <39.175331, 37.424820, 34.838223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789707, 37.522003, 34.795223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238642, -0.614097, 0.752286,
		0.116762, 0.750904, 0.650008,
		-0.964062, 0.242957, -0.107494,
		38.500488, 37.594891, 34.762974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962509, 37.485470, 35.501884>,  <39.175331, 37.424820, 34.838223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962509, 37.485470, 35.501884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632103, 37.439751, 35.281109>,  <38.433861, 37.412319, 35.148643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632103, 37.439751, 35.281109>,  <38.962509, 37.485470, 35.501884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632103, 37.439751, 35.281109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336306, -0.685881, 0.645342,
		-0.452322, 0.718682, 0.528110,
		-0.826016, -0.114296, -0.551936,
		38.384296, 37.405460, 35.115528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443996, 37.670654, 35.932037>,  <38.962509, 37.485470, 35.501884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443996, 37.670654, 35.932037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304504, 37.444061, 35.633381>,  <38.220810, 37.308105, 35.454185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.304504, 37.444061, 35.633381>,  <38.443996, 37.670654, 35.932037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304504, 37.444061, 35.633381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351767, -0.659302, 0.664515,
		-0.868703, 0.494385, 0.030650,
		-0.348734, -0.566485, -0.746646,
		38.199883, 37.274117, 35.409386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605949, 37.652195, 35.902103>,  <38.443996, 37.670654, 35.932037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605949, 37.652195, 35.902103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767555, 37.326424, 35.735497>,  <37.864517, 37.130962, 35.635532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767555, 37.326424, 35.735497>,  <37.605949, 37.652195, 35.902103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767555, 37.326424, 35.735497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403265, -0.567270, 0.718041,
		-0.821066, -0.122133, -0.557614,
		0.404014, -0.814425, -0.416514,
		37.888760, 37.082096, 35.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022778, 37.230892, 35.795113>,  <37.605949, 37.652195, 35.902103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022778, 37.230892, 35.795113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356537, 37.010429, 35.796181>,  <37.556793, 36.878151, 35.796822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356537, 37.010429, 35.796181>,  <37.022778, 37.230892, 35.795113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356537, 37.010429, 35.796181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430019, -0.647958, 0.628676,
		-0.344771, -0.525713, -0.777662,
		0.834396, -0.551159, 0.002670,
		37.606857, 36.845081, 35.796982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769558, 36.643791, 35.838871>,  <37.022778, 37.230892, 35.795113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769558, 36.643791, 35.838871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141235, 36.512947, 35.907696>,  <37.364243, 36.434441, 35.948990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.141235, 36.512947, 35.907696>,  <36.769558, 36.643791, 35.838871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141235, 36.512947, 35.907696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366947, -0.760769, 0.535332,
		-0.044212, -0.560563, -0.826931,
		0.929190, -0.327108, 0.172062,
		37.419994, 36.414814, 35.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703682, 35.876343, 35.809818>,  <36.769558, 36.643791, 35.838871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703682, 35.876343, 35.809818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047058, 35.961491, 35.996483>,  <37.253082, 36.012581, 36.108482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047058, 35.961491, 35.996483>,  <36.703682, 35.876343, 35.809818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047058, 35.961491, 35.996483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156870, -0.757254, 0.634002,
		0.488339, -0.617456, -0.616663,
		0.858439, 0.212871, 0.466657,
		37.304588, 36.025352, 36.136478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049580, 35.236980, 35.858646>,  <36.703682, 35.876343, 35.809818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049580, 35.236980, 35.858646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206303, 35.472469, 36.141457>,  <37.300339, 35.613762, 36.311142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.206303, 35.472469, 36.141457>,  <37.049580, 35.236980, 35.858646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206303, 35.472469, 36.141457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040041, -0.756830, 0.652384,
		0.919174, -0.283922, -0.272961,
		0.391811, 0.588725, 0.707027,
		37.323845, 35.649086, 36.353565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617916, 34.820808, 36.223900>,  <37.049580, 35.236980, 35.858646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617916, 34.820808, 36.223900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489407, 35.117813, 36.459003>,  <37.412300, 35.296017, 36.600067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489407, 35.117813, 36.459003>,  <37.617916, 34.820808, 36.223900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489407, 35.117813, 36.459003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039408, -0.630609, 0.775100,
		0.946167, 0.225855, 0.231858,
		-0.321272, 0.742511, 0.587761,
		37.393024, 35.340565, 36.635330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989811, 34.821812, 36.892021>,  <37.617916, 34.820808, 36.223900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989811, 34.821812, 36.892021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.665771, 35.038681, 36.981274>,  <37.471348, 35.168804, 37.034824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.665771, 35.038681, 36.981274>,  <37.989811, 34.821812, 36.892021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665771, 35.038681, 36.981274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159143, -0.569634, 0.806344,
		0.564278, 0.617711, 0.547744,
		-0.810101, 0.542172, 0.223128,
		37.422741, 35.201332, 37.048210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950890, 35.268730, 37.517448>,  <37.989811, 34.821812, 36.892021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950890, 35.268730, 37.517448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590233, 35.125923, 37.419811>,  <37.373840, 35.040237, 37.361229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590233, 35.125923, 37.419811>,  <37.950890, 35.268730, 37.517448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590233, 35.125923, 37.419811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118034, -0.339836, 0.933049,
		-0.416071, 0.870085, 0.264268,
		-0.901639, -0.357022, -0.244095,
		37.319740, 35.018818, 37.346584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.777191, 40.214687, 31.595936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382404, 40.164894, 31.636738>,  <39.145535, 40.135017, 31.661219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382404, 40.164894, 31.636738>,  <39.777191, 40.214687, 31.595936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382404, 40.164894, 31.636738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119759, -0.144675, 0.982205,
		-0.107507, 0.981618, 0.157697,
		-0.986965, -0.124480, 0.102004,
		39.086315, 40.127552, 31.667339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791565, 40.224461, 32.391087>,  <39.777191, 40.214687, 31.595936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791565, 40.224461, 32.391087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412678, 40.143234, 32.291859>,  <39.185345, 40.094498, 32.232323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412678, 40.143234, 32.291859>,  <39.791565, 40.224461, 32.391087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412678, 40.143234, 32.291859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194963, -0.249394, 0.948574,
		-0.254494, 0.946872, 0.196639,
		-0.947218, -0.203069, -0.248074,
		39.128513, 40.082314, 32.217438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243069, 40.484810, 32.984829>,  <39.791565, 40.224461, 32.391087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243069, 40.484810, 32.984829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093597, 40.195786, 32.752186>,  <39.003914, 40.022369, 32.612598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093597, 40.195786, 32.752186>,  <39.243069, 40.484810, 32.984829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093597, 40.195786, 32.752186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347441, -0.472345, 0.810046,
		-0.860029, 0.504770, -0.074543,
		-0.373677, -0.722563, -0.581609,
		38.981495, 39.979015, 32.577702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587387, 40.310173, 33.264511>,  <39.243069, 40.484810, 32.984829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587387, 40.310173, 33.264511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683899, 39.984901, 33.052650>,  <38.741806, 39.789738, 32.925533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683899, 39.984901, 33.052650>,  <38.587387, 40.310173, 33.264511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683899, 39.984901, 33.052650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204818, -0.576151, 0.791265,
		-0.948595, -0.082436, -0.305567,
		0.241281, -0.813176, -0.529649,
		38.756283, 39.740948, 32.893757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004726, 39.895309, 33.390030>,  <38.587387, 40.310173, 33.264511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004726, 39.895309, 33.390030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307159, 39.655807, 33.284325>,  <38.488617, 39.512108, 33.220901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307159, 39.655807, 33.284325>,  <38.004726, 39.895309, 33.390030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307159, 39.655807, 33.284325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323161, -0.692662, 0.644815,
		-0.569130, -0.402133, -0.717203,
		0.756081, -0.598755, -0.264262,
		38.533985, 39.476181, 33.205048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739792, 39.196735, 33.419777>,  <38.004726, 39.895309, 33.390030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739792, 39.196735, 33.419777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136974, 39.150078, 33.428143>,  <38.375282, 39.122086, 33.433163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136974, 39.150078, 33.428143>,  <37.739792, 39.196735, 33.419777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136974, 39.150078, 33.428143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107844, -0.816282, 0.567497,
		-0.049118, -0.565754, -0.823110,
		0.992954, -0.116642, 0.020919,
		38.434860, 39.115086, 33.434418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854771, 38.580563, 33.121140>,  <37.739792, 39.196735, 33.419777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854771, 38.580563, 33.121140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158466, 38.682995, 33.360466>,  <38.340683, 38.744453, 33.504063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158466, 38.682995, 33.360466>,  <37.854771, 38.580563, 33.121140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158466, 38.682995, 33.360466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082562, -0.874011, 0.478841,
		0.645555, -0.412953, -0.642440,
		0.759238, 0.256077, 0.598316,
		38.386238, 38.759819, 33.539959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167576, 37.951744, 33.235733>,  <37.854771, 38.580563, 33.121140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167576, 37.951744, 33.235733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303787, 38.179577, 33.534962>,  <38.385513, 38.316277, 33.714500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303787, 38.179577, 33.534962>,  <38.167576, 37.951744, 33.235733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303787, 38.179577, 33.534962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059591, -0.780952, 0.621742,
		0.938345, -0.256298, -0.231992,
		0.340526, 0.569583, 0.748076,
		38.405945, 38.350452, 33.759384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641525, 37.585316, 33.523022>,  <38.167576, 37.951744, 33.235733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641525, 37.585316, 33.523022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536907, 37.841911, 33.811493>,  <38.474136, 37.995869, 33.984573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536907, 37.841911, 33.811493>,  <38.641525, 37.585316, 33.523022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536907, 37.841911, 33.811493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058284, -0.735323, 0.675206,
		0.963431, 0.218628, 0.154929,
		-0.261542, 0.641485, 0.721175,
		38.458447, 38.034355, 34.027847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418652, 37.620125, 33.415970>,  <38.641525, 37.585316, 33.523022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418652, 37.620125, 33.415970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746033, 37.392513, 33.384109>,  <39.942459, 37.255947, 33.364994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746033, 37.392513, 33.384109>,  <39.418652, 37.620125, 33.415970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746033, 37.392513, 33.384109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226394, 0.446787, -0.865521,
		0.528095, 0.690353, 0.494498,
		0.818451, -0.569029, -0.079654,
		39.991570, 37.221806, 33.360214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092613, 38.095886, 33.197739>,  <39.418652, 37.620125, 33.415970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092613, 38.095886, 33.197739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191174, 37.722374, 33.093941>,  <40.250309, 37.498268, 33.031662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191174, 37.722374, 33.093941>,  <40.092613, 38.095886, 33.197739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191174, 37.722374, 33.093941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385801, 0.340130, -0.857595,
		0.889069, 0.111199, 0.444062,
		0.246403, -0.933780, -0.259498,
		40.265095, 37.442238, 33.016090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682098, 38.220646, 32.947746>,  <40.092613, 38.095886, 33.197739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682098, 38.220646, 32.947746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631176, 37.850487, 32.804958>,  <40.600620, 37.628391, 32.719288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631176, 37.850487, 32.804958>,  <40.682098, 38.220646, 32.947746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631176, 37.850487, 32.804958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530835, 0.240445, -0.812650,
		0.837858, -0.292948, 0.460625,
		-0.127309, -0.925401, -0.356966,
		40.592983, 37.572865, 32.697868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364285, 38.013813, 32.780571>,  <40.682098, 38.220646, 32.947746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364285, 38.013813, 32.780571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102642, 37.800171, 32.566330>,  <40.945656, 37.671986, 32.437786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102642, 37.800171, 32.566330>,  <41.364285, 38.013813, 32.780571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102642, 37.800171, 32.566330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525861, 0.187869, -0.829564,
		0.543701, -0.824276, 0.157981,
		-0.654110, -0.534110, -0.535599,
		40.906410, 37.639938, 32.405651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819435, 37.628098, 32.344330>,  <41.364285, 38.013813, 32.780571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819435, 37.628098, 32.344330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455708, 37.617401, 32.178238>,  <41.237469, 37.610981, 32.078583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455708, 37.617401, 32.178238>,  <41.819435, 37.628098, 32.344330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455708, 37.617401, 32.178238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405322, 0.168640, -0.898485,
		0.094052, -0.985315, -0.142509,
		-0.909323, -0.026742, -0.415231,
		41.182911, 37.609379, 32.053669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886944, 37.111946, 31.871323>,  <41.819435, 37.628098, 32.344330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886944, 37.111946, 31.871323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591286, 37.357174, 31.759739>,  <41.413891, 37.504311, 31.692789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591286, 37.357174, 31.759739>,  <41.886944, 37.111946, 31.871323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591286, 37.357174, 31.759739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418425, 0.093391, -0.903437,
		-0.527814, -0.784492, -0.325552,
		-0.739143, 0.613066, -0.278958,
		41.369541, 37.541092, 31.676052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949619, 36.913479, 31.219219>,  <41.886944, 37.111946, 31.871323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949619, 36.913479, 31.219219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735878, 37.249317, 31.258276>,  <41.607632, 37.450821, 31.281710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735878, 37.249317, 31.258276>,  <41.949619, 36.913479, 31.219219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735878, 37.249317, 31.258276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232882, 0.257287, -0.937854,
		-0.812544, -0.478409, -0.333011,
		-0.534357, 0.839600, 0.097644,
		41.575569, 37.501198, 31.287569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563766, 36.945198, 30.622150>,  <41.949619, 36.913479, 31.219219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563766, 36.945198, 30.622150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582886, 37.323658, 30.750217>,  <41.594357, 37.550735, 30.827057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582886, 37.323658, 30.750217>,  <41.563766, 36.945198, 30.622150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582886, 37.323658, 30.750217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138176, 0.311189, -0.940249,
		-0.989253, 0.089185, -0.115861,
		0.047802, 0.946154, 0.320168,
		41.597225, 37.607506, 30.846268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111309, 37.271923, 30.205273>,  <41.563766, 36.945198, 30.622150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111309, 37.271923, 30.205273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348412, 37.547386, 30.372309>,  <41.490673, 37.712666, 30.472530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348412, 37.547386, 30.372309>,  <41.111309, 37.271923, 30.205273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348412, 37.547386, 30.372309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070692, 0.472011, -0.878754,
		-0.802271, 0.550410, 0.231106,
		0.592760, 0.688661, 0.417590,
		41.526241, 37.753986, 30.497585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866798, 37.987026, 30.001986>,  <41.111309, 37.271923, 30.205273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866798, 37.987026, 30.001986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259670, 38.022816, 30.068098>,  <41.495392, 38.044289, 30.107765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259670, 38.022816, 30.068098>,  <40.866798, 37.987026, 30.001986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259670, 38.022816, 30.068098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100063, 0.495460, -0.862848,
		-0.159093, 0.864010, 0.477677,
		0.982180, 0.089476, 0.165279,
		41.554325, 38.049660, 30.117682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986996, 38.716190, 29.865391>,  <40.866798, 37.987026, 30.001986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986996, 38.716190, 29.865391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349201, 38.547005, 29.851860>,  <41.566525, 38.445496, 29.843740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349201, 38.547005, 29.851860>,  <40.986996, 38.716190, 29.865391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349201, 38.547005, 29.851860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188557, 0.472538, -0.860903,
		0.380113, 0.773183, 0.507644,
		0.905517, -0.422960, -0.033828,
		41.620857, 38.420116, 29.841711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443085, 39.243202, 29.581549>,  <40.986996, 38.716190, 29.865391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443085, 39.243202, 29.581549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685989, 38.927052, 29.549185>,  <41.831734, 38.737362, 29.529766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685989, 38.927052, 29.549185>,  <41.443085, 39.243202, 29.581549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685989, 38.927052, 29.549185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424748, 0.409021, -0.807646,
		0.671434, 0.456085, 0.584091,
		0.607260, -0.790372, -0.080909,
		41.868168, 38.689941, 29.524912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118561, 39.486237, 29.623894>,  <41.443085, 39.243202, 29.581549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118561, 39.486237, 29.623894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139313, 39.133286, 29.436821>,  <42.151764, 38.921516, 29.324577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139313, 39.133286, 29.436821>,  <42.118561, 39.486237, 29.623894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139313, 39.133286, 29.436821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471800, 0.434411, -0.767262,
		0.880178, -0.180843, 0.438843,
		0.051884, -0.882373, -0.467681,
		42.154877, 38.868572, 29.296516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777462, 39.522804, 29.309643>,  <42.118561, 39.486237, 29.623894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777462, 39.522804, 29.309643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566414, 39.243595, 29.115988>,  <42.439785, 39.076069, 28.999794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566414, 39.243595, 29.115988>,  <42.777462, 39.522804, 29.309643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566414, 39.243595, 29.115988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328761, 0.357722, -0.874043,
		0.783285, -0.620327, 0.040741,
		-0.527618, -0.698019, -0.484137,
		42.408127, 39.034191, 28.970747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.794983, 39.167625, 27.652237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119034, 39.288303, 27.853304>,  <34.313465, 39.360710, 27.973944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119034, 39.288303, 27.853304>,  <33.794983, 39.167625, 27.652237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119034, 39.288303, 27.853304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162174, -0.708639, 0.686681,
		0.563375, -0.637820, -0.525162,
		0.810129, 0.301691, 0.502667,
		34.362072, 39.378811, 28.004105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047302, 38.544834, 27.890341>,  <33.794983, 39.167625, 27.652237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047302, 38.544834, 27.890341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244366, 38.813702, 28.111422>,  <34.362602, 38.975021, 28.244070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.244366, 38.813702, 28.111422>,  <34.047302, 38.544834, 27.890341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244366, 38.813702, 28.111422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009045, -0.631135, 0.775620,
		0.870178, -0.387112, -0.304852,
		0.492654, 0.672171, 0.552701,
		34.392162, 39.015354, 28.277231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737774, 38.179287, 28.228483>,  <34.047302, 38.544834, 27.890341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737774, 38.179287, 28.228483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628036, 38.501705, 28.438255>,  <34.562195, 38.695156, 28.564119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628036, 38.501705, 28.438255>,  <34.737774, 38.179287, 28.228483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628036, 38.501705, 28.438255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021916, -0.539972, 0.841398,
		0.961383, 0.242323, 0.130472,
		-0.274341, 0.806046, 0.524430,
		34.545734, 38.743519, 28.595585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093460, 38.140812, 28.876204>,  <34.737774, 38.179287, 28.228483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093460, 38.140812, 28.876204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826138, 38.424408, 28.966272>,  <34.665745, 38.594566, 29.020313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.826138, 38.424408, 28.966272>,  <35.093460, 38.140812, 28.876204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826138, 38.424408, 28.966272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162456, -0.434492, 0.885903,
		0.725931, 0.555474, 0.405553,
		-0.668306, 0.708989, 0.225171,
		34.625645, 38.637104, 29.033823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308601, 38.333420, 29.533743>,  <35.093460, 38.140812, 28.876204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308601, 38.333420, 29.533743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.925526, 38.439735, 29.489578>,  <34.695679, 38.503525, 29.463079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.925526, 38.439735, 29.489578>,  <35.308601, 38.333420, 29.533743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925526, 38.439735, 29.489578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212542, -0.394462, 0.893994,
		0.194059, 0.879634, 0.434263,
		-0.957688, 0.265787, -0.110410,
		34.638218, 38.519470, 29.456455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172733, 38.490387, 30.227448>,  <35.308601, 38.333420, 29.533743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172733, 38.490387, 30.227448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815983, 38.450237, 30.051044>,  <34.601933, 38.426147, 29.945204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.815983, 38.450237, 30.051044>,  <35.172733, 38.490387, 30.227448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815983, 38.450237, 30.051044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351165, -0.460817, 0.815065,
		-0.285033, 0.881801, 0.375744,
		-0.891874, -0.100372, -0.441005,
		34.548420, 38.420124, 29.918743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781174, 38.914448, 30.607283>,  <35.172733, 38.490387, 30.227448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781174, 38.914448, 30.607283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566750, 38.619957, 30.442062>,  <34.438095, 38.443264, 30.342930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.566750, 38.619957, 30.442062>,  <34.781174, 38.914448, 30.607283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566750, 38.619957, 30.442062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233664, -0.340770, 0.910647,
		-0.811197, 0.584677, 0.010644,
		-0.536061, -0.736226, -0.413049,
		34.405930, 38.399090, 30.318148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222301, 38.849949, 31.062410>,  <34.781174, 38.914448, 30.607283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222301, 38.849949, 31.062410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177437, 38.505280, 30.864443>,  <34.150520, 38.298477, 30.745663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.177437, 38.505280, 30.864443>,  <34.222301, 38.849949, 31.062410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177437, 38.505280, 30.864443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296586, -0.446331, 0.844290,
		-0.948397, 0.241479, -0.205500,
		-0.112157, -0.861671, -0.494918,
		34.143791, 38.246777, 30.715967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623859, 38.548733, 31.240400>,  <34.222301, 38.849949, 31.062410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623859, 38.548733, 31.240400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.846600, 38.237598, 31.123861>,  <33.980244, 38.050919, 31.053938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.846600, 38.237598, 31.123861>,  <33.623859, 38.548733, 31.240400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846600, 38.237598, 31.123861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321148, -0.525108, 0.788115,
		-0.766014, -0.345299, -0.542210,
		0.556854, -0.777837, -0.291348,
		34.013657, 38.004246, 31.036457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225025, 37.854168, 31.331707>,  <33.623859, 38.548733, 31.240400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225025, 37.854168, 31.331707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608032, 37.740578, 31.311657>,  <33.837837, 37.672424, 31.299627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.608032, 37.740578, 31.311657>,  <33.225025, 37.854168, 31.331707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608032, 37.740578, 31.311657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166439, -0.686193, 0.708122,
		-0.235484, -0.669699, -0.704309,
		0.957520, -0.283976, -0.050123,
		33.895287, 37.655384, 31.296619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240707, 37.101879, 31.277781>,  <33.225025, 37.854168, 31.331707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240707, 37.101879, 31.277781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609280, 37.201603, 31.396992>,  <33.830421, 37.261436, 31.468519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609280, 37.201603, 31.396992>,  <33.240707, 37.101879, 31.277781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609280, 37.201603, 31.396992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003913, -0.761026, 0.648710,
		0.388535, -0.598904, -0.700253,
		0.921426, 0.249306, 0.298028,
		33.885708, 37.276394, 31.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563530, 36.422401, 31.374081>,  <33.240707, 37.101879, 31.277781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563530, 36.422401, 31.374081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841740, 36.656029, 31.541462>,  <34.008667, 36.796207, 31.641891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841740, 36.656029, 31.541462>,  <33.563530, 36.422401, 31.374081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841740, 36.656029, 31.541462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197825, -0.715560, 0.669955,
		0.690729, -0.383192, -0.613235,
		0.695528, 0.584070, 0.418453,
		34.050400, 36.831249, 31.666998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097923, 35.974297, 31.584560>,  <33.563530, 36.422401, 31.374081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097923, 35.974297, 31.584560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.158195, 36.300041, 31.808741>,  <34.194359, 36.495487, 31.943249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.158195, 36.300041, 31.808741>,  <34.097923, 35.974297, 31.584560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158195, 36.300041, 31.808741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297259, -0.578011, 0.759960,
		0.942832, 0.052089, -0.329172,
		0.150680, 0.814365, 0.560451,
		34.203400, 36.544350, 31.976875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802246, 36.018616, 31.875303>,  <34.097923, 35.974297, 31.584560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802246, 36.018616, 31.875303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554150, 36.219925, 32.115974>,  <34.405293, 36.340710, 32.260376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554150, 36.219925, 32.115974>,  <34.802246, 36.018616, 31.875303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554150, 36.219925, 32.115974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282868, -0.571932, 0.769987,
		0.731630, 0.647776, 0.212379,
		-0.620245, 0.503271, 0.601677,
		34.368076, 36.370907, 32.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597214, 36.037983, 31.714195>,  <34.802246, 36.018616, 31.875303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597214, 36.037983, 31.714195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883488, 35.775818, 31.617672>,  <36.055252, 35.618519, 31.559757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883488, 35.775818, 31.617672>,  <35.597214, 36.037983, 31.714195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883488, 35.775818, 31.617672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037535, 0.308911, -0.950350,
		0.697418, 0.689205, 0.196481,
		0.715681, -0.655416, -0.241310,
		36.098190, 35.579193, 31.545279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127335, 36.409599, 31.326920>,  <35.597214, 36.037983, 31.714195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127335, 36.409599, 31.326920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161846, 36.022709, 31.231396>,  <36.182552, 35.790573, 31.174082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.161846, 36.022709, 31.231396>,  <36.127335, 36.409599, 31.326920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161846, 36.022709, 31.231396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020811, 0.237900, -0.971067,
		0.996054, 0.088754, 0.000397,
		0.086280, -0.967226, -0.238808,
		36.187729, 35.732540, 31.159754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674404, 36.272575, 30.948566>,  <36.127335, 36.409599, 31.326920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674404, 36.272575, 30.948566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488071, 35.934837, 30.842674>,  <36.376270, 35.732193, 30.779139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488071, 35.934837, 30.842674>,  <36.674404, 36.272575, 30.948566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488071, 35.934837, 30.842674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176304, 0.204615, -0.962834,
		0.867132, -0.495191, 0.053545,
		-0.465831, -0.844345, -0.264732,
		36.348324, 35.681534, 30.763254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152870, 35.832947, 30.484070>,  <36.674404, 36.272575, 30.948566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152870, 35.832947, 30.484070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.781857, 35.703278, 30.409676>,  <36.559250, 35.625477, 30.365038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.781857, 35.703278, 30.409676>,  <37.152870, 35.832947, 30.484070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781857, 35.703278, 30.409676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162019, 0.099679, -0.981740,
		0.336791, -0.940732, -0.039934,
		-0.927535, -0.324171, -0.185988,
		36.503597, 35.606026, 30.353880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272804, 35.350773, 29.973835>,  <37.152870, 35.832947, 30.484070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272804, 35.350773, 29.973835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878769, 35.417168, 29.955713>,  <36.642349, 35.457005, 29.944841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878769, 35.417168, 29.955713>,  <37.272804, 35.350773, 29.973835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878769, 35.417168, 29.955713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052670, 0.040257, -0.997800,
		-0.163801, -0.985305, -0.048400,
		-0.985086, 0.165989, -0.045302,
		36.583244, 35.466965, 29.942123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089249, 34.930004, 29.500641>,  <37.272804, 35.350773, 29.973835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089249, 34.930004, 29.500641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825417, 35.230312, 29.515072>,  <36.667118, 35.410496, 29.523731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.825417, 35.230312, 29.515072>,  <37.089249, 34.930004, 29.500641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825417, 35.230312, 29.515072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095189, 0.131049, -0.986796,
		-0.745583, -0.647435, -0.157901,
		-0.659579, 0.750769, 0.036079,
		36.627544, 35.455544, 29.525896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950241, 35.049854, 28.818932>,  <37.089249, 34.930004, 29.500641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950241, 35.049854, 28.818932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761681, 35.366558, 28.974310>,  <36.648544, 35.556580, 29.067537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761681, 35.366558, 28.974310>,  <36.950241, 35.049854, 28.818932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761681, 35.366558, 28.974310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140953, 0.502437, -0.853047,
		-0.870580, -0.347378, -0.348453,
		-0.471405, 0.791761, 0.388448,
		36.620258, 35.604088, 29.090845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492756, 35.364445, 28.300777>,  <36.950241, 35.049854, 28.818932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492756, 35.364445, 28.300777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574093, 35.657333, 28.560776>,  <36.622894, 35.833069, 28.716776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574093, 35.657333, 28.560776>,  <36.492756, 35.364445, 28.300777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574093, 35.657333, 28.560776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422836, 0.533096, -0.732816,
		-0.883097, 0.423856, -0.201209,
		0.203345, 0.732226, 0.649997,
		36.635098, 35.877003, 28.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968941, 35.907276, 28.162914>,  <36.492756, 35.364445, 28.300777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968941, 35.907276, 28.162914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300602, 36.023350, 28.354036>,  <36.499599, 36.092995, 28.468710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300602, 36.023350, 28.354036>,  <35.968941, 35.907276, 28.162914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300602, 36.023350, 28.354036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204736, 0.637701, -0.742577,
		-0.520181, 0.713534, 0.469341,
		0.829153, 0.290184, 0.477806,
		36.549347, 36.110405, 28.497377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911133, 36.596474, 28.213305>,  <35.968941, 35.907276, 28.162914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911133, 36.596474, 28.213305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305824, 36.542274, 28.249084>,  <36.542641, 36.509754, 28.270552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.305824, 36.542274, 28.249084>,  <35.911133, 36.596474, 28.213305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305824, 36.542274, 28.249084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155673, 0.633017, -0.758324,
		0.046132, 0.762187, 0.645711,
		0.986731, -0.135503, 0.089450,
		36.601845, 36.501625, 28.275919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277504, 37.197659, 28.236408>,  <35.911133, 36.596474, 28.213305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277504, 37.197659, 28.236408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581520, 36.957489, 28.136951>,  <36.763931, 36.813389, 28.077276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.581520, 36.957489, 28.136951>,  <36.277504, 37.197659, 28.236408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581520, 36.957489, 28.136951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345330, 0.697261, -0.628152,
		0.550527, 0.391558, 0.737293,
		0.760044, -0.600424, -0.248644,
		36.809532, 36.777363, 28.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896255, 37.679440, 28.268953>,  <36.277504, 37.197659, 28.236408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896255, 37.679440, 28.268953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011406, 37.358768, 28.059406>,  <37.080498, 37.166367, 27.933678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011406, 37.358768, 28.059406>,  <36.896255, 37.679440, 28.268953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011406, 37.358768, 28.059406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439024, 0.596635, -0.671778,
		0.851108, -0.036600, 0.523714,
		0.287879, -0.801678, -0.523869,
		37.097771, 37.118263, 27.902246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472458, 37.912292, 28.130167>,  <36.896255, 37.679440, 28.268953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472458, 37.912292, 28.130167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387806, 37.627441, 27.862408>,  <37.337013, 37.456532, 27.701752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387806, 37.627441, 27.862408>,  <37.472458, 37.912292, 28.130167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387806, 37.627441, 27.862408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226008, 0.630687, -0.742397,
		0.950859, -0.308403, 0.027473,
		-0.211630, -0.712124, -0.669396,
		37.324318, 37.413803, 27.661589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033955, 37.961464, 27.622368>,  <37.472458, 37.912292, 28.130167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033955, 37.961464, 27.622368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746777, 37.760647, 27.429493>,  <37.574471, 37.640156, 27.313768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746777, 37.760647, 27.429493>,  <38.033955, 37.961464, 27.622368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746777, 37.760647, 27.429493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137227, 0.577030, -0.805112,
		0.682441, -0.644195, -0.345381,
		-0.717944, -0.502045, -0.482189,
		37.531391, 37.610035, 27.284836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599026, 37.519714, 27.564438>,  <38.033955, 37.961464, 27.622368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599026, 37.519714, 27.564438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980438, 37.501770, 27.445261>,  <39.209286, 37.491001, 27.373755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.980438, 37.501770, 27.445261>,  <38.599026, 37.519714, 27.564438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980438, 37.501770, 27.445261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235579, -0.505470, 0.830062,
		-0.187839, -0.861677, -0.471412,
		0.953530, -0.044863, -0.297940,
		39.266499, 37.488312, 27.355879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739399, 36.825272, 27.459261>,  <38.599026, 37.519714, 27.564438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739399, 36.825272, 27.459261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107769, 36.971050, 27.514502>,  <39.328793, 37.058517, 27.547646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.107769, 36.971050, 27.514502>,  <38.739399, 36.825272, 27.459261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107769, 36.971050, 27.514502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169748, -0.694052, 0.699627,
		0.350827, -0.620863, -0.701035,
		0.920927, 0.364447, 0.138101,
		39.384048, 37.080383, 27.555931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125664, 36.214687, 27.634808>,  <38.739399, 36.825272, 27.459261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125664, 36.214687, 27.634808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.338863, 36.533279, 27.749020>,  <39.466785, 36.724434, 27.817547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.338863, 36.533279, 27.749020>,  <39.125664, 36.214687, 27.634808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338863, 36.533279, 27.749020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161575, -0.427062, 0.889669,
		0.830544, -0.428061, -0.356316,
		0.533001, 0.796481, 0.285529,
		39.498764, 36.772224, 27.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710812, 35.856411, 27.771988>,  <39.125664, 36.214687, 27.634808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710812, 35.856411, 27.771988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.708042, 36.209496, 27.959936>,  <39.706383, 36.421345, 28.072704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.708042, 36.209496, 27.959936>,  <39.710812, 35.856411, 27.771988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708042, 36.209496, 27.959936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316634, -0.443769, 0.838339,
		0.948522, 0.154579, -0.276424,
		-0.006921, 0.882708, 0.469870,
		39.705967, 36.474308, 28.100897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291412, 35.825489, 28.201811>,  <39.710812, 35.856411, 27.771988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291412, 35.825489, 28.201811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090767, 36.147293, 28.329023>,  <39.970379, 36.340378, 28.405352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.090767, 36.147293, 28.329023>,  <40.291412, 35.825489, 28.201811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090767, 36.147293, 28.329023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247266, -0.218957, 0.943884,
		0.829002, 0.552102, -0.089098,
		-0.501612, 0.804513, 0.318032,
		39.940285, 36.388645, 28.424433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772793, 36.107651, 28.643286>,  <40.291412, 35.825489, 28.201811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772793, 36.107651, 28.643286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388882, 36.190517, 28.719078>,  <40.158535, 36.240238, 28.764553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.388882, 36.190517, 28.719078>,  <40.772793, 36.107651, 28.643286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388882, 36.190517, 28.719078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113261, -0.331846, 0.936510,
		0.256890, 0.920305, 0.295035,
		-0.959781, 0.207164, 0.189483,
		40.100948, 36.252666, 28.775923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780796, 36.338989, 29.304520>,  <40.772793, 36.107651, 28.643286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780796, 36.338989, 29.304520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.391376, 36.250656, 29.281097>,  <40.157722, 36.197655, 29.267044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.391376, 36.250656, 29.281097>,  <40.780796, 36.338989, 29.304520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391376, 36.250656, 29.281097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003843, -0.240439, 0.970657,
		-0.228434, 0.945210, 0.233231,
		-0.973552, -0.220835, -0.058557,
		40.099312, 36.184406, 29.263531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542408, 36.347088, 29.947805>,  <40.780796, 36.338989, 29.304520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542408, 36.347088, 29.947805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217785, 36.173717, 29.791079>,  <40.023010, 36.069695, 29.697042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.217785, 36.173717, 29.791079>,  <40.542408, 36.347088, 29.947805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217785, 36.173717, 29.791079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201988, -0.421133, 0.884222,
		-0.548249, 0.796738, 0.254227,
		-0.811557, -0.433423, -0.391817,
		39.974319, 36.043690, 29.673534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908329, 36.454590, 30.430876>,  <40.542408, 36.347088, 29.947805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908329, 36.454590, 30.430876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828053, 36.126286, 30.216932>,  <39.779888, 35.929302, 30.088566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828053, 36.126286, 30.216932>,  <39.908329, 36.454590, 30.430876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828053, 36.126286, 30.216932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049053, -0.553699, 0.831271,
		-0.978427, 0.140589, 0.151382,
		-0.200688, -0.820763, -0.534858,
		39.767845, 35.880058, 30.056475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384960, 36.125961, 30.853085>,  <39.908329, 36.454590, 30.430876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384960, 36.125961, 30.853085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540958, 35.844776, 30.615179>,  <39.634556, 35.676064, 30.472435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.540958, 35.844776, 30.615179>,  <39.384960, 36.125961, 30.853085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540958, 35.844776, 30.615179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126614, -0.598836, 0.790800,
		-0.912071, -0.383713, -0.144537,
		0.389994, -0.702965, -0.594764,
		39.657955, 35.633888, 30.436750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019482, 35.564526, 31.023310>,  <39.384960, 36.125961, 30.853085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019482, 35.564526, 31.023310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344418, 35.444462, 30.823311>,  <39.539379, 35.372421, 30.703312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344418, 35.444462, 30.823311>,  <39.019482, 35.564526, 31.023310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344418, 35.444462, 30.823311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186573, -0.678544, 0.710471,
		-0.552527, -0.670434, -0.495209,
		0.812345, -0.300162, -0.499999,
		39.588120, 35.354412, 30.673311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093502, 34.707169, 31.023558>,  <39.019482, 35.564526, 31.023310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093502, 34.707169, 31.023558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458252, 34.850582, 30.943617>,  <39.677101, 34.936630, 30.895653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.458252, 34.850582, 30.943617>,  <39.093502, 34.707169, 31.023558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458252, 34.850582, 30.943617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346824, -0.412568, 0.842319,
		0.219548, -0.837401, -0.500558,
		0.911873, 0.358535, -0.199852,
		39.731815, 34.958141, 30.883661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590050, 34.129002, 31.211958>,  <39.093502, 34.707169, 31.023558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590050, 34.129002, 31.211958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803631, 34.467117, 31.204124>,  <39.931778, 34.669987, 31.199425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803631, 34.467117, 31.204124>,  <39.590050, 34.129002, 31.211958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803631, 34.467117, 31.204124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434020, -0.254137, 0.864316,
		0.725620, -0.470001, -0.502568,
		0.533951, 0.845289, -0.019583,
		39.963818, 34.720703, 31.198250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316193, 33.994865, 31.189571>,  <39.590050, 34.129002, 31.211958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316193, 33.994865, 31.189571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.247704, 34.347759, 31.365000>,  <40.206612, 34.559494, 31.470257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.247704, 34.347759, 31.365000>,  <40.316193, 33.994865, 31.189571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247704, 34.347759, 31.365000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351075, -0.361288, 0.863839,
		0.920559, 0.301879, -0.247871,
		-0.171222, 0.882236, 0.438569,
		40.196339, 34.612431, 31.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.292145, 39.214222, 28.744276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923985, 39.135502, 28.609144>,  <42.703087, 39.088272, 28.528065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.923985, 39.135502, 28.609144>,  <43.292145, 39.214222, 28.744276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923985, 39.135502, 28.609144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264557, 0.322726, -0.908767,
		0.287865, -0.925808, -0.244975,
		-0.920404, -0.196793, -0.337831,
		42.647865, 39.076462, 28.507795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375313, 38.991734, 28.047445>,  <43.292145, 39.214222, 28.744276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375313, 38.991734, 28.047445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.992859, 39.104450, 28.079437>,  <42.763386, 39.172081, 28.098633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.992859, 39.104450, 28.079437>,  <43.375313, 38.991734, 28.047445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992859, 39.104450, 28.079437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001765, 0.278575, -0.960413,
		-0.292918, -0.918144, -0.266854,
		-0.956136, 0.281793, 0.079979,
		42.706017, 39.188988, 28.103432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058186, 38.668728, 27.464495>,  <43.375313, 38.991734, 28.047445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058186, 38.668728, 27.464495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814281, 38.961002, 27.587320>,  <42.667938, 39.136368, 27.661015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814281, 38.961002, 27.587320>,  <43.058186, 38.668728, 27.464495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814281, 38.961002, 27.587320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163222, 0.263349, -0.950792,
		-0.775597, -0.629874, -0.041315,
		-0.609760, 0.730688, 0.307062,
		42.631355, 39.180210, 27.679440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610355, 38.685360, 26.952440>,  <43.058186, 38.668728, 27.464495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610355, 38.685360, 26.952440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.541813, 39.031944, 27.140009>,  <42.500687, 39.239895, 27.252550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.541813, 39.031944, 27.140009>,  <42.610355, 38.685360, 26.952440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541813, 39.031944, 27.140009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040721, 0.481784, -0.875344,
		-0.984367, -0.130903, -0.117841,
		-0.171358, 0.866458, 0.468921,
		42.490406, 39.291882, 27.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011257, 38.925323, 26.680332>,  <42.610355, 38.685360, 26.952440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011257, 38.925323, 26.680332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.161972, 39.269047, 26.818672>,  <42.252403, 39.475281, 26.901676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.161972, 39.269047, 26.818672>,  <42.011257, 38.925323, 26.680332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161972, 39.269047, 26.818672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207225, 0.442103, -0.872698,
		-0.902822, 0.257155, 0.344651,
		0.376790, 0.859311, 0.345852,
		42.275009, 39.526840, 26.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480976, 39.433514, 26.657795>,  <42.011257, 38.925323, 26.680332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480976, 39.433514, 26.657795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.822369, 39.640903, 26.678762>,  <42.027206, 39.765339, 26.691343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.822369, 39.640903, 26.678762>,  <41.480976, 39.433514, 26.657795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822369, 39.640903, 26.678762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363200, 0.663960, -0.653639,
		-0.373699, 0.538832, 0.754990,
		0.853484, 0.518476, 0.052417,
		42.078415, 39.796448, 26.694487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266476, 40.150829, 26.479517>,  <41.480976, 39.433514, 26.657795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266476, 40.150829, 26.479517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663574, 40.174015, 26.437386>,  <41.901833, 40.187927, 26.412107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.663574, 40.174015, 26.437386>,  <41.266476, 40.150829, 26.479517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663574, 40.174015, 26.437386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103541, 0.857445, -0.504050,
		0.061096, 0.511300, 0.857228,
		0.992747, 0.057963, -0.105327,
		41.961399, 40.191402, 26.405788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401066, 40.755165, 26.698563>,  <41.266476, 40.150829, 26.479517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401066, 40.755165, 26.698563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718319, 40.671772, 26.469662>,  <41.908672, 40.621735, 26.332321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.718319, 40.671772, 26.469662>,  <41.401066, 40.755165, 26.698563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718319, 40.671772, 26.469662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127008, 0.862314, -0.490187,
		0.595658, 0.461465, 0.657451,
		0.793133, -0.208483, -0.572254,
		41.956261, 40.609226, 26.297985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858837, 41.308720, 26.720041>,  <41.401066, 40.755165, 26.698563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858837, 41.308720, 26.720041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.901184, 41.116886, 26.371607>,  <41.926594, 41.001785, 26.162546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.901184, 41.116886, 26.371607>,  <41.858837, 41.308720, 26.720041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901184, 41.116886, 26.371607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217761, 0.843563, -0.490899,
		0.970243, 0.241660, -0.015127,
		0.105869, -0.479585, -0.871085,
		41.932945, 40.973011, 26.110281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024826, 41.895901, 26.229008>,  <41.858837, 41.308720, 26.720041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024826, 41.895901, 26.229008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.929497, 41.588974, 25.990875>,  <41.872299, 41.404816, 25.847996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.929497, 41.588974, 25.990875>,  <42.024826, 41.895901, 26.229008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929497, 41.588974, 25.990875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527969, 0.616865, -0.583718,
		0.815139, 0.175204, -0.552134,
		-0.238322, -0.767321, -0.595333,
		41.858002, 41.358776, 25.812275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190086, 42.122868, 25.626705>,  <42.024826, 41.895901, 26.229008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190086, 42.122868, 25.626705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951317, 41.820816, 25.518290>,  <41.808056, 41.639584, 25.453241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951317, 41.820816, 25.518290>,  <42.190086, 42.122868, 25.626705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951317, 41.820816, 25.518290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521915, 0.622056, -0.583653,
		0.609333, -0.206939, -0.765434,
		-0.596924, -0.755131, -0.271035,
		41.772240, 41.594276, 25.436977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276104, 42.169079, 24.867329>,  <42.190086, 42.122868, 25.626705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276104, 42.169079, 24.867329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952385, 41.949970, 24.952164>,  <41.758152, 41.818504, 25.003065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.952385, 41.949970, 24.952164>,  <42.276104, 42.169079, 24.867329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952385, 41.949970, 24.952164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584467, 0.714945, -0.383735,
		0.058566, -0.434516, -0.898758,
		-0.809301, -0.547768, 0.212089,
		41.709595, 41.785641, 25.015791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846390, 42.026695, 24.254955>,  <42.276104, 42.169079, 24.867329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846390, 42.026695, 24.254955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.599125, 42.008251, 24.568834>,  <41.450764, 41.997185, 24.757162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.599125, 42.008251, 24.568834>,  <41.846390, 42.026695, 24.254955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599125, 42.008251, 24.568834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458330, 0.832157, -0.312167,
		-0.638598, -0.552620, -0.535541,
		-0.618164, -0.046105, 0.784696,
		41.413677, 41.994419, 24.804243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133400, 41.852886, 24.166185>,  <41.846390, 42.026695, 24.254955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133400, 41.852886, 24.166185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.235241, 42.104454, 24.460026>,  <41.296345, 42.255394, 24.636330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.235241, 42.104454, 24.460026>,  <41.133400, 41.852886, 24.166185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235241, 42.104454, 24.460026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528021, 0.726812, -0.439246,
		-0.810167, -0.276052, 0.517131,
		0.254602, 0.628919, 0.734601,
		41.311623, 42.293129, 24.680407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724842, 41.709106, 23.476053>,  <41.133400, 41.852886, 24.166185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724842, 41.709106, 23.476053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.423023, 41.483627, 23.341644>,  <40.241932, 41.348339, 23.260998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.423023, 41.483627, 23.341644>,  <40.724842, 41.709106, 23.476053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423023, 41.483627, 23.341644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028923, -0.540106, 0.841100,
		-0.655611, 0.624928, 0.423838,
		-0.754545, -0.563693, -0.336024,
		40.196659, 41.314518, 23.240837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196140, 41.681343, 23.977722>,  <40.724842, 41.709106, 23.476053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196140, 41.681343, 23.977722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154541, 41.348675, 23.759546>,  <40.129581, 41.149075, 23.628641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154541, 41.348675, 23.759546>,  <40.196140, 41.681343, 23.977722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154541, 41.348675, 23.759546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034561, -0.545061, 0.837684,
		-0.993977, 0.105966, 0.027941,
		-0.103995, -0.831673, -0.545441,
		40.123341, 41.099174, 23.595915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688622, 41.275993, 24.373652>,  <40.196140, 41.681343, 23.977722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688622, 41.275993, 24.373652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846352, 41.005562, 24.124680>,  <39.940990, 40.843304, 23.975296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846352, 41.005562, 24.124680>,  <39.688622, 41.275993, 24.373652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846352, 41.005562, 24.124680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146890, -0.714975, 0.683545,
		-0.907156, -0.178109, -0.381241,
		0.394323, -0.676083, -0.622431,
		39.964649, 40.802738, 23.937950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199707, 40.771786, 24.374399>,  <39.688622, 41.275993, 24.373652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199707, 40.771786, 24.374399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533859, 40.600533, 24.236506>,  <39.734348, 40.497780, 24.153769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.533859, 40.600533, 24.236506>,  <39.199707, 40.771786, 24.374399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533859, 40.600533, 24.236506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160788, -0.790059, 0.591570,
		-0.525633, -0.438755, -0.728838,
		0.835379, -0.428137, -0.344734,
		39.784473, 40.472092, 24.133085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989349, 40.070343, 24.217196>,  <39.199707, 40.771786, 24.374399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989349, 40.070343, 24.217196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386532, 40.077431, 24.264057>,  <39.624840, 40.081684, 24.292173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386532, 40.077431, 24.264057>,  <38.989349, 40.070343, 24.217196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386532, 40.077431, 24.264057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042291, -0.870623, 0.490130,
		0.110682, -0.491632, -0.863740,
		0.992956, 0.017720, 0.117154,
		39.684418, 40.082748, 24.299204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118481, 39.455463, 24.013332>,  <38.989349, 40.070343, 24.217196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118481, 39.455463, 24.013332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431217, 39.583614, 24.227282>,  <39.618858, 39.660507, 24.355650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.431217, 39.583614, 24.227282>,  <39.118481, 39.455463, 24.013332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431217, 39.583614, 24.227282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070634, -0.897868, 0.434563,
		0.619469, -0.301977, -0.724616,
		0.781837, 0.320381, 0.534871,
		39.665768, 39.679729, 24.387743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487461, 38.889671, 24.027529>,  <39.118481, 39.455463, 24.013332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487461, 38.889671, 24.027529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657627, 39.094627, 24.325916>,  <39.759727, 39.217602, 24.504950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657627, 39.094627, 24.325916>,  <39.487461, 38.889671, 24.027529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657627, 39.094627, 24.325916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155200, -0.853375, 0.497659,
		0.891590, -0.095938, -0.442563,
		0.425417, 0.512394, 0.745971,
		39.785252, 39.248344, 24.549707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140537, 38.582607, 24.177530>,  <39.487461, 38.889671, 24.027529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140537, 38.582607, 24.177530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990978, 38.774117, 24.495266>,  <39.901241, 38.889023, 24.685907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.990978, 38.774117, 24.495266>,  <40.140537, 38.582607, 24.177530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990978, 38.774117, 24.495266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185525, -0.800540, 0.569839,
		0.908724, 0.360432, 0.210497,
		-0.373899, 0.478775, 0.794339,
		39.878807, 38.917747, 24.733568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360958, 38.157944, 24.716711>,  <40.140537, 38.582607, 24.177530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360958, 38.157944, 24.716711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107300, 38.372776, 24.939205>,  <39.955105, 38.501675, 25.072702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.107300, 38.372776, 24.939205>,  <40.360958, 38.157944, 24.716711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107300, 38.372776, 24.939205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118900, -0.643093, 0.756501,
		0.764014, 0.545871, 0.343958,
		-0.634150, 0.537081, 0.556236,
		39.917053, 38.533901, 25.106075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636345, 38.127243, 25.415157>,  <40.360958, 38.157944, 24.716711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636345, 38.127243, 25.415157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250580, 38.231525, 25.432791>,  <40.019123, 38.294094, 25.443371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250580, 38.231525, 25.432791>,  <40.636345, 38.127243, 25.415157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250580, 38.231525, 25.432791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083098, -0.457132, 0.885509,
		0.251011, 0.850331, 0.462527,
		-0.964411, 0.260707, 0.044084,
		39.961258, 38.309738, 25.446016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478664, 38.503826, 26.035746>,  <40.636345, 38.127243, 25.415157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478664, 38.503826, 26.035746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127888, 38.349251, 25.921455>,  <39.917423, 38.256504, 25.852882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.127888, 38.349251, 25.921455>,  <40.478664, 38.503826, 26.035746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127888, 38.349251, 25.921455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016106, -0.570556, 0.821101,
		-0.480325, 0.724660, 0.494121,
		-0.876942, -0.386437, -0.285724,
		39.864803, 38.233318, 25.835737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093197, 38.634922, 26.623882>,  <40.478664, 38.503826, 26.035746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093197, 38.634922, 26.623882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905766, 38.351101, 26.413372>,  <39.793308, 38.180809, 26.287066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905766, 38.351101, 26.413372>,  <40.093197, 38.634922, 26.623882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905766, 38.351101, 26.413372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367143, -0.385431, 0.846552,
		-0.803517, 0.589895, -0.079903,
		-0.468580, -0.709554, -0.526276,
		39.765190, 38.138233, 26.255489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350189, 38.672874, 26.796976>,  <40.093197, 38.634922, 26.623882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350189, 38.672874, 26.796976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417862, 38.288403, 26.709787>,  <39.458466, 38.057720, 26.657475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.417862, 38.288403, 26.709787>,  <39.350189, 38.672874, 26.796976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417862, 38.288403, 26.709787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256209, -0.256448, 0.931982,
		-0.951701, -0.101826, -0.289649,
		0.169180, -0.961179, -0.217973,
		39.468616, 38.000050, 26.644396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865704, 38.272358, 27.203579>,  <39.350189, 38.672874, 26.796976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865704, 38.272358, 27.203579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.131374, 38.001305, 27.077293>,  <39.290775, 37.838673, 27.001522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.131374, 38.001305, 27.077293>,  <38.865704, 38.272358, 27.203579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131374, 38.001305, 27.077293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063840, -0.472190, 0.879182,
		-0.744844, -0.563778, -0.356878,
		0.664178, -0.677637, -0.315716,
		39.330627, 37.798016, 26.982578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257320, 37.931374, 26.924257>,  <38.865704, 38.272358, 27.203579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257320, 37.931374, 26.924257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870274, 37.836639, 26.889313>,  <37.638046, 37.779800, 26.868347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870274, 37.836639, 26.889313>,  <38.257320, 37.931374, 26.924257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870274, 37.836639, 26.889313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085260, 0.632358, -0.769970,
		0.237597, -0.737586, -0.632072,
		-0.967615, -0.236833, -0.087360,
		37.579990, 37.765591, 26.863104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049953, 37.874817, 26.146639>,  <38.257320, 37.931374, 26.924257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049953, 37.874817, 26.146639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.694061, 37.919415, 26.323700>,  <37.480526, 37.946175, 26.429935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.694061, 37.919415, 26.323700>,  <38.049953, 37.874817, 26.146639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694061, 37.919415, 26.323700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330022, 0.512835, -0.792519,
		-0.315368, -0.851216, -0.419492,
		-0.889735, 0.111494, 0.442652,
		37.427139, 37.952862, 26.456495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492439, 37.650322, 25.613750>,  <38.049953, 37.874817, 26.146639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492439, 37.650322, 25.613750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353737, 37.913189, 25.881447>,  <37.270515, 38.070911, 26.042065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353737, 37.913189, 25.881447>,  <37.492439, 37.650322, 25.613750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353737, 37.913189, 25.881447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115488, 0.678167, -0.725777,
		-0.930817, -0.328960, -0.159266,
		-0.346761, 0.657172, 0.669240,
		37.249710, 38.110340, 26.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046898, 38.088348, 25.253174>,  <37.492439, 37.650322, 25.613750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046898, 38.088348, 25.253174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119408, 38.311447, 25.577164>,  <37.162914, 38.445305, 25.771557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119408, 38.311447, 25.577164>,  <37.046898, 38.088348, 25.253174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119408, 38.311447, 25.577164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163682, 0.829243, -0.534382,
		-0.969716, -0.035710, 0.241611,
		0.181271, 0.557746, 0.809975,
		37.173790, 38.478771, 25.820156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539127, 38.538937, 25.163319>,  <37.046898, 38.088348, 25.253174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539127, 38.538937, 25.163319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817440, 38.715900, 25.389648>,  <36.984428, 38.822079, 25.525446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.817440, 38.715900, 25.389648>,  <36.539127, 38.538937, 25.163319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817440, 38.715900, 25.389648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174688, 0.868362, -0.464145,
		-0.696685, 0.224102, 0.681476,
		0.695784, 0.442409, 0.565827,
		37.026176, 38.848621, 25.559397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150932, 39.110161, 25.474995>,  <36.539127, 38.538937, 25.163319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150932, 39.110161, 25.474995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 39.192970, 25.477615>,  <36.777054, 39.242657, 25.479187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.542259, 39.192970, 25.477615>,  <36.150932, 39.110161, 25.474995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542259, 39.192970, 25.477615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163520, 0.791362, -0.589073,
		-0.127136, 0.575227, 0.808053,
		0.978314, 0.207025, 0.006549,
		36.835754, 39.255077, 25.479580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227749, 39.809868, 25.790058>,  <36.150932, 39.110161, 25.474995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227749, 39.809868, 25.790058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537060, 39.734745, 25.547812>,  <36.722645, 39.689671, 25.402464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537060, 39.734745, 25.547812>,  <36.227749, 39.809868, 25.790058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537060, 39.734745, 25.547812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235080, 0.802143, -0.548913,
		0.588881, 0.566830, 0.576128,
		0.773277, -0.187808, -0.605617,
		36.769043, 39.678402, 25.366127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428329, 40.392635, 26.298433>,  <36.227749, 39.809868, 25.790058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428329, 40.392635, 26.298433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185833, 40.710297, 26.315388>,  <36.040333, 40.900894, 26.325560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185833, 40.710297, 26.315388>,  <36.428329, 40.392635, 26.298433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185833, 40.710297, 26.315388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540979, -0.450870, 0.709970,
		0.582932, 0.407486, 0.702955,
		-0.606244, 0.794148, 0.042385,
		36.003960, 40.948540, 26.328104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360779, 40.562317, 27.058760>,  <36.428329, 40.392635, 26.298433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360779, 40.562317, 27.058760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038078, 40.685474, 26.857027>,  <35.844456, 40.759369, 26.735989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.038078, 40.685474, 26.857027>,  <36.360779, 40.562317, 27.058760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038078, 40.685474, 26.857027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590544, -0.391006, 0.705955,
		0.020164, 0.867361, 0.497271,
		-0.806754, 0.307895, -0.504330,
		35.796051, 40.777843, 26.705729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061954, 41.079979, 27.457432>,  <36.360779, 40.562317, 27.058760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061954, 41.079979, 27.457432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818306, 40.893780, 27.200594>,  <35.672119, 40.782063, 27.046492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.818306, 40.893780, 27.200594>,  <36.061954, 41.079979, 27.457432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818306, 40.893780, 27.200594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477760, -0.430857, 0.765577,
		-0.633025, 0.773095, 0.040048,
		-0.609119, -0.465496, -0.642097,
		35.635571, 40.754131, 27.007965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448044, 41.125011, 27.729383>,  <36.061954, 41.079979, 27.457432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448044, 41.125011, 27.729383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353462, 40.846409, 27.458397>,  <35.296711, 40.679245, 27.295805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353462, 40.846409, 27.458397>,  <35.448044, 41.125011, 27.729383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353462, 40.846409, 27.458397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469394, -0.528595, 0.707288,
		-0.850739, 0.485242, -0.201948,
		-0.236457, -0.696511, -0.677466,
		35.282524, 40.637455, 27.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703091, 41.005138, 27.828899>,  <35.448044, 41.125011, 27.729383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703091, 41.005138, 27.828899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845238, 40.684834, 27.636032>,  <34.930527, 40.492649, 27.520311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845238, 40.684834, 27.636032>,  <34.703091, 41.005138, 27.828899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845238, 40.684834, 27.636032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387691, -0.595647, 0.703491,
		-0.850533, -0.063069, -0.522126,
		0.355371, -0.800766, -0.482167,
		34.951851, 40.444603, 27.491383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135445, 40.528965, 27.718092>,  <34.703091, 41.005138, 27.828899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135445, 40.528965, 27.718092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.444607, 40.285347, 27.646889>,  <34.630104, 40.139175, 27.604168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.444607, 40.285347, 27.646889>,  <34.135445, 40.528965, 27.718092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444607, 40.285347, 27.646889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374315, -0.664161, 0.647131,
		-0.512356, -0.433540, -0.741306,
		0.772904, -0.609043, -0.178006,
		34.676479, 40.102634, 27.593487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839233, 39.894112, 27.499586>,  <34.135445, 40.528965, 27.718092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839233, 39.894112, 27.499586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207073, 39.785381, 27.613033>,  <34.427776, 39.720142, 27.681103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207073, 39.785381, 27.613033>,  <33.839233, 39.894112, 27.499586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207073, 39.785381, 27.613033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383957, -0.774630, 0.502519,
		0.083103, -0.571016, -0.816721,
		0.919604, -0.271825, 0.283620,
		34.482956, 39.703835, 27.698120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.475918, 42.738331, 24.936243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.802334, 42.669601, 25.156992>,  <38.998184, 42.628365, 25.289442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.802334, 42.669601, 25.156992>,  <38.475918, 42.738331, 24.936243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802334, 42.669601, 25.156992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567205, -0.421729, 0.707406,
		0.111194, -0.890294, -0.441603,
		0.816036, -0.171820, 0.551872,
		39.047146, 42.618053, 25.322554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125843, 42.667366, 25.636869>,  <38.475918, 42.738331, 24.936243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125843, 42.667366, 25.636869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491566, 42.505360, 25.637438>,  <38.710999, 42.408157, 25.637779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.491566, 42.505360, 25.637438>,  <38.125843, 42.667366, 25.636869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491566, 42.505360, 25.637438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202698, -0.454544, 0.867354,
		-0.350645, -0.793318, -0.497689,
		0.914310, -0.405014, 0.001421,
		38.765858, 42.383854, 25.637863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097408, 41.973522, 25.759666>,  <38.125843, 42.667366, 25.636869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097408, 41.973522, 25.759666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.467937, 42.067661, 25.877338>,  <38.690254, 42.124146, 25.947941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.467937, 42.067661, 25.877338>,  <38.097408, 41.973522, 25.759666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467937, 42.067661, 25.877338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157508, -0.467405, 0.869898,
		0.342228, -0.852141, -0.395899,
		0.926321, 0.235346, 0.294178,
		38.745834, 42.138264, 25.965591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438366, 41.387047, 26.033171>,  <38.097408, 41.973522, 25.759666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438366, 41.387047, 26.033171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636288, 41.700951, 26.182472>,  <38.755039, 41.889294, 26.272053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.636288, 41.700951, 26.182472>,  <38.438366, 41.387047, 26.033171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636288, 41.700951, 26.182472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022163, -0.440776, 0.897344,
		0.868722, -0.435737, -0.235490,
		0.494804, 0.784761, 0.373255,
		38.784729, 41.936378, 26.294449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968258, 41.058239, 26.398140>,  <38.438366, 41.387047, 26.033171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968258, 41.058239, 26.398140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917332, 41.424255, 26.551235>,  <38.886776, 41.643867, 26.643091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917332, 41.424255, 26.551235>,  <38.968258, 41.058239, 26.398140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917332, 41.424255, 26.551235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079238, -0.394026, 0.915677,
		0.988692, 0.086253, 0.122672,
		-0.127315, 0.915043, 0.382736,
		38.879139, 41.698769, 26.666056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182652, 40.947876, 27.056871>,  <38.968258, 41.058239, 26.398140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182652, 40.947876, 27.056871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030243, 41.317451, 27.070448>,  <38.938797, 41.539196, 27.078594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.030243, 41.317451, 27.070448>,  <39.182652, 40.947876, 27.056871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030243, 41.317451, 27.070448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033269, -0.050390, 0.998176,
		0.923967, 0.379197, 0.049939,
		-0.381021, 0.923943, 0.033943,
		38.915936, 41.594635, 27.080631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514847, 41.189060, 27.607430>,  <39.182652, 40.947876, 27.056871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514847, 41.189060, 27.607430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177616, 41.403240, 27.587345>,  <38.975277, 41.531746, 27.575294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177616, 41.403240, 27.587345>,  <39.514847, 41.189060, 27.607430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177616, 41.403240, 27.587345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157387, -0.156371, 0.975078,
		0.514251, 0.829966, 0.216105,
		-0.843075, 0.535447, -0.050211,
		38.924694, 41.563873, 27.572281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579060, 41.655949, 28.129490>,  <39.514847, 41.189060, 27.607430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579060, 41.655949, 28.129490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187267, 41.606014, 28.066198>,  <38.952194, 41.576054, 28.028223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187267, 41.606014, 28.066198>,  <39.579060, 41.655949, 28.129490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187267, 41.606014, 28.066198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136364, -0.167617, 0.976376,
		-0.148412, 0.977916, 0.147154,
		-0.979479, -0.124839, -0.158228,
		38.893425, 41.568562, 28.018730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334026, 42.073448, 28.537909>,  <39.579060, 41.655949, 28.129490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334026, 42.073448, 28.537909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.010059, 41.849762, 28.467133>,  <38.815678, 41.715549, 28.424667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.010059, 41.849762, 28.467133>,  <39.334026, 42.073448, 28.537909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010059, 41.849762, 28.467133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067152, -0.211276, 0.975117,
		-0.582684, 0.801648, 0.133564,
		-0.809920, -0.559216, -0.176940,
		38.767082, 41.681995, 28.414051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781391, 42.259850, 29.076513>,  <39.334026, 42.073448, 28.537909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781391, 42.259850, 29.076513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707268, 41.894234, 28.932184>,  <38.662792, 41.674866, 28.845587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707268, 41.894234, 28.932184>,  <38.781391, 42.259850, 29.076513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707268, 41.894234, 28.932184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081522, -0.351618, 0.932587,
		-0.979293, 0.202230, -0.009357,
		-0.185307, -0.914039, -0.360823,
		38.651676, 41.620022, 28.823936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130795, 42.054688, 29.350441>,  <38.781391, 42.259850, 29.076513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130795, 42.054688, 29.350441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321289, 41.713326, 29.265682>,  <38.435585, 41.508511, 29.214827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.321289, 41.713326, 29.265682>,  <38.130795, 42.054688, 29.350441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321289, 41.713326, 29.265682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050629, -0.267190, 0.962313,
		-0.877857, -0.447563, -0.170454,
		0.476239, -0.853403, -0.211895,
		38.464161, 41.457306, 29.202114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707825, 41.565670, 29.652712>,  <38.130795, 42.054688, 29.350441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707825, 41.565670, 29.652712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059727, 41.380955, 29.607481>,  <38.270866, 41.270126, 29.580341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059727, 41.380955, 29.607481>,  <37.707825, 41.565670, 29.652712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059727, 41.380955, 29.607481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066267, -0.354624, 0.932658,
		-0.470795, -0.813013, -0.342582,
		0.879750, -0.461792, -0.113079,
		38.323650, 41.242416, 29.573557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158253, 41.404640, 29.053259>,  <37.707825, 41.565670, 29.652712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158253, 41.404640, 29.053259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828083, 41.601292, 29.164234>,  <36.629982, 41.719284, 29.230820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.828083, 41.601292, 29.164234>,  <37.158253, 41.404640, 29.053259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828083, 41.601292, 29.164234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307351, 0.803627, -0.509627,
		-0.473504, -0.335389, -0.814438,
		-0.825427, 0.491628, 0.277438,
		36.580456, 41.748779, 29.247465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943073, 41.753895, 28.439621>,  <37.158253, 41.404640, 29.053259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943073, 41.753895, 28.439621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750557, 41.942440, 28.735235>,  <36.635048, 42.055569, 28.912603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750557, 41.942440, 28.735235>,  <36.943073, 41.753895, 28.439621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750557, 41.942440, 28.735235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123953, 0.871233, -0.474962,
		-0.867753, -0.136989, -0.477743,
		-0.481290, 0.471368, 0.739035,
		36.606171, 42.083851, 28.956945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287685, 42.085228, 28.164490>,  <36.943073, 41.753895, 28.439621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287685, 42.085228, 28.164490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433746, 42.291897, 28.474255>,  <36.521385, 42.415897, 28.660114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.433746, 42.291897, 28.474255>,  <36.287685, 42.085228, 28.164490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433746, 42.291897, 28.474255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071830, 0.813739, -0.576776,
		-0.928172, 0.266238, 0.260028,
		0.365155, 0.516669, 0.774413,
		36.543293, 42.446896, 28.706579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897846, 42.743839, 28.119638>,  <36.287685, 42.085228, 28.164490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897846, 42.743839, 28.119638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.209820, 42.828922, 28.355080>,  <36.397003, 42.879971, 28.496344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.209820, 42.828922, 28.355080>,  <35.897846, 42.743839, 28.119638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209820, 42.828922, 28.355080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203595, 0.803093, -0.559992,
		-0.591816, 0.556596, 0.583057,
		0.779938, 0.212704, 0.588603,
		36.443802, 42.892735, 28.531660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760983, 43.418659, 28.178286>,  <35.897846, 42.743839, 28.119638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760983, 43.418659, 28.178286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.143063, 43.342709, 28.269091>,  <36.372311, 43.297138, 28.323574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.143063, 43.342709, 28.269091>,  <35.760983, 43.418659, 28.178286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143063, 43.342709, 28.269091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292894, 0.716477, -0.633146,
		-0.042430, 0.671273, 0.739994,
		0.955203, -0.189876, 0.227012,
		36.429623, 43.285748, 28.337194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013885, 44.141327, 28.302427>,  <35.760983, 43.418659, 28.178286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013885, 44.141327, 28.302427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335224, 43.906876, 28.260317>,  <36.528027, 43.766205, 28.235050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.335224, 43.906876, 28.260317>,  <36.013885, 44.141327, 28.302427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335224, 43.906876, 28.260317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441787, 0.705129, -0.554633,
		0.399319, 0.399055, 0.825409,
		0.803348, -0.586130, -0.105274,
		36.576229, 43.731037, 28.228735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468391, 44.633415, 28.248468>,  <36.013885, 44.141327, 28.302427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468391, 44.633415, 28.248468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670517, 44.318436, 28.107283>,  <36.791794, 44.129448, 28.022572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.670517, 44.318436, 28.107283>,  <36.468391, 44.633415, 28.248468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670517, 44.318436, 28.107283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439310, 0.586801, -0.680200,
		0.742742, 0.188653, 0.642452,
		0.505313, -0.787448, -0.352965,
		36.822109, 44.082203, 28.001392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247669, 44.778622, 28.306959>,  <36.468391, 44.633415, 28.248468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247669, 44.778622, 28.306959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215088, 44.485466, 28.036777>,  <37.195541, 44.309574, 27.874668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.215088, 44.485466, 28.036777>,  <37.247669, 44.778622, 28.306959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215088, 44.485466, 28.036777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538220, 0.538054, -0.648705,
		0.838860, -0.416381, 0.350631,
		-0.081450, -0.732888, -0.675456,
		37.190655, 44.265598, 27.834141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984138, 44.698025, 27.961525>,  <37.247669, 44.778622, 28.306959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984138, 44.698025, 27.961525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693218, 44.549232, 27.730816>,  <37.518665, 44.459957, 27.592390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.693218, 44.549232, 27.730816>,  <37.984138, 44.698025, 27.961525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693218, 44.549232, 27.730816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447747, 0.379749, -0.809514,
		0.520150, -0.847008, -0.109640,
		-0.727301, -0.371978, -0.576772,
		37.475029, 44.437641, 27.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303932, 44.529530, 27.388386>,  <37.984138, 44.698025, 27.961525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303932, 44.529530, 27.388386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924057, 44.572796, 27.270817>,  <37.696133, 44.598755, 27.200275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.924057, 44.572796, 27.270817>,  <38.303932, 44.529530, 27.388386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924057, 44.572796, 27.270817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306387, 0.515462, -0.800266,
		0.064943, -0.850058, -0.522669,
		-0.949689, 0.108167, -0.293923,
		37.639149, 44.605247, 27.182640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299587, 44.584702, 26.646328>,  <38.303932, 44.529530, 27.388386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299587, 44.584702, 26.646328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937260, 44.729534, 26.734310>,  <37.719864, 44.816437, 26.787100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937260, 44.729534, 26.734310>,  <38.299587, 44.584702, 26.646328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937260, 44.729534, 26.734310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129507, 0.730984, -0.669992,
		-0.403380, -0.578408, -0.709034,
		-0.905821, 0.362087, 0.219957,
		37.665512, 44.838161, 26.800297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881161, 44.616199, 26.019451>,  <38.299587, 44.584702, 26.646328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881161, 44.616199, 26.019451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740570, 44.884483, 26.280712>,  <37.656216, 45.045456, 26.437468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740570, 44.884483, 26.280712>,  <37.881161, 44.616199, 26.019451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740570, 44.884483, 26.280712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019687, 0.692215, -0.721423,
		-0.935990, -0.266422, -0.230093,
		-0.351477, 0.670714, 0.653151,
		37.635128, 45.085697, 26.476658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346199, 44.863491, 25.599092>,  <37.881161, 44.616199, 26.019451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346199, 44.863491, 25.599092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451157, 45.126232, 25.881847>,  <37.514130, 45.283878, 26.051500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451157, 45.126232, 25.881847>,  <37.346199, 44.863491, 25.599092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451157, 45.126232, 25.881847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049168, 0.722505, -0.689615,
		-0.963707, 0.215707, 0.157285,
		0.262394, 0.656853, 0.706890,
		37.529877, 45.323288, 26.093914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931793, 44.190609, 25.327080>,  <37.346199, 44.863491, 25.599092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931793, 44.190609, 25.327080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758255, 43.961597, 25.048803>,  <36.654133, 43.824192, 24.881838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.758255, 43.961597, 25.048803>,  <36.931793, 44.190609, 25.327080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758255, 43.961597, 25.048803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272982, -0.652326, 0.707073,
		-0.858636, 0.496675, 0.126723,
		-0.433850, -0.572525, -0.695693,
		36.628101, 43.789841, 24.840096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363316, 44.022163, 25.644627>,  <36.931793, 44.190609, 25.327080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363316, 44.022163, 25.644627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447720, 43.765121, 25.350000>,  <36.498360, 43.610897, 25.173223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.447720, 43.765121, 25.350000>,  <36.363316, 44.022163, 25.644627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447720, 43.765121, 25.350000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238617, -0.764598, 0.598708,
		-0.947913, 0.049426, -0.314672,
		0.211006, -0.642609, -0.736566,
		36.511021, 43.572338, 25.129030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784065, 43.528976, 25.631451>,  <36.363316, 44.022163, 25.644627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784065, 43.528976, 25.631451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078362, 43.354904, 25.423872>,  <36.254940, 43.250462, 25.299324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078362, 43.354904, 25.423872>,  <35.784065, 43.528976, 25.631451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078362, 43.354904, 25.423872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202218, -0.872441, 0.444920,
		-0.646372, -0.222404, -0.729890,
		0.735738, -0.435181, -0.518947,
		36.299084, 43.224350, 25.268188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476555, 42.988522, 25.449619>,  <35.784065, 43.528976, 25.631451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476555, 42.988522, 25.449619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865887, 42.914577, 25.395283>,  <36.099487, 42.870213, 25.362680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865887, 42.914577, 25.395283>,  <35.476555, 42.988522, 25.449619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865887, 42.914577, 25.395283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139543, -0.947100, 0.289014,
		-0.182081, -0.262351, -0.947638,
		0.973331, -0.184860, -0.135840,
		36.157887, 42.859119, 25.354530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493225, 42.489601, 25.041452>,  <35.476555, 42.988522, 25.449619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493225, 42.489601, 25.041452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.842205, 42.488338, 25.236931>,  <36.051594, 42.487579, 25.354218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.842205, 42.488338, 25.236931>,  <35.493225, 42.489601, 25.041452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842205, 42.488338, 25.236931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228581, -0.886493, 0.402344,
		0.431953, -0.462731, -0.774143,
		0.872449, -0.003160, 0.488695,
		36.103939, 42.487389, 25.383539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975037, 41.860725, 24.885323>,  <35.493225, 42.489601, 25.041452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975037, 41.860725, 24.885323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129585, 41.954975, 25.242018>,  <36.222313, 42.011524, 25.456036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.129585, 41.954975, 25.242018>,  <35.975037, 41.860725, 24.885323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129585, 41.954975, 25.242018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131037, -0.942989, 0.305944,
		0.912988, -0.235058, -0.333467,
		0.386370, 0.235627, 0.891739,
		36.245495, 42.025661, 25.509539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424576, 41.318684, 25.104908>,  <35.975037, 41.860725, 24.885323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424576, 41.318684, 25.104908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313637, 41.477024, 25.455080>,  <36.247074, 41.572029, 25.665184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.313637, 41.477024, 25.455080>,  <36.424576, 41.318684, 25.104908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313637, 41.477024, 25.455080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262041, -0.907797, 0.327473,
		0.924344, -0.138575, 0.355506,
		-0.277348, 0.395855, 0.875430,
		36.230431, 41.595779, 25.717709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462090, 40.773033, 25.481812>,  <36.424576, 41.318684, 25.104908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462090, 40.773033, 25.481812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.288872, 41.028099, 25.736641>,  <36.184940, 41.181137, 25.889538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.288872, 41.028099, 25.736641>,  <36.462090, 40.773033, 25.481812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288872, 41.028099, 25.736641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494691, -0.758956, 0.423399,
		0.753496, -0.131805, 0.644105,
		-0.433041, 0.637663, 0.637073,
		36.158958, 41.219398, 25.927763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222015, 40.988033, 25.500053>,  <36.462090, 40.773033, 25.481812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222015, 40.988033, 25.500053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368389, 40.646297, 25.352436>,  <37.456215, 40.441257, 25.263866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.368389, 40.646297, 25.352436>,  <37.222015, 40.988033, 25.500053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368389, 40.646297, 25.352436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259638, 0.474524, -0.841080,
		0.893688, 0.211964, 0.395465,
		0.365936, -0.854341, -0.369042,
		37.478168, 40.389996, 25.241724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842323, 41.063335, 25.194435>,  <37.222015, 40.988033, 25.500053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842323, 41.063335, 25.194435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645657, 40.765373, 25.014048>,  <37.527657, 40.586594, 24.905815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645657, 40.765373, 25.014048>,  <37.842323, 41.063335, 25.194435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645657, 40.765373, 25.014048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256045, 0.371323, -0.892502,
		0.832289, -0.554282, 0.008163,
		-0.491667, -0.744910, -0.450969,
		37.498158, 40.541901, 24.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257927, 40.906193, 24.679005>,  <37.842323, 41.063335, 25.194435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257927, 40.906193, 24.679005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.898563, 40.762756, 24.577593>,  <37.682945, 40.676693, 24.516747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.898563, 40.762756, 24.577593>,  <38.257927, 40.906193, 24.679005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898563, 40.762756, 24.577593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137431, 0.318737, -0.937827,
		0.417105, -0.877393, -0.237075,
		-0.898408, -0.358591, -0.253528,
		37.629040, 40.655178, 24.501535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360302, 40.521923, 24.000555>,  <38.257927, 40.906193, 24.679005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360302, 40.521923, 24.000555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.971333, 40.608215, 24.035992>,  <37.737949, 40.659992, 24.057253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.971333, 40.608215, 24.035992>,  <38.360302, 40.521923, 24.000555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971333, 40.608215, 24.035992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013825, 0.325882, -0.945310,
		-0.232804, -0.920468, -0.313913,
		-0.972425, 0.215731, 0.088592,
		37.679604, 40.672935, 24.062569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085953, 40.316589, 23.444925>,  <38.360302, 40.521923, 24.000555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085953, 40.316589, 23.444925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838879, 40.591114, 23.598522>,  <37.690636, 40.755829, 23.690680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838879, 40.591114, 23.598522>,  <38.085953, 40.316589, 23.444925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838879, 40.591114, 23.598522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004215, 0.491154, -0.871062,
		-0.786415, -0.536423, -0.306271,
		-0.617684, 0.686308, 0.383990,
		37.653572, 40.797005, 23.713718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497738, 40.284744, 23.091143>,  <38.085953, 40.316589, 23.444925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497738, 40.284744, 23.091143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457512, 40.654888, 23.237349>,  <37.433376, 40.876972, 23.325071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.457512, 40.654888, 23.237349>,  <37.497738, 40.284744, 23.091143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457512, 40.654888, 23.237349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163173, 0.347062, -0.923538,
		-0.981459, -0.152515, 0.116092,
		-0.100562, 0.925358, 0.365514,
		37.427341, 40.932495, 23.347002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011990, 40.593258, 22.670612>,  <37.497738, 40.284744, 23.091143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011990, 40.593258, 22.670612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197552, 40.901104, 22.846104>,  <37.308887, 41.085812, 22.951399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197552, 40.901104, 22.846104>,  <37.011990, 40.593258, 22.670612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197552, 40.901104, 22.846104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006872, 0.492103, -0.870510,
		-0.885860, 0.406846, 0.222999,
		0.463902, 0.769617, 0.438730,
		37.336723, 41.131989, 22.977722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571793, 41.241116, 22.544065>,  <37.011990, 40.593258, 22.670612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571793, 41.241116, 22.544065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.950520, 41.352791, 22.608055>,  <37.177757, 41.419796, 22.646450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.950520, 41.352791, 22.608055>,  <36.571793, 41.241116, 22.544065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950520, 41.352791, 22.608055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004351, 0.486015, -0.873940,
		-0.321745, 0.828157, 0.458952,
		0.946816, 0.279189, 0.159976,
		37.234566, 41.436546, 22.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573414, 41.817623, 22.279232>,  <36.571793, 41.241116, 22.544065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573414, 41.817623, 22.279232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959030, 41.715149, 22.307486>,  <37.190399, 41.653664, 22.324438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959030, 41.715149, 22.307486>,  <36.573414, 41.817623, 22.279232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959030, 41.715149, 22.307486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195938, 0.505685, -0.840174,
		0.179523, 0.823803, 0.537698,
		0.964044, -0.256186, 0.070632,
		37.248241, 41.638294, 22.328674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.420094, 33.459858, 35.851341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817883, 33.430344, 35.821453>,  <37.056557, 33.412636, 35.803520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817883, 33.430344, 35.821453>,  <36.420094, 33.459858, 35.851341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817883, 33.430344, 35.821453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025091, 0.523974, -0.851364,
		0.101976, 0.848532, 0.519226,
		0.994470, -0.073790, -0.074723,
		37.116222, 33.408207, 35.799038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664749, 34.113056, 35.928951>,  <36.420094, 33.459858, 35.851341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664749, 34.113056, 35.928951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919323, 33.905685, 35.700504>,  <37.072067, 33.781261, 35.563435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919323, 33.905685, 35.700504>,  <36.664749, 34.113056, 35.928951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919323, 33.905685, 35.700504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225992, 0.582610, -0.780701,
		0.737478, 0.625936, 0.253634,
		0.636439, -0.518430, -0.571118,
		37.110256, 33.750156, 35.529167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824272, 34.571640, 35.466095>,  <36.664749, 34.113056, 35.928951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824272, 34.571640, 35.466095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963169, 34.239990, 35.290836>,  <37.046505, 34.041000, 35.185680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.963169, 34.239990, 35.290836>,  <36.824272, 34.571640, 35.466095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963169, 34.239990, 35.290836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031740, 0.456556, -0.889128,
		0.937239, 0.322647, 0.132218,
		0.347240, -0.829129, -0.438143,
		37.067341, 33.991253, 35.159393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478382, 34.736031, 35.132336>,  <36.824272, 34.571640, 35.466095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478382, 34.736031, 35.132336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345898, 34.407494, 34.946560>,  <37.266407, 34.210373, 34.835094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345898, 34.407494, 34.946560>,  <37.478382, 34.736031, 35.132336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345898, 34.407494, 34.946560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037772, 0.503367, -0.863247,
		0.942801, -0.268372, -0.197743,
		-0.331209, -0.821339, -0.464438,
		37.246536, 34.161091, 34.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835121, 34.800491, 34.561062>,  <37.478382, 34.736031, 35.132336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835121, 34.800491, 34.561062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534122, 34.545792, 34.493774>,  <37.353523, 34.392971, 34.453403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.534122, 34.545792, 34.493774>,  <37.835121, 34.800491, 34.561062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534122, 34.545792, 34.493774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258936, 0.520891, -0.813403,
		0.605558, -0.568525, -0.556847,
		-0.752497, -0.636750, -0.168218,
		37.308372, 34.354767, 34.443310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757626, 34.732464, 33.897301>,  <37.835121, 34.800491, 34.561062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757626, 34.732464, 33.897301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398796, 34.573074, 33.973701>,  <37.183498, 34.477440, 34.019543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.398796, 34.573074, 33.973701>,  <37.757626, 34.732464, 33.897301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398796, 34.573074, 33.973701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297631, 0.225378, -0.927696,
		0.326616, -0.889058, -0.320778,
		-0.897072, -0.398474, 0.190999,
		37.129673, 34.453533, 34.031002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672863, 34.289112, 33.432056>,  <37.757626, 34.732464, 33.897301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672863, 34.289112, 33.432056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303040, 34.380611, 33.553951>,  <37.081146, 34.435513, 33.627087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.303040, 34.380611, 33.553951>,  <37.672863, 34.289112, 33.432056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303040, 34.380611, 33.553951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285292, 0.114562, -0.951569,
		-0.252581, -0.966721, -0.040659,
		-0.924560, 0.228749, 0.304734,
		37.025673, 34.449238, 33.645370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123890, 33.954189, 32.991920>,  <37.672863, 34.289112, 33.432056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123890, 33.954189, 32.991920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913258, 34.246754, 33.165241>,  <36.786877, 34.422291, 33.269234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.913258, 34.246754, 33.165241>,  <37.123890, 33.954189, 32.991920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913258, 34.246754, 33.165241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392660, 0.242808, -0.887053,
		-0.754008, -0.637247, 0.159337,
		-0.526583, 0.731410, 0.433301,
		36.755283, 34.466175, 33.295231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512569, 33.905872, 32.644577>,  <37.123890, 33.954189, 32.991920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512569, 33.905872, 32.644577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515549, 34.274914, 32.798843>,  <36.517338, 34.496338, 32.891403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515549, 34.274914, 32.798843>,  <36.512569, 33.905872, 32.644577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515549, 34.274914, 32.798843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486299, 0.340344, -0.804785,
		-0.873761, -0.181555, 0.451198,
		0.007449, 0.922607, 0.385669,
		36.517784, 34.551697, 32.914543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869965, 34.188572, 32.483620>,  <36.512569, 33.905872, 32.644577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869965, 34.188572, 32.483620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064606, 34.527031, 32.570568>,  <36.181393, 34.730106, 32.622738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064606, 34.527031, 32.570568>,  <35.869965, 34.188572, 32.483620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064606, 34.527031, 32.570568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343559, 0.414114, -0.842898,
		-0.803232, 0.335478, 0.492212,
		0.486605, 0.846147, 0.217373,
		36.210587, 34.780876, 32.635780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406723, 34.761097, 32.336773>,  <35.869965, 34.188572, 32.483620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406723, 34.761097, 32.336773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791100, 34.871048, 32.323891>,  <36.021725, 34.937019, 32.316162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791100, 34.871048, 32.323891>,  <35.406723, 34.761097, 32.336773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791100, 34.871048, 32.323891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138965, 0.378601, -0.915068,
		-0.239344, 0.883799, 0.402012,
		0.960939, 0.274882, -0.032201,
		36.079380, 34.953514, 32.314232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340458, 35.401173, 32.127739>,  <35.406723, 34.761097, 32.336773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340458, 35.401173, 32.127739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714355, 35.297974, 32.030010>,  <35.938694, 35.236053, 31.971373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714355, 35.297974, 32.030010>,  <35.340458, 35.401173, 32.127739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714355, 35.297974, 32.030010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123522, 0.408776, -0.904237,
		0.333162, 0.875409, 0.350232,
		0.934744, -0.257996, -0.244321,
		35.994778, 35.220573, 31.956715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244129, 36.120522, 32.428177>,  <35.340458, 35.401173, 32.127739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244129, 36.120522, 32.428177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868019, 36.197544, 32.540466>,  <34.642353, 36.243755, 32.607841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868019, 36.197544, 32.540466>,  <35.244129, 36.120522, 32.428177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868019, 36.197544, 32.540466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090597, -0.653358, 0.751609,
		0.328138, 0.732152, 0.596891,
		-0.940275, 0.192554, 0.280722,
		34.585938, 36.255310, 32.624683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270569, 36.089733, 33.218334>,  <35.244129, 36.120522, 32.428177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270569, 36.089733, 33.218334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893482, 36.036121, 33.096138>,  <34.667233, 36.003952, 33.022820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893482, 36.036121, 33.096138>,  <35.270569, 36.089733, 33.218334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893482, 36.036121, 33.096138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160683, -0.620086, 0.767902,
		-0.292356, 0.772999, 0.563027,
		-0.942713, -0.134032, -0.305494,
		34.610668, 35.995911, 33.004490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802265, 36.233494, 33.746391>,  <35.270569, 36.089733, 33.218334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802265, 36.233494, 33.746391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625656, 35.964638, 33.508640>,  <34.519691, 35.803322, 33.365990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.625656, 35.964638, 33.508640>,  <34.802265, 36.233494, 33.746391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625656, 35.964638, 33.508640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246550, -0.546054, 0.800649,
		-0.862709, 0.500051, 0.075381,
		-0.441527, -0.672142, -0.594373,
		34.493198, 35.762997, 33.330330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373825, 35.898342, 34.152885>,  <34.802265, 36.233494, 33.746391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373825, 35.898342, 34.152885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290665, 35.646591, 33.853378>,  <34.240768, 35.495541, 33.673672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290665, 35.646591, 33.853378>,  <34.373825, 35.898342, 34.152885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290665, 35.646591, 33.853378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293010, -0.690272, 0.661566,
		-0.933232, 0.356938, -0.040907,
		-0.207901, -0.629381, -0.748770,
		34.228294, 35.457775, 33.628746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692894, 35.700954, 34.178692>,  <34.373825, 35.898342, 34.152885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692894, 35.700954, 34.178692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862354, 35.396214, 33.982693>,  <33.964031, 35.213367, 33.865093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862354, 35.396214, 33.982693>,  <33.692894, 35.700954, 34.178692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862354, 35.396214, 33.982693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507568, -0.647699, 0.568209,
		-0.750264, 0.007987, -0.661090,
		0.423649, -0.761855, -0.489999,
		33.989449, 35.167656, 33.835693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211308, 35.228966, 34.110977>,  <33.692894, 35.700954, 34.178692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211308, 35.228966, 34.110977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535248, 35.005020, 34.040905>,  <33.729614, 34.870651, 33.998863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.535248, 35.005020, 34.040905>,  <33.211308, 35.228966, 34.110977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535248, 35.005020, 34.040905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304103, -0.656025, 0.690763,
		-0.501657, -0.506143, -0.701541,
		0.809853, -0.559867, -0.175180,
		33.778202, 34.837059, 33.988350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962986, 34.468460, 34.116016>,  <33.211308, 35.228966, 34.110977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962986, 34.468460, 34.116016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358246, 34.469810, 34.177410>,  <33.595402, 34.470623, 34.214245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358246, 34.469810, 34.177410>,  <32.962986, 34.468460, 34.116016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358246, 34.469810, 34.177410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117855, -0.623976, 0.772505,
		0.098382, -0.781436, -0.616181,
		0.988145, 0.003381, 0.153484,
		33.654690, 34.470825, 34.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013351, 33.814030, 34.375538>,  <32.962986, 34.468460, 34.116016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013351, 33.814030, 34.375538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342701, 34.013817, 34.483315>,  <33.540310, 34.133690, 34.547981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342701, 34.013817, 34.483315>,  <33.013351, 33.814030, 34.375538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342701, 34.013817, 34.483315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031862, -0.433349, 0.900663,
		0.566611, -0.750163, -0.340892,
		0.823369, 0.499464, 0.269442,
		33.589710, 34.163654, 34.564148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278072, 33.211090, 34.651775>,  <33.013351, 33.814030, 34.375538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278072, 33.211090, 34.651775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446102, 33.554588, 34.769146>,  <33.546921, 33.760685, 34.839569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446102, 33.554588, 34.769146>,  <33.278072, 33.211090, 34.651775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446102, 33.554588, 34.769146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101086, -0.277046, 0.955524,
		0.901842, -0.431053, -0.029573,
		0.420075, 0.858743, 0.293426,
		33.572124, 33.812210, 34.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724354, 32.988537, 35.184826>,  <33.278072, 33.211090, 34.651775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724354, 32.988537, 35.184826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645546, 33.377361, 35.235855>,  <33.598263, 33.610657, 35.266472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645546, 33.377361, 35.235855>,  <33.724354, 32.988537, 35.184826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645546, 33.377361, 35.235855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054292, -0.140744, 0.988556,
		0.978895, 0.187839, 0.080505,
		-0.197020, 0.972064, 0.127575,
		33.586441, 33.668980, 35.274128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177082, 33.101368, 35.698395>,  <33.724354, 32.988537, 35.184826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177082, 33.101368, 35.698395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904900, 33.394100, 35.683392>,  <33.741589, 33.569740, 35.674389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904900, 33.394100, 35.683392>,  <34.177082, 33.101368, 35.698395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904900, 33.394100, 35.683392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147521, -0.086668, 0.985254,
		0.717786, 0.675956, 0.166934,
		-0.680456, 0.731828, -0.037508,
		33.700764, 33.613647, 35.672138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211250, 33.347054, 36.363483>,  <34.177082, 33.101368, 35.698395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211250, 33.347054, 36.363483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859192, 33.493286, 36.242367>,  <33.647957, 33.581028, 36.169697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.859192, 33.493286, 36.242367>,  <34.211250, 33.347054, 36.363483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859192, 33.493286, 36.242367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329433, -0.011153, 0.944113,
		0.341776, 0.930711, 0.130252,
		-0.880150, 0.365584, -0.302795,
		33.595146, 33.602962, 36.151527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141075, 34.005966, 36.644867>,  <34.211250, 33.347054, 36.363483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141075, 34.005966, 36.644867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784267, 33.845161, 36.562218>,  <33.570183, 33.748680, 36.512630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784267, 33.845161, 36.562218>,  <34.141075, 34.005966, 36.644867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784267, 33.845161, 36.562218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232139, 0.015229, 0.972563,
		-0.387832, 0.915510, -0.106907,
		-0.892019, -0.402008, -0.206619,
		33.516663, 33.724560, 36.500233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788479, 34.492599, 36.955883>,  <34.141075, 34.005966, 36.644867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788479, 34.492599, 36.955883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561768, 34.165791, 36.913479>,  <33.425739, 33.969704, 36.888035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.561768, 34.165791, 36.913479>,  <33.788479, 34.492599, 36.955883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561768, 34.165791, 36.913479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023383, -0.112674, 0.993357,
		-0.823539, 0.565492, 0.044757,
		-0.566778, -0.817021, -0.106015,
		33.391735, 33.920685, 36.881676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159103, 34.631187, 37.193291>,  <33.788479, 34.492599, 36.955883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159103, 34.631187, 37.193291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276794, 34.252720, 37.247238>,  <33.347408, 34.025639, 37.279606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276794, 34.252720, 37.247238>,  <33.159103, 34.631187, 37.193291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276794, 34.252720, 37.247238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065284, 0.120889, 0.990517,
		-0.953503, -0.300242, -0.026201,
		0.294227, -0.946172, 0.134869,
		33.365063, 33.968868, 37.287701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612423, 35.168591, 37.201790>,  <33.159103, 34.631187, 37.193291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612423, 35.168591, 37.201790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957020, 35.212601, 37.400074>,  <34.163776, 35.239006, 37.519047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957020, 35.212601, 37.400074>,  <33.612423, 35.168591, 37.201790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957020, 35.212601, 37.400074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053012, 0.951418, -0.303304,
		-0.505001, 0.287572, 0.813803,
		0.861489, 0.110027, 0.495712,
		34.215466, 35.245609, 37.548786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599403, 35.739429, 37.654270>,  <33.612423, 35.168591, 37.201790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599403, 35.739429, 37.654270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976952, 35.677181, 37.537731>,  <34.203480, 35.639832, 37.467808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976952, 35.677181, 37.537731>,  <33.599403, 35.739429, 37.654270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976952, 35.677181, 37.537731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003854, 0.876807, -0.480828,
		0.330287, 0.454963, 0.826994,
		0.943873, -0.155624, -0.291351,
		34.260113, 35.630493, 37.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821472, 36.384090, 37.669830>,  <33.599403, 35.739429, 37.654270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821472, 36.384090, 37.669830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124584, 36.214382, 37.471535>,  <34.306454, 36.112556, 37.352558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124584, 36.214382, 37.471535>,  <33.821472, 36.384090, 37.669830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124584, 36.214382, 37.471535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115240, 0.834830, -0.538312,
		0.642249, 0.350794, 0.681512,
		0.757783, -0.424268, -0.495743,
		34.351921, 36.087101, 37.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386135, 36.801323, 37.783169>,  <33.821472, 36.384090, 37.669830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386135, 36.801323, 37.783169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430016, 36.611477, 37.433838>,  <34.456345, 36.497570, 37.224239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430016, 36.611477, 37.433838>,  <34.386135, 36.801323, 37.783169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430016, 36.611477, 37.433838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307103, 0.851828, -0.424354,
		0.945333, -0.221651, 0.239199,
		0.109698, -0.474615, -0.873331,
		34.462925, 36.469093, 37.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899883, 37.079487, 37.478737>,  <34.386135, 36.801323, 37.783169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899883, 37.079487, 37.478737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773396, 36.863922, 37.166435>,  <34.697502, 36.734581, 36.979053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773396, 36.863922, 37.166435>,  <34.899883, 37.079487, 37.478737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773396, 36.863922, 37.166435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374955, 0.684978, -0.624670,
		0.871443, -0.490282, -0.014537,
		-0.316222, -0.538914, -0.780753,
		34.678528, 36.702248, 36.932209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465557, 37.072727, 36.942142>,  <34.899883, 37.079487, 37.478737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465557, 37.072727, 36.942142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148746, 36.982433, 36.715256>,  <34.958660, 36.928257, 36.579124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148746, 36.982433, 36.715256>,  <35.465557, 37.072727, 36.942142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148746, 36.982433, 36.715256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262773, 0.712591, -0.650511,
		0.551039, -0.664272, -0.505074,
		-0.792027, -0.225737, -0.567217,
		34.911137, 36.914711, 36.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673462, 36.875305, 36.168118>,  <35.465557, 37.072727, 36.942142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673462, 36.875305, 36.168118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298370, 37.012115, 36.143837>,  <35.073315, 37.094200, 36.129269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298370, 37.012115, 36.143837>,  <35.673462, 36.875305, 36.168118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298370, 37.012115, 36.143837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264925, 0.591129, -0.761828,
		-0.224680, -0.730469, -0.644929,
		-0.937728, 0.342025, -0.060705,
		35.017052, 37.114723, 36.125626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452290, 36.862003, 35.454365>,  <35.673462, 36.875305, 36.168118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452290, 36.862003, 35.454365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208904, 37.136223, 35.614265>,  <35.062874, 37.300755, 35.710205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.208904, 37.136223, 35.614265>,  <35.452290, 36.862003, 35.454365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208904, 37.136223, 35.614265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206864, 0.623327, -0.754103,
		-0.766148, -0.376149, -0.521085,
		-0.608461, 0.685548, 0.399749,
		35.026367, 37.341888, 35.734192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046169, 37.037056, 34.978462>,  <35.452290, 36.862003, 35.454365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046169, 37.037056, 34.978462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970955, 37.350761, 35.214962>,  <34.925827, 37.538986, 35.356861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970955, 37.350761, 35.214962>,  <35.046169, 37.037056, 34.978462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970955, 37.350761, 35.214962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034658, 0.606907, -0.794017,
		-0.981550, -0.128815, -0.141303,
		-0.188039, 0.784264, 0.591245,
		34.914543, 37.586040, 35.392334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468571, 37.348927, 34.707329>,  <35.046169, 37.037056, 34.978462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468571, 37.348927, 34.707329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616623, 37.644051, 34.933121>,  <34.705456, 37.821125, 35.068596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.616623, 37.644051, 34.933121>,  <34.468571, 37.348927, 34.707329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616623, 37.644051, 34.933121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037286, 0.595348, -0.802602,
		-0.928230, 0.318118, 0.192849,
		0.370134, 0.737809, 0.564481,
		34.727665, 37.865395, 35.102467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012711, 38.016029, 34.661846>,  <34.468571, 37.348927, 34.707329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012711, 38.016029, 34.661846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374325, 38.131855, 34.787624>,  <34.591293, 38.201351, 34.863091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374325, 38.131855, 34.787624>,  <34.012711, 38.016029, 34.661846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374325, 38.131855, 34.787624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070392, 0.624728, -0.777663,
		-0.421627, 0.725167, 0.544392,
		0.904033, 0.289563, 0.314449,
		34.645535, 38.218723, 34.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914764, 38.701527, 34.524662>,  <34.012711, 38.016029, 34.661846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914764, 38.701527, 34.524662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310131, 38.654881, 34.563503>,  <34.547352, 38.626892, 34.586807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310131, 38.654881, 34.563503>,  <33.914764, 38.701527, 34.524662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310131, 38.654881, 34.563503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135925, 0.395835, -0.908206,
		0.067470, 0.910888, 0.407102,
		0.988419, -0.116612, 0.097105,
		34.606655, 38.619896, 34.592636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286980, 39.357025, 34.590965>,  <33.914764, 38.701527, 34.524662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286980, 39.357025, 34.590965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570995, 39.095303, 34.486866>,  <34.741405, 38.938271, 34.424404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570995, 39.095303, 34.486866>,  <34.286980, 39.357025, 34.590965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570995, 39.095303, 34.486866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237409, 0.570393, -0.786314,
		0.662932, 0.496529, 0.560339,
		0.710041, -0.654302, -0.260251,
		34.784008, 38.899014, 34.408791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936611, 39.795437, 34.399998>,  <34.286980, 39.357025, 34.590965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936611, 39.795437, 34.399998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960884, 39.436878, 34.224361>,  <34.975449, 39.221745, 34.118980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960884, 39.436878, 34.224361>,  <34.936611, 39.795437, 34.399998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960884, 39.436878, 34.224361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175982, 0.442615, -0.879274,
		0.982521, -0.023918, 0.184606,
		0.060679, -0.896393, -0.439088,
		34.979088, 39.167961, 34.092636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541245, 39.801567, 34.032940>,  <34.936611, 39.795437, 34.399998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541245, 39.801567, 34.032940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356800, 39.491657, 33.859921>,  <35.246136, 39.305710, 33.756107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.356800, 39.491657, 33.859921>,  <35.541245, 39.801567, 34.032940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356800, 39.491657, 33.859921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386294, 0.263579, -0.883913,
		0.798848, -0.574670, 0.177754,
		-0.461106, -0.774778, -0.432551,
		35.218468, 39.259224, 33.730156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040337, 39.440590, 33.734554>,  <35.541245, 39.801567, 34.032940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040337, 39.440590, 33.734554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692432, 39.378784, 33.547089>,  <35.483688, 39.341702, 33.434608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692432, 39.378784, 33.547089>,  <36.040337, 39.440590, 33.734554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692432, 39.378784, 33.547089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431156, 0.224037, -0.874020,
		0.240053, -0.962253, -0.128236,
		-0.869758, -0.154521, -0.468662,
		35.431503, 39.332432, 33.406490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184746, 39.383762, 33.103344>,  <36.040337, 39.440590, 33.734554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184746, 39.383762, 33.103344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794231, 39.396378, 33.017681>,  <35.559921, 39.403946, 32.966282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794231, 39.396378, 33.017681>,  <36.184746, 39.383762, 33.103344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794231, 39.396378, 33.017681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210766, 0.364043, -0.907221,
		0.049349, -0.930848, -0.362059,
		-0.976290, 0.031539, -0.214157,
		35.501343, 39.405838, 32.953434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118256, 39.229256, 32.336792>,  <36.184746, 39.383762, 33.103344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118256, 39.229256, 32.336792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771564, 39.409500, 32.422340>,  <35.563549, 39.517647, 32.473671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771564, 39.409500, 32.422340>,  <36.118256, 39.229256, 32.336792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771564, 39.409500, 32.422340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077431, 0.545134, -0.834766,
		-0.492742, -0.706951, -0.507372,
		-0.866724, 0.450610, 0.213870,
		35.511547, 39.544682, 32.486500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809605, 39.101254, 31.762100>,  <36.118256, 39.229256, 32.336792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809605, 39.101254, 31.762100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644199, 39.415321, 31.946499>,  <35.544956, 39.603760, 32.057137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644199, 39.415321, 31.946499>,  <35.809605, 39.101254, 31.762100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644199, 39.415321, 31.946499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000716, 0.506593, -0.862185,
		-0.910497, -0.356196, -0.210046,
		-0.413514, 0.785168, 0.460996,
		35.520145, 39.650871, 32.084797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322109, 39.331436, 31.261095>,  <35.809605, 39.101254, 31.762100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322109, 39.331436, 31.261095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380558, 39.637470, 31.511948>,  <35.415627, 39.821091, 31.662460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380558, 39.637470, 31.511948>,  <35.322109, 39.331436, 31.261095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380558, 39.637470, 31.511948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054929, 0.626685, -0.777335,
		-0.987740, 0.148035, 0.049549,
		0.146124, 0.765083, 0.627133,
		35.424397, 39.866997, 31.700087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855362, 39.797565, 31.099726>,  <35.322109, 39.331436, 31.261095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855362, 39.797565, 31.099726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130295, 40.006706, 31.301401>,  <35.295254, 40.132191, 31.422407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130295, 40.006706, 31.301401>,  <34.855362, 39.797565, 31.099726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130295, 40.006706, 31.301401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037312, 0.718642, -0.694378,
		-0.725389, 0.458453, 0.513451,
		0.687328, 0.522852, 0.504189,
		35.336494, 40.163563, 31.452658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745869, 40.493641, 30.978228>,  <34.855362, 39.797565, 31.099726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745869, 40.493641, 30.978228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128380, 40.511227, 31.093882>,  <35.357887, 40.521778, 31.163275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.128380, 40.511227, 31.093882>,  <34.745869, 40.493641, 30.978228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128380, 40.511227, 31.093882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172844, 0.712548, -0.680001,
		-0.235917, 0.700245, 0.673795,
		0.956278, 0.043962, 0.289135,
		35.415264, 40.524414, 31.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942711, 41.112690, 31.227160>,  <34.745869, 40.493641, 30.978228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942711, 41.112690, 31.227160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284122, 40.958187, 31.087273>,  <35.488968, 40.865486, 31.003340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284122, 40.958187, 31.087273>,  <34.942711, 41.112690, 31.227160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284122, 40.958187, 31.087273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143635, 0.819589, -0.554655,
		0.500862, 0.423181, 0.755020,
		0.853526, -0.386253, -0.349718,
		35.540180, 40.842312, 30.982357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409916, 41.678707, 31.117617>,  <34.942711, 41.112690, 31.227160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409916, 41.678707, 31.117617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629654, 41.389877, 30.949415>,  <35.761497, 41.216579, 30.848494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629654, 41.389877, 30.949415>,  <35.409916, 41.678707, 31.117617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629654, 41.389877, 30.949415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385769, 0.665562, -0.638912,
		0.741214, 0.188768, 0.644180,
		0.549348, -0.722076, -0.420503,
		35.794460, 41.173256, 30.823265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255188, 41.812347, 31.166763>,  <35.409916, 41.678707, 31.117617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255188, 41.812347, 31.166763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178627, 41.589993, 30.843195>,  <36.132690, 41.456577, 30.649054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178627, 41.589993, 30.843195>,  <36.255188, 41.812347, 31.166763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178627, 41.589993, 30.843195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474069, 0.669290, -0.572109,
		0.859432, -0.492986, 0.135428,
		-0.191402, -0.555891, -0.808919,
		36.121208, 41.423225, 30.600519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836834, 41.735954, 30.768351>,  <36.255188, 41.812347, 31.166763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836834, 41.735954, 30.768351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569153, 41.638531, 30.487537>,  <36.408546, 41.580078, 30.319050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569153, 41.638531, 30.487537>,  <36.836834, 41.735954, 30.768351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569153, 41.638531, 30.487537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519800, 0.521705, -0.676484,
		0.531034, -0.817614, -0.222506,
		-0.669186, -0.243578, -0.702040,
		36.368393, 41.565464, 30.276928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222713, 41.582798, 30.216673>,  <36.836834, 41.735954, 30.768351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222713, 41.582798, 30.216673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859489, 41.646782, 30.061832>,  <36.641556, 41.685173, 29.968927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.859489, 41.646782, 30.061832>,  <37.222713, 41.582798, 30.216673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859489, 41.646782, 30.061832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394034, 0.639627, -0.660011,
		0.142026, -0.751858, -0.643846,
		-0.908056, 0.159959, -0.387101,
		36.587074, 41.694771, 29.945702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524734, 40.895477, 29.961285>,  <37.222713, 41.582798, 30.216673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524734, 40.895477, 29.961285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924000, 40.907650, 29.940363>,  <38.163559, 40.914951, 29.927811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924000, 40.907650, 29.940363>,  <37.524734, 40.895477, 29.961285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924000, 40.907650, 29.940363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060157, -0.592152, 0.803578,
		-0.006518, -0.805252, -0.592897,
		0.998168, 0.030429, -0.052302,
		38.223450, 40.916779, 29.924673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778954, 40.236729, 30.169674>,  <37.524734, 40.895477, 29.961285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778954, 40.236729, 30.169674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099102, 40.473644, 30.206758>,  <38.291191, 40.615795, 30.229010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099102, 40.473644, 30.206758>,  <37.778954, 40.236729, 30.169674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099102, 40.473644, 30.206758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305422, -0.535921, 0.787087,
		0.515869, -0.601648, -0.609835,
		0.800373, 0.592291, 0.092709,
		38.339214, 40.651333, 30.234571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413269, 39.888901, 30.277039>,  <37.778954, 40.236729, 30.169674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413269, 39.888901, 30.277039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522411, 40.242943, 30.427847>,  <38.587898, 40.455368, 30.518332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.522411, 40.242943, 30.427847>,  <38.413269, 39.888901, 30.277039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522411, 40.242943, 30.427847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308102, -0.451643, 0.837312,
		0.911385, -0.112304, -0.395935,
		0.272855, 0.885103, 0.377019,
		38.604267, 40.508472, 30.540953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088799, 39.705822, 30.545998>,  <38.413269, 39.888901, 30.277039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088799, 39.705822, 30.545998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940651, 40.039658, 30.709114>,  <38.851761, 40.239960, 30.806984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.940651, 40.039658, 30.709114>,  <39.088799, 39.705822, 30.545998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940651, 40.039658, 30.709114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244910, -0.335740, 0.909559,
		0.896017, 0.436744, -0.080051,
		-0.370368, 0.834586, 0.407792,
		38.829540, 40.290035, 30.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582115, 39.905308, 30.970264>,  <39.088799, 39.705822, 30.545998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582115, 39.905308, 30.970264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256748, 40.090370, 31.111292>,  <39.061527, 40.201408, 31.195908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256748, 40.090370, 31.111292>,  <39.582115, 39.905308, 30.970264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256748, 40.090370, 31.111292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187749, -0.364855, 0.911938,
		0.550551, 0.807978, 0.209915,
		-0.813415, 0.462657, 0.352569,
		39.012722, 40.229168, 31.217062>
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
