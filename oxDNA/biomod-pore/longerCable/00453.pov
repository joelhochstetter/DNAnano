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
	<24.595510, 34.527660, 35.143692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357912, 34.849449, 35.143887>,  <24.215353, 35.042522, 35.144005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357912, 34.849449, 35.143887>,  <24.595510, 34.527660, 35.143692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357912, 34.849449, 35.143887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769682, -0.568486, 0.290540,
		0.234008, 0.172203, 0.956863,
		-0.593994, 0.804469, 0.000488,
		24.179714, 35.090790, 35.144032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321157, 34.498981, 35.453968>,  <24.595510, 34.527660, 35.143692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321157, 34.498981, 35.453968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564926, 34.453278, 35.767796>,  <25.711187, 34.425858, 35.956093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564926, 34.453278, 35.767796>,  <25.321157, 34.498981, 35.453968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564926, 34.453278, 35.767796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306869, -0.946427, 0.100534,
		0.731052, -0.302028, -0.611835,
		0.609421, -0.114258, 0.784571,
		25.747753, 34.418999, 36.003166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402548, 33.864765, 35.369045>,  <25.321157, 34.498981, 35.453968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402548, 33.864765, 35.369045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530928, 33.974579, 35.731617>,  <25.607956, 34.040466, 35.949162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.530928, 33.974579, 35.731617>,  <25.402548, 33.864765, 35.369045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.530928, 33.974579, 35.731617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266994, -0.892022, 0.364708,
		0.908683, -0.359065, -0.212996,
		0.320951, 0.274536, 0.906433,
		25.627213, 34.056938, 36.003548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795570, 33.334843, 35.681099>,  <25.402548, 33.864765, 35.369045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795570, 33.334843, 35.681099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673035, 33.559883, 35.988251>,  <25.599514, 33.694908, 36.172543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673035, 33.559883, 35.988251>,  <25.795570, 33.334843, 35.681099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673035, 33.559883, 35.988251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185215, -0.826470, 0.531642,
		0.933730, 0.020641, 0.357383,
		-0.306340, 0.562603, 0.767876,
		25.581133, 33.728664, 36.218613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089409, 33.113510, 36.236687>,  <25.795570, 33.334843, 35.681099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089409, 33.113510, 36.236687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750563, 33.281906, 36.366402>,  <25.547255, 33.382946, 36.444229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750563, 33.281906, 36.366402>,  <26.089409, 33.113510, 36.236687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750563, 33.281906, 36.366402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155579, -0.779976, 0.606162,
		0.508127, 0.463036, 0.726227,
		-0.847114, 0.420993, 0.324288,
		25.496428, 33.408203, 36.463688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014080, 32.930767, 36.902622>,  <26.089409, 33.113510, 36.236687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014080, 32.930767, 36.902622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639097, 33.028912, 36.803856>,  <25.414106, 33.087799, 36.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639097, 33.028912, 36.803856>,  <26.014080, 32.930767, 36.902622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639097, 33.028912, 36.803856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336296, -0.821514, 0.460456,
		-0.089867, 0.514696, 0.852650,
		-0.937459, 0.245363, -0.246917,
		25.357859, 33.102520, 36.729782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601982, 33.052753, 37.478214>,  <26.014080, 32.930767, 36.902622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601982, 33.052753, 37.478214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358374, 32.946419, 37.179302>,  <25.212210, 32.882618, 36.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358374, 32.946419, 37.179302>,  <25.601982, 33.052753, 37.478214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358374, 32.946419, 37.179302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196476, -0.862234, 0.466851,
		-0.768436, 0.431144, 0.472887,
		-0.609019, -0.265834, -0.747281,
		25.175669, 32.866669, 36.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914827, 32.962307, 37.762390>,  <25.601982, 33.052753, 37.478214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914827, 32.962307, 37.762390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926088, 32.718174, 37.445732>,  <24.932844, 32.571693, 37.255737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926088, 32.718174, 37.445732>,  <24.914827, 32.962307, 37.762390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926088, 32.718174, 37.445732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150123, -0.785556, 0.600304,
		-0.988266, 0.101944, -0.113740,
		0.028152, -0.610335, -0.791643,
		24.934534, 32.535072, 37.208241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.269413, 32.570488, 37.751011>,  <24.914827, 32.962307, 37.762390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.269413, 32.570488, 37.751011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587286, 32.374031, 37.608318>,  <24.778009, 32.256157, 37.522705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587286, 32.374031, 37.608318>,  <24.269413, 32.570488, 37.751011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587286, 32.374031, 37.608318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075860, -0.663413, 0.744398,
		-0.602266, -0.564499, -0.564462,
		0.794683, -0.491145, -0.356728,
		24.825691, 32.226688, 37.501301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093164, 31.966322, 37.834778>,  <24.269413, 32.570488, 37.751011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093164, 31.966322, 37.834778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483686, 31.891350, 37.791512>,  <24.717999, 31.846367, 37.765553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483686, 31.891350, 37.791512>,  <24.093164, 31.966322, 37.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.483686, 31.891350, 37.791512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011214, -0.542994, 0.839662,
		-0.216115, -0.818552, -0.532228,
		0.976304, -0.187432, -0.108170,
		24.776577, 31.835121, 37.759060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.052656, 31.394318, 38.057663>,  <24.093164, 31.966322, 37.834778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.052656, 31.394318, 38.057663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446436, 31.464174, 38.050072>,  <24.682703, 31.506088, 38.045517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.446436, 31.464174, 38.050072>,  <24.052656, 31.394318, 38.057663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446436, 31.464174, 38.050072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116091, -0.565660, 0.816426,
		0.131846, -0.805933, -0.577138,
		0.984449, 0.174643, -0.018981,
		24.741770, 31.516567, 38.044376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325974, 30.662296, 38.147243>,  <24.052656, 31.394318, 38.057663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325974, 30.662296, 38.147243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559965, 30.968040, 38.255726>,  <24.700359, 31.151487, 38.320816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559965, 30.968040, 38.255726>,  <24.325974, 30.662296, 38.147243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559965, 30.968040, 38.255726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193973, -0.456534, 0.868304,
		0.787513, -0.455332, -0.415328,
		0.584977, 0.764362, 0.271205,
		24.735458, 31.197350, 38.337086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851934, 30.505741, 38.776443>,  <24.325974, 30.662296, 38.147243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851934, 30.505741, 38.776443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237774, 30.439837, 38.858810>,  <25.469278, 30.400293, 38.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237774, 30.439837, 38.858810>,  <24.851934, 30.505741, 38.776443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237774, 30.439837, 38.858810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221205, 0.930613, -0.291594,
		-0.143587, 0.326822, 0.934115,
		0.964599, -0.164761, 0.205919,
		25.527153, 30.390408, 38.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167088, 30.926916, 39.406494>,  <24.851934, 30.505741, 38.776443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167088, 30.926916, 39.406494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368099, 30.817717, 39.078365>,  <25.488707, 30.752197, 38.881489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368099, 30.817717, 39.078365>,  <25.167088, 30.926916, 39.406494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368099, 30.817717, 39.078365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121595, 0.961723, -0.245567,
		0.855966, 0.023658, 0.516491,
		0.502531, -0.272999, -0.820326,
		25.518858, 30.735817, 38.832268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551203, 31.604856, 39.159378>,  <25.167088, 30.926916, 39.406494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551203, 31.604856, 39.159378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555454, 31.329472, 38.869301>,  <25.558004, 31.164242, 38.695255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555454, 31.329472, 38.869301>,  <25.551203, 31.604856, 39.159378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555454, 31.329472, 38.869301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005238, 0.725189, -0.688530,
		0.999930, 0.011118, 0.004102,
		0.010629, -0.688460, -0.725196,
		25.558643, 31.122934, 38.651741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631081, 31.930130, 38.509674>,  <25.551203, 31.604856, 39.159378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631081, 31.930130, 38.509674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519449, 31.567392, 38.383339>,  <25.452471, 31.349751, 38.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519449, 31.567392, 38.383339>,  <25.631081, 31.930130, 38.509674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519449, 31.567392, 38.383339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325967, 0.398838, -0.857131,
		0.903250, -0.136255, -0.406908,
		-0.279079, -0.906842, -0.315836,
		25.435726, 31.295340, 38.288589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992579, 31.689850, 37.931721>,  <25.631081, 31.930130, 38.509674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992579, 31.689850, 37.931721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611702, 31.573856, 37.970165>,  <25.383175, 31.504261, 37.993233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611702, 31.573856, 37.970165>,  <25.992579, 31.689850, 37.931721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611702, 31.573856, 37.970165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252896, 0.571724, -0.780497,
		0.171383, -0.767490, -0.617728,
		-0.952193, -0.289984, 0.096111,
		25.326044, 31.486860, 37.998997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995705, 31.597771, 37.311268>,  <25.992579, 31.689850, 37.931721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995705, 31.597771, 37.311268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631039, 31.656853, 37.464657>,  <25.412239, 31.692303, 37.556690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631039, 31.656853, 37.464657>,  <25.995705, 31.597771, 37.311268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631039, 31.656853, 37.464657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206319, 0.642503, -0.737985,
		-0.355386, -0.751912, -0.555273,
		-0.911665, 0.147706, 0.383471,
		25.357540, 31.701164, 37.579697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654779, 31.611197, 36.698509>,  <25.995705, 31.597771, 37.311268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654779, 31.611197, 36.698509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417131, 31.789431, 36.966381>,  <25.274542, 31.896372, 37.127106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417131, 31.789431, 36.966381>,  <25.654779, 31.611197, 36.698509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417131, 31.789431, 36.966381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417219, 0.541090, -0.730171,
		-0.687712, -0.713214, -0.135566,
		-0.594121, 0.445587, 0.669680,
		25.238895, 31.923107, 37.167286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247995, 31.724691, 36.259441>,  <25.654779, 31.611197, 36.698509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247995, 31.724691, 36.259441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140532, 31.981764, 36.546432>,  <25.076054, 32.136009, 36.718628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140532, 31.981764, 36.546432>,  <25.247995, 31.724691, 36.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140532, 31.981764, 36.546432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049624, 0.753113, -0.656017,
		-0.961956, -0.140641, -0.234224,
		-0.268659, 0.642683, 0.717482,
		25.059933, 32.174568, 36.761677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594679, 32.174858, 36.057316>,  <25.247995, 31.724691, 36.259441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594679, 32.174858, 36.057316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846300, 32.355602, 36.310333>,  <24.997272, 32.464050, 36.462143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846300, 32.355602, 36.310333>,  <24.594679, 32.174858, 36.057316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846300, 32.355602, 36.310333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014246, 0.806866, -0.590562,
		-0.777231, 0.380507, 0.501126,
		0.629055, 0.451864, 0.632542,
		25.035017, 32.491161, 36.500095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362978, 32.899303, 36.023407>,  <24.594679, 32.174858, 36.057316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362978, 32.899303, 36.023407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568773, 32.874252, 36.365490>,  <24.692251, 32.859222, 36.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568773, 32.874252, 36.365490>,  <24.362978, 32.899303, 36.023407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568773, 32.874252, 36.365490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255982, 0.963071, -0.083475,
		-0.818398, 0.261865, 0.511518,
		0.514488, -0.062624, 0.855208,
		24.723120, 32.855465, 36.622051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155378, 33.489254, 36.507645>,  <24.362978, 32.899303, 36.023407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155378, 33.489254, 36.507645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529881, 33.363461, 36.570286>,  <24.754581, 33.287983, 36.607868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529881, 33.363461, 36.570286>,  <24.155378, 33.489254, 36.507645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529881, 33.363461, 36.570286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342645, 0.915846, -0.209333,
		-0.077590, 0.249648, 0.965223,
		0.936255, -0.314487, 0.156601,
		24.810757, 33.269115, 36.617268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553328, 33.229023, 37.169666>,  <24.155378, 33.489254, 36.507645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553328, 33.229023, 37.169666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171219, 33.192669, 37.057098>,  <23.941954, 33.170856, 36.989555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.171219, 33.192669, 37.057098>,  <24.553328, 33.229023, 37.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171219, 33.192669, 37.057098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083418, -0.995774, 0.038414,
		-0.283726, 0.013220, 0.958814,
		-0.955270, -0.090881, -0.281424,
		23.884638, 33.165405, 36.972672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.424353, 34.013695, 36.940063>,  <24.553328, 33.229023, 37.169666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.424353, 34.013695, 36.940063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760857, 33.828732, 36.828022>,  <24.962759, 33.717754, 36.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760857, 33.828732, 36.828022>,  <24.424353, 34.013695, 36.940063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760857, 33.828732, 36.828022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391484, 0.878360, -0.274270,
		0.372857, 0.121077, 0.919956,
		0.841260, -0.462412, -0.280103,
		25.013235, 33.690006, 36.743992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072105, 34.265572, 37.259216>,  <24.424353, 34.013695, 36.940063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072105, 34.265572, 37.259216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233234, 34.109627, 36.927979>,  <25.329912, 34.016060, 36.729237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233234, 34.109627, 36.927979>,  <25.072105, 34.265572, 37.259216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233234, 34.109627, 36.927979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387864, 0.892204, -0.231373,
		0.829032, -0.227985, 0.510616,
		0.402824, -0.389866, -0.828093,
		25.354082, 33.992668, 36.679550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761158, 34.598644, 37.233379>,  <25.072105, 34.265572, 37.259216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761158, 34.598644, 37.233379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680748, 34.445240, 36.872822>,  <25.632502, 34.353199, 36.656487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680748, 34.445240, 36.872822>,  <25.761158, 34.598644, 37.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680748, 34.445240, 36.872822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413050, 0.801190, -0.432995,
		0.888245, -0.459363, -0.002648,
		-0.201023, -0.383512, -0.901392,
		25.620441, 34.330185, 36.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403273, 34.298420, 36.819500>,  <25.761158, 34.598644, 37.233379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403273, 34.298420, 36.819500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092138, 34.455677, 36.623375>,  <25.905458, 34.550034, 36.505699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092138, 34.455677, 36.623375>,  <26.403273, 34.298420, 36.819500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092138, 34.455677, 36.623375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575847, 0.758348, -0.305466,
		0.251736, -0.519948, -0.816262,
		-0.777837, 0.393145, -0.490313,
		25.858788, 34.573620, 36.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876123, 34.636127, 36.231270>,  <26.403273, 34.298420, 36.819500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876123, 34.636127, 36.231270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540195, 34.853252, 36.234303>,  <26.338638, 34.983528, 36.236122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540195, 34.853252, 36.234303>,  <26.876123, 34.636127, 36.231270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540195, 34.853252, 36.234303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463980, 0.724955, -0.509080,
		-0.281830, -0.424019, -0.860686,
		-0.839818, 0.542816, 0.007578,
		26.288250, 35.016098, 36.236576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675917, 34.854786, 35.551407>,  <26.876123, 34.636127, 36.231270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675917, 34.854786, 35.551407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508717, 35.133083, 35.785061>,  <26.408396, 35.300064, 35.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508717, 35.133083, 35.785061>,  <26.675917, 34.854786, 35.551407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508717, 35.133083, 35.785061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212231, 0.699999, -0.681879,
		-0.883308, -0.161055, -0.440259,
		-0.418001, 0.695746, 0.584134,
		26.383316, 35.341808, 35.960300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396072, 34.616741, 35.516724>,  <26.675917, 34.854786, 35.551407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396072, 34.616741, 35.516724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619267, 34.595905, 35.185436>,  <27.753183, 34.583405, 34.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619267, 34.595905, 35.185436>,  <27.396072, 34.616741, 35.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619267, 34.595905, 35.185436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824609, 0.077208, -0.560410,
		0.093135, 0.995653, 0.000130,
		0.557984, -0.052086, -0.828215,
		27.786661, 34.580280, 34.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278404, 35.247658, 35.128109>,  <27.396072, 34.616741, 35.516724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278404, 35.247658, 35.128109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369589, 34.928707, 34.904602>,  <27.424299, 34.737335, 34.770496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369589, 34.928707, 34.904602>,  <27.278404, 35.247658, 35.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369589, 34.928707, 34.904602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868491, 0.092919, -0.486919,
		0.440179, 0.596283, -0.671334,
		0.227961, -0.797379, -0.558767,
		27.437977, 34.689495, 34.736973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173456, 35.551228, 34.523769>,  <27.278404, 35.247658, 35.128109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173456, 35.551228, 34.523769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149193, 35.152561, 34.501923>,  <27.134634, 34.913361, 34.488815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.149193, 35.152561, 34.501923>,  <27.173456, 35.551228, 34.523769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149193, 35.152561, 34.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879438, 0.079245, -0.469371,
		0.472133, 0.019560, -0.881310,
		-0.060659, -0.996663, -0.054617,
		27.130995, 34.853561, 34.485538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948984, 35.428356, 33.880714>,  <27.173456, 35.551228, 34.523769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948984, 35.428356, 33.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855568, 35.100403, 34.089809>,  <26.799519, 34.903629, 34.215267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855568, 35.100403, 34.089809>,  <26.948984, 35.428356, 33.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855568, 35.100403, 34.089809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861685, -0.074572, -0.501934,
		0.450509, -0.567654, -0.689065,
		-0.233540, -0.819883, 0.522734,
		26.785505, 34.854439, 34.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968227, 34.809967, 33.460926>,  <26.948984, 35.428356, 33.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968227, 34.809967, 33.460926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716755, 34.763229, 33.768459>,  <26.565870, 34.735188, 33.952980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716755, 34.763229, 33.768459>,  <26.968227, 34.809967, 33.460926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716755, 34.763229, 33.768459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769940, -0.045463, -0.636495,
		0.109324, -0.992109, -0.061381,
		-0.628682, -0.116843, 0.768835,
		26.528151, 34.728176, 33.999111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563347, 34.124298, 33.452023>,  <26.968227, 34.809967, 33.460926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563347, 34.124298, 33.452023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434389, 34.473042, 33.599495>,  <26.357014, 34.682289, 33.687977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434389, 34.473042, 33.599495>,  <26.563347, 34.124298, 33.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434389, 34.473042, 33.599495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577162, 0.127658, -0.806590,
		-0.750297, -0.472830, 0.462047,
		-0.322396, 0.871858, 0.368680,
		26.337669, 34.734600, 33.710098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070175, 34.659973, 33.088535>,  <26.563347, 34.124298, 33.452023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070175, 34.659973, 33.088535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105055, 34.580559, 33.479019>,  <26.125982, 34.532909, 33.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105055, 34.580559, 33.479019>,  <26.070175, 34.659973, 33.088535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105055, 34.580559, 33.479019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954406, -0.297485, 0.024752,
		0.285493, -0.933856, -0.215424,
		0.087200, -0.198536, 0.976207,
		26.131214, 34.521000, 33.771881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687321, 34.085072, 33.160538>,  <26.070175, 34.659973, 33.088535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687321, 34.085072, 33.160538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733456, 34.232327, 33.529575>,  <25.761137, 34.320679, 33.750996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733456, 34.232327, 33.529575>,  <25.687321, 34.085072, 33.160538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733456, 34.232327, 33.529575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936902, -0.268260, 0.224169,
		0.330018, -0.890233, 0.313964,
		0.115339, 0.368133, 0.922592,
		25.768057, 34.342766, 33.806355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400179, 33.559879, 33.623623>,  <25.687321, 34.085072, 33.160538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400179, 33.559879, 33.623623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387638, 33.900532, 33.832901>,  <25.380114, 34.104923, 33.958469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387638, 33.900532, 33.832901>,  <25.400179, 33.559879, 33.623623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387638, 33.900532, 33.832901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974528, -0.142346, 0.173300,
		0.222063, -0.504438, 0.834404,
		-0.031354, 0.851634, 0.523199,
		25.378231, 34.156021, 33.989861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089548, 33.554012, 34.390556>,  <25.400179, 33.559879, 33.623623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089548, 33.554012, 34.390556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029848, 33.904858, 34.207954>,  <24.994028, 34.115364, 34.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029848, 33.904858, 34.207954>,  <25.089548, 33.554012, 34.390556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.029848, 33.904858, 34.207954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975671, -0.055650, 0.212060,
		0.160596, 0.477048, 0.864080,
		-0.149248, 0.877113, -0.456505,
		24.985073, 34.167992, 34.071003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448183, 33.634109, 34.077232>,  <25.089548, 33.554012, 34.390556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448183, 33.634109, 34.077232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355137, 33.863041, 34.391766>,  <24.299309, 34.000401, 34.580486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.355137, 33.863041, 34.391766>,  <24.448183, 33.634109, 34.077232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355137, 33.863041, 34.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864694, 0.491801, -0.102159,
		-0.445190, 0.656176, -0.609294,
		-0.232617, 0.572333, 0.786336,
		24.285351, 34.034740, 34.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275023, 34.398239, 33.934799>,  <24.448183, 33.634109, 34.077232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275023, 34.398239, 33.934799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443525, 34.343357, 34.293400>,  <24.544626, 34.310429, 34.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443525, 34.343357, 34.293400>,  <24.275023, 34.398239, 33.934799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443525, 34.343357, 34.293400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831559, 0.452994, -0.321413,
		-0.362012, 0.880892, 0.304919,
		0.421257, -0.137203, 0.896503,
		24.569902, 34.302197, 34.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540493, 35.074581, 34.406746>,  <24.275023, 34.398239, 33.934799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540493, 35.074581, 34.406746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741125, 34.728580, 34.401215>,  <24.861504, 34.520981, 34.397896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741125, 34.728580, 34.401215>,  <24.540493, 35.074581, 34.406746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741125, 34.728580, 34.401215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834610, 0.488038, -0.255431,
		0.227697, 0.116577, 0.966728,
		0.501578, -0.865002, -0.013828,
		24.891598, 34.469078, 34.397068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213469, 35.169434, 34.714451>,  <24.540493, 35.074581, 34.406746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213469, 35.169434, 34.714451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277056, 34.834332, 34.505493>,  <25.315208, 34.633270, 34.380119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277056, 34.834332, 34.505493>,  <25.213469, 35.169434, 34.714451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277056, 34.834332, 34.505493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899479, 0.341030, -0.273193,
		0.407021, -0.426451, 0.807758,
		0.158966, -0.837757, -0.522391,
		25.324745, 34.583004, 34.348778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837212, 34.791241, 35.003338>,  <25.213469, 35.169434, 34.714451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837212, 34.791241, 35.003338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805237, 34.626305, 34.640331>,  <25.786051, 34.527344, 34.422527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805237, 34.626305, 34.640331>,  <25.837212, 34.791241, 35.003338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805237, 34.626305, 34.640331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975709, 0.153926, -0.155883,
		0.203967, -0.897931, 0.390023,
		-0.079938, -0.412344, -0.907514,
		25.781256, 34.502602, 34.368076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161852, 34.194885, 35.019646>,  <25.837212, 34.791241, 35.003338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161852, 34.194885, 35.019646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172602, 34.272846, 34.627464>,  <26.179052, 34.319622, 34.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172602, 34.272846, 34.627464>,  <26.161852, 34.194885, 35.019646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172602, 34.272846, 34.627464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998305, 0.045424, 0.036394,
		0.051629, -0.979771, -0.193347,
		0.026875, 0.194898, -0.980455,
		26.180664, 34.331314, 34.333328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478218, 33.731194, 34.692326>,  <26.161852, 34.194885, 35.019646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478218, 33.731194, 34.692326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533552, 34.069534, 34.486259>,  <26.566751, 34.272541, 34.362621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533552, 34.069534, 34.486259>,  <26.478218, 33.731194, 34.692326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533552, 34.069534, 34.486259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990204, -0.128101, 0.055561,
		-0.018997, -0.517800, -0.855291,
		0.138333, 0.845856, -0.515161,
		26.575052, 34.323292, 34.331711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978716, 33.588985, 34.091221>,  <26.478218, 33.731194, 34.692326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978716, 33.588985, 34.091221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016790, 33.964245, 34.224373>,  <27.039635, 34.189400, 34.304264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016790, 33.964245, 34.224373>,  <26.978716, 33.588985, 34.091221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016790, 33.964245, 34.224373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958940, -0.176160, 0.222265,
		0.267159, 0.298060, -0.916399,
		0.095185, 0.938151, 0.332884,
		27.045345, 34.245689, 34.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602043, 33.846230, 33.809399>,  <26.978716, 33.588985, 34.091221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602043, 33.846230, 33.809399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548418, 34.085293, 34.125584>,  <27.516243, 34.228729, 34.315296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548418, 34.085293, 34.125584>,  <27.602043, 33.846230, 33.809399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548418, 34.085293, 34.125584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980393, -0.036256, 0.193690,
		0.144419, 0.800931, -0.581079,
		-0.134065, 0.597658, 0.790463,
		27.508198, 34.264591, 34.362724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056578, 34.512806, 33.799709>,  <27.602043, 33.846230, 33.809399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056578, 34.512806, 33.799709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965565, 34.391006, 34.169685>,  <27.910957, 34.317928, 34.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965565, 34.391006, 34.169685>,  <28.056578, 34.512806, 33.799709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965565, 34.391006, 34.169685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966867, -0.183546, 0.177424,
		0.115744, 0.934662, 0.336168,
		-0.227534, -0.304494, 0.924939,
		27.897305, 34.299660, 34.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641451, 34.686287, 34.184498>,  <28.056578, 34.512806, 33.799709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641451, 34.686287, 34.184498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449678, 34.453117, 34.446903>,  <28.334616, 34.313217, 34.604347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449678, 34.453117, 34.446903>,  <28.641451, 34.686287, 34.184498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449678, 34.453117, 34.446903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877569, -0.322255, 0.355000,
		0.004467, 0.745893, 0.666051,
		-0.479430, -0.582919, 0.656012,
		28.305849, 34.278240, 34.643707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689484, 34.877338, 34.973389>,  <28.641451, 34.686287, 34.184498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689484, 34.877338, 34.973389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655291, 34.480331, 34.938530>,  <28.634775, 34.242126, 34.917614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655291, 34.480331, 34.938530>,  <28.689484, 34.877338, 34.973389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655291, 34.480331, 34.938530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849316, -0.118320, 0.514453,
		-0.520917, -0.030041, 0.853078,
		-0.085481, -0.992521, -0.087149,
		28.629646, 34.182575, 34.912384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605894, 34.548206, 35.676952>,  <28.689484, 34.877338, 34.973389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605894, 34.548206, 35.676952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763786, 34.287388, 35.418026>,  <28.858522, 34.130898, 35.262669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763786, 34.287388, 35.418026>,  <28.605894, 34.548206, 35.676952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763786, 34.287388, 35.418026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861731, 0.018312, 0.507035,
		-0.318759, -0.757955, 0.569120,
		0.394731, -0.652050, -0.647316,
		28.882206, 34.091774, 35.223831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263035, 34.323013, 36.006893>,  <28.605894, 34.548206, 35.676952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263035, 34.323013, 36.006893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260834, 34.121998, 35.661079>,  <29.259512, 34.001389, 35.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260834, 34.121998, 35.661079>,  <29.263035, 34.323013, 36.006893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260834, 34.121998, 35.661079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868878, -0.430357, 0.244628,
		-0.494995, -0.749829, 0.439017,
		-0.005505, -0.502542, -0.864535,
		29.259182, 33.971233, 35.401718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197294, 33.572533, 36.123241>,  <29.263035, 34.323013, 36.006893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197294, 33.572533, 36.123241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393436, 33.744648, 35.820084>,  <29.511122, 33.847916, 35.638191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393436, 33.744648, 35.820084>,  <29.197294, 33.572533, 36.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393436, 33.744648, 35.820084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870937, -0.210099, 0.444215,
		0.031908, -0.877901, -0.477778,
		0.490357, 0.430289, -0.757893,
		29.540545, 33.873734, 35.592716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857069, 33.175201, 35.886028>,  <29.197294, 33.572533, 36.123241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857069, 33.175201, 35.886028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871799, 33.564972, 35.797363>,  <29.880638, 33.798836, 35.744164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871799, 33.564972, 35.797363>,  <29.857069, 33.175201, 35.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871799, 33.564972, 35.797363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858983, 0.082483, 0.505316,
		0.510677, -0.209012, -0.833980,
		0.036828, 0.974428, -0.221660,
		29.882847, 33.857300, 35.730865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518023, 33.299923, 35.593681>,  <29.857069, 33.175201, 35.886028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518023, 33.299923, 35.593681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382212, 33.629250, 35.775612>,  <30.300726, 33.826847, 35.884769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382212, 33.629250, 35.775612>,  <30.518023, 33.299923, 35.593681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382212, 33.629250, 35.775612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807866, 0.007594, 0.589317,
		0.481740, 0.567531, -0.667709,
		-0.339526, 0.823317, 0.454831,
		30.280354, 33.876244, 35.912060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017698, 33.793011, 35.522129>,  <30.518023, 33.299923, 35.593681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017698, 33.793011, 35.522129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786972, 33.826481, 35.847160>,  <30.648537, 33.846561, 36.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786972, 33.826481, 35.847160>,  <31.017698, 33.793011, 35.522129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786972, 33.826481, 35.847160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797800, -0.156008, 0.582389,
		0.175501, 0.984205, 0.023231,
		-0.576815, 0.083676, 0.812578,
		30.613928, 33.851585, 36.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128544, 34.466064, 36.011078>,  <31.017698, 33.793011, 35.522129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128544, 34.466064, 36.011078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034876, 34.106823, 36.159977>,  <30.978676, 33.891277, 36.249317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034876, 34.106823, 36.159977>,  <31.128544, 34.466064, 36.011078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034876, 34.106823, 36.159977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926909, -0.090745, 0.364151,
		-0.293267, 0.430313, 0.853713,
		-0.234168, -0.898107, 0.372248,
		30.964624, 33.837391, 36.271652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779579, 34.463474, 36.474854>,  <31.128544, 34.466064, 36.011078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779579, 34.463474, 36.474854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911049, 34.170185, 36.712967>,  <31.989931, 33.994213, 36.855835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911049, 34.170185, 36.712967>,  <31.779579, 34.463474, 36.474854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911049, 34.170185, 36.712967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900964, -0.432462, -0.035221,
		0.283262, -0.524752, -0.802744,
		0.328673, -0.733220, 0.595283,
		32.009651, 33.950218, 36.891552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570461, 33.872498, 35.994736>,  <31.779579, 34.463474, 36.474854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570461, 33.872498, 35.994736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555943, 33.477577, 36.056591>,  <31.547232, 33.240623, 36.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555943, 33.477577, 36.056591>,  <31.570461, 33.872498, 35.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555943, 33.477577, 36.056591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269596, -0.139325, -0.952841,
		0.962289, -0.076271, -0.261117,
		-0.036294, -0.987305, 0.154634,
		31.545053, 33.181385, 36.102982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971493, 33.603882, 35.466270>,  <31.570461, 33.872498, 35.994736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971493, 33.603882, 35.466270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715349, 33.324108, 35.593224>,  <31.561663, 33.156242, 35.669395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715349, 33.324108, 35.593224>,  <31.971493, 33.603882, 35.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715349, 33.324108, 35.593224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231508, -0.218238, -0.948038,
		0.732354, -0.680563, -0.022174,
		-0.640360, -0.699433, 0.317383,
		31.523241, 33.114277, 35.688438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086941, 32.964272, 35.039562>,  <31.971493, 33.603882, 35.466270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086941, 32.964272, 35.039562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714890, 32.940815, 35.184570>,  <31.491659, 32.926743, 35.271576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714890, 32.940815, 35.184570>,  <32.086941, 32.964272, 35.039562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714890, 32.940815, 35.184570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317524, -0.367520, -0.874133,
		0.184490, -0.928165, 0.323222,
		-0.930130, -0.058638, 0.362518,
		31.435850, 32.923225, 35.293327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752911, 32.834103, 34.739178>,  <32.086941, 32.964272, 35.039562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752911, 32.834103, 34.739178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523457, 32.507328, 34.715336>,  <32.385784, 32.311264, 34.701031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523457, 32.507328, 34.715336>,  <32.752911, 32.834103, 34.739178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523457, 32.507328, 34.715336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653297, -0.412406, -0.634921,
		0.494111, -0.403151, 0.770275,
		-0.573635, -0.816939, -0.059603,
		32.351364, 32.262245, 34.697456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042343, 32.186626, 34.945702>,  <32.752911, 32.834103, 34.739178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042343, 32.186626, 34.945702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759262, 32.133377, 34.668159>,  <32.589413, 32.101429, 34.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759262, 32.133377, 34.668159>,  <33.042343, 32.186626, 34.945702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759262, 32.133377, 34.668159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667294, -0.448591, -0.594546,
		-0.232111, -0.883768, 0.406300,
		-0.707703, -0.133121, -0.693855,
		32.546951, 32.093441, 34.460003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019180, 31.524948, 34.675808>,  <33.042343, 32.186626, 34.945702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019180, 31.524948, 34.675808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846115, 31.730362, 34.379406>,  <32.742275, 31.853609, 34.201565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846115, 31.730362, 34.379406>,  <33.019180, 31.524948, 34.675808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846115, 31.730362, 34.379406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664100, -0.374338, -0.647180,
		-0.609735, -0.772110, -0.179077,
		-0.432658, 0.513534, -0.741006,
		32.716316, 31.884422, 34.157104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286644, 30.938456, 34.146603>,  <33.019180, 31.524948, 34.675808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286644, 30.938456, 34.146603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138237, 31.251518, 33.946686>,  <33.049191, 31.439356, 33.826736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138237, 31.251518, 33.946686>,  <33.286644, 30.938456, 34.146603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138237, 31.251518, 33.946686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810111, 0.009702, -0.586196,
		-0.453942, -0.622376, -0.637640,
		-0.371021, 0.782658, -0.499790,
		33.026932, 31.486315, 33.796749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162937, 30.797203, 33.437969>,  <33.286644, 30.938456, 34.146603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162937, 30.797203, 33.437969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214512, 31.192875, 33.465973>,  <33.245457, 31.430279, 33.482777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214512, 31.192875, 33.465973>,  <33.162937, 30.797203, 33.437969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214512, 31.192875, 33.465973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801943, -0.062478, -0.594125,
		-0.583321, 0.132747, -0.801320,
		0.128933, 0.989179, 0.070010,
		33.253193, 31.489628, 33.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425304, 30.929449, 32.845703>,  <33.162937, 30.797203, 33.437969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425304, 30.929449, 32.845703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532677, 31.252466, 33.055775>,  <33.597099, 31.446276, 33.181820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532677, 31.252466, 33.055775>,  <33.425304, 30.929449, 32.845703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532677, 31.252466, 33.055775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801620, 0.115064, -0.586656,
		-0.534180, 0.578475, -0.616456,
		0.268434, 0.807543, 0.525182,
		33.613209, 31.494730, 33.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576874, 31.354929, 32.405407>,  <33.425304, 30.929449, 32.845703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576874, 31.354929, 32.405407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754559, 31.523722, 32.721535>,  <33.861168, 31.624996, 32.911213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754559, 31.523722, 32.721535>,  <33.576874, 31.354929, 32.405407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754559, 31.523722, 32.721535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856090, 0.060189, -0.513311,
		-0.264176, 0.904605, -0.334516,
		0.444209, 0.421980, 0.790323,
		33.887821, 31.650316, 32.958633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070652, 31.728996, 32.046570>,  <33.576874, 31.354929, 32.405407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070652, 31.728996, 32.046570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185066, 31.743446, 32.429585>,  <34.253716, 31.752115, 32.659393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185066, 31.743446, 32.429585>,  <34.070652, 31.728996, 32.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185066, 31.743446, 32.429585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931127, 0.225466, -0.286650,
		-0.226247, 0.973581, 0.030855,
		0.286034, 0.036124, 0.957538,
		34.270878, 31.754284, 32.716846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354614, 32.442551, 32.240578>,  <34.070652, 31.728996, 32.046570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354614, 32.442551, 32.240578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525494, 32.186249, 32.495743>,  <34.628021, 32.032467, 32.648842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525494, 32.186249, 32.495743>,  <34.354614, 32.442551, 32.240578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525494, 32.186249, 32.495743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888578, 0.167121, -0.427200,
		0.167121, 0.749338, 0.640752,
		0.427200, -0.640752, 0.637916,
		34.653652, 31.994022, 32.687119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060894, 32.750793, 32.394989>,  <34.354614, 32.442551, 32.240578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060894, 32.750793, 32.394989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078716, 32.361530, 32.485306>,  <35.089409, 32.127972, 32.539497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078716, 32.361530, 32.485306>,  <35.060894, 32.750793, 32.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078716, 32.361530, 32.485306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876467, -0.070380, -0.476291,
		0.479397, 0.219121, 0.849803,
		0.044557, -0.973156, 0.225792,
		35.092083, 32.069584, 32.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634624, 32.741264, 32.879189>,  <35.060894, 32.750793, 32.394989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634624, 32.741264, 32.879189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601265, 32.376068, 32.719444>,  <35.581249, 32.156948, 32.623596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601265, 32.376068, 32.719444>,  <35.634624, 32.741264, 32.879189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601265, 32.376068, 32.719444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945346, 0.054284, -0.321520,
		0.315224, -0.404349, 0.858566,
		-0.083400, -0.912992, -0.399362,
		35.576244, 32.102169, 32.599636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323219, 32.342472, 33.063370>,  <35.634624, 32.741264, 32.879189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323219, 32.342472, 33.063370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140148, 32.163364, 32.756115>,  <36.030308, 32.055901, 32.571762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140148, 32.163364, 32.756115>,  <36.323219, 32.342472, 33.063370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140148, 32.163364, 32.756115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879684, -0.102513, -0.464377,
		0.129191, -0.888251, 0.440817,
		-0.457673, -0.447773, -0.768137,
		36.002846, 32.029034, 32.525673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872566, 32.103306, 32.670918>,  <36.323219, 32.342472, 33.063370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872566, 32.103306, 32.670918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585835, 31.985023, 32.418343>,  <36.413795, 31.914053, 32.266796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585835, 31.985023, 32.418343>,  <36.872566, 32.103306, 32.670918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585835, 31.985023, 32.418343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689876, -0.169422, -0.703823,
		0.101147, -0.940134, 0.325448,
		-0.716827, -0.295708, -0.631440,
		36.370785, 31.896311, 32.228912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031891, 31.392756, 32.381218>,  <36.872566, 32.103306, 32.670918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031891, 31.392756, 32.381218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820534, 31.627533, 32.135845>,  <36.693718, 31.768400, 31.988621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820534, 31.627533, 32.135845>,  <37.031891, 31.392756, 32.381218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820534, 31.627533, 32.135845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638677, -0.201243, -0.742693,
		-0.559368, -0.784218, -0.268532,
		-0.528393, 0.586944, -0.613431,
		36.662014, 31.803616, 31.951817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106056, 30.980082, 31.817835>,  <37.031891, 31.392756, 32.381218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106056, 30.980082, 31.817835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985287, 31.338753, 31.688341>,  <36.912823, 31.553955, 31.610645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985287, 31.338753, 31.688341>,  <37.106056, 30.980082, 31.817835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985287, 31.338753, 31.688341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620490, -0.072974, -0.780812,
		-0.723763, -0.436623, -0.534348,
		-0.301927, 0.896680, -0.323736,
		36.894711, 31.607758, 31.591221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916306, 30.897676, 31.032351>,  <37.106056, 30.980082, 31.817835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916306, 30.897676, 31.032351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000042, 31.280939, 31.110443>,  <37.050285, 31.510897, 31.157299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000042, 31.280939, 31.110443>,  <36.916306, 30.897676, 31.032351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000042, 31.280939, 31.110443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445956, 0.084132, -0.891092,
		-0.870229, 0.273607, -0.409683,
		0.209341, 0.958155, 0.195231,
		37.062843, 31.568386, 31.169012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713856, 31.179501, 30.514973>,  <36.916306, 30.897676, 31.032351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713856, 31.179501, 30.514973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925034, 31.477057, 30.678875>,  <37.051739, 31.655590, 30.777216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925034, 31.477057, 30.678875>,  <36.713856, 31.179501, 30.514973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925034, 31.477057, 30.678875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290153, 0.295458, -0.910228,
		-0.798176, 0.599444, -0.059856,
		0.527946, 0.743890, 0.409758,
		37.083416, 31.700224, 30.801802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500996, 31.833212, 30.170784>,  <36.713856, 31.179501, 30.514973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500996, 31.833212, 30.170784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868008, 31.891619, 30.318743>,  <37.088215, 31.926662, 30.407518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868008, 31.891619, 30.318743>,  <36.500996, 31.833212, 30.170784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868008, 31.891619, 30.318743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292395, 0.382738, -0.876366,
		-0.269537, 0.912245, 0.308478,
		0.917527, 0.146016, 0.369898,
		37.143265, 31.935423, 30.429712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726852, 32.516911, 29.933601>,  <36.500996, 31.833212, 30.170784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726852, 32.516911, 29.933601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079708, 32.354923, 30.029797>,  <37.291420, 32.257729, 30.087513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079708, 32.354923, 30.029797>,  <36.726852, 32.516911, 29.933601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079708, 32.354923, 30.029797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425623, 0.466763, -0.775227,
		0.201693, 0.786213, 0.584114,
		0.882136, -0.404970, 0.240488,
		37.344349, 32.233433, 30.101942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211720, 33.071476, 29.850870>,  <36.726852, 32.516911, 29.933601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211720, 33.071476, 29.850870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417255, 32.731155, 29.806856>,  <37.540577, 32.526962, 29.780447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417255, 32.731155, 29.806856>,  <37.211720, 33.071476, 29.850870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417255, 32.731155, 29.806856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434423, 0.368656, -0.821808,
		0.739760, 0.374475, 0.559037,
		0.513839, -0.850800, -0.110036,
		37.571407, 32.475914, 29.773846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937050, 33.279129, 29.858900>,  <37.211720, 33.071476, 29.850870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937050, 33.279129, 29.858900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888203, 32.936169, 29.658922>,  <37.858894, 32.730392, 29.538935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888203, 32.936169, 29.658922>,  <37.937050, 33.279129, 29.858900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888203, 32.936169, 29.658922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678087, 0.295755, -0.672850,
		0.724766, -0.421173, 0.545278,
		-0.122117, -0.857404, -0.499945,
		37.851566, 32.678947, 29.508938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646851, 33.086388, 29.590303>,  <37.937050, 33.279129, 29.858900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646851, 33.086388, 29.590303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410744, 32.849239, 29.371183>,  <38.269081, 32.706951, 29.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410744, 32.849239, 29.371183>,  <38.646851, 33.086388, 29.590303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410744, 32.849239, 29.371183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612924, 0.112413, -0.782105,
		0.525270, -0.797410, 0.297033,
		-0.590268, -0.592874, -0.547799,
		38.233662, 32.671375, 29.206844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109249, 32.724876, 29.242422>,  <38.646851, 33.086388, 29.590303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109249, 32.724876, 29.242422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781956, 32.639389, 29.028948>,  <38.585579, 32.588097, 28.900864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781956, 32.639389, 29.028948>,  <39.109249, 32.724876, 29.242422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781956, 32.639389, 29.028948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558483, -0.075324, -0.826089,
		0.136351, -0.973987, 0.180990,
		-0.818233, -0.213718, -0.533684,
		38.536488, 32.575275, 28.868843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419678, 32.194050, 28.828375>,  <39.109249, 32.724876, 29.242422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419678, 32.194050, 28.828375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079132, 32.313629, 28.655949>,  <38.874805, 32.385376, 28.552492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079132, 32.313629, 28.655949>,  <39.419678, 32.194050, 28.828375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079132, 32.313629, 28.655949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393622, -0.179148, -0.901647,
		-0.346769, -0.937303, 0.034848,
		-0.851360, 0.298946, -0.431066,
		38.823723, 32.403313, 28.526628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218513, 31.824490, 28.304733>,  <39.419678, 32.194050, 28.828375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218513, 31.824490, 28.304733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013844, 32.142967, 28.175570>,  <38.891041, 32.334053, 28.098070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013844, 32.142967, 28.175570>,  <39.218513, 31.824490, 28.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013844, 32.142967, 28.175570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377223, -0.129496, -0.917024,
		-0.771943, -0.591023, -0.234082,
		-0.511670, 0.796192, -0.322911,
		38.860344, 32.381824, 28.078695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879646, 31.604368, 27.599867>,  <39.218513, 31.824490, 28.304733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879646, 31.604368, 27.599867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917004, 32.002579, 27.594191>,  <38.939419, 32.241505, 27.590784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917004, 32.002579, 27.594191>,  <38.879646, 31.604368, 27.599867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917004, 32.002579, 27.594191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512571, -0.060294, -0.856525,
		-0.853551, 0.072720, -0.515910,
		0.093393, 0.995528, -0.014190,
		38.945023, 32.301239, 27.589933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192162, 31.673216, 26.933992>,  <38.879646, 31.604368, 27.599867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192162, 31.673216, 26.933992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206909, 32.045689, 27.079067>,  <39.215755, 32.269173, 27.166113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206909, 32.045689, 27.079067>,  <39.192162, 31.673216, 26.933992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206909, 32.045689, 27.079067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594234, 0.271369, -0.757129,
		-0.803447, 0.243435, -0.543335,
		0.036867, 0.931181, 0.362687,
		39.217968, 32.325043, 27.187874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041763, 32.177078, 26.374397>,  <39.192162, 31.673216, 26.933992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041763, 32.177078, 26.374397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229866, 32.423035, 26.627621>,  <39.342728, 32.570610, 26.779554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229866, 32.423035, 26.627621>,  <39.041763, 32.177078, 26.374397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229866, 32.423035, 26.627621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538606, 0.368285, -0.757806,
		-0.699119, 0.697330, -0.157999,
		0.470252, 0.614896, 0.633061,
		39.370941, 32.607502, 26.817539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984619, 32.940453, 26.159575>,  <39.041763, 32.177078, 26.374397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984619, 32.940453, 26.159575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307030, 32.838860, 26.373417>,  <39.500477, 32.777905, 26.501722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307030, 32.838860, 26.373417>,  <38.984619, 32.940453, 26.159575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307030, 32.838860, 26.373417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590984, 0.394870, -0.703431,
		-0.032440, 0.882932, 0.468379,
		0.806031, -0.253985, 0.534608,
		39.548840, 32.762665, 26.533800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504395, 33.403564, 25.946468>,  <38.984619, 32.940453, 26.159575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504395, 33.403564, 25.946468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723747, 33.136478, 26.147839>,  <39.855358, 32.976227, 26.268660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723747, 33.136478, 26.147839>,  <39.504395, 33.403564, 25.946468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723747, 33.136478, 26.147839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828015, 0.349402, -0.438532,
		0.116916, 0.657325, 0.744482,
		0.548381, -0.667714, 0.503424,
		39.888260, 32.936165, 26.298866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182186, 33.812798, 26.046053>,  <39.504395, 33.403564, 25.946468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182186, 33.812798, 26.046053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241982, 33.417679, 26.063501>,  <40.277859, 33.180607, 26.073971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241982, 33.417679, 26.063501>,  <40.182186, 33.812798, 26.046053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241982, 33.417679, 26.063501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852956, 0.106514, -0.511001,
		0.500121, 0.113592, 0.858473,
		0.149485, -0.987801, 0.043619,
		40.286827, 33.121338, 26.076588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935719, 33.661278, 26.161577>,  <40.182186, 33.812798, 26.046053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935719, 33.661278, 26.161577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780472, 33.324219, 26.012278>,  <40.687325, 33.121983, 25.922699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780472, 33.324219, 26.012278>,  <40.935719, 33.661278, 26.161577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780472, 33.324219, 26.012278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640870, 0.044278, -0.766371,
		0.662305, -0.536647, 0.522840,
		-0.388120, -0.842644, -0.373247,
		40.664036, 33.071426, 25.900303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577339, 33.327099, 25.795620>,  <40.935719, 33.661278, 26.161577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577339, 33.327099, 25.795620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221561, 33.245380, 25.632084>,  <41.008095, 33.196350, 25.533962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221561, 33.245380, 25.632084>,  <41.577339, 33.327099, 25.795620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221561, 33.245380, 25.632084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451276, -0.250921, -0.856381,
		0.072367, -0.946204, 0.315374,
		-0.889445, -0.204294, -0.408841,
		40.954727, 33.184093, 25.509432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761776, 32.764431, 25.503105>,  <41.577339, 33.327099, 25.795620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761776, 32.764431, 25.503105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428394, 32.885105, 25.317915>,  <41.228367, 32.957512, 25.206800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428394, 32.885105, 25.317915>,  <41.761776, 32.764431, 25.503105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428394, 32.885105, 25.317915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462279, -0.078365, -0.883265,
		-0.302754, -0.950180, -0.074152,
		-0.833449, 0.301691, -0.462974,
		41.178360, 32.975613, 25.179022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776768, 32.387787, 24.830433>,  <41.761776, 32.764431, 25.503105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776768, 32.387787, 24.830433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514488, 32.686928, 24.788904>,  <41.357121, 32.866413, 24.763987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514488, 32.686928, 24.788904>,  <41.776768, 32.387787, 24.830433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514488, 32.686928, 24.788904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264697, 0.098912, -0.959245,
		-0.707101, -0.656459, -0.262810,
		-0.655700, 0.747849, -0.103822,
		41.317780, 32.911282, 24.757757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452106, 32.209888, 24.186079>,  <41.776768, 32.387787, 24.830433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452106, 32.209888, 24.186079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423103, 32.598400, 24.276726>,  <41.405701, 32.831509, 24.331114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423103, 32.598400, 24.276726>,  <41.452106, 32.209888, 24.186079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423103, 32.598400, 24.276726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376642, 0.237058, -0.895513,
		-0.923517, 0.020423, -0.383014,
		-0.072508, 0.971281, 0.226619,
		41.401352, 32.889786, 24.344711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104156, 32.478897, 23.601830>,  <41.452106, 32.209888, 24.186079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104156, 32.478897, 23.601830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270134, 32.793465, 23.784855>,  <41.369720, 32.982204, 23.894670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270134, 32.793465, 23.784855>,  <41.104156, 32.478897, 23.601830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270134, 32.793465, 23.784855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252970, 0.383353, -0.888283,
		-0.873974, 0.484335, -0.039872,
		0.414941, 0.786422, 0.457563,
		41.394615, 33.029392, 23.922123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907387, 33.196121, 23.342983>,  <41.104156, 32.478897, 23.601830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907387, 33.196121, 23.342983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252895, 33.299210, 23.516178>,  <41.460201, 33.361065, 23.620094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252895, 33.299210, 23.516178>,  <40.907387, 33.196121, 23.342983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252895, 33.299210, 23.516178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277511, 0.473915, -0.835699,
		-0.420577, 0.842012, 0.337833,
		0.863772, 0.257723, 0.432985,
		41.512028, 33.376526, 23.646074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061333, 33.978161, 23.100338>,  <40.907387, 33.196121, 23.342983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061333, 33.978161, 23.100338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402512, 33.810112, 23.224253>,  <41.607220, 33.709282, 23.298601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402512, 33.810112, 23.224253>,  <41.061333, 33.978161, 23.100338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402512, 33.810112, 23.224253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453326, 0.301972, -0.838635,
		0.258786, 0.855749, 0.448021,
		0.852951, -0.420127, 0.309788,
		41.658398, 33.684074, 23.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482285, 34.414017, 22.930265>,  <41.061333, 33.978161, 23.100338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482285, 34.414017, 22.930265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699951, 34.079334, 22.954962>,  <41.830551, 33.878525, 22.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699951, 34.079334, 22.954962>,  <41.482285, 34.414017, 22.930265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699951, 34.079334, 22.954962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443898, 0.224684, -0.867451,
		0.711929, 0.499441, 0.493676,
		0.544162, -0.836705, 0.061742,
		41.863201, 33.828323, 22.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195358, 34.701302, 22.891960>,  <41.482285, 34.414017, 22.930265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195358, 34.701302, 22.891960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205894, 34.312027, 22.800552>,  <42.212215, 34.078465, 22.745708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205894, 34.312027, 22.800552>,  <42.195358, 34.701302, 22.891960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205894, 34.312027, 22.800552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416231, 0.218517, -0.882611,
		0.908877, -0.071865, 0.410826,
		0.026344, -0.973183, -0.228518,
		42.213799, 34.020073, 22.731997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790161, 34.652821, 22.556112>,  <42.195358, 34.701302, 22.891960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790161, 34.652821, 22.556112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570053, 34.336628, 22.448530>,  <42.437988, 34.146912, 22.383982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570053, 34.336628, 22.448530>,  <42.790161, 34.652821, 22.556112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570053, 34.336628, 22.448530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380453, 0.049364, -0.923482,
		0.743275, -0.610488, 0.273580,
		-0.550269, -0.790485, -0.268953,
		42.404972, 34.099483, 22.367844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267197, 34.215355, 22.210369>,  <42.790161, 34.652821, 22.556112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267197, 34.215355, 22.210369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901257, 34.113132, 22.085316>,  <42.681694, 34.051800, 22.010284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901257, 34.113132, 22.085316>,  <43.267197, 34.215355, 22.210369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901257, 34.113132, 22.085316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305697, 0.067506, -0.949733,
		0.263814, -0.964435, 0.016365,
		-0.914851, -0.255555, -0.312633,
		42.626801, 34.036465, 21.991526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412960, 33.899708, 21.521330>,  <43.267197, 34.215355, 22.210369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412960, 33.899708, 21.521330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015507, 33.942642, 21.507689>,  <42.777035, 33.968403, 21.499504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015507, 33.942642, 21.507689>,  <43.412960, 33.899708, 21.521330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015507, 33.942642, 21.507689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075111, 0.405956, -0.910801,
		-0.083919, -0.907567, -0.411435,
		-0.993638, 0.107337, -0.034101,
		42.717415, 33.974842, 21.497458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266209, 33.625015, 20.928120>,  <43.412960, 33.899708, 21.521330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266209, 33.625015, 20.928120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960464, 33.863708, 21.025827>,  <42.777020, 34.006924, 21.084452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960464, 33.863708, 21.025827>,  <43.266209, 33.625015, 20.928120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960464, 33.863708, 21.025827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057786, 0.440704, -0.895790,
		-0.642196, -0.670591, -0.371339,
		-0.764359, 0.596731, 0.244268,
		42.731155, 34.042728, 21.099108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844250, 33.705662, 20.192657>,  <43.266209, 33.625015, 20.928120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844250, 33.705662, 20.192657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743160, 33.993149, 20.451759>,  <42.682507, 34.165642, 20.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743160, 33.993149, 20.451759>,  <42.844250, 33.705662, 20.192657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743160, 33.993149, 20.451759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120786, 0.640812, -0.758136,
		-0.959970, -0.269836, -0.075136,
		-0.252720, 0.718713, 0.647753,
		42.667343, 34.208763, 20.646086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161377, 34.075241, 19.953701>,  <42.844250, 33.705662, 20.192657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161377, 34.075241, 19.953701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358879, 34.327599, 20.193092>,  <42.477383, 34.479012, 20.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358879, 34.327599, 20.193092>,  <42.161377, 34.075241, 19.953701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358879, 34.327599, 20.193092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035682, 0.672945, -0.738832,
		-0.868868, 0.386158, 0.309760,
		0.493757, 0.630894, 0.598479,
		42.507008, 34.516869, 20.372637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865925, 34.844738, 19.803011>,  <42.161377, 34.075241, 19.953701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865925, 34.844738, 19.803011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247375, 34.815880, 19.919899>,  <42.476246, 34.798565, 19.990032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247375, 34.815880, 19.919899>,  <41.865925, 34.844738, 19.803011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247375, 34.815880, 19.919899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254573, 0.711304, -0.655163,
		-0.160592, 0.699172, 0.696684,
		0.953626, -0.072143, 0.292220,
		42.533463, 34.794235, 20.007565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181087, 35.464291, 20.099009>,  <41.865925, 34.844738, 19.803011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181087, 35.464291, 20.099009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448727, 35.241539, 19.902155>,  <42.609310, 35.107887, 19.784042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448727, 35.241539, 19.902155>,  <42.181087, 35.464291, 20.099009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448727, 35.241539, 19.902155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064944, 0.703488, -0.707734,
		0.740331, 0.441582, 0.506868,
		0.669098, -0.556875, -0.492136,
		42.649456, 35.074478, 19.754515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729912, 35.845074, 19.751961>,  <42.181087, 35.464291, 20.099009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729912, 35.845074, 19.751961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719978, 36.074490, 19.424438>,  <42.714016, 36.212139, 19.227926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719978, 36.074490, 19.424438>,  <42.729912, 35.845074, 19.751961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719978, 36.074490, 19.424438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800512, 0.502015, 0.327356,
		0.598803, -0.647332, -0.471590,
		-0.024837, 0.573535, -0.818804,
		42.712528, 36.246552, 19.178797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422329, 35.956738, 19.518518>,  <42.729912, 35.845074, 19.751961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422329, 35.956738, 19.518518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210087, 36.254852, 19.357025>,  <43.082741, 36.433720, 19.260128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210087, 36.254852, 19.357025>,  <43.422329, 35.956738, 19.518518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210087, 36.254852, 19.357025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735993, 0.641374, 0.216688,
		0.420441, -0.182170, -0.888844,
		-0.530608, 0.745287, -0.403735,
		43.050903, 36.478439, 19.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845592, 36.257816, 19.031847>,  <43.422329, 35.956738, 19.518518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845592, 36.257816, 19.031847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595005, 36.458752, 19.270241>,  <43.444653, 36.579311, 19.413277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595005, 36.458752, 19.270241>,  <43.845592, 36.257816, 19.031847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595005, 36.458752, 19.270241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765799, 0.539141, 0.350541,
		-0.145230, 0.676006, -0.722443,
		-0.626466, 0.502337, 0.595984,
		43.407066, 36.609451, 19.449036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830261, 37.015667, 18.859850>,  <43.845592, 36.257816, 19.031847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830261, 37.015667, 18.859850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756588, 36.932407, 19.244089>,  <43.712383, 36.882454, 19.474632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756588, 36.932407, 19.244089>,  <43.830261, 37.015667, 18.859850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756588, 36.932407, 19.244089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840705, 0.472958, 0.263677,
		-0.509206, 0.856146, 0.087878,
		-0.184183, -0.208145, 0.960600,
		43.701332, 36.869965, 19.532269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245319, 37.092056, 19.572485>,  <43.830261, 37.015667, 18.859850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245319, 37.092056, 19.572485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893223, 37.275112, 19.522295>,  <43.681965, 37.384945, 19.492180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893223, 37.275112, 19.522295>,  <44.245319, 37.092056, 19.572485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893223, 37.275112, 19.522295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322900, -0.383891, 0.865080,
		0.347723, 0.801995, 0.485688,
		-0.880241, 0.457637, -0.125477,
		43.629150, 37.412403, 19.484652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106110, 37.214874, 20.238096>,  <44.245319, 37.092056, 19.572485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106110, 37.214874, 20.238096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745079, 37.248043, 20.069113>,  <43.528461, 37.267944, 19.967722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745079, 37.248043, 20.069113>,  <44.106110, 37.214874, 20.238096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745079, 37.248043, 20.069113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410056, -0.464521, 0.784904,
		-0.131157, 0.881671, 0.453270,
		-0.902581, 0.082920, -0.422460,
		43.474304, 37.272919, 19.942375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527985, 37.450317, 20.662573>,  <44.106110, 37.214874, 20.238096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527985, 37.450317, 20.662573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298897, 37.285801, 20.378931>,  <43.161446, 37.187092, 20.208746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298897, 37.285801, 20.378931>,  <43.527985, 37.450317, 20.662573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298897, 37.285801, 20.378931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723949, -0.152035, 0.672891,
		-0.384562, 0.898736, -0.210679,
		-0.572721, -0.411290, -0.709106,
		43.127079, 37.162415, 20.166199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860962, 37.825058, 20.521730>,  <43.527985, 37.450317, 20.662573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860962, 37.825058, 20.521730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847301, 37.427891, 20.476217>,  <42.839104, 37.189590, 20.448910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847301, 37.427891, 20.476217>,  <42.860962, 37.825058, 20.521730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847301, 37.427891, 20.476217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821944, -0.036860, 0.568375,
		-0.568544, 0.112937, -0.814864,
		-0.034155, -0.992918, -0.113784,
		42.837055, 37.130016, 20.442081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194530, 37.669243, 20.396282>,  <42.860962, 37.825058, 20.521730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194530, 37.669243, 20.396282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373119, 37.366020, 20.586443>,  <42.480274, 37.184086, 20.700539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373119, 37.366020, 20.586443>,  <42.194530, 37.669243, 20.396282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373119, 37.366020, 20.586443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746944, -0.023213, 0.664482,
		-0.492682, -0.651770, -0.576593,
		0.446474, -0.758061, 0.475399,
		42.507061, 37.138603, 20.729063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587456, 37.223824, 20.633270>,  <42.194530, 37.669243, 20.396282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587456, 37.223824, 20.633270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891037, 37.077408, 20.848680>,  <42.073185, 36.989559, 20.977926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891037, 37.077408, 20.848680>,  <41.587456, 37.223824, 20.633270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891037, 37.077408, 20.848680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560827, 0.052777, 0.826249,
		-0.330859, -0.929103, -0.165228,
		0.758950, -0.366036, 0.538528,
		42.118721, 36.967598, 21.010239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338120, 36.612015, 21.039705>,  <41.587456, 37.223824, 20.633270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338120, 36.612015, 21.039705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645706, 36.782047, 21.230701>,  <41.830257, 36.884068, 21.345299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645706, 36.782047, 21.230701>,  <41.338120, 36.612015, 21.039705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645706, 36.782047, 21.230701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543814, 0.042270, 0.838141,
		0.336091, -0.904169, 0.263668,
		0.768966, 0.425078, 0.477493,
		41.876396, 36.909573, 21.373949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438442, 36.225437, 21.585726>,  <41.338120, 36.612015, 21.039705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438442, 36.225437, 21.585726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618587, 36.569725, 21.680672>,  <41.726673, 36.776299, 21.737638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618587, 36.569725, 21.680672>,  <41.438442, 36.225437, 21.585726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618587, 36.569725, 21.680672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337786, -0.081840, 0.937658,
		0.826484, -0.502462, 0.253881,
		0.450360, 0.860717, 0.237364,
		41.753696, 36.827942, 21.751881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874771, 35.989037, 22.033171>,  <41.438442, 36.225437, 21.585726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874771, 35.989037, 22.033171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845570, 36.381268, 22.105976>,  <41.828049, 36.616608, 22.149660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845570, 36.381268, 22.105976>,  <41.874771, 35.989037, 22.033171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845570, 36.381268, 22.105976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260585, -0.194916, 0.945570,
		0.962687, 0.021601, 0.269754,
		-0.073005, 0.980582, 0.182014,
		41.823669, 36.675442, 22.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020348, 35.988876, 22.758202>,  <41.874771, 35.989037, 22.033171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020348, 35.988876, 22.758202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869850, 36.349972, 22.674780>,  <41.779552, 36.566631, 22.624727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869850, 36.349972, 22.674780>,  <42.020348, 35.988876, 22.758202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869850, 36.349972, 22.674780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481514, 0.001792, 0.876437,
		0.791571, 0.430176, 0.434009,
		-0.376244, 0.902743, -0.208554,
		41.756977, 36.620796, 22.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049564, 36.333336, 23.410501>,  <42.020348, 35.988876, 22.758202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049564, 36.333336, 23.410501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787197, 36.538624, 23.189095>,  <41.629776, 36.661797, 23.056250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787197, 36.538624, 23.189095>,  <42.049564, 36.333336, 23.410501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787197, 36.538624, 23.189095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599858, 0.090721, 0.794947,
		0.458195, 0.853452, 0.248350,
		-0.655918, 0.513215, -0.553518,
		41.590424, 36.692589, 23.023039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854561, 36.980671, 23.755421>,  <42.049564, 36.333336, 23.410501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854561, 36.980671, 23.755421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557816, 36.869888, 23.511148>,  <41.379768, 36.803417, 23.364586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557816, 36.869888, 23.511148>,  <41.854561, 36.980671, 23.755421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557816, 36.869888, 23.511148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654824, 0.103166, 0.748707,
		-0.144358, 0.955328, -0.257893,
		-0.741867, -0.276956, -0.610679,
		41.335255, 36.786800, 23.327946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267658, 37.465584, 23.963732>,  <41.854561, 36.980671, 23.755421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267658, 37.465584, 23.963732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108589, 37.152889, 23.771585>,  <41.013149, 36.965275, 23.656298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108589, 37.152889, 23.771585>,  <41.267658, 37.465584, 23.963732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108589, 37.152889, 23.771585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682329, -0.098055, 0.724439,
		-0.613420, 0.615857, -0.494405,
		-0.397672, -0.781733, -0.480366,
		40.989288, 36.918369, 23.627476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566105, 37.542419, 23.958300>,  <41.267658, 37.465584, 23.963732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566105, 37.542419, 23.958300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596722, 37.150242, 23.885769>,  <40.615093, 36.914936, 23.842251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596722, 37.150242, 23.885769>,  <40.566105, 37.542419, 23.958300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596722, 37.150242, 23.885769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762140, -0.174792, 0.623371,
		-0.642872, 0.090480, -0.760611,
		0.076546, -0.980439, -0.181327,
		40.619686, 36.856110, 23.831371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863518, 37.328793, 23.768246>,  <40.566105, 37.542419, 23.958300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863518, 37.328793, 23.768246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064323, 36.995937, 23.862497>,  <40.184807, 36.796223, 23.919048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.064323, 36.995937, 23.862497>,  <39.863518, 37.328793, 23.768246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064323, 36.995937, 23.862497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736929, -0.268975, 0.620152,
		-0.452675, -0.484969, -0.748258,
		0.502017, -0.832140, 0.235630,
		40.214928, 36.746296, 23.933186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323570, 36.937901, 23.935928>,  <39.863518, 37.328793, 23.768246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323570, 36.937901, 23.935928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650394, 36.752766, 24.073442>,  <39.846489, 36.641685, 24.155951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650394, 36.752766, 24.073442>,  <39.323570, 36.937901, 23.935928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650394, 36.752766, 24.073442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533834, -0.382075, 0.754347,
		-0.217789, -0.799874, -0.559258,
		0.817061, -0.462839, 0.343788,
		39.895512, 36.613914, 24.176579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108429, 36.232388, 24.001823>,  <39.323570, 36.937901, 23.935928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108429, 36.232388, 24.001823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414597, 36.336250, 24.237354>,  <39.598297, 36.398567, 24.378674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414597, 36.336250, 24.237354>,  <39.108429, 36.232388, 24.001823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414597, 36.336250, 24.237354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502445, -0.330598, 0.798908,
		0.402106, -0.907350, -0.122582,
		0.765415, 0.259655, 0.588829,
		39.644222, 36.414146, 24.414003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457603, 35.601028, 24.361845>,  <39.108429, 36.232388, 24.001823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457603, 35.601028, 24.361845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566971, 35.898380, 24.606018>,  <39.632591, 36.076790, 24.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566971, 35.898380, 24.606018>,  <39.457603, 35.601028, 24.361845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566971, 35.898380, 24.606018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412335, -0.482770, 0.772601,
		0.869035, -0.462945, 0.174524,
		0.273417, 0.743381, 0.610433,
		39.648994, 36.121395, 24.789148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809036, 35.297985, 24.963028>,  <39.457603, 35.601028, 24.361845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809036, 35.297985, 24.963028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711292, 35.666012, 25.085508>,  <39.652645, 35.886829, 25.158997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711292, 35.666012, 25.085508>,  <39.809036, 35.297985, 24.963028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711292, 35.666012, 25.085508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500357, -0.390126, 0.772945,
		0.830621, 0.035665, 0.555695,
		-0.244359, 0.920070, 0.306202,
		39.637985, 35.942032, 25.177368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770992, 35.259186, 25.723215>,  <39.809036, 35.297985, 24.963028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770992, 35.259186, 25.723215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591152, 35.612358, 25.669109>,  <39.483250, 35.824261, 25.636646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591152, 35.612358, 25.669109>,  <39.770992, 35.259186, 25.723215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591152, 35.612358, 25.669109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470787, -0.105544, 0.875911,
		0.759092, 0.457489, 0.463124,
		-0.449600, 0.882929, -0.135262,
		39.456272, 35.877235, 25.628531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813957, 35.591671, 26.403948>,  <39.770992, 35.259186, 25.723215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813957, 35.591671, 26.403948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530071, 35.754799, 26.174171>,  <39.359741, 35.852676, 26.036304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530071, 35.754799, 26.174171>,  <39.813957, 35.591671, 26.403948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530071, 35.754799, 26.174171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684995, -0.208999, 0.697926,
		0.164572, 0.888819, 0.427687,
		-0.709716, 0.407823, -0.574442,
		39.317158, 35.877144, 26.001839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381687, 36.065899, 26.849348>,  <39.813957, 35.591671, 26.403948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381687, 36.065899, 26.849348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163906, 35.949139, 26.534803>,  <39.033237, 35.879082, 26.346077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163906, 35.949139, 26.534803>,  <39.381687, 36.065899, 26.849348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163906, 35.949139, 26.534803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800490, -0.099245, 0.591072,
		-0.250577, 0.951286, -0.179629,
		-0.544451, -0.291900, -0.786363,
		39.000572, 35.861568, 26.298895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822826, 36.470802, 27.123106>,  <39.381687, 36.065899, 26.849348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822826, 36.470802, 27.123106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717899, 36.214764, 26.834257>,  <38.654942, 36.061138, 26.660948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717899, 36.214764, 26.834257>,  <38.822826, 36.470802, 27.123106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717899, 36.214764, 26.834257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849851, -0.201230, 0.487093,
		-0.457100, 0.741471, -0.491202,
		-0.262321, -0.640099, -0.722123,
		38.639202, 36.022736, 26.617620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232548, 36.738487, 26.861567>,  <38.822826, 36.470802, 27.123106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232548, 36.738487, 26.861567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229778, 36.341587, 26.811937>,  <38.228115, 36.103447, 26.782160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229778, 36.341587, 26.811937>,  <38.232548, 36.738487, 26.861567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229778, 36.341587, 26.811937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900852, -0.047668, 0.431501,
		-0.434071, 0.114758, -0.893540,
		-0.006925, -0.992249, -0.124072,
		38.227699, 36.043911, 26.774715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514156, 36.572556, 26.746044>,  <38.232548, 36.738487, 26.861567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514156, 36.572556, 26.746044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684872, 36.222458, 26.837084>,  <37.787300, 36.012402, 26.891708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684872, 36.222458, 26.837084>,  <37.514156, 36.572556, 26.746044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684872, 36.222458, 26.837084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857599, -0.311830, 0.409006,
		-0.287005, -0.369752, -0.883692,
		0.426793, -0.875240, 0.227602,
		37.812908, 35.959885, 26.905363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028076, 36.135422, 26.592888>,  <37.514156, 36.572556, 26.746044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028076, 36.135422, 26.592888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233479, 35.924450, 26.863628>,  <37.356720, 35.797867, 27.026073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233479, 35.924450, 26.863628>,  <37.028076, 36.135422, 26.592888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233479, 35.924450, 26.863628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854399, -0.241218, 0.460235,
		-0.079474, -0.814634, -0.574505,
		0.513504, -0.527433, 0.676852,
		37.387531, 35.766220, 27.066685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663864, 35.608101, 26.670475>,  <37.028076, 36.135422, 26.592888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663864, 35.608101, 26.670475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896099, 35.613186, 26.996115>,  <37.035439, 35.616238, 27.191500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896099, 35.613186, 26.996115>,  <36.663864, 35.608101, 26.670475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896099, 35.613186, 26.996115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814190, 0.004069, 0.580584,
		0.004069, -0.999911, 0.012714,
		-0.580584, -0.012714, -0.814101,
		37.070274, 35.617001, 27.240345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492996, 34.968987, 27.055017>,  <36.663864, 35.608101, 26.670475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492996, 34.968987, 27.055017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659195, 35.212139, 27.325674>,  <36.758915, 35.358032, 27.488068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659195, 35.212139, 27.325674>,  <36.492996, 34.968987, 27.055017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659195, 35.212139, 27.325674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794728, -0.119248, 0.595137,
		0.442462, -0.785021, 0.433555,
		0.415494, 0.607883, 0.676641,
		36.783844, 35.394505, 27.528666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423035, 34.607761, 27.767492>,  <36.492996, 34.968987, 27.055017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423035, 34.607761, 27.767492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532501, 34.978416, 27.870602>,  <36.598179, 35.200809, 27.932467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532501, 34.978416, 27.870602>,  <36.423035, 34.607761, 27.767492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532501, 34.978416, 27.870602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455718, -0.111091, 0.883165,
		0.847012, -0.359161, 0.391885,
		0.273663, 0.926640, 0.257772,
		36.614601, 35.256409, 27.947933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753567, 34.553677, 28.393467>,  <36.423035, 34.607761, 27.767492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753567, 34.553677, 28.393467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624603, 34.931988, 28.377632>,  <36.547226, 35.158974, 28.368132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624603, 34.931988, 28.377632>,  <36.753567, 34.553677, 28.393467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624603, 34.931988, 28.377632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533714, -0.147080, 0.832777,
		0.781796, 0.289619, 0.552192,
		-0.322405, 0.945774, -0.039587,
		36.527882, 35.215721, 28.365755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766487, 34.775150, 29.126926>,  <36.753567, 34.553677, 28.393467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766487, 34.775150, 29.126926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537613, 35.048672, 28.945814>,  <36.400288, 35.212784, 28.837147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537613, 35.048672, 28.945814>,  <36.766487, 34.775150, 29.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537613, 35.048672, 28.945814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643888, -0.032626, 0.764423,
		0.507943, 0.728936, 0.458962,
		-0.572190, 0.683804, -0.452782,
		36.365955, 35.253815, 28.809980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772312, 35.415680, 29.506989>,  <36.766487, 34.775150, 29.126926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772312, 35.415680, 29.506989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428585, 35.389286, 29.304125>,  <36.222347, 35.373451, 29.182407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428585, 35.389286, 29.304125>,  <36.772312, 35.415680, 29.506989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428585, 35.389286, 29.304125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508929, 0.012279, 0.860721,
		-0.050568, 0.997745, -0.044134,
		-0.859322, -0.065986, -0.507160,
		36.170788, 35.369492, 29.151978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294071, 35.674995, 29.943316>,  <36.772312, 35.415680, 29.506989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294071, 35.674995, 29.943316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028229, 35.519382, 29.688145>,  <35.868725, 35.426014, 29.535042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028229, 35.519382, 29.688145>,  <36.294071, 35.674995, 29.943316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028229, 35.519382, 29.688145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611705, -0.207001, 0.763523,
		-0.429087, 0.897666, -0.100399,
		-0.664606, -0.389033, -0.637928,
		35.828846, 35.402672, 29.496767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628025, 35.942299, 30.114250>,  <36.294071, 35.674995, 29.943316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628025, 35.942299, 30.114250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558727, 35.605721, 29.909523>,  <35.517151, 35.403774, 29.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558727, 35.605721, 29.909523>,  <35.628025, 35.942299, 30.114250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558727, 35.605721, 29.909523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668328, -0.281274, 0.688638,
		-0.723412, 0.461365, -0.513632,
		-0.173242, -0.841444, -0.511820,
		35.506756, 35.353287, 29.755978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886894, 35.854023, 30.225996>,  <35.628025, 35.942299, 30.114250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886894, 35.854023, 30.225996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990158, 35.499599, 30.071980>,  <35.052116, 35.286945, 29.979570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990158, 35.499599, 30.071980>,  <34.886894, 35.854023, 30.225996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990158, 35.499599, 30.071980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662590, -0.452431, 0.596893,
		-0.703086, 0.101033, -0.703891,
		0.258156, -0.886058, -0.385042,
		35.067604, 35.233784, 29.956467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252583, 35.505432, 30.109161>,  <34.886894, 35.854023, 30.225996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252583, 35.505432, 30.109161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524475, 35.212612, 30.127367>,  <34.687611, 35.036919, 30.138290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524475, 35.212612, 30.127367>,  <34.252583, 35.505432, 30.109161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524475, 35.212612, 30.127367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614213, -0.534202, 0.580836,
		-0.400884, -0.422769, -0.812747,
		0.679731, -0.732048, 0.045517,
		34.728394, 34.992996, 30.141022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885281, 34.829460, 29.977634>,  <34.252583, 35.505432, 30.109161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885281, 34.829460, 29.977634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228767, 34.702312, 30.138411>,  <34.434860, 34.626022, 30.234877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228767, 34.702312, 30.138411>,  <33.885281, 34.829460, 29.977634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228767, 34.702312, 30.138411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504030, -0.665474, 0.550544,
		0.092479, -0.675354, -0.731672,
		0.858721, -0.317871, 0.401941,
		34.486385, 34.606953, 30.258993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836777, 34.121910, 29.977154>,  <33.885281, 34.829460, 29.977634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836777, 34.121910, 29.977154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122444, 34.201519, 30.245588>,  <34.293846, 34.249283, 30.406649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122444, 34.201519, 30.245588>,  <33.836777, 34.121910, 29.977154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122444, 34.201519, 30.245588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407494, -0.661314, 0.629772,
		0.569135, -0.723226, -0.391190,
		0.714167, 0.199018, 0.671087,
		34.336693, 34.261223, 30.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064888, 33.457020, 30.287420>,  <33.836777, 34.121910, 29.977154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064888, 33.457020, 30.287420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150269, 33.752216, 30.543484>,  <34.201496, 33.929333, 30.697123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150269, 33.752216, 30.543484>,  <34.064888, 33.457020, 30.287420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150269, 33.752216, 30.543484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412293, -0.526003, 0.743865,
		0.885693, -0.422715, 0.191991,
		0.213456, 0.737993, 0.640159,
		34.214306, 33.973614, 30.735531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470009, 33.159279, 30.900953>,  <34.064888, 33.457020, 30.287420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470009, 33.159279, 30.900953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315113, 33.506294, 31.025808>,  <34.222176, 33.714504, 31.100721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315113, 33.506294, 31.025808>,  <34.470009, 33.159279, 30.900953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315113, 33.506294, 31.025808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333512, -0.447430, 0.829805,
		0.859544, 0.217231, 0.462596,
		-0.387238, 0.867535, 0.312137,
		34.198940, 33.766556, 31.119450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685329, 33.213154, 31.679247>,  <34.470009, 33.159279, 30.900953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685329, 33.213154, 31.679247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 33.474430, 31.640079>,  <34.204792, 33.631195, 31.616579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 33.474430, 31.640079>,  <34.685329, 33.213154, 31.679247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384995, 33.474430, 31.640079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343451, -0.259489, 0.902611,
		0.564168, 0.711343, 0.419172,
		-0.750837, 0.653190, -0.097916,
		34.159744, 33.670387, 31.610704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697578, 33.671871, 32.333218>,  <34.685329, 33.213154, 31.679247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697578, 33.671871, 32.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328327, 33.736248, 32.193542>,  <34.106777, 33.774872, 32.109737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328327, 33.736248, 32.193542>,  <34.697578, 33.671871, 32.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328327, 33.736248, 32.193542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358955, -0.035308, 0.932687,
		0.137777, 0.986332, 0.090364,
		-0.923130, 0.160939, -0.349184,
		34.051388, 33.784531, 32.088787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328869, 34.358295, 32.614899>,  <34.697578, 33.671871, 32.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328869, 34.358295, 32.614899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066647, 34.078785, 32.500381>,  <33.909313, 33.911079, 32.431671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066647, 34.078785, 32.500381>,  <34.328869, 34.358295, 32.614899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066647, 34.078785, 32.500381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393279, -0.007721, 0.919387,
		-0.644658, 0.715296, -0.269754,
		-0.655551, -0.698779, -0.286289,
		33.869980, 33.869152, 32.414494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961044, 34.457630, 33.030182>,  <34.328869, 34.358295, 32.614899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961044, 34.457630, 33.030182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149044, 34.569397, 33.365093>,  <35.261845, 34.636456, 33.566040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149044, 34.569397, 33.365093>,  <34.961044, 34.457630, 33.030182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149044, 34.569397, 33.365093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583302, 0.613609, -0.532206,
		-0.662467, 0.738519, 0.125409,
		0.469996, 0.279418, 0.837275,
		35.290043, 34.653221, 33.616276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919945, 35.127106, 33.066353>,  <34.961044, 34.457630, 33.030182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919945, 35.127106, 33.066353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238071, 35.059849, 33.299316>,  <35.428947, 35.019493, 33.439095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238071, 35.059849, 33.299316>,  <34.919945, 35.127106, 33.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238071, 35.059849, 33.299316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530644, 0.657591, -0.534782,
		-0.293063, 0.734372, 0.612219,
		0.795319, -0.168145, 0.582405,
		35.476665, 35.009407, 33.474037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205746, 35.774467, 33.192123>,  <34.919945, 35.127106, 33.066353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205746, 35.774467, 33.192123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490730, 35.503788, 33.266396>,  <35.661720, 35.341381, 33.310959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490730, 35.503788, 33.266396>,  <35.205746, 35.774467, 33.192123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490730, 35.503788, 33.266396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646255, 0.529664, -0.549373,
		0.273409, 0.511407, 0.814684,
		0.712462, -0.676697, 0.185684,
		35.704468, 35.300777, 33.322102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751713, 36.170815, 33.355110>,  <35.205746, 35.774467, 33.192123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751713, 36.170815, 33.355110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911400, 35.817478, 33.256863>,  <36.007214, 35.605476, 33.197914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911400, 35.817478, 33.256863>,  <35.751713, 36.170815, 33.355110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911400, 35.817478, 33.256863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654469, 0.462165, -0.598393,
		0.642103, 0.078140, 0.762626,
		0.399217, -0.883344, -0.245617,
		36.031166, 35.552475, 33.183178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485462, 36.191956, 33.444141>,  <35.751713, 36.170815, 33.355110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485462, 36.191956, 33.444141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472286, 35.868114, 33.209721>,  <36.464382, 35.673809, 33.069069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472286, 35.868114, 33.209721>,  <36.485462, 36.191956, 33.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472286, 35.868114, 33.209721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873789, 0.261328, -0.410122,
		0.485188, -0.525599, 0.698812,
		-0.032941, -0.809601, -0.586056,
		36.462402, 35.625233, 33.033905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218838, 35.972462, 33.312862>,  <36.485462, 36.191956, 33.444141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218838, 35.972462, 33.312862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987354, 35.804050, 33.033482>,  <36.848465, 35.703003, 32.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987354, 35.804050, 33.033482>,  <37.218838, 35.972462, 33.312862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987354, 35.804050, 33.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659992, 0.261316, -0.704361,
		0.479072, -0.868591, 0.126649,
		-0.578706, -0.421027, -0.698452,
		36.813744, 35.677742, 32.823944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661369, 35.642441, 32.870167>,  <37.218838, 35.972462, 33.312862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661369, 35.642441, 32.870167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331337, 35.660126, 32.644852>,  <37.133320, 35.670734, 32.509663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331337, 35.660126, 32.644852>,  <37.661369, 35.642441, 32.870167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331337, 35.660126, 32.644852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562984, 0.148856, -0.812952,
		0.047907, -0.987870, -0.147708,
		-0.825079, 0.044211, -0.563286,
		37.083813, 35.673389, 32.475864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951481, 35.522030, 32.270058>,  <37.661369, 35.642441, 32.870167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951481, 35.522030, 32.270058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582703, 35.641258, 32.171135>,  <37.361435, 35.712795, 32.111782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582703, 35.641258, 32.171135>,  <37.951481, 35.522030, 32.270058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582703, 35.641258, 32.171135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348758, 0.361192, -0.864817,
		-0.168453, -0.883568, -0.436956,
		-0.921950, 0.298073, -0.247307,
		37.306118, 35.730679, 32.096943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776684, 35.172104, 31.585939>,  <37.951481, 35.522030, 32.270058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776684, 35.172104, 31.585939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595863, 35.527126, 31.621489>,  <37.487373, 35.740139, 31.642818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595863, 35.527126, 31.621489>,  <37.776684, 35.172104, 31.585939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595863, 35.527126, 31.621489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506673, 0.337497, -0.793333,
		-0.734122, -0.313595, -0.602265,
		-0.452048, 0.887555, 0.088874,
		37.460247, 35.793392, 31.648151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681450, 35.373299, 30.952282>,  <37.776684, 35.172104, 31.585939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681450, 35.373299, 30.952282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635483, 35.724567, 31.138016>,  <37.607903, 35.935329, 31.249456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635483, 35.724567, 31.138016>,  <37.681450, 35.373299, 30.952282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635483, 35.724567, 31.138016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602096, 0.433361, -0.670581,
		-0.790110, 0.202510, -0.578547,
		-0.114920, 0.878173, 0.464333,
		37.601006, 35.988018, 31.277315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404350, 35.945457, 30.518946>,  <37.681450, 35.373299, 30.952282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404350, 35.945457, 30.518946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598320, 36.135990, 30.812326>,  <37.714703, 36.250309, 30.988356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598320, 36.135990, 30.812326>,  <37.404350, 35.945457, 30.518946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598320, 36.135990, 30.812326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563758, 0.470896, -0.678553,
		-0.668599, 0.742537, -0.040189,
		0.484926, 0.476336, 0.733451,
		37.743797, 36.278893, 31.032362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582161, 36.535480, 30.197208>,  <37.404350, 35.945457, 30.518946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582161, 36.535480, 30.197208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807869, 36.548073, 30.527205>,  <37.943295, 36.555630, 30.725203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807869, 36.548073, 30.527205>,  <37.582161, 36.535480, 30.197208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807869, 36.548073, 30.527205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754640, 0.385614, -0.530867,
		-0.334842, 0.922123, 0.193831,
		0.564268, 0.031485, 0.824991,
		37.977150, 36.557518, 30.774702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966026, 37.228786, 30.340014>,  <37.582161, 36.535480, 30.197208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966026, 37.228786, 30.340014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190018, 36.943012, 30.507824>,  <38.324413, 36.771545, 30.608511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190018, 36.943012, 30.507824>,  <37.966026, 37.228786, 30.340014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190018, 36.943012, 30.507824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820106, 0.406052, -0.403171,
		0.117692, 0.569822, 0.813297,
		0.559977, -0.714440, 0.419525,
		38.358009, 36.728680, 30.633682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556026, 37.545830, 30.527605>,  <37.966026, 37.228786, 30.340014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556026, 37.545830, 30.527605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699535, 37.172474, 30.530619>,  <38.785641, 36.948460, 30.532427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699535, 37.172474, 30.530619>,  <38.556026, 37.545830, 30.527605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699535, 37.172474, 30.530619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782832, 0.296485, -0.547056,
		0.508385, 0.202169, 0.837062,
		0.358774, -0.933394, 0.007536,
		38.807167, 36.892456, 30.532879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269775, 37.639339, 30.507664>,  <38.556026, 37.545830, 30.527605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269775, 37.639339, 30.507664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222248, 37.257317, 30.399040>,  <39.193733, 37.028103, 30.333866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222248, 37.257317, 30.399040>,  <39.269775, 37.639339, 30.507664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222248, 37.257317, 30.399040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597620, 0.149622, -0.787695,
		0.792927, -0.255879, 0.552985,
		-0.118816, -0.955060, -0.271558,
		39.186604, 36.970798, 30.317574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957233, 37.356899, 30.364511>,  <39.269775, 37.639339, 30.507664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957233, 37.356899, 30.364511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707821, 37.116913, 30.164009>,  <39.558174, 36.972923, 30.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707821, 37.116913, 30.164009>,  <39.957233, 37.356899, 30.364511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707821, 37.116913, 30.164009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599736, 0.044230, -0.798975,
		0.501525, -0.798804, 0.332240,
		-0.623530, -0.599962, -0.501254,
		39.520763, 36.936924, 30.013634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406235, 37.060371, 29.990839>,  <39.957233, 37.356899, 30.364511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406235, 37.060371, 29.990839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062538, 36.973606, 29.805517>,  <39.856319, 36.921547, 29.694324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062538, 36.973606, 29.805517>,  <40.406235, 37.060371, 29.990839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062538, 36.973606, 29.805517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484586, -0.054877, -0.873021,
		0.163945, -0.974647, 0.152265,
		-0.859243, -0.216913, -0.463304,
		39.804764, 36.908531, 29.666527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443474, 36.418049, 29.559172>,  <40.406235, 37.060371, 29.990839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443474, 36.418049, 29.559172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131714, 36.619663, 29.410313>,  <39.944660, 36.740631, 29.320997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131714, 36.619663, 29.410313>,  <40.443474, 36.418049, 29.559172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131714, 36.619663, 29.410313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469609, 0.076775, -0.879530,
		-0.414741, -0.860265, -0.296537,
		-0.779396, 0.504034, -0.372146,
		39.897896, 36.770874, 29.298668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209175, 36.116970, 28.912949>,  <40.443474, 36.418049, 29.559172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209175, 36.116970, 28.912949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072807, 36.491554, 28.879915>,  <39.990986, 36.716305, 28.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072807, 36.491554, 28.879915>,  <40.209175, 36.116970, 28.912949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072807, 36.491554, 28.879915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334457, 0.038723, -0.941615,
		-0.878584, -0.348640, -0.326406,
		-0.340924, 0.936456, -0.082584,
		39.970531, 36.772491, 28.855141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865345, 36.165413, 28.179913>,  <40.209175, 36.116970, 28.912949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865345, 36.165413, 28.179913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935165, 36.535770, 28.313929>,  <39.977058, 36.757984, 28.394339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935165, 36.535770, 28.313929>,  <39.865345, 36.165413, 28.179913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935165, 36.535770, 28.313929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374754, 0.252184, -0.892167,
		-0.910544, 0.281290, -0.302962,
		0.174555, 0.925894, 0.335039,
		39.987534, 36.813538, 28.414440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544804, 36.685127, 27.696777>,  <39.865345, 36.165413, 28.179913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544804, 36.685127, 27.696777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825138, 36.888309, 27.897102>,  <39.993340, 37.010220, 28.017298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825138, 36.888309, 27.897102>,  <39.544804, 36.685127, 27.696777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825138, 36.888309, 27.897102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416571, 0.278481, -0.865400,
		-0.579047, 0.815128, -0.016428,
		0.700837, 0.507951, 0.500812,
		40.035389, 37.040695, 28.047346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630013, 37.312428, 27.247135>,  <39.544804, 36.685127, 27.696777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630013, 37.312428, 27.247135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958527, 37.255814, 27.468208>,  <40.155636, 37.221844, 27.600851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958527, 37.255814, 27.468208>,  <39.630013, 37.312428, 27.247135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958527, 37.255814, 27.468208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569199, 0.137483, -0.810624,
		0.038747, 0.980340, 0.193474,
		0.821286, -0.141535, 0.552681,
		40.204914, 37.213352, 27.634012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019241, 37.865314, 27.069939>,  <39.630013, 37.312428, 27.247135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019241, 37.865314, 27.069939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279926, 37.601341, 27.219475>,  <40.436337, 37.442959, 27.309196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279926, 37.601341, 27.219475>,  <40.019241, 37.865314, 27.069939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279926, 37.601341, 27.219475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528890, 0.042132, -0.847644,
		0.543637, 0.750143, 0.376490,
		0.651716, -0.659932, 0.373839,
		40.475441, 37.403362, 27.331627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646534, 38.210533, 27.107353>,  <40.019241, 37.865314, 27.069939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646534, 38.210533, 27.107353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731659, 37.820560, 27.133318>,  <40.782734, 37.586575, 27.148897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731659, 37.820560, 27.133318>,  <40.646534, 38.210533, 27.107353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731659, 37.820560, 27.133318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601734, 0.078426, -0.794837,
		0.769823, 0.208211, 0.603341,
		0.212811, -0.974935, 0.064913,
		40.795502, 37.528080, 27.152792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348415, 38.171223, 27.144051>,  <40.646534, 38.210533, 27.107353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348415, 38.171223, 27.144051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236412, 37.803112, 27.034739>,  <41.169209, 37.582245, 26.969151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236412, 37.803112, 27.034739>,  <41.348415, 38.171223, 27.144051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236412, 37.803112, 27.034739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836534, -0.094251, -0.539748,
		0.470961, -0.379743, 0.796235,
		-0.280012, -0.920278, -0.273279,
		41.152409, 37.527027, 26.952755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943859, 37.769447, 27.007229>,  <41.348415, 38.171223, 27.144051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943859, 37.769447, 27.007229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695660, 37.535690, 26.798054>,  <41.546741, 37.395435, 26.672548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695660, 37.535690, 26.798054>,  <41.943859, 37.769447, 27.007229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695660, 37.535690, 26.798054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725440, -0.174477, -0.665804,
		0.297853, -0.792489, 0.532207,
		-0.620500, -0.584396, -0.522935,
		41.509510, 37.360371, 26.641172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289616, 37.148521, 26.912249>,  <41.943859, 37.769447, 27.007229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289616, 37.148521, 26.912249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026310, 37.177330, 26.612514>,  <41.868328, 37.194614, 26.432674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026310, 37.177330, 26.612514>,  <42.289616, 37.148521, 26.912249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026310, 37.177330, 26.612514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728642, -0.189135, -0.658262,
		-0.189135, -0.979306, 0.072022,
		0.658262, -0.072022, 0.749335,
		41.828831, 37.198936, 26.387714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614689, 36.681305, 26.411713>,  <42.289616, 37.148521, 26.912249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614689, 36.681305, 26.411713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319035, 36.864426, 26.214088>,  <42.141640, 36.974297, 26.095514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319035, 36.864426, 26.214088>,  <42.614689, 36.681305, 26.411713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319035, 36.864426, 26.214088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567463, 0.028093, -0.822920,
		-0.362851, -0.888612, -0.280548,
		-0.739138, 0.457798, -0.494061,
		42.097294, 37.001766, 26.065870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371254, 36.266422, 25.799141>,  <42.614689, 36.681305, 26.411713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371254, 36.266422, 25.799141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320805, 36.661762, 25.765078>,  <42.290535, 36.898968, 25.744638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320805, 36.661762, 25.765078>,  <42.371254, 36.266422, 25.799141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320805, 36.661762, 25.765078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553360, -0.001154, -0.832941,
		-0.823338, -0.152180, -0.546769,
		-0.126126, 0.988352, -0.085160,
		42.282967, 36.958267, 25.739529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369080, 36.356037, 25.107195>,  <42.371254, 36.266422, 25.799141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369080, 36.356037, 25.107195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422592, 36.726105, 25.249269>,  <42.454700, 36.948147, 25.334515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422592, 36.726105, 25.249269>,  <42.369080, 36.356037, 25.107195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422592, 36.726105, 25.249269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735612, 0.147456, -0.661159,
		-0.664061, 0.349734, -0.660840,
		0.133785, 0.925172, 0.355188,
		42.462727, 37.003654, 25.355825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261631, 36.714916, 24.573772>,  <42.369080, 36.356037, 25.107195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261631, 36.714916, 24.573772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454494, 36.948090, 24.835373>,  <42.570213, 37.087994, 24.992332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454494, 36.948090, 24.835373>,  <42.261631, 36.714916, 24.573772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454494, 36.948090, 24.835373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739588, 0.129317, -0.660520,
		-0.469612, 0.802164, -0.368778,
		0.482157, 0.582932, 0.654000,
		42.599140, 37.122971, 25.031572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494995, 37.319023, 24.176260>,  <42.261631, 36.714916, 24.573772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494995, 37.319023, 24.176260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716961, 37.294674, 24.508131>,  <42.850140, 37.280064, 24.707254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716961, 37.294674, 24.508131>,  <42.494995, 37.319023, 24.176260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716961, 37.294674, 24.508131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820436, -0.125008, -0.557904,
		0.137676, 0.990287, -0.019429,
		0.554914, -0.060870, 0.829678,
		42.883434, 37.276413, 24.757034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067066, 37.849411, 24.033899>,  <42.494995, 37.319023, 24.176260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067066, 37.849411, 24.033899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196972, 37.611309, 24.327892>,  <43.274918, 37.468449, 24.504288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196972, 37.611309, 24.327892>,  <43.067066, 37.849411, 24.033899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196972, 37.611309, 24.327892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857308, -0.142919, -0.494568,
		0.399436, 0.790726, 0.463900,
		0.324768, -0.595254, 0.734982,
		43.294403, 37.432732, 24.548388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808731, 38.088261, 24.170143>,  <43.067066, 37.849411, 24.033899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808731, 38.088261, 24.170143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749954, 37.712086, 24.292768>,  <43.714687, 37.486382, 24.366343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749954, 37.712086, 24.292768>,  <43.808731, 38.088261, 24.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749954, 37.712086, 24.292768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818039, -0.289772, -0.496835,
		0.556077, 0.177774, 0.811896,
		-0.146941, -0.940441, 0.306561,
		43.705872, 37.429955, 24.384737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542213, 37.791615, 24.392551>,  <43.808731, 38.088261, 24.170143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542213, 37.791615, 24.392551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285133, 37.496510, 24.309959>,  <44.130886, 37.319447, 24.260405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285133, 37.496510, 24.309959>,  <44.542213, 37.791615, 24.392551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285133, 37.496510, 24.309959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734833, -0.517421, -0.438516,
		0.216685, -0.433564, 0.874683,
		-0.642704, -0.737765, -0.206480,
		44.092323, 37.275181, 24.248014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969429, 37.133896, 24.336786>,  <44.542213, 37.791615, 24.392551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969429, 37.133896, 24.336786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627125, 37.014282, 24.167902>,  <44.421741, 36.942516, 24.066570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627125, 37.014282, 24.167902>,  <44.969429, 37.133896, 24.336786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627125, 37.014282, 24.167902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514784, -0.573758, -0.637024,
		-0.051759, -0.762485, 0.644932,
		-0.855756, -0.299029, -0.422212,
		44.370399, 36.924572, 24.041239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121357, 36.518970, 24.201399>,  <44.969429, 37.133896, 24.336786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121357, 36.518970, 24.201399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800285, 36.577881, 23.970221>,  <44.607643, 36.613228, 23.831512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800285, 36.577881, 23.970221>,  <45.121357, 36.518970, 24.201399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800285, 36.577881, 23.970221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432243, -0.524041, -0.733858,
		-0.410949, -0.838862, 0.356975,
		-0.802675, 0.147278, -0.577946,
		44.559483, 36.622063, 23.796837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038906, 35.840626, 23.894367>,  <45.121357, 36.518970, 24.201399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038906, 35.840626, 23.894367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838646, 36.105404, 23.671234>,  <44.718491, 36.264271, 23.537354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838646, 36.105404, 23.671234>,  <45.038906, 35.840626, 23.894367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838646, 36.105404, 23.671234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382078, -0.409267, -0.828563,
		-0.776763, -0.627960, -0.048012,
		-0.500655, 0.661942, -0.557833,
		44.688450, 36.303986, 23.503883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398228, 35.365742, 24.065062>,  <45.038906, 35.840626, 23.894367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398228, 35.365742, 24.065062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715660, 35.127087, 24.017321>,  <44.906120, 34.983894, 23.988676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715660, 35.127087, 24.017321>,  <44.398228, 35.365742, 24.065062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715660, 35.127087, 24.017321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135476, -0.017967, 0.990618,
		-0.593186, -0.802309, 0.066572,
		0.793585, -0.596639, -0.119351,
		44.953735, 34.948093, 23.981516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201256, 34.804436, 24.274979>,  <44.398228, 35.365742, 24.065062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201256, 34.804436, 24.274979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596809, 34.778637, 24.328558>,  <44.834141, 34.763157, 24.360706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596809, 34.778637, 24.328558>,  <44.201256, 34.804436, 24.274979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596809, 34.778637, 24.328558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133010, 0.018675, 0.990939,
		-0.066413, -0.997743, 0.009889,
		0.988887, -0.064496, 0.133950,
		44.893475, 34.759289, 24.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310257, 34.262733, 24.710293>,  <44.201256, 34.804436, 24.274979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310257, 34.262733, 24.710293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625862, 34.504303, 24.755440>,  <44.815224, 34.649246, 24.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625862, 34.504303, 24.755440>,  <44.310257, 34.262733, 24.710293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625862, 34.504303, 24.755440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218952, 0.104751, 0.970097,
		0.574042, -0.790128, 0.214880,
		0.789009, 0.603925, 0.112869,
		44.862564, 34.685482, 24.789301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561504, 34.125046, 25.320906>,  <44.310257, 34.262733, 24.710293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561504, 34.125046, 25.320906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774994, 34.456123, 25.251541>,  <44.903088, 34.654770, 25.209923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774994, 34.456123, 25.251541>,  <44.561504, 34.125046, 25.320906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774994, 34.456123, 25.251541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050384, 0.235816, 0.970491,
		0.844159, -0.509234, 0.167562,
		0.533721, 0.827691, -0.173409,
		44.935112, 34.704430, 25.199518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102016, 34.127548, 25.814398>,  <44.561504, 34.125046, 25.320906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102016, 34.127548, 25.814398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077374, 34.513260, 25.711349>,  <45.062588, 34.744686, 25.649521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077374, 34.513260, 25.711349>,  <45.102016, 34.127548, 25.814398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077374, 34.513260, 25.711349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121803, 0.248918, 0.960835,
		0.990640, 0.090577, 0.102116,
		-0.061612, 0.964280, -0.257620,
		45.058891, 34.802544, 25.634064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585484, 34.564362, 26.303263>,  <45.102016, 34.127548, 25.814398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585484, 34.564362, 26.303263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294472, 34.794746, 26.154144>,  <45.119865, 34.932976, 26.064674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294472, 34.794746, 26.154144>,  <45.585484, 34.564362, 26.303263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294472, 34.794746, 26.154144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305975, 0.213958, 0.927686,
		0.614073, 0.788982, 0.020569,
		-0.727526, 0.575960, -0.372795,
		45.076214, 34.967533, 26.042305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586868, 35.233307, 26.556463>,  <45.585484, 34.564362, 26.303263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586868, 35.233307, 26.556463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200104, 35.191689, 26.463291>,  <44.968044, 35.166718, 26.407387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.200104, 35.191689, 26.463291>,  <45.586868, 35.233307, 26.556463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200104, 35.191689, 26.463291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252746, 0.266638, 0.930066,
		-0.034657, 0.958165, -0.284111,
		-0.966912, -0.104041, -0.232932,
		44.910030, 35.160477, 26.393412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297398, 35.713657, 26.948088>,  <45.586868, 35.233307, 26.556463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297398, 35.713657, 26.948088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004917, 35.467567, 26.830208>,  <44.829430, 35.319916, 26.759480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004917, 35.467567, 26.830208>,  <45.297398, 35.713657, 26.948088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004917, 35.467567, 26.830208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479790, 0.156718, 0.863273,
		-0.484921, 0.772619, -0.409770,
		-0.731200, -0.615223, -0.294699,
		44.785557, 35.283001, 26.741798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691872, 36.154354, 27.102692>,  <45.297398, 35.713657, 26.948088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691872, 36.154354, 27.102692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534531, 35.794670, 27.026066>,  <44.440128, 35.578861, 26.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534531, 35.794670, 27.026066>,  <44.691872, 36.154354, 27.102692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534531, 35.794670, 27.026066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794966, 0.227984, 0.562185,
		-0.461848, 0.373424, -0.804519,
		-0.393350, -0.899209, -0.191565,
		44.416527, 35.524906, 26.968596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117508, 36.241333, 26.728926>,  <44.691872, 36.154354, 27.102692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117508, 36.241333, 26.728926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091579, 35.898201, 26.932858>,  <44.076023, 35.692322, 27.055216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091579, 35.898201, 26.932858>,  <44.117508, 36.241333, 26.728926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091579, 35.898201, 26.932858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699598, 0.403385, 0.589783,
		-0.711591, -0.318447, -0.626283,
		-0.064818, -0.857830, 0.509830,
		44.072132, 35.640854, 27.085806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474632, 36.344803, 27.025654>,  <44.117508, 36.241333, 26.728926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474632, 36.344803, 27.025654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616184, 36.012913, 27.198320>,  <43.701115, 35.813778, 27.301920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616184, 36.012913, 27.198320>,  <43.474632, 36.344803, 27.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616184, 36.012913, 27.198320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746678, 0.027315, 0.664624,
		-0.563244, -0.557509, -0.609869,
		0.353876, -0.829722, 0.431665,
		43.722347, 35.763996, 27.327820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999825, 35.808243, 27.007727>,  <43.474632, 36.344803, 27.025654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999825, 35.808243, 27.007727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249222, 35.708519, 27.304131>,  <43.398861, 35.648685, 27.481974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249222, 35.708519, 27.304131>,  <42.999825, 35.808243, 27.007727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249222, 35.708519, 27.304131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781117, -0.158254, 0.603997,
		-0.033315, -0.955406, -0.293411,
		0.623495, -0.249311, 0.741012,
		43.436272, 35.633724, 27.526434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769051, 35.044178, 27.244839>,  <42.999825, 35.808243, 27.007727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769051, 35.044178, 27.244839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981102, 35.218475, 27.535793>,  <43.108334, 35.323055, 27.710367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981102, 35.218475, 27.535793>,  <42.769051, 35.044178, 27.244839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981102, 35.218475, 27.535793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755851, -0.145909, 0.638279,
		0.384258, -0.888166, 0.252006,
		0.530128, 0.435743, 0.727388,
		43.140141, 35.349197, 27.754009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711422, 34.557758, 27.796352>,  <42.769051, 35.044178, 27.244839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711422, 34.557758, 27.796352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822327, 34.899639, 27.971899>,  <42.888870, 35.104767, 28.077227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822327, 34.899639, 27.971899>,  <42.711422, 34.557758, 27.796352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822327, 34.899639, 27.971899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571683, -0.220361, 0.790329,
		0.772208, -0.470019, 0.427524,
		0.277260, 0.854706, 0.438867,
		42.905506, 35.156052, 28.103559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031624, 34.387035, 28.447456>,  <42.711422, 34.557758, 27.796352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031624, 34.387035, 28.447456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869610, 34.752647, 28.456358>,  <42.772400, 34.972015, 28.461699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869610, 34.752647, 28.456358>,  <43.031624, 34.387035, 28.447456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869610, 34.752647, 28.456358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534733, -0.256560, 0.805132,
		0.741623, 0.314210, 0.592678,
		-0.405038, 0.914029, 0.022253,
		42.748100, 35.026855, 28.463034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185036, 34.658417, 29.196173>,  <43.031624, 34.387035, 28.447456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185036, 34.658417, 29.196173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877735, 34.867527, 29.048389>,  <42.693356, 34.992992, 28.959719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877735, 34.867527, 29.048389>,  <43.185036, 34.658417, 29.196173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877735, 34.867527, 29.048389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478864, -0.086293, 0.873638,
		0.424836, 0.848090, 0.316634,
		-0.768247, 0.522777, -0.369459,
		42.647263, 35.024361, 28.937551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043358, 35.026382, 29.795483>,  <43.185036, 34.658417, 29.196173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043358, 35.026382, 29.795483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728668, 35.073917, 29.553181>,  <42.539852, 35.102436, 29.407799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728668, 35.073917, 29.553181>,  <43.043358, 35.026382, 29.795483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728668, 35.073917, 29.553181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598339, 0.094566, 0.795643,
		0.151833, 0.988401, -0.003296,
		-0.786726, 0.118833, -0.605757,
		42.492649, 35.109566, 29.371454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789757, 35.706924, 29.964561>,  <43.043358, 35.026382, 29.795483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789757, 35.706924, 29.964561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487789, 35.507511, 29.794123>,  <42.306610, 35.387863, 29.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487789, 35.507511, 29.794123>,  <42.789757, 35.706924, 29.964561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487789, 35.507511, 29.794123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624844, 0.349461, 0.698174,
		-0.199160, 0.793309, -0.575322,
		-0.754920, -0.498535, -0.426096,
		42.261314, 35.357952, 29.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290283, 36.124985, 29.988976>,  <42.789757, 35.706924, 29.964561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290283, 36.124985, 29.988976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133949, 35.757034, 29.975889>,  <42.040150, 35.536263, 29.968037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133949, 35.757034, 29.975889>,  <42.290283, 36.124985, 29.988976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133949, 35.757034, 29.975889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605546, 0.230191, 0.761791,
		-0.693224, 0.317547, -0.646996,
		-0.390837, -0.919878, -0.032715,
		42.016697, 35.481071, 29.966074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575977, 36.232445, 29.987637>,  <42.290283, 36.124985, 29.988976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575977, 36.232445, 29.987637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615879, 35.848854, 30.093781>,  <41.639820, 35.618702, 30.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615879, 35.848854, 30.093781>,  <41.575977, 36.232445, 29.987637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615879, 35.848854, 30.093781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665372, 0.134001, 0.734387,
		-0.739818, -0.249821, -0.624708,
		0.099754, -0.958975, 0.265360,
		41.645805, 35.561161, 30.173389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874775, 36.018536, 30.094376>,  <41.575977, 36.232445, 29.987637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874775, 36.018536, 30.094376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077396, 35.727509, 30.279436>,  <41.198971, 35.552891, 30.390472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077396, 35.727509, 30.279436>,  <40.874775, 36.018536, 30.094376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077396, 35.727509, 30.279436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682290, -0.010189, 0.731010,
		-0.527146, -0.685960, -0.501573,
		0.506555, -0.727568, 0.462653,
		41.229362, 35.509239, 30.418232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402767, 35.420738, 30.092283>,  <40.874775, 36.018536, 30.094376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402767, 35.420738, 30.092283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668602, 35.420712, 30.391167>,  <40.828102, 35.420696, 30.570498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668602, 35.420712, 30.391167>,  <40.402767, 35.420738, 30.092283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668602, 35.420712, 30.391167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743869, -0.094500, 0.661610,
		0.070571, -0.995525, -0.062849,
		0.664589, -0.000061, 0.747209,
		40.867977, 35.420692, 30.615330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223923, 34.881088, 30.561480>,  <40.402767, 35.420738, 30.092283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223923, 34.881088, 30.561480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485607, 35.082363, 30.787331>,  <40.642620, 35.203129, 30.922840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485607, 35.082363, 30.787331>,  <40.223923, 34.881088, 30.561480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485607, 35.082363, 30.787331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627846, -0.054910, 0.776399,
		0.421680, -0.862429, 0.280003,
		0.654214, 0.503191, 0.564627,
		40.681873, 35.233318, 30.956718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173508, 34.548889, 31.342365>,  <40.223923, 34.881088, 30.561480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173508, 34.548889, 31.342365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404152, 34.872581, 31.387371>,  <40.542538, 35.066799, 31.414373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404152, 34.872581, 31.387371>,  <40.173508, 34.548889, 31.342365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404152, 34.872581, 31.387371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297255, 0.079515, 0.951482,
		0.761026, -0.582079, 0.286398,
		0.576610, 0.809235, 0.112513,
		40.577137, 35.115353, 31.421125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384762, 34.503078, 31.927921>,  <40.173508, 34.548889, 31.342365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384762, 34.503078, 31.927921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460178, 34.892574, 31.876867>,  <40.505428, 35.126270, 31.846235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460178, 34.892574, 31.876867>,  <40.384762, 34.503078, 31.927921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460178, 34.892574, 31.876867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191669, 0.163951, 0.967669,
		0.963180, -0.157982, 0.217547,
		0.188541, 0.973736, -0.127634,
		40.516739, 35.184696, 31.838577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658352, 34.796127, 32.549740>,  <40.384762, 34.503078, 31.927921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658352, 34.796127, 32.549740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475899, 35.098030, 32.361153>,  <40.366428, 35.279175, 32.248001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475899, 35.098030, 32.361153>,  <40.658352, 34.796127, 32.549740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475899, 35.098030, 32.361153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451422, 0.260324, 0.853493,
		0.766917, 0.602135, 0.221974,
		-0.456133, 0.754762, -0.471464,
		40.339058, 35.324459, 32.219715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928612, 35.481842, 32.871201>,  <40.658352, 34.796127, 32.549740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928612, 35.481842, 32.871201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556641, 35.507572, 32.726368>,  <40.333458, 35.523010, 32.639469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556641, 35.507572, 32.726368>,  <40.928612, 35.481842, 32.871201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556641, 35.507572, 32.726368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332661, 0.272604, 0.902787,
		0.156778, 0.959974, -0.232102,
		-0.929923, 0.064326, -0.362084,
		40.277664, 35.526871, 32.617744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716274, 36.158085, 33.064949>,  <40.928612, 35.481842, 32.871201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716274, 36.158085, 33.064949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368511, 35.979469, 32.980347>,  <40.159855, 35.872299, 32.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368511, 35.979469, 32.980347>,  <40.716274, 36.158085, 33.064949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368511, 35.979469, 32.980347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409663, 0.412134, 0.813831,
		-0.276236, 0.794198, -0.541242,
		-0.869408, -0.446537, -0.211507,
		40.107689, 35.845509, 32.916893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111355, 36.571354, 33.246716>,  <40.716274, 36.158085, 33.064949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111355, 36.571354, 33.246716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949314, 36.205944, 33.231960>,  <39.852089, 35.986698, 33.223106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949314, 36.205944, 33.231960>,  <40.111355, 36.571354, 33.246716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949314, 36.205944, 33.231960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470261, 0.173594, 0.865286,
		-0.784056, 0.367881, -0.499919,
		-0.405105, -0.913526, -0.036893,
		39.827782, 35.931885, 33.220894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481846, 36.709152, 33.521599>,  <40.111355, 36.571354, 33.246716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481846, 36.709152, 33.521599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516956, 36.311993, 33.553734>,  <39.538021, 36.073696, 33.573013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516956, 36.311993, 33.553734>,  <39.481846, 36.709152, 33.521599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516956, 36.311993, 33.553734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312739, 0.049106, 0.948569,
		-0.945775, -0.108384, -0.306207,
		0.087773, -0.992895, 0.080339,
		39.543289, 36.014126, 33.577835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936741, 36.577740, 33.878448>,  <39.481846, 36.709152, 33.521599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936741, 36.577740, 33.878448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178970, 36.260387, 33.903217>,  <39.324306, 36.069977, 33.918079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178970, 36.260387, 33.903217>,  <38.936741, 36.577740, 33.878448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178970, 36.260387, 33.903217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191854, -0.070041, 0.978921,
		-0.772317, -0.604687, -0.194628,
		0.605573, -0.793378, 0.061917,
		39.360641, 36.022373, 33.921791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558804, 36.134800, 34.441456>,  <38.936741, 36.577740, 33.878448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558804, 36.134800, 34.441456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938892, 36.010868, 34.428268>,  <39.166946, 35.936508, 34.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938892, 36.010868, 34.428268>,  <38.558804, 36.134800, 34.441456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938892, 36.010868, 34.428268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039899, 0.016071, 0.999074,
		-0.309017, -0.950655, 0.027633,
		0.950219, -0.309834, -0.032964,
		39.223957, 35.917919, 34.418381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481613, 35.416935, 34.794838>,  <38.558804, 36.134800, 34.441456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481613, 35.416935, 34.794838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859863, 35.546898, 34.800919>,  <39.086811, 35.624878, 34.804569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859863, 35.546898, 34.800919>,  <38.481613, 35.416935, 34.794838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859863, 35.546898, 34.800919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035964, -0.150903, 0.987894,
		0.323273, -0.933628, -0.154383,
		0.945622, 0.324911, 0.015206,
		39.143551, 35.644371, 34.805481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914780, 34.956978, 35.106167>,  <38.481613, 35.416935, 34.794838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914780, 34.956978, 35.106167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153484, 35.277096, 35.129478>,  <39.296707, 35.469166, 35.143467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153484, 35.277096, 35.129478>,  <38.914780, 34.956978, 35.106167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153484, 35.277096, 35.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250522, -0.254821, 0.933973,
		0.762309, -0.542759, -0.352560,
		0.596762, 0.800300, 0.058280,
		39.332512, 35.517185, 35.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605587, 34.767117, 35.351788>,  <38.914780, 34.956978, 35.106167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605587, 34.767117, 35.351788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537868, 35.139313, 35.481731>,  <39.497238, 35.362629, 35.559696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537868, 35.139313, 35.481731>,  <39.605587, 34.767117, 35.351788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537868, 35.139313, 35.481731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080743, -0.315417, 0.945512,
		0.982253, 0.186299, -0.021733,
		-0.169293, 0.930487, 0.324861,
		39.487080, 35.418457, 35.579189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037064, 34.795269, 35.945992>,  <39.605587, 34.767117, 35.351788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037064, 34.795269, 35.945992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790432, 35.109390, 35.968376>,  <39.642452, 35.297863, 35.981808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790432, 35.109390, 35.968376>,  <40.037064, 34.795269, 35.945992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790432, 35.109390, 35.968376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012415, -0.061369, 0.998038,
		0.787194, 0.616066, 0.028089,
		-0.616581, 0.785300, 0.055957,
		39.605457, 35.344982, 35.985165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307316, 35.133278, 36.481491>,  <40.037064, 34.795269, 35.945992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307316, 35.133278, 36.481491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944084, 35.291775, 36.427238>,  <39.726147, 35.386871, 36.394688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944084, 35.291775, 36.427238>,  <40.307316, 35.133278, 36.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944084, 35.291775, 36.427238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131215, 0.038366, 0.990611,
		0.397721, 0.917346, 0.017153,
		-0.908075, 0.396238, -0.135628,
		39.671661, 35.410645, 36.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333778, 35.764889, 36.816505>,  <40.307316, 35.133278, 36.481491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333778, 35.764889, 36.816505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947433, 35.671268, 36.772072>,  <39.715626, 35.615097, 36.745411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947433, 35.671268, 36.772072>,  <40.333778, 35.764889, 36.816505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947433, 35.671268, 36.772072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130199, 0.067838, 0.989164,
		-0.223981, 0.969854, -0.095995,
		-0.965857, -0.234052, -0.111080,
		39.657677, 35.601051, 36.738747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989174, 36.346561, 37.171009>,  <40.333778, 35.764889, 36.816505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989174, 36.346561, 37.171009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753418, 36.026184, 37.128853>,  <39.611965, 35.833958, 37.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753418, 36.026184, 37.128853>,  <39.989174, 36.346561, 37.171009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753418, 36.026184, 37.128853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174334, -0.001281, 0.984686,
		-0.788812, 0.598740, -0.138876,
		-0.589393, -0.800942, -0.105391,
		39.576599, 35.785900, 37.097237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438831, 36.516087, 37.433384>,  <39.989174, 36.346561, 37.171009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438831, 36.516087, 37.433384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412693, 36.117489, 37.454262>,  <39.397011, 35.878330, 37.466789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412693, 36.117489, 37.454262>,  <39.438831, 36.516087, 37.433384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412693, 36.117489, 37.454262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156861, 0.061918, 0.985678,
		-0.985457, 0.056219, -0.160357,
		-0.065343, -0.996497, 0.052199,
		39.393089, 35.818539, 37.469921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812630, 36.197647, 37.738182>,  <39.438831, 36.516087, 37.433384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812630, 36.197647, 37.738182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106533, 35.936619, 37.812244>,  <39.282875, 35.780003, 37.856682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106533, 35.936619, 37.812244>,  <38.812630, 36.197647, 37.738182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106533, 35.936619, 37.812244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194103, 0.059279, 0.979188,
		-0.649964, -0.755407, -0.083110,
		0.734759, -0.652569, 0.185156,
		39.326962, 35.740849, 37.867790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471088, 35.562790, 37.940937>,  <38.812630, 36.197647, 37.738182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471088, 35.562790, 37.940937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837887, 35.630661, 38.085346>,  <39.057964, 35.671383, 38.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837887, 35.630661, 38.085346>,  <38.471088, 35.562790, 37.940937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837887, 35.630661, 38.085346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387683, 0.165894, 0.906742,
		0.093960, -0.971437, 0.217903,
		0.916991, 0.169674, 0.361022,
		39.112984, 35.681564, 38.193653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566284, 35.162323, 38.470135>,  <38.471088, 35.562790, 37.940937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566284, 35.162323, 38.470135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777088, 35.491360, 38.555557>,  <38.903572, 35.688782, 38.606812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777088, 35.491360, 38.555557>,  <38.566284, 35.162323, 38.470135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777088, 35.491360, 38.555557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482625, 0.082854, 0.871899,
		0.699520, -0.562569, 0.440667,
		0.527015, 0.822588, 0.213552,
		38.935192, 35.738136, 38.619621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635983, 35.058662, 39.305428>,  <38.566284, 35.162323, 38.470135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635983, 35.058662, 39.305428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667645, 35.434769, 39.172977>,  <38.686642, 35.660431, 39.093506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667645, 35.434769, 39.172977>,  <38.635983, 35.058662, 39.305428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667645, 35.434769, 39.172977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474066, 0.327707, 0.817233,
		0.876924, 0.092286, 0.471686,
		0.079156, 0.940261, -0.331124,
		38.691391, 35.716846, 39.073639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977520, 35.523304, 39.703411>,  <38.635983, 35.058662, 39.305428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977520, 35.523304, 39.703411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726994, 35.761864, 39.502598>,  <38.576679, 35.904999, 39.382111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726994, 35.761864, 39.502598>,  <38.977520, 35.523304, 39.703411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726994, 35.761864, 39.502598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541221, 0.130836, 0.830639,
		0.561077, 0.791953, 0.240839,
		-0.626317, 0.596400, -0.502031,
		38.539097, 35.940784, 39.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435474, 34.940853, 39.873596>,  <38.977520, 35.523304, 39.703411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435474, 34.940853, 39.873596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799660, 34.801735, 39.784073>,  <40.018173, 34.718262, 39.730358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799660, 34.801735, 39.784073>,  <39.435474, 34.940853, 39.873596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799660, 34.801735, 39.784073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224331, -0.869907, 0.439245,
		-0.347461, -0.349711, -0.870042,
		0.910465, -0.347798, -0.223808,
		40.072800, 34.697395, 39.716930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320004, 34.204979, 39.691296>,  <39.435474, 34.940853, 39.873596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320004, 34.204979, 39.691296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707100, 34.260387, 39.775467>,  <39.939358, 34.293633, 39.825970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707100, 34.260387, 39.775467>,  <39.320004, 34.204979, 39.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707100, 34.260387, 39.775467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022555, -0.879564, 0.475246,
		0.250919, -0.455171, -0.854318,
		0.967745, 0.138518, 0.210433,
		39.997425, 34.301941, 39.838596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717350, 33.658188, 39.530567>,  <39.320004, 34.204979, 39.691296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717350, 33.658188, 39.530567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933598, 33.836712, 39.815815>,  <40.063347, 33.943825, 39.986965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933598, 33.836712, 39.815815>,  <39.717350, 33.658188, 39.530567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933598, 33.836712, 39.815815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173658, -0.888620, 0.424497,
		0.823149, -0.105652, -0.557910,
		0.540618, 0.446310, 0.713119,
		40.095783, 33.970604, 40.029751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235321, 33.159573, 39.651035>,  <39.717350, 33.658188, 39.530567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235321, 33.159573, 39.651035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277256, 33.395859, 39.971054>,  <40.302418, 33.537628, 40.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277256, 33.395859, 39.971054>,  <40.235321, 33.159573, 39.651035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277256, 33.395859, 39.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471542, -0.737820, 0.482980,
		0.875590, 0.326621, -0.355894,
		0.104834, 0.590712, 0.800043,
		40.308708, 33.573071, 40.211067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947433, 33.166603, 39.756912>,  <40.235321, 33.159573, 39.651035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947433, 33.166603, 39.756912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744167, 33.239086, 40.093704>,  <40.622208, 33.282578, 40.295780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744167, 33.239086, 40.093704>,  <40.947433, 33.166603, 39.756912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744167, 33.239086, 40.093704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555766, -0.677838, 0.481311,
		0.657945, 0.712530, 0.243743,
		-0.508166, 0.181212, 0.841979,
		40.591717, 33.293449, 40.346298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473122, 33.317680, 40.276924>,  <40.947433, 33.166603, 39.756912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473122, 33.317680, 40.276924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135864, 33.180191, 40.442318>,  <40.933510, 33.097698, 40.541553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135864, 33.180191, 40.442318>,  <41.473122, 33.317680, 40.276924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135864, 33.180191, 40.442318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512921, -0.744875, 0.426700,
		0.161332, 0.571855, 0.804335,
		-0.843139, -0.343720, 0.413489,
		40.882923, 33.077076, 40.566364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607265, 33.231289, 40.946407>,  <41.473122, 33.317680, 40.276924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607265, 33.231289, 40.946407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294189, 32.993725, 40.871929>,  <41.106342, 32.851189, 40.827240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294189, 32.993725, 40.871929>,  <41.607265, 33.231289, 40.946407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294189, 32.993725, 40.871929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334265, -0.653448, 0.679170,
		-0.525035, 0.469341, 0.709970,
		-0.782691, -0.593907, -0.186199,
		41.059383, 32.815552, 40.816071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761959, 32.801022, 41.444790>,  <41.607265, 33.231289, 40.946407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761959, 32.801022, 41.444790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434940, 32.623810, 41.297630>,  <41.238731, 32.517483, 41.209335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434940, 32.623810, 41.297630>,  <41.761959, 32.801022, 41.444790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434940, 32.623810, 41.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186739, -0.808294, 0.558381,
		-0.544751, 0.387798, 0.743545,
		-0.817542, -0.443027, -0.367901,
		41.189678, 32.490902, 41.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286243, 32.591530, 42.009247>,  <41.761959, 32.801022, 41.444790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286243, 32.591530, 42.009247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206047, 32.343189, 41.706104>,  <41.157928, 32.194183, 41.524220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206047, 32.343189, 41.706104>,  <41.286243, 32.591530, 42.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206047, 32.343189, 41.706104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275298, -0.778094, 0.564607,
		-0.940221, -0.095438, 0.326919,
		-0.200489, -0.620856, -0.757854,
		41.145901, 32.156933, 41.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963207, 31.996637, 42.367229>,  <41.286243, 32.591530, 42.009247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963207, 31.996637, 42.367229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058990, 31.875269, 41.998318>,  <41.116463, 31.802448, 41.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058990, 31.875269, 41.998318>,  <40.963207, 31.996637, 42.367229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058990, 31.875269, 41.998318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291801, -0.883506, 0.366428,
		-0.926019, -0.356867, -0.123028,
		0.239462, -0.303419, -0.922277,
		41.130829, 31.784243, 41.721634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574081, 31.317368, 42.238583>,  <40.963207, 31.996637, 42.367229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574081, 31.317368, 42.238583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920311, 31.351997, 42.041283>,  <41.128048, 31.372774, 41.922905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920311, 31.351997, 42.041283>,  <40.574081, 31.317368, 42.238583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920311, 31.351997, 42.041283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377608, -0.759780, 0.529288,
		-0.328938, -0.644390, -0.690334,
		0.865570, 0.086573, -0.493248,
		41.179981, 31.377970, 41.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757229, 30.695391, 41.750603>,  <40.574081, 31.317368, 42.238583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757229, 30.695391, 41.750603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077969, 30.886927, 41.893574>,  <41.270412, 31.001848, 41.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077969, 30.886927, 41.893574>,  <40.757229, 30.695391, 41.750603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077969, 30.886927, 41.893574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393692, -0.873351, 0.286817,
		0.449502, -0.089265, -0.888808,
		0.801844, 0.478842, 0.357430,
		41.318523, 31.030579, 42.000801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462147, 30.440914, 41.487156>,  <40.757229, 30.695391, 41.750603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462147, 30.440914, 41.487156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536728, 30.583305, 41.853439>,  <41.581474, 30.668741, 42.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536728, 30.583305, 41.853439>,  <41.462147, 30.440914, 41.487156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536728, 30.583305, 41.853439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536064, -0.817942, 0.208824,
		0.823330, 0.451940, -0.343333,
		0.186450, 0.355980, 0.915705,
		41.592663, 30.690100, 42.128151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252579, 30.353645, 41.592079>,  <41.462147, 30.440914, 41.487156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252579, 30.353645, 41.592079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106186, 30.423138, 41.957783>,  <42.018349, 30.464834, 42.177204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106186, 30.423138, 41.957783>,  <42.252579, 30.353645, 41.592079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106186, 30.423138, 41.957783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400383, -0.857453, 0.323214,
		0.840089, 0.484345, 0.244255,
		-0.365984, 0.173733, 0.914261,
		41.996391, 30.475258, 42.232059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720737, 30.118151, 42.158447>,  <42.252579, 30.353645, 41.592079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720737, 30.118151, 42.158447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355682, 30.116083, 42.321941>,  <42.136650, 30.114843, 42.420040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355682, 30.116083, 42.321941>,  <42.720737, 30.118151, 42.158447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355682, 30.116083, 42.321941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165263, -0.919223, 0.357375,
		0.373876, 0.393703, 0.839771,
		-0.912636, -0.005169, 0.408740,
		42.081890, 30.114532, 42.444565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762413, 29.988379, 42.939587>,  <42.720737, 30.118151, 42.158447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762413, 29.988379, 42.939587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419750, 29.867489, 42.772346>,  <42.214153, 29.794956, 42.672005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419750, 29.867489, 42.772346>,  <42.762413, 29.988379, 42.939587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419750, 29.867489, 42.772346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197281, -0.940750, 0.275808,
		-0.476679, 0.153790, 0.865521,
		-0.856655, -0.302223, -0.418096,
		42.162754, 29.776821, 42.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351425, 29.734577, 43.524296>,  <42.762413, 29.988379, 42.939587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351425, 29.734577, 43.524296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251915, 29.572021, 43.172623>,  <42.192211, 29.474489, 42.961620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251915, 29.572021, 43.172623>,  <42.351425, 29.734577, 43.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251915, 29.572021, 43.172623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146495, -0.913064, 0.380596,
		-0.957419, -0.034114, 0.286679,
		-0.248773, -0.406387, -0.879182,
		42.177284, 29.450106, 42.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760853, 29.308702, 43.635120>,  <42.351425, 29.734577, 43.524296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760853, 29.308702, 43.635120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961384, 29.183622, 43.312408>,  <42.081703, 29.108574, 43.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961384, 29.183622, 43.312408>,  <41.760853, 29.308702, 43.635120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961384, 29.183622, 43.312408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014513, -0.935321, 0.353503,
		-0.865134, -0.165513, -0.473443,
		0.501330, -0.312699, -0.806776,
		42.111782, 29.089813, 43.070377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339996, 28.888401, 43.144051>,  <41.760853, 29.308702, 43.635120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339996, 28.888401, 43.144051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727596, 28.789722, 43.138836>,  <41.960159, 28.730515, 43.135708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727596, 28.789722, 43.138836>,  <41.339996, 28.888401, 43.144051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727596, 28.789722, 43.138836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191750, -0.784354, 0.589933,
		-0.155763, -0.569147, -0.807347,
		0.969004, -0.246698, -0.013039,
		42.018299, 28.715714, 43.134926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449352, 29.480303, 42.875851>,  <41.339996, 28.888401, 43.144051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449352, 29.480303, 42.875851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787022, 29.670742, 42.974407>,  <41.989624, 29.785006, 43.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787022, 29.670742, 42.974407>,  <41.449352, 29.480303, 42.875851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787022, 29.670742, 42.974407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430030, 0.875842, -0.219035,
		-0.320079, 0.078948, 0.944096,
		0.844171, 0.476098, 0.246389,
		42.040272, 29.813572, 43.048325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242054, 30.162119, 43.283661>,  <41.449352, 29.480303, 42.875851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242054, 30.162119, 43.283661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584770, 30.212065, 43.083534>,  <41.790398, 30.242033, 42.963459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584770, 30.212065, 43.083534>,  <41.242054, 30.162119, 43.283661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584770, 30.212065, 43.083534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340601, 0.865511, -0.367263,
		0.387174, 0.485077, 0.784090,
		0.856789, 0.124867, -0.500321,
		41.841808, 30.249525, 42.933437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704376, 30.757612, 43.418865>,  <41.242054, 30.162119, 43.283661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704376, 30.757612, 43.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786629, 30.663317, 43.038940>,  <41.835979, 30.606739, 42.810986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786629, 30.663317, 43.038940>,  <41.704376, 30.757612, 43.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786629, 30.663317, 43.038940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355983, 0.886046, -0.296981,
		0.911588, 0.399185, 0.098278,
		0.205629, -0.235739, -0.949812,
		41.848316, 30.592594, 42.753998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976585, 31.401321, 43.203899>,  <41.704376, 30.757612, 43.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976585, 31.401321, 43.203899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876804, 31.184072, 42.883202>,  <41.816936, 31.053724, 42.690784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876804, 31.184072, 42.883202>,  <41.976585, 31.401321, 43.203899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876804, 31.184072, 42.883202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271981, 0.833886, -0.480271,
		0.929409, 0.098257, -0.355731,
		-0.249449, -0.543120, -0.801746,
		41.801971, 31.021137, 42.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280697, 31.710217, 42.585503>,  <41.976585, 31.401321, 43.203899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280697, 31.710217, 42.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972458, 31.504484, 42.434963>,  <41.787514, 31.381044, 42.344639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972458, 31.504484, 42.434963>,  <42.280697, 31.710217, 42.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972458, 31.504484, 42.434963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323347, 0.824391, -0.464571,
		0.549202, -0.236308, -0.801583,
		-0.770600, -0.514333, -0.376348,
		41.741280, 31.350183, 42.322060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112278, 31.831007, 41.855019>,  <42.280697, 31.710217, 42.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112278, 31.831007, 41.855019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052464, 31.464239, 41.707024>,  <42.016575, 31.244179, 41.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052464, 31.464239, 41.707024>,  <42.112278, 31.831007, 41.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052464, 31.464239, 41.707024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716083, 0.358465, -0.598940,
		0.681809, 0.175381, -0.710195,
		-0.149537, -0.916921, -0.369992,
		42.007603, 31.189163, 41.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156170, 31.868271, 41.097015>,  <42.112278, 31.831007, 41.855019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156170, 31.868271, 41.097015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891808, 31.635231, 41.286240>,  <41.733192, 31.495407, 41.399776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891808, 31.635231, 41.286240>,  <42.156170, 31.868271, 41.097015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891808, 31.635231, 41.286240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749186, 0.475298, -0.461315,
		0.043916, -0.659296, -0.750600,
		-0.660902, -0.582598, 0.473062,
		41.693539, 31.460451, 41.428158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652760, 31.525730, 40.544941>,  <42.156170, 31.868271, 41.097015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652760, 31.525730, 40.544941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476665, 31.550451, 40.903244>,  <41.371010, 31.565283, 41.118225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476665, 31.550451, 40.903244>,  <41.652760, 31.525730, 40.544941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476665, 31.550451, 40.903244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666464, 0.646031, -0.372115,
		-0.601683, -0.760805, -0.243214,
		-0.440231, 0.061802, 0.895755,
		41.344597, 31.568993, 41.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927368, 31.445879, 40.459824>,  <41.652760, 31.525730, 40.544941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927368, 31.445879, 40.459824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978516, 31.663427, 40.791573>,  <41.009205, 31.793957, 40.990620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978516, 31.663427, 40.791573>,  <40.927368, 31.445879, 40.459824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978516, 31.663427, 40.791573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447268, 0.777994, -0.441221,
		-0.885212, -0.314533, 0.342736,
		0.127868, 0.543869, 0.829371,
		41.016876, 31.826588, 41.040382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275661, 31.727007, 40.636089>,  <40.927368, 31.445879, 40.459824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275661, 31.727007, 40.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556248, 31.976892, 40.773304>,  <40.724602, 32.126823, 40.855633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556248, 31.976892, 40.773304>,  <40.275661, 31.727007, 40.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556248, 31.976892, 40.773304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516033, 0.777185, -0.360129,
		-0.491580, 0.075601, 0.867545,
		0.701469, 0.624714, 0.343036,
		40.766689, 32.164307, 40.876213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941914, 32.294029, 40.664734>,  <40.275661, 31.727007, 40.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941914, 32.294029, 40.664734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286953, 32.454594, 40.787888>,  <40.493977, 32.550930, 40.861778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286953, 32.454594, 40.787888>,  <39.941914, 32.294029, 40.664734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286953, 32.454594, 40.787888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348146, 0.912592, -0.214406,
		-0.367036, 0.077759, 0.926951,
		0.862600, 0.401409, 0.307883,
		40.545734, 32.575016, 40.880253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826813, 32.811588, 41.203671>,  <39.941914, 32.294029, 40.664734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826813, 32.811588, 41.203671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157803, 32.874832, 40.988155>,  <40.356396, 32.912781, 40.858849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157803, 32.874832, 40.988155>,  <39.826813, 32.811588, 41.203671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157803, 32.874832, 40.988155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369163, 0.876197, -0.309835,
		0.423091, 0.455279, 0.783399,
		0.827474, 0.158114, -0.538783,
		40.406044, 32.922268, 40.826519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958454, 33.486874, 41.453964>,  <39.826813, 32.811588, 41.203671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958454, 33.486874, 41.453964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 33.422184, 41.100296>,  <40.238949, 33.383369, 40.888096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133762, 33.422184, 41.100296>,  <39.958454, 33.486874, 41.453964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133762, 33.422184, 41.100296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206900, 0.939114, -0.274331,
		0.874705, 0.303167, 0.378128,
		0.438273, -0.161724, -0.884173,
		40.265244, 33.373669, 40.835045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205948, 34.180016, 41.278969>,  <39.958454, 33.486874, 41.453964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205948, 34.180016, 41.278969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306236, 33.989799, 40.941685>,  <40.366409, 33.875671, 40.739315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306236, 33.989799, 40.941685>,  <40.205948, 34.180016, 41.278969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306236, 33.989799, 40.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014509, 0.869085, -0.494450,
		0.967950, 0.136205, 0.211002,
		0.250725, -0.475541, -0.843207,
		40.381454, 33.847137, 40.688725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807636, 34.548306, 40.934380>,  <40.205948, 34.180016, 41.278969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807636, 34.548306, 40.934380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579807, 34.358040, 40.666252>,  <40.443108, 34.243881, 40.505375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579807, 34.358040, 40.666252>,  <40.807636, 34.548306, 40.934380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579807, 34.358040, 40.666252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059071, 0.837114, -0.543829,
		0.819809, -0.270159, -0.504903,
		-0.569582, -0.475662, -0.670315,
		40.408936, 34.215340, 40.465157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148270, 34.371857, 40.228863>,  <40.807636, 34.548306, 40.934380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148270, 34.371857, 40.228863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757904, 34.458229, 40.216499>,  <40.523685, 34.510052, 40.209080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757904, 34.458229, 40.216499>,  <41.148270, 34.371857, 40.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757904, 34.458229, 40.216499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205187, 0.860635, -0.466054,
		-0.074037, -0.461172, -0.884217,
		-0.975919, 0.215935, -0.030908,
		40.465130, 34.523010, 40.207226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821133, 34.283699, 39.568516>,  <41.148270, 34.371857, 40.228863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821133, 34.283699, 39.568516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688721, 34.561718, 39.823803>,  <40.609272, 34.728531, 39.976974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688721, 34.561718, 39.823803>,  <40.821133, 34.283699, 39.568516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688721, 34.561718, 39.823803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521208, 0.698496, -0.490352,
		-0.786612, 0.170322, -0.593491,
		-0.331034, 0.695049, 0.638219,
		40.589409, 34.770233, 40.015270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601334, 34.922092, 39.170963>,  <40.821133, 34.283699, 39.568516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601334, 34.922092, 39.170963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653049, 35.032974, 39.551792>,  <40.684078, 35.099503, 39.780289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653049, 35.032974, 39.551792>,  <40.601334, 34.922092, 39.170963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653049, 35.032974, 39.551792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362500, 0.880462, -0.305581,
		-0.922973, 0.384634, 0.013347,
		0.129288, 0.277205, 0.952073,
		40.691837, 35.116135, 39.837414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237495, 35.576046, 39.358932>,  <40.601334, 34.922092, 39.170963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237495, 35.576046, 39.358932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564491, 35.506165, 39.578457>,  <40.760689, 35.464237, 39.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564491, 35.506165, 39.578457>,  <40.237495, 35.576046, 39.358932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564491, 35.506165, 39.578457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411139, 0.844318, -0.343645,
		-0.403338, 0.506564, 0.762045,
		0.817486, -0.174702, 0.548814,
		40.809738, 35.453754, 39.743099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337383, 36.225670, 39.845364>,  <40.237495, 35.576046, 39.358932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337383, 36.225670, 39.845364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671276, 36.017754, 39.772655>,  <40.871613, 35.893005, 39.729031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671276, 36.017754, 39.772655>,  <40.337383, 36.225670, 39.845364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671276, 36.017754, 39.772655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496346, 0.853176, -0.160408,
		0.238459, 0.043677, 0.970170,
		0.834732, -0.519791, -0.181769,
		40.921696, 35.861816, 39.718124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991848, 36.415905, 39.928619>,  <40.337383, 36.225670, 39.845364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991848, 36.415905, 39.928619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256748, 36.149883, 40.066677>,  <41.415688, 35.990269, 40.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256748, 36.149883, 40.066677>,  <40.991848, 36.415905, 39.928619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256748, 36.149883, 40.066677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239564, -0.624388, -0.743471,
		0.709954, 0.409680, -0.572825,
		0.662250, -0.665058, 0.345142,
		41.455421, 35.950367, 40.170219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461475, 36.149891, 39.422157>,  <40.991848, 36.415905, 39.928619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461475, 36.149891, 39.422157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423630, 35.846230, 39.679756>,  <41.400925, 35.664032, 39.834316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423630, 35.846230, 39.679756>,  <41.461475, 36.149891, 39.422157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423630, 35.846230, 39.679756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334775, -0.584960, -0.738747,
		0.937536, -0.285487, -0.198803,
		-0.094611, -0.759157, 0.643995,
		41.395248, 35.618481, 39.872955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396843, 36.494087, 38.811592>,  <41.461475, 36.149891, 39.422157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396843, 36.494087, 38.811592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536758, 36.128277, 38.730312>,  <41.620708, 35.908791, 38.681545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536758, 36.128277, 38.730312>,  <41.396843, 36.494087, 38.811592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536758, 36.128277, 38.730312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882545, -0.248910, -0.398945,
		0.314267, 0.318881, -0.894176,
		0.349786, -0.914526, -0.203203,
		41.641693, 35.853920, 38.669350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009247, 36.453033, 38.213497>,  <41.396843, 36.494087, 38.811592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009247, 36.453033, 38.213497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136955, 36.548084, 37.846542>,  <41.213581, 36.605114, 37.626369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136955, 36.548084, 37.846542>,  <41.009247, 36.453033, 38.213497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136955, 36.548084, 37.846542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911200, 0.188969, 0.366066,
		0.260346, -0.952797, -0.156196,
		0.319271, 0.237629, -0.917386,
		41.232738, 36.619373, 37.571327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606861, 36.126385, 38.095276>,  <41.009247, 36.453033, 38.213497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606861, 36.126385, 38.095276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625874, 36.427021, 37.832111>,  <41.637280, 36.607403, 37.674213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625874, 36.427021, 37.832111>,  <41.606861, 36.126385, 38.095276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625874, 36.427021, 37.832111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972851, 0.114520, 0.201109,
		0.226497, -0.649611, -0.725744,
		0.047530, 0.751592, -0.657913,
		41.640133, 36.652500, 37.634739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150852, 36.045292, 37.663609>,  <41.606861, 36.126385, 38.095276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150852, 36.045292, 37.663609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093864, 36.438988, 37.621700>,  <42.059673, 36.675205, 37.596554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093864, 36.438988, 37.621700>,  <42.150852, 36.045292, 37.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093864, 36.438988, 37.621700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961889, 0.162635, 0.219815,
		0.233390, -0.069460, -0.969899,
		-0.142471, 0.984239, -0.104770,
		42.051125, 36.734261, 37.590271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622372, 36.291462, 37.148647>,  <42.150852, 36.045292, 37.663609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622372, 36.291462, 37.148647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550388, 36.583817, 37.411987>,  <42.507198, 36.759228, 37.569992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550388, 36.583817, 37.411987>,  <42.622372, 36.291462, 37.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550388, 36.583817, 37.411987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943070, -0.062107, 0.326743,
		0.279700, 0.679668, -0.678100,
		-0.179962, 0.730886, 0.658346,
		42.496399, 36.803082, 37.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090282, 36.760880, 36.975117>,  <42.622372, 36.291462, 37.148647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090282, 36.760880, 36.975117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973297, 36.794838, 37.356117>,  <42.903107, 36.815212, 37.584717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973297, 36.794838, 37.356117>,  <43.090282, 36.760880, 36.975117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973297, 36.794838, 37.356117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953863, 0.096639, 0.284263,
		-0.067916, 0.991692, -0.109240,
		-0.292459, 0.084894, 0.952502,
		42.885559, 36.820305, 37.641869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957886, 37.316757, 36.476212>,  <43.090282, 36.760880, 36.975117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957886, 37.316757, 36.476212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670506, 37.280647, 36.200333>,  <42.498077, 37.258984, 36.034805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670506, 37.280647, 36.200333>,  <42.957886, 37.316757, 36.476212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670506, 37.280647, 36.200333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695534, -0.104177, -0.710900,
		-0.007676, -0.990453, 0.137634,
		-0.718452, -0.090272, -0.689694,
		42.454971, 37.253567, 35.993423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984081, 36.654308, 36.103237>,  <42.957886, 37.316757, 36.476212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984081, 36.654308, 36.103237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106590, 36.334427, 35.896675>,  <43.180096, 36.142498, 35.772739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106590, 36.334427, 35.896675>,  <42.984081, 36.654308, 36.103237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106590, 36.334427, 35.896675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140685, 0.498492, -0.855402,
		0.941492, 0.334633, 0.040166,
		0.306269, -0.799704, -0.516404,
		43.198471, 36.094517, 35.741753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468140, 36.961502, 35.649685>,  <42.984081, 36.654308, 36.103237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468140, 36.961502, 35.649685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353378, 36.605213, 35.508659>,  <43.284523, 36.391441, 35.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353378, 36.605213, 35.508659>,  <43.468140, 36.961502, 35.649685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353378, 36.605213, 35.508659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231993, 0.421686, -0.876561,
		0.929444, -0.169693, -0.327624,
		-0.286901, -0.890722, -0.352566,
		43.267307, 36.337997, 35.402889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827770, 36.638756, 35.006546>,  <43.468140, 36.961502, 35.649685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827770, 36.638756, 35.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915661, 36.829132, 35.347183>,  <43.968395, 36.943356, 35.551563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915661, 36.829132, 35.347183>,  <43.827770, 36.638756, 35.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915661, 36.829132, 35.347183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776002, -0.614286, 0.143088,
		0.591220, 0.629394, -0.504303,
		0.219727, 0.475936, 0.851589,
		43.981579, 36.971912, 35.602661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637741, 36.903328, 35.100273>,  <43.827770, 36.638756, 35.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637741, 36.903328, 35.100273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445648, 36.802021, 35.436184>,  <44.330391, 36.741238, 35.637730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445648, 36.802021, 35.436184>,  <44.637741, 36.903328, 35.100273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445648, 36.802021, 35.436184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788269, -0.544537, 0.286552,
		0.384718, 0.799584, 0.461148,
		-0.480234, -0.253267, 0.839780,
		44.301579, 36.726040, 35.688118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977489, 37.024094, 35.780895>,  <44.637741, 36.903328, 35.100273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977489, 37.024094, 35.780895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721939, 36.717274, 35.804462>,  <44.568607, 36.533180, 35.818604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721939, 36.717274, 35.804462>,  <44.977489, 37.024094, 35.780895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721939, 36.717274, 35.804462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767109, -0.629393, 0.124127,
		-0.058132, 0.124495, 0.990516,
		-0.638877, -0.767049, 0.058914,
		44.530277, 36.487160, 35.822136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092159, 36.601635, 36.366745>,  <44.977489, 37.024094, 35.780895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092159, 36.601635, 36.366745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958614, 36.356762, 36.080036>,  <44.878487, 36.209839, 35.908009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958614, 36.356762, 36.080036>,  <45.092159, 36.601635, 36.366745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958614, 36.356762, 36.080036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693170, -0.674752, 0.253427,
		-0.638790, -0.412238, 0.649621,
		-0.333861, -0.612184, -0.716776,
		44.858456, 36.173107, 35.865002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785503, 35.880146, 36.670956>,  <45.092159, 36.601635, 36.366745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785503, 35.880146, 36.670956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962860, 35.878212, 36.312428>,  <45.069275, 35.877052, 36.097313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962860, 35.878212, 36.312428>,  <44.785503, 35.880146, 36.670956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962860, 35.878212, 36.312428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711592, -0.606145, 0.355281,
		-0.545017, -0.795340, -0.265316,
		0.443389, -0.004838, -0.896316,
		45.095879, 35.876762, 36.043533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062412, 35.138855, 36.504234>,  <44.785503, 35.880146, 36.670956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062412, 35.138855, 36.504234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305080, 35.399742, 36.322437>,  <45.450680, 35.556274, 36.213360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305080, 35.399742, 36.322437>,  <45.062412, 35.138855, 36.504234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305080, 35.399742, 36.322437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790621, -0.435405, 0.430512,
		0.082898, -0.620511, -0.779804,
		0.606668, 0.652218, -0.454495,
		45.487080, 35.595406, 36.186089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408264, 34.629902, 36.100887>,  <45.062412, 35.138855, 36.504234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408264, 34.629902, 36.100887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603848, 34.971649, 36.171284>,  <45.721199, 35.176697, 36.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603848, 34.971649, 36.171284>,  <45.408264, 34.629902, 36.100887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603848, 34.971649, 36.171284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717413, -0.508636, 0.476034,
		0.496223, -0.106504, -0.861637,
		0.488959, 0.854369, 0.175989,
		45.750534, 35.227959, 36.224079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077606, 34.644535, 35.643497>,  <45.408264, 34.629902, 36.100887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077606, 34.644535, 35.643497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082478, 34.844330, 35.989990>,  <46.085400, 34.964207, 36.197887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082478, 34.844330, 35.989990>,  <46.077606, 34.644535, 35.643497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082478, 34.844330, 35.989990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694761, -0.627262, 0.351923,
		0.719138, 0.597540, -0.354665,
		0.012180, 0.499488, 0.866235,
		46.086132, 34.994175, 36.249863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502655, 34.768131, 35.033047>,  <46.077606, 34.644535, 35.643497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502655, 34.768131, 35.033047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779747, 34.768578, 34.744568>,  <46.946003, 34.768845, 34.571480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779747, 34.768578, 34.744568>,  <46.502655, 34.768131, 35.033047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779747, 34.768578, 34.744568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665833, 0.383243, 0.640150,
		0.277109, -0.923647, 0.264739,
		0.692732, 0.001119, -0.721195,
		46.987568, 34.768913, 34.528210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195068, 34.310986, 35.136349>,  <46.502655, 34.768131, 35.033047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195068, 34.310986, 35.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225948, 34.666367, 34.955379>,  <47.244476, 34.879597, 34.846798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225948, 34.666367, 34.955379>,  <47.195068, 34.310986, 35.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225948, 34.666367, 34.955379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671781, 0.288954, 0.682067,
		0.736716, -0.356586, -0.574540,
		0.077200, 0.888455, -0.452425,
		47.249107, 34.932903, 34.819653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881161, 34.487720, 34.956055>,  <47.195068, 34.310986, 35.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881161, 34.487720, 34.956055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680798, 34.831741, 34.994839>,  <47.560581, 35.038155, 35.018108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680798, 34.831741, 34.994839>,  <47.881161, 34.487720, 34.956055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680798, 34.831741, 34.994839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748257, 0.374018, 0.547926,
		0.434979, 0.347013, -0.830888,
		-0.500905, 0.860053, 0.096965,
		47.530525, 35.089756, 35.023930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.248951, 34.998917, 34.897064>,  <47.881161, 34.487720, 34.956055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.248951, 34.998917, 34.897064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966572, 35.194298, 35.102215>,  <47.797142, 35.311527, 35.225307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.966572, 35.194298, 35.102215>,  <48.248951, 34.998917, 34.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966572, 35.194298, 35.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679333, 0.262132, 0.685415,
		0.200354, 0.832284, -0.516877,
		-0.705950, 0.488457, 0.512879,
		47.754787, 35.340836, 35.256077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.528133, 31.621202, 28.961021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.220749, 31.515106, 28.728086>,  <42.036320, 31.451448, 28.588326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.220749, 31.515106, 28.728086>,  <42.528133, 31.621202, 28.961021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220749, 31.515106, 28.728086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638654, 0.261161, 0.723820,
		-0.039902, 0.928139, -0.370089,
		-0.768458, -0.265241, -0.582339,
		41.990211, 31.435534, 28.553385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168606, 32.145348, 28.868223>,  <42.528133, 31.621202, 28.961021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168606, 32.145348, 28.868223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.905720, 31.849991, 28.807770>,  <41.747986, 31.672777, 28.771498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.905720, 31.849991, 28.807770>,  <42.168606, 32.145348, 28.868223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905720, 31.849991, 28.807770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600387, 0.391675, 0.697227,
		-0.455632, 0.548969, -0.700737,
		-0.657218, -0.738392, -0.151134,
		41.708553, 31.628473, 28.762430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458832, 32.402531, 28.854143>,  <42.168606, 32.145348, 28.868223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458832, 32.402531, 28.854143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433598, 32.010849, 28.931269>,  <41.418457, 31.775841, 28.977545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.433598, 32.010849, 28.931269>,  <41.458832, 32.402531, 28.854143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433598, 32.010849, 28.931269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617676, 0.190062, 0.763121,
		-0.783898, -0.070951, -0.616822,
		-0.063090, -0.979205, 0.192814,
		41.414669, 31.717087, 28.989113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780876, 32.308418, 29.006346>,  <41.458832, 32.402531, 28.854143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780876, 32.308418, 29.006346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941044, 31.966173, 29.137552>,  <41.037144, 31.760826, 29.216276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.941044, 31.966173, 29.137552>,  <40.780876, 32.308418, 29.006346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941044, 31.966173, 29.137552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644995, -0.008905, 0.764135,
		-0.650880, -0.517544, -0.555430,
		0.400420, -0.855610, 0.328017,
		41.061169, 31.709490, 29.235958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207867, 31.992638, 29.144808>,  <40.780876, 32.308418, 29.006346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207867, 31.992638, 29.144808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496822, 31.806913, 29.349773>,  <40.670197, 31.695478, 29.472754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.496822, 31.806913, 29.349773>,  <40.207867, 31.992638, 29.144808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496822, 31.806913, 29.349773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624677, -0.120415, 0.771543,
		-0.296535, -0.877447, -0.377033,
		0.722389, -0.464313, 0.512414,
		40.713539, 31.667620, 29.503498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820286, 31.513350, 29.426815>,  <40.207867, 31.992638, 29.144808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820286, 31.513350, 29.426815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160088, 31.506548, 29.637735>,  <40.363968, 31.502466, 29.764288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160088, 31.506548, 29.637735>,  <39.820286, 31.513350, 29.426815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160088, 31.506548, 29.637735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520066, -0.195043, 0.831558,
		0.088708, -0.980647, -0.174533,
		0.849507, -0.017003, 0.527303,
		40.414940, 31.501446, 29.795927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884739, 30.820692, 29.849110>,  <39.820286, 31.513350, 29.426815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884739, 30.820692, 29.849110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067928, 31.132824, 30.019449>,  <40.177841, 31.320103, 30.121653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.067928, 31.132824, 30.019449>,  <39.884739, 30.820692, 29.849110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067928, 31.132824, 30.019449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632805, -0.050283, 0.772677,
		0.624355, -0.623344, 0.470768,
		0.457972, 0.780329, 0.425850,
		40.205318, 31.366922, 30.147203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781200, 30.687691, 30.553692>,  <39.884739, 30.820692, 29.849110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781200, 30.687691, 30.553692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.912079, 31.064947, 30.530283>,  <39.990604, 31.291302, 30.516237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.912079, 31.064947, 30.530283>,  <39.781200, 30.687691, 30.553692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912079, 31.064947, 30.530283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619499, 0.260857, 0.740388,
		0.713557, -0.205998, 0.669628,
		0.327195, 0.943143, -0.058520,
		40.010239, 31.347891, 30.512728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142666, 30.867485, 31.192295>,  <39.781200, 30.687691, 30.553692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142666, 30.867485, 31.192295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996624, 31.206209, 31.037577>,  <39.909000, 31.409445, 30.944746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996624, 31.206209, 31.037577>,  <40.142666, 30.867485, 31.192295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996624, 31.206209, 31.037577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366282, 0.251305, 0.895926,
		0.855884, 0.468781, 0.218420,
		-0.365103, 0.846812, -0.386794,
		39.887093, 31.460253, 30.921539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293659, 31.473284, 31.652687>,  <40.142666, 30.867485, 31.192295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293659, 31.473284, 31.652687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971752, 31.602633, 31.453579>,  <39.778606, 31.680241, 31.334114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.971752, 31.602633, 31.453579>,  <40.293659, 31.473284, 31.652687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971752, 31.602633, 31.453579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316172, 0.476203, 0.820528,
		0.502375, 0.817718, -0.280993,
		-0.804770, 0.323371, -0.497772,
		39.730320, 31.699644, 31.304247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127880, 32.298531, 31.633141>,  <40.293659, 31.473284, 31.652687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127880, 32.298531, 31.633141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819599, 32.044147, 31.617287>,  <39.634632, 31.891518, 31.607775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.819599, 32.044147, 31.617287>,  <40.127880, 32.298531, 31.633141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819599, 32.044147, 31.617287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413136, 0.451373, 0.790937,
		-0.485115, 0.625952, -0.610613,
		-0.770702, -0.635961, -0.039635,
		39.588387, 31.853359, 31.605396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629658, 32.675255, 31.872257>,  <40.127880, 32.298531, 31.633141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629658, 32.675255, 31.872257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448570, 32.320518, 31.909258>,  <39.339916, 32.107677, 31.931458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448570, 32.320518, 31.909258>,  <39.629658, 32.675255, 31.872257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448570, 32.320518, 31.909258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593261, 0.377037, 0.711255,
		-0.665647, 0.267123, -0.696821,
		-0.452720, -0.886842, 0.092500,
		39.312756, 32.054466, 31.937008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034798, 32.881004, 32.151081>,  <39.629658, 32.675255, 31.872257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034798, 32.881004, 32.151081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028061, 32.489662, 32.233574>,  <39.024017, 32.254856, 32.283070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028061, 32.489662, 32.233574>,  <39.034798, 32.881004, 32.151081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028061, 32.489662, 32.233574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555154, 0.180695, 0.811883,
		-0.831577, -0.100812, -0.546183,
		-0.016845, -0.978359, 0.206229,
		39.023006, 32.196156, 32.295441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437702, 32.811039, 32.346691>,  <39.034798, 32.881004, 32.151081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437702, 32.811039, 32.346691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619480, 32.482647, 32.484947>,  <38.728546, 32.285610, 32.567902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619480, 32.482647, 32.484947>,  <38.437702, 32.811039, 32.346691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619480, 32.482647, 32.484947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520047, 0.070512, 0.851222,
		-0.723211, -0.566582, -0.394905,
		0.454442, -0.820982, 0.345645,
		38.755814, 32.236351, 32.588642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906830, 32.564327, 32.669392>,  <38.437702, 32.811039, 32.346691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906830, 32.564327, 32.669392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219292, 32.371574, 32.828182>,  <38.406769, 32.255924, 32.923458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219292, 32.371574, 32.828182>,  <37.906830, 32.564327, 32.669392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219292, 32.371574, 32.828182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419360, 0.066081, 0.905412,
		-0.462536, -0.873740, -0.150463,
		0.781152, -0.481883, 0.396976,
		38.453636, 32.227009, 32.947273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632042, 32.066429, 33.111645>,  <37.906830, 32.564327, 32.669392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632042, 32.066429, 33.111645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002419, 32.140717, 33.243183>,  <38.224644, 32.185291, 33.322105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002419, 32.140717, 33.243183>,  <37.632042, 32.066429, 33.111645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002419, 32.140717, 33.243183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356402, 0.141647, 0.923533,
		0.124927, -0.972342, 0.197344,
		0.925943, 0.185708, 0.328849,
		38.280201, 32.196434, 33.341839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780346, 31.611998, 33.710388>,  <37.632042, 32.066429, 33.111645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780346, 31.611998, 33.710388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020245, 31.929237, 33.752914>,  <38.164185, 32.119579, 33.778431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020245, 31.929237, 33.752914>,  <37.780346, 31.611998, 33.710388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020245, 31.929237, 33.752914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295739, 0.096232, 0.950409,
		0.743538, -0.601443, 0.292265,
		0.599742, 0.793099, 0.106318,
		38.200169, 32.167168, 33.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137325, 31.549582, 34.439857>,  <37.780346, 31.611998, 33.710388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137325, 31.549582, 34.439857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151325, 31.932835, 34.326187>,  <38.159725, 32.162788, 34.257984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151325, 31.932835, 34.326187>,  <38.137325, 31.549582, 34.439857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151325, 31.932835, 34.326187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263493, 0.283137, 0.922174,
		0.964026, 0.042601, 0.262371,
		0.035001, 0.958133, -0.284177,
		38.161827, 32.220276, 34.240932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597046, 31.895956, 34.906864>,  <38.137325, 31.549582, 34.439857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597046, 31.895956, 34.906864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381676, 32.190960, 34.743801>,  <38.252453, 32.367962, 34.645966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381676, 32.190960, 34.743801>,  <38.597046, 31.895956, 34.906864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381676, 32.190960, 34.743801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184171, 0.369079, 0.910967,
		0.822304, 0.565563, -0.062893,
		-0.538422, 0.737509, -0.407656,
		38.220150, 32.412212, 34.621506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845047, 32.476097, 35.194157>,  <38.597046, 31.895956, 34.906864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845047, 32.476097, 35.194157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487114, 32.596939, 35.062698>,  <38.272354, 32.669445, 34.983826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487114, 32.596939, 35.062698>,  <38.845047, 32.476097, 35.194157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487114, 32.596939, 35.062698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163223, 0.463800, 0.870775,
		0.415489, 0.832841, -0.365713,
		-0.894834, 0.302104, -0.328643,
		38.218662, 32.687569, 34.964104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739330, 33.217754, 35.401154>,  <38.845047, 32.476097, 35.194157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739330, 33.217754, 35.401154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380512, 33.053425, 35.336002>,  <38.165222, 32.954826, 35.296913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380512, 33.053425, 35.336002>,  <38.739330, 33.217754, 35.401154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380512, 33.053425, 35.336002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350630, 0.437287, 0.828153,
		-0.268998, 0.800004, -0.536315,
		-0.897050, -0.410820, -0.162876,
		38.111397, 32.930180, 35.287140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761364, 32.908348, 36.028610>,  <38.739330, 33.217754, 35.401154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761364, 32.908348, 36.028610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985069, 33.054935, 36.326046>,  <39.119293, 33.142887, 36.504509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.985069, 33.054935, 36.326046>,  <38.761364, 32.908348, 36.028610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985069, 33.054935, 36.326046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781701, 0.065493, -0.620205,
		-0.275987, 0.928122, -0.249843,
		0.559263, 0.366470, 0.743589,
		39.152847, 33.164875, 36.549122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140461, 33.623875, 35.832142>,  <38.761364, 32.908348, 36.028610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140461, 33.623875, 35.832142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349876, 33.428085, 36.111092>,  <39.475525, 33.310612, 36.278461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349876, 33.428085, 36.111092>,  <39.140461, 33.623875, 35.832142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349876, 33.428085, 36.111092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841239, 0.167267, -0.514139,
		0.135009, 0.855826, 0.499334,
		0.523535, -0.489473, 0.697372,
		39.506939, 33.281242, 36.320305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778118, 34.099464, 36.042568>,  <39.140461, 33.623875, 35.832142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778118, 34.099464, 36.042568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860664, 33.717381, 36.127407>,  <39.910191, 33.488129, 36.178310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.860664, 33.717381, 36.127407>,  <39.778118, 34.099464, 36.042568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860664, 33.717381, 36.127407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795065, 0.037353, -0.605373,
		0.570337, 0.293557, 0.767164,
		0.206367, -0.955211, 0.212093,
		39.922573, 33.430817, 36.191036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472851, 34.158939, 36.184830>,  <39.778118, 34.099464, 36.042568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472851, 34.158939, 36.184830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388500, 33.780933, 36.084850>,  <40.337891, 33.554131, 36.024864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388500, 33.780933, 36.084850>,  <40.472851, 34.158939, 36.184830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388500, 33.780933, 36.084850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789915, -0.014124, -0.613053,
		0.575816, -0.326716, 0.749462,
		-0.210880, -0.945017, -0.249945,
		40.325237, 33.497429, 36.009865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052235, 34.024998, 36.048965>,  <40.472851, 34.158939, 36.184830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052235, 34.024998, 36.048965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853958, 33.701473, 35.922401>,  <40.734993, 33.507359, 35.846462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.853958, 33.701473, 35.922401>,  <41.052235, 34.024998, 36.048965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853958, 33.701473, 35.922401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701668, -0.158256, -0.694707,
		0.511812, -0.566376, 0.645961,
		-0.495693, -0.808809, -0.316411,
		40.705250, 33.458832, 35.827477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539631, 33.425140, 35.984406>,  <41.052235, 34.024998, 36.048965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539631, 33.425140, 35.984406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.230537, 33.394409, 35.732380>,  <41.045082, 33.375969, 35.581165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.230537, 33.394409, 35.732380>,  <41.539631, 33.425140, 35.984406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230537, 33.394409, 35.732380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634446, -0.123028, -0.763113,
		-0.018887, -0.989425, 0.143811,
		-0.772736, -0.076827, -0.630061,
		40.998718, 33.371361, 35.543362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779297, 33.006351, 35.527206>,  <41.539631, 33.425140, 35.984406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779297, 33.006351, 35.527206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.470409, 33.122517, 35.301167>,  <41.285076, 33.192215, 35.165543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.470409, 33.122517, 35.301167>,  <41.779297, 33.006351, 35.527206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470409, 33.122517, 35.301167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494542, -0.283642, -0.821569,
		-0.398877, -0.913898, 0.075415,
		-0.772221, 0.290409, -0.565099,
		41.238743, 33.209641, 35.131638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745522, 32.545044, 35.039753>,  <41.779297, 33.006351, 35.527206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745522, 32.545044, 35.039753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.529011, 32.847977, 34.893616>,  <41.399105, 33.029736, 34.805935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.529011, 32.847977, 34.893616>,  <41.745522, 32.545044, 35.039753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529011, 32.847977, 34.893616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356110, -0.187134, -0.915514,
		-0.761712, -0.625649, -0.168401,
		-0.541277, 0.757327, -0.365342,
		41.366627, 33.075176, 34.784012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682411, 32.385983, 34.373055>,  <41.745522, 32.545044, 35.039753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682411, 32.385983, 34.373055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552494, 32.764236, 34.366261>,  <41.474545, 32.991188, 34.362186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552494, 32.764236, 34.366261>,  <41.682411, 32.385983, 34.373055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552494, 32.764236, 34.366261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361356, 0.107479, -0.926213,
		-0.874032, -0.306964, -0.376618,
		-0.324793, 0.945633, -0.016983,
		41.455055, 33.047928, 34.361164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334541, 32.385674, 33.769508>,  <41.682411, 32.385983, 34.373055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334541, 32.385674, 33.769508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.453911, 32.749496, 33.885197>,  <41.525532, 32.967789, 33.954609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.453911, 32.749496, 33.885197>,  <41.334541, 32.385674, 33.769508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453911, 32.749496, 33.885197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407304, 0.152685, -0.900439,
		-0.863161, 0.386513, -0.324901,
		0.298424, 0.909558, 0.289220,
		41.543438, 33.022366, 33.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086716, 32.769157, 33.278831>,  <41.334541, 32.385674, 33.769508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086716, 32.769157, 33.278831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.378666, 32.990231, 33.439739>,  <41.553837, 33.122875, 33.536285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.378666, 32.990231, 33.439739>,  <41.086716, 32.769157, 33.278831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378666, 32.990231, 33.439739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402324, 0.128440, -0.906443,
		-0.552644, 0.823434, -0.128613,
		0.729877, 0.552684, 0.402268,
		41.597630, 33.156036, 33.560421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231651, 33.335499, 32.846245>,  <41.086716, 32.769157, 33.278831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231651, 33.335499, 32.846245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.577766, 33.285812, 33.040504>,  <41.785435, 33.256001, 33.157059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.577766, 33.285812, 33.040504>,  <41.231651, 33.335499, 32.846245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577766, 33.285812, 33.040504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495084, 0.059921, -0.866776,
		0.078571, 0.990444, 0.113348,
		0.865285, -0.124220, 0.485645,
		41.837353, 33.248547, 33.186199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689823, 33.679691, 32.388046>,  <41.231651, 33.335499, 32.846245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689823, 33.679691, 32.388046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.919266, 33.468670, 32.638699>,  <42.056931, 33.342056, 32.789089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.919266, 33.468670, 32.638699>,  <41.689823, 33.679691, 32.388046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919266, 33.468670, 32.638699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647499, -0.176536, -0.741337,
		0.501718, 0.830976, 0.240328,
		0.573607, -0.527554, 0.626628,
		42.091347, 33.310402, 32.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374863, 33.898701, 32.244808>,  <41.689823, 33.679691, 32.388046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374863, 33.898701, 32.244808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.430176, 33.542686, 32.418575>,  <42.463364, 33.329079, 32.522835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.430176, 33.542686, 32.418575>,  <42.374863, 33.898701, 32.244808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430176, 33.542686, 32.418575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782135, -0.170945, -0.599201,
		0.607571, 0.422632, 0.672488,
		0.138283, -0.890034, 0.434417,
		42.471661, 33.275677, 32.548901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111523, 33.875034, 32.296906>,  <42.374863, 33.898701, 32.244808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111523, 33.875034, 32.296906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.016499, 33.494373, 32.374802>,  <42.959484, 33.265976, 32.421539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.016499, 33.494373, 32.374802>,  <43.111523, 33.875034, 32.296906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016499, 33.494373, 32.374802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568145, -0.298737, -0.766791,
		0.787895, -0.071513, 0.611643,
		-0.237555, -0.951652, 0.194744,
		42.945232, 33.208878, 32.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771404, 33.515862, 32.411716>,  <43.111523, 33.875034, 32.296906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771404, 33.515862, 32.411716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.505581, 33.235065, 32.309292>,  <43.346085, 33.066589, 32.247837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.505581, 33.235065, 32.309292>,  <43.771404, 33.515862, 32.411716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505581, 33.235065, 32.309292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634736, -0.349508, -0.689170,
		0.394296, -0.620527, 0.677848,
		-0.664562, -0.701991, -0.256061,
		43.306213, 33.024467, 32.232475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142723, 32.878403, 32.315273>,  <43.771404, 33.515862, 32.411716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142723, 32.878403, 32.315273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.803265, 32.846401, 32.106121>,  <43.599590, 32.827198, 31.980629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.803265, 32.846401, 32.106121>,  <44.142723, 32.878403, 32.315273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803265, 32.846401, 32.106121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520552, -0.301916, -0.798669,
		-0.093968, -0.949972, 0.297865,
		-0.848643, -0.080005, -0.522881,
		43.548672, 32.822399, 31.949257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152802, 32.308712, 31.890402>,  <44.142723, 32.878403, 32.315273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152802, 32.308712, 31.890402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.856964, 32.526192, 31.731709>,  <43.679462, 32.656677, 31.636492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.856964, 32.526192, 31.731709>,  <44.152802, 32.308712, 31.890402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856964, 32.526192, 31.731709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261403, -0.311143, -0.913706,
		-0.620221, -0.779476, 0.087995,
		-0.739591, 0.543697, -0.396735,
		43.635086, 32.689301, 31.612688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821613, 31.856142, 31.533575>,  <44.152802, 32.308712, 31.890402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821613, 31.856142, 31.533575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.754417, 32.214382, 31.368807>,  <43.714100, 32.429325, 31.269945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.754417, 32.214382, 31.368807>,  <43.821613, 31.856142, 31.533575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754417, 32.214382, 31.368807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268307, -0.360545, -0.893319,
		-0.948573, -0.260591, -0.179727,
		-0.167991, 0.895600, -0.411921,
		43.704021, 32.483063, 31.245230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.474762, 31.707304, 30.855650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.541451, 32.096111, 30.789452>,  <43.581463, 32.329395, 30.749733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.541451, 32.096111, 30.789452>,  <43.474762, 31.707304, 30.855650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541451, 32.096111, 30.789452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282952, -0.207949, -0.936320,
		-0.944532, 0.109281, -0.309704,
		0.166724, 0.972016, -0.165493,
		43.591469, 32.387714, 30.739803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129425, 31.973593, 30.134623>,  <43.474762, 31.707304, 30.855650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129425, 31.973593, 30.134623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.407448, 32.237343, 30.249252>,  <43.574261, 32.395592, 30.318029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.407448, 32.237343, 30.249252>,  <43.129425, 31.973593, 30.134623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407448, 32.237343, 30.249252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464734, -0.107921, -0.878849,
		-0.548565, 0.744027, -0.381445,
		0.695054, 0.659376, 0.286573,
		43.615963, 32.435154, 30.335224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991409, 32.597271, 29.596157>,  <43.129425, 31.973593, 30.134623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991409, 32.597271, 29.596157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.370300, 32.612911, 29.723425>,  <43.597633, 32.622295, 29.799786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.370300, 32.612911, 29.723425>,  <42.991409, 32.597271, 29.596157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370300, 32.612911, 29.723425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315397, 0.063766, -0.946815,
		-0.057311, 0.997198, 0.048068,
		0.947228, 0.039102, 0.318168,
		43.654469, 32.624641, 29.818874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308342, 33.158333, 29.245041>,  <42.991409, 32.597271, 29.596157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308342, 33.158333, 29.245041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.570976, 32.881390, 29.364731>,  <43.728558, 32.715225, 29.436544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.570976, 32.881390, 29.364731>,  <43.308342, 33.158333, 29.245041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570976, 32.881390, 29.364731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342310, -0.079980, -0.936177,
		0.672103, 0.717107, 0.184488,
		0.656584, -0.692359, 0.299227,
		43.767952, 32.673683, 29.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812546, 33.281361, 28.845896>,  <43.308342, 33.158333, 29.245041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812546, 33.281361, 28.845896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.928139, 32.928864, 28.995512>,  <43.997494, 32.717365, 29.085281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.928139, 32.928864, 28.995512>,  <43.812546, 33.281361, 28.845896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928139, 32.928864, 28.995512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471154, -0.209199, -0.856884,
		0.833370, 0.423851, 0.354747,
		0.288978, -0.881242, 0.374039,
		44.014832, 32.664490, 29.107723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572971, 33.201195, 28.752872>,  <43.812546, 33.281361, 28.845896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572971, 33.201195, 28.752872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.456909, 32.823952, 28.817820>,  <44.387272, 32.597607, 28.856789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.456909, 32.823952, 28.817820>,  <44.572971, 33.201195, 28.752872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.456909, 32.823952, 28.817820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508907, -0.295754, -0.808420,
		0.810445, -0.151940, 0.565768,
		-0.290160, -0.943103, 0.162369,
		44.369862, 32.541019, 28.866529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173248, 32.816280, 28.676908>,  <44.572971, 33.201195, 28.752872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173248, 32.816280, 28.676908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882488, 32.555283, 28.591230>,  <44.708035, 32.398685, 28.539824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.882488, 32.555283, 28.591230>,  <45.173248, 32.816280, 28.676908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882488, 32.555283, 28.591230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500895, -0.290357, -0.815351,
		0.469816, -0.699963, 0.537889,
		-0.726895, -0.652491, -0.214194,
		44.664421, 32.359535, 28.526972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566433, 32.264439, 28.573763>,  <45.173248, 32.816280, 28.676908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566433, 32.264439, 28.573763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.210964, 32.192535, 28.405029>,  <44.997681, 32.149395, 28.303789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.210964, 32.192535, 28.405029>,  <45.566433, 32.264439, 28.573763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210964, 32.192535, 28.405029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457657, -0.290762, -0.840242,
		0.028385, -0.939758, 0.340660,
		-0.888676, -0.179756, -0.421834,
		44.944363, 32.138607, 28.278479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727524, 31.705334, 28.130379>,  <45.566433, 32.264439, 28.573763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727524, 31.705334, 28.130379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.381985, 31.848154, 27.988235>,  <45.174660, 31.933846, 27.902950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.381985, 31.848154, 27.988235>,  <45.727524, 31.705334, 28.130379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381985, 31.848154, 27.988235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322612, -0.149664, -0.934624,
		-0.386893, -0.922017, 0.014098,
		-0.863849, 0.357052, -0.355358,
		45.122829, 31.955269, 27.881628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462433, 31.209753, 27.670420>,  <45.727524, 31.705334, 28.130379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462433, 31.209753, 27.670420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.303848, 31.560642, 27.562120>,  <45.208698, 31.771175, 27.497141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.303848, 31.560642, 27.562120>,  <45.462433, 31.209753, 27.670420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303848, 31.560642, 27.562120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198173, -0.206188, -0.958235,
		-0.896409, -0.433555, -0.092097,
		-0.396458, 0.877221, -0.270748,
		45.184910, 31.823809, 27.480896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096409, 31.022799, 27.112906>,  <45.462433, 31.209753, 27.670420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096409, 31.022799, 27.112906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.153114, 31.413013, 27.045698>,  <45.187138, 31.647142, 27.005373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.153114, 31.413013, 27.045698>,  <45.096409, 31.022799, 27.112906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153114, 31.413013, 27.045698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131048, -0.186734, -0.973631,
		-0.981187, 0.116010, -0.154315,
		0.141767, 0.975537, -0.168018,
		45.195644, 31.705675, 26.995293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773262, 31.254322, 26.371815>,  <45.096409, 31.022799, 27.112906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773262, 31.254322, 26.371815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019024, 31.555941, 26.464697>,  <45.166481, 31.736912, 26.520426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019024, 31.555941, 26.464697>,  <44.773262, 31.254322, 26.371815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019024, 31.555941, 26.464697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335747, 0.016454, -0.941809,
		-0.713988, 0.656615, -0.243059,
		0.614406, 0.754047, 0.232204,
		45.203346, 31.782154, 26.534359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895283, 31.619804, 25.751631>,  <44.773262, 31.254322, 26.371815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895283, 31.619804, 25.751631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208702, 31.733994, 25.972378>,  <45.396755, 31.802507, 26.104826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208702, 31.733994, 25.972378>,  <44.895283, 31.619804, 25.751631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208702, 31.733994, 25.972378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462807, 0.324466, -0.824943,
		-0.414562, 0.901790, 0.122115,
		0.783548, 0.285474, 0.551867,
		45.443768, 31.819635, 26.137938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164803, 32.257088, 25.365072>,  <44.895283, 31.619804, 25.751631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164803, 32.257088, 25.365072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.465954, 32.147690, 25.604530>,  <45.646645, 32.082050, 25.748205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.465954, 32.147690, 25.604530>,  <45.164803, 32.257088, 25.365072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465954, 32.147690, 25.604530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649268, 0.159594, -0.743627,
		0.107840, 0.948540, 0.297728,
		0.752876, -0.273498, 0.598646,
		45.691818, 32.065639, 25.784124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695599, 32.653828, 25.155800>,  <45.164803, 32.257088, 25.365072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695599, 32.653828, 25.155800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.878159, 32.357506, 25.352943>,  <45.987694, 32.179714, 25.471230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.878159, 32.357506, 25.352943>,  <45.695599, 32.653828, 25.155800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878159, 32.357506, 25.352943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757574, 0.033013, -0.651913,
		0.466669, 0.670910, 0.576281,
		0.456400, -0.740804, 0.492858,
		46.015079, 32.135265, 25.500801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464085, 32.877510, 25.414011>,  <45.695599, 32.653828, 25.155800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464085, 32.877510, 25.414011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.432400, 32.478867, 25.405069>,  <46.413387, 32.239681, 25.399704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.432400, 32.478867, 25.405069>,  <46.464085, 32.877510, 25.414011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432400, 32.478867, 25.405069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782166, -0.048237, -0.621200,
		0.618014, -0.066695, 0.783333,
		-0.079217, -0.996607, -0.022356,
		46.408634, 32.179886, 25.398363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127293, 32.722473, 25.499617>,  <46.464085, 32.877510, 25.414011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127293, 32.722473, 25.499617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.951237, 32.407631, 25.326763>,  <46.845604, 32.218727, 25.223051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.951237, 32.407631, 25.326763>,  <47.127293, 32.722473, 25.499617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951237, 32.407631, 25.326763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784716, -0.103251, -0.611196,
		0.436458, -0.608114, 0.663100,
		-0.440143, -0.787106, -0.432132,
		46.819195, 32.171497, 25.197123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.659695, 32.354145, 25.248379>,  <47.127293, 32.722473, 25.499617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.659695, 32.354145, 25.248379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.341286, 32.183685, 25.076450>,  <47.150242, 32.081409, 24.973293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.341286, 32.183685, 25.076450>,  <47.659695, 32.354145, 25.248379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341286, 32.183685, 25.076450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451675, 0.054492, -0.890517,
		0.402919, -0.903008, 0.149106,
		-0.796019, -0.426153, -0.429822,
		47.102478, 32.055840, 24.947504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.898361, 31.974352, 24.782639>,  <47.659695, 32.354145, 25.248379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.898361, 31.974352, 24.782639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.527836, 31.997005, 24.633654>,  <47.305519, 32.010597, 24.544262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.527836, 31.997005, 24.633654>,  <47.898361, 31.974352, 24.782639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.527836, 31.997005, 24.633654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372711, -0.006525, -0.927924,
		-0.054984, -0.998374, -0.015065,
		-0.926317, 0.056636, -0.372464,
		47.249939, 32.013996, 24.521914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870964, 31.467672, 24.257792>,  <47.898361, 31.974352, 24.782639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870964, 31.467672, 24.257792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.581593, 31.734901, 24.188137>,  <47.407970, 31.895239, 24.146345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.581593, 31.734901, 24.188137>,  <47.870964, 31.467672, 24.257792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.581593, 31.734901, 24.188137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426998, 0.234766, -0.873245,
		-0.542511, -0.706089, -0.455104,
		-0.723432, 0.668074, -0.174135,
		47.364563, 31.935324, 24.135897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649155, 31.392845, 23.494205>,  <47.870964, 31.467672, 24.257792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649155, 31.392845, 23.494205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.509029, 31.752251, 23.600000>,  <47.424953, 31.967894, 23.663477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.509029, 31.752251, 23.600000>,  <47.649155, 31.392845, 23.494205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509029, 31.752251, 23.600000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443711, 0.407883, -0.797967,
		-0.824864, -0.162184, -0.541568,
		-0.350314, 0.898514, 0.264486,
		47.403934, 32.021805, 23.679346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479332, 31.677301, 22.842148>,  <47.649155, 31.392845, 23.494205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479332, 31.677301, 22.842148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.579578, 31.908587, 23.152725>,  <47.639725, 32.047359, 23.339071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.579578, 31.908587, 23.152725>,  <47.479332, 31.677301, 22.842148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579578, 31.908587, 23.152725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621675, 0.518689, -0.586926,
		-0.742100, 0.629786, -0.229471,
		0.250614, 0.578214, 0.776441,
		47.654762, 32.082050, 23.385658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475487, 32.411781, 22.675476>,  <47.479332, 31.677301, 22.842148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475487, 32.411781, 22.675476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.723408, 32.368549, 22.986389>,  <47.872158, 32.342609, 23.172937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.723408, 32.368549, 22.986389>,  <47.475487, 32.411781, 22.675476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.723408, 32.368549, 22.986389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676965, 0.574635, -0.459905,
		-0.396945, 0.811241, 0.429327,
		0.619800, -0.108082, 0.777281,
		47.909348, 32.336124, 23.219574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929607, 32.502762, 22.151924>,  <47.475487, 32.411781, 22.675476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929607, 32.502762, 22.151924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.640690, 32.624577, 21.903555>,  <46.467339, 32.697666, 21.754534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.640690, 32.624577, 21.903555>,  <46.929607, 32.502762, 22.151924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640690, 32.624577, 21.903555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691258, -0.345616, 0.634596,
		-0.021341, 0.887584, 0.460152,
		-0.722293, 0.304540, -0.620925,
		46.424004, 32.715939, 21.717278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492199, 33.039780, 22.525646>,  <46.929607, 32.502762, 22.151924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492199, 33.039780, 22.525646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.318790, 32.817337, 22.242010>,  <46.214745, 32.683872, 22.071829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.318790, 32.817337, 22.242010>,  <46.492199, 33.039780, 22.525646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318790, 32.817337, 22.242010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838524, -0.039269, 0.543448,
		-0.330058, 0.830185, -0.449281,
		-0.433520, -0.556102, -0.709091,
		46.188736, 32.650505, 22.029284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805511, 33.343258, 22.522200>,  <46.492199, 33.039780, 22.525646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805511, 33.343258, 22.522200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.753719, 33.007050, 22.311766>,  <45.722645, 32.805325, 22.185505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.753719, 33.007050, 22.311766>,  <45.805511, 33.343258, 22.522200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753719, 33.007050, 22.311766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911754, -0.107643, 0.396381,
		-0.389794, 0.530985, -0.752406,
		-0.129481, -0.840516, -0.526087,
		45.714874, 32.754894, 22.153940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151993, 33.448116, 22.316944>,  <45.805511, 33.343258, 22.522200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151993, 33.448116, 22.316944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.237160, 33.058167, 22.290751>,  <45.288261, 32.824196, 22.275034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.237160, 33.058167, 22.290751>,  <45.151993, 33.448116, 22.316944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237160, 33.058167, 22.290751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766796, -0.208260, 0.607168,
		-0.605549, -0.079063, -0.791871,
		0.212919, -0.974873, -0.065487,
		45.301037, 32.765705, 22.271105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434391, 33.129910, 22.292465>,  <45.151993, 33.448116, 22.316944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434391, 33.129910, 22.292465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701752, 32.857738, 22.412640>,  <44.862167, 32.694435, 22.484745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701752, 32.857738, 22.412640>,  <44.434391, 33.129910, 22.292465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701752, 32.857738, 22.412640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625533, -0.295687, 0.721996,
		-0.402431, -0.670513, -0.623267,
		0.668399, -0.680427, 0.300435,
		44.902271, 32.653610, 22.502769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091728, 32.444469, 22.263674>,  <44.434391, 33.129910, 22.292465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091728, 32.444469, 22.263674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401001, 32.448997, 22.517305>,  <44.586567, 32.451714, 22.669483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.401001, 32.448997, 22.517305>,  <44.091728, 32.444469, 22.263674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401001, 32.448997, 22.517305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605947, -0.281809, 0.743917,
		0.187112, -0.959404, -0.211029,
		0.773187, 0.011323, 0.634078,
		44.632957, 32.452393, 22.707529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890720, 31.862757, 22.653296>,  <44.091728, 32.444469, 22.263674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890720, 31.862757, 22.653296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.203293, 32.011616, 22.853645>,  <44.390835, 32.100933, 22.973854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.203293, 32.011616, 22.853645>,  <43.890720, 31.862757, 22.653296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203293, 32.011616, 22.853645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276958, -0.512438, 0.812835,
		0.559162, -0.773894, -0.297365,
		0.781430, 0.372149, 0.500872,
		44.437721, 32.123260, 23.003906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225441, 31.325342, 23.088167>,  <43.890720, 31.862757, 22.653296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225441, 31.325342, 23.088167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332100, 31.664820, 23.270868>,  <44.396095, 31.868505, 23.380489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.332100, 31.664820, 23.270868>,  <44.225441, 31.325342, 23.088167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332100, 31.664820, 23.270868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486844, -0.290399, 0.823803,
		0.831795, -0.442030, 0.335748,
		0.266645, 0.848692, 0.456752,
		44.412094, 31.919428, 23.407894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453171, 31.197098, 23.731508>,  <44.225441, 31.325342, 23.088167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453171, 31.197098, 23.731508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.333755, 31.578321, 23.751736>,  <44.262108, 31.807055, 23.763872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.333755, 31.578321, 23.751736>,  <44.453171, 31.197098, 23.731508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333755, 31.578321, 23.751736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398043, -0.172491, 0.901004,
		0.867431, 0.248856, 0.430853,
		-0.298539, 0.953057, 0.050568,
		44.244194, 31.864239, 23.766907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712601, 31.529066, 24.411421>,  <44.453171, 31.197098, 23.731508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712601, 31.529066, 24.411421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.391720, 31.731226, 24.284275>,  <44.199192, 31.852522, 24.207989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.391720, 31.731226, 24.284275>,  <44.712601, 31.529066, 24.411421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391720, 31.731226, 24.284275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336105, 0.057741, 0.940053,
		0.493456, 0.860951, 0.123547,
		-0.802206, 0.505400, -0.317863,
		44.151058, 31.882847, 24.188917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523556, 31.828196, 24.935034>,  <44.712601, 31.529066, 24.411421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523556, 31.828196, 24.935034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.187031, 31.909531, 24.734692>,  <43.985115, 31.958332, 24.614487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.187031, 31.909531, 24.734692>,  <44.523556, 31.828196, 24.935034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187031, 31.909531, 24.734692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480276, 0.144021, 0.865213,
		0.248062, 0.968459, -0.023509,
		-0.841309, 0.203335, -0.500854,
		43.934639, 31.970531, 24.584436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347717, 32.293880, 25.410538>,  <44.523556, 31.828196, 24.935034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347717, 32.293880, 25.410538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.026737, 32.206444, 25.188440>,  <43.834148, 32.153980, 25.055182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.026737, 32.206444, 25.188440>,  <44.347717, 32.293880, 25.410538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026737, 32.206444, 25.188440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554073, -0.072520, 0.829303,
		-0.221544, 0.973118, -0.062922,
		-0.802447, -0.218590, -0.555245,
		43.786003, 32.140865, 25.021868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855488, 32.696705, 25.729553>,  <44.347717, 32.293880, 25.410538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855488, 32.696705, 25.729553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660046, 32.399933, 25.545902>,  <43.542778, 32.221870, 25.435711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.660046, 32.399933, 25.545902>,  <43.855488, 32.696705, 25.729553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660046, 32.399933, 25.545902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530846, -0.164827, 0.831285,
		-0.692433, 0.649899, -0.313316,
		-0.488609, -0.741932, -0.459128,
		43.513462, 32.177353, 25.408163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221695, 32.717014, 25.896708>,  <43.855488, 32.696705, 25.729553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221695, 32.717014, 25.896708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251904, 32.333637, 25.786665>,  <43.270031, 32.103611, 25.720640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251904, 32.333637, 25.786665>,  <43.221695, 32.717014, 25.896708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251904, 32.333637, 25.786665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632690, -0.259305, 0.729702,
		-0.770714, 0.118946, -0.625981,
		0.075525, -0.958443, -0.275105,
		43.274563, 32.046104, 25.704134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517323, 32.397949, 25.964651>,  <43.221695, 32.717014, 25.896708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517323, 32.397949, 25.964651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.775631, 32.092720, 25.975178>,  <42.930618, 31.909582, 25.981493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.775631, 32.092720, 25.975178>,  <42.517323, 32.397949, 25.964651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775631, 32.092720, 25.975178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498859, -0.395581, 0.771139,
		-0.578028, -0.511108, -0.636123,
		0.645773, -0.763076, 0.026314,
		42.969364, 31.863798, 25.983072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106010, 31.821507, 26.002926>,  <42.517323, 32.397949, 25.964651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106010, 31.821507, 26.002926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.467190, 31.688581, 26.111923>,  <42.683899, 31.608826, 26.177320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.467190, 31.688581, 26.111923>,  <42.106010, 31.821507, 26.002926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467190, 31.688581, 26.111923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352416, -0.209702, 0.912046,
		-0.245955, -0.919557, -0.306466,
		0.902944, -0.332326, 0.272489,
		42.738075, 31.588886, 26.193670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974159, 31.087492, 26.317982>,  <42.106010, 31.821507, 26.002926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974159, 31.087492, 26.317982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320324, 31.213726, 26.473661>,  <42.528023, 31.289467, 26.567070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320324, 31.213726, 26.473661>,  <41.974159, 31.087492, 26.317982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320324, 31.213726, 26.473661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319691, -0.250349, 0.913850,
		0.385834, -0.915276, -0.115764,
		0.865407, 0.315586, 0.389199,
		42.579945, 31.308401, 26.590422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239857, 30.519171, 26.670139>,  <41.974159, 31.087492, 26.317982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239857, 30.519171, 26.670139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.389320, 30.860201, 26.816288>,  <42.478996, 31.064819, 26.903976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.389320, 30.860201, 26.816288>,  <42.239857, 30.519171, 26.670139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389320, 30.860201, 26.816288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401233, -0.206579, 0.892377,
		0.836297, -0.480041, 0.264892,
		0.373657, 0.852576, 0.365370,
		42.501419, 31.115974, 26.925900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403214, 30.339258, 27.388079>,  <42.239857, 30.519171, 26.670139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403214, 30.339258, 27.388079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439751, 30.736534, 27.417002>,  <42.461674, 30.974899, 27.434357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.439751, 30.736534, 27.417002>,  <42.403214, 30.339258, 27.388079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439751, 30.736534, 27.417002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573377, -0.006914, 0.819263,
		0.814184, -0.116295, 0.568841,
		0.091343, 0.993191, 0.072310,
		42.467155, 31.034491, 27.438694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760242, 30.520376, 28.049856>,  <42.403214, 30.339258, 27.388079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760242, 30.520376, 28.049856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528683, 30.823706, 27.929972>,  <42.389748, 31.005703, 27.858040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.528683, 30.823706, 27.929972>,  <42.760242, 30.520376, 28.049856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528683, 30.823706, 27.929972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331382, 0.117046, 0.936208,
		0.745027, 0.641287, 0.183536,
		-0.578896, 0.758322, -0.299713,
		42.355015, 31.051203, 27.840057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832382, 31.002420, 28.550869>,  <42.760242, 30.520376, 28.049856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832382, 31.002420, 28.550869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487221, 31.113142, 28.381742>,  <42.280125, 31.179575, 28.280266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.487221, 31.113142, 28.381742>,  <42.832382, 31.002420, 28.550869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487221, 31.113142, 28.381742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321955, 0.343795, 0.882128,
		0.389537, 0.897321, -0.207545,
		-0.862905, 0.276802, -0.422818,
		42.228348, 31.196182, 28.254896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.838764, 32.640377, 33.661919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609409, 32.828255, 33.393406>,  <42.471798, 32.940979, 33.232300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609409, 32.828255, 33.393406>,  <42.838764, 32.640377, 33.661919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609409, 32.828255, 33.393406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580146, 0.345772, 0.737477,
		0.578497, 0.812300, 0.074229,
		-0.573386, 0.469691, -0.671281,
		42.437393, 32.969162, 33.192020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890667, 33.286510, 33.861847>,  <42.838764, 32.640377, 33.661919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890667, 33.286510, 33.861847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554649, 33.261055, 33.646339>,  <42.353039, 33.245781, 33.517036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554649, 33.261055, 33.646339>,  <42.890667, 33.286510, 33.861847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554649, 33.261055, 33.646339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518781, 0.384741, 0.763441,
		0.158697, 0.920828, -0.356217,
		-0.840049, -0.063643, -0.538765,
		42.302635, 33.241962, 33.484711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547810, 33.934170, 34.062248>,  <42.890667, 33.286510, 33.861847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547810, 33.934170, 34.062248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273331, 33.685577, 33.911037>,  <42.108643, 33.536423, 33.820312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273331, 33.685577, 33.911037>,  <42.547810, 33.934170, 34.062248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273331, 33.685577, 33.911037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587147, 0.166431, 0.792186,
		-0.429412, 0.765549, -0.479103,
		-0.686195, -0.621479, -0.378022,
		42.067471, 33.499134, 33.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030964, 34.245735, 34.239845>,  <42.547810, 33.934170, 34.062248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030964, 34.245735, 34.239845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875130, 33.883595, 34.172249>,  <41.781628, 33.666309, 34.131691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875130, 33.883595, 34.172249>,  <42.030964, 34.245735, 34.239845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875130, 33.883595, 34.172249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689952, 0.165358, 0.704715,
		-0.610072, 0.391142, -0.689072,
		-0.389588, -0.905353, -0.168989,
		41.758255, 33.611988, 34.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373985, 34.351212, 34.388802>,  <42.030964, 34.245735, 34.239845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373985, 34.351212, 34.388802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373749, 33.951790, 34.367325>,  <41.373608, 33.712135, 34.354439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373749, 33.951790, 34.367325>,  <41.373985, 34.351212, 34.388802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373749, 33.951790, 34.367325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685472, -0.038687, 0.727070,
		-0.728099, 0.037231, -0.684461,
		-0.000590, -0.998557, -0.053688,
		41.373573, 33.652222, 34.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671185, 34.182281, 34.467636>,  <41.373985, 34.351212, 34.388802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671185, 34.182281, 34.467636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861843, 33.838074, 34.539536>,  <40.976238, 33.631550, 34.582676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.861843, 33.838074, 34.539536>,  <40.671185, 34.182281, 34.467636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861843, 33.838074, 34.539536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658705, -0.214195, 0.721268,
		-0.582165, -0.462192, -0.668926,
		0.476645, -0.860522, 0.179752,
		41.004837, 33.579918, 34.593460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183392, 33.692318, 34.536499>,  <40.671185, 34.182281, 34.467636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183392, 33.692318, 34.536499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508980, 33.570988, 34.734669>,  <40.704330, 33.498188, 34.853573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.508980, 33.570988, 34.734669>,  <40.183392, 33.692318, 34.536499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508980, 33.570988, 34.734669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558824, -0.175932, 0.810410,
		-0.158675, -0.936498, -0.312720,
		0.813965, -0.303347, 0.495421,
		40.753170, 33.479988, 34.883297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972130, 33.081749, 34.832661>,  <40.183392, 33.692318, 34.536499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972130, 33.081749, 34.832661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305962, 33.174477, 35.032555>,  <40.506260, 33.230114, 35.152493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305962, 33.174477, 35.032555>,  <39.972130, 33.081749, 34.832661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305962, 33.174477, 35.032555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439601, -0.266467, 0.857757,
		0.332012, -0.935549, -0.120478,
		0.834577, 0.231824, 0.499739,
		40.556335, 33.244022, 35.182476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069454, 32.440998, 35.279072>,  <39.972130, 33.081749, 34.832661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069454, 32.440998, 35.279072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215843, 32.767258, 35.458309>,  <40.303677, 32.963013, 35.565853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215843, 32.767258, 35.458309>,  <40.069454, 32.440998, 35.279072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215843, 32.767258, 35.458309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404063, -0.294479, 0.866034,
		0.838332, -0.497999, 0.221803,
		0.365968, 0.815646, 0.448095,
		40.325634, 33.011951, 35.592739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406853, 32.213871, 35.870911>,  <40.069454, 32.440998, 35.279072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406853, 32.213871, 35.870911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347828, 32.606529, 35.919220>,  <40.312412, 32.842125, 35.948208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347828, 32.606529, 35.919220>,  <40.406853, 32.213871, 35.870911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347828, 32.606529, 35.919220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494283, -0.178965, 0.850680,
		0.856684, 0.065834, 0.511622,
		-0.147566, 0.981650, 0.120776,
		40.303558, 32.901024, 35.955452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108280, 32.275135, 36.588615>,  <40.406853, 32.213871, 35.870911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108280, 32.275135, 36.588615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068245, 32.641659, 36.433510>,  <40.044224, 32.861572, 36.340446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068245, 32.641659, 36.433510>,  <40.108280, 32.275135, 36.588615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068245, 32.641659, 36.433510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699611, 0.212296, 0.682258,
		0.707479, 0.339571, 0.619811,
		-0.100091, 0.916309, -0.387762,
		40.038219, 32.916550, 36.317181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288750, 32.665535, 37.107437>,  <40.108280, 32.275135, 36.588615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288750, 32.665535, 37.107437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.023857, 32.850712, 36.871761>,  <39.864922, 32.961819, 36.730358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.023857, 32.850712, 36.871761>,  <40.288750, 32.665535, 37.107437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023857, 32.850712, 36.871761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621250, 0.100399, 0.777154,
		0.418930, 0.880684, 0.221116,
		-0.662228, 0.462942, -0.589185,
		39.825188, 32.989594, 36.695007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051437, 33.203037, 37.453011>,  <40.288750, 32.665535, 37.107437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051437, 33.203037, 37.453011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753006, 33.159153, 37.190308>,  <39.573948, 33.132824, 37.032684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.753006, 33.159153, 37.190308>,  <40.051437, 33.203037, 37.453011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753006, 33.159153, 37.190308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661484, 0.009264, 0.749902,
		-0.076187, 0.993920, -0.079483,
		-0.746079, -0.109710, -0.656757,
		39.529182, 33.126240, 36.993282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573296, 33.745712, 37.553776>,  <40.051437, 33.203037, 37.453011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573296, 33.745712, 37.553776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391178, 33.442551, 37.366890>,  <39.281906, 33.260654, 37.254757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391178, 33.442551, 37.366890>,  <39.573296, 33.745712, 37.553776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391178, 33.442551, 37.366890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743221, 0.034588, 0.668151,
		-0.490233, 0.651451, -0.579036,
		-0.455295, -0.757902, -0.467216,
		39.254589, 33.215179, 37.226727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396847, 34.526802, 37.503654>,  <39.573296, 33.745712, 37.553776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396847, 34.526802, 37.503654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371769, 34.925900, 37.513309>,  <39.356724, 35.165356, 37.519104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371769, 34.925900, 37.513309>,  <39.396847, 34.526802, 37.503654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371769, 34.925900, 37.513309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052555, 0.027456, -0.998241,
		-0.996648, -0.061316, -0.054158,
		-0.062695, 0.997741, 0.024141,
		39.352959, 35.225224, 37.520554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755108, 34.758694, 36.976299>,  <39.396847, 34.526802, 37.503654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755108, 34.758694, 36.976299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991707, 35.079212, 37.012192>,  <39.133667, 35.271523, 37.033726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.991707, 35.079212, 37.012192>,  <38.755108, 34.758694, 36.976299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991707, 35.079212, 37.012192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001013, 0.112022, -0.993705,
		-0.806304, 0.587686, 0.067073,
		0.591500, 0.801297, 0.089729,
		39.169155, 35.319603, 37.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358761, 35.338684, 36.575184>,  <38.755108, 34.758694, 36.976299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358761, 35.338684, 36.575184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750084, 35.408203, 36.620293>,  <38.984879, 35.449913, 36.647358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.750084, 35.408203, 36.620293>,  <38.358761, 35.338684, 36.575184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750084, 35.408203, 36.620293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117127, -0.014984, -0.993004,
		-0.170893, 0.984667, -0.035015,
		0.978303, 0.173799, 0.112771,
		39.043575, 35.460342, 36.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602390, 35.979404, 36.116138>,  <38.358761, 35.338684, 36.575184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602390, 35.979404, 36.116138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946228, 35.804924, 36.222591>,  <39.152531, 35.700237, 36.286465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946228, 35.804924, 36.222591>,  <38.602390, 35.979404, 36.116138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946228, 35.804924, 36.222591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398071, 0.245103, -0.884005,
		0.320372, 0.865826, 0.384328,
		0.859594, -0.436200, 0.266136,
		39.204105, 35.674065, 36.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125435, 36.556961, 36.161121>,  <38.602390, 35.979404, 36.116138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125435, 36.556961, 36.161121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275570, 36.193554, 36.087669>,  <39.365650, 35.975510, 36.043598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275570, 36.193554, 36.087669>,  <39.125435, 36.556961, 36.161121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275570, 36.193554, 36.087669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236949, 0.285585, -0.928599,
		0.896089, 0.305028, 0.322463,
		0.375339, -0.908515, -0.183633,
		39.388172, 35.920998, 36.032578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554848, 36.688263, 35.692181>,  <39.125435, 36.556961, 36.161121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554848, 36.688263, 35.692181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.572052, 36.288883, 35.678082>,  <39.582375, 36.049255, 35.669624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.572052, 36.288883, 35.678082>,  <39.554848, 36.688263, 35.692181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572052, 36.288883, 35.678082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149845, 0.041324, -0.987846,
		0.987774, 0.037207, 0.151391,
		0.043011, -0.998453, -0.035243,
		39.584953, 35.989346, 35.667507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160809, 36.473717, 35.339703>,  <39.554848, 36.688263, 35.692181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160809, 36.473717, 35.339703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889030, 36.186302, 35.280296>,  <39.725964, 36.013855, 35.244652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889030, 36.186302, 35.280296>,  <40.160809, 36.473717, 35.339703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889030, 36.186302, 35.280296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143648, 0.068227, -0.987274,
		0.719527, -0.692133, 0.056859,
		-0.679446, -0.718538, -0.148515,
		39.685196, 35.970741, 35.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449741, 36.028404, 34.893150>,  <40.160809, 36.473717, 35.339703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449741, 36.028404, 34.893150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061668, 35.937626, 34.859116>,  <39.828823, 35.883160, 34.838696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061668, 35.937626, 34.859116>,  <40.449741, 36.028404, 34.893150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061668, 35.937626, 34.859116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089023, -0.007150, -0.996004,
		0.225434, -0.973880, 0.027141,
		-0.970183, -0.226950, -0.085086,
		39.770615, 35.869541, 34.833591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415462, 35.440720, 34.498863>,  <40.449741, 36.028404, 34.893150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415462, 35.440720, 34.498863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047157, 35.586308, 34.442707>,  <39.826172, 35.673660, 34.409012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047157, 35.586308, 34.442707>,  <40.415462, 35.440720, 34.498863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047157, 35.586308, 34.442707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164280, 0.035348, -0.985780,
		-0.353836, -0.930738, -0.092341,
		-0.920767, 0.363974, -0.140394,
		39.770927, 35.695499, 34.400589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 34.943054, 34.110840>,  <40.415462, 35.440720, 34.498863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106110, 34.943054, 34.110840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876747, 35.266193, 34.056301>,  <39.739128, 35.460075, 34.023579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876747, 35.266193, 34.056301>,  <40.106110, 34.943054, 34.110840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876747, 35.266193, 34.056301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063679, -0.121971, -0.990489,
		-0.816793, -0.576634, 0.018497,
		-0.573406, 0.807847, -0.136345,
		39.704727, 35.508549, 34.015396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746185, 34.741554, 33.627197>,  <40.106110, 34.943054, 34.110840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746185, 34.741554, 33.627197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694511, 35.138138, 33.620010>,  <39.663506, 35.376087, 33.615700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.694511, 35.138138, 33.620010>,  <39.746185, 34.741554, 33.627197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694511, 35.138138, 33.620010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138175, 0.000055, -0.990408,
		-0.981947, -0.130428, -0.137001,
		-0.129184, 0.991458, -0.017968,
		39.655758, 35.435574, 33.614620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103466, 34.821995, 33.210804>,  <39.746185, 34.741554, 33.627197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103466, 34.821995, 33.210804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351437, 35.135735, 33.219654>,  <39.500221, 35.323978, 33.224964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351437, 35.135735, 33.219654>,  <39.103466, 34.821995, 33.210804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351437, 35.135735, 33.219654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070375, -0.027490, -0.997142,
		-0.781495, 0.619715, -0.072240,
		0.619930, 0.784345, 0.022129,
		39.537415, 35.371037, 33.226292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008053, 35.202412, 32.562935>,  <39.103466, 34.821995, 33.210804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008053, 35.202412, 32.562935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340076, 35.397606, 32.670914>,  <39.539291, 35.514721, 32.735699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.340076, 35.397606, 32.670914>,  <39.008053, 35.202412, 32.562935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340076, 35.397606, 32.670914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339506, -0.058175, -0.938803,
		-0.442416, 0.870912, -0.213962,
		0.830062, 0.487983, 0.269943,
		39.589096, 35.544003, 32.751896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115490, 35.787315, 32.100433>,  <39.008053, 35.202412, 32.562935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115490, 35.787315, 32.100433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478928, 35.717110, 32.252041>,  <39.696991, 35.674988, 32.343006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478928, 35.717110, 32.252041>,  <39.115490, 35.787315, 32.100433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478928, 35.717110, 32.252041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379237, -0.033639, -0.924688,
		0.175046, 0.983902, 0.035997,
		0.908591, -0.175514, 0.379020,
		39.751507, 35.664455, 32.365746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703407, 36.459507, 31.886627>,  <39.115490, 35.787315, 32.100433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703407, 36.459507, 31.886627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492943, 36.472569, 31.546724>,  <38.366665, 36.480404, 31.342783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492943, 36.472569, 31.546724>,  <38.703407, 36.459507, 31.886627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492943, 36.472569, 31.546724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826033, -0.257053, 0.501590,
		-0.202054, 0.965846, 0.162224,
		-0.526159, 0.032654, -0.849759,
		38.335094, 36.482365, 31.291796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253407, 36.936375, 31.954624>,  <38.703407, 36.459507, 31.886627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253407, 36.936375, 31.954624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092690, 36.714260, 31.663361>,  <37.996258, 36.580990, 31.488602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.092690, 36.714260, 31.663361>,  <38.253407, 36.936375, 31.954624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092690, 36.714260, 31.663361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796668, -0.180120, 0.576955,
		-0.451531, 0.811921, -0.370007,
		-0.401796, -0.555285, -0.728161,
		37.972149, 36.547676, 31.444912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525146, 37.066727, 32.037617>,  <38.253407, 36.936375, 31.954624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525146, 37.066727, 32.037617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531693, 36.737831, 31.810055>,  <37.535622, 36.540493, 31.673517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.531693, 36.737831, 31.810055>,  <37.525146, 37.066727, 32.037617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531693, 36.737831, 31.810055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772980, -0.371313, 0.514420,
		-0.634219, 0.431332, -0.641654,
		0.016369, -0.822241, -0.568904,
		37.536602, 36.491158, 31.639383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813869, 36.848885, 31.985245>,  <37.525146, 37.066727, 32.037617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813869, 36.848885, 31.985245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994473, 36.519619, 31.847527>,  <37.102833, 36.322060, 31.764894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994473, 36.519619, 31.847527>,  <36.813869, 36.848885, 31.985245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994473, 36.519619, 31.847527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644429, -0.567721, 0.512253,
		-0.617135, -0.009408, -0.786801,
		0.451502, -0.823167, -0.344298,
		37.129925, 36.272667, 31.744238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270782, 36.397697, 31.694485>,  <36.813869, 36.848885, 31.985245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270782, 36.397697, 31.694485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578407, 36.177113, 31.823748>,  <36.762981, 36.044762, 31.901306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.578407, 36.177113, 31.823748>,  <36.270782, 36.397697, 31.694485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578407, 36.177113, 31.823748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634312, -0.596229, 0.492097,
		-0.078700, -0.583435, -0.808338,
		0.769060, -0.551466, 0.323157,
		36.809124, 36.011673, 31.920694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897316, 35.863659, 31.930256>,  <36.270782, 36.397697, 31.694485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897316, 35.863659, 31.930256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264206, 35.792542, 32.072857>,  <36.484341, 35.749870, 32.158417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264206, 35.792542, 32.072857>,  <35.897316, 35.863659, 31.930256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264206, 35.792542, 32.072857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392229, -0.559673, 0.730015,
		0.069732, -0.809416, -0.583080,
		0.917221, -0.177796, 0.356504,
		36.539371, 35.739204, 32.179810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988873, 35.135017, 32.014568>,  <35.897316, 35.863659, 31.930256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988873, 35.135017, 32.014568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262508, 35.297291, 32.257038>,  <36.426689, 35.394653, 32.402519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.262508, 35.297291, 32.257038>,  <35.988873, 35.135017, 32.014568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262508, 35.297291, 32.257038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296235, -0.604903, 0.739146,
		0.666531, -0.685213, -0.293632,
		0.684092, 0.405679, 0.606171,
		36.467735, 35.418995, 32.438889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402489, 34.547905, 32.330582>,  <35.988873, 35.135017, 32.014568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402489, 34.547905, 32.330582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390972, 34.881229, 32.551403>,  <36.384060, 35.081226, 32.683895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.390972, 34.881229, 32.551403>,  <36.402489, 34.547905, 32.330582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390972, 34.881229, 32.551403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497669, -0.490916, 0.715071,
		0.866889, -0.254147, 0.428851,
		-0.028796, 0.833313, 0.552051,
		36.382332, 35.131222, 32.717018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410042, 34.308376, 32.974743>,  <36.402489, 34.547905, 32.330582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410042, 34.308376, 32.974743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303589, 34.691391, 33.019100>,  <36.239719, 34.921200, 33.045715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303589, 34.691391, 33.019100>,  <36.410042, 34.308376, 32.974743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303589, 34.691391, 33.019100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501601, -0.235809, 0.832340,
		0.823147, 0.165885, 0.543058,
		-0.266130, 0.957537, 0.110897,
		36.223751, 34.978653, 33.052368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635586, 34.488152, 33.700142>,  <36.410042, 34.308376, 32.974743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635586, 34.488152, 33.700142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357269, 34.743378, 33.568237>,  <36.190277, 34.896515, 33.489094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357269, 34.743378, 33.568237>,  <36.635586, 34.488152, 33.700142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357269, 34.743378, 33.568237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500241, -0.101054, 0.859969,
		0.515394, 0.763321, 0.389499,
		-0.695793, 0.638066, -0.329762,
		36.148533, 34.934799, 33.469307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468376, 34.687801, 34.380791>,  <36.635586, 34.488152, 33.700142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468376, 34.687801, 34.380791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178818, 34.801968, 34.129551>,  <36.005081, 34.870468, 33.978806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.178818, 34.801968, 34.129551>,  <36.468376, 34.687801, 34.380791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178818, 34.801968, 34.129551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685536, -0.195236, 0.701373,
		0.077556, 0.938307, 0.336995,
		-0.723896, 0.285418, -0.628101,
		35.961647, 34.887592, 33.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899845, 34.938900, 34.727127>,  <36.468376, 34.687801, 34.380791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899845, 34.938900, 34.727127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708660, 34.883797, 34.380123>,  <35.593948, 34.850735, 34.171921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.708660, 34.883797, 34.380123>,  <35.899845, 34.938900, 34.727127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708660, 34.883797, 34.380123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761174, -0.427924, 0.487334,
		-0.438362, 0.893255, 0.099675,
		-0.477967, -0.137759, -0.867508,
		35.565269, 34.842468, 34.119869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.963360, 37.680111, 28.695877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686272, 37.486694, 28.481838>,  <40.520020, 37.370644, 28.353415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686272, 37.486694, 28.481838>,  <40.963360, 37.680111, 28.695877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686272, 37.486694, 28.481838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565413, -0.096482, 0.819145,
		-0.447718, 0.869988, -0.206566,
		-0.692717, -0.483541, -0.535100,
		40.478458, 37.341633, 28.321308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313488, 38.019768, 28.696735>,  <40.963360, 37.680111, 28.695877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313488, 38.019768, 28.696735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232235, 37.631058, 28.648743>,  <40.183483, 37.397831, 28.619947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232235, 37.631058, 28.648743>,  <40.313488, 38.019768, 28.696735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232235, 37.631058, 28.648743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716591, 0.064040, 0.694547,
		-0.667258, 0.227066, -0.709372,
		-0.203136, -0.971772, -0.119982,
		40.171295, 37.339527, 28.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554302, 38.000877, 28.852163>,  <40.313488, 38.019768, 28.696735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554302, 38.000877, 28.852163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707809, 37.631859, 28.868326>,  <39.799915, 37.410450, 28.878023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707809, 37.631859, 28.868326>,  <39.554302, 38.000877, 28.852163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707809, 37.631859, 28.868326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652785, -0.240084, 0.718493,
		-0.653141, -0.302112, -0.694360,
		0.383770, -0.922544, 0.040405,
		39.822941, 37.355095, 28.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001656, 37.498970, 28.732597>,  <39.554302, 38.000877, 28.852163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001656, 37.498970, 28.732597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280960, 37.285007, 28.922886>,  <39.448544, 37.156631, 29.037058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280960, 37.285007, 28.922886>,  <39.001656, 37.498970, 28.732597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280960, 37.285007, 28.922886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692544, -0.336612, 0.638025,
		-0.181148, -0.774965, -0.605487,
		0.698261, -0.534903, 0.475721,
		39.490437, 37.124535, 29.065601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709999, 36.924824, 28.989468>,  <39.001656, 37.498970, 28.732597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709999, 36.924824, 28.989468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049488, 36.889835, 29.198088>,  <39.253181, 36.868843, 29.323259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049488, 36.889835, 29.198088>,  <38.709999, 36.924824, 28.989468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049488, 36.889835, 29.198088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499535, -0.456328, 0.736362,
		0.173586, -0.885502, -0.430993,
		0.848724, -0.087474, 0.521551,
		39.304104, 36.863594, 29.354553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717178, 36.191120, 29.330017>,  <38.709999, 36.924824, 28.989468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717178, 36.191120, 29.330017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974232, 36.421856, 29.531721>,  <39.128464, 36.560295, 29.652742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974232, 36.421856, 29.531721>,  <38.717178, 36.191120, 29.330017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974232, 36.421856, 29.531721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444316, -0.255601, 0.858634,
		0.624181, -0.775839, 0.092039,
		0.642637, 0.576838, 0.504259,
		39.167023, 36.594906, 29.682999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962551, 35.830502, 29.850531>,  <38.717178, 36.191120, 29.330017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962551, 35.830502, 29.850531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032551, 36.193623, 30.002987>,  <39.074551, 36.411495, 30.094460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032551, 36.193623, 30.002987>,  <38.962551, 35.830502, 29.850531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032551, 36.193623, 30.002987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470373, -0.262994, 0.842368,
		0.864943, -0.326689, 0.380983,
		0.174996, 0.907804, 0.381140,
		39.085049, 36.465965, 30.117329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183609, 35.646961, 30.593555>,  <38.962551, 35.830502, 29.850531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183609, 35.646961, 30.593555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058601, 36.026585, 30.577463>,  <38.983597, 36.254360, 30.567808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058601, 36.026585, 30.577463>,  <39.183609, 35.646961, 30.593555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058601, 36.026585, 30.577463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564595, -0.151525, 0.811340,
		0.763913, 0.276275, 0.583188,
		-0.312521, 0.949058, -0.040231,
		38.964844, 36.311302, 30.565393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042706, 35.923389, 31.321796>,  <39.183609, 35.646961, 30.593555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042706, 35.923389, 31.321796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834030, 36.168304, 31.084160>,  <38.708824, 36.315254, 30.941578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834030, 36.168304, 31.084160>,  <39.042706, 35.923389, 31.321796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834030, 36.168304, 31.084160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724211, 0.050254, 0.687745,
		0.450953, 0.789037, 0.417208,
		-0.521689, 0.612287, -0.594092,
		38.677525, 36.351990, 30.905931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589199, 36.227470, 31.653944>,  <39.042706, 35.923389, 31.321796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589199, 36.227470, 31.653944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823738, 35.956020, 31.830879>,  <39.964462, 35.793152, 31.937040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823738, 35.956020, 31.830879>,  <39.589199, 36.227470, 31.653944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823738, 35.956020, 31.830879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514358, -0.109950, -0.850498,
		0.625802, 0.726212, 0.284585,
		0.586351, -0.678622, 0.442340,
		39.999645, 35.752434, 31.963581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360023, 36.410156, 31.579460>,  <39.589199, 36.227470, 31.653944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360023, 36.410156, 31.579460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409328, 36.020645, 31.655952>,  <40.438911, 35.786938, 31.701847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409328, 36.020645, 31.655952>,  <40.360023, 36.410156, 31.579460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409328, 36.020645, 31.655952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515484, -0.101832, -0.850827,
		0.847987, 0.203454, 0.489413,
		0.123266, -0.973774, 0.191229,
		40.446308, 35.728512, 31.713322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159729, 36.215775, 31.645987>,  <40.360023, 36.410156, 31.579460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159729, 36.215775, 31.645987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957100, 35.880543, 31.564976>,  <40.835522, 35.679405, 31.516369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957100, 35.880543, 31.564976>,  <41.159729, 36.215775, 31.645987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957100, 35.880543, 31.564976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539143, -0.124594, -0.832948,
		0.672839, -0.531138, 0.514957,
		-0.506570, -0.838075, -0.202527,
		40.805130, 35.629120, 31.504217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584328, 35.719337, 31.726528>,  <41.159729, 36.215775, 31.645987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584328, 35.719337, 31.726528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304890, 35.566601, 31.484484>,  <41.137226, 35.474960, 31.339256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304890, 35.566601, 31.484484>,  <41.584328, 35.719337, 31.726528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304890, 35.566601, 31.484484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691346, -0.142258, -0.708381,
		0.184406, -0.913214, 0.363365,
		-0.698595, -0.381841, -0.605113,
		41.095310, 35.452049, 31.302950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862099, 35.276615, 31.370537>,  <41.584328, 35.719337, 31.726528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862099, 35.276615, 31.370537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531837, 35.313938, 31.147974>,  <41.333679, 35.336334, 31.014437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531837, 35.313938, 31.147974>,  <41.862099, 35.276615, 31.370537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531837, 35.313938, 31.147974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530056, -0.209481, -0.821680,
		-0.193229, -0.973350, 0.123499,
		-0.825653, 0.093311, -0.556408,
		41.284142, 35.341930, 30.981052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918129, 34.654655, 31.111696>,  <41.862099, 35.276615, 31.370537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918129, 34.654655, 31.111696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714695, 34.917320, 30.888935>,  <41.592636, 35.074921, 30.755278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714695, 34.917320, 30.888935>,  <41.918129, 34.654655, 31.111696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714695, 34.917320, 30.888935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585917, -0.209995, -0.782690,
		-0.630910, -0.724360, -0.277950,
		-0.508581, 0.656662, -0.556903,
		41.562122, 35.114319, 30.721865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731693, 34.288746, 30.484558>,  <41.918129, 34.654655, 31.111696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731693, 34.288746, 30.484558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691364, 34.675793, 30.391991>,  <41.667168, 34.908020, 30.336451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691364, 34.675793, 30.391991>,  <41.731693, 34.288746, 30.484558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691364, 34.675793, 30.391991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396053, -0.174345, -0.901524,
		-0.912676, -0.182544, -0.365650,
		-0.100818, 0.967616, -0.231418,
		41.661118, 34.966076, 30.322565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425392, 34.321011, 29.820084>,  <41.731693, 34.288746, 30.484558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425392, 34.321011, 29.820084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620449, 34.663895, 29.886282>,  <41.737484, 34.869625, 29.926001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620449, 34.663895, 29.886282>,  <41.425392, 34.321011, 29.820084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620449, 34.663895, 29.886282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348163, -0.017109, -0.937278,
		-0.800615, 0.514678, -0.306793,
		0.487645, 0.857213, 0.165494,
		41.766743, 34.921059, 29.935930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333721, 34.625595, 29.076265>,  <41.425392, 34.321011, 29.820084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333721, 34.625595, 29.076265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598427, 34.868160, 29.252602>,  <41.757248, 35.013699, 29.358404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598427, 34.868160, 29.252602>,  <41.333721, 34.625595, 29.076265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598427, 34.868160, 29.252602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479340, 0.109895, -0.870722,
		-0.576460, 0.787522, -0.217952,
		0.661761, 0.606409, 0.440840,
		41.796955, 35.050083, 29.384853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454823, 35.267128, 28.656502>,  <41.333721, 34.625595, 29.076265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454823, 35.267128, 28.656502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784298, 35.249508, 28.882635>,  <41.981983, 35.238934, 29.018314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784298, 35.249508, 28.882635>,  <41.454823, 35.267128, 28.656502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784298, 35.249508, 28.882635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534650, 0.392499, -0.748395,
		-0.188924, 0.918697, 0.346848,
		0.823685, -0.044052, 0.565334,
		42.031403, 35.236294, 29.052235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758892, 35.826889, 28.518387>,  <41.454823, 35.267128, 28.656502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758892, 35.826889, 28.518387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052814, 35.604515, 28.673824>,  <42.229168, 35.471092, 28.767086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052814, 35.604515, 28.673824>,  <41.758892, 35.826889, 28.518387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052814, 35.604515, 28.673824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616199, 0.307689, -0.725000,
		0.283485, 0.772183, 0.568656,
		0.734803, -0.555932, 0.388594,
		42.273254, 35.437737, 28.790403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420845, 36.279377, 28.548433>,  <41.758892, 35.826889, 28.518387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420845, 36.279377, 28.548433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520462, 35.892723, 28.524473>,  <42.580231, 35.660728, 28.510098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520462, 35.892723, 28.524473>,  <42.420845, 36.279377, 28.548433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520462, 35.892723, 28.524473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772793, 0.235616, -0.589301,
		0.583755, 0.100468, 0.805690,
		0.249039, -0.966639, -0.059900,
		42.595173, 35.602730, 28.506502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178429, 36.309299, 28.587732>,  <42.420845, 36.279377, 28.548433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178429, 36.309299, 28.587732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080627, 35.950478, 28.440485>,  <43.021946, 35.735184, 28.352137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080627, 35.950478, 28.440485>,  <43.178429, 36.309299, 28.587732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080627, 35.950478, 28.440485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782820, 0.041416, -0.620869,
		0.572200, -0.439972, 0.692107,
		-0.244500, -0.897056, -0.368117,
		43.007278, 35.681362, 28.330050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804554, 36.021904, 28.655144>,  <43.178429, 36.309299, 28.587732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804554, 36.021904, 28.655144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588142, 35.810532, 28.393442>,  <43.458298, 35.683708, 28.236422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588142, 35.810532, 28.393442>,  <43.804554, 36.021904, 28.655144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588142, 35.810532, 28.393442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800194, -0.084051, -0.593822,
		0.258806, -0.844802, 0.468325,
		-0.541026, -0.528435, -0.654253,
		43.425835, 35.652000, 28.197166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.224976, 31.954754, 25.515774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.379814, 32.299343, 25.647242>,  <40.472717, 32.506096, 25.726122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.379814, 32.299343, 25.647242>,  <40.224976, 31.954754, 25.515774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379814, 32.299343, 25.647242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590802, -0.041927, 0.805727,
		0.707891, -0.506071, 0.492730,
		0.387096, 0.861473, 0.328668,
		40.495941, 32.557785, 25.745842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475945, 31.861229, 26.224325>,  <40.224976, 31.954754, 25.515774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475945, 31.861229, 26.224325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.432186, 32.257992, 26.198551>,  <40.405930, 32.496048, 26.183086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.432186, 32.257992, 26.198551>,  <40.475945, 31.861229, 26.224325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432186, 32.257992, 26.198551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577845, -0.010716, 0.816076,
		0.808782, 0.126511, 0.574341,
		-0.109397, 0.991907, -0.064436,
		40.399368, 32.555565, 26.179220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582901, 32.044605, 26.915537>,  <40.475945, 31.861229, 26.224325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582901, 32.044605, 26.915537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.370819, 32.325390, 26.725323>,  <40.243568, 32.493858, 26.611195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.370819, 32.325390, 26.725323>,  <40.582901, 32.044605, 26.915537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370819, 32.325390, 26.725323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530706, 0.162640, 0.831805,
		0.661234, 0.693398, 0.286301,
		-0.530208, 0.701960, -0.475533,
		40.211758, 32.535976, 26.582663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510265, 32.594238, 27.354101>,  <40.582901, 32.044605, 26.915537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510265, 32.594238, 27.354101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207451, 32.631805, 27.095467>,  <40.025761, 32.654346, 26.940287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207451, 32.631805, 27.095467>,  <40.510265, 32.594238, 27.354101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207451, 32.631805, 27.095467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607912, 0.261426, 0.749733,
		0.239449, 0.960643, -0.140814,
		-0.757038, 0.093920, -0.646585,
		39.980339, 32.659981, 26.901491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078316, 32.935677, 27.821575>,  <40.510265, 32.594238, 27.354101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078316, 32.935677, 27.821575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861629, 32.828350, 27.502941>,  <39.731617, 32.763954, 27.311760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861629, 32.828350, 27.502941>,  <40.078316, 32.935677, 27.821575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861629, 32.828350, 27.502941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840166, 0.201907, 0.503343,
		0.025779, 0.941933, -0.334810,
		-0.541716, -0.268320, -0.796585,
		39.699116, 32.747852, 27.263966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489841, 33.447552, 27.708704>,  <40.078316, 32.935677, 27.821575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489841, 33.447552, 27.708704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406868, 33.085857, 27.559399>,  <39.357082, 32.868839, 27.469814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406868, 33.085857, 27.559399>,  <39.489841, 33.447552, 27.708704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406868, 33.085857, 27.559399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847008, -0.024888, 0.530997,
		-0.489437, 0.426306, -0.760733,
		-0.207434, -0.904237, -0.373265,
		39.344639, 32.814587, 27.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809803, 33.551033, 27.656399>,  <39.489841, 33.447552, 27.708704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809803, 33.551033, 27.656399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890976, 33.159752, 27.638790>,  <38.939678, 32.924984, 27.628225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.890976, 33.159752, 27.638790>,  <38.809803, 33.551033, 27.656399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890976, 33.159752, 27.638790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815555, -0.193729, 0.545288,
		-0.541931, -0.074752, -0.837092,
		0.202930, -0.978203, -0.044023,
		38.951855, 32.866291, 27.625584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131386, 33.321907, 27.663385>,  <38.809803, 33.551033, 27.656399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131386, 33.321907, 27.663385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360035, 33.018085, 27.787525>,  <38.497227, 32.835793, 27.862009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360035, 33.018085, 27.787525>,  <38.131386, 33.321907, 27.663385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360035, 33.018085, 27.787525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696376, -0.249069, 0.673071,
		-0.433938, -0.600864, -0.671312,
		0.571627, -0.759557, 0.310347,
		38.531525, 32.790218, 27.880629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700294, 32.874237, 27.904766>,  <38.131386, 33.321907, 27.663385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700294, 32.874237, 27.904766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.036552, 32.752342, 28.083853>,  <38.238308, 32.679207, 28.191305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.036552, 32.752342, 28.083853>,  <37.700294, 32.874237, 27.904766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036552, 32.752342, 28.083853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524821, -0.254273, 0.812348,
		-0.133711, -0.917867, -0.373686,
		0.840645, -0.304737, 0.447717,
		38.288746, 32.660919, 28.218168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488781, 32.278332, 28.135811>,  <37.700294, 32.874237, 27.904766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488781, 32.278332, 28.135811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800495, 32.381294, 28.364355>,  <37.987526, 32.443069, 28.501482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800495, 32.381294, 28.364355>,  <37.488781, 32.278332, 28.135811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800495, 32.381294, 28.364355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428118, -0.447139, 0.785354,
		0.457631, -0.856628, -0.238251,
		0.779288, 0.257403, 0.571363,
		38.034283, 32.458515, 28.535765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518414, 31.749537, 28.577480>,  <37.488781, 32.278332, 28.135811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518414, 31.749537, 28.577480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.747040, 32.025776, 28.754742>,  <37.884216, 32.191521, 28.861099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.747040, 32.025776, 28.754742>,  <37.518414, 31.749537, 28.577480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747040, 32.025776, 28.754742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256435, -0.362683, 0.895936,
		0.779457, -0.625727, -0.030204,
		0.571566, 0.690599, 0.443154,
		37.918510, 32.232956, 28.887688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840485, 31.431656, 29.058640>,  <37.518414, 31.749537, 28.577480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840485, 31.431656, 29.058640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833527, 31.816370, 29.167940>,  <37.829350, 32.047199, 29.233521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.833527, 31.816370, 29.167940>,  <37.840485, 31.431656, 29.058640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833527, 31.816370, 29.167940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298153, -0.265851, 0.916748,
		0.954359, -0.065521, 0.291385,
		-0.017398, 0.961785, 0.273253,
		37.828308, 32.104904, 29.249916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277508, 31.370977, 29.650639>,  <37.840485, 31.431656, 29.058640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277508, 31.370977, 29.650639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075638, 31.715384, 29.675816>,  <37.954517, 31.922028, 29.690922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075638, 31.715384, 29.675816>,  <38.277508, 31.370977, 29.650639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075638, 31.715384, 29.675816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232265, -0.205636, 0.950667,
		0.831481, 0.465154, 0.303762,
		-0.504671, 0.861014, 0.062943,
		37.924236, 31.973688, 29.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442230, 31.683773, 30.348949>,  <38.277508, 31.370977, 29.650639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442230, 31.683773, 30.348949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081554, 31.825777, 30.250223>,  <37.865147, 31.910978, 30.190989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081554, 31.825777, 30.250223>,  <38.442230, 31.683773, 30.348949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081554, 31.825777, 30.250223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294527, -0.086404, 0.951729,
		0.316545, 0.930862, 0.182470,
		-0.901694, 0.355008, -0.246814,
		37.811047, 31.932280, 30.176180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911434, 32.196480, 30.463816>,  <38.442230, 31.683773, 30.348949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911434, 32.196480, 30.463816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168892, 32.067730, 30.741552>,  <39.323368, 31.990480, 30.908195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168892, 32.067730, 30.741552>,  <38.911434, 32.196480, 30.463816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168892, 32.067730, 30.741552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717827, -0.060725, -0.693568,
		0.265405, 0.944833, 0.191965,
		0.643649, -0.321874, 0.694344,
		39.361988, 31.971169, 30.949856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506542, 32.519417, 30.337063>,  <38.911434, 32.196480, 30.463816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506542, 32.519417, 30.337063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628418, 32.198391, 30.542219>,  <39.701542, 32.005775, 30.665312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.628418, 32.198391, 30.542219>,  <39.506542, 32.519417, 30.337063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628418, 32.198391, 30.542219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776552, -0.102469, -0.621665,
		0.551481, 0.587701, 0.592010,
		0.304691, -0.802563, 0.512890,
		39.719826, 31.957623, 30.696087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317665, 32.613064, 30.384396>,  <39.506542, 32.519417, 30.337063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317665, 32.613064, 30.384396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.210815, 32.229782, 30.425364>,  <40.146706, 31.999813, 30.449944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.210815, 32.229782, 30.425364>,  <40.317665, 32.613064, 30.384396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210815, 32.229782, 30.425364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743294, -0.272511, -0.610944,
		0.613320, -0.087068, 0.785021,
		-0.267121, -0.958205, 0.102419,
		40.130680, 31.942320, 30.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955585, 32.267551, 30.608126>,  <40.317665, 32.613064, 30.384396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955585, 32.267551, 30.608126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705101, 31.992435, 30.461266>,  <40.554810, 31.827366, 30.373150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.705101, 31.992435, 30.461266>,  <40.955585, 32.267551, 30.608126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705101, 31.992435, 30.461266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763808, -0.446757, -0.465839,
		0.156371, -0.572149, 0.805105,
		-0.626216, -0.687789, -0.367151,
		40.517235, 31.786098, 30.351120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433468, 31.766304, 30.568167>,  <40.955585, 32.267551, 30.608126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433468, 31.766304, 30.568167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124973, 31.679451, 30.328817>,  <40.939877, 31.627338, 30.185207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124973, 31.679451, 30.328817>,  <41.433468, 31.766304, 30.568167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124973, 31.679451, 30.328817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625119, -0.435714, -0.647595,
		-0.120106, -0.873502, 0.471771,
		-0.771233, -0.217133, -0.598375,
		40.893604, 31.614311, 30.149305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660828, 31.118319, 30.237869>,  <41.433468, 31.766304, 30.568167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660828, 31.118319, 30.237869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368690, 31.273483, 30.012968>,  <41.193409, 31.366581, 29.878027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368690, 31.273483, 30.012968>,  <41.660828, 31.118319, 30.237869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368690, 31.273483, 30.012968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549032, -0.156364, -0.821045,
		-0.406407, -0.908337, -0.098777,
		-0.730340, 0.387910, -0.562253,
		41.149590, 31.389856, 29.844292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530788, 30.609932, 29.750332>,  <41.660828, 31.118319, 30.237869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530788, 30.609932, 29.750332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.408733, 30.954493, 29.587910>,  <41.335499, 31.161228, 29.490458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.408733, 30.954493, 29.587910>,  <41.530788, 30.609932, 29.750332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408733, 30.954493, 29.587910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523484, -0.204466, -0.827138,
		-0.795522, -0.464954, -0.388539,
		-0.305138, 0.861401, -0.406053,
		41.317192, 31.212914, 29.466093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326782, 30.483541, 29.099958>,  <41.530788, 30.609932, 29.750332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326782, 30.483541, 29.099958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.336063, 30.882002, 29.066149>,  <41.341633, 31.121078, 29.045862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.336063, 30.882002, 29.066149>,  <41.326782, 30.483541, 29.099958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336063, 30.882002, 29.066149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307974, -0.087558, -0.947357,
		-0.951112, -0.004047, -0.308820,
		0.023206, 0.996151, -0.084524,
		41.343025, 31.180847, 29.040791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013229, 30.614700, 28.427435>,  <41.326782, 30.483541, 29.099958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013229, 30.614700, 28.427435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.225567, 30.938803, 28.526783>,  <41.352970, 31.133265, 28.586391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.225567, 30.938803, 28.526783>,  <41.013229, 30.614700, 28.427435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225567, 30.938803, 28.526783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552261, -0.108441, -0.826588,
		-0.642814, 0.575958, -0.505038,
		0.530847, 0.810255, 0.248371,
		41.384819, 31.181879, 28.601294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811699, 31.168484, 27.939163>,  <41.013229, 30.614700, 28.427435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811699, 31.168484, 27.939163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173901, 31.204903, 28.104948>,  <41.391220, 31.226755, 28.204418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173901, 31.204903, 28.104948>,  <40.811699, 31.168484, 27.939163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173901, 31.204903, 28.104948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406217, 0.096441, -0.908673,
		-0.122704, 0.991166, 0.050342,
		0.905501, 0.091049, 0.414462,
		41.445549, 31.232218, 28.229286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145172, 31.685329, 27.619690>,  <40.811699, 31.168484, 27.939163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145172, 31.685329, 27.619690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.463062, 31.519236, 27.796774>,  <41.653797, 31.419579, 27.903025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.463062, 31.519236, 27.796774>,  <41.145172, 31.685329, 27.619690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463062, 31.519236, 27.796774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553239, 0.195525, -0.809751,
		0.249676, 0.888454, 0.385113,
		0.794725, -0.415235, 0.442710,
		41.701481, 31.394665, 27.929586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683620, 32.088608, 27.492685>,  <41.145172, 31.685329, 27.619690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683620, 32.088608, 27.492685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.887112, 31.756277, 27.582949>,  <42.009205, 31.556879, 27.637106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.887112, 31.756277, 27.582949>,  <41.683620, 32.088608, 27.492685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887112, 31.756277, 27.582949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555713, 0.116700, -0.823143,
		0.657555, 0.544158, 0.521070,
		0.508728, -0.830827, 0.225659,
		42.039730, 31.507029, 27.650646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383007, 32.333607, 27.374615>,  <41.683620, 32.088608, 27.492685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383007, 32.333607, 27.374615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409225, 31.935114, 27.397360>,  <42.424957, 31.696018, 27.411007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.409225, 31.935114, 27.397360>,  <42.383007, 32.333607, 27.374615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409225, 31.935114, 27.397360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674445, 0.002230, -0.738322,
		0.735410, 0.086743, 0.672047,
		0.065543, -0.996228, 0.056863,
		42.428886, 31.636246, 27.414419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093418, 32.164501, 27.439327>,  <42.383007, 32.333607, 27.374615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093418, 32.164501, 27.439327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.929752, 31.840229, 27.271814>,  <42.831551, 31.645666, 27.171307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.929752, 31.840229, 27.271814>,  <43.093418, 32.164501, 27.439327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929752, 31.840229, 27.271814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697180, 0.018332, -0.716662,
		0.588661, -0.585201, 0.557690,
		-0.409168, -0.810681, -0.418781,
		42.807003, 31.597025, 27.146179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779877, 31.864416, 27.768579>,  <43.093418, 32.164501, 27.439327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779877, 31.864416, 27.768579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.142670, 31.944769, 27.916647>,  <44.360348, 31.992981, 28.005487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.142670, 31.944769, 27.916647>,  <43.779877, 31.864416, 27.768579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142670, 31.944769, 27.916647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359857, -0.087010, 0.928941,
		0.218818, -0.975743, -0.006627,
		0.906985, 0.200884, 0.370168,
		44.414764, 32.005032, 28.027697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799603, 31.466312, 28.372711>,  <43.779877, 31.864416, 27.768579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799603, 31.466312, 28.372711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.078651, 31.747976, 28.425604>,  <44.246078, 31.916975, 28.457338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.078651, 31.747976, 28.425604>,  <43.799603, 31.466312, 28.372711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078651, 31.747976, 28.425604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169274, -0.017345, 0.985416,
		0.696186, -0.709827, 0.107096,
		0.697618, 0.704162, 0.132230,
		44.287937, 31.959225, 28.465273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129581, 31.297825, 29.108706>,  <43.799603, 31.466312, 28.372711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129581, 31.297825, 29.108706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.207619, 31.682430, 29.031315>,  <44.254440, 31.913193, 28.984880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.207619, 31.682430, 29.031315>,  <44.129581, 31.297825, 29.108706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207619, 31.682430, 29.031315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262838, 0.241307, 0.934177,
		0.944909, -0.131403, 0.299800,
		0.195097, 0.961512, -0.193475,
		44.266148, 31.970884, 28.973272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456570, 31.560715, 29.676693>,  <44.129581, 31.297825, 29.108706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456570, 31.560715, 29.676693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.337471, 31.901623, 29.504656>,  <44.266014, 32.106167, 29.401434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.337471, 31.901623, 29.504656>,  <44.456570, 31.560715, 29.676693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337471, 31.901623, 29.504656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281591, 0.352073, 0.892609,
		0.912170, 0.386880, 0.135165,
		-0.297744, 0.852272, -0.430093,
		44.248146, 32.157303, 29.375628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749653, 31.973631, 30.028690>,  <44.456570, 31.560715, 29.676693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749653, 31.973631, 30.028690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.463825, 32.189236, 29.850319>,  <44.292328, 32.318600, 29.743296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.463825, 32.189236, 29.850319>,  <44.749653, 31.973631, 30.028690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463825, 32.189236, 29.850319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297966, 0.342219, 0.891124,
		0.632934, 0.769643, -0.083932,
		-0.714571, 0.539014, -0.445930,
		44.249454, 32.350941, 29.716539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831318, 32.591045, 30.421301>,  <44.749653, 31.973631, 30.028690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831318, 32.591045, 30.421301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.487934, 32.611267, 30.217148>,  <44.281902, 32.623402, 30.094656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.487934, 32.611267, 30.217148>,  <44.831318, 32.591045, 30.421301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487934, 32.611267, 30.217148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435737, 0.452985, 0.777777,
		0.270518, 0.890083, -0.366840,
		-0.858460, 0.050557, -0.510383,
		44.230396, 32.626434, 30.064034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537018, 33.248123, 30.670797>,  <44.831318, 32.591045, 30.421301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537018, 33.248123, 30.670797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.249012, 33.005192, 30.536495>,  <44.076210, 32.859432, 30.455914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.249012, 33.005192, 30.536495>,  <44.537018, 33.248123, 30.670797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249012, 33.005192, 30.536495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609746, 0.322653, 0.723951,
		-0.331345, 0.725979, -0.602632,
		-0.720014, -0.607330, -0.335753,
		44.033009, 32.822994, 30.435770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934582, 33.628723, 30.734915>,  <44.537018, 33.248123, 30.670797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934582, 33.628723, 30.734915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826385, 33.244270, 30.757071>,  <43.761467, 33.013599, 30.770365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.826385, 33.244270, 30.757071>,  <43.934582, 33.628723, 30.734915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826385, 33.244270, 30.757071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542222, 0.199633, 0.816175,
		-0.795507, 0.190733, -0.575143,
		-0.270489, -0.961128, 0.055389,
		43.745239, 32.955933, 30.773687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229916, 33.607670, 30.834829>,  <43.934582, 33.628723, 30.734915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229916, 33.607670, 30.834829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.369194, 33.252300, 30.954473>,  <43.452759, 33.039078, 31.026260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.369194, 33.252300, 30.954473>,  <43.229916, 33.607670, 30.834829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369194, 33.252300, 30.954473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555760, 0.061315, 0.829079,
		-0.754913, -0.454912, -0.472401,
		0.348192, -0.888424, 0.299109,
		43.473652, 32.985775, 31.044207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656223, 33.246082, 30.949390>,  <43.229916, 33.607670, 30.834829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656223, 33.246082, 30.949390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955925, 33.069447, 31.146820>,  <43.135746, 32.963463, 31.265278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.955925, 33.069447, 31.146820>,  <42.656223, 33.246082, 30.949390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955925, 33.069447, 31.146820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597504, -0.129253, 0.791381,
		-0.285672, -0.887857, -0.360696,
		0.749254, -0.441592, 0.493574,
		43.180702, 32.936970, 31.294891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437897, 32.626762, 31.306461>,  <42.656223, 33.246082, 30.949390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437897, 32.626762, 31.306461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.778881, 32.686287, 31.506926>,  <42.983471, 32.722000, 31.627203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.778881, 32.686287, 31.506926>,  <42.437897, 32.626762, 31.306461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778881, 32.686287, 31.506926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478906, -0.162158, 0.862760,
		0.209653, -0.975480, -0.066970,
		0.852464, 0.148808, 0.501159,
		43.034622, 32.730930, 31.657274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420456, 32.146740, 31.809952>,  <42.437897, 32.626762, 31.306461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420456, 32.146740, 31.809952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.695293, 32.400085, 31.952362>,  <42.860195, 32.552094, 32.037807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.695293, 32.400085, 31.952362>,  <42.420456, 32.146740, 31.809952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695293, 32.400085, 31.952362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498310, 0.054175, 0.865305,
		0.528766, -0.771955, 0.352835,
		0.687091, 0.633365, 0.356027,
		42.901421, 32.590096, 32.059170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568329, 31.946524, 32.493263>,  <42.420456, 32.146740, 31.809952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568329, 31.946524, 32.493263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.669037, 32.332924, 32.469765>,  <42.729462, 32.564766, 32.455666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.669037, 32.332924, 32.469765>,  <42.568329, 31.946524, 32.493263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669037, 32.332924, 32.469765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637301, 0.211171, 0.741117,
		0.728327, -0.149150, 0.668801,
		0.251769, 0.966003, -0.058748,
		42.744568, 32.622726, 32.452141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609146, 32.167992, 33.176830>,  <42.568329, 31.946524, 32.493263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609146, 32.167992, 33.176830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.569374, 32.503384, 32.962517>,  <42.545513, 32.704620, 32.833931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.569374, 32.503384, 32.962517>,  <42.609146, 32.167992, 33.176830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569374, 32.503384, 32.962517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500929, 0.423063, 0.755041,
		0.859758, 0.343460, 0.377957,
		-0.099427, 0.838482, -0.535781,
		42.539547, 32.754929, 32.801781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.208393, 35.314766, 28.506546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.960300, 35.401394, 28.204975>,  <43.811443, 35.453369, 28.024033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.960300, 35.401394, 28.204975>,  <44.208393, 35.314766, 28.506546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960300, 35.401394, 28.204975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740588, -0.155104, -0.653813,
		-0.258533, -0.963868, -0.064188,
		-0.620233, 0.216569, -0.753929,
		43.774231, 35.466366, 27.978796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344940, 34.810692, 28.052912>,  <44.208393, 35.314766, 28.506546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344940, 34.810692, 28.052912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.142078, 35.085564, 27.844841>,  <44.020363, 35.250488, 27.719999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.142078, 35.085564, 27.844841>,  <44.344940, 34.810692, 28.052912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142078, 35.085564, 27.844841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594047, -0.158564, -0.788648,
		-0.624423, -0.708974, -0.327800,
		-0.507153, 0.687178, -0.520175,
		43.989933, 35.291718, 27.688789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038486, 34.379253, 27.497824>,  <44.344940, 34.810692, 28.052912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038486, 34.379253, 27.497824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.999035, 34.752567, 27.359688>,  <43.975365, 34.976555, 27.276806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.999035, 34.752567, 27.359688>,  <44.038486, 34.379253, 27.497824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999035, 34.752567, 27.359688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674138, -0.192606, -0.713050,
		-0.731990, -0.303136, -0.610163,
		-0.098630, 0.933280, -0.345341,
		43.969444, 35.032551, 27.256086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929424, 34.324223, 26.850170>,  <44.038486, 34.379253, 27.497824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929424, 34.324223, 26.850170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091808, 34.684322, 26.913086>,  <44.189240, 34.900383, 26.950834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091808, 34.684322, 26.913086>,  <43.929424, 34.324223, 26.850170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091808, 34.684322, 26.913086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566263, -0.112702, -0.816483,
		-0.717314, 0.420529, -0.555532,
		0.405964, 0.900252, 0.157288,
		44.213596, 34.954399, 26.960272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659115, 34.762897, 26.335983>,  <43.929424, 34.324223, 26.850170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659115, 34.762897, 26.335983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010914, 34.891102, 26.476698>,  <44.221992, 34.968025, 26.561127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010914, 34.891102, 26.476698>,  <43.659115, 34.762897, 26.335983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010914, 34.891102, 26.476698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396876, -0.086045, -0.913830,
		-0.262627, 0.943327, -0.202881,
		0.879498, 0.320515, 0.351786,
		44.274765, 34.987255, 26.582233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802162, 35.316505, 25.883579>,  <43.659115, 34.762897, 26.335983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802162, 35.316505, 25.883579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.158966, 35.255791, 26.053883>,  <44.373051, 35.219360, 26.156065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.158966, 35.255791, 26.053883>,  <43.802162, 35.316505, 25.883579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158966, 35.255791, 26.053883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442796, 0.104250, -0.890541,
		0.090787, 0.982900, 0.160203,
		0.892014, -0.151787, 0.425760,
		44.426571, 35.210255, 26.181610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142990, 35.835369, 25.526754>,  <43.802162, 35.316505, 25.883579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142990, 35.835369, 25.526754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.401794, 35.571968, 25.680506>,  <44.557076, 35.413929, 25.772757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.401794, 35.571968, 25.680506>,  <44.142990, 35.835369, 25.526754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401794, 35.571968, 25.680506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494270, -0.021629, -0.869039,
		0.580579, 0.752267, 0.311484,
		0.647012, -0.658503, 0.384380,
		44.595898, 35.374416, 25.795820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869377, 36.059219, 25.354502>,  <44.142990, 35.835369, 25.526754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869377, 36.059219, 25.354502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.929916, 35.673389, 25.440929>,  <44.966240, 35.441891, 25.492786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.929916, 35.673389, 25.440929>,  <44.869377, 36.059219, 25.354502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929916, 35.673389, 25.440929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375341, -0.146139, -0.915294,
		0.914447, 0.219625, 0.339928,
		0.151345, -0.964577, 0.216071,
		44.975319, 35.384018, 25.505751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370983, 35.839680, 24.803234>,  <44.869377, 36.059219, 25.354502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370983, 35.839680, 24.803234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.270515, 35.503551, 24.995388>,  <45.210236, 35.301872, 25.110680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.270515, 35.503551, 24.995388>,  <45.370983, 35.839680, 24.803234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270515, 35.503551, 24.995388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387846, -0.542084, -0.745466,
		0.886841, -0.000926, 0.462073,
		-0.251173, -0.840324, 0.480383,
		45.195164, 35.251453, 25.139503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958920, 35.357899, 24.614611>,  <45.370983, 35.839680, 24.803234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958920, 35.357899, 24.614611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.632030, 35.149799, 24.713795>,  <45.435898, 35.024940, 24.773304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.632030, 35.149799, 24.713795>,  <45.958920, 35.357899, 24.614611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632030, 35.149799, 24.713795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124013, -0.578913, -0.805904,
		0.562815, -0.627856, 0.537621,
		-0.817227, -0.520247, 0.247959,
		45.386864, 34.993725, 24.788183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.161224, 34.685890, 24.573370>,  <45.958920, 35.357899, 24.614611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.161224, 34.685890, 24.573370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772594, 34.748974, 24.502756>,  <45.539417, 34.786823, 24.460388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.772594, 34.748974, 24.502756>,  <46.161224, 34.685890, 24.573370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772594, 34.748974, 24.502756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083961, -0.467682, -0.879900,
		-0.221333, -0.869713, 0.441148,
		-0.971577, 0.157712, -0.176535,
		45.481121, 34.796288, 24.449795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130352, 34.390736, 23.987108>,  <46.161224, 34.685890, 24.573370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130352, 34.390736, 23.987108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.769852, 34.563610, 23.974724>,  <45.553551, 34.667336, 23.967293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.769852, 34.563610, 23.974724>,  <46.130352, 34.390736, 23.987108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769852, 34.563610, 23.974724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026512, -0.126328, -0.991634,
		-0.432485, -0.892890, 0.125311,
		-0.901251, 0.432189, -0.030963,
		45.499477, 34.693268, 23.965435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833031, 34.228928, 23.943026>,  <46.130352, 34.390736, 23.987108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833031, 34.228928, 23.943026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.649445, 34.031013, 23.647856>,  <46.539291, 33.912266, 23.470753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.649445, 34.031013, 23.647856>,  <46.833031, 34.228928, 23.943026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649445, 34.031013, 23.647856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571736, 0.471261, -0.671589,
		0.680048, -0.730137, 0.066593,
		-0.458969, -0.494786, -0.737925,
		46.511753, 33.882576, 23.426477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387020, 33.976456, 23.373089>,  <46.833031, 34.228928, 23.943026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387020, 33.976456, 23.373089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.016327, 34.069660, 23.255198>,  <46.793911, 34.125584, 23.184464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.016327, 34.069660, 23.255198>,  <47.387020, 33.976456, 23.373089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016327, 34.069660, 23.255198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375435, 0.604388, -0.702684,
		0.014395, -0.761854, -0.647590,
		-0.926737, 0.233013, -0.294727,
		46.738304, 34.139565, 23.166779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482346, 33.267723, 23.557240>,  <47.387020, 33.976456, 23.373089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482346, 33.267723, 23.557240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.414177, 32.884605, 23.464642>,  <47.373276, 32.654736, 23.409082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.414177, 32.884605, 23.464642>,  <47.482346, 33.267723, 23.557240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414177, 32.884605, 23.464642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513438, -0.114205, 0.850494,
		-0.841035, 0.263799, -0.472304,
		-0.170420, -0.957793, -0.231495,
		47.363052, 32.597267, 23.395193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924854, 33.183800, 23.890362>,  <47.482346, 33.267723, 23.557240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924854, 33.183800, 23.890362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.045414, 32.809334, 23.817965>,  <47.117752, 32.584656, 23.774527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.045414, 32.809334, 23.817965>,  <46.924854, 33.183800, 23.890362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045414, 32.809334, 23.817965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401556, -0.296790, 0.866412,
		-0.864818, -0.188461, -0.465374,
		0.301403, -0.936162, -0.180991,
		47.135834, 32.528484, 23.763668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397469, 32.791370, 23.958378>,  <46.924854, 33.183800, 23.890362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397469, 32.791370, 23.958378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.678947, 32.510895, 24.004246>,  <46.847836, 32.342609, 24.031767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.678947, 32.510895, 24.004246>,  <46.397469, 32.791370, 23.958378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678947, 32.510895, 24.004246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472748, -0.341597, 0.812294,
		-0.530399, -0.625817, -0.571865,
		0.703695, -0.701188, 0.114671,
		46.890057, 32.300537, 24.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026508, 32.180687, 24.124987>,  <46.397469, 32.791370, 23.958378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026508, 32.180687, 24.124987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.405136, 32.112232, 24.234318>,  <46.632313, 32.071159, 24.299917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.405136, 32.112232, 24.234318>,  <46.026508, 32.180687, 24.124987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405136, 32.112232, 24.234318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321657, -0.440294, 0.838259,
		-0.023115, -0.881392, -0.471819,
		0.946574, -0.171140, 0.273329,
		46.689110, 32.060890, 24.316317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085194, 31.502422, 24.400517>,  <46.026508, 32.180687, 24.124987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085194, 31.502422, 24.400517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.405884, 31.664272, 24.576481>,  <46.598297, 31.761381, 24.682060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.405884, 31.664272, 24.576481>,  <46.085194, 31.502422, 24.400517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405884, 31.664272, 24.576481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263737, -0.420996, 0.867874,
		0.536363, -0.811814, -0.230808,
		0.801722, 0.404623, 0.439912,
		46.646400, 31.785660, 24.708454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274303, 31.027145, 24.806591>,  <46.085194, 31.502422, 24.400517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274303, 31.027145, 24.806591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.455723, 31.355894, 24.944471>,  <46.564575, 31.553143, 25.027199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.455723, 31.355894, 24.944471>,  <46.274303, 31.027145, 24.806591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455723, 31.355894, 24.944471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174385, -0.297455, 0.938675,
		0.874003, -0.485848, 0.008411,
		0.453552, 0.821871, 0.344701,
		46.591789, 31.602455, 25.047882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510792, 30.891750, 25.476206>,  <46.274303, 31.027145, 24.806591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510792, 30.891750, 25.476206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.484138, 31.288853, 25.436220>,  <46.468147, 31.527115, 25.412230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.484138, 31.288853, 25.436220>,  <46.510792, 30.891750, 25.476206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484138, 31.288853, 25.436220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386141, 0.066721, 0.920023,
		0.920030, 0.099908, 0.378898,
		-0.066638, 0.992757, -0.099964,
		46.464146, 31.586679, 25.406231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551907, 31.155983, 26.130125>,  <46.510792, 30.891750, 25.476206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551907, 31.155983, 26.130125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.392685, 31.472200, 25.943966>,  <46.297153, 31.661930, 25.832272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.392685, 31.472200, 25.943966>,  <46.551907, 31.155983, 26.130125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392685, 31.472200, 25.943966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412529, 0.298874, 0.860519,
		0.819373, 0.534523, 0.207154,
		-0.398054, 0.790544, -0.465396,
		46.273270, 31.709364, 25.804348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601444, 31.666096, 26.561071>,  <46.551907, 31.155983, 26.130125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601444, 31.666096, 26.561071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.309170, 31.790249, 26.317841>,  <46.133804, 31.864740, 26.171902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.309170, 31.790249, 26.317841>,  <46.601444, 31.666096, 26.561071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309170, 31.790249, 26.317841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490176, 0.381457, 0.783721,
		0.475210, 0.870720, -0.126583,
		-0.730687, 0.310384, -0.608077,
		46.089962, 31.883364, 26.135418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370525, 32.305393, 26.848789>,  <46.601444, 31.666096, 26.561071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370525, 32.305393, 26.848789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.070110, 32.167812, 26.623350>,  <45.889862, 32.085262, 26.488087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.070110, 32.167812, 26.623350>,  <46.370525, 32.305393, 26.848789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070110, 32.167812, 26.623350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640781, 0.173863, 0.747778,
		-0.159214, 0.922749, -0.350977,
		-0.751033, -0.343956, -0.563598,
		45.844799, 32.064625, 26.454271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926075, 32.752659, 26.916187>,  <46.370525, 32.305393, 26.848789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926075, 32.752659, 26.916187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.702900, 32.458069, 26.763182>,  <45.568996, 32.281315, 26.671379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.702900, 32.458069, 26.763182>,  <45.926075, 32.752659, 26.916187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702900, 32.458069, 26.763182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691327, 0.157478, 0.705172,
		-0.459103, 0.657881, -0.597007,
		-0.557934, -0.736474, -0.382512,
		45.535519, 32.237125, 26.648428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196301, 32.997620, 26.814774>,  <45.926075, 32.752659, 26.916187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196301, 32.997620, 26.814774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.217804, 32.602295, 26.871830>,  <45.230705, 32.365101, 26.906063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.217804, 32.602295, 26.871830>,  <45.196301, 32.997620, 26.814774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217804, 32.602295, 26.871830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492266, 0.098053, 0.864904,
		-0.868783, -0.116713, -0.481242,
		0.053758, -0.988313, 0.142641,
		45.233932, 32.305801, 26.914621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536354, 32.879898, 27.053001>,  <45.196301, 32.997620, 26.814774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536354, 32.879898, 27.053001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732807, 32.551636, 27.169830>,  <44.850677, 32.354675, 27.239927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.732807, 32.551636, 27.169830>,  <44.536354, 32.879898, 27.053001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732807, 32.551636, 27.169830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488186, 0.018382, 0.872546,
		-0.721433, -0.571120, -0.391607,
		0.491130, -0.820661, 0.292074,
		44.880146, 32.305439, 27.257452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046795, 32.444763, 27.322712>,  <44.536354, 32.879898, 27.053001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046795, 32.444763, 27.322712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.386852, 32.326046, 27.496691>,  <44.590885, 32.254818, 27.601078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.386852, 32.326046, 27.496691>,  <44.046795, 32.444763, 27.322712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386852, 32.326046, 27.496691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418697, 0.119882, 0.900178,
		-0.319307, -0.947388, -0.022349,
		0.850139, -0.296790, 0.434948,
		44.641895, 32.237007, 27.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672394, 31.851011, 27.044085>,  <44.046795, 32.444763, 27.322712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672394, 31.851011, 27.044085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346737, 31.675661, 26.891771>,  <43.151344, 31.570450, 26.800383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.346737, 31.675661, 26.891771>,  <43.672394, 31.851011, 27.044085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346737, 31.675661, 26.891771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335659, 0.179806, -0.924664,
		0.473819, -0.880622, 0.000757,
		-0.814143, -0.438377, -0.380784,
		43.102493, 31.544147, 26.777536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906284, 31.302406, 26.590319>,  <43.672394, 31.851011, 27.044085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906284, 31.302406, 26.590319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533630, 31.390181, 26.474453>,  <43.310040, 31.442844, 26.404934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.533630, 31.390181, 26.474453>,  <43.906284, 31.302406, 26.590319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533630, 31.390181, 26.474453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304280, 0.035263, -0.951930,
		-0.198672, -0.974990, -0.099622,
		-0.931635, 0.219434, -0.289664,
		43.254139, 31.456011, 26.387554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672108, 30.821989, 25.952511>,  <43.906284, 31.302406, 26.590319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672108, 30.821989, 25.952511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455128, 31.157949, 25.959543>,  <43.324940, 31.359526, 25.963762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.455128, 31.157949, 25.959543>,  <43.672108, 30.821989, 25.952511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455128, 31.157949, 25.959543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288075, 0.205630, -0.935269,
		-0.789149, -0.502277, -0.353500,
		-0.542454, 0.839901, 0.017579,
		43.292393, 31.409920, 25.964817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379166, 30.795723, 25.367533>,  <43.672108, 30.821989, 25.952511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379166, 30.795723, 25.367533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353695, 31.185369, 25.454287>,  <43.338413, 31.419157, 25.506338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.353695, 31.185369, 25.454287>,  <43.379166, 30.795723, 25.367533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353695, 31.185369, 25.454287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103600, 0.222603, -0.969389,
		-0.992578, -0.039263, -0.115095,
		-0.063681, 0.974118, 0.216883,
		43.334591, 31.477606, 25.519352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967781, 31.173147, 24.809397>,  <43.379166, 30.795723, 25.367533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967781, 31.173147, 24.809397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.133976, 31.487642, 24.992352>,  <43.233692, 31.676338, 25.102125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.133976, 31.487642, 24.992352>,  <42.967781, 31.173147, 24.809397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133976, 31.487642, 24.992352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160218, 0.431725, -0.887662,
		-0.895377, 0.442094, 0.053407,
		0.415487, 0.786235, 0.457389,
		43.258621, 31.723513, 25.129568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717407, 31.744154, 24.430481>,  <42.967781, 31.173147, 24.809397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717407, 31.744154, 24.430481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.048584, 31.855591, 24.625170>,  <43.247292, 31.922453, 24.741983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.048584, 31.855591, 24.625170>,  <42.717407, 31.744154, 24.430481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048584, 31.855591, 24.625170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362218, 0.396932, -0.843352,
		-0.428148, 0.874546, 0.227725,
		0.827941, 0.278594, 0.486722,
		43.296967, 31.939169, 24.771187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892822, 32.486828, 24.146416>,  <42.717407, 31.744154, 24.430481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892822, 32.486828, 24.146416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.235584, 32.334534, 24.285412>,  <43.441242, 32.243156, 24.368809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.235584, 32.334534, 24.285412>,  <42.892822, 32.486828, 24.146416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235584, 32.334534, 24.285412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461904, 0.267919, -0.845497,
		0.228815, 0.885018, 0.405446,
		0.856907, -0.380739, 0.347489,
		43.492657, 32.220310, 24.389658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734760, 33.172226, 23.756609>,  <42.892822, 32.486828, 24.146416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734760, 33.172226, 23.756609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.390728, 33.321293, 23.617250>,  <42.184311, 33.410732, 23.533636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.390728, 33.321293, 23.617250>,  <42.734760, 33.172226, 23.756609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390728, 33.321293, 23.617250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335892, 0.100340, 0.936540,
		0.383980, 0.922522, 0.038877,
		-0.860079, 0.372672, -0.348397,
		42.132706, 33.433094, 23.512732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584812, 33.800518, 24.142914>,  <42.734760, 33.172226, 23.756609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584812, 33.800518, 24.142914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.245880, 33.645824, 23.997328>,  <42.042522, 33.553009, 23.909977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.245880, 33.645824, 23.997328>,  <42.584812, 33.800518, 24.142914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245880, 33.645824, 23.997328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349338, -0.110298, 0.930482,
		-0.399994, 0.915571, -0.041642,
		-0.847330, -0.386734, -0.363963,
		41.991680, 33.529804, 23.888140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985237, 34.070137, 24.510443>,  <42.584812, 33.800518, 24.142914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985237, 34.070137, 24.510443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.790741, 33.757942, 24.353266>,  <41.674042, 33.570625, 24.258959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.790741, 33.757942, 24.353266>,  <41.985237, 34.070137, 24.510443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790741, 33.757942, 24.353266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562209, -0.064821, 0.824451,
		-0.668947, 0.621798, -0.407280,
		-0.486242, -0.780491, -0.392942,
		41.644867, 33.523796, 24.235384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268993, 34.109261, 24.615284>,  <41.985237, 34.070137, 24.510443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268993, 34.109261, 24.615284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326817, 33.720699, 24.539940>,  <41.361511, 33.487564, 24.494734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326817, 33.720699, 24.539940>,  <41.268993, 34.109261, 24.615284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326817, 33.720699, 24.539940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610629, -0.237368, 0.755505,
		-0.778610, 0.005804, -0.627481,
		0.144559, -0.971402, -0.188361,
		41.370186, 33.429279, 24.483431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614338, 33.913662, 24.425293>,  <41.268993, 34.109261, 24.615284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614338, 33.913662, 24.425293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821068, 33.591892, 24.542452>,  <40.945107, 33.398830, 24.612747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821068, 33.591892, 24.542452>,  <40.614338, 33.913662, 24.425293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821068, 33.591892, 24.542452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679601, -0.177462, 0.711793,
		-0.520606, -0.566928, -0.638405,
		0.516828, -0.804425, 0.292898,
		40.976116, 33.350563, 24.630322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120342, 33.347107, 24.387102>,  <40.614338, 33.913662, 24.425293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120342, 33.347107, 24.387102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417721, 33.247658, 24.635448>,  <40.596146, 33.187988, 24.784456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.417721, 33.247658, 24.635448>,  <40.120342, 33.347107, 24.387102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417721, 33.247658, 24.635448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659590, -0.119073, 0.742133,
		-0.110548, -0.961265, -0.252484,
		0.743451, -0.248577, 0.620878,
		40.640755, 33.173069, 24.821709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838776, 32.938351, 24.826077>,  <40.120342, 33.347107, 24.387102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838776, 32.938351, 24.826077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.166988, 33.029583, 25.035728>,  <40.363914, 33.084320, 25.161520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.166988, 33.029583, 25.035728>,  <39.838776, 32.938351, 24.826077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166988, 33.029583, 25.035728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525905, -0.058036, 0.848561,
		0.223957, -0.971911, 0.072327,
		0.820529, 0.228079, 0.524131,
		40.413147, 33.098007, 25.192968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.137005, 37.085838, 22.594116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.296272, 36.837292, 22.864038>,  <44.391834, 36.688164, 23.025991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.296272, 36.837292, 22.864038>,  <44.137005, 37.085838, 22.594116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296272, 36.837292, 22.864038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468368, 0.494808, 0.731982,
		-0.788729, -0.607509, -0.094012,
		0.398168, -0.621367, 0.674807,
		44.415722, 36.650883, 23.066481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580154, 36.899803, 22.972803>,  <44.137005, 37.085838, 22.594116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580154, 36.899803, 22.972803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.870991, 36.812893, 23.233305>,  <44.045494, 36.760746, 23.389606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.870991, 36.812893, 23.233305>,  <43.580154, 36.899803, 22.972803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870991, 36.812893, 23.233305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616621, 0.210406, 0.758623,
		-0.301858, -0.953163, 0.019008,
		0.727091, -0.217276, 0.651253,
		44.089119, 36.747711, 23.428680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290108, 36.510471, 23.445692>,  <43.580154, 36.899803, 22.972803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290108, 36.510471, 23.445692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.620872, 36.658321, 23.615206>,  <43.819332, 36.747032, 23.716913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.620872, 36.658321, 23.615206>,  <43.290108, 36.510471, 23.445692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620872, 36.658321, 23.615206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533181, 0.275872, 0.799758,
		0.178697, -0.887285, 0.425198,
		0.826913, 0.369622, 0.423786,
		43.868946, 36.769211, 23.742342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362438, 36.191978, 24.110830>,  <43.290108, 36.510471, 23.445692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362438, 36.191978, 24.110830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.564701, 36.536732, 24.126217>,  <43.686058, 36.743584, 24.135448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.564701, 36.536732, 24.126217>,  <43.362438, 36.191978, 24.110830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564701, 36.536732, 24.126217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494160, 0.252790, 0.831807,
		0.707193, -0.439615, 0.553730,
		0.505653, 0.861879, 0.038469,
		43.716396, 36.795296, 24.137758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617962, 36.213753, 24.801870>,  <43.362438, 36.191978, 24.110830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617962, 36.213753, 24.801870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639172, 36.588978, 24.664915>,  <43.651897, 36.814114, 24.582741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.639172, 36.588978, 24.664915>,  <43.617962, 36.213753, 24.801870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639172, 36.588978, 24.664915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417797, 0.332262, 0.845605,
		0.906991, 0.098210, 0.409538,
		0.053027, 0.938060, -0.342390,
		43.655079, 36.870396, 24.562199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754059, 36.574966, 25.407482>,  <43.617962, 36.213753, 24.801870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754059, 36.574966, 25.407482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.605289, 36.827095, 25.134903>,  <43.516029, 36.978371, 24.971355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.605289, 36.827095, 25.134903>,  <43.754059, 36.574966, 25.407482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605289, 36.827095, 25.134903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641445, 0.356133, 0.679499,
		0.670987, 0.689831, 0.271862,
		-0.371920, 0.630319, -0.681449,
		43.493713, 37.016190, 24.930468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695248, 37.215763, 25.742994>,  <43.754059, 36.574966, 25.407482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695248, 37.215763, 25.742994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.443779, 37.227684, 25.432156>,  <43.292896, 37.234837, 25.245651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.443779, 37.227684, 25.432156>,  <43.695248, 37.215763, 25.742994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443779, 37.227684, 25.432156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723411, 0.344298, 0.598445,
		0.285388, 0.938387, -0.194891,
		-0.628674, 0.029803, -0.777098,
		43.255177, 37.236626, 25.199026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394875, 37.798935, 25.811857>,  <43.695248, 37.215763, 25.742994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394875, 37.798935, 25.811857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.151672, 37.574230, 25.587446>,  <43.005753, 37.439407, 25.452799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.151672, 37.574230, 25.587446>,  <43.394875, 37.798935, 25.811857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151672, 37.574230, 25.587446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788615, 0.345668, 0.508527,
		-0.091744, 0.751621, -0.653184,
		-0.608004, -0.561765, -0.561027,
		42.969273, 37.405701, 25.419138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748226, 38.187832, 25.851419>,  <43.394875, 37.798935, 25.811857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748226, 38.187832, 25.851419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.658691, 37.834408, 25.686878>,  <42.604973, 37.622353, 25.588154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.658691, 37.834408, 25.686878>,  <42.748226, 38.187832, 25.851419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658691, 37.834408, 25.686878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921469, 0.054368, 0.384628,
		-0.317479, 0.465142, -0.826347,
		-0.223834, -0.883565, -0.411353,
		42.591541, 37.569340, 25.563473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026939, 38.267014, 25.630630>,  <42.748226, 38.187832, 25.851419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026939, 38.267014, 25.630630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107380, 37.875965, 25.655312>,  <42.155643, 37.641335, 25.670120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107380, 37.875965, 25.655312>,  <42.026939, 38.267014, 25.630630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107380, 37.875965, 25.655312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837115, -0.138802, 0.529124,
		-0.508721, -0.158058, -0.846298,
		0.201100, -0.977626, 0.061701,
		42.167709, 37.582676, 25.673822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385761, 37.839596, 25.412920>,  <42.026939, 38.267014, 25.630630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385761, 37.839596, 25.412920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611748, 37.599171, 25.639034>,  <41.747337, 37.454918, 25.774702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611748, 37.599171, 25.639034>,  <41.385761, 37.839596, 25.412920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611748, 37.599171, 25.639034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732943, -0.050921, 0.678382,
		-0.378963, -0.797580, -0.469311,
		0.564962, -0.601060, 0.565284,
		41.781235, 37.418854, 25.808619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924728, 37.293709, 25.459616>,  <41.385761, 37.839596, 25.412920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924728, 37.293709, 25.459616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.206238, 37.242023, 25.739044>,  <41.375145, 37.211014, 25.906702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.206238, 37.242023, 25.739044>,  <40.924728, 37.293709, 25.459616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206238, 37.242023, 25.739044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709467, -0.178809, 0.681678,
		0.036830, -0.975362, -0.217513,
		0.703776, -0.129212, 0.698573,
		41.417370, 37.203259, 25.948616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725281, 36.595551, 25.243307>,  <40.924728, 37.293709, 25.459616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725281, 36.595551, 25.243307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.405983, 36.559746, 25.005049>,  <40.214405, 36.538261, 24.862095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.405983, 36.559746, 25.005049>,  <40.725281, 36.595551, 25.243307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405983, 36.559746, 25.005049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589063, 0.090413, -0.803013,
		0.125740, -0.991873, -0.019439,
		-0.798244, -0.089520, -0.595644,
		40.166508, 36.532894, 24.826355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862247, 35.948627, 24.817619>,  <40.725281, 36.595551, 25.243307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862247, 35.948627, 24.817619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588070, 36.166321, 24.624134>,  <40.423565, 36.296936, 24.508043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.588070, 36.166321, 24.624134>,  <40.862247, 35.948627, 24.817619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588070, 36.166321, 24.624134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558685, -0.032929, -0.828726,
		-0.466952, -0.838285, -0.281487,
		-0.685439, 0.544238, -0.483713,
		40.382439, 36.329594, 24.479021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923870, 35.659626, 24.176151>,  <40.862247, 35.948627, 24.817619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923870, 35.659626, 24.176151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 35.971603, 24.096998>,  <40.543877, 36.158791, 24.049507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 35.971603, 24.096998>,  <40.923870, 35.659626, 24.176151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686375, 35.971603, 24.096998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398713, 0.071559, -0.914280,
		-0.698928, -0.621743, -0.353462,
		-0.593740, 0.779945, -0.197883,
		40.508251, 36.205585, 24.037634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798485, 35.609138, 23.495909>,  <40.923870, 35.659626, 24.176151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798485, 35.609138, 23.495909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.727764, 35.990864, 23.592272>,  <40.685333, 36.219898, 23.650089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.727764, 35.990864, 23.592272>,  <40.798485, 35.609138, 23.495909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727764, 35.990864, 23.592272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537632, 0.298658, -0.788514,
		-0.824436, -0.009887, -0.565869,
		-0.176798, 0.954309, 0.240909,
		40.674725, 36.277157, 23.664545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551895, 35.916134, 22.924463>,  <40.798485, 35.609138, 23.495909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551895, 35.916134, 22.924463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679253, 36.228031, 23.140104>,  <40.755669, 36.415169, 23.269489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.679253, 36.228031, 23.140104>,  <40.551895, 35.916134, 22.924463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679253, 36.228031, 23.140104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531032, 0.324379, -0.782804,
		-0.785257, 0.535523, -0.310786,
		0.318397, 0.779739, 0.539101,
		40.774773, 36.461952, 23.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295414, 36.600342, 22.599991>,  <40.551895, 35.916134, 22.924463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295414, 36.600342, 22.599991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622753, 36.662132, 22.821423>,  <40.819157, 36.699207, 22.954283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.622753, 36.662132, 22.821423>,  <40.295414, 36.600342, 22.599991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622753, 36.662132, 22.821423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406055, 0.526255, -0.747111,
		-0.406734, 0.836178, 0.367932,
		0.818344, 0.154475, 0.553580,
		40.868256, 36.708473, 22.987497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544552, 37.255234, 22.362827>,  <40.295414, 36.600342, 22.599991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544552, 37.255234, 22.362827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854351, 37.098602, 22.561552>,  <41.040230, 37.004623, 22.680786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.854351, 37.098602, 22.561552>,  <40.544552, 37.255234, 22.362827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854351, 37.098602, 22.561552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622722, 0.333845, -0.707647,
		0.111243, 0.857445, 0.502408,
		0.774495, -0.391581, 0.496812,
		41.086700, 36.981129, 22.710596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057758, 37.662415, 22.299238>,  <40.544552, 37.255234, 22.362827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057758, 37.662415, 22.299238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300442, 37.362823, 22.405771>,  <41.446053, 37.183067, 22.469690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300442, 37.362823, 22.405771>,  <41.057758, 37.662415, 22.299238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300442, 37.362823, 22.405771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639805, 0.261262, -0.722766,
		0.471757, 0.608908, 0.637712,
		0.606708, -0.748982, 0.266330,
		41.482452, 37.138130, 22.485670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717567, 37.935802, 22.473505>,  <41.057758, 37.662415, 22.299238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717567, 37.935802, 22.473505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756077, 37.549171, 22.378452>,  <41.779182, 37.317192, 22.321421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756077, 37.549171, 22.378452>,  <41.717567, 37.935802, 22.473505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756077, 37.549171, 22.378452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691296, 0.236694, -0.682705,
		0.716130, -0.098550, 0.690974,
		0.096269, -0.966573, -0.237630,
		41.784958, 37.259201, 22.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502350, 37.756207, 22.335596>,  <41.717567, 37.935802, 22.473505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502350, 37.756207, 22.335596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286316, 37.487129, 22.133289>,  <42.156696, 37.325684, 22.011906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.286316, 37.487129, 22.133289>,  <42.502350, 37.756207, 22.335596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286316, 37.487129, 22.133289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649024, 0.049687, -0.759144,
		0.535799, -0.738254, 0.409757,
		-0.540081, -0.672691, -0.505766,
		42.124290, 37.285320, 21.981560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003006, 37.220448, 22.008045>,  <42.502350, 37.756207, 22.335596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003006, 37.220448, 22.008045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656433, 37.147713, 21.822044>,  <42.448490, 37.104073, 21.710443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.656433, 37.147713, 21.822044>,  <43.003006, 37.220448, 22.008045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656433, 37.147713, 21.822044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490730, -0.138413, -0.860247,
		0.092063, -0.973538, 0.209159,
		-0.866434, -0.181837, -0.465002,
		42.396503, 37.093163, 21.682543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021767, 36.512814, 21.777592>,  <43.003006, 37.220448, 22.008045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021767, 36.512814, 21.777592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752388, 36.685173, 21.537327>,  <42.590759, 36.788589, 21.393167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752388, 36.685173, 21.537327>,  <43.021767, 36.512814, 21.777592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752388, 36.685173, 21.537327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572958, -0.209181, -0.792441,
		-0.467109, -0.877821, -0.106015,
		-0.673445, 0.430899, -0.600664,
		42.550354, 36.814442, 21.357128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011230, 36.041725, 21.222818>,  <43.021767, 36.512814, 21.777592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011230, 36.041725, 21.222818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874836, 36.394970, 21.093922>,  <42.792999, 36.606918, 21.016584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.874836, 36.394970, 21.093922>,  <43.011230, 36.041725, 21.222818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874836, 36.394970, 21.093922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697737, 0.008037, -0.716309,
		-0.629991, -0.469093, -0.618921,
		-0.340990, 0.883112, -0.322240,
		42.772537, 36.659904, 20.997250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085346, 35.232510, 21.208971>,  <43.011230, 36.041725, 21.222818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085346, 35.232510, 21.208971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.866875, 35.027584, 20.943874>,  <42.735794, 34.904629, 20.784817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.866875, 35.027584, 20.943874>,  <43.085346, 35.232510, 21.208971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866875, 35.027584, 20.943874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248738, -0.656296, 0.712323,
		-0.799887, 0.553903, 0.231022,
		-0.546177, -0.512314, -0.662740,
		42.703022, 34.873890, 20.745052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372166, 35.198944, 21.428843>,  <43.085346, 35.232510, 21.208971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372166, 35.198944, 21.428843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436958, 34.884403, 21.190374>,  <42.475834, 34.695679, 21.047293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.436958, 34.884403, 21.190374>,  <42.372166, 35.198944, 21.428843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436958, 34.884403, 21.190374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220861, -0.617713, 0.754753,
		-0.961760, 0.009412, -0.273733,
		0.161985, -0.786347, -0.596170,
		42.485554, 34.648499, 21.011524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798439, 34.906590, 21.543783>,  <42.372166, 35.198944, 21.428843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798439, 34.906590, 21.543783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.066868, 34.650269, 21.394632>,  <42.227924, 34.496475, 21.305141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.066868, 34.650269, 21.394632>,  <41.798439, 34.906590, 21.543783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066868, 34.650269, 21.394632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156032, -0.613746, 0.773932,
		-0.724788, -0.461183, -0.511853,
		0.671072, -0.640802, -0.372876,
		42.268188, 34.458027, 21.282770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514717, 34.307106, 21.539715>,  <41.798439, 34.906590, 21.543783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514717, 34.307106, 21.539715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.901585, 34.205498, 21.536510>,  <42.133705, 34.144535, 21.534588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.901585, 34.205498, 21.536510>,  <41.514717, 34.307106, 21.539715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901585, 34.205498, 21.536510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144585, -0.575880, 0.804648,
		-0.209008, -0.777070, -0.593698,
		0.967167, -0.254017, -0.008011,
		42.191734, 34.129292, 21.534107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465252, 33.617676, 21.598148>,  <41.514717, 34.307106, 21.539715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465252, 33.617676, 21.598148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.830761, 33.726749, 21.718586>,  <42.050068, 33.792194, 21.790850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.830761, 33.726749, 21.718586>,  <41.465252, 33.617676, 21.598148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830761, 33.726749, 21.718586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166519, -0.424629, 0.889922,
		0.370524, -0.863326, -0.342608,
		0.913775, 0.272687, 0.301095,
		42.104893, 33.808556, 21.808914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760185, 33.075165, 22.053236>,  <41.465252, 33.617676, 21.598148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760185, 33.075165, 22.053236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.015656, 33.371571, 22.136177>,  <42.168938, 33.549416, 22.185942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.015656, 33.371571, 22.136177>,  <41.760185, 33.075165, 22.053236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015656, 33.371571, 22.136177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019218, -0.284748, 0.958410,
		0.769238, -0.608126, -0.196102,
		0.638673, 0.741013, 0.207352,
		42.207256, 33.593876, 22.198383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205486, 32.728798, 22.513342>,  <41.760185, 33.075165, 22.053236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205486, 32.728798, 22.513342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.210827, 33.124645, 22.570581>,  <42.214031, 33.362152, 22.604925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.210827, 33.124645, 22.570581>,  <42.205486, 32.728798, 22.513342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210827, 33.124645, 22.570581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056250, -0.142144, 0.988247,
		0.998327, -0.021245, 0.053768,
		0.013353, 0.989618, 0.143101,
		42.214832, 33.421532, 22.613512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660446, 32.829014, 23.094820>,  <42.205486, 32.728798, 22.513342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660446, 32.829014, 23.094820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407188, 33.135761, 23.052780>,  <42.255234, 33.319809, 23.027555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407188, 33.135761, 23.052780>,  <42.660446, 32.829014, 23.094820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407188, 33.135761, 23.052780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205446, -0.035583, 0.978021,
		0.746271, 0.640820, 0.180079,
		-0.633144, 0.766866, -0.105100,
		42.217247, 33.365822, 23.021250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356400, 32.734638, 23.594511>,  <42.660446, 32.829014, 23.094820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356400, 32.734638, 23.594511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.584240, 32.477917, 23.799898>,  <43.720943, 32.323883, 23.923130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.584240, 32.477917, 23.799898>,  <43.356400, 32.734638, 23.594511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584240, 32.477917, 23.799898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714934, 0.078675, -0.694752,
		0.405496, 0.762824, 0.503659,
		0.569599, -0.641802, 0.513466,
		43.755119, 32.285378, 23.953938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052792, 33.133186, 23.776192>,  <43.356400, 32.734638, 23.594511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052792, 33.133186, 23.776192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.103905, 32.736732, 23.790705>,  <44.134571, 32.498859, 23.799414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.103905, 32.736732, 23.790705>,  <44.052792, 33.133186, 23.776192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103905, 32.736732, 23.790705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788086, 0.079254, -0.610442,
		0.602157, 0.106598, 0.791230,
		0.127780, -0.991139, 0.036285,
		44.142239, 32.439392, 23.801590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816757, 33.043629, 23.866896>,  <44.052792, 33.133186, 23.776192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816757, 33.043629, 23.866896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.668053, 32.695999, 23.736361>,  <44.578831, 32.487419, 23.658039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.668053, 32.695999, 23.736361>,  <44.816757, 33.043629, 23.866896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668053, 32.695999, 23.736361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687215, -0.021304, -0.726142,
		0.624121, -0.494216, 0.605163,
		-0.371764, -0.869078, -0.326336,
		44.556522, 32.435276, 23.638460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338295, 32.584927, 23.818474>,  <44.816757, 33.043629, 23.866896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338295, 32.584927, 23.818474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.059303, 32.449417, 23.565887>,  <44.891907, 32.368111, 23.414335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.059303, 32.449417, 23.565887>,  <45.338295, 32.584927, 23.818474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059303, 32.449417, 23.565887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673049, -0.007171, -0.739563,
		0.246020, -0.940839, 0.233016,
		-0.697481, -0.338779, -0.631466,
		44.850060, 32.347782, 23.376448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613029, 32.129501, 23.458658>,  <45.338295, 32.584927, 23.818474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613029, 32.129501, 23.458658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.304138, 32.217239, 23.220144>,  <45.118805, 32.269882, 23.077036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.304138, 32.217239, 23.220144>,  <45.613029, 32.129501, 23.458658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304138, 32.217239, 23.220144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618135, 0.042396, -0.784928,
		-0.146890, -0.974726, -0.168323,
		-0.772225, 0.219344, -0.596285,
		45.072472, 32.283043, 23.041258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674496, 31.722849, 22.910975>,  <45.613029, 32.129501, 23.458658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674496, 31.722849, 22.910975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.425819, 31.996162, 22.757809>,  <45.276615, 32.160152, 22.665909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.425819, 31.996162, 22.757809>,  <45.674496, 31.722849, 22.910975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425819, 31.996162, 22.757809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597581, 0.097729, -0.795830,
		-0.506358, -0.723581, -0.469076,
		-0.621690, 0.683286, -0.382913,
		45.239311, 32.201149, 22.642935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539295, 31.478510, 22.247738>,  <45.674496, 31.722849, 22.910975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539295, 31.478510, 22.247738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.483646, 31.874367, 22.261883>,  <45.450256, 32.111881, 22.270369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.483646, 31.874367, 22.261883>,  <45.539295, 31.478510, 22.247738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483646, 31.874367, 22.261883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588402, 0.111332, -0.800868,
		-0.796510, -0.090613, -0.597797,
		-0.139123, 0.989644, 0.035360,
		45.441910, 32.171261, 22.272491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442043, 31.571554, 21.628489>,  <45.539295, 31.478510, 22.247738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442043, 31.571554, 21.628489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.547058, 31.923916, 21.786009>,  <45.610069, 32.135334, 21.880520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.547058, 31.923916, 21.786009>,  <45.442043, 31.571554, 21.628489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547058, 31.923916, 21.786009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589794, 0.176502, -0.788029,
		-0.763686, 0.439150, -0.473214,
		0.262540, 0.880906, 0.393799,
		45.625820, 32.188187, 21.904148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277412, 32.219681, 21.259579>,  <45.442043, 31.571554, 21.628489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277412, 32.219681, 21.259579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.605137, 32.283558, 21.479841>,  <45.801773, 32.321884, 21.612000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.605137, 32.283558, 21.479841>,  <45.277412, 32.219681, 21.259579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605137, 32.283558, 21.479841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459479, 0.391577, -0.797211,
		-0.342930, 0.906182, 0.247451,
		0.819315, 0.159689, 0.550656,
		45.850933, 32.331463, 21.645039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.726334, 32.216270, 35.393375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953133, 32.543575, 35.431240>,  <37.089214, 32.739960, 35.453957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953133, 32.543575, 35.431240>,  <36.726334, 32.216270, 35.393375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953133, 32.543575, 35.431240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475866, -0.231588, -0.848480,
		-0.672355, 0.526134, -0.520693,
		0.567000, 0.818260, 0.094660,
		37.123234, 32.789055, 35.459637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015415, 32.460876, 34.812748>,  <36.726334, 32.216270, 35.393375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015415, 32.460876, 34.812748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340305, 32.642624, 34.959084>,  <37.535240, 32.751675, 35.046886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340305, 32.642624, 34.959084>,  <37.015415, 32.460876, 34.812748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340305, 32.642624, 34.959084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480742, -0.166145, -0.860978,
		-0.330422, 0.875181, -0.353383,
		0.812224, 0.454372, 0.365839,
		37.583973, 32.778934, 35.068836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118496, 33.024799, 34.339760>,  <37.015415, 32.460876, 34.812748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118496, 33.024799, 34.339760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450340, 32.925892, 34.539997>,  <37.649448, 32.866547, 34.660141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.450340, 32.925892, 34.539997>,  <37.118496, 33.024799, 34.339760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450340, 32.925892, 34.539997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467135, -0.183693, -0.864894,
		0.305820, 0.951375, -0.036885,
		0.829614, -0.247272, 0.500597,
		37.699223, 32.851711, 34.690178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618870, 33.471806, 34.091076>,  <37.118496, 33.024799, 34.339760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618870, 33.471806, 34.091076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800686, 33.151005, 34.246090>,  <37.909775, 32.958527, 34.339100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.800686, 33.151005, 34.246090>,  <37.618870, 33.471806, 34.091076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800686, 33.151005, 34.246090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479122, -0.146634, -0.865414,
		0.750888, 0.579047, 0.317604,
		0.454543, -0.802000, 0.387540,
		37.937050, 32.910404, 34.362350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334629, 33.452541, 33.881416>,  <37.618870, 33.471806, 34.091076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334629, 33.452541, 33.881416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292179, 33.070656, 33.992603>,  <38.266708, 32.841526, 34.059315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292179, 33.070656, 33.992603>,  <38.334629, 33.452541, 33.881416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292179, 33.070656, 33.992603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609134, -0.283372, -0.740713,
		0.785935, 0.090712, 0.611619,
		-0.106124, -0.954710, 0.277968,
		38.260342, 32.784245, 34.075993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092892, 33.064072, 33.906471>,  <38.334629, 33.452541, 33.881416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092892, 33.064072, 33.906471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798504, 32.795544, 33.871429>,  <38.621872, 32.634426, 33.850403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798504, 32.795544, 33.871429>,  <39.092892, 33.064072, 33.906471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798504, 32.795544, 33.871429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491955, -0.441406, -0.750427,
		0.465104, -0.595393, 0.655122,
		-0.735974, -0.671317, -0.087607,
		38.577713, 32.594147, 33.845146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478638, 32.395542, 33.764111>,  <39.092892, 33.064072, 33.906471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478638, 32.395542, 33.764111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101727, 32.345463, 33.639889>,  <38.875580, 32.315414, 33.565353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101727, 32.345463, 33.639889>,  <39.478638, 32.395542, 33.764111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101727, 32.345463, 33.639889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334765, -0.372189, -0.865683,
		-0.007207, -0.919675, 0.392614,
		-0.942274, -0.125194, -0.310558,
		38.819046, 32.307903, 33.546722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565933, 31.748844, 33.451706>,  <39.478638, 32.395542, 33.764111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565933, 31.748844, 33.451706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214153, 31.885279, 33.318901>,  <39.003086, 31.967138, 33.239220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214153, 31.885279, 33.318901>,  <39.565933, 31.748844, 33.451706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214153, 31.885279, 33.318901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245429, -0.272702, -0.930268,
		-0.407840, -0.899608, 0.156115,
		-0.879450, 0.341085, -0.332009,
		38.950317, 31.987604, 33.219299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329025, 31.195690, 33.037300>,  <39.565933, 31.748844, 33.451706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329025, 31.195690, 33.037300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115326, 31.508774, 32.909588>,  <38.987106, 31.696625, 32.832958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.115326, 31.508774, 32.909588>,  <39.329025, 31.195690, 33.037300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115326, 31.508774, 32.909588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134081, -0.294461, -0.946211,
		-0.834624, -0.548324, 0.052370,
		-0.534251, 0.782709, -0.319285,
		38.955051, 31.743586, 32.813801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021961, 30.923300, 32.534439>,  <39.329025, 31.195690, 33.037300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021961, 30.923300, 32.534439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026058, 31.315220, 32.454552>,  <39.028515, 31.550371, 32.406620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026058, 31.315220, 32.454552>,  <39.021961, 30.923300, 32.534439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026058, 31.315220, 32.454552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303951, -0.193330, -0.932865,
		-0.952632, -0.051152, -0.299791,
		0.010241, 0.979799, -0.199720,
		39.029129, 31.609159, 32.394634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615013, 31.008102, 31.907995>,  <39.021961, 30.923300, 32.534439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615013, 31.008102, 31.907995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828499, 31.346128, 31.920698>,  <38.956593, 31.548944, 31.928320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828499, 31.346128, 31.920698>,  <38.615013, 31.008102, 31.907995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828499, 31.346128, 31.920698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300984, -0.154727, -0.940994,
		-0.790288, 0.511783, -0.336931,
		0.533717, 0.845067, 0.031760,
		38.988613, 31.599649, 31.930225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450993, 31.410568, 31.325300>,  <38.615013, 31.008102, 31.907995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450993, 31.410568, 31.325300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823322, 31.506693, 31.435444>,  <39.046719, 31.564369, 31.501530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823322, 31.506693, 31.435444>,  <38.450993, 31.410568, 31.325300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823322, 31.506693, 31.435444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324279, -0.195541, -0.925530,
		-0.168574, 0.950796, -0.259942,
		0.930820, 0.240314, 0.275361,
		39.102570, 31.578787, 31.518051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317963, 32.131432, 30.893059>,  <38.450993, 31.410568, 31.325300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317963, 32.131432, 30.893059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951969, 32.055557, 30.750612>,  <37.732372, 32.010033, 30.665144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951969, 32.055557, 30.750612>,  <38.317963, 32.131432, 30.893059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951969, 32.055557, 30.750612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340836, -0.108994, 0.933783,
		-0.215944, 0.975775, 0.035075,
		-0.914986, -0.189690, -0.356117,
		37.677475, 31.998650, 30.643778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898403, 32.477295, 31.389730>,  <38.317963, 32.131432, 30.893059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898403, 32.477295, 31.389730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635223, 32.261299, 31.179773>,  <37.477314, 32.131702, 31.053799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635223, 32.261299, 31.179773>,  <37.898403, 32.477295, 31.389730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635223, 32.261299, 31.179773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542085, -0.144207, 0.827858,
		-0.522726, 0.829227, -0.197838,
		-0.657953, -0.539987, -0.524892,
		37.437836, 32.099304, 31.022306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271328, 32.783218, 31.420544>,  <37.898403, 32.477295, 31.389730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271328, 32.783218, 31.420544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186260, 32.407379, 31.313265>,  <37.135220, 32.181877, 31.248898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186260, 32.407379, 31.313265>,  <37.271328, 32.783218, 31.420544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186260, 32.407379, 31.313265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736870, -0.026044, 0.675533,
		-0.641714, 0.341290, -0.686822,
		-0.212665, -0.939597, -0.268199,
		37.122459, 32.125500, 31.232805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573189, 32.810768, 31.172651>,  <37.271328, 32.783218, 31.420544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573189, 32.810768, 31.172651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679520, 32.444904, 31.294455>,  <36.743320, 32.225384, 31.367537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.679520, 32.444904, 31.294455>,  <36.573189, 32.810768, 31.172651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679520, 32.444904, 31.294455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649278, 0.063612, 0.757886,
		-0.712581, -0.399180, -0.576961,
		0.265831, -0.914663, 0.304507,
		36.759270, 32.170506, 31.385807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919884, 32.425789, 31.139616>,  <36.573189, 32.810768, 31.172651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919884, 32.425789, 31.139616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160397, 32.226841, 31.389763>,  <36.304707, 32.107471, 31.539850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160397, 32.226841, 31.389763>,  <35.919884, 32.425789, 31.139616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160397, 32.226841, 31.389763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731484, -0.027686, 0.681296,
		-0.321541, -0.867098, -0.380463,
		0.601284, -0.497368, 0.625366,
		36.340782, 32.077629, 31.577374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633301, 31.832088, 31.235708>,  <35.919884, 32.425789, 31.139616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633301, 31.832088, 31.235708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885319, 31.888727, 31.541124>,  <36.036530, 31.922710, 31.724375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885319, 31.888727, 31.541124>,  <35.633301, 31.832088, 31.235708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885319, 31.888727, 31.541124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761696, -0.078766, 0.643130,
		0.151207, -0.986786, 0.058230,
		0.630045, 0.141599, 0.763540,
		36.074333, 31.931206, 31.770187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440029, 31.318789, 31.609070>,  <35.633301, 31.832088, 31.235708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440029, 31.318789, 31.609070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605392, 31.576302, 31.866638>,  <35.704609, 31.730810, 32.021179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605392, 31.576302, 31.866638>,  <35.440029, 31.318789, 31.609070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605392, 31.576302, 31.866638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794255, -0.090850, 0.600753,
		0.445256, -0.759795, 0.473771,
		0.413407, 0.643784, 0.643923,
		35.729416, 31.769436, 32.059814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410355, 30.899977, 32.151958>,  <35.440029, 31.318789, 31.609070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410355, 30.899977, 32.151958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439793, 31.285566, 32.254208>,  <35.457455, 31.516920, 32.315556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.439793, 31.285566, 32.254208>,  <35.410355, 30.899977, 32.151958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439793, 31.285566, 32.254208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833474, -0.081294, 0.546546,
		0.547635, -0.253276, 0.797463,
		0.073597, 0.963972, 0.255618,
		35.461872, 31.574759, 32.330894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322353, 30.831980, 32.896656>,  <35.410355, 30.899977, 32.151958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322353, 30.831980, 32.896656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214085, 31.192835, 32.762260>,  <35.149124, 31.409348, 32.681625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214085, 31.192835, 32.762260>,  <35.322353, 30.831980, 32.896656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214085, 31.192835, 32.762260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628343, 0.098859, 0.771630,
		0.729331, 0.419972, 0.540093,
		-0.270669, 0.902137, -0.335987,
		35.132885, 31.463476, 32.661465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183262, 31.084478, 33.524818>,  <35.322353, 30.831980, 32.896656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183262, 31.084478, 33.524818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033573, 31.334332, 33.250656>,  <34.943760, 31.484243, 33.086159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033573, 31.334332, 33.250656>,  <35.183262, 31.084478, 33.524818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033573, 31.334332, 33.250656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752081, 0.227975, 0.618386,
		0.542522, 0.746899, 0.384462,
		-0.374225, 0.624635, -0.685410,
		34.921307, 31.521723, 33.045033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794170, 31.461340, 33.869320>,  <35.183262, 31.084478, 33.524818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794170, 31.461340, 33.869320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642689, 31.587984, 33.521450>,  <34.551800, 31.663971, 33.312729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642689, 31.587984, 33.521450>,  <34.794170, 31.461340, 33.869320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642689, 31.587984, 33.521450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836978, 0.283915, 0.467825,
		0.395032, 0.905070, 0.157476,
		-0.378704, 0.316610, -0.869679,
		34.529079, 31.682966, 33.260548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513489, 32.067226, 34.009491>,  <34.794170, 31.461340, 33.869320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513489, 32.067226, 34.009491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343132, 31.957390, 33.664654>,  <34.240917, 31.891487, 33.457752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.343132, 31.957390, 33.664654>,  <34.513489, 32.067226, 34.009491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343132, 31.957390, 33.664654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900639, 0.219629, 0.374982,
		0.086374, 0.936142, -0.340847,
		-0.425896, -0.274592, -0.862097,
		34.215363, 31.875011, 33.406025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064205, 32.547134, 33.854351>,  <34.513489, 32.067226, 34.009491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064205, 32.547134, 33.854351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904083, 32.244045, 33.648201>,  <33.808010, 32.062191, 33.524509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904083, 32.244045, 33.648201>,  <34.064205, 32.547134, 33.854351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904083, 32.244045, 33.648201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904669, 0.237133, 0.354036,
		-0.146048, 0.607969, -0.780412,
		-0.400304, -0.757721, -0.515378,
		33.783993, 32.016727, 33.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480057, 32.752377, 33.481827>,  <34.064205, 32.547134, 33.854351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480057, 32.752377, 33.481827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425030, 32.356636, 33.500858>,  <33.392014, 32.119194, 33.512276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425030, 32.356636, 33.500858>,  <33.480057, 32.752377, 33.481827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425030, 32.356636, 33.500858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890485, 0.144570, 0.431434,
		-0.433716, 0.016988, -0.900889,
		-0.137571, -0.989349, 0.047574,
		33.383759, 32.059830, 33.515129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853176, 32.630608, 33.143280>,  <33.480057, 32.752377, 33.481827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853176, 32.630608, 33.143280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944950, 32.360592, 33.423759>,  <33.000015, 32.198582, 33.592049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.944950, 32.360592, 33.423759>,  <32.853176, 32.630608, 33.143280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944950, 32.360592, 33.423759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867448, 0.184943, 0.461877,
		-0.441466, -0.714227, -0.543127,
		0.229438, -0.675037, 0.701201,
		33.013783, 32.158081, 33.634121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055614, 32.856884, 32.368023>,  <32.853176, 32.630608, 33.143280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055614, 32.856884, 32.368023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147331, 33.218876, 32.511372>,  <33.202362, 33.436073, 32.597382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147331, 33.218876, 32.511372>,  <33.055614, 32.856884, 32.368023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147331, 33.218876, 32.511372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374442, 0.257836, -0.890682,
		-0.898452, 0.338420, -0.279743,
		0.229296, 0.904982, 0.358372,
		33.216122, 33.490372, 32.618885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785328, 33.387684, 31.935230>,  <33.055614, 32.856884, 32.368023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785328, 33.387684, 31.935230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116241, 33.540634, 32.099857>,  <33.314789, 33.632404, 32.198635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116241, 33.540634, 32.099857>,  <32.785328, 33.387684, 31.935230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116241, 33.540634, 32.099857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295966, 0.326044, -0.897830,
		-0.477497, 0.864572, 0.156562,
		0.827285, 0.382374, 0.411569,
		33.364426, 33.655346, 32.223328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875515, 33.995235, 31.568087>,  <32.785328, 33.387684, 31.935230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875515, 33.995235, 31.568087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238953, 33.928196, 31.721123>,  <33.457016, 33.887974, 31.812944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238953, 33.928196, 31.721123>,  <32.875515, 33.995235, 31.568087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238953, 33.928196, 31.721123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417611, 0.382070, -0.824393,
		-0.008012, 0.908809, 0.417135,
		0.908591, -0.167595, 0.382590,
		33.511528, 33.877918, 31.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267101, 34.536556, 31.485140>,  <32.875515, 33.995235, 31.568087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267101, 34.536556, 31.485140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544132, 34.251431, 31.529381>,  <33.710350, 34.080353, 31.555925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.544132, 34.251431, 31.529381>,  <33.267101, 34.536556, 31.485140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544132, 34.251431, 31.529381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580971, 0.460321, -0.671251,
		0.427566, 0.529147, 0.732932,
		0.692575, -0.712817, 0.110602,
		33.751904, 34.037586, 31.562561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817436, 34.909256, 31.688725>,  <33.267101, 34.536556, 31.485140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817436, 34.909256, 31.688725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945309, 34.570587, 31.518568>,  <34.022034, 34.367386, 31.416475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945309, 34.570587, 31.518568>,  <33.817436, 34.909256, 31.688725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945309, 34.570587, 31.518568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613038, 0.527136, -0.588482,
		0.722488, -0.072653, 0.687556,
		0.319680, -0.846669, -0.425389,
		34.041214, 34.316586, 31.390951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540672, 34.982014, 31.556623>,  <33.817436, 34.909256, 31.688725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540672, 34.982014, 31.556623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463104, 34.677486, 31.309141>,  <34.416565, 34.494770, 31.160652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463104, 34.677486, 31.309141>,  <34.540672, 34.982014, 31.556623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463104, 34.677486, 31.309141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643910, 0.377031, -0.665753,
		0.740119, -0.527491, 0.417106,
		-0.193917, -0.761316, -0.618704,
		34.404930, 34.449093, 31.123529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205685, 34.574524, 31.423759>,  <34.540672, 34.982014, 31.556623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205685, 34.574524, 31.423759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938610, 34.505867, 31.134005>,  <34.778366, 34.464672, 30.960152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938610, 34.505867, 31.134005>,  <35.205685, 34.574524, 31.423759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938610, 34.505867, 31.134005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648390, 0.344017, -0.679149,
		0.365773, -0.923142, -0.118403,
		-0.667683, -0.171643, -0.724388,
		34.738304, 34.454376, 30.916689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590828, 34.354122, 30.924370>,  <35.205685, 34.574524, 31.423759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590828, 34.354122, 30.924370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258404, 34.419426, 30.711700>,  <35.058949, 34.458607, 30.584099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258404, 34.419426, 30.711700>,  <35.590828, 34.354122, 30.924370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258404, 34.419426, 30.711700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552729, 0.348706, -0.756898,
		0.061827, -0.922903, -0.380036,
		-0.831064, 0.163260, -0.531675,
		35.009083, 34.468403, 30.552198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615551, 33.995899, 30.290375>,  <35.590828, 34.354122, 30.924370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615551, 33.995899, 30.290375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363522, 34.302139, 30.238432>,  <35.212303, 34.485886, 30.207266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363522, 34.302139, 30.238432>,  <35.615551, 33.995899, 30.290375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363522, 34.302139, 30.238432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453400, 0.226939, -0.861932,
		-0.630427, -0.601957, -0.490112,
		-0.630072, 0.765602, -0.129859,
		35.174500, 34.531818, 30.199474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492332, 34.050259, 29.563583>,  <35.615551, 33.995899, 30.290375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492332, 34.050259, 29.563583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352158, 34.406639, 29.679102>,  <35.268055, 34.620468, 29.748413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.352158, 34.406639, 29.679102>,  <35.492332, 34.050259, 29.563583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352158, 34.406639, 29.679102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361517, 0.413129, -0.835841,
		-0.864003, -0.188502, -0.466868,
		-0.350434, 0.890950, 0.288798,
		35.247028, 34.673923, 29.765741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231007, 34.277431, 29.061956>,  <35.492332, 34.050259, 29.563583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231007, 34.277431, 29.061956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313320, 34.611897, 29.265320>,  <35.362709, 34.812576, 29.387339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313320, 34.611897, 29.265320>,  <35.231007, 34.277431, 29.061956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313320, 34.611897, 29.265320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386815, 0.407717, -0.827128,
		-0.898903, 0.366871, -0.239540,
		0.205785, 0.836165, 0.508410,
		35.375057, 34.862747, 29.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144012, 34.818752, 28.575487>,  <35.231007, 34.277431, 29.061956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144012, 34.818752, 28.575487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349331, 34.991924, 28.871893>,  <35.472523, 35.095825, 29.049736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349331, 34.991924, 28.871893>,  <35.144012, 34.818752, 28.575487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349331, 34.991924, 28.871893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509719, 0.540862, -0.669070,
		-0.690444, 0.721141, 0.056952,
		0.513297, 0.432926, 0.741014,
		35.503319, 35.121803, 29.094196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111767, 35.665310, 28.518038>,  <35.144012, 34.818752, 28.575487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111767, 35.665310, 28.518038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443592, 35.564903, 28.717564>,  <35.642689, 35.504658, 28.837278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.443592, 35.564903, 28.717564>,  <35.111767, 35.665310, 28.518038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443592, 35.564903, 28.717564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557670, 0.418470, -0.716859,
		-0.028796, 0.872854, 0.487132,
		0.829563, -0.251016, 0.498815,
		35.692459, 35.489597, 28.867208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565742, 36.099739, 28.238165>,  <35.111767, 35.665310, 28.518038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565742, 36.099739, 28.238165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826118, 35.867367, 28.433636>,  <35.982342, 35.727943, 28.550919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826118, 35.867367, 28.433636>,  <35.565742, 36.099739, 28.238165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826118, 35.867367, 28.433636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702306, 0.216475, -0.678162,
		0.288177, 0.784641, 0.548901,
		0.650937, -0.580928, 0.488675,
		36.021400, 35.693089, 28.580238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181263, 36.455288, 28.383282>,  <35.565742, 36.099739, 28.238165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181263, 36.455288, 28.383282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273376, 36.066227, 28.371153>,  <36.328644, 35.832790, 28.363876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273376, 36.066227, 28.371153>,  <36.181263, 36.455288, 28.383282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273376, 36.066227, 28.371153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647471, 0.176407, -0.741392,
		0.726465, 0.151096, 0.670387,
		0.230282, -0.972651, -0.030323,
		36.342461, 35.774433, 28.362057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919601, 36.512936, 28.286879>,  <36.181263, 36.455288, 28.383282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919601, 36.512936, 28.286879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821617, 36.140182, 28.179859>,  <36.762825, 35.916531, 28.115648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821617, 36.140182, 28.179859>,  <36.919601, 36.512936, 28.286879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821617, 36.140182, 28.179859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782939, -0.027376, -0.621496,
		0.571839, -0.361717, 0.736316,
		-0.244963, -0.931886, -0.267548,
		36.748127, 35.860619, 28.099594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540764, 36.247662, 28.255886>,  <36.919601, 36.512936, 28.286879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540764, 36.247662, 28.255886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308849, 35.979271, 28.070999>,  <37.169701, 35.818237, 27.960066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308849, 35.979271, 28.070999>,  <37.540764, 36.247662, 28.255886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308849, 35.979271, 28.070999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776048, -0.281958, -0.564135,
		0.248192, -0.685781, 0.684182,
		-0.579784, -0.670972, -0.462219,
		37.134914, 35.777981, 27.932333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855339, 35.475964, 28.332361>,  <37.540764, 36.247662, 28.255886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855339, 35.475964, 28.332361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630272, 35.554325, 28.011106>,  <37.495232, 35.601341, 27.818354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.630272, 35.554325, 28.011106>,  <37.855339, 35.475964, 28.332361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630272, 35.554325, 28.011106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765662, -0.242829, -0.595647,
		-0.311714, -0.950082, -0.013364,
		-0.562669, 0.195903, -0.803135,
		37.461472, 35.613094, 27.770166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098110, 34.970627, 27.898100>,  <37.855339, 35.475964, 28.332361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098110, 34.970627, 27.898100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895626, 35.219452, 27.659174>,  <37.774136, 35.368748, 27.515820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895626, 35.219452, 27.659174>,  <38.098110, 34.970627, 27.898100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895626, 35.219452, 27.659174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650836, -0.178863, -0.737848,
		-0.565829, -0.762260, -0.314321,
		-0.506212, 0.622067, -0.597313,
		37.743763, 35.406071, 27.479980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160294, 34.730194, 27.179195>,  <38.098110, 34.970627, 27.898100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160294, 34.730194, 27.179195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074345, 35.118553, 27.136896>,  <38.022778, 35.351570, 27.111517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.074345, 35.118553, 27.136896>,  <38.160294, 34.730194, 27.179195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074345, 35.118553, 27.136896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723520, 0.085513, -0.684987,
		-0.656011, -0.223693, -0.720840,
		-0.214868, 0.970901, -0.105748,
		38.009884, 35.409824, 27.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494827, 34.745193, 26.501755>,  <38.160294, 34.730194, 27.179195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494827, 34.745193, 26.501755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389305, 35.121372, 26.587519>,  <38.325993, 35.347080, 26.638977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389305, 35.121372, 26.587519>,  <38.494827, 34.745193, 26.501755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389305, 35.121372, 26.587519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487257, 0.321769, -0.811816,
		-0.832457, -0.109691, -0.543123,
		-0.263809, 0.940443, 0.214411,
		38.310162, 35.403503, 26.651842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282150, 35.011856, 25.838259>,  <38.494827, 34.745193, 26.501755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282150, 35.011856, 25.838259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392124, 35.313297, 26.077087>,  <38.458107, 35.494164, 26.220385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392124, 35.313297, 26.077087>,  <38.282150, 35.011856, 25.838259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392124, 35.313297, 26.077087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656103, 0.306889, -0.689455,
		-0.702810, 0.581295, -0.410067,
		0.274931, 0.753602, 0.597074,
		38.474602, 35.539379, 26.256210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218342, 35.532825, 25.386045>,  <38.282150, 35.011856, 25.838259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218342, 35.532825, 25.386045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467125, 35.654942, 25.674479>,  <38.616394, 35.728210, 25.847538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467125, 35.654942, 25.674479>,  <38.218342, 35.532825, 25.386045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467125, 35.654942, 25.674479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592794, 0.418101, -0.688322,
		-0.511626, 0.855563, 0.079066,
		0.621960, 0.305294, 0.721083,
		38.653713, 35.746529, 25.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388256, 36.220840, 25.207504>,  <38.218342, 35.532825, 25.386045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388256, 36.220840, 25.207504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676605, 36.138523, 25.472229>,  <38.849613, 36.089134, 25.631063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676605, 36.138523, 25.472229>,  <38.388256, 36.220840, 25.207504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676605, 36.138523, 25.472229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646468, 0.543894, -0.535031,
		-0.249849, 0.813528, 0.525117,
		0.720871, -0.205794, 0.661811,
		38.892868, 36.076786, 25.670773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727177, 36.926003, 25.392954>,  <38.388256, 36.220840, 25.207504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727177, 36.926003, 25.392954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967766, 36.615627, 25.469009>,  <39.112122, 36.429401, 25.514643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967766, 36.615627, 25.469009>,  <38.727177, 36.926003, 25.392954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967766, 36.615627, 25.469009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738030, 0.448575, -0.504075,
		0.305838, 0.443516, 0.842470,
		0.601477, -0.775934, 0.190137,
		39.148209, 36.382847, 25.526051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373978, 37.168568, 25.649113>,  <38.727177, 36.926003, 25.392954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373978, 37.168568, 25.649113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432762, 36.808407, 25.485321>,  <39.468033, 36.592308, 25.387047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432762, 36.808407, 25.485321>,  <39.373978, 37.168568, 25.649113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432762, 36.808407, 25.485321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738824, 0.375175, -0.559806,
		0.657678, -0.220262, 0.720378,
		0.146963, -0.900405, -0.409479,
		39.476852, 36.538284, 25.362476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070278, 37.115566, 25.457327>,  <39.373978, 37.168568, 25.649113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070278, 37.115566, 25.457327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942329, 36.791805, 25.260332>,  <39.865559, 36.597549, 25.142136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942329, 36.791805, 25.260332>,  <40.070278, 37.115566, 25.457327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942329, 36.791805, 25.260332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769968, 0.080828, -0.632942,
		0.552114, -0.581659, 0.597363,
		-0.319873, -0.809407, -0.492485,
		39.846367, 36.548985, 25.112587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641453, 36.756634, 25.931561>,  <40.070278, 37.115566, 25.457327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641453, 36.756634, 25.931561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.928238, 36.910397, 26.164179>,  <41.100307, 37.002655, 26.303751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.928238, 36.910397, 26.164179>,  <40.641453, 36.756634, 25.931561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928238, 36.910397, 26.164179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595862, -0.095054, 0.797442,
		0.361820, -0.918257, 0.160903,
		0.716962, 0.384406, 0.581547,
		41.143326, 37.025719, 26.338642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571365, 36.423275, 26.534966>,  <40.641453, 36.756634, 25.931561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571365, 36.423275, 26.534966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.760567, 36.760159, 26.638468>,  <40.874088, 36.962288, 26.700569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.760567, 36.760159, 26.638468>,  <40.571365, 36.423275, 26.534966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760567, 36.760159, 26.638468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479697, -0.000169, 0.877434,
		0.739027, -0.539151, 0.403926,
		0.473001, 0.842209, 0.258754,
		40.902466, 37.012821, 26.716093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068188, 36.261055, 27.193064>,  <40.571365, 36.423275, 26.534966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068188, 36.261055, 27.193064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.958569, 36.644562, 27.162970>,  <40.892796, 36.874668, 27.144913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.958569, 36.644562, 27.162970>,  <41.068188, 36.261055, 27.193064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958569, 36.644562, 27.162970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400895, -0.042779, 0.915125,
		0.874174, 0.280948, 0.396089,
		-0.274047, 0.958769, -0.075234,
		40.876354, 36.932194, 27.140400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346668, 36.596725, 27.868578>,  <41.068188, 36.261055, 27.193064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346668, 36.596725, 27.868578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056717, 36.813446, 27.698400>,  <40.882748, 36.943478, 27.596294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.056717, 36.813446, 27.698400>,  <41.346668, 36.596725, 27.868578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056717, 36.813446, 27.698400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419627, 0.142500, 0.896441,
		0.546321, 0.828338, 0.124061,
		-0.724877, 0.541804, -0.425443,
		40.839252, 36.975986, 27.570768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220390, 37.080383, 28.345701>,  <41.346668, 36.596725, 27.868578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220390, 37.080383, 28.345701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897884, 37.120628, 28.112526>,  <40.704380, 37.144775, 27.972622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897884, 37.120628, 28.112526>,  <41.220390, 37.080383, 28.345701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897884, 37.120628, 28.112526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558666, 0.194500, 0.806264,
		0.194500, 0.975729, -0.100611,
		-0.806264, 0.100611, -0.582937,
		40.656006, 37.150810, 27.937645>
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
