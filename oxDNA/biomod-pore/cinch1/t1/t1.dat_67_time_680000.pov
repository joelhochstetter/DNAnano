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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.279823, 32.936668, 23.502171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585709, 33.194332, 23.495632>,  <42.769241, 33.348930, 23.491709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585709, 33.194332, 23.495632>,  <42.279823, 32.936668, 23.502171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585709, 33.194332, 23.495632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641070, -0.757987, 0.120353,
		0.065138, -0.102513, -0.992597,
		0.764713, 0.644163, -0.016344,
		42.815125, 33.387581, 23.490728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722130, 32.780727, 22.949507>,  <42.279823, 32.936668, 23.502171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722130, 32.780727, 22.949507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926888, 32.954720, 23.245819>,  <43.049744, 33.059116, 23.423607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926888, 32.954720, 23.245819>,  <42.722130, 32.780727, 22.949507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926888, 32.954720, 23.245819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847746, -0.395217, -0.353739,
		0.138899, 0.809071, -0.571062,
		0.511893, 0.434981, 0.740781,
		43.080456, 33.085213, 23.468054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129059, 33.328251, 22.794533>,  <42.722130, 32.780727, 22.949507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129059, 33.328251, 22.794533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278915, 33.134724, 23.110901>,  <43.368832, 33.018608, 23.300722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278915, 33.134724, 23.110901>,  <43.129059, 33.328251, 22.794533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278915, 33.134724, 23.110901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705820, -0.404327, -0.581668,
		0.601215, 0.776168, 0.190012,
		0.374645, -0.483821, 0.790922,
		43.391308, 32.989578, 23.348177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509357, 33.742874, 22.744240>,  <43.129059, 33.328251, 22.794533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509357, 33.742874, 22.744240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135841, 33.600853, 22.726460>,  <41.911732, 33.515640, 22.715792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135841, 33.600853, 22.726460>,  <42.509357, 33.742874, 22.744240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135841, 33.600853, 22.726460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347295, -0.929204, 0.126356,
		-0.086166, 0.102553, 0.990989,
		-0.933789, -0.355053, -0.044449,
		41.855705, 33.494335, 22.713125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028576, 34.395622, 22.623682>,  <42.509357, 33.742874, 22.744240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028576, 34.395622, 22.623682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085827, 34.785446, 22.554688>,  <42.120178, 35.019341, 22.513290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085827, 34.785446, 22.554688>,  <42.028576, 34.395622, 22.623682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085827, 34.785446, 22.554688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650540, -0.038704, -0.758485,
		-0.745864, 0.220768, 0.628449,
		0.143126, 0.974558, -0.172486,
		42.128765, 35.077812, 22.502941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415154, 33.960781, 22.914425>,  <42.028576, 34.395622, 22.623682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415154, 33.960781, 22.914425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114700, 33.844646, 23.151573>,  <40.934425, 33.774963, 23.293861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114700, 33.844646, 23.151573>,  <41.415154, 33.960781, 22.914425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114700, 33.844646, 23.151573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534025, -0.795211, 0.287153,
		0.388085, 0.532299, 0.752362,
		-0.751138, -0.290340, 0.592870,
		40.889359, 33.757545, 23.329433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721493, 33.764645, 23.590824>,  <41.415154, 33.960781, 22.914425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721493, 33.764645, 23.590824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373081, 33.574055, 23.638622>,  <41.164032, 33.459702, 23.667301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373081, 33.574055, 23.638622>,  <41.721493, 33.764645, 23.590824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373081, 33.574055, 23.638622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491047, -0.851157, 0.185487,
		0.013329, 0.220242, 0.975354,
		-0.871031, -0.476472, 0.119494,
		41.111771, 33.431114, 23.674471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938095, 33.257179, 24.045044>,  <41.721493, 33.764645, 23.590824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938095, 33.257179, 24.045044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596493, 33.119381, 23.889095>,  <41.391533, 33.036701, 23.795527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596493, 33.119381, 23.889095>,  <41.938095, 33.257179, 24.045044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596493, 33.119381, 23.889095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360616, -0.932106, 0.033692,
		-0.375009, -0.111821, 0.920252,
		-0.854005, -0.344492, -0.389873,
		41.340290, 33.016033, 23.772133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756001, 32.582458, 24.368597>,  <41.938095, 33.257179, 24.045044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756001, 32.582458, 24.368597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558395, 32.567692, 24.021130>,  <41.439831, 32.558834, 23.812649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558395, 32.567692, 24.021130>,  <41.756001, 32.582458, 24.368597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558395, 32.567692, 24.021130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278230, -0.953273, -0.117724,
		-0.823733, -0.299847, 0.481202,
		-0.494016, -0.036912, -0.868669,
		41.410191, 32.556618, 23.760529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489693, 31.920670, 24.464029>,  <41.756001, 32.582458, 24.368597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489693, 31.920670, 24.464029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452435, 32.017796, 24.077793>,  <41.430080, 32.076073, 23.846052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452435, 32.017796, 24.077793>,  <41.489693, 31.920670, 24.464029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452435, 32.017796, 24.077793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119747, -0.960034, -0.252971,
		-0.988426, -0.139189, 0.060343,
		-0.093142, 0.242817, -0.965590,
		41.424492, 32.090641, 23.788116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156780, 31.341192, 24.148998>,  <41.489693, 31.920670, 24.464029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156780, 31.341192, 24.148998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332546, 31.523914, 23.839615>,  <41.438007, 31.633549, 23.653984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332546, 31.523914, 23.839615>,  <41.156780, 31.341192, 24.148998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332546, 31.523914, 23.839615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101481, -0.880775, -0.462533,
		-0.892532, 0.124754, -0.433386,
		0.439418, 0.456806, -0.773460,
		41.464371, 31.660955, 23.607576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076191, 30.893845, 23.633574>,  <41.156780, 31.341192, 24.148998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076191, 30.893845, 23.633574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327545, 31.155537, 23.465233>,  <41.478359, 31.312551, 23.364229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327545, 31.155537, 23.465233>,  <41.076191, 30.893845, 23.633574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327545, 31.155537, 23.465233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253403, -0.683651, -0.684403,
		-0.735472, 0.323424, -0.595380,
		0.628385, 0.654231, -0.420850,
		41.516060, 31.351807, 23.338978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867863, 30.972603, 22.909094>,  <41.076191, 30.893845, 23.633574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867863, 30.972603, 22.909094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258217, 31.049553, 22.950359>,  <41.492428, 31.095724, 22.975119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258217, 31.049553, 22.950359>,  <40.867863, 30.972603, 22.909094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258217, 31.049553, 22.950359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203411, -0.629873, -0.749589,
		-0.079223, 0.752496, -0.653814,
		0.975883, 0.192377, 0.103165,
		41.550983, 31.107265, 22.981310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258621, 31.151814, 22.146761>,  <40.867863, 30.972603, 22.909094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258621, 31.151814, 22.146761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530895, 31.040131, 22.417675>,  <41.694260, 30.973122, 22.580223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530895, 31.040131, 22.417675>,  <41.258621, 31.151814, 22.146761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530895, 31.040131, 22.417675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336639, -0.701912, -0.627689,
		0.650649, 0.655258, -0.383789,
		0.680684, -0.279207, 0.677284,
		41.735100, 30.956369, 22.620861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811737, 31.004122, 21.696476>,  <41.258621, 31.151814, 22.146761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811737, 31.004122, 21.696476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895222, 30.828865, 22.046211>,  <41.945312, 30.723711, 22.256052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895222, 30.828865, 22.046211>,  <41.811737, 31.004122, 21.696476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895222, 30.828865, 22.046211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384820, -0.785115, -0.485291,
		0.899085, 0.437748, 0.004745,
		0.208710, -0.438144, 0.874340,
		41.957836, 30.697422, 22.308514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590088, 30.725853, 21.641998>,  <41.811737, 31.004122, 21.696476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590088, 30.725853, 21.641998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372414, 30.527332, 21.912567>,  <42.241810, 30.408220, 22.074907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372414, 30.527332, 21.912567>,  <42.590088, 30.725853, 21.641998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372414, 30.527332, 21.912567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296735, -0.868005, -0.398141,
		0.784733, -0.015947, 0.619628,
		-0.544189, -0.496300, 0.676420,
		42.209156, 30.378443, 22.115494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778950, 30.080439, 21.464048>,  <42.590088, 30.725853, 21.641998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778950, 30.080439, 21.464048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482841, 30.002361, 21.721386>,  <42.305176, 29.955515, 21.875790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482841, 30.002361, 21.721386>,  <42.778950, 30.080439, 21.464048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482841, 30.002361, 21.721386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131938, -0.896140, -0.423705,
		0.659231, -0.398540, 0.637637,
		-0.740275, -0.195191, 0.643345,
		42.260757, 29.943804, 21.914389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888844, 29.459076, 21.630630>,  <42.778950, 30.080439, 21.464048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888844, 29.459076, 21.630630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519463, 29.500271, 21.778484>,  <42.297832, 29.524988, 21.867197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519463, 29.500271, 21.778484>,  <42.888844, 29.459076, 21.630630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519463, 29.500271, 21.778484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157293, -0.980252, -0.119850,
		0.349992, -0.168817, 0.921416,
		-0.923453, 0.102986, 0.369634,
		42.242428, 29.531166, 21.889374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742455, 28.961498, 22.184622>,  <42.888844, 29.459076, 21.630630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742455, 28.961498, 22.184622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393929, 29.052109, 22.010498>,  <42.184814, 29.106476, 21.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393929, 29.052109, 22.010498>,  <42.742455, 28.961498, 22.184622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393929, 29.052109, 22.010498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086894, -0.944281, -0.317464,
		-0.482966, -0.238786, 0.842452,
		-0.871317, 0.226528, -0.435307,
		42.132534, 29.120068, 21.879906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267902, 28.449057, 22.463179>,  <42.742455, 28.961498, 22.184622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267902, 28.449057, 22.463179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120617, 28.597130, 22.122032>,  <42.032246, 28.685974, 21.917345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120617, 28.597130, 22.122032>,  <42.267902, 28.449057, 22.463179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120617, 28.597130, 22.122032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098414, -0.927682, -0.360168,
		-0.924520, -0.048683, 0.378012,
		-0.368209, 0.370185, -0.852869,
		42.010151, 28.708185, 21.866173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861378, 27.881437, 22.255390>,  <42.267902, 28.449057, 22.463179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861378, 27.881437, 22.255390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859066, 28.108696, 21.926228>,  <41.857681, 28.245050, 21.728729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859066, 28.108696, 21.926228>,  <41.861378, 27.881437, 22.255390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859066, 28.108696, 21.926228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177623, -0.810417, -0.558277,
		-0.984082, 0.142943, 0.105598,
		-0.005777, 0.568147, -0.822907,
		41.857334, 28.279140, 21.679356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157421, 27.762720, 21.988262>,  <41.861378, 27.881437, 22.255390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157421, 27.762720, 21.988262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358551, 27.895687, 21.669098>,  <41.479229, 27.975468, 21.477600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358551, 27.895687, 21.669098>,  <41.157421, 27.762720, 21.988262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358551, 27.895687, 21.669098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207523, -0.849672, -0.484760,
		-0.839106, 0.409335, -0.358253,
		0.502827, 0.332419, -0.797911,
		41.509399, 27.995413, 21.429724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709412, 27.858353, 21.389202>,  <41.157421, 27.762720, 21.988262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709412, 27.858353, 21.389202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084843, 27.805813, 21.261570>,  <41.310101, 27.774288, 21.184990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084843, 27.805813, 21.261570>,  <40.709412, 27.858353, 21.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084843, 27.805813, 21.261570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289878, -0.801767, -0.522629,
		-0.187182, 0.583025, -0.790598,
		0.938581, -0.131350, -0.319082,
		41.366417, 27.766407, 21.165846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656719, 27.750727, 20.664667>,  <40.709412, 27.858353, 21.389202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656719, 27.750727, 20.664667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010780, 27.607372, 20.783375>,  <41.223217, 27.521360, 20.854599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010780, 27.607372, 20.783375>,  <40.656719, 27.750727, 20.664667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010780, 27.607372, 20.783375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232514, -0.893123, -0.385056,
		0.403050, 0.271829, -0.873876,
		0.885149, -0.358385, 0.296769,
		41.276325, 27.499857, 20.872406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935684, 27.362267, 20.077461>,  <40.656719, 27.750727, 20.664667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935684, 27.362267, 20.077461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189907, 27.225342, 20.354267>,  <41.342442, 27.143187, 20.520351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189907, 27.225342, 20.354267>,  <40.935684, 27.362267, 20.077461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189907, 27.225342, 20.354267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239227, -0.939535, -0.245041,
		0.734053, -0.009810, -0.679021,
		0.635560, -0.342313, 0.692016,
		41.380573, 27.122648, 20.561872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463451, 26.964766, 19.748051>,  <40.935684, 27.362267, 20.077461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463451, 26.964766, 19.748051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438271, 26.851086, 20.130730>,  <41.423161, 26.782877, 20.360336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438271, 26.851086, 20.130730>,  <41.463451, 26.964766, 19.748051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438271, 26.851086, 20.130730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206367, -0.934173, -0.291090,
		0.976447, -0.215755, 0.000159,
		-0.062953, -0.284201, 0.956695,
		41.419384, 26.765825, 20.417738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882729, 26.336422, 19.980536>,  <41.463451, 26.964766, 19.748051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882729, 26.336422, 19.980536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542892, 26.367752, 20.189171>,  <41.338989, 26.386549, 20.314352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542892, 26.367752, 20.189171>,  <41.882729, 26.336422, 19.980536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542892, 26.367752, 20.189171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292403, -0.892976, -0.342190,
		0.438965, -0.443237, 0.781569,
		-0.849594, 0.078324, 0.521589,
		41.288013, 26.391249, 20.345648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693108, 25.768944, 20.433355>,  <41.882729, 26.336422, 19.980536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693108, 25.768944, 20.433355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376053, 25.960564, 20.282494>,  <41.185822, 26.075535, 20.191977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376053, 25.960564, 20.282494>,  <41.693108, 25.768944, 20.433355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376053, 25.960564, 20.282494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291078, -0.840867, -0.456306,
		-0.535730, -0.251902, 0.805940,
		-0.792633, 0.479048, -0.377155,
		41.138264, 26.104279, 20.169348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002968, 25.384903, 20.550611>,  <41.693108, 25.768944, 20.433355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002968, 25.384903, 20.550611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994514, 25.606602, 20.217777>,  <40.989441, 25.739620, 20.018076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994514, 25.606602, 20.217777>,  <41.002968, 25.384903, 20.550611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994514, 25.606602, 20.217777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380924, -0.773958, -0.505851,
		-0.924365, 0.306271, 0.227482,
		-0.021134, 0.554244, -0.832086,
		40.988174, 25.772875, 19.968151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308720, 25.563084, 20.473732>,  <41.002968, 25.384903, 20.550611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308720, 25.563084, 20.473732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536137, 25.503052, 20.150192>,  <40.672585, 25.467031, 19.956068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536137, 25.503052, 20.150192>,  <40.308720, 25.563084, 20.473732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536137, 25.503052, 20.150192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721133, -0.564082, -0.402218,
		-0.395892, 0.811965, -0.428931,
		0.568539, -0.150081, -0.808851,
		40.706699, 25.458027, 19.907537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093422, 25.936733, 19.802471>,  <40.308720, 25.563084, 20.473732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093422, 25.936733, 19.802471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252464, 25.569752, 19.807850>,  <40.347889, 25.349562, 19.811077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252464, 25.569752, 19.807850>,  <40.093422, 25.936733, 19.802471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252464, 25.569752, 19.807850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871007, -0.382008, -0.308895,
		0.288535, 0.111105, -0.951001,
		0.397610, -0.917456, 0.013449,
		40.371746, 25.294516, 19.811884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610332, 25.338131, 20.083136>,  <40.093422, 25.936733, 19.802471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610332, 25.338131, 20.083136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423313, 25.181030, 19.766365>,  <39.311100, 25.086769, 19.576303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423313, 25.181030, 19.766365>,  <39.610332, 25.338131, 20.083136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423313, 25.181030, 19.766365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133562, -0.916978, 0.375916,
		-0.873818, 0.069988, 0.481189,
		-0.467550, -0.392751, -0.791924,
		39.283047, 25.063206, 19.528788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036247, 24.766668, 19.932228>,  <39.610332, 25.338131, 20.083136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036247, 24.766668, 19.932228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830482, 24.623165, 20.243786>,  <38.707024, 24.537064, 20.430719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830482, 24.623165, 20.243786>,  <39.036247, 24.766668, 19.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830482, 24.623165, 20.243786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153569, 0.855061, 0.495265,
		-0.843683, 0.374383, -0.384756,
		-0.514409, -0.358760, 0.778893,
		38.676159, 24.515537, 20.477453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893532, 25.390898, 20.364691>,  <39.036247, 24.766668, 19.932228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893532, 25.390898, 20.364691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665833, 25.170010, 20.608334>,  <38.529213, 25.037477, 20.754519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665833, 25.170010, 20.608334>,  <38.893532, 25.390898, 20.364691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665833, 25.170010, 20.608334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341968, 0.832761, 0.435393,
		-0.747672, 0.039552, -0.662889,
		-0.569248, -0.552219, 0.609107,
		38.495056, 25.004345, 20.791065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365707, 25.875479, 20.571640>,  <38.893532, 25.390898, 20.364691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365707, 25.875479, 20.571640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345600, 25.563297, 20.820915>,  <38.333534, 25.375988, 20.970480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345600, 25.563297, 20.820915>,  <38.365707, 25.875479, 20.571640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345600, 25.563297, 20.820915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184982, 0.620456, 0.762113,
		-0.981455, -0.076965, -0.175562,
		-0.050272, -0.780455, 0.623187,
		38.330517, 25.329161, 21.007872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680576, 25.740746, 20.926336>,  <38.365707, 25.875479, 20.571640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680576, 25.740746, 20.926336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971970, 25.605717, 21.164783>,  <38.146805, 25.524700, 21.307852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971970, 25.605717, 21.164783>,  <37.680576, 25.740746, 20.926336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971970, 25.605717, 21.164783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241156, 0.688106, 0.684364,
		-0.641216, -0.642304, 0.419865,
		0.728482, -0.337572, 0.596120,
		38.190514, 25.504444, 21.343620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436413, 25.773170, 21.612101>,  <37.680576, 25.740746, 20.926336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436413, 25.773170, 21.612101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836182, 25.786732, 21.611145>,  <38.076042, 25.794868, 21.610571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836182, 25.786732, 21.611145>,  <37.436413, 25.773170, 21.612101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836182, 25.786732, 21.611145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024817, 0.775972, 0.630278,
		0.023224, -0.629855, 0.776365,
		0.999422, 0.033905, -0.002390,
		38.136009, 25.796904, 21.610428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587231, 25.797306, 22.351185>,  <37.436413, 25.773170, 21.612101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587231, 25.797306, 22.351185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914196, 25.936089, 22.167252>,  <38.110374, 26.019358, 22.056890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914196, 25.936089, 22.167252>,  <37.587231, 25.797306, 22.351185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914196, 25.936089, 22.167252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048944, 0.753544, 0.655573,
		0.573961, -0.558384, 0.598979,
		0.817418, 0.346957, -0.459834,
		38.159420, 26.040176, 22.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912731, 25.998251, 22.863611>,  <37.587231, 25.797306, 22.351185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912731, 25.998251, 22.863611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113892, 26.206062, 22.587299>,  <38.234589, 26.330750, 22.421513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113892, 26.206062, 22.587299>,  <37.912731, 25.998251, 22.863611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113892, 26.206062, 22.587299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007699, 0.796473, 0.604624,
		0.864307, -0.309387, 0.396551,
		0.502905, 0.519528, -0.690780,
		38.264763, 26.361921, 22.380066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476940, 26.372345, 23.207541>,  <37.912731, 25.998251, 22.863611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476940, 26.372345, 23.207541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473061, 26.575161, 22.862793>,  <38.470734, 26.696850, 22.655945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473061, 26.575161, 22.862793>,  <38.476940, 26.372345, 23.207541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473061, 26.575161, 22.862793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226150, 0.840689, 0.492035,
		0.974044, -0.190138, -0.122824,
		-0.009702, 0.507041, -0.861867,
		38.470150, 26.727274, 22.604233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116615, 26.688858, 23.149172>,  <38.476940, 26.372345, 23.207541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116615, 26.688858, 23.149172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857250, 26.876411, 22.909267>,  <38.701630, 26.988943, 22.765326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857250, 26.876411, 22.909267>,  <39.116615, 26.688858, 23.149172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857250, 26.876411, 22.909267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201100, 0.865330, 0.459089,
		0.734249, 0.177067, -0.655382,
		-0.648412, 0.468883, -0.599759,
		38.662727, 27.017076, 22.729340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548405, 27.258348, 22.838184>,  <39.116615, 26.688858, 23.149172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548405, 27.258348, 22.838184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164703, 27.361301, 22.791557>,  <38.934483, 27.423073, 22.763580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164703, 27.361301, 22.791557>,  <39.548405, 27.258348, 22.838184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164703, 27.361301, 22.791557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203748, 0.915948, 0.345726,
		0.195754, 0.307889, -0.931067,
		-0.959253, 0.257380, -0.116569,
		38.876926, 27.438515, 22.756586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618221, 27.959984, 22.465036>,  <39.548405, 27.258348, 22.838184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618221, 27.959984, 22.465036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253307, 27.935173, 22.626972>,  <39.034359, 27.920286, 22.724134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253307, 27.935173, 22.626972>,  <39.618221, 27.959984, 22.465036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253307, 27.935173, 22.626972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062274, 0.955966, 0.286793,
		-0.404803, 0.286847, -0.868247,
		-0.912281, -0.062025, 0.404841,
		38.979622, 27.916565, 22.748425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214211, 28.631292, 22.261341>,  <39.618221, 27.959984, 22.465036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214211, 28.631292, 22.261341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035080, 28.471161, 22.581139>,  <38.927601, 28.375082, 22.773016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035080, 28.471161, 22.581139>,  <39.214211, 28.631292, 22.261341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035080, 28.471161, 22.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109714, 0.912012, 0.395217,
		-0.887363, 0.089273, -0.452346,
		-0.447828, -0.400329, 0.799491,
		38.900730, 28.351063, 22.820986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681885, 29.092060, 22.341808>,  <39.214211, 28.631292, 22.261341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681885, 29.092060, 22.341808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722958, 28.916687, 22.698959>,  <38.747601, 28.811464, 22.913250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722958, 28.916687, 22.698959>,  <38.681885, 29.092060, 22.341808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722958, 28.916687, 22.698959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038699, 0.895184, 0.444013,
		-0.993961, -0.080146, 0.074955,
		0.102685, -0.438431, 0.892880,
		38.753761, 28.785158, 22.966824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227718, 29.415916, 22.688000>,  <38.681885, 29.092060, 22.341808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227718, 29.415916, 22.688000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477497, 29.264408, 22.961231>,  <38.627365, 29.173502, 23.125170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477497, 29.264408, 22.961231>,  <38.227718, 29.415916, 22.688000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477497, 29.264408, 22.961231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166021, 0.790195, 0.589940,
		-0.763219, -0.481791, 0.430550,
		0.624446, -0.378773, 0.683080,
		38.664829, 29.150776, 23.166155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815819, 29.523420, 23.262314>,  <38.227718, 29.415916, 22.688000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815819, 29.523420, 23.262314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198875, 29.482861, 23.370117>,  <38.428711, 29.458525, 23.434799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198875, 29.482861, 23.370117>,  <37.815819, 29.523420, 23.262314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198875, 29.482861, 23.370117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116243, 0.720165, 0.683995,
		-0.263449, -0.686352, 0.677875,
		0.957644, -0.101400, 0.269511,
		38.486168, 29.452440, 23.450970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873970, 29.643534, 24.035637>,  <37.815819, 29.523420, 23.262314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873970, 29.643534, 24.035637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255505, 29.690655, 23.925137>,  <38.484425, 29.718927, 23.858837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255505, 29.690655, 23.925137>,  <37.873970, 29.643534, 24.035637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255505, 29.690655, 23.925137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078624, 0.789816, 0.608284,
		0.289844, -0.601925, 0.744095,
		0.953839, 0.117803, -0.276249,
		38.541656, 29.725996, 23.842262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216221, 29.756924, 24.699289>,  <37.873970, 29.643534, 24.035637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216221, 29.756924, 24.699289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459480, 29.889481, 24.410751>,  <38.605434, 29.969015, 24.237629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459480, 29.889481, 24.410751>,  <38.216221, 29.756924, 24.699289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459480, 29.889481, 24.410751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013793, 0.904146, 0.427002,
		0.793705, -0.269629, 0.545282,
		0.608146, 0.331392, -0.721344,
		38.641922, 29.988899, 24.194347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767326, 30.200636, 25.005938>,  <38.216221, 29.756924, 24.699289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767326, 30.200636, 25.005938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752544, 30.329967, 24.627712>,  <38.743675, 30.407566, 24.400776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752544, 30.329967, 24.627712>,  <38.767326, 30.200636, 25.005938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752544, 30.329967, 24.627712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077493, 0.944289, 0.319864,
		0.996308, -0.061454, -0.059953,
		-0.036956, 0.323329, -0.945565,
		38.741459, 30.426966, 24.344044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174274, 30.862547, 24.997633>,  <38.767326, 30.200636, 25.005938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174274, 30.862547, 24.997633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967281, 30.878258, 24.655716>,  <38.843086, 30.887684, 24.450565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967281, 30.878258, 24.655716>,  <39.174274, 30.862547, 24.997633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967281, 30.878258, 24.655716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062508, 0.998012, 0.008017,
		0.853409, -0.049283, -0.518907,
		-0.517481, 0.039278, -0.854793,
		38.812038, 30.890041, 24.399279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582016, 31.259922, 24.426447>,  <39.174274, 30.862547, 24.997633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582016, 31.259922, 24.426447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191753, 31.299389, 24.348103>,  <38.957596, 31.323069, 24.301096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191753, 31.299389, 24.348103>,  <39.582016, 31.259922, 24.426447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191753, 31.299389, 24.348103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115952, 0.990122, -0.078827,
		0.186147, -0.099619, -0.977459,
		-0.975656, 0.098665, -0.195859,
		38.899055, 31.328989, 24.289345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554478, 31.825687, 23.845428>,  <39.582016, 31.259922, 24.426447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554478, 31.825687, 23.845428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176533, 31.785881, 23.970222>,  <38.949764, 31.761997, 24.045099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176533, 31.785881, 23.970222>,  <39.554478, 31.825687, 23.845428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176533, 31.785881, 23.970222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176036, 0.957697, -0.227658,
		-0.276130, -0.270026, -0.922409,
		-0.944862, -0.099514, 0.311983,
		38.893074, 31.756027, 24.063818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154922, 32.166889, 23.343830>,  <39.554478, 31.825687, 23.845428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154922, 32.166889, 23.343830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941048, 32.172001, 23.681812>,  <38.812721, 32.175068, 23.884602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941048, 32.172001, 23.681812>,  <39.154922, 32.166889, 23.343830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941048, 32.172001, 23.681812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169094, 0.978046, -0.121794,
		-0.827960, -0.207998, -0.520787,
		-0.534686, 0.012778, 0.844954,
		38.780643, 32.175835, 23.935299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593369, 32.785858, 23.283812>,  <39.154922, 32.166889, 23.343830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593369, 32.785858, 23.283812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611641, 32.695084, 23.672947>,  <38.622604, 32.640617, 23.906427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611641, 32.695084, 23.672947>,  <38.593369, 32.785858, 23.283812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611641, 32.695084, 23.672947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218693, 0.947958, 0.231406,
		-0.974724, -0.223323, -0.006328,
		0.045680, -0.226941, 0.972837,
		38.625343, 32.627003, 23.964798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998466, 33.072605, 23.517771>,  <38.593369, 32.785858, 23.283812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998466, 33.072605, 23.517771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247395, 33.043388, 23.829510>,  <38.396751, 33.025860, 24.016554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247395, 33.043388, 23.829510>,  <37.998466, 33.072605, 23.517771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247395, 33.043388, 23.829510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350891, 0.863967, 0.361159,
		-0.699711, -0.498223, 0.512034,
		0.622318, -0.073039, 0.779349,
		38.434090, 33.021477, 24.063314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626232, 33.305817, 24.167950>,  <37.998466, 33.072605, 23.517771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626232, 33.305817, 24.167950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014568, 33.354683, 24.250462>,  <38.247570, 33.384003, 24.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014568, 33.354683, 24.250462>,  <37.626232, 33.305817, 24.167950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014568, 33.354683, 24.250462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196169, 0.899425, 0.390579,
		-0.137820, -0.419655, 0.897160,
		0.970836, 0.122166, 0.206282,
		38.305820, 33.391335, 24.312346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570904, 33.568394, 24.786249>,  <37.626232, 33.305817, 24.167950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570904, 33.568394, 24.786249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936661, 33.646164, 24.644218>,  <38.156116, 33.692825, 24.559000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936661, 33.646164, 24.644218>,  <37.570904, 33.568394, 24.786249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936661, 33.646164, 24.644218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044907, 0.920423, 0.388337,
		0.402322, -0.339148, 0.850362,
		0.914396, 0.194423, -0.355077,
		38.210979, 33.704491, 24.537695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903633, 33.324543, 24.815756>,  <37.570904, 33.568394, 24.786249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903633, 33.324543, 24.815756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825264, 33.690453, 24.674450>,  <36.778240, 33.910000, 24.589666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825264, 33.690453, 24.674450>,  <36.903633, 33.324543, 24.815756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825264, 33.690453, 24.674450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919926, 0.296227, 0.256877,
		0.339632, -0.274647, -0.899566,
		-0.195925, 0.914778, -0.353263,
		36.766487, 33.964886, 24.568470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580734, 32.843891, 24.477160>,  <36.903633, 33.324543, 24.815756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580734, 32.843891, 24.477160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434372, 32.553497, 24.710075>,  <36.346554, 32.379261, 24.849825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434372, 32.553497, 24.710075>,  <36.580734, 32.843891, 24.477160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434372, 32.553497, 24.710075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538208, -0.675510, -0.504003,
		0.759239, 0.128973, 0.637904,
		-0.365907, -0.725984, 0.582288,
		36.324600, 32.335701, 24.884762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138409, 33.171688, 25.021980>,  <36.580734, 32.843891, 24.477160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138409, 33.171688, 25.021980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075256, 33.443363, 24.735268>,  <36.037365, 33.606369, 24.563240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075256, 33.443363, 24.735268>,  <36.138409, 33.171688, 25.021980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075256, 33.443363, 24.735268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934793, 0.131088, 0.330117,
		0.318173, 0.722164, 0.614202,
		-0.157884, 0.679187, -0.716783,
		36.027889, 33.647118, 24.520233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954388, 33.651913, 25.601017>,  <36.138409, 33.171688, 25.021980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954388, 33.651913, 25.601017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135307, 33.309700, 25.701809>,  <36.243858, 33.104374, 25.762283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135307, 33.309700, 25.701809>,  <35.954388, 33.651913, 25.601017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135307, 33.309700, 25.701809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594532, -0.078631, 0.800218,
		-0.664796, -0.511750, -0.544204,
		0.452303, -0.855528, 0.251978,
		36.271000, 33.053043, 25.777403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385986, 33.187904, 25.579271>,  <35.954388, 33.651913, 25.601017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385986, 33.187904, 25.579271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675861, 33.098286, 25.839924>,  <35.849789, 33.044514, 25.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675861, 33.098286, 25.839924>,  <35.385986, 33.187904, 25.579271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675861, 33.098286, 25.839924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655796, 0.066079, 0.752041,
		-0.211551, -0.972336, -0.099042,
		0.724691, -0.224046, 0.651633,
		35.893269, 33.031071, 26.035414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682728, 33.040512, 25.365278>,  <35.385986, 33.187904, 25.579271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682728, 33.040512, 25.365278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515854, 33.393707, 25.451332>,  <34.415730, 33.605625, 25.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515854, 33.393707, 25.451332>,  <34.682728, 33.040512, 25.365278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515854, 33.393707, 25.451332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825800, 0.269453, 0.495429,
		0.379491, 0.384344, -0.841585,
		-0.417183, 0.882992, 0.215137,
		34.390697, 33.658604, 25.515873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038361, 32.925823, 25.332190>,  <34.682728, 33.040512, 25.365278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038361, 32.925823, 25.332190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669575, 32.927998, 25.487087>,  <33.448303, 32.929302, 25.580025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669575, 32.927998, 25.487087>,  <34.038361, 32.925823, 25.332190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669575, 32.927998, 25.487087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253296, -0.747921, 0.613560,
		0.292963, 0.663766, 0.688177,
		-0.921962, 0.005438, 0.387242,
		33.392986, 32.929630, 25.603260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180004, 32.923119, 26.038460>,  <34.038361, 32.925823, 25.332190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180004, 32.923119, 26.038460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806202, 32.791527, 25.984100>,  <33.581921, 32.712570, 25.951485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806202, 32.791527, 25.984100>,  <34.180004, 32.923119, 26.038460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806202, 32.791527, 25.984100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198074, -0.797850, 0.569387,
		-0.295745, 0.505178, 0.810759,
		-0.934506, -0.328983, -0.135897,
		33.525848, 32.692833, 25.943331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955826, 32.864468, 26.636240>,  <34.180004, 32.923119, 26.038460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955826, 32.864468, 26.636240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708015, 32.634575, 26.422375>,  <33.559330, 32.496639, 26.294056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708015, 32.634575, 26.422375>,  <33.955826, 32.864468, 26.636240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708015, 32.634575, 26.422375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199507, -0.774045, 0.600875,
		-0.759196, 0.265591, 0.594208,
		-0.619531, -0.574731, -0.534665,
		33.522156, 32.462154, 26.261974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683598, 32.545868, 27.127726>,  <33.955826, 32.864468, 26.636240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683598, 32.545868, 27.127726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599461, 32.324940, 26.805061>,  <33.548981, 32.192383, 26.611462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599461, 32.324940, 26.805061>,  <33.683598, 32.545868, 27.127726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599461, 32.324940, 26.805061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264498, -0.826499, 0.496930,
		-0.941168, -0.108836, 0.319933,
		-0.210341, -0.552316, -0.806662,
		33.536358, 32.159245, 26.563063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306046, 32.020176, 27.410742>,  <33.683598, 32.545868, 27.127726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306046, 32.020176, 27.410742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432110, 31.861301, 27.065971>,  <33.507748, 31.765978, 26.859108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432110, 31.861301, 27.065971>,  <33.306046, 32.020176, 27.410742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432110, 31.861301, 27.065971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123775, -0.883252, 0.452268,
		-0.940933, -0.249222, -0.229204,
		0.315159, -0.397183, -0.861928,
		33.526657, 31.742146, 26.807392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889736, 31.444326, 27.209263>,  <33.306046, 32.020176, 27.410742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889736, 31.444326, 27.209263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222450, 31.363396, 27.002502>,  <33.422081, 31.314837, 26.878447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222450, 31.363396, 27.002502>,  <32.889736, 31.444326, 27.209263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222450, 31.363396, 27.002502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018827, -0.940952, 0.338015,
		-0.554771, -0.271425, -0.786484,
		0.831790, -0.202328, -0.516903,
		33.471989, 31.302698, 26.847431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727638, 30.874777, 27.053823>,  <32.889736, 31.444326, 27.209263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727638, 30.874777, 27.053823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122658, 30.883453, 26.991497>,  <33.359669, 30.888659, 26.954102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122658, 30.883453, 26.991497>,  <32.727638, 30.874777, 27.053823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122658, 30.883453, 26.991497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071255, -0.944699, 0.320105,
		-0.140257, -0.327221, -0.934481,
		0.987548, 0.021690, -0.155817,
		33.418922, 30.889959, 26.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899441, 30.308924, 26.626793>,  <32.727638, 30.874777, 27.053823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899441, 30.308924, 26.626793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254803, 30.382263, 26.795135>,  <33.468021, 30.426266, 26.896141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254803, 30.382263, 26.795135>,  <32.899441, 30.308924, 26.626793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254803, 30.382263, 26.795135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135347, -0.980641, 0.141509,
		0.438657, -0.068756, -0.896021,
		0.888404, 0.183348, 0.420859,
		33.521324, 30.437267, 26.921392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261227, 29.784903, 26.348389>,  <32.899441, 30.308924, 26.626793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261227, 29.784903, 26.348389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468060, 29.920506, 26.662766>,  <33.592159, 30.001867, 26.851391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468060, 29.920506, 26.662766>,  <33.261227, 29.784903, 26.348389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468060, 29.920506, 26.662766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164926, -0.940477, 0.297158,
		0.839898, -0.024032, -0.542211,
		0.517079, 0.339007, 0.785942,
		33.623184, 30.022207, 26.898548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829327, 29.455290, 26.300398>,  <33.261227, 29.784903, 26.348389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829327, 29.455290, 26.300398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798355, 29.545341, 26.688896>,  <33.779770, 29.599373, 26.921995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798355, 29.545341, 26.688896>,  <33.829327, 29.455290, 26.300398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798355, 29.545341, 26.688896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031840, -0.974234, 0.223282,
		0.996489, -0.013636, 0.082604,
		-0.077431, 0.225128, 0.971248,
		33.775127, 29.612881, 26.980270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179359, 28.887325, 26.645676>,  <33.829327, 29.455290, 26.300398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179359, 28.887325, 26.645676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967144, 29.048931, 26.943748>,  <33.839813, 29.145895, 27.122593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967144, 29.048931, 26.943748>,  <34.179359, 28.887325, 26.645676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967144, 29.048931, 26.943748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011487, -0.882453, 0.470261,
		0.847581, 0.240933, 0.472819,
		-0.530542, 0.404016, 0.745182,
		33.807983, 29.170135, 27.167303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463226, 28.575743, 27.221512>,  <34.179359, 28.887325, 26.645676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463226, 28.575743, 27.221512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103024, 28.707733, 27.334797>,  <33.886902, 28.786926, 27.402769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103024, 28.707733, 27.334797>,  <34.463226, 28.575743, 27.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103024, 28.707733, 27.334797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197237, -0.890385, 0.410258,
		0.387545, 0.313578, 0.866878,
		-0.900503, 0.329974, 0.283215,
		33.832874, 28.806725, 27.419762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297600, 28.320133, 27.906527>,  <34.463226, 28.575743, 27.221512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297600, 28.320133, 27.906527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930798, 28.396942, 27.766685>,  <33.710716, 28.443027, 27.682781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930798, 28.396942, 27.766685>,  <34.297600, 28.320133, 27.906527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930798, 28.396942, 27.766685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345575, -0.820175, 0.455952,
		-0.199181, 0.538925, 0.818466,
		-0.917009, 0.192024, -0.349602,
		33.655693, 28.454550, 27.661804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802574, 28.305828, 28.481966>,  <34.297600, 28.320133, 27.906527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802574, 28.305828, 28.481966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566051, 28.256176, 28.163231>,  <33.424137, 28.226385, 27.971991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566051, 28.256176, 28.163231>,  <33.802574, 28.305828, 28.481966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566051, 28.256176, 28.163231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465253, -0.754560, 0.462794,
		-0.658708, 0.644384, 0.388424,
		-0.591306, -0.124131, -0.796837,
		33.388660, 28.218937, 27.924179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178074, 28.157368, 28.804869>,  <33.802574, 28.305828, 28.481966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178074, 28.157368, 28.804869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146225, 28.025494, 28.428577>,  <33.127117, 27.946369, 28.202803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146225, 28.025494, 28.428577>,  <33.178074, 28.157368, 28.804869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146225, 28.025494, 28.428577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422341, -0.843676, 0.331418,
		-0.902933, 0.423696, -0.072066,
		-0.079620, -0.329685, -0.940728,
		33.122337, 27.926588, 28.146358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429314, 28.087624, 28.622355>,  <33.178074, 28.157368, 28.804869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429314, 28.087624, 28.622355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654163, 27.837772, 28.405521>,  <32.789074, 27.687860, 28.275421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654163, 27.837772, 28.405521>,  <32.429314, 28.087624, 28.622355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654163, 27.837772, 28.405521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439651, -0.780841, 0.443839,
		-0.700515, -0.011165, -0.713550,
		0.562125, -0.624629, -0.542082,
		32.822800, 27.650383, 28.242897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996540, 27.502239, 28.536407>,  <32.429314, 28.087624, 28.622355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996540, 27.502239, 28.536407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344292, 27.340740, 28.422451>,  <32.552944, 27.243841, 28.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344292, 27.340740, 28.422451>,  <31.996540, 27.502239, 28.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344292, 27.340740, 28.422451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291566, -0.884614, 0.363932,
		-0.398956, -0.233331, -0.886786,
		0.869381, -0.403750, -0.284891,
		32.605106, 27.219616, 28.336983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780842, 26.814783, 28.420734>,  <31.996540, 27.502239, 28.536407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780842, 26.814783, 28.420734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180252, 26.813259, 28.442398>,  <32.419899, 26.812344, 28.455397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180252, 26.813259, 28.442398>,  <31.780842, 26.814783, 28.420734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180252, 26.813259, 28.442398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014173, -0.981240, 0.192267,
		0.052409, -0.192751, -0.979847,
		0.998525, -0.003811, 0.054157,
		32.479809, 26.812117, 28.458645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035553, 26.271521, 27.927319>,  <31.780842, 26.814783, 28.420734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035553, 26.271521, 27.927319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314445, 26.320248, 28.209888>,  <32.481781, 26.349483, 28.379431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314445, 26.320248, 28.209888>,  <32.035553, 26.271521, 27.927319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314445, 26.320248, 28.209888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112217, -0.954759, 0.275396,
		0.708012, -0.271287, -0.652014,
		0.697228, 0.121816, 0.706424,
		32.523613, 26.356792, 28.421816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268242, 25.609032, 28.106590>,  <32.035553, 26.271521, 27.927319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268242, 25.609032, 28.106590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480461, 25.795650, 28.389675>,  <32.607792, 25.907621, 28.559526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480461, 25.795650, 28.389675>,  <32.268242, 25.609032, 28.106590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480461, 25.795650, 28.389675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172410, -0.758057, 0.628987,
		0.829936, -0.455724, -0.321748,
		0.530548, 0.466546, 0.707710,
		32.639626, 25.935614, 28.601988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835468, 25.159910, 28.226744>,  <32.268242, 25.609032, 28.106590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835468, 25.159910, 28.226744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767750, 25.390278, 28.546658>,  <32.727119, 25.528500, 28.738605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767750, 25.390278, 28.546658>,  <32.835468, 25.159910, 28.226744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767750, 25.390278, 28.546658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026446, -0.813860, 0.580459,
		0.985210, 0.077120, 0.153017,
		-0.169299, 0.575920, 0.799784,
		32.716961, 25.563053, 28.786592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226898, 24.751560, 28.781107>,  <32.835468, 25.159910, 28.226744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226898, 24.751560, 28.781107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972935, 25.015350, 28.942097>,  <32.820557, 25.173624, 29.038691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972935, 25.015350, 28.942097>,  <33.226898, 24.751560, 28.781107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972935, 25.015350, 28.942097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149053, -0.615710, 0.773747,
		0.758074, 0.431268, 0.489216,
		-0.634907, 0.659477, 0.402472,
		32.782463, 25.213194, 29.062838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447575, 24.943369, 29.530510>,  <33.226898, 24.751560, 28.781107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447575, 24.943369, 29.530510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058044, 25.032841, 29.514374>,  <32.824326, 25.086523, 29.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058044, 25.032841, 29.514374>,  <33.447575, 24.943369, 29.530510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058044, 25.032841, 29.514374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176647, -0.633166, 0.753589,
		0.143019, 0.740992, 0.656107,
		-0.973828, 0.223677, -0.040339,
		32.765896, 25.099943, 29.502272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264240, 25.026615, 30.290836>,  <33.447575, 24.943369, 29.530510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264240, 25.026615, 30.290836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951633, 24.956348, 30.051380>,  <32.764069, 24.914188, 29.907707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951633, 24.956348, 30.051380>,  <33.264240, 25.026615, 30.290836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951633, 24.956348, 30.051380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330535, -0.697221, 0.636105,
		-0.529128, 0.694999, 0.486827,
		-0.781518, -0.175667, -0.598641,
		32.717178, 24.903648, 29.871788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719601, 25.118778, 30.742565>,  <33.264240, 25.026615, 30.290836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719601, 25.118778, 30.742565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591473, 24.892246, 30.438812>,  <32.514595, 24.756327, 30.256561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591473, 24.892246, 30.438812>,  <32.719601, 25.118778, 30.742565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591473, 24.892246, 30.438812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368398, -0.664050, 0.650631,
		-0.872741, 0.488167, 0.004074,
		-0.320322, -0.566332, -0.759383,
		32.495377, 24.722347, 30.210997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159370, 24.785721, 31.094782>,  <32.719601, 25.118778, 30.742565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159370, 24.785721, 31.094782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237164, 24.580505, 30.760365>,  <32.283840, 24.457376, 30.559715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237164, 24.580505, 30.760365>,  <32.159370, 24.785721, 31.094782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237164, 24.580505, 30.760365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535199, -0.769771, 0.347870,
		-0.822033, 0.379794, -0.424287,
		0.194485, -0.513039, -0.836042,
		32.295509, 24.426594, 30.509552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508009, 24.458408, 30.904875>,  <32.159370, 24.785721, 31.094782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508009, 24.458408, 30.904875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792013, 24.247879, 30.717739>,  <31.962416, 24.121561, 30.605457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792013, 24.247879, 30.717739>,  <31.508009, 24.458408, 30.904875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792013, 24.247879, 30.717739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397350, -0.847931, 0.350895,
		-0.581378, -0.063243, -0.811172,
		0.710009, -0.526321, -0.467839,
		32.005016, 24.089983, 30.577387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159575, 23.886436, 30.606699>,  <31.508009, 24.458408, 30.904875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159575, 23.886436, 30.606699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539478, 23.761280, 30.609592>,  <31.767422, 23.686186, 30.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539478, 23.761280, 30.609592>,  <31.159575, 23.886436, 30.606699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539478, 23.761280, 30.609592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285539, -0.856812, 0.429348,
		-0.128140, -0.409844, -0.903110,
		0.949762, -0.312890, 0.007235,
		31.824408, 23.667414, 30.611763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174946, 23.231108, 30.358093>,  <31.159575, 23.886436, 30.606699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174946, 23.231108, 30.358093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490849, 23.284950, 30.597481>,  <31.680389, 23.317257, 30.741114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490849, 23.284950, 30.597481>,  <31.174946, 23.231108, 30.358093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490849, 23.284950, 30.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250414, -0.819885, 0.514861,
		0.559982, -0.556479, -0.613801,
		0.789755, 0.134608, 0.598471,
		31.727776, 23.325333, 30.777021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375181, 22.563890, 30.431644>,  <31.174946, 23.231108, 30.358093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375181, 22.563890, 30.431644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595291, 22.768215, 30.695847>,  <31.727358, 22.890810, 30.854368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595291, 22.768215, 30.695847>,  <31.375181, 22.563890, 30.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595291, 22.768215, 30.695847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105547, -0.742142, 0.661880,
		0.828286, -0.433930, -0.354467,
		0.550274, 0.510813, 0.660506,
		31.760374, 22.921459, 30.893999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941147, 22.174049, 30.591427>,  <31.375181, 22.563890, 30.431644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941147, 22.174049, 30.591427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878035, 22.394325, 30.919292>,  <31.840166, 22.526491, 31.116013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878035, 22.394325, 30.919292>,  <31.941147, 22.174049, 30.591427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878035, 22.394325, 30.919292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058815, -0.823346, 0.564484,
		0.985721, 0.137274, 0.097520,
		-0.157782, 0.550688, 0.819663,
		31.830700, 22.559532, 31.165192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401848, 21.893076, 31.125107>,  <31.941147, 22.174049, 30.591427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401848, 21.893076, 31.125107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120495, 22.102299, 31.317635>,  <31.951683, 22.227833, 31.433151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120495, 22.102299, 31.317635>,  <32.401848, 21.893076, 31.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120495, 22.102299, 31.317635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043859, -0.707783, 0.705067,
		0.709458, 0.474821, 0.520783,
		-0.703381, 0.523057, 0.481317,
		31.909481, 22.259216, 31.462030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687862, 21.957544, 31.854023>,  <32.401848, 21.893076, 31.125107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687862, 21.957544, 31.854023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296299, 22.036449, 31.875309>,  <32.061363, 22.083794, 31.888081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296299, 22.036449, 31.875309>,  <32.687862, 21.957544, 31.854023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296299, 22.036449, 31.875309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098297, -0.683032, 0.723743,
		0.179117, 0.703245, 0.688014,
		-0.978905, 0.197264, 0.053216,
		32.002628, 22.095629, 31.891273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471378, 21.848402, 32.560276>,  <32.687862, 21.957544, 31.854023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471378, 21.848402, 32.560276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116978, 21.845825, 32.374825>,  <31.904337, 21.844278, 32.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116978, 21.845825, 32.374825>,  <32.471378, 21.848402, 32.560276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116978, 21.845825, 32.374825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336690, -0.678550, 0.652847,
		-0.318804, 0.734526, 0.599030,
		-0.886005, -0.006443, -0.463632,
		31.851177, 21.843893, 32.235737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999277, 21.906754, 33.147732>,  <32.471378, 21.848402, 32.560276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999277, 21.906754, 33.147732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833250, 21.740452, 32.824036>,  <31.733633, 21.640671, 32.629818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833250, 21.740452, 32.824036>,  <31.999277, 21.906754, 33.147732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833250, 21.740452, 32.824036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384983, -0.725655, 0.570275,
		-0.824322, 0.548247, 0.141139,
		-0.415069, -0.415754, -0.809238,
		31.708729, 21.615726, 32.581264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282675, 21.667967, 33.326900>,  <31.999277, 21.906754, 33.147732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282675, 21.667967, 33.326900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356293, 21.450409, 32.999413>,  <31.400463, 21.319874, 32.802917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356293, 21.450409, 32.999413>,  <31.282675, 21.667967, 33.326900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356293, 21.450409, 32.999413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394316, -0.803842, 0.445368,
		-0.900357, 0.240870, -0.362407,
		0.184042, -0.543893, -0.818724,
		31.411505, 21.287241, 32.753796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663601, 21.343834, 33.215446>,  <31.282675, 21.667967, 33.326900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663601, 21.343834, 33.215446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942461, 21.146065, 33.007782>,  <31.109777, 21.027403, 32.883183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942461, 21.146065, 33.007782>,  <30.663601, 21.343834, 33.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942461, 21.146065, 33.007782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267878, -0.851345, 0.451057,
		-0.664997, -0.175383, -0.725961,
		0.697151, -0.494421, -0.519161,
		31.151606, 20.997738, 32.852036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350927, 20.678608, 33.025917>,  <30.663601, 21.343834, 33.215446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350927, 20.678608, 33.025917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740248, 20.605537, 32.970322>,  <30.973841, 20.561695, 32.936966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740248, 20.605537, 32.970322>,  <30.350927, 20.678608, 33.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740248, 20.605537, 32.970322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085245, -0.849868, 0.520056,
		-0.213119, -0.494323, -0.842748,
		0.973300, -0.182674, -0.138985,
		31.032238, 20.550735, 32.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530262, 19.912249, 32.794605>,  <30.350927, 20.678608, 33.025917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530262, 19.912249, 32.794605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813757, 20.066681, 33.030785>,  <30.983854, 20.159340, 33.172493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813757, 20.066681, 33.030785>,  <30.530262, 19.912249, 32.794605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813757, 20.066681, 33.030785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062285, -0.799448, 0.597498,
		0.702718, -0.460245, -0.542552,
		0.708737, 0.386080, 0.590452,
		31.026379, 20.182505, 33.207920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803314, 19.301229, 33.089924>,  <30.530262, 19.912249, 32.794605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803314, 19.301229, 33.089924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010677, 19.581955, 33.285358>,  <31.135096, 19.750389, 33.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010677, 19.581955, 33.285358>,  <30.803314, 19.301229, 33.089924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010677, 19.581955, 33.285358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185113, -0.649906, 0.737126,
		0.834858, -0.291687, -0.466830,
		0.518406, 0.701812, 0.488584,
		31.166199, 19.792500, 33.431934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361195, 18.917751, 33.363243>,  <30.803314, 19.301229, 33.089924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361195, 18.917751, 33.363243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340662, 19.237110, 33.603218>,  <31.328342, 19.428726, 33.747204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340662, 19.237110, 33.603218>,  <31.361195, 18.917751, 33.363243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340662, 19.237110, 33.603218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201106, -0.580160, 0.789285,
		0.978224, 0.161165, -0.130784,
		-0.051329, 0.798398, 0.599938,
		31.325264, 19.476629, 33.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006626, 18.981829, 33.773708>,  <31.361195, 18.917751, 33.363243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006626, 18.981829, 33.773708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695354, 19.144379, 33.965248>,  <31.508591, 19.241909, 34.080173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695354, 19.144379, 33.965248>,  <32.006626, 18.981829, 33.773708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695354, 19.144379, 33.965248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229248, -0.526041, 0.818979,
		0.584706, 0.747088, 0.316194,
		-0.778180, 0.406375, 0.478848,
		31.461901, 19.266291, 34.108902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130993, 18.751583, 34.420761>,  <32.006626, 18.981829, 33.773708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130993, 18.751583, 34.420761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761591, 18.904812, 34.412846>,  <31.539949, 18.996750, 34.408096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761591, 18.904812, 34.412846>,  <32.130993, 18.751583, 34.420761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761591, 18.904812, 34.412846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308634, -0.711444, 0.631342,
		0.227775, 0.589154, 0.775252,
		-0.923506, 0.383073, -0.019784,
		31.484539, 19.019733, 34.406910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010807, 18.851900, 35.097679>,  <32.130993, 18.751583, 34.420761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010807, 18.851900, 35.097679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666243, 18.812176, 34.898434>,  <31.459505, 18.788342, 34.778889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666243, 18.812176, 34.898434>,  <32.010807, 18.851900, 35.097679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666243, 18.812176, 34.898434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313431, -0.667762, 0.675170,
		-0.399671, 0.737720, 0.544088,
		-0.861408, -0.099311, -0.498110,
		31.407820, 18.782383, 34.749001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409855, 18.912741, 35.532181>,  <32.010807, 18.851900, 35.097679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409855, 18.912741, 35.532181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289232, 18.684429, 35.226692>,  <31.216858, 18.547441, 35.043400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289232, 18.684429, 35.226692>,  <31.409855, 18.912741, 35.532181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289232, 18.684429, 35.226692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293685, -0.706458, 0.643946,
		-0.907090, 0.418481, 0.045408,
		-0.301558, -0.570781, -0.763723,
		31.198765, 18.513195, 34.997574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513369, 19.251076, 36.296791>,  <31.409855, 18.912741, 35.532181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513369, 19.251076, 36.296791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887575, 19.163200, 36.186127>,  <32.112099, 19.110476, 36.119728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887575, 19.163200, 36.186127>,  <31.513369, 19.251076, 36.296791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887575, 19.163200, 36.186127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046549, -0.699652, 0.712965,
		-0.350199, -0.679870, -0.644311,
		0.935518, -0.219687, -0.276665,
		32.168232, 19.097294, 36.103127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574959, 18.584402, 36.439426>,  <31.513369, 19.251076, 36.296791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574959, 18.584402, 36.439426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951994, 18.714890, 36.468025>,  <32.178215, 18.793182, 36.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951994, 18.714890, 36.468025>,  <31.574959, 18.584402, 36.439426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951994, 18.714890, 36.468025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142595, -0.586719, 0.797137,
		0.301989, -0.741176, -0.599551,
		0.942587, 0.326220, 0.071495,
		32.234772, 18.812756, 36.489475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075994, 18.651131, 37.155537>,  <31.574959, 18.584402, 36.439426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075994, 18.651131, 37.155537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696957, 18.643768, 37.283115>,  <30.469534, 18.639351, 37.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696957, 18.643768, 37.283115>,  <31.075994, 18.651131, 37.155537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696957, 18.643768, 37.283115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239589, 0.701350, -0.671346,
		-0.211338, -0.712580, -0.669004,
		-0.947594, -0.018405, 0.318948,
		30.412678, 18.638247, 37.378799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570475, 18.597933, 36.574276>,  <31.075994, 18.651131, 37.155537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570475, 18.597933, 36.574276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415567, 18.801884, 36.881535>,  <30.322624, 18.924253, 37.065891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415567, 18.801884, 36.881535>,  <30.570475, 18.597933, 36.574276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415567, 18.801884, 36.881535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420036, 0.644100, -0.639300,
		-0.820728, -0.570229, -0.035271,
		-0.387266, 0.509876, 0.768148,
		30.299387, 18.954847, 37.111980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875425, 18.562607, 36.482677>,  <30.570475, 18.597933, 36.574276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875425, 18.562607, 36.482677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960436, 18.870522, 36.723431>,  <30.011442, 19.055271, 36.867882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960436, 18.870522, 36.723431>,  <29.875425, 18.562607, 36.482677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960436, 18.870522, 36.723431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408333, 0.629558, -0.661000,
		-0.887748, -0.105288, 0.448127,
		0.212526, 0.769787, 0.601881,
		30.024195, 19.101458, 36.903996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238911, 18.972511, 36.555870>,  <29.875425, 18.562607, 36.482677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238911, 18.972511, 36.555870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565441, 19.197041, 36.610313>,  <29.761360, 19.331758, 36.642979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565441, 19.197041, 36.610313>,  <29.238911, 18.972511, 36.555870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565441, 19.197041, 36.610313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313336, 0.628334, -0.712051,
		-0.485213, 0.538618, 0.688809,
		0.816326, 0.561326, 0.136108,
		29.810339, 19.365438, 36.651146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094532, 19.719969, 36.535004>,  <29.238911, 18.972511, 36.555870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094532, 19.719969, 36.535004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470566, 19.698418, 36.400341>,  <29.696186, 19.685488, 36.319542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470566, 19.698418, 36.400341>,  <29.094532, 19.719969, 36.535004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470566, 19.698418, 36.400341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162034, 0.798196, -0.580197,
		0.299981, 0.599984, 0.741640,
		0.940083, -0.053877, -0.336661,
		29.752590, 19.682255, 36.299343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558653, 20.327894, 36.720333>,  <29.094532, 19.719969, 36.535004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558653, 20.327894, 36.720333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666306, 20.169224, 36.369286>,  <29.730898, 20.074022, 36.158657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666306, 20.169224, 36.369286>,  <29.558653, 20.327894, 36.720333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666306, 20.169224, 36.369286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154860, 0.881562, -0.445945,
		0.950572, 0.255927, 0.175827,
		0.269132, -0.396674, -0.877620,
		29.747046, 20.050222, 36.105999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047003, 20.788084, 36.469940>,  <29.558653, 20.327894, 36.720333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047003, 20.788084, 36.469940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953577, 20.551392, 36.161316>,  <29.897522, 20.409376, 35.976143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953577, 20.551392, 36.161316>,  <30.047003, 20.788084, 36.469940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953577, 20.551392, 36.161316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062940, 0.801042, -0.595290,
		0.970302, -0.090476, -0.224337,
		-0.233563, -0.591731, -0.771559,
		29.883509, 20.373873, 35.929848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440849, 20.934582, 35.919853>,  <30.047003, 20.788084, 36.469940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440849, 20.934582, 35.919853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117939, 20.769230, 35.751366>,  <29.924192, 20.670019, 35.650272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117939, 20.769230, 35.751366>,  <30.440849, 20.934582, 35.919853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117939, 20.769230, 35.751366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026692, 0.738560, -0.673659,
		0.589571, -0.532585, -0.607256,
		-0.807275, -0.413379, -0.421218,
		29.875757, 20.645216, 35.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576721, 21.135790, 35.275997>,  <30.440849, 20.934582, 35.919853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576721, 21.135790, 35.275997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192755, 21.023781, 35.271137>,  <29.962376, 20.956575, 35.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192755, 21.023781, 35.271137>,  <30.576721, 21.135790, 35.275997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192755, 21.023781, 35.271137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212055, 0.753898, -0.621828,
		0.183287, -0.594327, -0.783059,
		-0.959916, -0.280024, -0.012149,
		29.904779, 20.939774, 35.267494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470062, 21.149263, 34.608711>,  <30.576721, 21.135790, 35.275997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470062, 21.149263, 34.608711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124317, 21.166180, 34.809147>,  <29.916870, 21.176331, 34.929409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124317, 21.166180, 34.809147>,  <30.470062, 21.149263, 34.608711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124317, 21.166180, 34.809147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313025, 0.734614, -0.601961,
		-0.393564, -0.677166, -0.621735,
		-0.864363, 0.042292, 0.501088,
		29.865009, 21.178867, 34.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985426, 21.216152, 34.056896>,  <30.470062, 21.149263, 34.608711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985426, 21.216152, 34.056896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814564, 21.340485, 34.396526>,  <29.712046, 21.415083, 34.600304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814564, 21.340485, 34.396526>,  <29.985426, 21.216152, 34.056896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814564, 21.340485, 34.396526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377251, 0.792145, -0.479779,
		-0.821718, -0.525253, -0.221108,
		-0.427155, 0.310830, 0.849072,
		29.686417, 21.433733, 34.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352100, 21.474483, 33.918827>,  <29.985426, 21.216152, 34.056896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352100, 21.474483, 33.918827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373514, 21.648376, 34.278416>,  <29.386362, 21.752712, 34.494167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373514, 21.648376, 34.278416>,  <29.352100, 21.474483, 33.918827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373514, 21.648376, 34.278416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271920, 0.872584, -0.405779,
		-0.960830, -0.222724, 0.164927,
		0.053536, 0.434731, 0.898968,
		29.389574, 21.778795, 34.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723066, 21.938814, 34.050716>,  <29.352100, 21.474483, 33.918827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723066, 21.938814, 34.050716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004663, 22.057053, 34.309025>,  <29.173622, 22.127996, 34.464008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004663, 22.057053, 34.309025>,  <28.723066, 21.938814, 34.050716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004663, 22.057053, 34.309025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035698, 0.922847, -0.383509,
		-0.709310, 0.246935, 0.660229,
		0.703992, 0.295595, 0.645769,
		29.215860, 22.145731, 34.502754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469664, 22.561447, 34.339108>,  <28.723066, 21.938814, 34.050716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469664, 22.561447, 34.339108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868902, 22.561245, 34.363762>,  <29.108446, 22.561125, 34.378555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868902, 22.561245, 34.363762>,  <28.469664, 22.561447, 34.339108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868902, 22.561245, 34.363762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025523, 0.913599, -0.405814,
		-0.056111, 0.406616, 0.911874,
		0.998098, -0.000503, 0.061641,
		29.168331, 22.561094, 34.382256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579102, 23.258854, 34.544388>,  <28.469664, 22.561447, 34.339108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579102, 23.258854, 34.544388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928095, 23.125328, 34.401649>,  <29.137491, 23.045212, 34.316006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928095, 23.125328, 34.401649>,  <28.579102, 23.258854, 34.544388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928095, 23.125328, 34.401649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162594, 0.886995, -0.432207,
		0.460798, 0.319072, 0.828165,
		0.872484, -0.333815, -0.356847,
		29.189840, 23.025183, 34.294594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031036, 23.789028, 34.741695>,  <28.579102, 23.258854, 34.544388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031036, 23.789028, 34.741695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173489, 23.595612, 34.421856>,  <29.258961, 23.479561, 34.229954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173489, 23.595612, 34.421856>,  <29.031036, 23.789028, 34.741695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173489, 23.595612, 34.421856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143147, 0.873833, -0.464677,
		0.923406, 0.051025, 0.380417,
		0.356131, -0.483541, -0.799599,
		29.280329, 23.450550, 34.181976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651522, 24.107658, 34.557266>,  <29.031036, 23.789028, 34.741695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651522, 24.107658, 34.557266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504061, 23.916767, 34.238178>,  <29.415585, 23.802233, 34.046726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504061, 23.916767, 34.238178>,  <29.651522, 24.107658, 34.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504061, 23.916767, 34.238178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173696, 0.807679, -0.563458,
		0.913195, -0.346281, -0.214860,
		-0.368653, -0.477226, -0.797716,
		29.393465, 23.773600, 33.998863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024532, 24.389252, 34.122280>,  <29.651522, 24.107658, 34.557266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024532, 24.389252, 34.122280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768106, 24.211609, 33.871902>,  <29.614250, 24.105022, 33.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768106, 24.211609, 33.871902>,  <30.024532, 24.389252, 34.122280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768106, 24.211609, 33.871902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241618, 0.657321, -0.713828,
		0.728463, -0.608848, -0.314080,
		-0.641064, -0.444109, -0.625943,
		29.575787, 24.078377, 33.684120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358854, 24.321415, 33.449829>,  <30.024532, 24.389252, 34.122280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358854, 24.321415, 33.449829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969486, 24.291821, 33.363129>,  <29.735867, 24.274065, 33.311108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969486, 24.291821, 33.363129>,  <30.358854, 24.321415, 33.449829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969486, 24.291821, 33.363129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129890, 0.601142, -0.788516,
		0.188637, -0.795710, -0.575553,
		-0.973419, -0.073984, -0.216753,
		29.677460, 24.269625, 33.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333258, 24.230104, 32.761032>,  <30.358854, 24.321415, 33.449829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333258, 24.230104, 32.761032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982561, 24.385269, 32.874767>,  <29.772142, 24.478369, 32.943008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982561, 24.385269, 32.874767>,  <30.333258, 24.230104, 32.761032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982561, 24.385269, 32.874767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089787, 0.712803, -0.695593,
		-0.472507, -0.584325, -0.659773,
		-0.876741, 0.387912, 0.284340,
		29.719538, 24.501642, 32.960068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164211, 24.516960, 32.196209>,  <30.333258, 24.230104, 32.761032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164211, 24.516960, 32.196209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897900, 24.675770, 32.448910>,  <29.738111, 24.771055, 32.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897900, 24.675770, 32.448910>,  <30.164211, 24.516960, 32.196209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897900, 24.675770, 32.448910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040263, 0.826332, -0.561742,
		-0.745061, -0.399433, -0.534170,
		-0.665780, 0.397025, 0.631750,
		29.698166, 24.794878, 32.638435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472891, 24.665148, 31.852020>,  <30.164211, 24.516960, 32.196209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472891, 24.665148, 31.852020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512375, 24.905964, 32.168957>,  <29.536064, 25.050453, 32.359119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512375, 24.905964, 32.168957>,  <29.472891, 24.665148, 31.852020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512375, 24.905964, 32.168957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119013, 0.797658, -0.591251,
		-0.987974, -0.035937, 0.150387,
		0.098709, 0.602039, 0.792342,
		29.541988, 25.086576, 32.406658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141108, 25.190744, 31.623123>,  <29.472891, 24.665148, 31.852020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141108, 25.190744, 31.623123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326571, 25.344578, 31.942402>,  <29.437849, 25.436878, 32.133968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326571, 25.344578, 31.942402>,  <29.141108, 25.190744, 31.623123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326571, 25.344578, 31.942402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176930, 0.842551, -0.508727,
		-0.868169, 0.377100, 0.322611,
		0.463657, 0.384581, 0.798198,
		29.465668, 25.459951, 32.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879927, 25.916378, 31.705664>,  <29.141108, 25.190744, 31.623123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879927, 25.916378, 31.705664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223059, 25.907452, 31.911041>,  <29.428938, 25.902096, 32.034267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223059, 25.907452, 31.911041>,  <28.879927, 25.916378, 31.705664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223059, 25.907452, 31.911041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259526, 0.881123, -0.395307,
		-0.443588, 0.472360, 0.761647,
		0.857832, -0.022314, 0.513446,
		29.480408, 25.900757, 32.065075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024069, 26.574541, 31.775932>,  <28.879927, 25.916378, 31.705664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024069, 26.574541, 31.775932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387501, 26.424183, 31.848797>,  <29.605560, 26.333967, 31.892515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.387501, 26.424183, 31.848797>,  <29.024069, 26.574541, 31.775932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387501, 26.424183, 31.848797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417704, 0.819758, -0.391817,
		-0.002048, 0.432088, 0.901829,
		0.908581, -0.375896, 0.182163,
		29.660074, 26.311415, 31.903446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305014, 27.228291, 31.986214>,  <29.024069, 26.574541, 31.775932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305014, 27.228291, 31.986214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605146, 26.974701, 31.911297>,  <29.785227, 26.822548, 31.866346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605146, 26.974701, 31.911297>,  <29.305014, 27.228291, 31.986214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605146, 26.974701, 31.911297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599797, 0.772016, -0.210323,
		0.277934, 0.045474, 0.959523,
		0.750331, -0.633975, -0.187294,
		29.830246, 26.784508, 31.855108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872660, 27.509972, 32.258858>,  <29.305014, 27.228291, 31.986214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872660, 27.509972, 32.258858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005447, 27.254078, 31.981575>,  <30.085119, 27.100542, 31.815205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005447, 27.254078, 31.981575>,  <29.872660, 27.509972, 32.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005447, 27.254078, 31.981575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621207, 0.701290, -0.349705,
		0.709857, -0.314533, 0.630215,
		0.331970, -0.639735, -0.693206,
		30.105038, 27.062157, 31.773613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496187, 27.745468, 32.046196>,  <29.872660, 27.509972, 32.258858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496187, 27.745468, 32.046196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449415, 27.487545, 31.744057>,  <30.421352, 27.332792, 31.562773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449415, 27.487545, 31.744057>,  <30.496187, 27.745468, 32.046196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449415, 27.487545, 31.744057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503391, 0.617146, -0.604754,
		0.856110, -0.450950, 0.252426,
		-0.116930, -0.644806, -0.755349,
		30.414335, 27.294104, 31.517452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210104, 27.659489, 31.707182>,  <30.496187, 27.745468, 32.046196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210104, 27.659489, 31.707182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919006, 27.578083, 31.445198>,  <30.744349, 27.529240, 31.288008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919006, 27.578083, 31.445198>,  <31.210104, 27.659489, 31.707182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919006, 27.578083, 31.445198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392685, 0.659301, -0.641187,
		0.562306, -0.723812, -0.399885,
		-0.727743, -0.203514, -0.654959,
		30.700684, 27.517029, 31.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507975, 27.643322, 31.033283>,  <31.210104, 27.659489, 31.707182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507975, 27.643322, 31.033283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116430, 27.700146, 30.974426>,  <30.881504, 27.734240, 30.939112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116430, 27.700146, 30.974426>,  <31.507975, 27.643322, 31.033283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116430, 27.700146, 30.974426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200449, 0.523368, -0.828194,
		-0.040644, -0.840181, -0.540780,
		-0.978861, 0.142060, -0.147142,
		30.822773, 27.742764, 30.930285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363371, 27.583462, 30.313044>,  <31.507975, 27.643322, 31.033283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363371, 27.583462, 30.313044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024025, 27.754295, 30.438183>,  <30.820417, 27.856794, 30.513268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024025, 27.754295, 30.438183>,  <31.363371, 27.583462, 30.313044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024025, 27.754295, 30.438183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047735, 0.526825, -0.848632,
		-0.527253, -0.734885, -0.426555,
		-0.848366, 0.427082, 0.312850,
		30.769514, 27.882420, 30.532038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899389, 27.520281, 29.806793>,  <31.363371, 27.583462, 30.313044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899389, 27.520281, 29.806793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807608, 27.848156, 30.016731>,  <30.752539, 28.044880, 30.142694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807608, 27.848156, 30.016731>,  <30.899389, 27.520281, 29.806793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807608, 27.848156, 30.016731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101597, 0.516118, -0.850470,
		-0.968002, -0.248467, -0.035148,
		-0.229454, 0.819687, 0.524847,
		30.738771, 28.094063, 30.174185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436401, 27.871033, 29.412766>,  <30.899389, 27.520281, 29.806793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436401, 27.871033, 29.412766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515863, 28.151665, 29.686501>,  <30.563541, 28.320044, 29.850742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515863, 28.151665, 29.686501>,  <30.436401, 27.871033, 29.412766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515863, 28.151665, 29.686501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061856, 0.687888, -0.723176,
		-0.978115, 0.185994, 0.093256,
		0.198656, 0.701581, 0.684339,
		30.575460, 28.362139, 29.891802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056089, 28.481367, 29.189114>,  <30.436401, 27.871033, 29.412766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056089, 28.481367, 29.189114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322227, 28.633568, 29.446030>,  <30.481911, 28.724888, 29.600180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322227, 28.633568, 29.446030>,  <30.056089, 28.481367, 29.189114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322227, 28.633568, 29.446030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146208, 0.777281, -0.611929,
		-0.732078, 0.501052, 0.461529,
		0.665346, 0.380501, 0.642288,
		30.521832, 28.747719, 29.638716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005573, 29.217667, 29.068226>,  <30.056089, 28.481367, 29.189114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005573, 29.217667, 29.068226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354080, 29.182262, 29.261330>,  <30.563185, 29.161020, 29.377192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354080, 29.182262, 29.261330>,  <30.005573, 29.217667, 29.068226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354080, 29.182262, 29.261330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364887, 0.774647, -0.516507,
		-0.328253, 0.626169, 0.707222,
		0.871268, -0.088511, 0.482761,
		30.615461, 29.155708, 29.406158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050270, 29.789904, 29.361626>,  <30.005573, 29.217667, 29.068226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050270, 29.789904, 29.361626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402868, 29.624161, 29.271053>,  <30.614428, 29.524715, 29.216709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402868, 29.624161, 29.271053>,  <30.050270, 29.789904, 29.361626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402868, 29.624161, 29.271053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273488, 0.838934, -0.470525,
		0.384927, 0.352840, 0.852839,
		0.881496, -0.414359, -0.226431,
		30.667316, 29.499853, 29.203125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604959, 30.322271, 29.566210>,  <30.050270, 29.789904, 29.361626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604959, 30.322271, 29.566210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743732, 30.084015, 29.276424>,  <30.826996, 29.941061, 29.102552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743732, 30.084015, 29.276424>,  <30.604959, 30.322271, 29.566210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743732, 30.084015, 29.276424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341829, 0.799612, -0.493733,
		0.873379, -0.076352, 0.481019,
		0.346931, -0.595643, -0.724464,
		30.847813, 29.905321, 29.059086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368771, 30.552742, 29.448946>,  <30.604959, 30.322271, 29.566210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368771, 30.552742, 29.448946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261557, 30.309753, 29.149845>,  <31.197227, 30.163960, 28.970385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261557, 30.309753, 29.149845>,  <31.368771, 30.552742, 29.448946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261557, 30.309753, 29.149845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463349, 0.599206, -0.652886,
		0.844668, -0.521467, 0.120863,
		-0.268037, -0.607473, -0.747752,
		31.181145, 30.127512, 28.925520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984604, 30.526640, 28.970665>,  <31.368771, 30.552742, 29.448946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984604, 30.526640, 28.970665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680384, 30.405571, 28.740898>,  <31.497852, 30.332930, 28.603039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680384, 30.405571, 28.740898>,  <31.984604, 30.526640, 28.970665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680384, 30.405571, 28.740898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314302, 0.602503, -0.733624,
		0.568139, -0.738496, -0.363100,
		-0.760548, -0.302677, -0.574417,
		31.452219, 30.314768, 28.568573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169464, 30.721533, 28.326355>,  <31.984604, 30.526640, 28.970665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169464, 30.721533, 28.326355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791918, 30.622616, 28.238758>,  <31.565390, 30.563265, 28.186201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791918, 30.622616, 28.238758>,  <32.169464, 30.721533, 28.326355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791918, 30.622616, 28.238758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022899, 0.710357, -0.703469,
		0.329525, -0.658968, -0.676147,
		-0.943869, -0.247294, -0.218991,
		31.508757, 30.548428, 28.173061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122063, 30.647413, 27.542089>,  <32.169464, 30.721533, 28.326355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122063, 30.647413, 27.542089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763948, 30.737328, 27.695934>,  <31.549078, 30.791277, 27.788240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763948, 30.737328, 27.695934>,  <32.122063, 30.647413, 27.542089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763948, 30.737328, 27.695934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037982, 0.821698, -0.568657,
		-0.443862, -0.523721, -0.727120,
		-0.895290, 0.224787, 0.384612,
		31.495361, 30.804764, 27.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815420, 30.847336, 27.059698>,  <32.122063, 30.647413, 27.542089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815420, 30.847336, 27.059698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574512, 31.014355, 27.331852>,  <31.429968, 31.114565, 27.495144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574512, 31.014355, 27.331852>,  <31.815420, 30.847336, 27.059698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574512, 31.014355, 27.331852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063361, 0.824611, -0.562140,
		-0.795773, -0.381671, -0.470183,
		-0.602271, 0.417545, 0.680387,
		31.393831, 31.139618, 27.535969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312716, 31.195017, 26.685474>,  <31.815420, 30.847336, 27.059698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312716, 31.195017, 26.685474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296360, 31.354095, 27.052116>,  <31.286547, 31.449543, 27.272102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296360, 31.354095, 27.052116>,  <31.312716, 31.195017, 26.685474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296360, 31.354095, 27.052116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121031, 0.908646, -0.399642,
		-0.991806, -0.127277, 0.010982,
		-0.040887, 0.397697, 0.916605,
		31.284094, 31.473404, 27.327099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627663, 31.417610, 26.811651>,  <31.312716, 31.195017, 26.685474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627663, 31.417610, 26.811651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860476, 31.625126, 27.062122>,  <31.000162, 31.749636, 27.212404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860476, 31.625126, 27.062122>,  <30.627663, 31.417610, 26.811651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860476, 31.625126, 27.062122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523826, 0.828191, -0.199264,
		-0.621970, -0.212030, 0.753788,
		0.582031, 0.518790, 0.626177,
		31.035084, 31.780764, 27.249975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207302, 32.022629, 27.028021>,  <30.627663, 31.417610, 26.811651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207302, 32.022629, 27.028021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575859, 32.151638, 27.114754>,  <30.796993, 32.229042, 27.166794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575859, 32.151638, 27.114754>,  <30.207302, 32.022629, 27.028021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575859, 32.151638, 27.114754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285533, 0.940287, -0.185288,
		-0.263643, 0.108810, 0.958464,
		0.921392, 0.322522, 0.216831,
		30.852276, 32.248394, 27.179804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845816, 32.657406, 26.905678>,  <30.207302, 32.022629, 27.028021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845816, 32.657406, 26.905678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482231, 32.574638, 26.760918>,  <29.264080, 32.524979, 26.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482231, 32.574638, 26.760918>,  <29.845816, 32.657406, 26.905678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482231, 32.574638, 26.760918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286074, -0.321858, 0.902535,
		-0.303229, 0.923901, 0.233364,
		-0.908963, -0.206916, -0.361900,
		29.209541, 32.512562, 26.652348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358400, 32.782108, 27.537449>,  <29.845816, 32.657406, 26.905678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358400, 32.782108, 27.537449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168575, 32.547432, 27.274975>,  <29.054680, 32.406624, 27.117491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168575, 32.547432, 27.274975>,  <29.358400, 32.782108, 27.537449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168575, 32.547432, 27.274975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470935, -0.460576, 0.752390,
		-0.743646, 0.666077, -0.057722,
		-0.474564, -0.586695, -0.656184,
		29.026207, 32.371422, 27.078119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756733, 32.808586, 27.790766>,  <29.358400, 32.782108, 27.537449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756733, 32.808586, 27.790766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753668, 32.492928, 27.545105>,  <28.751829, 32.303532, 27.397709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753668, 32.492928, 27.545105>,  <28.756733, 32.808586, 27.790766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753668, 32.492928, 27.545105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646265, -0.464763, 0.605257,
		-0.763074, 0.401546, -0.506437,
		-0.007665, -0.789149, -0.614154,
		28.751368, 32.256184, 27.360859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142025, 32.623741, 27.745214>,  <28.756733, 32.808586, 27.790766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142025, 32.623741, 27.745214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327648, 32.291962, 27.620850>,  <28.439022, 32.092896, 27.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327648, 32.291962, 27.620850>,  <28.142025, 32.623741, 27.745214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327648, 32.291962, 27.620850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593484, -0.551701, 0.586006,
		-0.657594, -0.087416, -0.748284,
		0.464055, -0.829448, -0.310915,
		28.466866, 32.043129, 27.527575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541449, 32.187325, 27.626720>,  <28.142025, 32.623741, 27.745214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541449, 32.187325, 27.626720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872992, 31.969719, 27.678951>,  <28.071917, 31.839155, 27.710289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872992, 31.969719, 27.678951>,  <27.541449, 32.187325, 27.626720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872992, 31.969719, 27.678951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464587, -0.539251, 0.702401,
		-0.311702, -0.642852, -0.699702,
		0.828855, -0.544012, 0.130575,
		28.121649, 31.806515, 27.718124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247135, 31.533878, 27.573614>,  <27.541449, 32.187325, 27.626720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247135, 31.533878, 27.573614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595695, 31.497234, 27.766392>,  <27.804832, 31.475248, 27.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595695, 31.497234, 27.766392>,  <27.247135, 31.533878, 27.573614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595695, 31.497234, 27.766392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436682, -0.592504, 0.676940,
		0.223540, -0.800342, -0.556312,
		0.871400, -0.091608, 0.481943,
		27.857115, 31.469751, 27.910975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280218, 30.817738, 27.692350>,  <27.247135, 31.533878, 27.573614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280218, 30.817738, 27.692350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553011, 30.964195, 27.945599>,  <27.716686, 31.052069, 28.097548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553011, 30.964195, 27.945599>,  <27.280218, 30.817738, 27.692350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553011, 30.964195, 27.945599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326867, -0.621810, 0.711695,
		0.654263, -0.692309, -0.304383,
		0.681981, 0.366142, 0.633120,
		27.757605, 31.074038, 28.135534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806185, 30.327055, 27.854261>,  <27.280218, 30.817738, 27.692350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806185, 30.327055, 27.854261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784472, 30.594639, 28.150787>,  <27.771444, 30.755188, 28.328703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784472, 30.594639, 28.150787>,  <27.806185, 30.327055, 27.854261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784472, 30.594639, 28.150787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051946, -0.743297, 0.666942,
		0.997174, -0.002305, 0.075097,
		-0.054282, 0.668958, 0.741316,
		27.768187, 30.795326, 28.373182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168455, 30.040915, 28.358410>,  <27.806185, 30.327055, 27.854261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168455, 30.040915, 28.358410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959385, 30.313847, 28.562855>,  <27.833942, 30.477606, 28.685522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959385, 30.313847, 28.562855>,  <28.168455, 30.040915, 28.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959385, 30.313847, 28.562855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197955, -0.680272, 0.705722,
		0.829231, 0.267686, 0.490632,
		-0.522675, 0.682330, 0.511113,
		27.802582, 30.518545, 28.716188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368500, 30.003624, 29.024216>,  <28.168455, 30.040915, 28.358410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368500, 30.003624, 29.024216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025745, 30.203201, 29.076069>,  <27.820093, 30.322948, 29.107182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025745, 30.203201, 29.076069>,  <28.368500, 30.003624, 29.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025745, 30.203201, 29.076069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235793, -0.602966, 0.762125,
		0.458422, 0.622486, 0.634319,
		-0.856885, 0.498943, 0.129635,
		27.768681, 30.352884, 29.114960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205196, 30.038017, 29.764725>,  <28.368500, 30.003624, 29.024216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205196, 30.038017, 29.764725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846113, 30.095390, 29.598087>,  <27.630663, 30.129814, 29.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846113, 30.095390, 29.598087>,  <28.205196, 30.038017, 29.764725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846113, 30.095390, 29.598087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408222, -0.626504, 0.663963,
		-0.165764, 0.766107, 0.620968,
		-0.897706, 0.143432, -0.416594,
		27.576801, 30.138420, 29.473108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796303, 30.184395, 30.269434>,  <28.205196, 30.038017, 29.764725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796303, 30.184395, 30.269434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539793, 30.054352, 29.991421>,  <27.385887, 29.976326, 29.824612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539793, 30.054352, 29.991421>,  <27.796303, 30.184395, 30.269434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539793, 30.054352, 29.991421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441384, -0.584644, 0.680714,
		-0.627652, 0.743302, 0.231421,
		-0.641275, -0.325106, -0.695034,
		27.347410, 29.956820, 29.782911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191738, 30.209183, 30.590643>,  <27.796303, 30.184395, 30.269434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191738, 30.209183, 30.590643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155844, 29.947418, 30.290325>,  <27.134308, 29.790359, 30.110134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155844, 29.947418, 30.290325>,  <27.191738, 30.209183, 30.590643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155844, 29.947418, 30.290325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315091, -0.696464, 0.644714,
		-0.944810, 0.294423, -0.143702,
		-0.089735, -0.654411, -0.750796,
		27.128923, 29.751095, 30.065086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533270, 29.941679, 30.742016>,  <27.191738, 30.209183, 30.590643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533270, 29.941679, 30.742016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743040, 29.691265, 30.511169>,  <26.868902, 29.541018, 30.372662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743040, 29.691265, 30.511169>,  <26.533270, 29.941679, 30.742016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743040, 29.691265, 30.511169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228749, -0.756469, 0.612723,
		-0.820155, -0.189311, -0.539914,
		0.524423, -0.626033, -0.577117,
		26.900368, 29.503456, 30.338034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110607, 29.347034, 30.763950>,  <26.533270, 29.941679, 30.742016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110607, 29.347034, 30.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462248, 29.226879, 30.615925>,  <26.673233, 29.154787, 30.527109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462248, 29.226879, 30.615925>,  <26.110607, 29.347034, 30.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462248, 29.226879, 30.615925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086090, -0.863711, 0.496579,
		-0.468792, -0.404686, -0.785152,
		0.879103, -0.300386, -0.370062,
		26.725979, 29.136763, 30.504906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956221, 28.566656, 30.575939>,  <26.110607, 29.347034, 30.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956221, 28.566656, 30.575939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354557, 28.601677, 30.586006>,  <26.593559, 28.622690, 30.592047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354557, 28.601677, 30.586006>,  <25.956221, 28.566656, 30.575939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354557, 28.601677, 30.586006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075137, -0.945601, 0.316533,
		0.051514, -0.313325, -0.948248,
		0.995842, 0.087554, 0.025169,
		26.653309, 28.627943, 30.593557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226698, 27.949299, 30.311657>,  <25.956221, 28.566656, 30.575939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226698, 27.949299, 30.311657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522699, 28.079765, 30.546947>,  <26.700300, 28.158045, 30.688122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522699, 28.079765, 30.546947>,  <26.226698, 27.949299, 30.311657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522699, 28.079765, 30.546947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236651, -0.944891, 0.226224,
		0.629598, -0.028201, -0.776409,
		0.740002, 0.326168, 0.588228,
		26.744699, 28.177616, 30.723415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809013, 27.527523, 30.182201>,  <26.226698, 27.949299, 30.311657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809013, 27.527523, 30.182201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949957, 27.669933, 30.528400>,  <27.034523, 27.755381, 30.736120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949957, 27.669933, 30.528400>,  <26.809013, 27.527523, 30.182201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949957, 27.669933, 30.528400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110410, -0.934167, 0.339325,
		0.929330, -0.024004, -0.368471,
		0.352358, 0.356027, 0.865499,
		27.055664, 27.776741, 30.788050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310402, 26.997845, 30.442308>,  <26.809013, 27.527523, 30.182201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310402, 26.997845, 30.442308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233765, 27.215340, 30.769146>,  <27.187782, 27.345837, 30.965248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233765, 27.215340, 30.769146>,  <27.310402, 26.997845, 30.442308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233765, 27.215340, 30.769146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076066, -0.821787, 0.564695,
		0.978523, 0.170344, 0.116087,
		-0.191591, 0.543737, 0.817094,
		27.176287, 27.378460, 31.014275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812071, 26.811302, 30.913021>,  <27.310402, 26.997845, 30.442308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812071, 26.811302, 30.913021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512941, 26.983009, 31.115601>,  <27.333464, 27.086033, 31.237148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512941, 26.983009, 31.115601>,  <27.812071, 26.811302, 30.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512941, 26.983009, 31.115601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132871, -0.650634, 0.747677,
		0.650466, 0.626423, 0.429522,
		-0.747824, 0.429267, 0.506449,
		27.288595, 27.111790, 31.267534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051096, 26.993023, 31.619749>,  <27.812071, 26.811302, 30.913021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051096, 26.993023, 31.619749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653141, 26.952728, 31.622715>,  <27.414368, 26.928551, 31.624495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653141, 26.952728, 31.622715>,  <28.051096, 26.993023, 31.619749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653141, 26.952728, 31.622715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085612, -0.802005, 0.591150,
		-0.053605, 0.588761, 0.806528,
		-0.994885, -0.100738, 0.007413,
		27.354675, 26.922506, 31.624939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884285, 26.868835, 32.308487>,  <28.051096, 26.993023, 31.619749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884285, 26.868835, 32.308487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570787, 26.747147, 32.091900>,  <27.382689, 26.674133, 31.961946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570787, 26.747147, 32.091900>,  <27.884285, 26.868835, 32.308487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570787, 26.747147, 32.091900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149644, -0.753637, 0.640029,
		-0.602784, 0.582648, 0.545135,
		-0.783746, -0.304224, -0.541470,
		27.335663, 26.655880, 31.929459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480352, 26.512865, 32.877018>,  <27.884285, 26.868835, 32.308487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480352, 26.512865, 32.877018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336420, 26.372700, 32.531132>,  <27.250061, 26.288601, 32.323601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336420, 26.372700, 32.531132>,  <27.480352, 26.512865, 32.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336420, 26.372700, 32.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118556, -0.902110, 0.414900,
		-0.925454, 0.251812, 0.283066,
		-0.359833, -0.350412, -0.864715,
		27.228470, 26.267576, 32.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822763, 26.168821, 33.042912>,  <27.480352, 26.512865, 32.877018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822763, 26.168821, 33.042912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949280, 26.020088, 32.693810>,  <27.025190, 25.930847, 32.484348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949280, 26.020088, 32.693810>,  <26.822763, 26.168821, 33.042912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949280, 26.020088, 32.693810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186961, -0.926373, 0.326924,
		-0.930058, 0.059769, -0.362520,
		0.316289, -0.371835, -0.872754,
		27.044167, 25.908537, 32.431984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366610, 25.714857, 32.865501>,  <26.822763, 26.168821, 33.042912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366610, 25.714857, 32.865501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684650, 25.582664, 32.662090>,  <26.875475, 25.503349, 32.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684650, 25.582664, 32.662090>,  <26.366610, 25.714857, 32.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684650, 25.582664, 32.662090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307982, -0.942347, 0.130875,
		-0.522458, 0.052558, -0.851043,
		0.795100, -0.330483, -0.508524,
		26.923180, 25.483521, 32.509533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179003, 25.191925, 32.223392>,  <26.366610, 25.714857, 32.865501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179003, 25.191925, 32.223392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547276, 25.115776, 32.359688>,  <26.768240, 25.070087, 32.441463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547276, 25.115776, 32.359688>,  <26.179003, 25.191925, 32.223392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547276, 25.115776, 32.359688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200356, -0.979705, -0.006000,
		0.334964, -0.062744, -0.940140,
		0.920683, -0.190372, 0.340737,
		26.823481, 25.058664, 32.461910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315208, 24.574755, 31.780548>,  <26.179003, 25.191925, 32.223392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315208, 24.574755, 31.780548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591522, 24.560875, 32.069439>,  <26.757311, 24.552547, 32.242775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591522, 24.560875, 32.069439>,  <26.315208, 24.574755, 31.780548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591522, 24.560875, 32.069439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040817, -0.999126, -0.008961,
		0.721910, -0.023289, -0.691595,
		0.690783, -0.034698, 0.722230,
		26.798758, 24.550465, 32.286106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811775, 24.072281, 31.627878>,  <26.315208, 24.574755, 31.780548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811775, 24.072281, 31.627878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883347, 24.104248, 32.020123>,  <26.926289, 24.123428, 32.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883347, 24.104248, 32.020123>,  <26.811775, 24.072281, 31.627878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883347, 24.104248, 32.020123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000556, -0.996704, 0.081130,
		0.983862, -0.013971, -0.178382,
		0.178928, 0.079920, 0.980611,
		26.937025, 24.128223, 32.314304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213871, 23.493359, 31.890909>,  <26.811775, 24.072281, 31.627878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213871, 23.493359, 31.890909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066673, 23.603462, 32.246170>,  <26.978355, 23.669523, 32.459328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066673, 23.603462, 32.246170>,  <27.213871, 23.493359, 31.890909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066673, 23.603462, 32.246170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123591, -0.932224, 0.340124,
		0.921578, 0.234931, 0.309034,
		-0.367995, 0.275257, 0.888152,
		26.956274, 23.686039, 32.512615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708509, 23.277599, 32.474308>,  <27.213871, 23.493359, 31.890909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708509, 23.277599, 32.474308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355362, 23.323578, 32.656441>,  <27.143473, 23.351166, 32.765720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355362, 23.323578, 32.656441>,  <27.708509, 23.277599, 32.474308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355362, 23.323578, 32.656441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159936, -0.838024, 0.521667,
		0.441544, 0.533388, 0.721482,
		-0.882870, 0.114948, 0.455332,
		27.090502, 23.358063, 32.793041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805611, 22.959978, 33.153473>,  <27.708509, 23.277599, 32.474308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805611, 22.959978, 33.153473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407597, 22.960190, 33.113667>,  <27.168789, 22.960318, 33.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407597, 22.960190, 33.113667>,  <27.805611, 22.959978, 33.153473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407597, 22.960190, 33.113667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048652, -0.874934, 0.481792,
		-0.086817, 0.484242, 0.870616,
		-0.995036, 0.000529, -0.099518,
		27.109085, 22.960348, 33.083813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630913, 22.728037, 33.738346>,  <27.805611, 22.959978, 33.153473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630913, 22.728037, 33.738346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286819, 22.674023, 33.541668>,  <27.080364, 22.641615, 33.423660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286819, 22.674023, 33.541668>,  <27.630913, 22.728037, 33.738346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286819, 22.674023, 33.541668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071363, -0.922922, 0.378315,
		-0.504882, 0.360528, 0.784292,
		-0.860234, -0.135035, -0.491695,
		27.028749, 22.633512, 33.394161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154690, 22.466837, 34.134193>,  <27.630913, 22.728037, 33.738346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154690, 22.466837, 34.134193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019579, 22.369499, 33.770504>,  <26.938513, 22.311096, 33.552288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.019579, 22.369499, 33.770504>,  <27.154690, 22.466837, 34.134193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019579, 22.369499, 33.770504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256883, -0.905493, 0.337776,
		-0.905493, 0.347657, 0.243343,
		-0.337776, -0.243343, -0.909226,
		26.918245, 22.296495, 33.497738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722715, 21.913401, 34.369167>,  <27.154690, 22.466837, 34.134193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722715, 21.913401, 34.369167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769440, 21.833790, 33.979965>,  <26.797474, 21.786024, 33.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769440, 21.833790, 33.979965>,  <26.722715, 21.913401, 34.369167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769440, 21.833790, 33.979965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304384, -0.939741, 0.155681,
		-0.945360, 0.277984, -0.170350,
		0.116808, -0.199026, -0.973008,
		26.804483, 21.774082, 33.688065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045820, 21.648476, 34.083126>,  <26.722715, 21.913401, 34.369167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045820, 21.648476, 34.083126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336443, 21.524479, 33.837845>,  <26.510817, 21.450081, 33.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336443, 21.524479, 33.837845>,  <26.045820, 21.648476, 34.083126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336443, 21.524479, 33.837845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226003, -0.950604, 0.212779,
		-0.648875, -0.016009, -0.760726,
		0.726556, -0.309994, -0.613205,
		26.554409, 21.431480, 33.653885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.757088, 21.121670, 33.752026>,  <26.045820, 21.648476, 34.083126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.757088, 21.121670, 33.752026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146196, 21.080311, 33.669056>,  <26.379662, 21.055496, 33.619274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146196, 21.080311, 33.669056>,  <25.757088, 21.121670, 33.752026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146196, 21.080311, 33.669056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116415, -0.991863, -0.051534,
		-0.200411, 0.074278, -0.976892,
		0.972771, -0.103397, -0.207427,
		26.438028, 21.049292, 33.606827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882383, 20.668196, 33.133278>,  <25.757088, 21.121670, 33.752026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882383, 20.668196, 33.133278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204273, 20.653744, 33.370296>,  <26.397408, 20.645073, 33.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204273, 20.653744, 33.370296>,  <25.882383, 20.668196, 33.133278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204273, 20.653744, 33.370296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119479, -0.987578, 0.102048,
		0.581500, -0.152917, -0.799046,
		0.804726, -0.036128, 0.592547,
		26.445690, 20.642906, 33.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251097, 20.124475, 32.837612>,  <25.882383, 20.668196, 33.133278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251097, 20.124475, 32.837612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432590, 20.172497, 33.190819>,  <26.541487, 20.201309, 33.402740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432590, 20.172497, 33.190819>,  <26.251097, 20.124475, 32.837612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432590, 20.172497, 33.190819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018609, -0.991944, 0.125302,
		0.890942, -0.040422, -0.452314,
		0.453735, 0.120054, 0.883013,
		26.568710, 20.208513, 33.455723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539991, 19.656727, 32.461987>,  <26.251097, 20.124475, 32.837612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539991, 19.656727, 32.461987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568926, 19.479530, 32.104546>,  <26.586287, 19.373213, 31.890081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568926, 19.479530, 32.104546>,  <26.539991, 19.656727, 32.461987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568926, 19.479530, 32.104546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317300, 0.839181, -0.441696,
		0.945562, 0.315491, -0.079856,
		0.072338, -0.442990, -0.893604,
		26.590628, 19.346634, 31.836464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867302, 20.164459, 31.989841>,  <26.539991, 19.656727, 32.461987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867302, 20.164459, 31.989841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685160, 19.903931, 31.747047>,  <26.575874, 19.747614, 31.601372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685160, 19.903931, 31.747047>,  <26.867302, 20.164459, 31.989841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685160, 19.903931, 31.747047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320517, 0.755982, -0.570755,
		0.830615, -0.065347, -0.553000,
		-0.455355, -0.651323, -0.606985,
		26.548553, 19.708534, 31.564953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125353, 20.331051, 31.267080>,  <26.867302, 20.164459, 31.989841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125353, 20.331051, 31.267080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788761, 20.122726, 31.209572>,  <26.586807, 19.997732, 31.175066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788761, 20.122726, 31.209572>,  <27.125353, 20.331051, 31.267080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788761, 20.122726, 31.209572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306853, 0.679694, -0.666226,
		0.444699, -0.516497, -0.731760,
		-0.841477, -0.520813, -0.143770,
		26.536318, 19.966482, 31.166441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057180, 20.321455, 30.566734>,  <27.125353, 20.331051, 31.267080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057180, 20.321455, 30.566734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695494, 20.240620, 30.717228>,  <26.478481, 20.192118, 30.807524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.695494, 20.240620, 30.717228>,  <27.057180, 20.321455, 30.566734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.695494, 20.240620, 30.717228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406974, 0.674806, -0.615637,
		-0.129471, -0.709787, -0.692416,
		-0.904218, -0.202088, 0.376232,
		26.424229, 20.179993, 30.830097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580767, 20.294281, 30.031366>,  <27.057180, 20.321455, 30.566734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580767, 20.294281, 30.031366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378500, 20.371689, 30.367664>,  <26.257139, 20.418133, 30.569443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378500, 20.371689, 30.367664>,  <26.580767, 20.294281, 30.031366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378500, 20.371689, 30.367664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286440, 0.881577, -0.375199,
		-0.813788, -0.430550, -0.390354,
		-0.505668, 0.193520, 0.840743,
		26.226799, 20.429745, 30.619888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005091, 20.606070, 29.745472>,  <26.580767, 20.294281, 30.031366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005091, 20.606070, 29.745472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033222, 20.700005, 30.133266>,  <26.050100, 20.756365, 30.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033222, 20.700005, 30.133266>,  <26.005091, 20.606070, 29.745472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033222, 20.700005, 30.133266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063296, 0.970986, -0.230609,
		-0.995514, -0.045146, 0.083153,
		0.070329, 0.234838, 0.969487,
		26.054321, 20.770456, 30.424112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574364, 21.287045, 29.892044>,  <26.005091, 20.606070, 29.745472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574364, 21.287045, 29.892044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808969, 21.262943, 30.215122>,  <25.949734, 21.248484, 30.408970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808969, 21.262943, 30.215122>,  <25.574364, 21.287045, 29.892044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808969, 21.262943, 30.215122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193379, 0.978806, -0.067408,
		-0.786515, 0.195727, 0.585735,
		0.586514, -0.060251, 0.807695,
		25.984924, 21.244867, 30.457430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354128, 21.840515, 30.406189>,  <25.574364, 21.287045, 29.892044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354128, 21.840515, 30.406189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733856, 21.760483, 30.503147>,  <25.961693, 21.712463, 30.561323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733856, 21.760483, 30.503147>,  <25.354128, 21.840515, 30.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733856, 21.760483, 30.503147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225022, 0.971088, -0.079705,
		-0.219441, 0.130210, 0.966897,
		0.949321, -0.200082, 0.242396,
		26.018652, 21.700459, 30.575867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600243, 22.418699, 30.799620>,  <25.354128, 21.840515, 30.406189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600243, 22.418699, 30.799620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937674, 22.228489, 30.699818>,  <26.140131, 22.114363, 30.639936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937674, 22.228489, 30.699818>,  <25.600243, 22.418699, 30.799620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937674, 22.228489, 30.699818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465464, 0.879183, -0.101881,
		0.267809, -0.030192, 0.962999,
		0.843577, -0.475526, -0.249507,
		26.190746, 22.085831, 30.624966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029127, 22.930256, 31.144138>,  <25.600243, 22.418699, 30.799620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029127, 22.930256, 31.144138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232281, 22.704273, 30.884022>,  <26.354172, 22.568684, 30.727951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232281, 22.704273, 30.884022>,  <26.029127, 22.930256, 31.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232281, 22.704273, 30.884022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519656, 0.803010, -0.291776,
		0.687032, -0.189740, 0.701417,
		0.507883, -0.564955, -0.650293,
		26.384645, 22.534786, 30.688934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749254, 23.224337, 31.079298>,  <26.029127, 22.930256, 31.144138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749254, 23.224337, 31.079298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747330, 23.005936, 30.744190>,  <26.746176, 22.874895, 30.543125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747330, 23.005936, 30.744190>,  <26.749254, 23.224337, 31.079298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747330, 23.005936, 30.744190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382902, 0.772923, -0.505941,
		0.923776, -0.323218, 0.205347,
		-0.004812, -0.546004, -0.837769,
		26.745886, 22.842134, 30.492859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430635, 23.274057, 30.724857>,  <26.749254, 23.224337, 31.079298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430635, 23.274057, 30.724857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148691, 23.186073, 30.455105>,  <26.979525, 23.133284, 30.293253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148691, 23.186073, 30.455105>,  <27.430635, 23.274057, 30.724857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148691, 23.186073, 30.455105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278039, 0.788960, -0.547938,
		0.652582, -0.573725, -0.494951,
		-0.704862, -0.219959, -0.674379,
		26.937233, 23.120085, 30.252790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776335, 23.421476, 30.138149>,  <27.430635, 23.274057, 30.724857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776335, 23.421476, 30.138149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387201, 23.422878, 30.045559>,  <27.153721, 23.423719, 29.990004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387201, 23.422878, 30.045559>,  <27.776335, 23.421476, 30.138149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387201, 23.422878, 30.045559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112949, 0.879985, -0.461377,
		0.202081, -0.474988, -0.856475,
		-0.972834, 0.003503, -0.231477,
		27.095350, 23.423929, 29.976116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674397, 23.546446, 29.376556>,  <27.776335, 23.421476, 30.138149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674397, 23.546446, 29.376556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308912, 23.630756, 29.515530>,  <27.089622, 23.681343, 29.598913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308912, 23.630756, 29.515530>,  <27.674397, 23.546446, 29.376556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308912, 23.630756, 29.515530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001607, 0.856835, -0.515588,
		-0.406365, -0.470539, -0.783237,
		-0.913710, 0.210775, 0.347432,
		27.034800, 23.693989, 29.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277620, 23.601042, 28.794140>,  <27.674397, 23.546446, 29.376556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277620, 23.601042, 28.794140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116617, 23.808971, 29.095543>,  <27.020016, 23.933729, 29.276384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116617, 23.808971, 29.095543>,  <27.277620, 23.601042, 28.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116617, 23.808971, 29.095543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055520, 0.835477, -0.546714,
		-0.913731, -0.178223, -0.365148,
		-0.402509, 0.519822, 0.753506,
		26.995865, 23.964918, 29.321594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017942, 24.159275, 28.438110>,  <27.277620, 23.601042, 28.794140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017942, 24.159275, 28.438110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904488, 24.298664, 28.795460>,  <26.836414, 24.382298, 29.009869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904488, 24.298664, 28.795460>,  <27.017942, 24.159275, 28.438110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904488, 24.298664, 28.795460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111515, 0.913327, -0.391661,
		-0.952426, -0.210713, -0.220193,
		-0.283636, 0.348473, 0.893374,
		26.819397, 24.403206, 29.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319958, 24.549444, 28.448900>,  <27.017942, 24.159275, 28.438110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319958, 24.549444, 28.448900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520344, 24.693901, 28.763508>,  <26.640575, 24.780575, 28.952272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520344, 24.693901, 28.763508>,  <26.319958, 24.549444, 28.448900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520344, 24.693901, 28.763508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285278, 0.926894, -0.243892,
		-0.817099, -0.102196, 0.567366,
		0.500964, 0.361141, 0.786519,
		26.670633, 24.802244, 28.999464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933313, 25.144081, 28.780685>,  <26.319958, 24.549444, 28.448900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933313, 25.144081, 28.780685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314039, 25.217499, 28.878956>,  <26.542475, 25.261549, 28.937918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314039, 25.217499, 28.878956>,  <25.933313, 25.144081, 28.780685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314039, 25.217499, 28.878956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125555, 0.964130, -0.233856,
		-0.279787, 0.191743, 0.940720,
		0.951817, 0.183542, 0.245677,
		26.599585, 25.272562, 28.952660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977518, 25.819761, 28.994732>,  <25.933313, 25.144081, 28.780685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977518, 25.819761, 28.994732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374384, 25.771145, 28.983154>,  <26.612503, 25.741974, 28.976208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374384, 25.771145, 28.983154>,  <25.977518, 25.819761, 28.994732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374384, 25.771145, 28.983154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113713, 0.974418, -0.193851,
		0.051766, 0.189041, 0.980604,
		0.992164, -0.121542, -0.028945,
		26.672033, 25.734682, 28.974470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350388, 26.348827, 29.500711>,  <25.977518, 25.819761, 28.994732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350388, 26.348827, 29.500711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583410, 26.243877, 29.193001>,  <26.723225, 26.180906, 29.008375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583410, 26.243877, 29.193001>,  <26.350388, 26.348827, 29.500711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583410, 26.243877, 29.193001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216372, 0.962373, -0.164382,
		0.783460, -0.070687, 0.617410,
		0.582559, -0.262377, -0.769275,
		26.758179, 26.165165, 28.962219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929403, 26.762886, 29.495117>,  <26.350388, 26.348827, 29.500711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929403, 26.762886, 29.495117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915642, 26.635597, 29.116161>,  <26.907385, 26.559223, 28.888788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915642, 26.635597, 29.116161>,  <26.929403, 26.762886, 29.495117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915642, 26.635597, 29.116161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359518, 0.880552, -0.308827,
		0.932504, -0.351230, 0.084111,
		-0.034406, -0.318222, -0.947392,
		26.905319, 26.540131, 28.831944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479460, 27.170218, 29.186125>,  <26.929403, 26.762886, 29.495117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479460, 27.170218, 29.186125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295076, 27.034153, 28.858269>,  <27.184446, 26.952515, 28.661556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295076, 27.034153, 28.858269>,  <27.479460, 27.170218, 29.186125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295076, 27.034153, 28.858269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342244, 0.784024, -0.517856,
		0.818772, -0.519226, -0.244983,
		-0.460957, -0.340162, -0.819639,
		27.156790, 26.932104, 28.612377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849054, 27.457939, 28.651318>,  <27.479460, 27.170218, 29.186125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849054, 27.457939, 28.651318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505989, 27.361523, 28.469631>,  <27.300150, 27.303673, 28.360619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505989, 27.361523, 28.469631>,  <27.849054, 27.457939, 28.651318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505989, 27.361523, 28.469631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073566, 0.816722, -0.572323,
		0.508923, -0.524275, -0.682740,
		-0.857663, -0.241042, -0.454217,
		27.248690, 27.289209, 28.333366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945906, 27.637529, 27.963419>,  <27.849054, 27.457939, 28.651318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945906, 27.637529, 27.963419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546518, 27.653900, 27.978325>,  <27.306887, 27.663723, 27.987268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546518, 27.653900, 27.978325>,  <27.945906, 27.637529, 27.963419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546518, 27.653900, 27.978325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020961, 0.902690, -0.429781,
		-0.051231, -0.428341, -0.902164,
		-0.998467, 0.040928, 0.037267,
		27.246979, 27.666178, 27.989506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760626, 27.817303, 27.323652>,  <27.945906, 27.637529, 27.963419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760626, 27.817303, 27.323652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418022, 27.891838, 27.516182>,  <27.212460, 27.936560, 27.631699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418022, 27.891838, 27.516182>,  <27.760626, 27.817303, 27.323652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418022, 27.891838, 27.516182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103250, 0.851846, -0.513515,
		-0.505700, -0.489526, -0.710374,
		-0.856508, 0.186338, 0.481322,
		27.161070, 27.947739, 27.660578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329685, 28.009232, 26.824133>,  <27.760626, 27.817303, 27.323652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329685, 28.009232, 26.824133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141722, 28.140411, 27.151947>,  <27.028944, 28.219118, 27.348635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141722, 28.140411, 27.151947>,  <27.329685, 28.009232, 26.824133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141722, 28.140411, 27.151947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322549, 0.800429, -0.505248,
		-0.821674, -0.501760, -0.270349,
		-0.469909, 0.327948, 0.819534,
		27.000750, 28.238796, 27.397808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546932, 28.054474, 26.759386>,  <27.329685, 28.009232, 26.824133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546932, 28.054474, 26.759386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658892, 28.312538, 27.043758>,  <26.726068, 28.467377, 27.214382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658892, 28.312538, 27.043758>,  <26.546932, 28.054474, 26.759386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658892, 28.312538, 27.043758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531182, 0.720926, -0.445098,
		-0.799688, -0.253051, 0.544485,
		0.279900, 0.645160, 0.710932,
		26.742863, 28.506086, 27.257038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075850, 28.497780, 26.743031>,  <26.546932, 28.054474, 26.759386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075850, 28.497780, 26.743031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327929, 28.696522, 26.981689>,  <26.479176, 28.815767, 27.124886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327929, 28.696522, 26.981689>,  <26.075850, 28.497780, 26.743031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327929, 28.696522, 26.981689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450479, 0.859859, -0.240232,
		-0.632394, -0.117384, 0.765702,
		0.630196, 0.496854, 0.596648,
		26.516987, 28.845577, 27.160685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719177, 28.830673, 27.273979>,  <26.075850, 28.497780, 26.743031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719177, 28.830673, 27.273979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065245, 29.015137, 27.195175>,  <26.272884, 29.125814, 27.147894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065245, 29.015137, 27.195175>,  <25.719177, 28.830673, 27.273979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065245, 29.015137, 27.195175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472464, 0.617883, -0.628488,
		-0.168106, 0.636829, 0.752456,
		0.865169, 0.461161, -0.197009,
		26.324795, 29.153484, 27.136072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537783, 29.520226, 27.155428>,  <25.719177, 28.830673, 27.273979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537783, 29.520226, 27.155428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901726, 29.507526, 26.989944>,  <26.120090, 29.499907, 26.890656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901726, 29.507526, 26.989944>,  <25.537783, 29.520226, 27.155428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901726, 29.507526, 26.989944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241710, 0.769862, -0.590667,
		0.337250, 0.637420, 0.692790,
		0.909856, -0.031748, -0.413707,
		26.174683, 29.498001, 26.865831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692921, 30.208038, 26.972103>,  <25.537783, 29.520226, 27.155428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692921, 30.208038, 26.972103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967916, 30.013878, 26.756050>,  <26.132914, 29.897381, 26.626419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967916, 30.013878, 26.756050>,  <25.692921, 30.208038, 26.972103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967916, 30.013878, 26.756050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136826, 0.643879, -0.752794,
		0.713187, 0.591442, 0.376244,
		0.687490, -0.485403, -0.540131,
		26.174164, 29.868258, 26.594011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022644, 30.794170, 26.754499>,  <25.692921, 30.208038, 26.972103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022644, 30.794170, 26.754499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130560, 30.493095, 26.514275>,  <26.195311, 30.312450, 26.370140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130560, 30.493095, 26.514275>,  <26.022644, 30.794170, 26.754499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130560, 30.493095, 26.514275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042912, 0.632470, -0.773396,
		0.961962, 0.182884, 0.202934,
		0.269791, -0.752686, -0.600564,
		26.211496, 30.267290, 26.334105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615486, 30.960417, 26.346291>,  <26.022644, 30.794170, 26.754499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615486, 30.960417, 26.346291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459135, 30.657181, 26.137478>,  <26.365324, 30.475239, 26.012190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459135, 30.657181, 26.137478>,  <26.615486, 30.960417, 26.346291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459135, 30.657181, 26.137478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069576, 0.541195, -0.838014,
		0.917809, -0.363882, -0.158797,
		-0.390878, -0.758088, -0.522031,
		26.341871, 30.429754, 25.980869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030165, 30.865845, 25.723276>,  <26.615486, 30.960417, 26.346291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030165, 30.865845, 25.723276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673813, 30.706604, 25.635777>,  <26.460003, 30.611059, 25.583277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673813, 30.706604, 25.635777>,  <27.030165, 30.865845, 25.723276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673813, 30.706604, 25.635777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041821, 0.551406, -0.833188,
		0.452310, -0.733122, -0.507885,
		-0.890880, -0.398100, -0.218747,
		26.406549, 30.587173, 25.570152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050278, 30.990170, 25.027758>,  <27.030165, 30.865845, 25.723276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050278, 30.990170, 25.027758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670622, 30.877293, 25.083622>,  <26.442829, 30.809566, 25.117140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670622, 30.877293, 25.083622>,  <27.050278, 30.990170, 25.027758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670622, 30.877293, 25.083622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284085, 0.576251, -0.766309,
		0.135765, -0.767009, -0.627108,
		-0.949139, -0.282190, 0.139661,
		26.385880, 30.792635, 25.125521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738134, 30.788511, 24.328304>,  <27.050278, 30.990170, 25.027758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738134, 30.788511, 24.328304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445837, 30.880177, 24.585518>,  <26.270458, 30.935175, 24.739847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445837, 30.880177, 24.585518>,  <26.738134, 30.788511, 24.328304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445837, 30.880177, 24.585518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355943, 0.675879, -0.645362,
		-0.582508, -0.700480, -0.412326,
		-0.730745, 0.229164, 0.643036,
		26.226614, 30.948925, 24.778429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142447, 30.845127, 23.939512>,  <26.738134, 30.788511, 24.328304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142447, 30.845127, 23.939512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048384, 31.037376, 24.277435>,  <25.991947, 31.152725, 24.480190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048384, 31.037376, 24.277435>,  <26.142447, 30.845127, 23.939512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048384, 31.037376, 24.277435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340469, 0.773380, -0.534756,
		-0.910375, -0.413383, -0.018227,
		-0.235156, 0.480623, 0.844810,
		25.977837, 31.181562, 24.530878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330496, 31.028042, 23.976320>,  <26.142447, 30.845127, 23.939512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330496, 31.028042, 23.976320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531660, 31.294373, 24.196777>,  <25.652359, 31.454170, 24.329052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531660, 31.294373, 24.196777>,  <25.330496, 31.028042, 23.976320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531660, 31.294373, 24.196777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559314, 0.736836, -0.379791,
		-0.658975, -0.117260, 0.742968,
		0.502911, 0.665825, 0.551142,
		25.682533, 31.494120, 24.362120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855364, 31.407333, 24.327829>,  <25.330496, 31.028042, 23.976320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855364, 31.407333, 24.327829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179844, 31.640781, 24.342495>,  <25.374531, 31.780849, 24.351294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179844, 31.640781, 24.342495>,  <24.855364, 31.407333, 24.327829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179844, 31.640781, 24.342495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555640, 0.788813, -0.262749,
		-0.182266, 0.192771, 0.964167,
		0.811198, 0.583620, 0.036662,
		25.423204, 31.815868, 24.353493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527685, 32.007587, 24.617281>,  <24.855364, 31.407333, 24.327829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527685, 32.007587, 24.617281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883667, 32.085861, 24.452507>,  <25.097256, 32.132824, 24.353642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883667, 32.085861, 24.452507>,  <24.527685, 32.007587, 24.617281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883667, 32.085861, 24.452507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388316, 0.798819, -0.459455,
		0.239154, 0.568855, 0.786899,
		0.889953, 0.195685, -0.411936,
		25.150652, 32.144566, 24.328926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940546, 32.535652, 24.809191>,  <24.527685, 32.007587, 24.617281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940546, 32.535652, 24.809191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960526, 32.478558, 24.413792>,  <24.972513, 32.444302, 24.176552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960526, 32.478558, 24.413792>,  <24.940546, 32.535652, 24.809191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960526, 32.478558, 24.413792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512344, 0.845924, -0.148040,
		0.857327, 0.513845, -0.030881,
		0.049947, -0.142741, -0.988499,
		24.975510, 32.435734, 24.117243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103447, 33.195408, 24.500267>,  <24.940546, 32.535652, 24.809191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103447, 33.195408, 24.500267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921843, 32.981396, 24.215279>,  <24.812880, 32.852989, 24.044285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921843, 32.981396, 24.215279>,  <25.103447, 33.195408, 24.500267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921843, 32.981396, 24.215279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513583, 0.810574, -0.281430,
		0.728084, 0.238141, -0.642793,
		-0.454011, -0.535032, -0.712471,
		24.785639, 32.820885, 24.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015009, 33.587284, 23.983078>,  <25.103447, 33.195408, 24.500267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015009, 33.587284, 23.983078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732618, 33.322235, 23.883053>,  <24.563185, 33.163204, 23.823038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732618, 33.322235, 23.883053>,  <25.015009, 33.587284, 23.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732618, 33.322235, 23.883053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642069, 0.747813, -0.168887,
		0.298908, 0.041327, -0.953387,
		-0.705975, -0.662622, -0.250062,
		24.520826, 33.123447, 23.808035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592476, 33.957455, 23.560047>,  <25.015009, 33.587284, 23.983078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592476, 33.957455, 23.560047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377012, 33.625488, 23.618118>,  <24.247734, 33.426308, 23.652962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377012, 33.625488, 23.618118>,  <24.592476, 33.957455, 23.560047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377012, 33.625488, 23.618118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830347, 0.493746, -0.258340,
		0.142721, -0.259706, -0.955083,
		-0.538661, -0.829920, 0.145178,
		24.215414, 33.376511, 23.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095345, 33.881935, 23.021290>,  <24.592476, 33.957455, 23.560047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095345, 33.881935, 23.021290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959753, 33.713070, 23.357594>,  <23.878399, 33.611752, 23.559376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.959753, 33.713070, 23.357594>,  <24.095345, 33.881935, 23.021290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.959753, 33.713070, 23.357594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918106, 0.343520, -0.197677,
		-0.205366, -0.838914, -0.504031,
		-0.338979, -0.422158, 0.840759,
		23.858059, 33.586422, 23.609821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480743, 33.473755, 22.888264>,  <24.095345, 33.881935, 23.021290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480743, 33.473755, 22.888264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.495710, 33.570530, 23.276093>,  <23.504690, 33.628593, 23.508789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.495710, 33.570530, 23.276093>,  <23.480743, 33.473755, 22.888264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.495710, 33.570530, 23.276093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926573, 0.371770, -0.057010,
		-0.374250, -0.896245, 0.238080,
		0.037416, 0.241935, 0.969571,
		23.506935, 33.643112, 23.566963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811245, 33.500969, 23.114420>,  <23.480743, 33.473755, 22.888264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811245, 33.500969, 23.114420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486448, 33.424194, 22.893936>,  <22.291571, 33.378128, 22.761646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486448, 33.424194, 22.893936>,  <22.811245, 33.500969, 23.114420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486448, 33.424194, 22.893936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529765, 0.154037, -0.834039,
		0.244992, -0.969243, -0.023393,
		-0.811990, -0.191940, -0.551209,
		22.242851, 33.366611, 22.728573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.953087, 32.954369, 22.624575>,  <22.811245, 33.500969, 23.114420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.953087, 32.954369, 22.624575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664236, 33.208424, 22.514935>,  <22.490927, 33.360859, 22.449150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664236, 33.208424, 22.514935>,  <22.953087, 32.954369, 22.624575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664236, 33.208424, 22.514935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480525, 0.175522, -0.859237,
		-0.497626, -0.752189, -0.431950,
		-0.722125, 0.635141, -0.274101,
		22.447599, 33.398968, 22.432705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.566622, 32.661324, 22.005995>,  <22.953087, 32.954369, 22.624575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.566622, 32.661324, 22.005995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.600204, 33.057888, 22.046108>,  <22.620354, 33.295826, 22.070177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.600204, 33.057888, 22.046108>,  <22.566622, 32.661324, 22.005995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.600204, 33.057888, 22.046108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387230, 0.060270, -0.920011,
		-0.918153, 0.116074, -0.378844,
		0.083957, 0.991410, 0.100284,
		22.625391, 33.355312, 22.076193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260744, 32.960999, 21.365559>,  <22.566622, 32.661324, 22.005995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260744, 32.960999, 21.365559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491949, 33.253162, 21.511105>,  <22.630672, 33.428463, 21.598433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491949, 33.253162, 21.511105>,  <22.260744, 32.960999, 21.365559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491949, 33.253162, 21.511105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338497, 0.191113, -0.921355,
		-0.742510, 0.655722, -0.136777,
		0.578013, 0.730414, 0.363863,
		22.665354, 33.472286, 21.620264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.354218, 33.346855, 20.811213>,  <22.260744, 32.960999, 21.365559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.354218, 33.346855, 20.811213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642406, 33.491631, 21.047829>,  <22.815321, 33.578495, 21.189798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642406, 33.491631, 21.047829>,  <22.354218, 33.346855, 20.811213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642406, 33.491631, 21.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608286, 0.079798, -0.789696,
		-0.333023, 0.928781, -0.162668,
		0.720475, 0.361936, 0.591539,
		22.858549, 33.600212, 21.225290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.725954, 33.941895, 20.496284>,  <22.354218, 33.346855, 20.811213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.725954, 33.941895, 20.496284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.987690, 33.810997, 20.768974>,  <23.144732, 33.732456, 20.932589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.987690, 33.810997, 20.768974>,  <22.725954, 33.941895, 20.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.987690, 33.810997, 20.768974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716565, -0.019714, -0.697242,
		0.241611, 0.944733, 0.221594,
		0.654338, -0.327248, 0.681726,
		23.183992, 33.712822, 20.973492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333738, 34.197556, 20.219963>,  <22.725954, 33.941895, 20.496284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333738, 34.197556, 20.219963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506538, 33.968399, 20.498581>,  <23.610218, 33.830906, 20.665752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.506538, 33.968399, 20.498581>,  <23.333738, 34.197556, 20.219963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.506538, 33.968399, 20.498581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780561, -0.149383, -0.606967,
		0.451776, 0.805906, 0.382641,
		0.431998, -0.572887, 0.696547,
		23.636137, 33.796532, 20.707544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.082979, 34.440426, 20.256805>,  <23.333738, 34.197556, 20.219963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.082979, 34.440426, 20.256805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033873, 34.062836, 20.379341>,  <24.004408, 33.836281, 20.452862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.033873, 34.062836, 20.379341>,  <24.082979, 34.440426, 20.256805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033873, 34.062836, 20.379341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732738, -0.294399, -0.613535,
		0.669346, 0.149145, 0.727827,
		-0.122766, -0.943973, 0.306339,
		23.997044, 33.779644, 20.471243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790359, 34.191929, 20.500980>,  <24.082979, 34.440426, 20.256805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790359, 34.191929, 20.500980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554718, 33.887295, 20.392941>,  <24.413334, 33.704514, 20.328117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554718, 33.887295, 20.392941>,  <24.790359, 34.191929, 20.500980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554718, 33.887295, 20.392941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653551, -0.252480, -0.713530,
		0.475217, -0.596865, 0.646469,
		-0.589102, -0.761581, -0.270099,
		24.377987, 33.658821, 20.311911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236635, 33.616585, 20.477064>,  <24.790359, 34.191929, 20.500980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236635, 33.616585, 20.477064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921715, 33.502926, 20.258190>,  <24.732761, 33.434731, 20.126865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921715, 33.502926, 20.258190>,  <25.236635, 33.616585, 20.477064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921715, 33.502926, 20.258190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609172, -0.221453, -0.761490,
		0.095200, -0.932855, 0.347446,
		-0.787303, -0.284149, -0.547187,
		24.685524, 33.417683, 20.094034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463921, 32.979156, 19.987654>,  <25.236635, 33.616585, 20.477064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463921, 32.979156, 19.987654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119026, 33.102928, 19.827251>,  <24.912090, 33.177189, 19.731010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119026, 33.102928, 19.827251>,  <25.463921, 32.979156, 19.987654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119026, 33.102928, 19.827251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307325, -0.309714, -0.899793,
		-0.402618, -0.899073, 0.171952,
		-0.862235, 0.309428, -0.401004,
		24.860355, 33.195755, 19.706949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168682, 32.397179, 19.425419>,  <25.463921, 32.979156, 19.987654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168682, 32.397179, 19.425419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017393, 32.760250, 19.352673>,  <24.926620, 32.978092, 19.309025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017393, 32.760250, 19.352673>,  <25.168682, 32.397179, 19.425419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017393, 32.760250, 19.352673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246257, -0.090729, -0.964949,
		-0.892360, -0.409750, -0.189206,
		-0.378221, 0.907675, -0.181867,
		24.903927, 33.032551, 19.298113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637955, 32.328747, 18.792986>,  <25.168682, 32.397179, 19.425419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637955, 32.328747, 18.792986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726786, 32.718731, 18.797634>,  <24.780085, 32.952721, 18.800423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.726786, 32.718731, 18.797634>,  <24.637955, 32.328747, 18.792986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726786, 32.718731, 18.797634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139301, -0.019930, -0.990050,
		-0.965027, 0.221487, -0.140239,
		0.222078, 0.974960, 0.011621,
		24.793409, 33.011219, 18.801121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.197866, 32.540390, 18.205791>,  <24.637955, 32.328747, 18.792986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.197866, 32.540390, 18.205791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475172, 32.824913, 18.252132>,  <24.641556, 32.995628, 18.279938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.475172, 32.824913, 18.252132>,  <24.197866, 32.540390, 18.205791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475172, 32.824913, 18.252132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206897, -0.042447, -0.977442,
		-0.690347, 0.701594, -0.176595,
		0.693263, 0.711311, 0.115854,
		24.683151, 33.038307, 18.286888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.159506, 32.863987, 17.561234>,  <24.197866, 32.540390, 18.205791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.159506, 32.863987, 17.561234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499723, 32.985672, 17.732826>,  <24.703854, 33.058681, 17.835783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499723, 32.985672, 17.732826>,  <24.159506, 32.863987, 17.561234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499723, 32.985672, 17.732826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443359, 0.023937, -0.896025,
		-0.282850, 0.952304, -0.114516,
		0.850546, 0.304212, 0.428983,
		24.754887, 33.076935, 17.861521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.425093, 33.442371, 17.239635>,  <24.159506, 32.863987, 17.561234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.425093, 33.442371, 17.239635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770941, 33.324535, 17.402435>,  <24.978451, 33.253834, 17.500114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770941, 33.324535, 17.402435>,  <24.425093, 33.442371, 17.239635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770941, 33.324535, 17.402435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466866, 0.171753, -0.867489,
		0.185647, 0.940064, 0.286034,
		0.864622, -0.294586, 0.406998,
		25.030327, 33.236160, 17.524534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908163, 33.947140, 17.135290>,  <24.425093, 33.442371, 17.239635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908163, 33.947140, 17.135290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118992, 33.610836, 17.184811>,  <25.245489, 33.409054, 17.214523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118992, 33.610836, 17.184811>,  <24.908163, 33.947140, 17.135290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118992, 33.610836, 17.184811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611670, 0.274184, -0.742080,
		0.589963, 0.466856, 0.658779,
		0.527071, -0.840755, 0.123803,
		25.277113, 33.358608, 17.221952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706566, 34.145710, 17.075329>,  <24.908163, 33.947140, 17.135290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706566, 34.145710, 17.075329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722490, 33.747952, 17.036160>,  <25.732044, 33.509296, 17.012657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722490, 33.747952, 17.036160>,  <25.706566, 34.145710, 17.075329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722490, 33.747952, 17.036160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821698, 0.088342, -0.563034,
		0.568531, -0.058049, 0.820611,
		0.039811, -0.994397, -0.097924,
		25.734434, 33.449631, 17.006783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385616, 33.953259, 17.274887>,  <25.706566, 34.145710, 17.075329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385616, 33.953259, 17.274887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238245, 33.653694, 17.054562>,  <26.149822, 33.473957, 16.922365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238245, 33.653694, 17.054562>,  <26.385616, 33.953259, 17.274887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238245, 33.653694, 17.054562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816814, 0.022157, -0.576475,
		0.443931, -0.662304, 0.603555,
		-0.368429, -0.748908, -0.550815,
		26.127716, 33.429024, 16.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051176, 33.482010, 17.077061>,  <26.385616, 33.953259, 17.274887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051176, 33.482010, 17.077061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762726, 33.370953, 16.823166>,  <26.589655, 33.304317, 16.670830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762726, 33.370953, 16.823166>,  <27.051176, 33.482010, 17.077061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762726, 33.370953, 16.823166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669533, -0.043824, -0.741489,
		0.178054, -0.959684, 0.217495,
		-0.721126, -0.277645, -0.634736,
		26.546389, 33.287659, 16.632746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341747, 32.994740, 16.538483>,  <27.051176, 33.482010, 17.077061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341747, 32.994740, 16.538483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995962, 33.063625, 16.349571>,  <26.788492, 33.104958, 16.236225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995962, 33.063625, 16.349571>,  <27.341747, 32.994740, 16.538483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995962, 33.063625, 16.349571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496603, 0.438417, -0.749117,
		0.078043, -0.882118, -0.464519,
		-0.864462, 0.172218, -0.472278,
		26.736624, 33.115292, 16.207888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379631, 32.631466, 15.905411>,  <27.341747, 32.994740, 16.538483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379631, 32.631466, 15.905411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125622, 32.940029, 15.889062>,  <26.973215, 33.125168, 15.879252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125622, 32.940029, 15.889062>,  <27.379631, 32.631466, 15.905411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125622, 32.940029, 15.889062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539405, 0.404921, -0.738296,
		-0.552979, -0.490883, -0.673237,
		-0.635025, 0.771410, -0.040872,
		26.935114, 33.171452, 15.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114475, 32.642624, 15.206633>,  <27.379631, 32.631466, 15.905411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114475, 32.642624, 15.206633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160814, 32.972500, 15.428071>,  <27.188618, 33.170425, 15.560934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160814, 32.972500, 15.428071>,  <27.114475, 32.642624, 15.206633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160814, 32.972500, 15.428071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584699, 0.393927, -0.709188,
		-0.802936, 0.405845, -0.436559,
		0.115848, 0.824688, 0.553596,
		27.195568, 33.219906, 15.594150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972731, 33.326359, 14.858159>,  <27.114475, 32.642624, 15.206633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972731, 33.326359, 14.858159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273266, 33.329845, 15.122104>,  <27.453587, 33.331936, 15.280471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273266, 33.329845, 15.122104>,  <26.972731, 33.326359, 14.858159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273266, 33.329845, 15.122104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649618, 0.166215, -0.741869,
		-0.116146, 0.986051, 0.119221,
		0.751337, 0.008717, 0.659862,
		27.498667, 33.332458, 15.320062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406349, 33.513046, 14.418780>,  <26.972731, 33.326359, 14.858159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406349, 33.513046, 14.418780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607918, 33.452122, 14.758866>,  <27.728859, 33.415565, 14.962917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607918, 33.452122, 14.758866>,  <27.406349, 33.513046, 14.418780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607918, 33.452122, 14.758866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845541, -0.114061, -0.521585,
		0.176421, 0.981728, 0.071310,
		0.503921, -0.152314, 0.850214,
		27.759094, 33.406429, 15.013930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690992, 34.198200, 14.503195>,  <27.406349, 33.513046, 14.418780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690992, 34.198200, 14.503195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851528, 33.862778, 14.650571>,  <27.947849, 33.661526, 14.738997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851528, 33.862778, 14.650571>,  <27.690992, 34.198200, 14.503195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851528, 33.862778, 14.650571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715350, 0.035755, -0.697851,
		0.572014, 0.543640, 0.614212,
		0.401341, -0.838557, 0.368441,
		27.971930, 33.611210, 14.761103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524336, 34.452015, 15.226517>,  <27.690992, 34.198200, 14.503195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524336, 34.452015, 15.226517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300671, 34.484180, 15.556577>,  <27.166471, 34.503479, 15.754613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300671, 34.484180, 15.556577>,  <27.524336, 34.452015, 15.226517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300671, 34.484180, 15.556577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286058, 0.915450, -0.283059,
		-0.778145, -0.394316, -0.488881,
		-0.559161, 0.080413, 0.825150,
		27.132923, 34.508305, 15.804122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829388, 34.554058, 15.025906>,  <27.524336, 34.452015, 15.226517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829388, 34.554058, 15.025906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922785, 34.729900, 15.372830>,  <26.978823, 34.835403, 15.580985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922785, 34.729900, 15.372830>,  <26.829388, 34.554058, 15.025906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922785, 34.729900, 15.372830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352597, 0.869537, -0.345805,
		-0.906177, -0.225069, 0.358033,
		0.233493, 0.439602, 0.867312,
		26.992832, 34.861782, 15.633024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715620, 35.280762, 15.135236>,  <26.829388, 34.554058, 15.025906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715620, 35.280762, 15.135236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741375, 35.678177, 15.172626>,  <26.756828, 35.916626, 15.195060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741375, 35.678177, 15.172626>,  <26.715620, 35.280762, 15.135236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741375, 35.678177, 15.172626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948514, 0.031820, 0.315132,
		0.310122, -0.108952, 0.944433,
		0.064386, 0.993537, 0.093474,
		26.760691, 35.976238, 15.200668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433962, 35.510204, 15.785471>,  <26.715620, 35.280762, 15.135236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433962, 35.510204, 15.785471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400658, 35.815731, 15.529452>,  <26.380674, 35.999046, 15.375841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400658, 35.815731, 15.529452>,  <26.433962, 35.510204, 15.785471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400658, 35.815731, 15.529452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929525, 0.172007, 0.326185,
		0.359236, 0.622097, 0.695661,
		-0.083260, 0.763812, -0.640046,
		26.375679, 36.044876, 15.337439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205788, 36.042835, 16.225857>,  <26.433962, 35.510204, 15.785471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205788, 36.042835, 16.225857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069712, 36.064415, 15.850333>,  <25.988066, 36.077362, 15.625019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069712, 36.064415, 15.850333>,  <26.205788, 36.042835, 16.225857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069712, 36.064415, 15.850333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878350, 0.338297, 0.337721,
		0.335816, 0.939492, -0.067698,
		-0.340188, 0.053950, -0.938809,
		25.967655, 36.080601, 15.568690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034510, 36.707020, 16.102642>,  <26.205788, 36.042835, 16.225857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034510, 36.707020, 16.102642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841719, 36.386162, 15.961640>,  <25.726044, 36.193645, 15.877039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841719, 36.386162, 15.961640>,  <26.034510, 36.707020, 16.102642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841719, 36.386162, 15.961640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815044, 0.262807, 0.516368,
		-0.321561, 0.536185, -0.780451,
		-0.481977, -0.802145, -0.352506,
		25.697126, 36.145519, 15.855888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332115, 36.801666, 15.953977>,  <26.034510, 36.707020, 16.102642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332115, 36.801666, 15.953977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359221, 36.410610, 16.033600>,  <25.375483, 36.175976, 16.081373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359221, 36.410610, 16.033600>,  <25.332115, 36.801666, 15.953977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359221, 36.410610, 16.033600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853493, 0.046521, 0.519024,
		-0.516681, -0.205064, -0.831258,
		0.067762, -0.977642, 0.199057,
		25.379549, 36.117317, 16.093317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634510, 36.457909, 15.970391>,  <25.332115, 36.801666, 15.953977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634510, 36.457909, 15.970391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900919, 36.281544, 16.211060>,  <25.060764, 36.175724, 16.355461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900919, 36.281544, 16.211060>,  <24.634510, 36.457909, 15.970391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900919, 36.281544, 16.211060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673093, -0.007594, 0.739519,
		-0.321495, -0.897517, -0.301834,
		0.666023, -0.440914, 0.601671,
		25.100725, 36.149269, 16.391562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.258175, 35.877209, 16.230799>,  <24.634510, 36.457909, 15.970391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.258175, 35.877209, 16.230799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560478, 35.941048, 16.484840>,  <24.741859, 35.979351, 16.637264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560478, 35.941048, 16.484840>,  <24.258175, 35.877209, 16.230799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560478, 35.941048, 16.484840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635848, -0.053089, 0.769986,
		0.156610, -0.985753, 0.061361,
		0.755758, 0.159604, 0.635103,
		24.787207, 35.988930, 16.675371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.042757, 35.522511, 16.800020>,  <24.258175, 35.877209, 16.230799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.042757, 35.522511, 16.800020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316298, 35.787369, 16.922600>,  <24.480423, 35.946281, 16.996147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316298, 35.787369, 16.922600>,  <24.042757, 35.522511, 16.800020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316298, 35.787369, 16.922600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512841, 0.137463, 0.847407,
		0.518979, -0.736661, 0.433579,
		0.683853, 0.662144, 0.306449,
		24.521454, 35.986012, 17.014534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.107992, 35.331238, 17.481291>,  <24.042757, 35.522511, 16.800020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.107992, 35.331238, 17.481291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227085, 35.710953, 17.440868>,  <24.298542, 35.938782, 17.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227085, 35.710953, 17.440868>,  <24.107992, 35.331238, 17.481291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227085, 35.710953, 17.440868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472530, 0.238521, 0.848424,
		0.829500, -0.204854, 0.519581,
		0.297734, 0.949285, -0.101054,
		24.316406, 35.995739, 17.410553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312542, 35.566772, 18.102037>,  <24.107992, 35.331238, 17.481291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312542, 35.566772, 18.102037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232180, 35.914673, 17.921741>,  <24.183962, 36.123413, 17.813564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232180, 35.914673, 17.921741>,  <24.312542, 35.566772, 18.102037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232180, 35.914673, 17.921741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628381, 0.238566, 0.740421,
		0.751514, 0.431993, 0.498607,
		-0.200906, 0.869752, -0.450741,
		24.171907, 36.175598, 17.786518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355654, 36.124626, 18.587418>,  <24.312542, 35.566772, 18.102037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355654, 36.124626, 18.587418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140886, 36.303448, 18.301239>,  <24.012026, 36.410740, 18.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140886, 36.303448, 18.301239>,  <24.355654, 36.124626, 18.587418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140886, 36.303448, 18.301239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684310, 0.265193, 0.679259,
		0.493394, 0.854295, 0.163533,
		-0.536919, 0.447049, -0.715447,
		23.979811, 36.437561, 18.086605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238707, 36.899288, 18.731724>,  <24.355654, 36.124626, 18.587418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238707, 36.899288, 18.731724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946835, 36.831108, 18.466843>,  <23.771711, 36.790199, 18.307915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.946835, 36.831108, 18.466843>,  <24.238707, 36.899288, 18.731724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.946835, 36.831108, 18.466843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683667, 0.199963, 0.701865,
		0.012784, 0.964864, -0.262439,
		-0.729682, -0.170448, -0.662202,
		23.727930, 36.779972, 18.268183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.888142, 37.428379, 18.836739>,  <24.238707, 36.899288, 18.731724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.888142, 37.428379, 18.836739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625620, 37.186172, 18.656689>,  <23.468107, 37.040848, 18.548658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625620, 37.186172, 18.656689>,  <23.888142, 37.428379, 18.836739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625620, 37.186172, 18.656689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698953, 0.263278, 0.664943,
		-0.284126, 0.751022, -0.596018,
		-0.656306, -0.605516, -0.450125,
		23.428728, 37.004517, 18.521650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209093, 37.804501, 18.794170>,  <23.888142, 37.428379, 18.836739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209093, 37.804501, 18.794170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158285, 37.410023, 18.751671>,  <23.127800, 37.173336, 18.726171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.158285, 37.410023, 18.751671>,  <23.209093, 37.804501, 18.794170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.158285, 37.410023, 18.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739611, 0.022793, 0.672648,
		-0.660939, 0.164025, -0.732294,
		-0.127022, -0.986193, -0.106250,
		23.120178, 37.114166, 18.719795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433865, 37.664749, 18.619452>,  <23.209093, 37.804501, 18.794170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433865, 37.664749, 18.619452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579805, 37.321480, 18.763908>,  <22.667370, 37.115517, 18.850582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579805, 37.321480, 18.763908>,  <22.433865, 37.664749, 18.619452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.579805, 37.321480, 18.763908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720865, -0.014877, 0.692915,
		-0.589269, -0.513144, -0.624055,
		0.364850, -0.858173, 0.361142,
		22.689260, 37.064030, 18.872252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851694, 37.412102, 18.785370>,  <22.433865, 37.664749, 18.619452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851694, 37.412102, 18.785370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117081, 37.194355, 18.990692>,  <22.276312, 37.063709, 19.113886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117081, 37.194355, 18.990692>,  <21.851694, 37.412102, 18.785370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117081, 37.194355, 18.990692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686296, -0.169516, 0.707292,
		-0.298010, -0.821544, -0.486062,
		0.663467, -0.544362, 0.513305,
		22.316120, 37.031048, 19.144684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466328, 36.803833, 18.972652>,  <21.851694, 37.412102, 18.785370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466328, 36.803833, 18.972652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792681, 36.806225, 19.203926>,  <21.988493, 36.807659, 19.342690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792681, 36.806225, 19.203926>,  <21.466328, 36.803833, 18.972652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792681, 36.806225, 19.203926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555575, -0.268954, 0.786766,
		0.160213, -0.963134, -0.216110,
		0.815885, 0.005984, 0.578184,
		22.037447, 36.808022, 19.377380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.553505, 36.117050, 19.186769>,  <21.466328, 36.803833, 18.972652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.553505, 36.117050, 19.186769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.748203, 36.353008, 19.444485>,  <21.865023, 36.494583, 19.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.748203, 36.353008, 19.444485>,  <21.553505, 36.117050, 19.186769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.748203, 36.353008, 19.444485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373904, -0.525886, 0.763963,
		0.789478, -0.612756, -0.035409,
		0.486744, 0.589893, 0.644288,
		21.894226, 36.529976, 19.637772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.729618, 35.667252, 19.671995>,  <21.553505, 36.117050, 19.186769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.729618, 35.667252, 19.671995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.782536, 36.010330, 19.870731>,  <21.814285, 36.216179, 19.989973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.782536, 36.010330, 19.870731>,  <21.729618, 35.667252, 19.671995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.782536, 36.010330, 19.870731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441459, -0.397804, 0.804280,
		0.887475, -0.325736, 0.326013,
		0.132293, 0.857699, 0.496840,
		21.822224, 36.267639, 20.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032976, 35.569221, 20.426455>,  <21.729618, 35.667252, 19.671995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032976, 35.569221, 20.426455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877542, 35.937473, 20.441608>,  <21.784283, 36.158424, 20.450701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.877542, 35.937473, 20.441608>,  <22.032976, 35.569221, 20.426455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.877542, 35.937473, 20.441608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407708, -0.208667, 0.888950,
		0.826302, 0.329988, 0.456434,
		-0.388586, 0.920633, 0.037883,
		21.760967, 36.213665, 20.452974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229309, 35.797417, 21.002716>,  <22.032976, 35.569221, 20.426455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229309, 35.797417, 21.002716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894125, 35.997589, 20.915638>,  <21.693014, 36.117695, 20.863392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.894125, 35.997589, 20.915638>,  <22.229309, 35.797417, 21.002716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894125, 35.997589, 20.915638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374399, -0.236936, 0.896486,
		0.397052, 0.832723, 0.385904,
		-0.837959, 0.500434, -0.217695,
		21.642736, 36.147720, 20.850330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179033, 36.138306, 21.583780>,  <22.229309, 35.797417, 21.002716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179033, 36.138306, 21.583780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824034, 36.122726, 21.400116>,  <21.611034, 36.113380, 21.289917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824034, 36.122726, 21.400116>,  <22.179033, 36.138306, 21.583780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824034, 36.122726, 21.400116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445400, -0.183035, 0.876423,
		-0.118176, 0.982335, 0.145096,
		-0.887498, -0.038946, -0.459162,
		21.557785, 36.111042, 21.262367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768389, 36.612125, 21.876020>,  <22.179033, 36.138306, 21.583780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768389, 36.612125, 21.876020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501236, 36.364658, 21.710526>,  <21.340944, 36.216179, 21.611229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.501236, 36.364658, 21.710526>,  <21.768389, 36.612125, 21.876020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501236, 36.364658, 21.710526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451804, -0.104733, 0.885948,
		-0.591442, 0.778638, -0.209569,
		-0.667884, -0.618671, -0.413735,
		21.300871, 36.179058, 21.586405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252831, 36.754734, 22.270142>,  <21.768389, 36.612125, 21.876020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252831, 36.754734, 22.270142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123180, 36.422779, 22.088490>,  <21.045391, 36.223606, 21.979498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123180, 36.422779, 22.088490>,  <21.252831, 36.754734, 22.270142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123180, 36.422779, 22.088490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334648, -0.348426, 0.875563,
		-0.884847, 0.435767, -0.164785,
		-0.324126, -0.829884, -0.454132,
		21.025942, 36.173813, 21.952250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471251, 36.628548, 22.385473>,  <21.252831, 36.754734, 22.270142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471251, 36.628548, 22.385473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659206, 36.279358, 22.333126>,  <20.771980, 36.069843, 22.301718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659206, 36.279358, 22.333126>,  <20.471251, 36.628548, 22.385473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659206, 36.279358, 22.333126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389956, -0.338289, 0.856443,
		-0.791919, -0.351403, -0.499379,
		0.469892, -0.872970, -0.130866,
		20.800175, 36.017467, 22.293867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935411, 36.087856, 22.411539>,  <20.471251, 36.628548, 22.385473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935411, 36.087856, 22.411539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300068, 35.991402, 22.544662>,  <20.518862, 35.933529, 22.624537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300068, 35.991402, 22.544662>,  <19.935411, 36.087856, 22.411539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300068, 35.991402, 22.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403668, -0.373218, 0.835321,
		-0.077218, -0.895857, -0.437581,
		0.911641, -0.241139, 0.332810,
		20.573561, 35.919060, 22.644505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226822, 36.179386, 22.816170>,  <19.935411, 36.087856, 22.411539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.226822, 36.179386, 22.816170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041506, 36.451576, 22.589077>,  <18.930315, 36.614891, 22.452822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041506, 36.451576, 22.589077>,  <19.226822, 36.179386, 22.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041506, 36.451576, 22.589077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856709, -0.179992, 0.483376,
		0.226737, 0.710325, 0.666355,
		-0.463292, 0.680472, -0.567731,
		18.902517, 36.655716, 22.418758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816162, 36.753029, 23.205700>,  <19.226822, 36.179386, 22.816170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816162, 36.753029, 23.205700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657381, 36.657906, 22.851101>,  <18.562113, 36.600830, 22.638342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657381, 36.657906, 22.851101>,  <18.816162, 36.753029, 23.205700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657381, 36.657906, 22.851101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858616, -0.245108, 0.450222,
		-0.324354, 0.939877, -0.106890,
		-0.396954, -0.237809, -0.886496,
		18.538296, 36.586563, 22.585152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166296, 36.869362, 23.414766>,  <18.816162, 36.753029, 23.205700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166296, 36.869362, 23.414766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125366, 36.650871, 23.082222>,  <18.100809, 36.519775, 22.882696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.125366, 36.650871, 23.082222>,  <18.166296, 36.869362, 23.414766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125366, 36.650871, 23.082222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994699, 0.047605, 0.091151,
		-0.010212, 0.836281, -0.548206,
		-0.102325, -0.546230, -0.831361,
		18.094669, 36.487003, 22.832813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696840, 37.139362, 23.831314>,  <18.166296, 36.869362, 23.414766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696840, 37.139362, 23.831314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714611, 37.447193, 23.576511>,  <17.725273, 37.631893, 23.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714611, 37.447193, 23.576511>,  <17.696840, 37.139362, 23.831314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714611, 37.447193, 23.576511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573912, 0.502254, 0.646812,
		0.817711, -0.394321, -0.419356,
		0.044428, 0.769579, -0.637004,
		17.727940, 37.678066, 23.385410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.414753, 23.528509, 26.659578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702526, 23.630360, 26.918060>,  <31.875191, 23.691469, 27.073149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702526, 23.630360, 26.918060>,  <31.414753, 23.528509, 26.659578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702526, 23.630360, 26.918060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055744, 0.906209, -0.419139,
		-0.692321, 0.337564, 0.637763,
		0.719433, 0.254627, 0.646205,
		31.918356, 23.706747, 27.111921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186958, 24.135784, 26.933365>,  <31.414753, 23.528509, 26.659578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186958, 24.135784, 26.933365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585398, 24.119526, 26.964706>,  <31.824461, 24.109772, 26.983511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.585398, 24.119526, 26.964706>,  <31.186958, 24.135784, 26.933365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585398, 24.119526, 26.964706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064588, 0.940664, -0.333137,
		-0.060162, 0.336897, 0.939618,
		0.996097, -0.040646, 0.078352,
		31.884228, 24.107332, 26.988213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352514, 24.767014, 27.273453>,  <31.186958, 24.135784, 26.933365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352514, 24.767014, 27.273453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684732, 24.635105, 27.093922>,  <31.884064, 24.555960, 26.986204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684732, 24.635105, 27.093922>,  <31.352514, 24.767014, 27.273453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684732, 24.635105, 27.093922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189744, 0.925193, -0.328656,
		0.523632, 0.187802, 0.830988,
		0.830546, -0.329769, -0.448826,
		31.933897, 24.536175, 26.959274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797359, 25.341469, 27.373709>,  <31.352514, 24.767014, 27.273453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797359, 25.341469, 27.373709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.981844, 25.122414, 27.094460>,  <32.092533, 24.990980, 26.926910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.981844, 25.122414, 27.094460>,  <31.797359, 25.341469, 27.373709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981844, 25.122414, 27.094460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286755, 0.836578, -0.466807,
		0.839675, 0.015108, 0.542879,
		0.461213, -0.547639, -0.698122,
		32.120209, 24.958122, 26.885023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405277, 25.613810, 27.334627>,  <31.797359, 25.341469, 27.373709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405277, 25.613810, 27.334627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.363453, 25.445389, 26.974232>,  <32.338360, 25.344336, 26.757994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.363453, 25.445389, 26.974232>,  <32.405277, 25.613810, 27.334627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363453, 25.445389, 26.974232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174350, 0.884164, -0.433423,
		0.979117, -0.202406, -0.019037,
		-0.104559, -0.421052, -0.900990,
		32.332085, 25.319073, 26.703936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986893, 25.749464, 26.980143>,  <32.405277, 25.613810, 27.334627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986893, 25.749464, 26.980143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.701870, 25.664055, 26.712811>,  <32.530857, 25.612810, 26.552410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.701870, 25.664055, 26.712811>,  <32.986893, 25.749464, 26.980143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701870, 25.664055, 26.712811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205225, 0.847473, -0.489563,
		0.670926, -0.486001, -0.560055,
		-0.712560, -0.213523, -0.668331,
		32.488102, 25.599998, 26.512312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244122, 25.933205, 26.354933>,  <32.986893, 25.749464, 26.980143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244122, 25.933205, 26.354933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853729, 25.932995, 26.267784>,  <32.619495, 25.932869, 26.215494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853729, 25.932995, 26.267784>,  <33.244122, 25.933205, 26.354933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853729, 25.932995, 26.267784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163168, 0.660903, -0.732519,
		0.144377, -0.750471, -0.644940,
		-0.975977, -0.000525, -0.217872,
		32.560936, 25.932837, 26.202423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186363, 26.166679, 25.584826>,  <33.244122, 25.933205, 26.354933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186363, 26.166679, 25.584826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814232, 26.241020, 25.711288>,  <32.590954, 26.285625, 25.787167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814232, 26.241020, 25.711288>,  <33.186363, 26.166679, 25.584826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814232, 26.241020, 25.711288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037219, 0.905478, -0.422758,
		-0.364846, -0.381534, -0.849305,
		-0.930324, 0.185852, 0.316160,
		32.535133, 26.296776, 25.806137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001652, 26.587694, 25.118967>,  <33.186363, 26.166679, 25.584826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001652, 26.587694, 25.118967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.718605, 26.635414, 25.397549>,  <32.548779, 26.664047, 25.564697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.718605, 26.635414, 25.397549>,  <33.001652, 26.587694, 25.118967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718605, 26.635414, 25.397549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229737, 0.893249, -0.386430,
		-0.668208, -0.433445, -0.604668,
		-0.707615, 0.119301, 0.696454,
		32.506321, 26.671204, 25.606485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372890, 26.716499, 24.717869>,  <33.001652, 26.587694, 25.118967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372890, 26.716499, 24.717869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319447, 26.875343, 25.081066>,  <32.287380, 26.970650, 25.298985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319447, 26.875343, 25.081066>,  <32.372890, 26.716499, 24.717869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319447, 26.875343, 25.081066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352693, 0.837171, -0.418034,
		-0.926151, -0.376098, 0.028201,
		-0.133612, 0.397109, 0.907994,
		32.279362, 26.994476, 25.353464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704290, 26.907148, 24.749943>,  <32.372890, 26.716499, 24.717869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704290, 26.907148, 24.749943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904295, 27.116158, 25.026192>,  <32.024296, 27.241564, 25.191940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.904295, 27.116158, 25.026192>,  <31.704290, 26.907148, 24.749943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904295, 27.116158, 25.026192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479855, 0.831018, -0.281333,
		-0.720922, -0.190729, 0.666254,
		0.500010, 0.522525, 0.690622,
		32.054298, 27.272915, 25.233377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179850, 27.256298, 25.001406>,  <31.704290, 26.907148, 24.749943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179850, 27.256298, 25.001406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.531441, 27.422115, 25.095684>,  <31.742395, 27.521606, 25.152250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.531441, 27.422115, 25.095684>,  <31.179850, 27.256298, 25.001406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531441, 27.422115, 25.095684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257992, 0.829075, -0.496059,
		-0.401048, 0.375217, 0.835687,
		0.878977, 0.414544, 0.235696,
		31.795134, 27.546478, 25.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045393, 27.895924, 25.255058>,  <31.179850, 27.256298, 25.001406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045393, 27.895924, 25.255058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432755, 27.949047, 25.170628>,  <31.665173, 27.980921, 25.119968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.432755, 27.949047, 25.170628>,  <31.045393, 27.895924, 25.255058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432755, 27.949047, 25.170628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174977, 0.964938, -0.195645,
		0.177692, 0.226397, 0.957690,
		0.968405, 0.132810, -0.211076,
		31.723276, 27.988890, 25.107306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107641, 28.518797, 25.529848>,  <31.045393, 27.895924, 25.255058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107641, 28.518797, 25.529848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.413004, 28.454205, 25.279686>,  <31.596222, 28.415449, 25.129589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.413004, 28.454205, 25.279686>,  <31.107641, 28.518797, 25.529848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413004, 28.454205, 25.279686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026879, 0.959464, -0.280546,
		0.645358, 0.230981, 0.728122,
		0.763407, -0.161481, -0.625406,
		31.642027, 28.405760, 25.092064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537331, 29.146908, 25.621178>,  <31.107641, 28.518797, 25.529848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537331, 29.146908, 25.621178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646742, 29.006580, 25.262936>,  <31.712389, 28.922384, 25.047991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.646742, 29.006580, 25.262936>,  <31.537331, 29.146908, 25.621178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646742, 29.006580, 25.262936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218019, 0.884267, -0.412964,
		0.936830, 0.308215, 0.165385,
		0.273526, -0.350821, -0.895605,
		31.728800, 28.901335, 24.994255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051598, 29.642250, 25.262974>,  <31.537331, 29.146908, 25.621178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051598, 29.642250, 25.262974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842352, 29.437260, 24.990585>,  <31.716805, 29.314266, 24.827152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842352, 29.437260, 24.990585>,  <32.051598, 29.642250, 25.262974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842352, 29.437260, 24.990585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389616, 0.854435, -0.343717,
		0.757989, 0.085511, -0.646638,
		-0.523118, -0.512474, -0.680968,
		31.685417, 29.283518, 24.786295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165722, 30.026384, 24.653389>,  <32.051598, 29.642250, 25.262974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165722, 30.026384, 24.653389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884127, 29.782330, 24.507992>,  <31.715168, 29.635897, 24.420753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884127, 29.782330, 24.507992>,  <32.165722, 30.026384, 24.653389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884127, 29.782330, 24.507992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303773, 0.721317, -0.622434,
		0.641963, -0.327770, -0.693146,
		-0.703993, -0.610138, -0.363491,
		31.672930, 29.599289, 24.398945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167721, 30.060211, 23.893429>,  <32.165722, 30.026384, 24.653389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167721, 30.060211, 23.893429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.801813, 29.925694, 23.982967>,  <31.582270, 29.844982, 24.036692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.801813, 29.925694, 23.982967>,  <32.167721, 30.060211, 23.893429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801813, 29.925694, 23.982967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397823, 0.653502, -0.643951,
		0.070271, -0.678117, -0.731587,
		-0.914767, -0.336293, 0.223849,
		31.527384, 29.824806, 24.050121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823225, 29.981045, 23.232708>,  <32.167721, 30.060211, 23.893429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823225, 29.981045, 23.232708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.554729, 30.026104, 23.525761>,  <31.393633, 30.053139, 23.701591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.554729, 30.026104, 23.525761>,  <31.823225, 29.981045, 23.232708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554729, 30.026104, 23.525761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499512, 0.661513, -0.559364,
		-0.547657, -0.741425, -0.387764,
		-0.671237, 0.112647, 0.732632,
		31.353357, 30.059898, 23.745550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268867, 30.070679, 22.809122>,  <31.823225, 29.981045, 23.232708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268867, 30.070679, 22.809122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.140661, 30.185627, 23.170162>,  <31.063738, 30.254597, 23.386787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.140661, 30.185627, 23.170162>,  <31.268867, 30.070679, 22.809122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140661, 30.185627, 23.170162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572799, 0.700118, -0.426305,
		-0.754435, -0.653646, -0.059792,
		-0.320514, 0.287371, 0.902601,
		31.044506, 30.271837, 23.440943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496824, 30.208672, 22.724871>,  <31.268867, 30.070679, 22.809122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496824, 30.208672, 22.724871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.611443, 30.404530, 23.054268>,  <30.680214, 30.522043, 23.251905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.611443, 30.404530, 23.054268>,  <30.496824, 30.208672, 22.724871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611443, 30.404530, 23.054268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608098, 0.757156, -0.238604,
		-0.740343, -0.432394, 0.514711,
		0.286545, 0.489644, 0.823493,
		30.697407, 30.551422, 23.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948429, 30.669128, 22.718927>,  <30.496824, 30.208672, 22.724871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948429, 30.669128, 22.718927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.237541, 30.833286, 22.941338>,  <30.411009, 30.931782, 23.074783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.237541, 30.833286, 22.941338>,  <29.948429, 30.669128, 22.718927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237541, 30.833286, 22.941338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435012, 0.895359, -0.095378,
		-0.536986, -0.172941, 0.825674,
		0.722780, 0.410395, 0.556027,
		30.454374, 30.956406, 23.108145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556129, 31.158730, 23.167465>,  <29.948429, 30.669128, 22.718927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556129, 31.158730, 23.167465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.941946, 31.241497, 23.101933>,  <30.173437, 31.291157, 23.062613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.941946, 31.241497, 23.101933>,  <29.556129, 31.158730, 23.167465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941946, 31.241497, 23.101933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218325, 0.974337, -0.054782,
		0.148290, 0.088607, 0.984966,
		0.964543, 0.206919, -0.163830,
		30.231310, 31.303574, 23.052784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375742, 30.889584, 23.858936>,  <29.556129, 31.158730, 23.167465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375742, 30.889584, 23.858936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.006100, 30.849609, 23.711403>,  <28.784313, 30.825624, 23.622883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.006100, 30.849609, 23.711403>,  <29.375742, 30.889584, 23.858936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006100, 30.849609, 23.711403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124835, -0.833295, 0.538550,
		-0.361167, 0.543721, 0.757578,
		-0.924107, -0.099934, -0.368834,
		28.728867, 30.819630, 23.600752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910072, 30.729670, 24.454092>,  <29.375742, 30.889584, 23.858936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910072, 30.729670, 24.454092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.758953, 30.579372, 24.115604>,  <28.668282, 30.489195, 23.912512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.758953, 30.579372, 24.115604>,  <28.910072, 30.729670, 24.454092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758953, 30.579372, 24.115604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039334, -0.906615, 0.420121,
		-0.925051, 0.192007, 0.327740,
		-0.377800, -0.375742, -0.846218,
		28.645613, 30.466650, 23.861738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389595, 30.293819, 24.647856>,  <28.910072, 30.729670, 24.454092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389595, 30.293819, 24.647856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.446865, 30.163834, 24.273926>,  <28.481228, 30.085842, 24.049568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.446865, 30.163834, 24.273926>,  <28.389595, 30.293819, 24.647856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446865, 30.163834, 24.273926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028606, -0.942804, 0.332117,
		-0.989284, -0.074293, -0.125691,
		0.143176, -0.324962, -0.934826,
		28.489819, 30.066345, 23.993479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919262, 29.762630, 24.533133>,  <28.389595, 30.293819, 24.647856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919262, 29.762630, 24.533133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.209269, 29.701038, 24.264614>,  <28.383274, 29.664083, 24.103502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.209269, 29.701038, 24.264614>,  <27.919262, 29.762630, 24.533133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209269, 29.701038, 24.264614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228824, -0.865467, 0.445652,
		-0.649605, -0.476715, -0.592246,
		0.725019, -0.153978, -0.671296,
		28.426775, 29.654844, 24.063225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670315, 29.092276, 24.224546>,  <27.919262, 29.762630, 24.533133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670315, 29.092276, 24.224546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.062841, 29.126453, 24.155594>,  <28.298357, 29.146961, 24.114222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.062841, 29.126453, 24.155594>,  <27.670315, 29.092276, 24.224546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062841, 29.126453, 24.155594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155463, -0.880002, 0.448807,
		-0.113347, -0.467221, -0.876845,
		0.981317, 0.085446, -0.172381,
		28.357237, 29.152088, 24.103880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805588, 28.308163, 24.167467>,  <27.670315, 29.092276, 24.224546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805588, 28.308163, 24.167467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.166191, 28.477764, 24.202126>,  <28.382553, 28.579525, 24.222919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.166191, 28.477764, 24.202126>,  <27.805588, 28.308163, 24.167467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166191, 28.477764, 24.202126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335416, -0.811080, 0.479214,
		0.273465, -0.402952, -0.873411,
		0.901506, 0.424004, 0.086645,
		28.436644, 28.604965, 24.228119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225548, 28.022848, 23.726330>,  <27.805588, 28.308163, 24.167467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225548, 28.022848, 23.726330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452175, 28.166855, 24.022812>,  <28.588152, 28.253260, 24.200701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.452175, 28.166855, 24.022812>,  <28.225548, 28.022848, 23.726330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452175, 28.166855, 24.022812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216351, -0.932941, 0.287772,
		0.795106, -0.002681, -0.606465,
		0.566568, 0.360019, 0.741207,
		28.622145, 28.274860, 24.245174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819265, 27.652473, 23.689871>,  <28.225548, 28.022848, 23.726330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819265, 27.652473, 23.689871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.812412, 27.808311, 24.058201>,  <28.808300, 27.901815, 24.279200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.812412, 27.808311, 24.058201>,  <28.819265, 27.652473, 23.689871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812412, 27.808311, 24.058201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217128, -0.897534, 0.383782,
		0.975993, 0.206513, -0.069214,
		-0.017134, 0.389597, 0.920826,
		28.807272, 27.925190, 24.334448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463121, 27.362186, 24.044706>,  <28.819265, 27.652473, 23.689871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463121, 27.362186, 24.044706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.193274, 27.479942, 24.315475>,  <29.031364, 27.550596, 24.477938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.193274, 27.479942, 24.315475>,  <29.463121, 27.362186, 24.044706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193274, 27.479942, 24.315475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118828, -0.861763, 0.493199,
		0.728540, 0.413158, 0.546378,
		-0.674617, 0.294391, 0.676923,
		28.990889, 27.568260, 24.518553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766890, 27.153824, 24.688927>,  <29.463121, 27.362186, 24.044706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766890, 27.153824, 24.688927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.380106, 27.225662, 24.761299>,  <29.148035, 27.268766, 24.804722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.380106, 27.225662, 24.761299>,  <29.766890, 27.153824, 24.688927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380106, 27.225662, 24.761299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034944, -0.796390, 0.603773,
		0.252527, 0.577501, 0.776352,
		-0.966959, 0.179598, 0.180930,
		29.090019, 27.279541, 24.815578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642242, 27.269194, 25.419657>,  <29.766890, 27.153824, 24.688927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642242, 27.269194, 25.419657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297472, 27.133553, 25.268875>,  <29.090611, 27.052168, 25.178406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.297472, 27.133553, 25.268875>,  <29.642242, 27.269194, 25.419657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297472, 27.133553, 25.268875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065777, -0.662383, 0.746272,
		-0.502749, 0.668026, 0.548620,
		-0.861926, -0.339101, -0.376953,
		29.038895, 27.031822, 25.155788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312025, 27.256760, 25.948574>,  <29.642242, 27.269194, 25.419657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312025, 27.256760, 25.948574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.075974, 27.033531, 25.715233>,  <28.934341, 26.899593, 25.575228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.075974, 27.033531, 25.715233>,  <29.312025, 27.256760, 25.948574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075974, 27.033531, 25.715233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021894, -0.711261, 0.702587,
		-0.807011, 0.427390, 0.407518,
		-0.590130, -0.558073, -0.583353,
		28.898935, 26.866110, 25.540228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818123, 27.032898, 26.383396>,  <29.312025, 27.256760, 25.948574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818123, 27.032898, 26.383396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.813932, 26.766487, 26.085056>,  <28.811419, 26.606640, 25.906052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.813932, 26.766487, 26.085056>,  <28.818123, 27.032898, 26.383396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813932, 26.766487, 26.085056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130724, -0.740404, 0.659328,
		-0.991363, -0.090592, 0.094824,
		-0.010478, -0.666029, -0.745852,
		28.810789, 26.566679, 25.861301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323536, 26.478083, 26.535709>,  <28.818123, 27.032898, 26.383396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323536, 26.478083, 26.535709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.555067, 26.302277, 26.260963>,  <28.693987, 26.196793, 26.096115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.555067, 26.302277, 26.260963>,  <28.323536, 26.478083, 26.535709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555067, 26.302277, 26.260963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029519, -0.853058, 0.520981,
		-0.814914, -0.281285, -0.506750,
		0.578831, -0.439513, -0.686865,
		28.728716, 26.170422, 26.054903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020290, 25.813078, 26.222385>,  <28.323536, 26.478083, 26.535709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020290, 25.813078, 26.222385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.415028, 25.765614, 26.178463>,  <28.651871, 25.737135, 26.152109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.415028, 25.765614, 26.178463>,  <28.020290, 25.813078, 26.222385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415028, 25.765614, 26.178463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053759, -0.881385, 0.469330,
		-0.152471, -0.457253, -0.876169,
		0.986845, -0.118661, -0.109805,
		28.711081, 25.730015, 26.145521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100050, 25.103407, 26.109804>,  <28.020290, 25.813078, 26.222385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100050, 25.103407, 26.109804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475708, 25.211273, 26.194931>,  <28.701103, 25.275993, 26.246008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475708, 25.211273, 26.194931>,  <28.100050, 25.103407, 26.109804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475708, 25.211273, 26.194931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131885, -0.855065, 0.501468,
		0.317200, -0.442883, -0.838593,
		0.939143, 0.269664, 0.212817,
		28.757450, 25.292171, 26.258776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529486, 24.487579, 26.073175>,  <28.100050, 25.103407, 26.109804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529486, 24.487579, 26.073175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.709267, 24.749481, 26.316254>,  <28.817135, 24.906622, 26.462101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.709267, 24.749481, 26.316254>,  <28.529486, 24.487579, 26.073175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709267, 24.749481, 26.316254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142780, -0.724184, 0.674664,
		0.881820, -0.216462, -0.418972,
		0.449452, 0.654753, 0.607694,
		28.844103, 24.945908, 26.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.235882, 24.201120, 26.186785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186184, 24.455490, 26.491459>,  <29.156364, 24.608112, 26.674263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186184, 24.455490, 26.491459>,  <29.235882, 24.201120, 26.186785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186184, 24.455490, 26.491459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100620, -0.755602, 0.647257,
		0.987137, 0.157060, 0.029894,
		-0.124246, 0.635923, 0.761685,
		29.148911, 24.646267, 26.719965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796644, 24.082283, 26.550528>,  <29.235882, 24.201120, 26.186785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796644, 24.082283, 26.550528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543261, 24.238323, 26.817825>,  <29.391232, 24.331947, 26.978205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543261, 24.238323, 26.817825>,  <29.796644, 24.082283, 26.550528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543261, 24.238323, 26.817825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195488, -0.754916, 0.626009,
		0.748676, 0.527184, 0.401947,
		-0.633457, 0.390102, 0.668245,
		29.353224, 24.355354, 27.018299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103304, 23.929499, 27.164801>,  <29.796644, 24.082283, 26.550528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103304, 23.929499, 27.164801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.732859, 24.034698, 27.272980>,  <29.510592, 24.097818, 27.337887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.732859, 24.034698, 27.272980>,  <30.103304, 23.929499, 27.164801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732859, 24.034698, 27.272980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038466, -0.647338, 0.761232,
		0.375275, 0.715391, 0.589393,
		-0.926115, 0.263000, 0.270448,
		29.455025, 24.113598, 27.354115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154472, 23.921242, 27.927700>,  <30.103304, 23.929499, 27.164801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154472, 23.921242, 27.927700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773352, 23.885414, 27.811665>,  <29.544680, 23.863918, 27.742044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773352, 23.885414, 27.811665>,  <30.154472, 23.921242, 27.927700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773352, 23.885414, 27.811665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139035, -0.720680, 0.679184,
		-0.269892, 0.687458, 0.674210,
		-0.952800, -0.089568, -0.290086,
		29.487513, 23.858543, 27.724638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661253, 23.706842, 28.555492>,  <30.154472, 23.921242, 27.927700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661253, 23.706842, 28.555492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472664, 23.618011, 28.214108>,  <29.359510, 23.564713, 28.009277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472664, 23.618011, 28.214108>,  <29.661253, 23.706842, 28.555492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472664, 23.618011, 28.214108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345953, -0.843623, 0.410629,
		-0.811191, 0.488857, 0.320916,
		-0.471471, -0.222077, -0.853462,
		29.331223, 23.551388, 27.958069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067749, 23.351034, 28.815094>,  <29.661253, 23.706842, 28.555492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067749, 23.351034, 28.815094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108322, 23.257702, 28.428257>,  <29.132666, 23.201702, 28.196156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.108322, 23.257702, 28.428257>,  <29.067749, 23.351034, 28.815094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108322, 23.257702, 28.428257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168493, -0.962092, 0.214450,
		-0.980470, 0.141196, -0.136902,
		0.101432, -0.233329, -0.967093,
		29.138752, 23.187704, 28.138128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504585, 22.922152, 28.621471>,  <29.067749, 23.351034, 28.815094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504585, 22.922152, 28.621471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778538, 22.841068, 28.341515>,  <28.942909, 22.792419, 28.173540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778538, 22.841068, 28.341515>,  <28.504585, 22.922152, 28.621471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778538, 22.841068, 28.341515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189534, -0.977021, 0.097501,
		-0.703573, 0.065877, -0.707563,
		0.684881, -0.202706, -0.699892,
		28.984001, 22.780256, 28.131548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249392, 22.467560, 28.202854>,  <28.504585, 22.922152, 28.621471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249392, 22.467560, 28.202854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628210, 22.434288, 28.078796>,  <28.855501, 22.414326, 28.004362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628210, 22.434288, 28.078796>,  <28.249392, 22.467560, 28.202854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628210, 22.434288, 28.078796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113524, -0.990222, -0.081078,
		-0.300365, 0.111993, -0.947227,
		0.947044, -0.083180, -0.310142,
		28.912323, 22.409334, 27.985754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227846, 21.928261, 27.698132>,  <28.249392, 22.467560, 28.202854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227846, 21.928261, 27.698132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616978, 21.946980, 27.788830>,  <28.850456, 21.958212, 27.843248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616978, 21.946980, 27.788830>,  <28.227846, 21.928261, 27.698132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616978, 21.946980, 27.788830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042217, -0.998795, 0.025012,
		0.227642, -0.014760, -0.973633,
		0.972830, 0.046798, 0.226744,
		28.908827, 21.961020, 27.856853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559757, 21.329803, 27.298162>,  <28.227846, 21.928261, 27.698132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559757, 21.329803, 27.298162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803164, 21.434509, 27.597813>,  <28.949207, 21.497334, 27.777603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.803164, 21.434509, 27.597813>,  <28.559757, 21.329803, 27.298162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803164, 21.434509, 27.597813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066638, -0.957549, 0.280464,
		0.790739, -0.120746, -0.600127,
		0.608515, 0.261765, 0.749125,
		28.985718, 21.513039, 27.822550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051365, 20.786894, 27.242796>,  <28.559757, 21.329803, 27.298162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051365, 20.786894, 27.242796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.090054, 20.953968, 27.604168>,  <29.113266, 21.054213, 27.820992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.090054, 20.953968, 27.604168>,  <29.051365, 20.786894, 27.242796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090054, 20.953968, 27.604168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184180, -0.899520, 0.396159,
		0.978122, 0.128077, -0.163931,
		0.096721, 0.417685, 0.903429,
		29.119070, 21.079273, 27.875196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569351, 20.475887, 27.565207>,  <29.051365, 20.786894, 27.242796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569351, 20.475887, 27.565207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.326614, 20.589428, 27.862171>,  <29.180973, 20.657553, 28.040350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.326614, 20.589428, 27.862171>,  <29.569351, 20.475887, 27.565207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326614, 20.589428, 27.862171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134114, -0.884096, 0.447647,
		0.783427, 0.371218, 0.498437,
		-0.606840, 0.283852, 0.742410,
		29.144562, 20.674583, 28.084894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798065, 20.061863, 28.242554>,  <29.569351, 20.475887, 27.565207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798065, 20.061863, 28.242554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434690, 20.195164, 28.343494>,  <29.216665, 20.275145, 28.404058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.434690, 20.195164, 28.343494>,  <29.798065, 20.061863, 28.242554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434690, 20.195164, 28.343494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091358, -0.747375, 0.658091,
		0.407914, 0.574781, 0.709390,
		-0.908438, 0.333252, 0.252354,
		29.162159, 20.295139, 28.419201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792442, 19.991785, 28.947573>,  <29.798065, 20.061863, 28.242554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792442, 19.991785, 28.947573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401722, 20.027546, 28.869732>,  <29.167290, 20.049002, 28.823029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.401722, 20.027546, 28.869732>,  <29.792442, 19.991785, 28.947573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401722, 20.027546, 28.869732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200584, -0.700272, 0.685117,
		-0.075022, 0.708256, 0.701958,
		-0.976800, 0.089403, -0.194600,
		29.108683, 20.054367, 28.811352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496376, 19.794483, 29.540991>,  <29.792442, 19.991785, 28.947573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496376, 19.794483, 29.540991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193192, 19.784237, 29.280273>,  <29.011280, 19.778090, 29.123842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.193192, 19.784237, 29.280273>,  <29.496376, 19.794483, 29.540991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193192, 19.784237, 29.280273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406019, -0.763534, 0.502159,
		-0.510531, 0.645259, 0.568329,
		-0.757962, -0.025615, -0.651796,
		28.965803, 19.776552, 29.084734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855898, 19.939983, 29.839003>,  <29.496376, 19.794483, 29.540991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855898, 19.939983, 29.839003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.747887, 19.716686, 29.525200>,  <28.683079, 19.582708, 29.336918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.747887, 19.716686, 29.525200>,  <28.855898, 19.939983, 29.839003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747887, 19.716686, 29.525200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402914, -0.674494, 0.618642,
		-0.874497, 0.483140, -0.042790,
		-0.270029, -0.558241, -0.784507,
		28.666878, 19.549213, 29.289848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131325, 19.600222, 30.066229>,  <28.855898, 19.939983, 29.839003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131325, 19.600222, 30.066229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340563, 19.413242, 29.781170>,  <28.466105, 19.301054, 29.610134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.340563, 19.413242, 29.781170>,  <28.131325, 19.600222, 30.066229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340563, 19.413242, 29.781170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209755, -0.881060, 0.423953,
		-0.826061, -0.072286, -0.558926,
		0.523093, -0.467449, -0.712647,
		28.497490, 19.273008, 29.567375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702644, 19.034195, 29.738726>,  <28.131325, 19.600222, 30.066229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702644, 19.034195, 29.738726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.084717, 18.937771, 29.669998>,  <28.313959, 18.879915, 29.628761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.084717, 18.937771, 29.669998>,  <27.702644, 19.034195, 29.738726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084717, 18.937771, 29.669998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151646, -0.896927, 0.415363,
		-0.254235, -0.370691, -0.893282,
		0.955180, -0.241062, -0.171816,
		28.371271, 18.865452, 29.618454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626293, 18.375608, 29.564003>,  <27.702644, 19.034195, 29.738726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626293, 18.375608, 29.564003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.014404, 18.404461, 29.656399>,  <28.247271, 18.421772, 29.711836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.014404, 18.404461, 29.656399>,  <27.626293, 18.375608, 29.564003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014404, 18.404461, 29.656399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071595, -0.826238, 0.558753,
		0.231155, -0.558684, -0.796517,
		0.970279, 0.072132, 0.230988,
		28.305489, 18.426100, 29.725695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765074, 17.693911, 29.795649>,  <27.626293, 18.375608, 29.564003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765074, 17.693911, 29.795649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.086016, 17.880043, 29.945152>,  <28.278582, 17.991722, 30.034855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.086016, 17.880043, 29.945152>,  <27.765074, 17.693911, 29.795649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086016, 17.880043, 29.945152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062135, -0.687942, 0.723101,
		0.593605, -0.556960, -0.580887,
		0.802354, 0.465329, 0.373759,
		28.326721, 18.019642, 30.057280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290125, 17.184128, 29.863668>,  <27.765074, 17.693911, 29.795649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290125, 17.184128, 29.863668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.416353, 17.470371, 30.112930>,  <28.492090, 17.642117, 30.262487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.416353, 17.470371, 30.112930>,  <28.290125, 17.184128, 29.863668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416353, 17.470371, 30.112930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153750, -0.686593, 0.710599,
		0.936362, -0.128436, -0.326695,
		0.315573, 0.715608, 0.623152,
		28.511024, 17.685053, 30.299875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982595, 17.059607, 30.087706>,  <28.290125, 17.184128, 29.863668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982595, 17.059607, 30.087706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817339, 17.292419, 30.367863>,  <28.718185, 17.432108, 30.535957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.817339, 17.292419, 30.367863>,  <28.982595, 17.059607, 30.087706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817339, 17.292419, 30.367863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309131, -0.633798, 0.709040,
		0.856593, 0.509447, 0.081923,
		-0.413142, 0.582034, 0.700393,
		28.693396, 17.467030, 30.577980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499763, 17.411438, 30.535000>,  <28.982595, 17.059607, 30.087706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499763, 17.411438, 30.535000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156174, 17.368912, 30.735344>,  <28.950020, 17.343395, 30.855551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.156174, 17.368912, 30.735344>,  <29.499763, 17.411438, 30.535000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156174, 17.368912, 30.735344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478855, -0.513138, 0.712311,
		0.181279, 0.851696, 0.491683,
		-0.858974, -0.106317, 0.500860,
		28.898481, 17.337017, 30.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713345, 17.399776, 31.231068>,  <29.499763, 17.411438, 30.535000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713345, 17.399776, 31.231068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359209, 17.216560, 31.199135>,  <29.146727, 17.106630, 31.179976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359209, 17.216560, 31.199135>,  <29.713345, 17.399776, 31.231068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359209, 17.216560, 31.199135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253095, -0.618813, 0.743648,
		-0.390020, 0.638177, 0.663788,
		-0.885340, -0.458040, -0.079830,
		29.093607, 17.079149, 31.175186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505280, 17.183207, 31.499010>,  <29.713345, 17.399776, 31.231068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505280, 17.183207, 31.499010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842447, 17.282108, 31.690155>,  <31.044748, 17.341450, 31.804842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.842447, 17.282108, 31.690155>,  <30.505280, 17.183207, 31.499010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842447, 17.282108, 31.690155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016575, 0.899666, -0.436263,
		-0.537783, 0.359815, 0.762446,
		0.842921, 0.247252, 0.477861,
		31.095324, 17.356283, 31.833513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478729, 17.943199, 31.615759>,  <30.505280, 17.183207, 31.499010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478729, 17.943199, 31.615759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868456, 17.891674, 31.689644>,  <31.102291, 17.860760, 31.733974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868456, 17.891674, 31.689644>,  <30.478729, 17.943199, 31.615759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868456, 17.891674, 31.689644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177016, 0.945115, -0.274631,
		-0.139197, 0.300274, 0.943642,
		0.974315, -0.128812, 0.184710,
		31.160751, 17.853031, 31.745056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797955, 18.553688, 32.104870>,  <30.478729, 17.943199, 31.615759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797955, 18.553688, 32.104870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084146, 18.373161, 31.891552>,  <31.255861, 18.264845, 31.763561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084146, 18.373161, 31.891552>,  <30.797955, 18.553688, 32.104870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084146, 18.373161, 31.891552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242598, 0.876336, -0.416150,
		0.655157, 0.168372, 0.736491,
		0.715482, -0.451315, -0.533291,
		31.298792, 18.237766, 31.731565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218416, 19.060190, 32.101128>,  <30.797955, 18.553688, 32.104870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218416, 19.060190, 32.101128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298065, 18.812378, 31.797409>,  <31.345854, 18.663691, 31.615177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.298065, 18.812378, 31.797409>,  <31.218416, 19.060190, 32.101128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298065, 18.812378, 31.797409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137981, 0.784820, -0.604168,
		0.970212, 0.015534, 0.241758,
		0.199122, -0.619529, -0.759299,
		31.357801, 18.626520, 31.569620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773285, 19.289608, 31.765253>,  <31.218416, 19.060190, 32.101128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773285, 19.289608, 31.765253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609272, 19.055260, 31.485645>,  <31.510864, 18.914650, 31.317881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609272, 19.055260, 31.485645>,  <31.773285, 19.289608, 31.765253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609272, 19.055260, 31.485645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014573, 0.762103, -0.647292,
		0.911956, -0.275596, -0.303947,
		-0.410030, -0.585872, -0.699020,
		31.486263, 18.879498, 31.275940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207291, 19.476561, 31.128780>,  <31.773285, 19.289608, 31.765253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207291, 19.476561, 31.128780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864904, 19.313240, 31.001900>,  <31.659473, 19.215248, 30.925772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.864904, 19.313240, 31.001900>,  <32.207291, 19.476561, 31.128780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864904, 19.313240, 31.001900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154150, 0.787128, -0.597217,
		0.493522, -0.462299, -0.736692,
		-0.855964, -0.408301, -0.317201,
		31.608116, 19.190750, 30.906738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242294, 19.298498, 30.335989>,  <32.207291, 19.476561, 31.128780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242294, 19.298498, 30.335989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878096, 19.361801, 30.488800>,  <31.659576, 19.399782, 30.580486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878096, 19.361801, 30.488800>,  <32.242294, 19.298498, 30.335989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878096, 19.361801, 30.488800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140441, 0.750602, -0.645657,
		-0.388930, -0.641523, -0.661197,
		-0.910500, 0.158256, 0.382028,
		31.604946, 19.409279, 30.603409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792116, 19.307234, 29.666780>,  <32.242294, 19.298498, 30.335989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792116, 19.307234, 29.666780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586233, 19.474094, 29.966396>,  <31.462704, 19.574211, 30.146166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586233, 19.474094, 29.966396>,  <31.792116, 19.307234, 29.666780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586233, 19.474094, 29.966396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187764, 0.797599, -0.573219,
		-0.836552, -0.435684, -0.332204,
		-0.514708, 0.417152, 0.749039,
		31.431820, 19.599239, 30.191109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192850, 19.546202, 29.341854>,  <31.792116, 19.307234, 29.666780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192850, 19.546202, 29.341854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205820, 19.745499, 29.688427>,  <31.213602, 19.865078, 29.896370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205820, 19.745499, 29.688427>,  <31.192850, 19.546202, 29.341854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205820, 19.745499, 29.688427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, 0.815000, -0.455252,
		-0.932967, -0.295852, 0.205047,
		0.032426, 0.498244, 0.866430,
		31.215548, 19.894972, 29.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629183, 19.909592, 29.290562>,  <31.192850, 19.546202, 29.341854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629183, 19.909592, 29.290562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851913, 20.076565, 29.577808>,  <30.985552, 20.176748, 29.750156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851913, 20.076565, 29.577808>,  <30.629183, 19.909592, 29.290562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851913, 20.076565, 29.577808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191022, 0.905731, -0.378369,
		-0.808365, 0.073509, 0.584074,
		0.556827, 0.417431, 0.718119,
		31.018961, 20.201794, 29.793243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397017, 20.530237, 29.255861>,  <30.629183, 19.909592, 29.290562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397017, 20.530237, 29.255861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735170, 20.574921, 29.464802>,  <30.938063, 20.601730, 29.590166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.735170, 20.574921, 29.464802>,  <30.397017, 20.530237, 29.255861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735170, 20.574921, 29.464802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113409, 0.918059, -0.379876,
		-0.521983, 0.380380, 0.763443,
		0.845383, 0.111707, 0.522350,
		30.988785, 20.608433, 29.621508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306183, 21.144632, 29.631802>,  <30.397017, 20.530237, 29.255861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306183, 21.144632, 29.631802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694426, 21.063057, 29.580677>,  <30.927370, 21.014112, 29.550003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694426, 21.063057, 29.580677>,  <30.306183, 21.144632, 29.631802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694426, 21.063057, 29.580677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133690, 0.898419, -0.418294,
		0.200133, 0.388911, 0.899275,
		0.970605, -0.203938, -0.127810,
		30.985607, 21.001875, 29.542334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749546, 21.777063, 29.705208>,  <30.306183, 21.144632, 29.631802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749546, 21.777063, 29.705208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019510, 21.565807, 29.499077>,  <31.181488, 21.439054, 29.375399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019510, 21.565807, 29.499077>,  <30.749546, 21.777063, 29.705208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019510, 21.565807, 29.499077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125576, 0.770392, -0.625081,
		0.727135, 0.357162, 0.586268,
		0.674911, -0.528140, -0.515328,
		31.221983, 21.407366, 29.344479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102966, 22.287146, 29.434380>,  <30.749546, 21.777063, 29.705208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102966, 22.287146, 29.434380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214935, 21.968197, 29.220524>,  <31.282116, 21.776827, 29.092211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214935, 21.968197, 29.220524>,  <31.102966, 22.287146, 29.434380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214935, 21.968197, 29.220524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397701, 0.603183, -0.691378,
		0.873772, -0.019094, 0.485961,
		0.279922, -0.797374, -0.534638,
		31.298912, 21.728985, 29.060133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821457, 22.363108, 29.364372>,  <31.102966, 22.287146, 29.434380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821457, 22.363108, 29.364372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710424, 22.136333, 29.054138>,  <31.643805, 22.000269, 28.867998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.710424, 22.136333, 29.054138>,  <31.821457, 22.363108, 29.364372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710424, 22.136333, 29.054138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397521, 0.667177, -0.629962,
		0.874601, -0.483176, 0.040175,
		-0.277579, -0.566936, -0.775586,
		31.627151, 21.966253, 28.821463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390339, 22.336475, 28.965544>,  <31.821457, 22.363108, 29.364372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390339, 22.336475, 28.965544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091080, 22.228741, 28.722980>,  <31.911524, 22.164099, 28.577442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091080, 22.228741, 28.722980>,  <32.390339, 22.336475, 28.965544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091080, 22.228741, 28.722980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399588, 0.546723, -0.735815,
		0.529721, -0.792812, -0.301405,
		-0.748148, -0.269338, -0.606408,
		31.866634, 22.147940, 28.541058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683254, 22.033140, 28.293169>,  <32.390339, 22.336475, 28.965544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683254, 22.033140, 28.293169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319458, 22.186981, 28.230034>,  <32.101181, 22.279285, 28.192152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319458, 22.186981, 28.230034>,  <32.683254, 22.033140, 28.293169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319458, 22.186981, 28.230034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378314, 0.608240, -0.697798,
		-0.172373, -0.694350, -0.698688,
		-0.909487, 0.384605, -0.157838,
		32.046612, 22.302362, 28.182682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784603, 22.161726, 27.609562>,  <32.683254, 22.033140, 28.293169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784603, 22.161726, 27.609562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453991, 22.354053, 27.726635>,  <32.255623, 22.469450, 27.796879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453991, 22.354053, 27.726635>,  <32.784603, 22.161726, 27.609562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453991, 22.354053, 27.726635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243679, 0.774347, -0.583959,
		-0.507415, -0.411339, -0.757186,
		-0.826529, 0.480820, 0.292681,
		32.206032, 22.498299, 27.814440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392788, 22.450310, 27.011259>,  <32.784603, 22.161726, 27.609562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392788, 22.450310, 27.011259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268051, 22.680790, 27.313450>,  <32.193211, 22.819078, 27.494764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268051, 22.680790, 27.313450>,  <32.392788, 22.450310, 27.011259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268051, 22.680790, 27.313450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085943, 0.808975, -0.581527,
		-0.946239, -0.116417, -0.301793,
		-0.311843, 0.576201, 0.755478,
		32.174500, 22.853651, 27.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844641, 22.924850, 26.664045>,  <32.392788, 22.450310, 27.011259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844641, 22.924850, 26.664045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964212, 23.103886, 27.001163>,  <32.035957, 23.211308, 27.203434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964212, 23.103886, 27.001163>,  <31.844641, 22.924850, 26.664045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964212, 23.103886, 27.001163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184581, 0.893620, -0.409113,
		-0.936253, -0.033267, 0.349748,
		0.298931, 0.447590, 0.842795,
		32.053890, 23.238163, 27.254002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.028633, 34.146404, 15.714714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.294241, 33.849064, 15.746985>,  <26.453606, 33.670658, 15.766349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.294241, 33.849064, 15.746985>,  <26.028633, 34.146404, 15.714714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294241, 33.849064, 15.746985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688302, -0.565537, 0.454321,
		-0.292092, -0.357210, -0.887177,
		0.664020, -0.743349, 0.080680,
		26.493446, 33.626060, 15.771190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671600, 33.571053, 15.594419>,  <26.028633, 34.146404, 15.714714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671600, 33.571053, 15.594419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.999695, 33.433926, 15.777587>,  <26.196552, 33.351650, 15.887487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.999695, 33.433926, 15.777587>,  <25.671600, 33.571053, 15.594419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999695, 33.433926, 15.777587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568527, -0.400197, 0.718763,
		-0.063144, -0.849895, -0.523155,
		0.820238, -0.342813, 0.457918,
		26.245766, 33.331081, 15.914963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554090, 32.965519, 15.829841>,  <25.671600, 33.571053, 15.594419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554090, 32.965519, 15.829841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848537, 33.080414, 16.074993>,  <26.025206, 33.149349, 16.222084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848537, 33.080414, 16.074993>,  <25.554090, 32.965519, 15.829841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848537, 33.080414, 16.074993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499934, -0.379679, 0.778402,
		0.456285, -0.879396, -0.135889,
		0.736118, 0.287237, 0.612882,
		26.069372, 33.166584, 16.258858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557848, 32.445274, 16.255177>,  <25.554090, 32.965519, 15.829841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557848, 32.445274, 16.255177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.747290, 32.750641, 16.430855>,  <25.860954, 32.933861, 16.536263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.747290, 32.750641, 16.430855>,  <25.557848, 32.445274, 16.255177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747290, 32.750641, 16.430855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443264, -0.224302, 0.867874,
		0.761063, -0.605708, 0.232165,
		0.473603, 0.763418, 0.439197,
		25.889370, 32.979668, 16.562614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853590, 32.139984, 16.827593>,  <25.557848, 32.445274, 16.255177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853590, 32.139984, 16.827593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.790495, 32.531086, 16.882889>,  <25.752638, 32.765747, 16.916067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.790495, 32.531086, 16.882889>,  <25.853590, 32.139984, 16.827593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790495, 32.531086, 16.882889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504874, -0.200165, 0.839664,
		0.848659, 0.062652, 0.525217,
		-0.157737, 0.977757, 0.138240,
		25.743174, 32.824413, 16.924360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062838, 32.354485, 17.530140>,  <25.853590, 32.139984, 16.827593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062838, 32.354485, 17.530140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.816559, 32.653740, 17.431179>,  <25.668793, 32.833294, 17.371803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.816559, 32.653740, 17.431179>,  <26.062838, 32.354485, 17.530140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816559, 32.653740, 17.431179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422222, -0.048132, 0.905214,
		0.665318, 0.661794, 0.345515,
		-0.615696, 0.748139, -0.247401,
		25.631849, 32.878181, 17.356958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078274, 32.817062, 18.086277>,  <26.062838, 32.354485, 17.530140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078274, 32.817062, 18.086277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.736017, 32.927452, 17.911137>,  <25.530663, 32.993687, 17.806053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.736017, 32.927452, 17.911137>,  <26.078274, 32.817062, 18.086277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736017, 32.927452, 17.911137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429518, 0.093380, 0.898217,
		0.288773, 0.956618, 0.038637,
		-0.855642, 0.275976, -0.437851,
		25.479324, 33.010246, 17.779781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892378, 33.371067, 18.458347>,  <26.078274, 32.817062, 18.086277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892378, 33.371067, 18.458347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.549480, 33.258198, 18.286064>,  <25.343742, 33.190475, 18.182693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.549480, 33.258198, 18.286064>,  <25.892378, 33.371067, 18.458347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549480, 33.258198, 18.286064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476301, 0.116759, 0.871496,
		-0.195620, 0.952233, -0.234489,
		-0.857246, -0.282169, -0.430709,
		25.292307, 33.173546, 18.156851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569551, 34.016075, 18.551476>,  <25.892378, 33.371067, 18.458347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569551, 34.016075, 18.551476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.337872, 33.696602, 18.486187>,  <25.198864, 33.504917, 18.447014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.337872, 33.696602, 18.486187>,  <25.569551, 34.016075, 18.551476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337872, 33.696602, 18.486187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437311, 0.135445, 0.889052,
		-0.687960, 0.586316, -0.427721,
		-0.579199, -0.798679, -0.163221,
		25.164112, 33.456997, 18.437222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975435, 34.299374, 18.749432>,  <25.569551, 34.016075, 18.551476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975435, 34.299374, 18.749432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.921125, 33.903122, 18.755398>,  <24.888540, 33.665371, 18.758978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.921125, 33.903122, 18.755398>,  <24.975435, 34.299374, 18.749432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921125, 33.903122, 18.755398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433801, 0.072976, 0.898049,
		-0.890720, 0.115461, -0.439643,
		-0.135773, -0.990628, 0.014914,
		24.880394, 33.605934, 18.759872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275759, 34.172470, 19.053123>,  <24.975435, 34.299374, 18.749432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275759, 34.172470, 19.053123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.475008, 33.830666, 19.112026>,  <24.594557, 33.625584, 19.147367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.475008, 33.830666, 19.112026>,  <24.275759, 34.172470, 19.053123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475008, 33.830666, 19.112026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544710, -0.176238, 0.819897,
		-0.674659, -0.488622, -0.553249,
		0.498123, -0.854511, 0.147257,
		24.624445, 33.574314, 19.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761320, 33.536415, 19.052479>,  <24.275759, 34.172470, 19.053123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761320, 33.536415, 19.052479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.082991, 33.437054, 19.268478>,  <24.275993, 33.377438, 19.398077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.082991, 33.437054, 19.268478>,  <23.761320, 33.536415, 19.052479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082991, 33.437054, 19.268478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572190, -0.077548, 0.816447,
		-0.160926, -0.965550, -0.204491,
		0.804178, -0.248395, 0.539999,
		24.324244, 33.362534, 19.430477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.623182, 32.977051, 19.484999>,  <23.761320, 33.536415, 19.052479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.623182, 32.977051, 19.484999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.957304, 33.111492, 19.659035>,  <24.157776, 33.192158, 19.763456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.957304, 33.111492, 19.659035>,  <23.623182, 32.977051, 19.484999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.957304, 33.111492, 19.659035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425642, -0.105568, 0.898713,
		0.347993, -0.935890, 0.054879,
		0.835302, 0.336104, 0.435090,
		24.207895, 33.212322, 19.789562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.751036, 32.594978, 20.032984>,  <23.623182, 32.977051, 19.484999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.751036, 32.594978, 20.032984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938738, 32.937702, 20.118473>,  <24.051359, 33.143337, 20.169767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.938738, 32.937702, 20.118473>,  <23.751036, 32.594978, 20.032984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.938738, 32.937702, 20.118473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475698, 0.041362, 0.878636,
		0.743983, -0.513972, 0.426992,
		0.469256, 0.856809, 0.213722,
		24.079515, 33.194744, 20.182590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904577, 32.523544, 20.778385>,  <23.751036, 32.594978, 20.032984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904577, 32.523544, 20.778385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.914799, 32.905167, 20.658970>,  <23.920933, 33.134140, 20.587320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.914799, 32.905167, 20.658970>,  <23.904577, 32.523544, 20.778385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.914799, 32.905167, 20.658970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497141, 0.271219, 0.824191,
		0.867293, 0.127354, 0.481231,
		0.025555, 0.954055, -0.298539,
		23.922464, 33.191383, 20.569408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942051, 32.774330, 21.385124>,  <23.904577, 32.523544, 20.778385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.942051, 32.774330, 21.385124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863419, 33.101875, 21.169415>,  <23.816238, 33.298405, 21.039989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863419, 33.101875, 21.169415>,  <23.942051, 32.774330, 21.385124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863419, 33.101875, 21.169415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485191, 0.396701, 0.779242,
		0.852025, 0.414834, 0.319322,
		-0.196581, 0.818866, -0.539273,
		23.804445, 33.347534, 21.007633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127138, 33.416443, 21.717829>,  <23.942051, 32.774330, 21.385124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127138, 33.416443, 21.717829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.811243, 33.514801, 21.493027>,  <23.621706, 33.573818, 21.358145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.811243, 33.514801, 21.493027>,  <24.127138, 33.416443, 21.717829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.811243, 33.514801, 21.493027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510540, 0.244450, 0.824375,
		0.340095, 0.937965, -0.067510,
		-0.789737, 0.245900, -0.562005,
		23.574322, 33.588570, 21.324425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.794369, 33.953526, 22.069839>,  <24.127138, 33.416443, 21.717829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.794369, 33.953526, 22.069839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.495285, 33.870834, 21.817429>,  <23.315836, 33.821220, 21.665981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.495285, 33.870834, 21.817429>,  <23.794369, 33.953526, 22.069839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.495285, 33.870834, 21.817429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662254, 0.162743, 0.731392,
		-0.048505, 0.964768, -0.258591,
		-0.747708, -0.206729, -0.631028,
		23.270973, 33.808815, 21.628120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.271496, 34.470341, 22.158985>,  <23.794369, 33.953526, 22.069839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.271496, 34.470341, 22.158985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.103033, 34.137249, 22.015213>,  <23.001955, 33.937393, 21.928949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.103033, 34.137249, 22.015213>,  <23.271496, 34.470341, 22.158985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.103033, 34.137249, 22.015213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715125, 0.061125, 0.696319,
		-0.557875, 0.550296, -0.621249,
		-0.421156, -0.832729, -0.359430,
		22.976686, 33.887432, 21.907385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518133, 34.682549, 22.299442>,  <23.271496, 34.470341, 22.158985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518133, 34.682549, 22.299442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.563465, 34.290203, 22.236118>,  <22.590664, 34.054794, 22.198124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.563465, 34.290203, 22.236118>,  <22.518133, 34.682549, 22.299442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563465, 34.290203, 22.236118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722590, -0.190729, 0.664445,
		-0.681924, 0.039092, -0.730377,
		0.113330, -0.980864, -0.158310,
		22.597464, 33.995945, 22.188625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796936, 34.474724, 22.201101>,  <22.518133, 34.682549, 22.299442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796936, 34.474724, 22.201101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010088, 34.138889, 22.243313>,  <22.137980, 33.937389, 22.268641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.010088, 34.138889, 22.243313>,  <21.796936, 34.474724, 22.201101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010088, 34.138889, 22.243313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819273, -0.480691, 0.312616,
		-0.211740, -0.253045, -0.943999,
		0.532878, -0.839586, 0.105531,
		22.169950, 33.887012, 22.274973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117447, 34.770550, 21.913164>,  <21.796936, 34.474724, 22.201101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117447, 34.770550, 21.913164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972702, 35.127094, 22.022358>,  <20.885855, 35.341022, 22.087875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972702, 35.127094, 22.022358>,  <21.117447, 34.770550, 21.913164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972702, 35.127094, 22.022358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409416, 0.415035, -0.812480,
		-0.837516, -0.182243, -0.515126,
		-0.361864, 0.891366, 0.272986,
		20.864143, 35.394505, 22.104254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.839745, 35.010777, 21.331573>,  <21.117447, 34.770550, 21.913164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.839745, 35.010777, 21.331573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.862892, 35.355221, 21.533615>,  <20.876780, 35.561890, 21.654840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.862892, 35.355221, 21.533615>,  <20.839745, 35.010777, 21.331573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862892, 35.355221, 21.533615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366021, 0.452421, -0.813230,
		-0.928806, 0.231939, -0.289006,
		0.057868, 0.861115, 0.505106,
		20.880253, 35.613556, 21.685146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323151, 35.495750, 21.081640>,  <20.839745, 35.010777, 21.331573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323151, 35.495750, 21.081640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637255, 35.695770, 21.227692>,  <20.825716, 35.815781, 21.315323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.637255, 35.695770, 21.227692>,  <20.323151, 35.495750, 21.081640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.637255, 35.695770, 21.227692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088867, 0.492581, -0.865717,
		-0.612758, 0.712260, 0.342366,
		0.785258, 0.500050, 0.365129,
		20.872831, 35.845787, 21.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394438, 36.141670, 20.641130>,  <20.323151, 35.495750, 21.081640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394438, 36.141670, 20.641130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.736086, 36.153721, 20.848812>,  <20.941074, 36.160954, 20.973421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.736086, 36.153721, 20.848812>,  <20.394438, 36.141670, 20.641130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.736086, 36.153721, 20.848812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449918, 0.457958, -0.766712,
		-0.260874, 0.888463, 0.377595,
		0.854118, 0.030129, 0.519205,
		20.992321, 36.162758, 21.004574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619938, 36.843460, 20.602295>,  <20.394438, 36.141670, 20.641130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619938, 36.843460, 20.602295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.945368, 36.623070, 20.676617>,  <21.140625, 36.490837, 20.721210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.945368, 36.623070, 20.676617>,  <20.619938, 36.843460, 20.602295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945368, 36.623070, 20.676617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467607, 0.430038, -0.772276,
		0.345603, 0.715187, 0.607508,
		0.813574, -0.550976, 0.185804,
		21.189440, 36.457779, 20.732357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168482, 37.318169, 20.376997>,  <20.619938, 36.843460, 20.602295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168482, 37.318169, 20.376997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374643, 36.979355, 20.428986>,  <21.498341, 36.776066, 20.460178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.374643, 36.979355, 20.428986>,  <21.168482, 37.318169, 20.376997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.374643, 36.979355, 20.428986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675724, 0.308429, -0.669528,
		0.527027, 0.432901, 0.731327,
		0.515402, -0.847035, 0.129971,
		21.529264, 36.725243, 20.467978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928509, 37.415783, 20.672203>,  <21.168482, 37.318169, 20.376997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928509, 37.415783, 20.672203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897886, 37.078514, 20.459339>,  <21.879513, 36.876152, 20.331621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897886, 37.078514, 20.459339>,  <21.928509, 37.415783, 20.672203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897886, 37.078514, 20.459339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752373, 0.301380, -0.585752,
		0.654274, -0.445227, 0.611309,
		-0.076557, -0.843175, -0.532162,
		21.874920, 36.825562, 20.299690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653048, 37.233177, 20.465279>,  <21.928509, 37.415783, 20.672203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653048, 37.233177, 20.465279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.407099, 37.033310, 20.221226>,  <22.259529, 36.913387, 20.074795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.407099, 37.033310, 20.221226>,  <22.653048, 37.233177, 20.465279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.407099, 37.033310, 20.221226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659415, 0.098596, -0.745285,
		0.432553, -0.860586, 0.268866,
		-0.614873, -0.499670, -0.610132,
		22.222637, 36.883408, 20.038187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038601, 36.772141, 20.196089>,  <22.653048, 37.233177, 20.465279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038601, 36.772141, 20.196089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.733053, 36.781082, 19.938095>,  <22.549725, 36.786446, 19.783298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.733053, 36.781082, 19.938095>,  <23.038601, 36.772141, 20.196089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733053, 36.781082, 19.938095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645114, -0.001874, -0.764085,
		-0.018294, -0.999749, -0.012994,
		-0.763867, 0.022360, -0.644985,
		22.503893, 36.787788, 19.744600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.189684, 36.308460, 19.767879>,  <23.038601, 36.772141, 20.196089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.189684, 36.308460, 19.767879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926540, 36.541088, 19.576466>,  <22.768654, 36.680664, 19.461617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.926540, 36.541088, 19.576466>,  <23.189684, 36.308460, 19.767879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.926540, 36.541088, 19.576466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567466, -0.035001, -0.822653,
		-0.495183, -0.812740, -0.306998,
		-0.657857, 0.581575, -0.478534,
		22.729183, 36.715561, 19.432905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.188707, 35.914177, 19.118851>,  <23.189684, 36.308460, 19.767879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.188707, 35.914177, 19.118851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026266, 36.273476, 19.051636>,  <22.928802, 36.489056, 19.011307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.026266, 36.273476, 19.051636>,  <23.188707, 35.914177, 19.118851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.026266, 36.273476, 19.051636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396387, 0.007466, -0.918053,
		-0.823383, -0.439430, -0.359085,
		-0.406102, 0.898246, -0.168037,
		22.904436, 36.542950, 19.001225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788509, 35.838409, 18.478626>,  <23.188707, 35.914177, 19.118851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788509, 35.838409, 18.478626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865421, 36.225399, 18.544373>,  <22.911570, 36.457592, 18.583820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.865421, 36.225399, 18.544373>,  <22.788509, 35.838409, 18.478626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.865421, 36.225399, 18.544373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424889, 0.068903, -0.902619,
		-0.884589, 0.243395, -0.397821,
		0.192282, 0.967477, 0.164367,
		22.923105, 36.515640, 18.593683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590675, 36.217113, 17.884651>,  <22.788509, 35.838409, 18.478626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590675, 36.217113, 17.884651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856230, 36.449600, 18.072884>,  <23.015562, 36.589092, 18.185823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.856230, 36.449600, 18.072884>,  <22.590675, 36.217113, 17.884651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.856230, 36.449600, 18.072884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576465, 0.003116, -0.817116,
		-0.476385, 0.813745, -0.332980,
		0.663887, 0.581213, 0.470580,
		23.055395, 36.623962, 18.214058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.826397, 36.589512, 17.321100>,  <22.590675, 36.217113, 17.884651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.826397, 36.589512, 17.321100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.097170, 36.624794, 17.613396>,  <23.259634, 36.645966, 17.788773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.097170, 36.624794, 17.613396>,  <22.826397, 36.589512, 17.321100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097170, 36.624794, 17.613396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735826, -0.056858, -0.674780,
		-0.017973, 0.994478, -0.103395,
		0.676932, 0.088208, 0.730741,
		23.300249, 36.651257, 17.832619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.366524, 36.948193, 17.073389>,  <22.826397, 36.589512, 17.321100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.366524, 36.948193, 17.073389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.546894, 36.800064, 17.398235>,  <23.655117, 36.711189, 17.593143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.546894, 36.800064, 17.398235>,  <23.366524, 36.948193, 17.073389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.546894, 36.800064, 17.398235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880100, 0.032972, -0.473642,
		0.148621, 0.928320, 0.340785,
		0.450928, -0.370318, 0.812114,
		23.682173, 36.688969, 17.641869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.047241, 37.181499, 17.040157>,  <23.366524, 36.948193, 17.073389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.047241, 37.181499, 17.040157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084219, 36.876579, 17.296394>,  <24.106405, 36.693626, 17.450136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.084219, 36.876579, 17.296394>,  <24.047241, 37.181499, 17.040157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084219, 36.876579, 17.296394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814543, -0.312126, -0.488975,
		0.572690, 0.566993, 0.592069,
		0.092445, -0.762297, 0.640591,
		24.111952, 36.647892, 17.488571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761211, 37.181366, 17.345840>,  <24.047241, 37.181499, 17.040157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761211, 37.181366, 17.345840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602659, 36.814175, 17.351547>,  <24.507528, 36.593861, 17.354971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602659, 36.814175, 17.351547>,  <24.761211, 37.181366, 17.345840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602659, 36.814175, 17.351547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818579, -0.360415, -0.447246,
		0.415703, -0.165600, 0.894297,
		-0.396382, -0.917975, 0.014269,
		24.483746, 36.538784, 17.355827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316921, 36.840809, 17.577488>,  <24.761211, 37.181366, 17.345840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316921, 36.840809, 17.577488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.078918, 36.583351, 17.384949>,  <24.936117, 36.428879, 17.269426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.078918, 36.583351, 17.384949>,  <25.316921, 36.840809, 17.577488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078918, 36.583351, 17.384949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801315, -0.428774, -0.417189,
		0.062131, -0.633940, 0.770882,
		-0.595007, -0.643640, -0.481346,
		24.900415, 36.390259, 17.240545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697130, 36.321758, 17.551790>,  <25.316921, 36.840809, 17.577488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697130, 36.321758, 17.551790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.436291, 36.226376, 17.263927>,  <25.279787, 36.169147, 17.091209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.436291, 36.226376, 17.263927>,  <25.697130, 36.321758, 17.551790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436291, 36.226376, 17.263927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727589, -0.463567, -0.505687,
		-0.213026, -0.853373, 0.475788,
		-0.652100, -0.238454, -0.719657,
		25.240662, 36.154839, 17.048031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822495, 35.589481, 17.287806>,  <25.697130, 36.321758, 17.551790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822495, 35.589481, 17.287806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.616425, 35.781258, 17.003628>,  <25.492783, 35.896324, 16.833122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.616425, 35.781258, 17.003628>,  <25.822495, 35.589481, 17.287806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616425, 35.781258, 17.003628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607103, -0.380977, -0.697340,
		-0.604998, -0.790563, -0.094804,
		-0.515173, 0.479445, -0.710443,
		25.461872, 35.925091, 16.790495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614977, 35.112221, 16.829599>,  <25.822495, 35.589481, 17.287806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614977, 35.112221, 16.829599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.674076, 35.468063, 16.656731>,  <25.709536, 35.681568, 16.553009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.674076, 35.468063, 16.656731>,  <25.614977, 35.112221, 16.829599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674076, 35.468063, 16.656731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675762, -0.409865, -0.612664,
		-0.722161, -0.201523, -0.661719,
		0.147749, 0.889606, -0.432170,
		25.718401, 35.734943, 16.527081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.829359, 26.776907, 24.830957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206314, 26.850430, 24.942757>,  <28.432487, 26.894543, 25.009836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206314, 26.850430, 24.942757>,  <27.829359, 26.776907, 24.830957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206314, 26.850430, 24.942757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031708, 0.880833, -0.472364,
		-0.333014, 0.436288, 0.835915,
		0.942389, 0.183808, 0.279496,
		28.489031, 26.905573, 25.026606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810734, 27.504005, 25.101925>,  <27.829359, 26.776907, 24.830957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810734, 27.504005, 25.101925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186901, 27.412678, 25.001144>,  <28.412601, 27.357882, 24.940676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186901, 27.412678, 25.001144>,  <27.810734, 27.504005, 25.101925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186901, 27.412678, 25.001144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100531, 0.894585, -0.435444,
		0.324814, 0.384171, 0.864238,
		0.940420, -0.228321, -0.251953,
		28.469027, 27.344181, 24.925558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310150, 27.980469, 25.490929>,  <27.810734, 27.504005, 25.101925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310150, 27.980469, 25.490929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507660, 27.864910, 25.162849>,  <28.626165, 27.795574, 24.966002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507660, 27.864910, 25.162849>,  <28.310150, 27.980469, 25.490929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507660, 27.864910, 25.162849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131431, 0.957159, -0.258017,
		0.859599, 0.019603, 0.510593,
		0.493777, -0.288899, -0.820196,
		28.655792, 27.778240, 24.916790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830488, 28.445011, 25.513819>,  <28.310150, 27.980469, 25.490929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830488, 28.445011, 25.513819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837042, 28.282658, 25.148308>,  <28.840975, 28.185246, 24.929001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837042, 28.282658, 25.148308>,  <28.830488, 28.445011, 25.513819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837042, 28.282658, 25.148308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182215, 0.899807, -0.396414,
		0.983122, -0.160009, 0.088701,
		0.016384, -0.405886, -0.913777,
		28.841957, 28.160892, 24.874174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271641, 28.904934, 25.195009>,  <28.830488, 28.445011, 25.513819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271641, 28.904934, 25.195009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108604, 28.691383, 24.898674>,  <29.010782, 28.563253, 24.720873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108604, 28.691383, 24.898674>,  <29.271641, 28.904934, 25.195009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108604, 28.691383, 24.898674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037655, 0.800773, -0.597784,
		0.912388, -0.271548, -0.306285,
		-0.407592, -0.533877, -0.740840,
		28.986326, 28.531219, 24.676422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585907, 29.138163, 24.530462>,  <29.271641, 28.904934, 25.195009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585907, 29.138163, 24.530462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239225, 28.971336, 24.421005>,  <29.031216, 28.871241, 24.355331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239225, 28.971336, 24.421005>,  <29.585907, 29.138163, 24.530462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239225, 28.971336, 24.421005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127802, 0.715928, -0.686378,
		0.482170, -0.559916, -0.673800,
		-0.866706, -0.417063, -0.273641,
		28.979214, 28.846218, 24.338913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574360, 29.229202, 23.776173>,  <29.585907, 29.138163, 24.530462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574360, 29.229202, 23.776173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188202, 29.212700, 23.879173>,  <28.956507, 29.202799, 23.940973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188202, 29.212700, 23.879173>,  <29.574360, 29.229202, 23.776173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188202, 29.212700, 23.879173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194659, 0.771081, -0.606253,
		-0.173546, -0.635399, -0.752429,
		-0.965396, -0.041255, 0.257504,
		28.898582, 29.200323, 23.956425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154263, 29.248331, 23.118023>,  <29.574360, 29.229202, 23.776173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154263, 29.248331, 23.118023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939716, 29.389893, 23.424503>,  <28.810989, 29.474829, 23.608391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939716, 29.389893, 23.424503>,  <29.154263, 29.248331, 23.118023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939716, 29.389893, 23.424503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324571, 0.751527, -0.574336,
		-0.779081, -0.556740, -0.288226,
		-0.536365, 0.353904, 0.766201,
		28.778807, 29.496063, 23.654364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705875, 29.615284, 22.769699>,  <29.154263, 29.248331, 23.118023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705875, 29.615284, 22.769699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638977, 29.746582, 23.141567>,  <28.598839, 29.825361, 23.364687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638977, 29.746582, 23.141567>,  <28.705875, 29.615284, 22.769699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638977, 29.746582, 23.141567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370166, 0.853058, -0.367789,
		-0.913787, -0.405643, -0.021165,
		-0.167246, 0.328247, 0.929668,
		28.588802, 29.845057, 23.420467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101757, 29.978193, 22.728325>,  <28.705875, 29.615284, 22.769699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101757, 29.978193, 22.728325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253000, 30.118092, 23.071186>,  <28.343746, 30.202030, 23.276903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253000, 30.118092, 23.071186>,  <28.101757, 29.978193, 22.728325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253000, 30.118092, 23.071186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237226, 0.931579, -0.275470,
		-0.894851, -0.099182, 0.435207,
		0.378108, 0.349747, 0.857153,
		28.366432, 30.223015, 23.328333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547873, 30.372324, 23.087845>,  <28.101757, 29.978193, 22.728325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547873, 30.372324, 23.087845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899254, 30.509083, 23.221371>,  <28.110083, 30.591137, 23.301485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899254, 30.509083, 23.221371>,  <27.547873, 30.372324, 23.087845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899254, 30.509083, 23.221371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339194, 0.938231, -0.068333,
		-0.336556, -0.053200, 0.940159,
		0.878451, 0.341895, 0.333813,
		28.162788, 30.611650, 23.321514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451874, 30.864241, 23.558062>,  <27.547873, 30.372324, 23.087845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451874, 30.864241, 23.558062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806755, 30.976982, 23.411949>,  <28.019684, 31.044628, 23.324282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806755, 30.976982, 23.411949>,  <27.451874, 30.864241, 23.558062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806755, 30.976982, 23.411949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381852, 0.892933, -0.238450,
		0.258964, 0.351037, 0.899839,
		0.887201, 0.281856, -0.365282,
		28.072916, 31.061539, 23.302364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232956, 31.490929, 23.958372>,  <27.451874, 30.864241, 23.558062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232956, 31.490929, 23.958372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860613, 31.445168, 24.097176>,  <26.637207, 31.417711, 24.180458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860613, 31.445168, 24.097176>,  <27.232956, 31.490929, 23.958372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860613, 31.445168, 24.097176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214484, 0.939960, -0.265464,
		-0.295804, -0.321537, -0.899508,
		-0.930858, -0.114405, 0.347008,
		26.581356, 31.410847, 24.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255005, 32.204788, 24.009157>,  <27.232956, 31.490929, 23.958372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255005, 32.204788, 24.009157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512163, 31.940620, 23.853962>,  <27.666458, 31.782120, 23.760845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512163, 31.940620, 23.853962>,  <27.255005, 32.204788, 24.009157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512163, 31.940620, 23.853962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421646, 0.117744, -0.899084,
		0.639455, 0.741608, -0.202766,
		0.642893, -0.660419, -0.387988,
		27.705030, 31.742495, 23.737566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428102, 32.333553, 23.903894>,  <27.255005, 32.204788, 24.009157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428102, 32.333553, 23.903894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053648, 32.324318, 24.044243>,  <25.828976, 32.318779, 24.128452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053648, 32.324318, 24.044243>,  <26.428102, 32.333553, 23.903894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053648, 32.324318, 24.044243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290436, -0.613269, 0.734540,
		0.198221, 0.789537, 0.580810,
		-0.936139, -0.023086, 0.350873,
		25.772806, 32.317390, 24.149504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435556, 32.520153, 24.644920>,  <26.428102, 32.333553, 23.903894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435556, 32.520153, 24.644920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115149, 32.301262, 24.547832>,  <25.922905, 32.169926, 24.489580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115149, 32.301262, 24.547832>,  <26.435556, 32.520153, 24.644920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115149, 32.301262, 24.547832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234256, -0.659649, 0.714134,
		-0.550902, 0.515176, 0.656582,
		-0.801018, -0.547226, -0.242719,
		25.874844, 32.137093, 24.475018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111423, 32.297546, 25.248528>,  <26.435556, 32.520153, 24.644920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111423, 32.297546, 25.248528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964581, 32.033043, 24.986851>,  <25.876474, 31.874340, 24.829844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964581, 32.033043, 24.986851>,  <26.111423, 32.297546, 25.248528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964581, 32.033043, 24.986851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419095, -0.745453, 0.518323,
		-0.830416, -0.083887, 0.550793,
		-0.367109, -0.661258, -0.654193,
		25.854448, 31.834665, 24.790592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674889, 31.808199, 25.601507>,  <26.111423, 32.297546, 25.248528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674889, 31.808199, 25.601507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765759, 31.613346, 25.264202>,  <25.820280, 31.496433, 25.061819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765759, 31.613346, 25.264202>,  <25.674889, 31.808199, 25.601507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765759, 31.613346, 25.264202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199277, -0.824328, 0.529879,
		-0.953248, -0.288417, -0.090191,
		0.227173, -0.487133, -0.843264,
		25.833910, 31.467207, 25.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224760, 31.264477, 25.540253>,  <25.674889, 31.808199, 25.601507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224760, 31.264477, 25.540253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543652, 31.167519, 25.319103>,  <25.734987, 31.109343, 25.186413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543652, 31.167519, 25.319103>,  <25.224760, 31.264477, 25.540253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543652, 31.167519, 25.319103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120387, -0.833610, 0.539075,
		-0.591551, -0.496325, -0.635397,
		0.797230, -0.242397, -0.552873,
		25.782820, 31.094799, 25.153242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105967, 30.642723, 25.394140>,  <25.224760, 31.264477, 25.540253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105967, 30.642723, 25.394140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497450, 30.687874, 25.325565>,  <25.732340, 30.714964, 25.284420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497450, 30.687874, 25.325565>,  <25.105967, 30.642723, 25.394140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497450, 30.687874, 25.325565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183303, -0.856484, 0.482529,
		-0.092369, -0.503680, -0.858938,
		0.978707, 0.112875, -0.171439,
		25.791061, 30.721737, 25.274134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360373, 29.901272, 25.173677>,  <25.105967, 30.642723, 25.394140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360373, 29.901272, 25.173677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648314, 30.140533, 25.314545>,  <25.821077, 30.284090, 25.399065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648314, 30.140533, 25.314545>,  <25.360373, 29.901272, 25.173677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648314, 30.140533, 25.314545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268860, -0.708023, 0.653007,
		0.639943, -0.375384, -0.670492,
		0.719852, 0.598156, 0.352168,
		25.864269, 30.319981, 25.420195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855753, 29.425732, 25.341255>,  <25.360373, 29.901272, 25.173677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855753, 29.425732, 25.341255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974131, 29.743172, 25.553902>,  <26.045156, 29.933636, 25.681490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974131, 29.743172, 25.553902>,  <25.855753, 29.425732, 25.341255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974131, 29.743172, 25.553902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281747, -0.604308, 0.745272,
		0.912708, -0.070777, -0.402436,
		0.295944, 0.793601, 0.531615,
		26.062914, 29.981253, 25.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540878, 29.267853, 25.463867>,  <25.855753, 29.425732, 25.341255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540878, 29.267853, 25.463867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442368, 29.554558, 25.724819>,  <26.383261, 29.726582, 25.881390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442368, 29.554558, 25.724819>,  <26.540878, 29.267853, 25.463867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442368, 29.554558, 25.724819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444377, -0.514682, 0.733233,
		0.861322, 0.470482, -0.191757,
		-0.246279, 0.716763, 0.652379,
		26.368484, 29.769587, 25.920532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088669, 29.171680, 25.940777>,  <26.540878, 29.267853, 25.463867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088669, 29.171680, 25.940777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806154, 29.385376, 26.126572>,  <26.636644, 29.513594, 26.238049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806154, 29.385376, 26.126572>,  <27.088669, 29.171680, 25.940777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806154, 29.385376, 26.126572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306545, -0.360617, 0.880900,
		0.638113, 0.764555, 0.090931,
		-0.706288, 0.534239, 0.464485,
		26.594269, 29.545649, 26.265917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377033, 29.558796, 26.323532>,  <27.088669, 29.171680, 25.940777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377033, 29.558796, 26.323532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025585, 29.535976, 26.513172>,  <26.814716, 29.522284, 26.626955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025585, 29.535976, 26.513172>,  <27.377033, 29.558796, 26.323532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025585, 29.535976, 26.513172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465290, -0.325530, 0.823125,
		0.107374, 0.943809, 0.312563,
		-0.878621, -0.057050, 0.474099,
		26.761999, 29.518862, 26.655401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353312, 29.868958, 27.019907>,  <27.377033, 29.558796, 26.323532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353312, 29.868958, 27.019907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036863, 29.627785, 27.061100>,  <26.846994, 29.483082, 27.085815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036863, 29.627785, 27.061100>,  <27.353312, 29.868958, 27.019907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036863, 29.627785, 27.061100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478156, -0.504617, 0.718838,
		-0.381443, 0.617929, 0.687507,
		-0.791118, -0.602931, 0.102984,
		26.799528, 29.446905, 27.091995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309786, 29.634335, 27.795441>,  <27.353312, 29.868958, 27.019907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309786, 29.634335, 27.795441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059959, 29.377377, 27.617790>,  <26.910065, 29.223202, 27.511200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059959, 29.377377, 27.617790>,  <27.309786, 29.634335, 27.795441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059959, 29.377377, 27.617790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392385, -0.749811, 0.532745,
		-0.675242, 0.158466, 0.720372,
		-0.624565, -0.642395, -0.444125,
		26.872589, 29.184658, 27.484552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015738, 29.245203, 28.329288>,  <27.309786, 29.634335, 27.795441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015738, 29.245203, 28.329288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904310, 29.025875, 28.013885>,  <26.837454, 28.894278, 27.824644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904310, 29.025875, 28.013885>,  <27.015738, 29.245203, 28.329288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904310, 29.025875, 28.013885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111047, -0.833888, 0.540647,
		-0.953975, 0.063046, 0.293185,
		-0.278569, -0.548320, -0.788507,
		26.820740, 28.861380, 27.777334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596460, 29.641808, 28.782679>,  <27.015738, 29.245203, 28.329288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596460, 29.641808, 28.782679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827511, 29.727806, 29.097672>,  <26.966141, 29.779406, 29.286667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827511, 29.727806, 29.097672>,  <26.596460, 29.641808, 28.782679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827511, 29.727806, 29.097672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204424, 0.895854, -0.394533,
		-0.790292, 0.388872, 0.473517,
		0.577624, 0.214998, 0.787481,
		27.000797, 29.792305, 29.333916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403938, 30.242136, 28.994198>,  <26.596460, 29.641808, 28.782679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403938, 30.242136, 28.994198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768024, 30.241631, 29.159851>,  <26.986477, 30.241327, 29.259243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768024, 30.241631, 29.159851>,  <26.403938, 30.242136, 28.994198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768024, 30.241631, 29.159851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270428, 0.759172, -0.592053,
		-0.313650, 0.650889, 0.691352,
		0.910216, -0.001263, 0.414133,
		27.041090, 30.241251, 29.284090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647663, 30.948101, 29.302673>,  <26.403938, 30.242136, 28.994198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647663, 30.948101, 29.302673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972748, 30.732887, 29.213215>,  <27.167799, 30.603760, 29.159540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972748, 30.732887, 29.213215>,  <26.647663, 30.948101, 29.302673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972748, 30.732887, 29.213215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399776, 0.794141, -0.457732,
		0.423881, 0.282596, 0.860502,
		0.812714, -0.538032, -0.223646,
		27.216562, 30.571478, 29.146120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202393, 31.468132, 29.431032>,  <26.647663, 30.948101, 29.302673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202393, 31.468132, 29.431032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372112, 31.180840, 29.210445>,  <27.473944, 31.008465, 29.078094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372112, 31.180840, 29.210445>,  <27.202393, 31.468132, 29.431032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372112, 31.180840, 29.210445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458426, 0.695569, -0.553199,
		0.780908, -0.018085, 0.624385,
		0.424298, -0.718232, -0.551466,
		27.499401, 30.965370, 29.045006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888990, 31.666853, 29.340376>,  <27.202393, 31.468132, 29.431032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888990, 31.666853, 29.340376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813185, 31.404202, 29.048370>,  <27.767700, 31.246611, 28.873167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813185, 31.404202, 29.048370>,  <27.888990, 31.666853, 29.340376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813185, 31.404202, 29.048370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530325, 0.557261, -0.638917,
		0.826341, -0.508229, 0.242618,
		-0.189515, -0.656630, -0.730015,
		27.756330, 31.207212, 28.829367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529528, 31.554501, 29.064011>,  <27.888990, 31.666853, 29.340376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529528, 31.554501, 29.064011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269642, 31.463402, 28.773907>,  <28.113710, 31.408743, 28.599844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269642, 31.463402, 28.773907>,  <28.529528, 31.554501, 29.064011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269642, 31.463402, 28.773907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545126, 0.525370, -0.653318,
		0.529819, -0.819829, -0.217192,
		-0.649715, -0.227743, -0.725261,
		28.074728, 31.395079, 28.556328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949837, 31.208052, 28.515404>,  <28.529528, 31.554501, 29.064011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949837, 31.208052, 28.515404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611853, 31.348602, 28.354118>,  <28.409063, 31.432932, 28.257347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611853, 31.348602, 28.354118>,  <28.949837, 31.208052, 28.515404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611853, 31.348602, 28.354118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520267, 0.365256, -0.771952,
		-0.123969, -0.862046, -0.491435,
		-0.844958, 0.351376, -0.403213,
		28.358366, 31.454016, 28.233154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160461, 31.058237, 27.919050>,  <28.949837, 31.208052, 28.515404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160461, 31.058237, 27.919050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840714, 31.290321, 27.856609>,  <28.648865, 31.429571, 27.819145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840714, 31.290321, 27.856609>,  <29.160461, 31.058237, 27.919050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840714, 31.290321, 27.856609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436973, 0.383076, -0.813823,
		-0.412388, -0.718756, -0.559755,
		-0.799369, 0.580208, -0.156101,
		28.600903, 31.464384, 27.809778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028091, 30.943909, 27.212280>,  <29.160461, 31.058237, 27.919050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028091, 30.943909, 27.212280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831444, 31.282589, 27.293678>,  <28.713455, 31.485796, 27.342518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831444, 31.282589, 27.293678>,  <29.028091, 30.943909, 27.212280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831444, 31.282589, 27.293678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243694, 0.358119, -0.901313,
		-0.836017, -0.393511, -0.382393,
		-0.491619, 0.846700, 0.203497,
		28.683958, 31.536598, 27.354727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766243, 31.124495, 26.570152>,  <29.028091, 30.943909, 27.212280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766243, 31.124495, 26.570152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749065, 31.453213, 26.797417>,  <28.738760, 31.650444, 26.933775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749065, 31.453213, 26.797417>,  <28.766243, 31.124495, 26.570152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749065, 31.453213, 26.797417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232694, 0.561275, -0.794244,
		-0.971601, 0.098101, -0.215329,
		-0.042943, 0.821795, 0.568163,
		28.736183, 31.699751, 26.967865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300289, 31.622978, 26.299532>,  <28.766243, 31.124495, 26.570152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300289, 31.622978, 26.299532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544809, 31.843868, 26.526287>,  <28.691523, 31.976402, 26.662340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544809, 31.843868, 26.526287>,  <28.300289, 31.622978, 26.299532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544809, 31.843868, 26.526287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200541, 0.584841, -0.785967,
		-0.765567, 0.594147, 0.246771,
		0.611302, 0.552223, 0.566886,
		28.728199, 32.009537, 26.696352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960114, 32.197914, 26.230242>,  <28.300289, 31.622978, 26.299532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960114, 32.197914, 26.230242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344053, 32.271626, 26.314842>,  <28.574417, 32.315853, 26.365602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344053, 32.271626, 26.314842>,  <27.960114, 32.197914, 26.230242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344053, 32.271626, 26.314842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022722, 0.700408, -0.713381,
		-0.279601, 0.689542, 0.668098,
		0.959848, 0.184281, 0.211502,
		28.632008, 32.326908, 26.378292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.109394, 26.831421, 31.386782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.500685, 26.840271, 31.469326>,  <26.735458, 26.845581, 31.518852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.500685, 26.840271, 31.469326>,  <26.109394, 26.831421, 31.386782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500685, 26.840271, 31.469326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057208, 0.927033, -0.370589,
		-0.199502, 0.374325, 0.905582,
		0.978226, 0.022126, 0.206359,
		26.794153, 26.846909, 31.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206308, 27.460434, 31.866316>,  <26.109394, 26.831421, 31.386782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206308, 27.460434, 31.866316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.557238, 27.365143, 31.699677>,  <26.767796, 27.307968, 31.599693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.557238, 27.365143, 31.699677>,  <26.206308, 27.460434, 31.866316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557238, 27.365143, 31.699677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129613, 0.953453, -0.272264,
		0.462066, 0.184867, 0.867363,
		0.877323, -0.238225, -0.416597,
		26.820435, 27.293674, 31.574697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733578, 27.912796, 32.076607>,  <26.206308, 27.460434, 31.866316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733578, 27.912796, 32.076607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902084, 27.776375, 31.740459>,  <27.003189, 27.694523, 31.538771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.902084, 27.776375, 31.740459>,  <26.733578, 27.912796, 32.076607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902084, 27.776375, 31.740459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153637, 0.940044, -0.304488,
		0.893829, -0.000841, 0.448408,
		0.421267, -0.341052, -0.840368,
		27.028465, 27.674059, 31.488350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331196, 28.286459, 31.941048>,  <26.733578, 27.912796, 32.076607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331196, 28.286459, 31.941048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.238062, 28.118984, 31.589939>,  <27.182180, 28.018499, 31.379272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.238062, 28.118984, 31.589939>,  <27.331196, 28.286459, 31.941048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238062, 28.118984, 31.589939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113801, 0.884649, -0.452155,
		0.965835, -0.205170, -0.158331,
		-0.232836, -0.418689, -0.877774,
		27.168211, 27.993378, 31.326607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785753, 28.528805, 31.420147>,  <27.331196, 28.286459, 31.941048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785753, 28.528805, 31.420147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.475863, 28.429417, 31.187576>,  <27.289928, 28.369783, 31.048033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.475863, 28.429417, 31.187576>,  <27.785753, 28.528805, 31.420147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475863, 28.429417, 31.187576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091931, 0.865519, -0.492367,
		0.625575, -0.434902, -0.647700,
		-0.774729, -0.248469, -0.581429,
		27.243444, 28.354876, 31.013147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921490, 28.600389, 30.607880>,  <27.785753, 28.528805, 31.420147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921490, 28.600389, 30.607880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.524622, 28.641369, 30.636459>,  <27.286501, 28.665956, 30.653608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.524622, 28.641369, 30.636459>,  <27.921490, 28.600389, 30.607880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524622, 28.641369, 30.636459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042752, 0.816041, -0.576410,
		-0.117359, -0.568842, -0.814031,
		-0.992169, 0.102448, 0.071450,
		27.226971, 28.672104, 30.657894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815027, 28.825514, 29.964104>,  <27.921490, 28.600389, 30.607880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815027, 28.825514, 29.964104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447487, 28.896915, 30.104870>,  <27.226963, 28.939756, 30.189329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447487, 28.896915, 30.104870>,  <27.815027, 28.825514, 29.964104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447487, 28.896915, 30.104870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133863, 0.697940, -0.703534,
		-0.371201, -0.693553, -0.617409,
		-0.918853, 0.178504, 0.351918,
		27.171831, 28.950466, 30.210445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493015, 28.799082, 29.376316>,  <27.815027, 28.825514, 29.964104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493015, 28.799082, 29.376316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298843, 28.980568, 29.675247>,  <27.182341, 29.089460, 29.854607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.298843, 28.980568, 29.675247>,  <27.493015, 28.799082, 29.376316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298843, 28.980568, 29.675247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213193, 0.767563, -0.604480,
		-0.847884, -0.452757, -0.275868,
		-0.485428, 0.453716, 0.747329,
		27.153215, 29.116682, 29.899446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859850, 28.972183, 29.079115>,  <27.493015, 28.799082, 29.376316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859850, 28.972183, 29.079115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.979841, 29.208130, 29.379002>,  <27.051836, 29.349697, 29.558933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.979841, 29.208130, 29.379002>,  <26.859850, 28.972183, 29.079115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979841, 29.208130, 29.379002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024653, 0.790440, -0.612043,
		-0.953628, 0.165116, 0.251656,
		0.299977, 0.589865, 0.749715,
		27.069834, 29.385090, 29.603916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561485, 28.698572, 28.507425>,  <26.859850, 28.972183, 29.079115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561485, 28.698572, 28.507425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.634842, 28.554543, 28.141537>,  <26.678856, 28.468124, 27.922003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.634842, 28.554543, 28.141537>,  <26.561485, 28.698572, 28.507425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634842, 28.554543, 28.141537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225261, -0.921137, 0.317435,
		-0.956883, 0.147836, -0.250040,
		0.183393, -0.360072, -0.914722,
		26.689859, 28.446522, 27.867121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080357, 28.226332, 28.356342>,  <26.561485, 28.698572, 28.507425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080357, 28.226332, 28.356342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.404743, 28.135258, 28.140751>,  <26.599375, 28.080614, 28.011396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.404743, 28.135258, 28.140751>,  <26.080357, 28.226332, 28.356342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404743, 28.135258, 28.140751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084354, -0.957051, 0.277375,
		-0.578982, -0.179476, -0.795341,
		0.810965, -0.227685, -0.538976,
		26.648033, 28.066952, 27.979057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960241, 27.597036, 28.151829>,  <26.080357, 28.226332, 28.356342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960241, 27.597036, 28.151829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.354824, 27.624962, 28.092457>,  <26.591574, 27.641718, 28.056833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.354824, 27.624962, 28.092457>,  <25.960241, 27.597036, 28.151829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354824, 27.624962, 28.092457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095878, -0.979635, 0.176417,
		-0.133091, -0.188258, -0.973060,
		0.986455, 0.069816, -0.148430,
		26.650761, 27.645906, 28.047928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111202, 26.986048, 27.813951>,  <25.960241, 27.597036, 28.151829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111202, 26.986048, 27.813951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.462845, 27.081158, 27.979183>,  <26.673830, 27.138224, 28.078321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.462845, 27.081158, 27.979183>,  <26.111202, 26.986048, 27.813951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462845, 27.081158, 27.979183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109447, -0.944222, 0.310589,
		0.463889, -0.227830, -0.856096,
		0.879107, 0.237776, 0.413080,
		26.726576, 27.152491, 28.103107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620979, 26.513157, 27.565590>,  <26.111202, 26.986048, 27.813951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620979, 26.513157, 27.565590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.764885, 26.645420, 27.914585>,  <26.851229, 26.724777, 28.123981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.764885, 26.645420, 27.914585>,  <26.620979, 26.513157, 27.565590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764885, 26.645420, 27.914585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073978, -0.942264, 0.326597,
		0.930106, -0.052954, -0.363455,
		0.359766, 0.330658, 0.872487,
		26.872814, 26.744617, 28.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136858, 25.992096, 27.696661>,  <26.620979, 26.513157, 27.565590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136858, 25.992096, 27.696661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.045879, 26.160679, 28.047806>,  <26.991293, 26.261827, 28.258493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.045879, 26.160679, 28.047806>,  <27.136858, 25.992096, 27.696661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045879, 26.160679, 28.047806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119619, -0.882571, 0.454708,
		0.966416, 0.208430, 0.150323,
		-0.227445, 0.421456, 0.877863,
		26.977646, 26.287115, 28.311165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567602, 25.639011, 28.141636>,  <27.136858, 25.992096, 27.696661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567602, 25.639011, 28.141636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.300673, 25.815109, 28.381924>,  <27.140514, 25.920769, 28.526096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.300673, 25.815109, 28.381924>,  <27.567602, 25.639011, 28.141636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300673, 25.815109, 28.381924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097482, -0.748015, 0.656484,
		0.738362, 0.496646, 0.456251,
		-0.667322, 0.440246, 0.600720,
		27.100475, 25.947184, 28.562140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918991, 25.511984, 28.696722>,  <27.567602, 25.639011, 28.141636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918991, 25.511984, 28.696722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.537535, 25.584587, 28.792744>,  <27.308661, 25.628149, 28.850357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.537535, 25.584587, 28.792744>,  <27.918991, 25.511984, 28.696722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537535, 25.584587, 28.792744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019088, -0.832525, 0.553658,
		0.300343, 0.523408, 0.797395,
		-0.953640, 0.181508, 0.240053,
		27.251442, 25.639040, 28.864759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844671, 25.255337, 29.413935>,  <27.918991, 25.511984, 28.696722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844671, 25.255337, 29.413935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.474218, 25.274883, 29.264328>,  <27.251945, 25.286612, 29.174564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.474218, 25.274883, 29.264328>,  <27.844671, 25.255337, 29.413935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474218, 25.274883, 29.264328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197510, -0.907596, 0.370485,
		-0.321352, 0.416991, 0.850207,
		-0.926133, 0.048868, -0.374017,
		27.196379, 25.289543, 29.152122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386316, 25.157272, 29.995340>,  <27.844671, 25.255337, 29.413935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386316, 25.157272, 29.995340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.174767, 25.048889, 29.673626>,  <27.047836, 24.983858, 29.480598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.174767, 25.048889, 29.673626>,  <27.386316, 25.157272, 29.995340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174767, 25.048889, 29.673626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204739, -0.878944, 0.430742,
		-0.823636, 0.392477, 0.409374,
		-0.528873, -0.270960, -0.804285,
		27.016104, 24.967602, 29.432341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775499, 25.075108, 30.137571>,  <27.386316, 25.157272, 29.995340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775499, 25.075108, 30.137571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.814169, 24.834339, 29.820499>,  <26.837370, 24.689878, 29.630257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.814169, 24.834339, 29.820499>,  <26.775499, 25.075108, 30.137571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814169, 24.834339, 29.820499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193066, -0.792626, 0.578334,
		-0.976412, 0.097131, -0.192836,
		0.096672, -0.601922, -0.792682,
		26.843170, 24.653763, 29.582695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266356, 24.597282, 30.222397>,  <26.775499, 25.075108, 30.137571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266356, 24.597282, 30.222397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.476892, 24.398857, 29.946171>,  <26.603214, 24.279802, 29.780436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.476892, 24.398857, 29.946171>,  <26.266356, 24.597282, 30.222397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476892, 24.398857, 29.946171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208739, -0.862704, 0.460618,
		-0.824249, -0.098297, -0.557629,
		0.526347, -0.496064, -0.690565,
		26.634796, 24.250038, 29.739000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928017, 23.930258, 30.202051>,  <26.266356, 24.597282, 30.222397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928017, 23.930258, 30.202051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.264336, 23.855572, 29.998798>,  <26.466127, 23.810760, 29.876846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.264336, 23.855572, 29.998798>,  <25.928017, 23.930258, 30.202051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264336, 23.855572, 29.998798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034080, -0.918519, 0.393905,
		-0.540277, -0.348511, -0.765924,
		0.840797, -0.186715, -0.508132,
		26.516575, 23.799557, 29.846359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788841, 23.396904, 29.591516>,  <25.928017, 23.930258, 30.202051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788841, 23.396904, 29.591516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.156584, 23.388641, 29.748669>,  <26.377230, 23.383684, 29.842960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.156584, 23.388641, 29.748669>,  <25.788841, 23.396904, 29.591516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156584, 23.388641, 29.748669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163189, -0.928684, 0.333040,
		0.357983, -0.370296, -0.857163,
		0.919357, -0.020657, 0.392881,
		26.432390, 23.382444, 29.866533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.105007, 23.566830, 30.806290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710373, 23.570927, 30.741131>,  <32.473591, 23.573385, 30.702036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710373, 23.570927, 30.741131>,  <33.105007, 23.566830, 30.806290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710373, 23.570927, 30.741131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120827, 0.716812, -0.686718,
		0.109733, -0.697191, -0.708437,
		-0.986590, 0.010242, -0.162898,
		32.414394, 23.573999, 30.692261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043304, 23.540989, 30.044010>,  <33.105007, 23.566830, 30.806290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043304, 23.540989, 30.044010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.709301, 23.696846, 30.199413>,  <32.508900, 23.790361, 30.292654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.709301, 23.696846, 30.199413>,  <33.043304, 23.540989, 30.044010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709301, 23.696846, 30.199413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003522, 0.709842, -0.704352,
		-0.550224, -0.586772, -0.594097,
		-0.835010, 0.389644, 0.388506,
		32.458797, 23.813740, 30.315966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516705, 23.567324, 29.559147>,  <33.043304, 23.540989, 30.044010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516705, 23.567324, 29.559147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427376, 23.854836, 29.822506>,  <32.373779, 24.027342, 29.980522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427376, 23.854836, 29.822506>,  <32.516705, 23.567324, 29.559147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427376, 23.854836, 29.822506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000246, 0.675414, -0.737439,
		-0.974746, -0.164845, -0.150655,
		-0.223318, 0.718778, 0.658397,
		32.360382, 24.070469, 30.020025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929853, 24.025213, 29.292282>,  <32.516705, 23.567324, 29.559147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929853, 24.025213, 29.292282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103096, 24.241413, 29.580803>,  <32.207043, 24.371134, 29.753916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103096, 24.241413, 29.580803>,  <31.929853, 24.025213, 29.292282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103096, 24.241413, 29.580803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073913, 0.818857, -0.569219,
		-0.898307, 0.193220, 0.394603,
		0.433108, 0.540499, 0.721304,
		32.233028, 24.403563, 29.797194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590769, 24.631922, 29.282280>,  <31.929853, 24.025213, 29.292282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590769, 24.631922, 29.282280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912092, 24.734863, 29.497116>,  <32.104885, 24.796629, 29.626017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.912092, 24.734863, 29.497116>,  <31.590769, 24.631922, 29.282280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912092, 24.734863, 29.497116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033539, 0.880836, -0.472232,
		-0.594619, 0.397362, 0.698951,
		0.803308, 0.257356, 0.537089,
		32.153084, 24.812071, 29.658243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546762, 25.395927, 29.382408>,  <31.590769, 24.631922, 29.282280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546762, 25.395927, 29.382408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.934568, 25.315945, 29.439064>,  <32.167252, 25.267954, 29.473057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.934568, 25.315945, 29.439064>,  <31.546762, 25.395927, 29.382408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934568, 25.315945, 29.439064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243263, 0.854889, -0.458244,
		-0.029455, 0.478728, 0.877469,
		0.969513, -0.199958, 0.141638,
		32.225422, 25.255957, 29.481556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818924, 26.049000, 29.603050>,  <31.546762, 25.395927, 29.382408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818924, 26.049000, 29.603050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115948, 25.809937, 29.482113>,  <32.294163, 25.666498, 29.409552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.115948, 25.809937, 29.482113>,  <31.818924, 26.049000, 29.603050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115948, 25.809937, 29.482113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408122, 0.761670, -0.503284,
		0.531077, 0.250325, 0.809503,
		0.742559, -0.597658, -0.302342,
		32.338715, 25.630638, 29.391411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462917, 26.310160, 29.843641>,  <31.818924, 26.049000, 29.603050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462917, 26.310160, 29.843641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536030, 26.091553, 29.516739>,  <32.579899, 25.960388, 29.320597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536030, 26.091553, 29.516739>,  <32.462917, 26.310160, 29.843641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536030, 26.091553, 29.516739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518227, 0.759963, -0.392297,
		0.835482, -0.351818, 0.422130,
		0.182786, -0.546516, -0.817257,
		32.590866, 25.927597, 29.271563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100204, 26.540813, 29.676743>,  <32.462917, 26.310160, 29.843641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100204, 26.540813, 29.676743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964211, 26.354576, 29.349907>,  <32.882614, 26.242834, 29.153807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.964211, 26.354576, 29.349907>,  <33.100204, 26.540813, 29.676743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964211, 26.354576, 29.349907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383833, 0.724483, -0.572536,
		0.858536, -0.508277, -0.067600,
		-0.339982, -0.465596, -0.817088,
		32.862217, 26.214897, 29.104780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532116, 26.706213, 29.227276>,  <33.100204, 26.540813, 29.676743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532116, 26.706213, 29.227276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212898, 26.599678, 29.011055>,  <33.021370, 26.535757, 28.881323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.212898, 26.599678, 29.011055>,  <33.532116, 26.706213, 29.227276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212898, 26.599678, 29.011055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234701, 0.688817, -0.685891,
		0.555019, -0.674237, -0.487195,
		-0.798041, -0.266338, -0.540550,
		32.973488, 26.519775, 28.848890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764168, 26.791704, 28.618225>,  <33.532116, 26.706213, 29.227276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764168, 26.791704, 28.618225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372143, 26.772484, 28.541100>,  <33.136929, 26.760952, 28.494823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.372143, 26.772484, 28.541100>,  <33.764168, 26.791704, 28.618225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372143, 26.772484, 28.541100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126350, 0.598228, -0.791302,
		0.153370, -0.799884, -0.580227,
		-0.980058, -0.048050, -0.192816,
		33.078125, 26.758068, 28.483255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669460, 26.733681, 27.876648>,  <33.764168, 26.791704, 28.618225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669460, 26.733681, 27.876648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322514, 26.883076, 28.008213>,  <33.114346, 26.972713, 28.087152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322514, 26.883076, 28.008213>,  <33.669460, 26.733681, 27.876648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322514, 26.883076, 28.008213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132343, 0.810207, -0.571008,
		-0.479751, -0.451744, -0.752174,
		-0.867366, 0.373487, 0.328912,
		33.062305, 26.995121, 28.106886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222549, 26.958466, 27.253201>,  <33.669460, 26.733681, 27.876648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222549, 26.958466, 27.253201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116173, 27.163052, 27.580048>,  <33.052345, 27.285803, 27.776155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.116173, 27.163052, 27.580048>,  <33.222549, 26.958466, 27.253201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116173, 27.163052, 27.580048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182236, 0.859031, -0.478389,
		-0.946607, 0.021685, -0.321659,
		-0.265941, 0.511464, 0.817117,
		33.036392, 27.316490, 27.825182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925671, 27.459734, 26.919937>,  <33.222549, 26.958466, 27.253201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925671, 27.459734, 26.919937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981457, 27.602276, 27.289490>,  <33.014927, 27.687801, 27.511221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981457, 27.602276, 27.289490>,  <32.925671, 27.459734, 26.919937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981457, 27.602276, 27.289490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285447, 0.878928, -0.382106,
		-0.948193, 0.317010, 0.020860,
		0.139466, 0.356356, 0.923883,
		33.023296, 27.709183, 27.566654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246506, 27.413670, 26.582281>,  <32.925671, 27.459734, 26.919937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246506, 27.413670, 26.582281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213104, 27.293873, 26.202106>,  <32.193062, 27.221994, 25.974001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213104, 27.293873, 26.202106>,  <32.246506, 27.413670, 26.582281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213104, 27.293873, 26.202106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197326, -0.929914, 0.310360,
		-0.976775, 0.213462, 0.018553,
		-0.083503, -0.299490, -0.950438,
		32.188053, 27.204025, 25.916975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730682, 26.916567, 26.599651>,  <32.246506, 27.413670, 26.582281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730682, 26.916567, 26.599651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956141, 26.856255, 26.274796>,  <32.091415, 26.820066, 26.079882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.956141, 26.856255, 26.274796>,  <31.730682, 26.916567, 26.599651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956141, 26.856255, 26.274796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111614, -0.988084, 0.105985,
		-0.818442, 0.030908, -0.573757,
		0.563644, -0.150782, -0.812139,
		32.125233, 26.811020, 26.031155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281992, 26.481657, 26.096283>,  <31.730682, 26.916567, 26.599651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281992, 26.481657, 26.096283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672951, 26.430042, 26.029293>,  <31.907526, 26.399075, 25.989100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672951, 26.430042, 26.029293>,  <31.281992, 26.481657, 26.096283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672951, 26.430042, 26.029293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130382, -0.991459, 0.002977,
		-0.166430, 0.018926, -0.985872,
		0.977395, -0.129036, -0.167476,
		31.966169, 26.391331, 25.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300842, 25.780134, 25.756762>,  <31.281992, 26.481657, 26.096283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300842, 25.780134, 25.756762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678244, 25.844704, 25.872513>,  <31.904684, 25.883446, 25.941963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.678244, 25.844704, 25.872513>,  <31.300842, 25.780134, 25.756762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678244, 25.844704, 25.872513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097818, -0.970080, 0.222208,
		0.316591, -0.181348, -0.931066,
		0.943505, 0.161424, 0.289379,
		31.961296, 25.893131, 25.959326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638224, 25.175989, 25.575130>,  <31.300842, 25.780134, 25.756762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638224, 25.175989, 25.575130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895319, 25.332115, 25.838810>,  <32.049576, 25.425791, 25.997019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895319, 25.332115, 25.838810>,  <31.638224, 25.175989, 25.575130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895319, 25.332115, 25.838810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185071, -0.914100, 0.360792,
		0.743397, -0.109896, -0.659761,
		0.642736, 0.390314, 0.659200,
		32.088139, 25.449209, 26.036570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206497, 24.713102, 25.557003>,  <31.638224, 25.175989, 25.575130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206497, 24.713102, 25.557003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230358, 24.902340, 25.908600>,  <32.244675, 25.015882, 26.119558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230358, 24.902340, 25.908600>,  <32.206497, 24.713102, 25.557003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230358, 24.902340, 25.908600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175753, -0.871780, 0.457286,
		0.982625, 0.127206, -0.135153,
		0.059655, 0.473094, 0.878990,
		32.248253, 25.044268, 26.172297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650135, 24.306936, 25.869978>,  <32.206497, 24.713102, 25.557003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650135, 24.306936, 25.869978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496723, 24.512669, 26.176800>,  <32.404678, 24.636108, 26.360893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.496723, 24.512669, 26.176800>,  <32.650135, 24.306936, 25.869978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496723, 24.512669, 26.176800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064889, -0.813509, 0.577922,
		0.921247, 0.271422, 0.278629,
		-0.383528, 0.514329, 0.767055,
		32.381664, 24.666967, 26.406916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039997, 24.104494, 26.438358>,  <32.650135, 24.306936, 25.869978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039997, 24.104494, 26.438358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704239, 24.248112, 26.601578>,  <32.502785, 24.334282, 26.699509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.704239, 24.248112, 26.601578>,  <33.039997, 24.104494, 26.438358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704239, 24.248112, 26.601578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089556, -0.831848, 0.547731,
		0.536093, 0.423219, 0.730403,
		-0.839395, 0.359046, 0.408046,
		32.452419, 24.355825, 26.723991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185204, 24.037271, 27.186224>,  <33.039997, 24.104494, 26.438358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185204, 24.037271, 27.186224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793171, 24.081470, 27.120209>,  <32.557953, 24.107990, 27.080599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793171, 24.081470, 27.120209>,  <33.185204, 24.037271, 27.186224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793171, 24.081470, 27.120209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193066, -0.725054, 0.661077,
		-0.046613, 0.679770, 0.731943,
		-0.980078, 0.110498, -0.165037,
		32.499149, 24.114620, 27.070698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960381, 23.934351, 27.872568>,  <33.185204, 24.037271, 27.186224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960381, 23.934351, 27.872568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639179, 23.869160, 27.643265>,  <32.446457, 23.830046, 27.505682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639179, 23.869160, 27.643265>,  <32.960381, 23.934351, 27.872568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639179, 23.869160, 27.643265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260383, -0.769283, 0.583443,
		-0.536084, 0.617773, 0.575300,
		-0.803003, -0.162976, -0.573258,
		32.398277, 23.820267, 27.471287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420937, 23.924179, 28.287182>,  <32.960381, 23.934351, 27.872568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420937, 23.924179, 28.287182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305691, 23.703381, 27.974186>,  <32.236542, 23.570902, 27.786388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305691, 23.703381, 27.974186>,  <32.420937, 23.924179, 28.287182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305691, 23.703381, 27.974186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223555, -0.755788, 0.615474,
		-0.931134, 0.352259, 0.094355,
		-0.288119, -0.551995, -0.782489,
		32.219254, 23.537783, 27.739439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738478, 23.626776, 28.448950>,  <32.420937, 23.924179, 28.287182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738478, 23.626776, 28.448950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883196, 23.380730, 28.168739>,  <31.970026, 23.233101, 28.000614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883196, 23.380730, 28.168739>,  <31.738478, 23.626776, 28.448950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883196, 23.380730, 28.168739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339996, -0.786735, 0.515220,
		-0.868048, 0.051772, -0.493773,
		0.361795, -0.615116, -0.700526,
		31.991735, 23.196196, 27.958582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129290, 23.241673, 28.252861>,  <31.738478, 23.626776, 28.448950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129290, 23.241673, 28.252861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439770, 23.022240, 28.128555>,  <31.626057, 22.890579, 28.053972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439770, 23.022240, 28.128555>,  <31.129290, 23.241673, 28.252861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439770, 23.022240, 28.128555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521107, -0.835654, 0.173578,
		-0.354912, 0.027209, -0.934504,
		0.776199, -0.548582, -0.310762,
		31.672630, 22.857666, 28.035326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832544, 22.692200, 27.927486>,  <31.129290, 23.241673, 28.252861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832544, 22.692200, 27.927486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.210215, 22.583057, 28.001328>,  <31.436817, 22.517572, 28.045631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.210215, 22.583057, 28.001328>,  <30.832544, 22.692200, 27.927486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210215, 22.583057, 28.001328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325122, -0.862165, 0.388545,
		0.053142, -0.426874, -0.902748,
		0.944178, -0.272855, 0.184604,
		31.493467, 22.501202, 28.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129522, 22.527056, 27.594681>,  <30.832544, 22.692200, 27.927486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129522, 22.527056, 27.594681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763622, 22.454834, 27.739254>,  <29.544083, 22.411501, 27.825998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763622, 22.454834, 27.739254>,  <30.129522, 22.527056, 27.594681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763622, 22.454834, 27.739254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256567, 0.950655, -0.174438,
		-0.312102, -0.252299, -0.915936,
		-0.914749, -0.180557, 0.361432,
		29.489197, 22.400667, 27.847683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678963, 22.612724, 27.054909>,  <30.129522, 22.527056, 27.594681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678963, 22.612724, 27.054909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468128, 22.657974, 27.391808>,  <29.341627, 22.685123, 27.593946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.468128, 22.657974, 27.391808>,  <29.678963, 22.612724, 27.054909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468128, 22.657974, 27.391808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166157, 0.958252, -0.232688,
		-0.833409, -0.262593, -0.486286,
		-0.527087, 0.113124, 0.842248,
		29.310001, 22.691912, 27.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075872, 22.989769, 26.888218>,  <29.678963, 22.612724, 27.054909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075872, 22.989769, 26.888218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125141, 23.061314, 27.278671>,  <29.154703, 23.104240, 27.512943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.125141, 23.061314, 27.278671>,  <29.075872, 22.989769, 26.888218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125141, 23.061314, 27.278671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273059, 0.951764, -0.139940,
		-0.954079, -0.249305, 0.166070,
		0.123172, 0.178861, 0.976134,
		29.162092, 23.114971, 27.571512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481194, 23.322029, 27.027851>,  <29.075872, 22.989769, 26.888218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481194, 23.322029, 27.027851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.757006, 23.388069, 27.309925>,  <28.922493, 23.427692, 27.479170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.757006, 23.388069, 27.309925>,  <28.481194, 23.322029, 27.027851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757006, 23.388069, 27.309925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002548, 0.973112, -0.230317,
		-0.724252, 0.160607, 0.670571,
		0.689531, 0.165099, 0.705187,
		28.963865, 23.437599, 27.521481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158539, 23.744371, 27.418499>,  <28.481194, 23.322029, 27.027851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158539, 23.744371, 27.418499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.546072, 23.779953, 27.510975>,  <28.778593, 23.801302, 27.566460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.546072, 23.779953, 27.510975>,  <28.158539, 23.744371, 27.418499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546072, 23.779953, 27.510975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002239, 0.930117, -0.367255,
		-0.247701, 0.356327, 0.900930,
		0.968834, 0.088952, 0.231189,
		28.836721, 23.806639, 27.580332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193022, 24.362188, 27.510338>,  <28.158539, 23.744371, 27.418499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193022, 24.362188, 27.510338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.585583, 24.287422, 27.492863>,  <28.821119, 24.242563, 27.482378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.585583, 24.287422, 27.492863>,  <28.193022, 24.362188, 27.510338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585583, 24.287422, 27.492863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156706, 0.911613, -0.380006,
		0.110857, 0.366093, 0.923952,
		0.981404, -0.186915, -0.043689,
		28.880005, 24.231348, 27.479755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530907, 24.960020, 27.871778>,  <28.193022, 24.362188, 27.510338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530907, 24.960020, 27.871778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.767977, 24.775631, 27.607586>,  <28.910219, 24.664997, 27.449070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.767977, 24.775631, 27.607586>,  <28.530907, 24.960020, 27.871778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767977, 24.775631, 27.607586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009077, 0.816152, -0.577767,
		0.805390, 0.348424, 0.479529,
		0.592676, -0.460975, -0.660483,
		28.945780, 24.637339, 27.409441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920399, 25.489721, 27.657818>,  <28.530907, 24.960020, 27.871778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920399, 25.489721, 27.657818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001596, 25.219593, 27.374203>,  <29.050316, 25.057516, 27.204033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.001596, 25.219593, 27.374203>,  <28.920399, 25.489721, 27.657818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001596, 25.219593, 27.374203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052061, 0.730535, -0.680888,
		0.977795, 0.101304, 0.183454,
		0.202996, -0.675319, -0.709039,
		29.062496, 25.016996, 27.161491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467070, 25.811449, 27.220081>,  <28.920399, 25.489721, 27.657818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467070, 25.811449, 27.220081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.289520, 25.530655, 26.997303>,  <29.182991, 25.362179, 26.863636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.289520, 25.530655, 26.997303>,  <29.467070, 25.811449, 27.220081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289520, 25.530655, 26.997303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076326, 0.589654, -0.804042,
		0.892833, -0.399402, -0.208152,
		-0.443873, -0.701988, -0.556947,
		29.156359, 25.320059, 26.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931122, 25.665581, 26.643618>,  <29.467070, 25.811449, 27.220081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931122, 25.665581, 26.643618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.567179, 25.542294, 26.532505>,  <29.348814, 25.468321, 26.465837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.567179, 25.542294, 26.532505>,  <29.931122, 25.665581, 26.643618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567179, 25.542294, 26.532505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011201, 0.650984, -0.759008,
		0.414771, -0.693700, -0.588850,
		-0.909857, -0.308219, -0.277780,
		29.294222, 25.449827, 26.449171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988522, 25.673580, 25.935614>,  <29.931122, 25.665581, 26.643618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988522, 25.673580, 25.935614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.593847, 25.681801, 26.000153>,  <29.357042, 25.686733, 26.038876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.593847, 25.681801, 26.000153>,  <29.988522, 25.673580, 25.935614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593847, 25.681801, 26.000153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108924, 0.653205, -0.749305,
		-0.120794, -0.756902, -0.642268,
		-0.986684, 0.020554, 0.161348,
		29.297842, 25.687967, 26.048557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623352, 25.586775, 25.298033>,  <29.988522, 25.673580, 25.935614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623352, 25.586775, 25.298033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.346186, 25.772030, 25.519073>,  <29.179886, 25.883183, 25.651697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.346186, 25.772030, 25.519073>,  <29.623352, 25.586775, 25.298033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346186, 25.772030, 25.519073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105163, 0.693304, -0.712931,
		-0.713307, -0.552115, -0.431697,
		-0.692917, 0.463140, 0.552601,
		29.138311, 25.910973, 25.684855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004101, 25.707466, 24.877533>,  <29.623352, 25.586775, 25.298033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004101, 25.707466, 24.877533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948637, 25.975754, 25.168987>,  <28.915359, 26.136726, 25.343861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948637, 25.975754, 25.168987>,  <29.004101, 25.707466, 24.877533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948637, 25.975754, 25.168987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236473, 0.692037, -0.682030,
		-0.961693, -0.266872, 0.062649,
		-0.138659, 0.670718, 0.728636,
		28.907040, 26.176970, 25.387579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349144, 25.955088, 24.705055>,  <29.004101, 25.707466, 24.877533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349144, 25.955088, 24.705055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519573, 26.218281, 24.953415>,  <28.621832, 26.376198, 25.102430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519573, 26.218281, 24.953415>,  <28.349144, 25.955088, 24.705055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519573, 26.218281, 24.953415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190545, 0.736187, -0.649401,
		-0.884394, 0.158385, 0.439046,
		0.426075, 0.657984, 0.620900,
		28.647396, 26.415676, 25.139685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.411373, 26.417070, 21.672890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419598, 26.518597, 21.286076>,  <41.424530, 26.579512, 21.053988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.419598, 26.518597, 21.286076>,  <41.411373, 26.417070, 21.672890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419598, 26.518597, 21.286076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579355, 0.785264, 0.218423,
		0.814816, -0.564747, -0.130904,
		0.020559, 0.253814, -0.967034,
		41.425766, 26.594742, 20.995966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146229, 26.594917, 21.531359>,  <41.411373, 26.417070, 21.672890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146229, 26.594917, 21.531359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.908062, 26.764374, 21.258301>,  <41.765163, 26.866047, 21.094465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.908062, 26.764374, 21.258301>,  <42.146229, 26.594917, 21.531359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908062, 26.764374, 21.258301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549929, 0.834341, 0.038120,
		0.585710, -0.352709, -0.729754,
		-0.595418, 0.423640, -0.682647,
		41.729435, 26.891466, 21.053507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551739, 27.046190, 21.036905>,  <42.146229, 26.594917, 21.531359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551739, 27.046190, 21.036905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.182659, 27.198486, 21.012718>,  <41.961212, 27.289864, 20.998205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.182659, 27.198486, 21.012718>,  <42.551739, 27.046190, 21.036905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182659, 27.198486, 21.012718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380201, 0.924674, 0.020610,
		0.063760, -0.003973, -0.997957,
		-0.922704, 0.380738, -0.060468,
		41.905849, 27.312708, 20.994577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515148, 27.659039, 20.604654>,  <42.551739, 27.046190, 21.036905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515148, 27.659039, 20.604654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.167789, 27.681629, 20.801708>,  <41.959373, 27.695185, 20.919941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.167789, 27.681629, 20.801708>,  <42.515148, 27.659039, 20.604654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167789, 27.681629, 20.801708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199721, 0.949181, 0.243241,
		-0.453864, 0.309620, -0.835549,
		-0.868400, 0.056478, 0.492637,
		41.907269, 27.698572, 20.949499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394463, 28.348814, 20.507812>,  <42.515148, 27.659039, 20.604654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394463, 28.348814, 20.507812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.113911, 28.246300, 20.773861>,  <41.945580, 28.184792, 20.933491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.113911, 28.246300, 20.773861>,  <42.394463, 28.348814, 20.507812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113911, 28.246300, 20.773861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000907, 0.933444, 0.358722,
		-0.712790, 0.250997, -0.654928,
		-0.701377, -0.256287, 0.665122,
		41.903496, 28.169413, 20.973398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853100, 28.835541, 20.532396>,  <42.394463, 28.348814, 20.507812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853100, 28.835541, 20.532396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.829258, 28.668327, 20.894985>,  <41.814953, 28.567999, 21.112539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.829258, 28.668327, 20.894985>,  <41.853100, 28.835541, 20.532396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829258, 28.668327, 20.894985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223328, 0.890656, 0.396051,
		-0.972919, -0.178833, -0.146449,
		-0.059609, -0.418032, 0.906475,
		41.811375, 28.542917, 21.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336349, 29.138939, 20.845264>,  <41.853100, 28.835541, 20.532396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336349, 29.138939, 20.845264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.565605, 29.017315, 21.149647>,  <41.703159, 28.944340, 21.332275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.565605, 29.017315, 21.149647>,  <41.336349, 29.138939, 20.845264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565605, 29.017315, 21.149647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117490, 0.888526, 0.443529,
		-0.810989, -0.343610, 0.473528,
		0.573143, -0.304062, 0.760956,
		41.737549, 28.926096, 21.377934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026993, 29.511353, 21.382034>,  <41.336349, 29.138939, 20.845264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026993, 29.511353, 21.382034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.363636, 29.368526, 21.544121>,  <41.565620, 29.282831, 21.641373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.363636, 29.368526, 21.544121>,  <41.026993, 29.511353, 21.382034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363636, 29.368526, 21.544121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038842, 0.788348, 0.614002,
		-0.538690, -0.501010, 0.677349,
		0.841608, -0.357066, 0.405215,
		41.616119, 29.261406, 21.665686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960423, 29.613026, 22.037554>,  <41.026993, 29.511353, 21.382034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960423, 29.613026, 22.037554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.357666, 29.578579, 22.005772>,  <41.596012, 29.557911, 21.986702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.357666, 29.578579, 22.005772>,  <40.960423, 29.613026, 22.037554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357666, 29.578579, 22.005772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117109, 0.707017, 0.697433,
		-0.003884, -0.701934, 0.712231,
		0.993111, -0.086117, -0.079457,
		41.655598, 29.552744, 21.981936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238190, 29.651436, 22.722857>,  <40.960423, 29.613026, 22.037554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238190, 29.651436, 22.722857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.553398, 29.743992, 22.494656>,  <41.742523, 29.799526, 22.357735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.553398, 29.743992, 22.494656>,  <41.238190, 29.651436, 22.722857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553398, 29.743992, 22.494656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237151, 0.741075, 0.628146,
		0.568133, -0.630291, 0.529111,
		0.788026, 0.231391, -0.570503,
		41.789806, 29.813410, 22.323505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682549, 29.701561, 23.183529>,  <41.238190, 29.651436, 22.722857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682549, 29.701561, 23.183529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820972, 29.912968, 22.873455>,  <41.904026, 30.039812, 22.687410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820972, 29.912968, 22.873455>,  <41.682549, 29.701561, 23.183529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820972, 29.912968, 22.873455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035909, 0.818169, 0.573856,
		0.937525, -0.226425, 0.264156,
		0.346060, 0.528519, -0.775184,
		41.924789, 30.071524, 22.640900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305298, 30.010155, 23.403816>,  <41.682549, 29.701561, 23.183529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305298, 30.010155, 23.403816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.169464, 30.226181, 23.095787>,  <42.087963, 30.355797, 22.910969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.169464, 30.226181, 23.095787>,  <42.305298, 30.010155, 23.403816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169464, 30.226181, 23.095787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075820, 0.800343, 0.594728,
		0.937514, 0.260348, -0.230837,
		-0.339585, 0.540064, -0.770073,
		42.067589, 30.388201, 22.864765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685696, 30.676218, 23.430397>,  <42.305298, 30.010155, 23.403816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685696, 30.676218, 23.430397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371719, 30.752338, 23.194546>,  <42.183334, 30.798010, 23.053036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371719, 30.752338, 23.194546>,  <42.685696, 30.676218, 23.430397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371719, 30.752338, 23.194546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201679, 0.821355, 0.533575,
		0.585833, 0.537737, -0.606332,
		-0.784937, 0.190301, -0.589627,
		42.136238, 30.809429, 23.017658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.832954, 31.377436, 23.165274>,  <42.685696, 30.676218, 23.430397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.832954, 31.377436, 23.165274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.445354, 31.305294, 23.097725>,  <42.212795, 31.262009, 23.057196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.445354, 31.305294, 23.097725>,  <42.832954, 31.377436, 23.165274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445354, 31.305294, 23.097725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234806, 0.884892, 0.402284,
		0.076879, 0.429464, -0.899806,
		-0.968997, -0.180353, -0.168871,
		42.154655, 31.251188, 23.047064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562683, 31.980818, 22.953896>,  <42.832954, 31.377436, 23.165274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562683, 31.980818, 22.953896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232334, 31.792240, 23.077621>,  <42.034126, 31.679094, 23.151857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.232334, 31.792240, 23.077621>,  <42.562683, 31.980818, 22.953896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232334, 31.792240, 23.077621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485069, 0.873712, 0.036540,
		-0.287480, -0.119863, -0.950257,
		-0.825872, -0.471444, 0.309316,
		41.984573, 31.650806, 23.170416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976597, 32.301579, 22.565722>,  <42.562683, 31.980818, 22.953896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976597, 32.301579, 22.565722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.806580, 32.117073, 22.877254>,  <41.704571, 32.006371, 23.064175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.806580, 32.117073, 22.877254>,  <41.976597, 32.301579, 22.565722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806580, 32.117073, 22.877254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508061, 0.833676, 0.216470,
		-0.749141, -0.303684, -0.588696,
		-0.425043, -0.461260, 0.778831,
		41.679066, 31.978695, 23.110905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262352, 32.418922, 22.578714>,  <41.976597, 32.301579, 22.565722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262352, 32.418922, 22.578714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.333546, 32.320599, 22.959850>,  <41.376263, 32.261604, 23.188532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.333546, 32.320599, 22.959850>,  <41.262352, 32.418922, 22.578714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333546, 32.320599, 22.959850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440583, 0.845915, 0.300523,
		-0.879892, -0.473291, 0.042257,
		0.177981, -0.245810, 0.952838,
		41.386940, 32.246857, 23.245701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591301, 32.481163, 22.811073>,  <41.262352, 32.418922, 22.578714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591301, 32.481163, 22.811073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.833164, 32.512745, 23.128098>,  <40.978283, 32.531696, 23.318312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.833164, 32.512745, 23.128098>,  <40.591301, 32.481163, 22.811073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833164, 32.512745, 23.128098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508821, 0.803850, 0.308103,
		-0.612773, -0.589569, 0.526230,
		0.604658, 0.078959, 0.792562,
		41.014561, 32.536434, 23.365866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215836, 32.494370, 23.357252>,  <40.591301, 32.481163, 22.811073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215836, 32.494370, 23.357252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562447, 32.645893, 23.487255>,  <40.770412, 32.736809, 23.565258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562447, 32.645893, 23.487255>,  <40.215836, 32.494370, 23.357252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562447, 32.645893, 23.487255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445689, 0.880377, 0.162162,
		-0.224701, -0.285371, 0.931704,
		0.866528, 0.378813, 0.325009,
		40.822407, 32.759537, 23.584757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917328, 32.928936, 23.717133>,  <40.215836, 32.494370, 23.357252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917328, 32.928936, 23.717133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296974, 33.045898, 23.670357>,  <40.524761, 33.116077, 23.642290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.296974, 33.045898, 23.670357>,  <39.917328, 32.928936, 23.717133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296974, 33.045898, 23.670357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289959, 0.956291, 0.037821,
		0.122889, -0.001988, 0.992418,
		0.949116, 0.292409, -0.116941,
		40.581711, 33.133621, 23.635275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056995, 33.426334, 24.225492>,  <39.917328, 32.928936, 23.717133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056995, 33.426334, 24.225492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306648, 33.512939, 23.925205>,  <40.456440, 33.564903, 23.745033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.306648, 33.512939, 23.925205>,  <40.056995, 33.426334, 24.225492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306648, 33.512939, 23.925205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358276, 0.933174, -0.028728,
		0.694329, 0.286894, 0.660000,
		0.624136, 0.216516, -0.750716,
		40.493889, 33.577896, 23.699991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565899, 33.451260, 24.668213>,  <40.056995, 33.426334, 24.225492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565899, 33.451260, 24.668213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.174187, 33.430294, 24.589973>,  <38.939159, 33.417713, 24.543030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.174187, 33.430294, 24.589973>,  <39.565899, 33.451260, 24.668213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174187, 33.430294, 24.589973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065376, -0.996031, -0.060407,
		-0.191658, -0.071943, 0.978822,
		-0.979282, -0.052414, -0.195601,
		38.880402, 33.414570, 24.531294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198605, 32.872852, 25.067312>,  <39.565899, 33.451260, 24.668213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198605, 32.872852, 25.067312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953060, 32.930286, 24.756813>,  <38.805733, 32.964748, 24.570513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.953060, 32.930286, 24.756813>,  <39.198605, 32.872852, 25.067312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953060, 32.930286, 24.756813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132669, -0.988097, -0.077863,
		-0.778189, 0.055188, 0.625600,
		-0.613857, 0.143590, -0.776249,
		38.768902, 32.973362, 24.523939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567078, 32.425373, 25.202694>,  <39.198605, 32.872852, 25.067312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567078, 32.425373, 25.202694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570549, 32.488632, 24.807743>,  <38.572632, 32.526588, 24.570772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570549, 32.488632, 24.807743>,  <38.567078, 32.425373, 25.202694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570549, 32.488632, 24.807743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300044, -0.941504, -0.153440,
		-0.953886, 0.297587, 0.039285,
		0.008675, 0.158152, -0.987377,
		38.573151, 32.536079, 24.511530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951714, 32.151173, 24.925604>,  <38.567078, 32.425373, 25.202694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951714, 32.151173, 24.925604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213005, 32.153309, 24.622749>,  <38.369781, 32.154591, 24.441036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.213005, 32.153309, 24.622749>,  <37.951714, 32.151173, 24.925604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213005, 32.153309, 24.622749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151655, -0.978789, -0.137745,
		-0.741813, 0.204803, -0.638568,
		0.653233, 0.005339, -0.757138,
		38.408974, 32.154911, 24.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662933, 31.781424, 24.433081>,  <37.951714, 32.151173, 24.925604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662933, 31.781424, 24.433081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052204, 31.777351, 24.341145>,  <38.285767, 31.774908, 24.285982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052204, 31.777351, 24.341145>,  <37.662933, 31.781424, 24.433081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052204, 31.777351, 24.341145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064994, -0.970495, -0.232197,
		-0.220694, 0.240906, -0.945123,
		0.973175, -0.010183, -0.229840,
		38.344158, 31.774296, 24.272192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668530, 31.347397, 23.967527>,  <37.662933, 31.781424, 24.433081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668530, 31.347397, 23.967527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049305, 31.354271, 24.089848>,  <38.277771, 31.358395, 24.163239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049305, 31.354271, 24.089848>,  <37.668530, 31.347397, 23.967527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049305, 31.354271, 24.089848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113813, -0.946777, -0.301097,
		0.284349, 0.321431, -0.903232,
		0.951941, 0.017183, 0.305799,
		38.334888, 31.359426, 24.181587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105637, 31.148848, 23.405828>,  <37.668530, 31.347397, 23.967527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105637, 31.148848, 23.405828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318527, 31.043159, 23.727554>,  <38.446262, 30.979748, 23.920589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318527, 31.043159, 23.727554>,  <38.105637, 31.148848, 23.405828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318527, 31.043159, 23.727554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063247, -0.934987, -0.348997,
		0.844234, 0.236617, -0.480917,
		0.532230, -0.264218, 0.804313,
		38.478195, 30.963894, 23.968849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700195, 30.831932, 23.092848>,  <38.105637, 31.148848, 23.405828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700195, 30.831932, 23.092848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698353, 30.713371, 23.474869>,  <38.697247, 30.642235, 23.704081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698353, 30.713371, 23.474869>,  <38.700195, 30.831932, 23.092848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698353, 30.713371, 23.474869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191014, -0.937738, -0.290105,
		0.981576, 0.181091, 0.060940,
		-0.004610, -0.296401, 0.955052,
		38.696968, 30.624451, 23.761385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385769, 30.523497, 23.280062>,  <38.700195, 30.831932, 23.092848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385769, 30.523497, 23.280062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118912, 30.375458, 23.538658>,  <38.958797, 30.286634, 23.693815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118912, 30.375458, 23.538658>,  <39.385769, 30.523497, 23.280062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118912, 30.375458, 23.538658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277239, -0.928867, -0.245651,
		0.691417, 0.015347, 0.722293,
		-0.667144, -0.370095, 0.646490,
		38.918770, 30.264429, 23.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798645, 30.037449, 23.658457>,  <39.385769, 30.523497, 23.280062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798645, 30.037449, 23.658457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410252, 29.942699, 23.671577>,  <39.177216, 29.885849, 23.679451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410252, 29.942699, 23.671577>,  <39.798645, 30.037449, 23.658457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410252, 29.942699, 23.671577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225270, -0.952075, -0.206896,
		0.080239, -0.193504, 0.977813,
		-0.970986, -0.236874, 0.032803,
		39.118958, 29.871637, 23.681417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723843, 29.263529, 23.899588>,  <39.798645, 30.037449, 23.658457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723843, 29.263529, 23.899588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341991, 29.297062, 23.785286>,  <39.112881, 29.317183, 23.716705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341991, 29.297062, 23.785286>,  <39.723843, 29.263529, 23.899588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341991, 29.297062, 23.785286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051912, -0.991713, -0.117516,
		-0.293239, -0.097350, 0.951070,
		-0.954629, 0.083833, -0.285756,
		39.055603, 29.322212, 23.699560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378235, 28.683363, 24.174629>,  <39.723843, 29.263529, 23.899588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378235, 28.683363, 24.174629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140484, 28.827785, 23.887199>,  <38.997833, 28.914440, 23.714741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140484, 28.827785, 23.887199>,  <39.378235, 28.683363, 24.174629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140484, 28.827785, 23.887199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107452, -0.921189, -0.373984,
		-0.796973, -0.145076, 0.586333,
		-0.594380, 0.361058, -0.718575,
		38.962170, 28.936104, 23.671627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888836, 28.211426, 24.095221>,  <39.378235, 28.683363, 24.174629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888836, 28.211426, 24.095221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837505, 28.398125, 23.745209>,  <38.806705, 28.510143, 23.535202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.837505, 28.398125, 23.745209>,  <38.888836, 28.211426, 24.095221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837505, 28.398125, 23.745209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354727, -0.845557, -0.399002,
		-0.926121, 0.259193, 0.274079,
		-0.128331, 0.466747, -0.875030,
		38.799007, 28.538149, 23.482700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275620, 27.859230, 23.838427>,  <38.888836, 28.211426, 24.095221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275620, 27.859230, 23.838427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459194, 28.034786, 23.529427>,  <38.569340, 28.140120, 23.344027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459194, 28.034786, 23.529427>,  <38.275620, 27.859230, 23.838427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459194, 28.034786, 23.529427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131906, -0.826176, -0.547753,
		-0.878624, 0.353280, -0.321268,
		0.458934, 0.438892, -0.772498,
		38.596874, 28.166454, 23.297678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792377, 27.805647, 23.278271>,  <38.275620, 27.859230, 23.838427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792377, 27.805647, 23.278271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149303, 27.850510, 23.103367>,  <38.363457, 27.877428, 22.998425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149303, 27.850510, 23.103367>,  <37.792377, 27.805647, 23.278271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149303, 27.850510, 23.103367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207785, -0.757879, -0.618421,
		-0.400752, 0.642682, -0.652961,
		0.892313, 0.112158, -0.437262,
		38.416996, 27.884157, 22.972189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652809, 27.897985, 22.547602>,  <37.792377, 27.805647, 23.278271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652809, 27.897985, 22.547602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.016865, 27.740532, 22.599289>,  <38.235298, 27.646059, 22.630301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.016865, 27.740532, 22.599289>,  <37.652809, 27.897985, 22.547602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016865, 27.740532, 22.599289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274916, -0.807143, -0.522438,
		0.309946, 0.439968, -0.842829,
		0.910140, -0.393635, 0.129217,
		38.289906, 27.622442, 22.638054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845200, 27.538183, 21.865271>,  <37.652809, 27.897985, 22.547602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845200, 27.538183, 21.865271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124466, 27.402107, 22.117249>,  <38.292027, 27.320461, 22.268435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124466, 27.402107, 22.117249>,  <37.845200, 27.538183, 21.865271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124466, 27.402107, 22.117249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032721, -0.863811, -0.502752,
		0.715184, 0.371619, -0.591955,
		0.698169, -0.340191, 0.629944,
		38.333916, 27.300051, 22.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353252, 27.326542, 21.478783>,  <37.845200, 27.538183, 21.865271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353252, 27.326542, 21.478783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400814, 27.143932, 21.831474>,  <38.429352, 27.034367, 22.043089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.400814, 27.143932, 21.831474>,  <38.353252, 27.326542, 21.478783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400814, 27.143932, 21.831474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157902, -0.868035, -0.470725,
		0.980269, 0.195200, -0.031130,
		0.118908, -0.456522, 0.881731,
		38.436485, 27.006975, 22.095993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882084, 27.016445, 21.391054>,  <38.353252, 27.326542, 21.478783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882084, 27.016445, 21.391054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674038, 26.826202, 21.674824>,  <38.549210, 26.712057, 21.845085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.674038, 26.826202, 21.674824>,  <38.882084, 27.016445, 21.391054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674038, 26.826202, 21.674824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147196, -0.868099, -0.474066,
		0.841319, -0.142143, 0.521515,
		-0.520112, -0.475605, 0.709425,
		38.518005, 26.683521, 21.887651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175869, 26.451702, 21.351027>,  <38.882084, 27.016445, 21.391054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175869, 26.451702, 21.351027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.856579, 26.338654, 21.563805>,  <38.665005, 26.270824, 21.691471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.856579, 26.338654, 21.563805>,  <39.175869, 26.451702, 21.351027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856579, 26.338654, 21.563805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055806, -0.844601, -0.532480,
		0.599772, -0.454723, 0.658407,
		-0.798223, -0.282623, 0.531944,
		38.617111, 26.253866, 21.723389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383892, 25.891006, 21.708384>,  <39.175869, 26.451702, 21.351027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383892, 25.891006, 21.708384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991276, 25.891060, 21.631874>,  <38.755707, 25.891092, 21.585968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991276, 25.891060, 21.631874>,  <39.383892, 25.891006, 21.708384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991276, 25.891060, 21.631874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123073, -0.765058, -0.632091,
		-0.146417, -0.643961, 0.750917,
		-0.981537, 0.000132, -0.191272,
		38.696815, 25.891100, 21.574493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.042574, 22.767700, 29.387711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.315687, 22.881962, 29.656696>,  <26.479555, 22.950520, 29.818089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.315687, 22.881962, 29.656696>,  <26.042574, 22.767700, 29.387711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315687, 22.881962, 29.656696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193765, -0.958240, 0.210311,
		0.704459, -0.013297, -0.709620,
		0.682783, 0.285655, 0.672465,
		26.520521, 22.967659, 29.858437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542110, 22.216944, 29.381929>,  <26.042574, 22.767700, 29.387711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542110, 22.216944, 29.381929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619423, 22.410049, 29.723591>,  <26.665812, 22.525913, 29.928587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619423, 22.410049, 29.723591>,  <26.542110, 22.216944, 29.381929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619423, 22.410049, 29.723591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080216, -0.859881, 0.504153,
		0.977858, -0.165961, -0.127475,
		0.193283, 0.482765, 0.854154,
		26.677408, 22.554878, 29.979837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066225, 21.847847, 29.832911>,  <26.542110, 22.216944, 29.381929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066225, 21.847847, 29.832911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865555, 22.070618, 30.097683>,  <26.745153, 22.204279, 30.256546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.865555, 22.070618, 30.097683>,  <27.066225, 21.847847, 29.832911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865555, 22.070618, 30.097683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268521, -0.827649, 0.492842,
		0.822325, 0.069504, 0.564758,
		-0.501676, 0.556925, 0.661933,
		26.715052, 22.237696, 30.296263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379736, 21.665520, 30.396856>,  <27.066225, 21.847847, 29.832911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379736, 21.665520, 30.396856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.003805, 21.786690, 30.460056>,  <26.778248, 21.859392, 30.497976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.003805, 21.786690, 30.460056>,  <27.379736, 21.665520, 30.396856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003805, 21.786690, 30.460056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206567, -0.872170, 0.443451,
		0.272136, 0.384129, 0.882262,
		-0.939826, 0.302925, 0.158001,
		26.721857, 21.877567, 30.507456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228220, 21.454138, 31.061848>,  <27.379736, 21.665520, 30.396856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228220, 21.454138, 31.061848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.871620, 21.514069, 30.890835>,  <26.657661, 21.550028, 30.788227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.871620, 21.514069, 30.890835>,  <27.228220, 21.454138, 31.061848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871620, 21.514069, 30.890835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343524, -0.838808, 0.422366,
		-0.295337, 0.523406, 0.799264,
		-0.891497, 0.149826, -0.427533,
		26.604172, 21.559017, 30.762575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732090, 21.162785, 31.528790>,  <27.228220, 21.454138, 31.061848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732090, 21.162785, 31.528790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.528757, 21.185596, 31.185081>,  <26.406757, 21.199284, 30.978857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.528757, 21.185596, 31.185081>,  <26.732090, 21.162785, 31.528790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528757, 21.185596, 31.185081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544575, -0.794252, 0.269449,
		-0.667111, 0.604906, 0.434801,
		-0.508332, 0.057029, -0.859271,
		26.376257, 21.202705, 30.927299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036924, 21.128448, 31.758327>,  <26.732090, 21.162785, 31.528790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036924, 21.128448, 31.758327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.055328, 21.028580, 31.371433>,  <26.066370, 20.968658, 31.139296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.055328, 21.028580, 31.371433>,  <26.036924, 21.128448, 31.758327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055328, 21.028580, 31.371433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456281, -0.866607, 0.201991,
		-0.888645, 0.432039, -0.153790,
		0.046008, -0.249670, -0.967237,
		26.069130, 20.953678, 31.081263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451880, 20.593699, 31.598522>,  <26.036924, 21.128448, 31.758327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451880, 20.593699, 31.598522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.694462, 20.543091, 31.284527>,  <25.840012, 20.512726, 31.096130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.694462, 20.543091, 31.284527>,  <25.451880, 20.593699, 31.598522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694462, 20.543091, 31.284527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132020, -0.989578, 0.057499,
		-0.784080, 0.068763, -0.616839,
		0.606456, -0.126519, -0.784987,
		25.876398, 20.505135, 31.049030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215939, 19.967665, 31.277138>,  <25.451880, 20.593699, 31.598522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215939, 19.967665, 31.277138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.584007, 20.037071, 31.136749>,  <25.804848, 20.078714, 31.052517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.584007, 20.037071, 31.136749>,  <25.215939, 19.967665, 31.277138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584007, 20.037071, 31.136749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253923, -0.946816, 0.197640,
		-0.298012, -0.270982, -0.915291,
		0.920169, 0.173515, -0.350971,
		25.860058, 20.089127, 31.031458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426565, 19.286840, 30.947821>,  <25.215939, 19.967665, 31.277138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426565, 19.286840, 30.947821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.764065, 19.482868, 31.035381>,  <25.966564, 19.600485, 31.087917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.764065, 19.482868, 31.035381>,  <25.426565, 19.286840, 30.947821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764065, 19.482868, 31.035381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434293, -0.863002, 0.258102,
		0.315400, -0.122707, -0.940992,
		0.843749, 0.490072, 0.218900,
		26.017189, 19.629890, 31.101051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015053, 18.907778, 30.684317>,  <25.426565, 19.286840, 30.947821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015053, 18.907778, 30.684317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.172592, 19.138866, 30.970287>,  <26.267117, 19.277519, 31.141870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.172592, 19.138866, 30.970287>,  <26.015053, 18.907778, 30.684317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172592, 19.138866, 30.970287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545127, -0.773052, 0.324387,
		0.740082, 0.261967, -0.619397,
		0.393847, 0.577722, 0.714927,
		26.290747, 19.312183, 31.184765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655733, 18.732916, 30.659002>,  <26.015053, 18.907778, 30.684317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655733, 18.732916, 30.659002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619583, 18.908039, 31.016808>,  <26.597893, 19.013113, 31.231491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.619583, 18.908039, 31.016808>,  <26.655733, 18.732916, 30.659002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619583, 18.908039, 31.016808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514042, -0.748790, 0.418419,
		0.852991, 0.497632, -0.157379,
		-0.090375, 0.437807, 0.894515,
		26.592470, 19.039381, 31.285162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265154, 18.582829, 31.024481>,  <26.655733, 18.732916, 30.659002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265154, 18.582829, 31.024481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.978821, 18.648071, 31.296062>,  <26.807020, 18.687216, 31.459011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.978821, 18.648071, 31.296062>,  <27.265154, 18.582829, 31.024481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978821, 18.648071, 31.296062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369414, -0.736662, 0.566447,
		0.592550, 0.656297, 0.467075,
		-0.715834, 0.163105, 0.678954,
		26.764071, 18.697002, 31.499748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507181, 18.700811, 31.800283>,  <27.265154, 18.582829, 31.024481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507181, 18.700811, 31.800283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.141432, 18.539795, 31.782917>,  <26.921982, 18.443186, 31.772497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.141432, 18.539795, 31.782917>,  <27.507181, 18.700811, 31.800283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141432, 18.539795, 31.782917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314776, -0.774236, 0.549067,
		-0.254638, 0.488384, 0.834650,
		-0.914372, -0.402541, -0.043418,
		26.867121, 18.419033, 31.769892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174967, 18.242523, 31.468872>,  <27.507181, 18.700811, 31.800283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174967, 18.242523, 31.468872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349470, 18.000042, 31.202881>,  <28.454172, 17.854553, 31.043285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.349470, 18.000042, 31.202881>,  <28.174967, 18.242523, 31.468872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349470, 18.000042, 31.202881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120939, 0.771808, -0.624248,
		0.891657, 0.191910, 0.410021,
		0.436257, -0.606203, -0.664979,
		28.480347, 17.818180, 31.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825258, 18.633366, 31.165779>,  <28.174967, 18.242523, 31.468872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825258, 18.633366, 31.165779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.704260, 18.351269, 30.909302>,  <28.631660, 18.182011, 30.755415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.704260, 18.351269, 30.909302>,  <28.825258, 18.633366, 31.165779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704260, 18.351269, 30.909302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121390, 0.638728, -0.759797,
		0.945390, -0.307668, -0.107602,
		-0.302494, -0.705243, -0.641195,
		28.613512, 18.139696, 30.716944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257982, 18.722538, 30.606112>,  <28.825258, 18.633366, 31.165779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257982, 18.722538, 30.606112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965305, 18.508167, 30.437630>,  <28.789700, 18.379545, 30.336540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965305, 18.508167, 30.437630>,  <29.257982, 18.722538, 30.606112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965305, 18.508167, 30.437630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002512, 0.615805, -0.787895,
		0.681635, -0.577551, -0.449231,
		-0.731688, -0.535929, -0.421205,
		28.745798, 18.347389, 30.311268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566151, 18.562366, 30.078873>,  <29.257982, 18.722538, 30.606112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566151, 18.562366, 30.078873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183071, 18.518570, 29.972420>,  <28.953224, 18.492292, 29.908548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183071, 18.518570, 29.972420>,  <29.566151, 18.562366, 30.078873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183071, 18.518570, 29.972420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137126, 0.639427, -0.756525,
		0.253004, -0.761016, -0.597364,
		-0.957698, -0.109490, -0.266133,
		28.895761, 18.485723, 29.892580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527447, 18.351757, 29.360191>,  <29.566151, 18.562366, 30.078873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527447, 18.351757, 29.360191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183918, 18.541935, 29.436481>,  <28.977800, 18.656042, 29.482256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.183918, 18.541935, 29.436481>,  <29.527447, 18.351757, 29.360191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183918, 18.541935, 29.436481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118932, 0.547193, -0.828514,
		-0.498277, -0.688863, -0.526487,
		-0.858822, 0.475445, 0.190726,
		28.926271, 18.684568, 29.493700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191994, 18.509148, 28.787292>,  <29.527447, 18.351757, 29.360191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191994, 18.509148, 28.787292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965870, 18.756950, 29.005150>,  <28.830194, 18.905632, 29.135864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965870, 18.756950, 29.005150>,  <29.191994, 18.509148, 28.787292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965870, 18.756950, 29.005150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062598, 0.626147, -0.777188,
		-0.822500, -0.473446, -0.315187,
		-0.565310, 0.619507, 0.544642,
		28.796276, 18.942802, 29.168543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592560, 18.850098, 28.241713>,  <29.191994, 18.509148, 28.787292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592560, 18.850098, 28.241713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611305, 19.083431, 28.566063>,  <28.622553, 19.223433, 28.760674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.611305, 19.083431, 28.566063>,  <28.592560, 18.850098, 28.241713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611305, 19.083431, 28.566063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016094, 0.811223, -0.584515,
		-0.998771, 0.040443, 0.028629,
		0.046865, 0.583336, 0.810878,
		28.625364, 19.258432, 28.809326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149410, 19.472042, 28.124361>,  <28.592560, 18.850098, 28.241713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149410, 19.472042, 28.124361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383648, 19.573086, 28.432457>,  <28.524191, 19.633713, 28.617315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383648, 19.573086, 28.432457>,  <28.149410, 19.472042, 28.124361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383648, 19.573086, 28.432457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226157, 0.861558, -0.454500,
		-0.778417, 0.440347, 0.447393,
		0.585593, 0.252609, 0.770240,
		28.559326, 19.648869, 28.663528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882347, 20.122665, 28.340187>,  <28.149410, 19.472042, 28.124361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882347, 20.122665, 28.340187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251425, 20.095871, 28.492054>,  <28.472872, 20.079794, 28.583174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.251425, 20.095871, 28.492054>,  <27.882347, 20.122665, 28.340187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251425, 20.095871, 28.492054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109177, 0.989877, -0.090681,
		-0.369751, 0.125122, 0.920667,
		0.922694, -0.066986, 0.379669,
		28.528233, 20.075775, 28.605955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965267, 20.697420, 28.781149>,  <27.882347, 20.122665, 28.340187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965267, 20.697420, 28.781149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.329348, 20.569931, 28.675358>,  <28.547796, 20.493437, 28.611883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.329348, 20.569931, 28.675358>,  <27.965267, 20.697420, 28.781149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329348, 20.569931, 28.675358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290619, 0.946476, -0.140440,
		0.295081, 0.050967, 0.954112,
		0.910202, -0.318724, -0.264475,
		28.602407, 20.474314, 28.596016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491529, 21.184443, 29.071817>,  <27.965267, 20.697420, 28.781149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491529, 21.184443, 29.071817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.715010, 21.010559, 28.789291>,  <28.849098, 20.906229, 28.619776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.715010, 21.010559, 28.789291>,  <28.491529, 21.184443, 29.071817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715010, 21.010559, 28.789291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275039, 0.900549, -0.336696,
		0.782438, -0.006153, 0.622698,
		0.558699, -0.434710, -0.706316,
		28.882620, 20.880146, 28.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173697, 21.476925, 29.123709>,  <28.491529, 21.184443, 29.071817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173697, 21.476925, 29.123709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.122326, 21.355530, 28.746052>,  <29.091503, 21.282694, 28.519459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.122326, 21.355530, 28.746052>,  <29.173697, 21.476925, 29.123709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122326, 21.355530, 28.746052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064231, 0.947481, -0.313297,
		0.989637, -0.100878, -0.102188,
		-0.128426, -0.303486, -0.944142,
		29.083797, 21.264484, 28.462809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867035, 21.659214, 28.710297>,  <29.173697, 21.476925, 29.123709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867035, 21.659214, 28.710297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.568842, 21.646465, 28.443993>,  <29.389927, 21.638817, 28.284210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.568842, 21.646465, 28.443993>,  <29.867035, 21.659214, 28.710297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568842, 21.646465, 28.443993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220014, 0.931102, -0.290933,
		0.629165, -0.363363, -0.687109,
		-0.745483, -0.031871, -0.665762,
		29.345198, 21.636904, 28.244265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198830, 22.036488, 28.140722>,  <29.867035, 21.659214, 28.710297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198830, 22.036488, 28.140722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.805344, 22.026985, 28.069454>,  <29.569252, 22.021284, 28.026693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.805344, 22.026985, 28.069454>,  <30.198830, 22.036488, 28.140722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805344, 22.026985, 28.069454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027022, 0.960416, -0.277257,
		0.177704, -0.277556, -0.944131,
		-0.983713, -0.023757, -0.178170,
		29.510229, 22.019857, 28.016003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874771, 21.838963, 27.744516>,  <30.198830, 22.036488, 28.140722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874771, 21.838963, 27.744516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182501, 21.920208, 27.986801>,  <31.367138, 21.968956, 28.132172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182501, 21.920208, 27.986801>,  <30.874771, 21.838963, 27.744516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182501, 21.920208, 27.986801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242515, -0.784297, 0.571020,
		0.591039, -0.586193, -0.554121,
		0.769324, 0.203113, 0.605712,
		31.413298, 21.981142, 28.168514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214523, 21.267057, 27.837385>,  <30.874771, 21.838963, 27.744516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214523, 21.267057, 27.837385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317465, 21.479851, 28.160065>,  <31.379229, 21.607527, 28.353672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317465, 21.479851, 28.160065>,  <31.214523, 21.267057, 27.837385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317465, 21.479851, 28.160065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179808, -0.793876, 0.580887,
		0.949441, -0.294543, -0.108651,
		0.257352, 0.531982, 0.806700,
		31.394670, 21.639446, 28.402075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538477, 20.753527, 28.196594>,  <31.214523, 21.267057, 27.837385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538477, 20.753527, 28.196594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506430, 21.043854, 28.469875>,  <31.487202, 21.218050, 28.633844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506430, 21.043854, 28.469875>,  <31.538477, 20.753527, 28.196594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506430, 21.043854, 28.469875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051117, -0.687498, 0.724385,
		0.995474, 0.023114, 0.092184,
		-0.080120, 0.725818, 0.683205,
		31.482393, 21.261599, 28.674837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001278, 20.674328, 28.664249>,  <31.538477, 20.753527, 28.196594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001278, 20.674328, 28.664249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750868, 20.896671, 28.883015>,  <31.600622, 21.030077, 29.014275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.750868, 20.896671, 28.883015>,  <32.001278, 20.674328, 28.664249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750868, 20.896671, 28.883015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019967, -0.712543, 0.701344,
		0.779549, 0.428137, 0.457167,
		-0.626023, 0.555861, 0.546914,
		31.563061, 21.063429, 29.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246475, 20.636086, 29.357325>,  <32.001278, 20.674328, 28.664249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246475, 20.636086, 29.357325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868288, 20.752422, 29.415989>,  <31.641376, 20.822224, 29.451187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868288, 20.752422, 29.415989>,  <32.246475, 20.636086, 29.357325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868288, 20.752422, 29.415989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064136, -0.607670, 0.791595,
		0.319351, 0.739018, 0.593184,
		-0.945464, 0.290842, 0.146662,
		31.584648, 20.839674, 29.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150661, 20.850294, 30.145136>,  <32.246475, 20.636086, 29.357325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150661, 20.850294, 30.145136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784479, 20.764191, 30.009132>,  <31.564770, 20.712528, 29.927530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.784479, 20.764191, 30.009132>,  <32.150661, 20.850294, 30.145136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784479, 20.764191, 30.009132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095180, -0.705119, 0.702671,
		-0.391002, 0.675626, 0.625017,
		-0.915455, -0.215257, -0.340009,
		31.509842, 20.699614, 29.907129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674599, 20.855709, 30.745855>,  <32.150661, 20.850294, 30.145136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674599, 20.855709, 30.745855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.525782, 20.640732, 30.443138>,  <31.436491, 20.511745, 30.261507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.525782, 20.640732, 30.443138>,  <31.674599, 20.855709, 30.745855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525782, 20.640732, 30.443138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174395, -0.760329, 0.625689,
		-0.911686, 0.364763, 0.189147,
		-0.372042, -0.537445, -0.756794,
		31.414169, 20.479498, 30.216101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305298, 21.117424, 31.416487>,  <31.674599, 20.855709, 30.745855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305298, 21.117424, 31.416487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406822, 21.259827, 31.776230>,  <31.467737, 21.345268, 31.992075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.406822, 21.259827, 31.776230>,  <31.305298, 21.117424, 31.416487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406822, 21.259827, 31.776230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059834, 0.933801, -0.352755,
		-0.965402, 0.035720, 0.258308,
		0.253809, 0.356006, 0.899356,
		31.482965, 21.366629, 32.046036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824726, 21.654177, 31.507252>,  <31.305298, 21.117424, 31.416487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824726, 21.654177, 31.507252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159452, 21.689518, 31.723373>,  <31.360289, 21.710722, 31.853046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.159452, 21.689518, 31.723373>,  <30.824726, 21.654177, 31.507252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159452, 21.689518, 31.723373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062156, 0.965180, -0.254097,
		-0.543941, 0.246216, 0.802188,
		0.836818, 0.088352, 0.540305,
		31.410498, 21.716024, 31.885466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699446, 22.275009, 31.975883>,  <30.824726, 21.654177, 31.507252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699446, 22.275009, 31.975883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091608, 22.214996, 31.924816>,  <31.326904, 22.178989, 31.894176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.091608, 22.214996, 31.924816>,  <30.699446, 22.275009, 31.975883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091608, 22.214996, 31.924816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095652, 0.929082, -0.357291,
		0.172219, 0.338078, 0.925226,
		0.980404, -0.150032, -0.127668,
		31.385729, 22.169987, 31.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011189, 22.911547, 32.122032>,  <30.699446, 22.275009, 31.975883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011189, 22.911547, 32.122032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289896, 22.714676, 31.913311>,  <31.457121, 22.596554, 31.788078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289896, 22.714676, 31.913311>,  <31.011189, 22.911547, 32.122032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289896, 22.714676, 31.913311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264538, 0.852495, -0.450856,
		0.666734, 0.176105, 0.724191,
		0.696767, -0.492177, -0.521801,
		31.498926, 22.567022, 31.756771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643869, 23.208096, 32.247879>,  <31.011189, 22.911547, 32.122032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643869, 23.208096, 32.247879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692545, 23.008991, 31.904385>,  <31.721750, 22.889528, 31.698288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.692545, 23.008991, 31.904385>,  <31.643869, 23.208096, 32.247879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692545, 23.008991, 31.904385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337291, 0.834418, -0.435867,
		0.933502, -0.236604, 0.269429,
		0.121689, -0.497759, -0.858736,
		31.729052, 22.859663, 31.646763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210999, 23.555897, 31.969280>,  <31.643869, 23.208096, 32.247879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210999, 23.555897, 31.969280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089485, 23.358223, 31.643459>,  <32.016575, 23.239618, 31.447968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.089485, 23.358223, 31.643459>,  <32.210999, 23.555897, 31.969280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089485, 23.358223, 31.643459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318519, 0.753082, -0.575685,
		0.897919, -0.434336, -0.071368,
		-0.303787, -0.494187, -0.814551,
		31.998348, 23.209967, 31.399094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808567, 23.420181, 31.494555>,  <32.210999, 23.555897, 31.969280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808567, 23.420181, 31.494555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471779, 23.405350, 31.279255>,  <32.269707, 23.396450, 31.150074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471779, 23.405350, 31.279255>,  <32.808567, 23.420181, 31.494555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471779, 23.405350, 31.279255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328896, 0.755557, -0.566534,
		0.427686, -0.654033, -0.623960,
		-0.841969, -0.037080, -0.538250,
		32.219189, 23.394226, 31.117781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.310122, 20.304375, 34.621613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.085760, 20.283985, 34.291088>,  <26.951143, 20.271751, 34.092773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.085760, 20.283985, 34.291088>,  <27.310122, 20.304375, 34.621613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085760, 20.283985, 34.291088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331550, 0.900736, -0.280624,
		0.758591, -0.431366, -0.488327,
		-0.560905, -0.050974, -0.826309,
		26.917488, 20.268692, 34.043194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671289, 20.563080, 34.029625>,  <27.310122, 20.304375, 34.621613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671289, 20.563080, 34.029625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.297775, 20.592064, 33.889458>,  <27.073668, 20.609453, 33.805355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.297775, 20.592064, 33.889458>,  <27.671289, 20.563080, 34.029625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297775, 20.592064, 33.889458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232977, 0.866400, -0.441671,
		0.271603, -0.494066, -0.825912,
		-0.933785, 0.072459, -0.350422,
		27.017639, 20.613802, 33.784332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719517, 20.897669, 33.358887>,  <27.671289, 20.563080, 34.029625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719517, 20.897669, 33.358887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.325964, 20.940666, 33.416042>,  <27.089832, 20.966465, 33.450336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.325964, 20.940666, 33.416042>,  <27.719517, 20.897669, 33.358887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325964, 20.940666, 33.416042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075055, 0.973589, -0.215620,
		-0.162294, -0.201421, -0.965966,
		-0.983884, 0.107494, 0.142890,
		27.030798, 20.972914, 33.458908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476645, 21.270178, 32.754429>,  <27.719517, 20.897669, 33.358887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476645, 21.270178, 32.754429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.187351, 21.296852, 33.029381>,  <27.013775, 21.312857, 33.194351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.187351, 21.296852, 33.029381>,  <27.476645, 21.270178, 32.754429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187351, 21.296852, 33.029381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016082, 0.993431, -0.113297,
		-0.690415, -0.092995, -0.717411,
		-0.723235, 0.066685, 0.687375,
		26.970381, 21.316858, 33.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873518, 21.523523, 32.387455>,  <27.476645, 21.270178, 32.754429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873518, 21.523523, 32.387455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.853037, 21.630890, 32.772232>,  <26.840748, 21.695311, 33.003098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.853037, 21.630890, 32.772232>,  <26.873518, 21.523523, 32.387455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853037, 21.630890, 32.772232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103237, 0.956622, -0.272428,
		-0.993338, -0.113257, -0.021272,
		-0.051204, 0.268417, 0.961941,
		26.837675, 21.711414, 33.060814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322941, 21.977781, 32.425915>,  <26.873518, 21.523523, 32.387455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322941, 21.977781, 32.425915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.499611, 22.067413, 32.773411>,  <26.605614, 22.121193, 32.981907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.499611, 22.067413, 32.773411>,  <26.322941, 21.977781, 32.425915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499611, 22.067413, 32.773411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230514, 0.964144, -0.131494,
		-0.867056, -0.142179, 0.477493,
		0.441676, 0.224081, 0.868740,
		26.632114, 22.134638, 33.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899487, 22.499973, 32.739658>,  <26.322941, 21.977781, 32.425915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899487, 22.499973, 32.739658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.244781, 22.546337, 32.936184>,  <26.451958, 22.574156, 33.054100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.244781, 22.546337, 32.936184>,  <25.899487, 22.499973, 32.739658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244781, 22.546337, 32.936184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040319, 0.986003, -0.161777,
		-0.503187, 0.119843, 0.855828,
		0.863237, 0.115910, 0.491312,
		26.503752, 22.581110, 33.083576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826906, 23.023535, 33.123306>,  <25.899487, 22.499973, 32.739658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826906, 23.023535, 33.123306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.225361, 23.008652, 33.091496>,  <26.464434, 22.999722, 33.072407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.225361, 23.008652, 33.091496>,  <25.826906, 23.023535, 33.123306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225361, 23.008652, 33.091496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024700, 0.987944, -0.152826,
		0.084256, 0.150271, 0.985048,
		0.996138, -0.037207, -0.079528,
		26.524202, 22.997490, 33.067638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960571, 23.617083, 33.379879>,  <25.826906, 23.023535, 33.123306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960571, 23.617083, 33.379879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.321253, 23.540455, 33.224838>,  <26.537661, 23.494478, 33.131813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.321253, 23.540455, 33.224838>,  <25.960571, 23.617083, 33.379879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321253, 23.540455, 33.224838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191520, 0.980707, -0.039167,
		0.387626, -0.038916, 0.920995,
		0.901702, -0.191571, -0.387601,
		26.591763, 23.482983, 33.108559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505081, 23.980747, 33.685867>,  <25.960571, 23.617083, 33.379879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505081, 23.980747, 33.685867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.640598, 23.883789, 33.322227>,  <26.721909, 23.825613, 33.104042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.640598, 23.883789, 33.322227>,  <26.505081, 23.980747, 33.685867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640598, 23.883789, 33.322227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257747, 0.953190, -0.158099,
		0.904868, -0.180755, 0.385410,
		0.338792, -0.242397, -0.909101,
		26.742235, 23.811069, 33.049496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181728, 24.264681, 33.577286>,  <26.505081, 23.980747, 33.685867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181728, 24.264681, 33.577286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.091932, 24.230259, 33.189018>,  <27.038055, 24.209606, 32.956059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.091932, 24.230259, 33.189018>,  <27.181728, 24.264681, 33.577286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091932, 24.230259, 33.189018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228550, 0.963660, -0.138293,
		0.947296, -0.252892, -0.196663,
		-0.224490, -0.086057, -0.970669,
		27.024586, 24.204441, 32.897816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753931, 24.500069, 33.232025>,  <27.181728, 24.264681, 33.577286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753931, 24.500069, 33.232025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454660, 24.526215, 32.967918>,  <27.275099, 24.541903, 32.809452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454660, 24.526215, 32.967918>,  <27.753931, 24.500069, 33.232025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454660, 24.526215, 32.967918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306162, 0.916870, -0.256153,
		0.588639, -0.393798, -0.705994,
		-0.748177, 0.065367, -0.660271,
		27.230207, 24.545824, 32.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382072, 24.143929, 33.122993>,  <27.753931, 24.500069, 33.232025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382072, 24.143929, 33.122993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777508, 24.186455, 33.165688>,  <29.014769, 24.211971, 33.191303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.777508, 24.186455, 33.165688>,  <28.382072, 24.143929, 33.122993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777508, 24.186455, 33.165688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049719, -0.899042, 0.435031,
		0.142209, -0.424759, -0.894067,
		0.988587, 0.106317, 0.106734,
		29.074083, 24.218349, 33.197708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655420, 23.571840, 32.981476>,  <28.382072, 24.143929, 33.122993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655420, 23.571840, 32.981476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.957352, 23.738514, 33.184101>,  <29.138510, 23.838518, 33.305676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.957352, 23.738514, 33.184101>,  <28.655420, 23.571840, 32.981476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957352, 23.738514, 33.184101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073359, -0.821079, 0.566081,
		0.651807, -0.390133, -0.650342,
		0.754829, 0.416683, 0.506565,
		29.183800, 23.863520, 33.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221724, 23.152933, 32.896667>,  <28.655420, 23.571840, 32.981476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221724, 23.152933, 32.896667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.276819, 23.338863, 33.246517>,  <29.309877, 23.450422, 33.456429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.276819, 23.338863, 33.246517>,  <29.221724, 23.152933, 32.896667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276819, 23.338863, 33.246517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084955, -0.885330, 0.457136,
		0.986819, 0.011338, -0.161433,
		0.137739, 0.464825, 0.874623,
		29.318140, 23.478312, 33.508904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779448, 22.752792, 33.175877>,  <29.221724, 23.152933, 32.896667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779448, 22.752792, 33.175877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640186, 22.968132, 33.482853>,  <29.556629, 23.097336, 33.667038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.640186, 22.968132, 33.482853>,  <29.779448, 22.752792, 33.175877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640186, 22.968132, 33.482853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157872, -0.773298, 0.614073,
		0.924049, 0.334949, 0.184235,
		-0.348152, 0.538348, 0.767445,
		29.535740, 23.129637, 33.713085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280733, 22.648626, 33.709106>,  <29.779448, 22.752792, 33.175877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280733, 22.648626, 33.709106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.936855, 22.763687, 33.877956>,  <29.730530, 22.832724, 33.979267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.936855, 22.763687, 33.877956>,  <30.280733, 22.648626, 33.709106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936855, 22.763687, 33.877956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049770, -0.775273, 0.629663,
		0.508382, 0.562325, 0.652180,
		-0.859692, 0.287650, 0.422121,
		29.678947, 22.849981, 34.004593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501574, 22.578733, 34.428406>,  <30.280733, 22.648626, 33.709106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501574, 22.578733, 34.428406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.103241, 22.583481, 34.392231>,  <29.864241, 22.586330, 34.370525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.103241, 22.583481, 34.392231>,  <30.501574, 22.578733, 34.428406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103241, 22.583481, 34.392231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074970, -0.671213, 0.737463,
		-0.051946, 0.741169, 0.669306,
		-0.995832, 0.011870, -0.090433,
		29.804491, 22.587042, 34.365101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279989, 22.500681, 35.208279>,  <30.501574, 22.578733, 34.428406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279989, 22.500681, 35.208279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.967052, 22.396927, 34.981773>,  <29.779289, 22.334675, 34.845871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.967052, 22.396927, 34.981773>,  <30.279989, 22.500681, 35.208279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967052, 22.396927, 34.981773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134001, -0.817772, 0.559726,
		-0.608261, 0.513779, 0.605021,
		-0.782344, -0.259386, -0.566265,
		29.732349, 22.319111, 34.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812708, 22.276312, 35.647194>,  <30.279989, 22.500681, 35.208279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812708, 22.276312, 35.647194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694046, 22.120895, 35.298244>,  <29.622849, 22.027645, 35.088875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.694046, 22.120895, 35.298244>,  <29.812708, 22.276312, 35.647194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694046, 22.120895, 35.298244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171007, -0.877116, 0.448804,
		-0.939549, 0.282322, 0.193758,
		-0.296656, -0.388539, -0.872372,
		29.605049, 22.004333, 35.036533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165415, 21.897718, 35.767452>,  <29.812708, 22.276312, 35.647194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165415, 21.897718, 35.767452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.328093, 21.744324, 35.435780>,  <29.425699, 21.652287, 35.236778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.328093, 21.744324, 35.435780>,  <29.165415, 21.897718, 35.767452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328093, 21.744324, 35.435780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014577, -0.910240, 0.413826,
		-0.913453, -0.156209, -0.375770,
		0.406683, -0.383488, -0.829184,
		29.450102, 21.629278, 35.187027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753044, 21.427710, 35.628765>,  <29.165415, 21.897718, 35.767452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753044, 21.427710, 35.628765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.087194, 21.349052, 35.423443>,  <29.287685, 21.301859, 35.300251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.087194, 21.349052, 35.423443>,  <28.753044, 21.427710, 35.628765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087194, 21.349052, 35.423443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068851, -0.889035, 0.452632,
		-0.545351, -0.413459, -0.729139,
		0.835375, -0.196641, -0.513304,
		29.337807, 21.290060, 35.269451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650585, 20.729435, 35.519638>,  <28.753044, 21.427710, 35.628765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650585, 20.729435, 35.519638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.027489, 20.803524, 35.408035>,  <29.253630, 20.847977, 35.341072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.027489, 20.803524, 35.408035>,  <28.650585, 20.729435, 35.519638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027489, 20.803524, 35.408035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271364, -0.910504, 0.312000,
		-0.196248, -0.369697, -0.908191,
		0.942257, 0.185221, -0.279007,
		29.310165, 20.859091, 35.324333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834044, 20.102249, 35.039413>,  <28.650585, 20.729435, 35.519638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834044, 20.102249, 35.039413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147657, 20.271748, 35.220844>,  <29.335825, 20.373447, 35.329704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147657, 20.271748, 35.220844>,  <28.834044, 20.102249, 35.039413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147657, 20.271748, 35.220844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274654, -0.892131, 0.358704,
		0.556650, -0.156659, -0.815843,
		0.784032, 0.423747, 0.453577,
		29.382868, 20.398872, 35.356918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345482, 19.646765, 34.950886>,  <28.834044, 20.102249, 35.039413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345482, 19.646765, 34.950886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.510878, 19.861393, 35.245129>,  <29.610115, 19.990170, 35.421673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.510878, 19.861393, 35.245129>,  <29.345482, 19.646765, 34.950886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510878, 19.861393, 35.245129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390755, -0.834300, 0.388914,
		0.822398, 0.126631, -0.554641,
		0.413489, 0.536570, 0.735608,
		29.634924, 20.022364, 35.465813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107571, 19.622793, 34.978905>,  <29.345482, 19.646765, 34.950886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107571, 19.622793, 34.978905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.999302, 19.706783, 35.354702>,  <29.934340, 19.757177, 35.580181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.999302, 19.706783, 35.354702>,  <30.107571, 19.622793, 34.978905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999302, 19.706783, 35.354702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580186, -0.743185, 0.333257,
		0.768193, 0.635284, 0.079335,
		-0.270673, 0.209977, 0.939492,
		29.918100, 19.769775, 35.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725016, 20.009575, 34.872471>,  <30.107571, 19.622793, 34.978905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725016, 20.009575, 34.872471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986542, 19.809174, 34.645660>,  <31.143457, 19.688932, 34.509575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.986542, 19.809174, 34.645660>,  <30.725016, 20.009575, 34.872471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986542, 19.809174, 34.645660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085480, 0.695684, -0.713244,
		0.751811, 0.514799, 0.412022,
		0.653815, -0.501005, -0.567028,
		31.182686, 19.658873, 34.475552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229462, 20.442009, 34.605740>,  <30.725016, 20.009575, 34.872471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229462, 20.442009, 34.605740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238987, 20.136555, 34.347656>,  <31.244701, 19.953283, 34.192806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238987, 20.136555, 34.347656>,  <31.229462, 20.442009, 34.605740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238987, 20.136555, 34.347656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006021, 0.645491, -0.763745,
		0.999698, 0.014301, 0.019969,
		0.023812, -0.763634, -0.645210,
		31.246130, 19.907465, 34.154095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743994, 20.720339, 34.078411>,  <31.229462, 20.442009, 34.605740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743994, 20.720339, 34.078411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582094, 20.427094, 33.859787>,  <31.484955, 20.251146, 33.728615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582094, 20.427094, 33.859787>,  <31.743994, 20.720339, 34.078411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582094, 20.427094, 33.859787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070195, 0.571031, -0.817922,
		0.911731, -0.369416, -0.179662,
		-0.404746, -0.733113, -0.546558,
		31.460670, 20.207159, 33.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227039, 20.591639, 33.509628>,  <31.743994, 20.720339, 34.078411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227039, 20.591639, 33.509628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853289, 20.483025, 33.417355>,  <31.629040, 20.417856, 33.361992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.853289, 20.483025, 33.417355>,  <32.227039, 20.591639, 33.509628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853289, 20.483025, 33.417355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094216, 0.436108, -0.894949,
		0.343612, -0.857951, -0.381905,
		-0.934374, -0.271534, -0.230684,
		31.572977, 20.401564, 33.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220016, 20.162889, 32.908119>,  <32.227039, 20.591639, 33.509628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220016, 20.162889, 32.908119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857000, 20.330551, 32.918541>,  <31.639191, 20.431149, 32.924793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857000, 20.330551, 32.918541>,  <32.220016, 20.162889, 32.908119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857000, 20.330551, 32.918541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168974, 0.421243, -0.891068,
		-0.384468, -0.804279, -0.453122,
		-0.907542, 0.419153, 0.026052,
		31.584738, 20.456297, 32.926357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023197, 20.361994, 32.169033>,  <32.220016, 20.162889, 32.908119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023197, 20.361994, 32.169033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741102, 20.550797, 32.380638>,  <31.571846, 20.664078, 32.507599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741102, 20.550797, 32.380638>,  <32.023197, 20.361994, 32.169033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741102, 20.550797, 32.380638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018077, 0.733951, -0.678962,
		-0.708742, -0.488392, -0.509076,
		-0.705236, 0.472006, 0.529010,
		31.529531, 20.692398, 32.539341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459871, 20.500057, 31.706493>,  <32.023197, 20.361994, 32.169033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459871, 20.500057, 31.706493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458178, 20.757389, 32.012726>,  <31.457161, 20.911787, 32.196465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458178, 20.757389, 32.012726>,  <31.459871, 20.500057, 31.706493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458178, 20.757389, 32.012726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079488, 0.762947, -0.641556,
		-0.996827, -0.063572, 0.047905,
		-0.004237, 0.643328, 0.765579,
		31.456907, 20.950388, 32.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069580, 20.585115, 31.017933>,  <31.459871, 20.500057, 31.706493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069580, 20.585115, 31.017933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144556, 20.363731, 30.693329>,  <31.189541, 20.230902, 30.498566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144556, 20.363731, 30.693329>,  <31.069580, 20.585115, 31.017933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144556, 20.363731, 30.693329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138505, -0.832791, 0.535980,
		-0.972462, 0.011934, -0.232755,
		0.187440, -0.553458, -0.811511,
		31.200788, 20.197695, 30.449875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567852, 20.060719, 31.060812>,  <31.069580, 20.585115, 31.017933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567852, 20.060719, 31.060812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839729, 19.931366, 30.797466>,  <31.002855, 19.853754, 30.639458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839729, 19.931366, 30.797466>,  <30.567852, 20.060719, 31.060812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839729, 19.931366, 30.797466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145785, -0.820103, 0.553333,
		-0.718865, -0.472075, -0.510273,
		0.679691, -0.323381, -0.658365,
		31.043636, 19.834352, 30.599957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343180, 19.350790, 30.780989>,  <30.567852, 20.060719, 31.060812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343180, 19.350790, 30.780989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738953, 19.401546, 30.752918>,  <30.976416, 19.432001, 30.736076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738953, 19.401546, 30.752918>,  <30.343180, 19.350790, 30.780989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738953, 19.401546, 30.752918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144785, -0.891062, 0.430169,
		-0.007946, -0.435783, -0.900017,
		0.989431, 0.126891, -0.070176,
		31.035782, 19.439613, 30.731865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505634, 18.667297, 30.536282>,  <30.343180, 19.350790, 30.780989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505634, 18.667297, 30.536282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859877, 18.824024, 30.636028>,  <31.072422, 18.918060, 30.695875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.859877, 18.824024, 30.636028>,  <30.505634, 18.667297, 30.536282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859877, 18.824024, 30.636028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236227, -0.842286, 0.484511,
		0.399877, -0.370179, -0.838490,
		0.885604, 0.391819, 0.249365,
		31.125559, 18.941570, 30.710838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958908, 18.125298, 30.411255>,  <30.505634, 18.667297, 30.536282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958908, 18.125298, 30.411255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129324, 18.362663, 30.684414>,  <31.231573, 18.505083, 30.848309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.129324, 18.362663, 30.684414>,  <30.958908, 18.125298, 30.411255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129324, 18.362663, 30.684414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355020, -0.803942, 0.477115,
		0.832137, 0.039173, -0.553185,
		0.426039, 0.593417, 0.682897,
		31.257135, 18.540688, 30.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560919, 17.788708, 30.546301>,  <30.958908, 18.125298, 30.411255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560919, 17.788708, 30.546301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.517342, 18.036377, 30.857365>,  <31.491196, 18.184978, 31.044003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.517342, 18.036377, 30.857365>,  <31.560919, 17.788708, 30.546301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517342, 18.036377, 30.857365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133295, -0.766152, 0.628683,
		0.985070, 0.172150, 0.000935,
		-0.108944, 0.619173, 0.777661,
		31.484659, 18.222128, 31.090662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193012, 17.623144, 31.040298>,  <31.560919, 17.788708, 30.546301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193012, 17.623144, 31.040298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.905127, 17.805523, 31.249725>,  <31.732395, 17.914949, 31.375381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.905127, 17.805523, 31.249725>,  <32.193012, 17.623144, 31.040298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905127, 17.805523, 31.249725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022002, -0.738767, 0.673602,
		0.693919, 0.496321, 0.521671,
		-0.719716, 0.455948, 0.523565,
		31.689211, 17.942307, 31.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401051, 17.513050, 31.797846>,  <32.193012, 17.623144, 31.040298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401051, 17.513050, 31.797846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.017021, 17.624138, 31.811302>,  <31.786604, 17.690790, 31.819376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.017021, 17.624138, 31.811302>,  <32.401051, 17.513050, 31.797846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017021, 17.624138, 31.811302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215432, -0.810701, 0.544382,
		0.178459, 0.515399, 0.838162,
		-0.960074, 0.277717, 0.033643,
		31.728998, 17.707453, 31.821396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240551, 17.375076, 32.451218>,  <32.401051, 17.513050, 31.797846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240551, 17.375076, 32.451218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909700, 17.399326, 32.227722>,  <31.711189, 17.413876, 32.093624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.909700, 17.399326, 32.227722>,  <32.240551, 17.375076, 32.451218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909700, 17.399326, 32.227722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290535, -0.897142, 0.332754,
		-0.481094, 0.437562, 0.759663,
		-0.827126, 0.060623, -0.558737,
		31.661562, 17.417513, 32.060101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.324938, 31.560892, 23.909777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046827, 31.354984, 23.709137>,  <30.879961, 31.231440, 23.588753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046827, 31.354984, 23.709137>,  <31.324938, 31.560892, 23.909777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046827, 31.354984, 23.709137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191542, -0.805353, 0.560997,
		-0.692749, 0.293970, 0.658543,
		-0.695277, -0.514770, -0.501600,
		30.838243, 31.200554, 23.558657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184530, 31.073534, 24.356586>,  <31.324938, 31.560892, 23.909777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184530, 31.073534, 24.356586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984140, 30.925095, 24.043842>,  <30.863907, 30.836031, 23.856195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984140, 30.925095, 24.043842>,  <31.184530, 31.073534, 24.356586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984140, 30.925095, 24.043842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082467, -0.919763, 0.383712,
		-0.861524, 0.127752, 0.491382,
		-0.500975, -0.371100, -0.781863,
		30.833847, 30.813765, 23.809284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704237, 30.714390, 24.636360>,  <31.184530, 31.073534, 24.356586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704237, 30.714390, 24.636360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809139, 30.578667, 24.275009>,  <30.872080, 30.497232, 24.058199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809139, 30.578667, 24.275009>,  <30.704237, 30.714390, 24.636360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809139, 30.578667, 24.275009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199278, -0.896924, 0.394735,
		-0.944199, -0.283544, -0.167605,
		0.262254, -0.339309, -0.903379,
		30.887815, 30.476873, 24.003996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370079, 30.035643, 24.599443>,  <30.704237, 30.714390, 24.636360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370079, 30.035643, 24.599443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673403, 30.045979, 24.338890>,  <30.855396, 30.052179, 24.182558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673403, 30.045979, 24.338890>,  <30.370079, 30.035643, 24.599443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673403, 30.045979, 24.338890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242673, -0.938590, 0.245275,
		-0.605045, -0.344067, -0.718010,
		0.758308, 0.025839, -0.651385,
		30.900894, 30.053730, 24.143475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427259, 29.340538, 24.411722>,  <30.370079, 30.035643, 24.599443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427259, 29.340538, 24.411722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768641, 29.480068, 24.256832>,  <30.973469, 29.563786, 24.163898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768641, 29.480068, 24.256832>,  <30.427259, 29.340538, 24.411722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768641, 29.480068, 24.256832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453578, -0.863067, 0.222221,
		-0.256684, -0.365291, -0.894805,
		0.853452, 0.348823, -0.387223,
		31.024675, 29.584715, 24.140665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762367, 28.874443, 23.845686>,  <30.427259, 29.340538, 24.411722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762367, 28.874443, 23.845686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048674, 29.083862, 24.030544>,  <31.220457, 29.209515, 24.141459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048674, 29.083862, 24.030544>,  <30.762367, 28.874443, 23.845686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048674, 29.083862, 24.030544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407089, -0.850515, 0.333021,
		0.567415, -0.050230, -0.821899,
		0.715764, 0.523547, 0.462146,
		31.263403, 29.240927, 24.169188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275620, 28.454258, 23.902052>,  <30.762367, 28.874443, 23.845686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275620, 28.454258, 23.902052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405954, 28.719501, 24.171604>,  <31.484156, 28.878647, 24.333336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405954, 28.719501, 24.171604>,  <31.275620, 28.454258, 23.902052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405954, 28.719501, 24.171604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517892, -0.721516, 0.459568,
		0.790960, 0.199252, -0.578517,
		0.325839, 0.663109, 0.673881,
		31.503706, 28.918434, 24.373768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998508, 28.321636, 23.890724>,  <31.275620, 28.454258, 23.902052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998508, 28.321636, 23.890724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935804, 28.510635, 24.237637>,  <31.898182, 28.624035, 24.445784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935804, 28.510635, 24.237637>,  <31.998508, 28.321636, 23.890724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935804, 28.510635, 24.237637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458218, -0.743110, 0.487672,
		0.874908, 0.473849, -0.100018,
		-0.156758, 0.472498, 0.867279,
		31.888777, 28.652386, 24.497820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580868, 28.242012, 24.232508>,  <31.998508, 28.321636, 23.890724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580868, 28.242012, 24.232508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302170, 28.310329, 24.511185>,  <32.134953, 28.351320, 24.678391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302170, 28.310329, 24.511185>,  <32.580868, 28.242012, 24.232508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302170, 28.310329, 24.511185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415185, -0.695997, 0.585841,
		0.584952, 0.697437, 0.414021,
		-0.696744, 0.170793, 0.696690,
		32.093147, 28.361567, 24.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965191, 28.259874, 24.909950>,  <32.580868, 28.242012, 24.232508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965191, 28.259874, 24.909950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579414, 28.173397, 24.970764>,  <32.347950, 28.121510, 25.007252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579414, 28.173397, 24.970764>,  <32.965191, 28.259874, 24.909950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579414, 28.173397, 24.970764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260574, -0.681525, 0.683832,
		-0.044226, 0.699131, 0.713624,
		-0.964440, -0.216195, 0.152034,
		32.290081, 28.108540, 25.016375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947472, 28.243885, 25.615946>,  <32.965191, 28.259874, 24.909950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947472, 28.243885, 25.615946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635624, 28.036316, 25.475712>,  <32.448517, 27.911774, 25.391571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635624, 28.036316, 25.475712>,  <32.947472, 28.243885, 25.615946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635624, 28.036316, 25.475712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153037, -0.700706, 0.696843,
		-0.607267, 0.489620, 0.625699,
		-0.779620, -0.518925, -0.350585,
		32.401737, 27.880638, 25.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523476, 28.040051, 26.223015>,  <32.947472, 28.243885, 25.615946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523476, 28.040051, 26.223015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428337, 27.782127, 25.932457>,  <32.371254, 27.627373, 25.758121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428337, 27.782127, 25.932457>,  <32.523476, 28.040051, 26.223015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428337, 27.782127, 25.932457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141276, -0.762870, 0.630928,
		-0.960973, 0.047443, 0.272544,
		-0.237849, -0.644809, -0.726395,
		32.356983, 27.588684, 25.714539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575859, 28.097490, 26.947456>,  <32.523476, 28.040051, 26.223015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575859, 28.097490, 26.947456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828556, 28.138184, 27.254845>,  <32.980175, 28.162600, 27.439278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828556, 28.138184, 27.254845>,  <32.575859, 28.097490, 26.947456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828556, 28.138184, 27.254845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213796, 0.930033, -0.298881,
		-0.745109, 0.353113, 0.565795,
		0.631747, 0.101734, 0.768470,
		33.018082, 28.168703, 27.485386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486298, 28.723959, 27.250500>,  <32.575859, 28.097490, 26.947456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486298, 28.723959, 27.250500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855492, 28.626514, 27.369667>,  <33.077007, 28.568048, 27.441168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855492, 28.626514, 27.369667>,  <32.486298, 28.723959, 27.250500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855492, 28.626514, 27.369667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329175, 0.900790, -0.283232,
		-0.199363, 0.359486, 0.911605,
		0.922983, -0.243612, 0.297918,
		33.132385, 28.553431, 27.459044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627956, 29.260738, 27.681499>,  <32.486298, 28.723959, 27.250500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627956, 29.260738, 27.681499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995579, 29.124565, 27.602058>,  <33.216152, 29.042862, 27.554394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995579, 29.124565, 27.602058>,  <32.627956, 29.260738, 27.681499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995579, 29.124565, 27.602058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335756, 0.940171, -0.057841,
		0.206413, -0.013524, 0.978371,
		0.919055, -0.340433, -0.198605,
		33.271294, 29.022436, 27.542477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057781, 29.585106, 28.089434>,  <32.627956, 29.260738, 27.681499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057781, 29.585106, 28.089434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277863, 29.461021, 27.779324>,  <33.409912, 29.386570, 27.593258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277863, 29.461021, 27.779324>,  <33.057781, 29.585106, 28.089434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277863, 29.461021, 27.779324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376334, 0.920917, -0.101408,
		0.745421, -0.235967, 0.623432,
		0.550201, -0.310211, -0.775273,
		33.442924, 29.367958, 27.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672779, 29.926954, 28.263819>,  <33.057781, 29.585106, 28.089434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672779, 29.926954, 28.263819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703331, 29.834087, 27.875950>,  <33.721664, 29.778368, 27.643229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703331, 29.834087, 27.875950>,  <33.672779, 29.926954, 28.263819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703331, 29.834087, 27.875950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290765, 0.935430, -0.201064,
		0.953741, -0.266588, 0.138958,
		0.076384, -0.232167, -0.969672,
		33.726246, 29.764437, 27.585049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283066, 30.263468, 27.996387>,  <33.672779, 29.926954, 28.263819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283066, 30.263468, 27.996387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081776, 30.197567, 27.657066>,  <33.961002, 30.158028, 27.453474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081776, 30.197567, 27.657066>,  <34.283066, 30.263468, 27.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081776, 30.197567, 27.657066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199867, 0.932851, -0.299736,
		0.840723, -0.320384, -0.436509,
		-0.503229, -0.164751, -0.848303,
		33.930809, 30.148142, 27.402575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654503, 30.651930, 27.489925>,  <34.283066, 30.263468, 27.996387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654503, 30.651930, 27.489925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301567, 30.585773, 27.313690>,  <34.089806, 30.546080, 27.207949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301567, 30.585773, 27.313690>,  <34.654503, 30.651930, 27.489925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301567, 30.585773, 27.313690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029198, 0.915166, -0.402018,
		0.469702, -0.367582, -0.802660,
		-0.882342, -0.165393, -0.440589,
		34.036865, 30.536156, 27.181513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746895, 30.791761, 26.742998>,  <34.654503, 30.651930, 27.489925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746895, 30.791761, 26.742998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355518, 30.834270, 26.813828>,  <34.120693, 30.859776, 26.856325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355518, 30.834270, 26.813828>,  <34.746895, 30.791761, 26.742998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355518, 30.834270, 26.813828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025242, 0.789462, -0.613280,
		-0.204967, -0.604529, -0.769762,
		-0.978444, 0.106272, 0.177073,
		34.061985, 30.866152, 26.866949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533852, 31.031475, 26.136745>,  <34.746895, 30.791761, 26.742998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533852, 31.031475, 26.136745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220402, 31.100338, 26.375507>,  <34.032333, 31.141655, 26.518764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220402, 31.100338, 26.375507>,  <34.533852, 31.031475, 26.136745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220402, 31.100338, 26.375507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248593, 0.793656, -0.555259,
		-0.569326, -0.583501, -0.579133,
		-0.783626, 0.172155, 0.596903,
		33.985313, 31.151985, 26.554579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013992, 31.212818, 25.675823>,  <34.533852, 31.031475, 26.136745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013992, 31.212818, 25.675823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876232, 31.391613, 26.006058>,  <33.793575, 31.498890, 26.204199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876232, 31.391613, 26.006058>,  <34.013992, 31.212818, 25.675823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876232, 31.391613, 26.006058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171913, 0.834488, -0.523522,
		-0.922949, -0.322230, -0.210554,
		-0.344399, 0.446988, 0.825585,
		33.772911, 31.525709, 26.253733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370464, 31.410185, 25.429718>,  <34.013992, 31.212818, 25.675823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370464, 31.410185, 25.429718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388229, 31.613884, 25.773506>,  <33.398888, 31.736103, 25.979780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388229, 31.613884, 25.773506>,  <33.370464, 31.410185, 25.429718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388229, 31.613884, 25.773506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490156, 0.760760, -0.425431,
		-0.870503, -0.402380, 0.283400,
		0.044415, 0.509249, 0.859472,
		33.401554, 31.766659, 26.031347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706924, 31.750505, 25.485624>,  <33.370464, 31.410185, 25.429718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706924, 31.750505, 25.485624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932446, 31.952625, 25.746944>,  <33.067757, 32.073898, 25.903736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932446, 31.952625, 25.746944>,  <32.706924, 31.750505, 25.485624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932446, 31.952625, 25.746944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366438, 0.861930, -0.350428,
		-0.740169, -0.041822, 0.671119,
		0.563802, 0.505299, 0.653299,
		33.101585, 32.104214, 25.942934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274734, 32.194523, 25.916676>,  <32.706924, 31.750505, 25.485624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274734, 32.194523, 25.916676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637474, 32.361816, 25.937454>,  <32.855118, 32.462193, 25.949921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637474, 32.361816, 25.937454>,  <32.274734, 32.194523, 25.916676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637474, 32.361816, 25.937454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379258, 0.863604, -0.332191,
		-0.183794, 0.281548, 0.941780,
		0.906853, 0.418233, 0.051946,
		32.909531, 32.487286, 25.953037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215279, 32.904987, 26.126585>,  <32.274734, 32.194523, 25.916676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215279, 32.904987, 26.126585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560478, 32.906651, 25.924511>,  <32.767597, 32.907646, 25.803267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560478, 32.906651, 25.924511>,  <32.215279, 32.904987, 26.126585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560478, 32.906651, 25.924511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335506, 0.752327, -0.566956,
		0.377710, 0.658776, 0.650653,
		0.863001, 0.004153, -0.505185,
		32.819378, 32.907898, 25.772955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639807, 32.329273, 26.249147>,  <32.215279, 32.904987, 26.126585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639807, 32.329273, 26.249147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416826, 32.619370, 26.410778>,  <31.283037, 32.793427, 26.507755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416826, 32.619370, 26.410778>,  <31.639807, 32.329273, 26.249147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416826, 32.619370, 26.410778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168407, -0.377816, 0.910436,
		0.812948, 0.575575, 0.088480,
		-0.557454, 0.725237, 0.404076,
		31.249590, 32.836941, 26.532001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957125, 32.715145, 26.770187>,  <31.639807, 32.329273, 26.249147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957125, 32.715145, 26.770187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572233, 32.735275, 26.877205>,  <31.341297, 32.747353, 26.941416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572233, 32.735275, 26.877205>,  <31.957125, 32.715145, 26.770187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572233, 32.735275, 26.877205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227346, -0.392060, 0.891405,
		0.149756, 0.918562, 0.365811,
		-0.962230, 0.050327, 0.267544,
		31.283564, 32.750374, 26.957468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015614, 32.748154, 27.500305>,  <31.957125, 32.715145, 26.770187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015614, 32.748154, 27.500305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660162, 32.585175, 27.416088>,  <31.446892, 32.487385, 27.365557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660162, 32.585175, 27.416088>,  <32.015614, 32.748154, 27.500305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660162, 32.585175, 27.416088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125136, -0.657047, 0.743391,
		-0.441233, 0.634249, 0.634855,
		-0.888625, -0.407452, -0.210544,
		31.393574, 32.462940, 27.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710518, 32.432507, 28.147345>,  <32.015614, 32.748154, 27.500305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710518, 32.432507, 28.147345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492741, 32.222141, 27.885963>,  <31.362074, 32.095924, 27.729134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492741, 32.222141, 27.885963>,  <31.710518, 32.432507, 28.147345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492741, 32.222141, 27.885963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047636, -0.797164, 0.601880,
		-0.837444, 0.296562, 0.459063,
		-0.544443, -0.525909, -0.653454,
		31.329407, 32.064369, 27.689928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452730, 31.956709, 28.554987>,  <31.710518, 32.432507, 28.147345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452730, 31.956709, 28.554987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363499, 31.816097, 28.191303>,  <31.309959, 31.731731, 27.973093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363499, 31.816097, 28.191303>,  <31.452730, 31.956709, 28.554987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363499, 31.816097, 28.191303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034121, -0.929327, 0.367677,
		-0.974203, 0.113044, 0.195318,
		-0.223078, -0.351527, -0.909211,
		31.296576, 31.710640, 27.918539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803148, 31.550137, 28.640034>,  <31.452730, 31.956709, 28.554987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803148, 31.550137, 28.640034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961842, 31.428642, 28.293545>,  <31.057058, 31.355745, 28.085651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961842, 31.428642, 28.293545>,  <30.803148, 31.550137, 28.640034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961842, 31.428642, 28.293545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105419, -0.952501, 0.285707,
		-0.911859, -0.022034, -0.409912,
		0.396737, -0.303737, -0.866224,
		31.080862, 31.337521, 28.033678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298790, 31.064209, 28.360460>,  <30.803148, 31.550137, 28.640034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298790, 31.064209, 28.360460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653723, 30.978767, 28.196991>,  <30.866682, 30.927502, 28.098909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653723, 30.978767, 28.196991>,  <30.298790, 31.064209, 28.360460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653723, 30.978767, 28.196991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120798, -0.962969, 0.241038,
		-0.445026, -0.164514, -0.880276,
		0.887333, -0.213604, -0.408673,
		30.919922, 30.914686, 28.074389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200537, 30.427950, 28.116772>,  <30.298790, 31.064209, 28.360460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200537, 30.427950, 28.116772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597979, 30.472363, 28.108551>,  <30.836443, 30.499010, 28.103619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597979, 30.472363, 28.108551>,  <30.200537, 30.427950, 28.116772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597979, 30.472363, 28.108551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110149, -0.913023, 0.392755,
		0.024842, -0.392507, -0.919414,
		0.993604, 0.111029, -0.020553,
		30.896061, 30.505671, 28.102385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449341, 29.884624, 27.833635>,  <30.200537, 30.427950, 28.116772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449341, 29.884624, 27.833635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744087, 30.039616, 28.055225>,  <30.920935, 30.132610, 28.188179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744087, 30.039616, 28.055225>,  <30.449341, 29.884624, 27.833635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744087, 30.039616, 28.055225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045877, -0.788893, 0.612815,
		0.674479, -0.476978, -0.563533,
		0.736867, 0.387478, 0.553974,
		30.965147, 30.155859, 28.221418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979727, 29.315960, 27.931313>,  <30.449341, 29.884624, 27.833635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979727, 29.315960, 27.931313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033974, 29.577251, 28.229279>,  <31.066523, 29.734028, 28.408058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033974, 29.577251, 28.229279>,  <30.979727, 29.315960, 27.931313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033974, 29.577251, 28.229279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076657, -0.742688, 0.665236,
		0.987791, -0.147322, -0.050647,
		0.135619, 0.653231, 0.744914,
		31.074659, 29.773220, 28.452753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481586, 29.002771, 28.390959>,  <30.979727, 29.315960, 27.931313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481586, 29.002771, 28.390959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282658, 29.268318, 28.614368>,  <31.163301, 29.427647, 28.748415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282658, 29.268318, 28.614368>,  <31.481586, 29.002771, 28.390959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282658, 29.268318, 28.614368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142128, -0.697431, 0.702417,
		0.855846, 0.269944, 0.441201,
		-0.497321, 0.663868, 0.558526,
		31.133461, 29.467478, 28.781927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819733, 28.992069, 29.117405>,  <31.481586, 29.002771, 28.390959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819733, 28.992069, 29.117405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448257, 29.139259, 29.135872>,  <31.225372, 29.227573, 29.146952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448257, 29.139259, 29.135872>,  <31.819733, 28.992069, 29.117405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448257, 29.139259, 29.135872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218687, -0.643909, 0.733183,
		0.299523, 0.670802, 0.678462,
		-0.928688, 0.367976, 0.046169,
		31.169651, 29.249653, 29.149723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818439, 29.148596, 29.778378>,  <31.819733, 28.992069, 29.117405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818439, 29.148596, 29.778378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438751, 29.120068, 29.655811>,  <31.210938, 29.102951, 29.582272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438751, 29.120068, 29.655811>,  <31.818439, 29.148596, 29.778378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438751, 29.120068, 29.655811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235974, -0.482752, 0.843366,
		-0.208071, 0.872848, 0.441410,
		-0.949222, -0.071319, -0.306416,
		31.153984, 29.098671, 29.563887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540953, 29.128834, 30.359079>,  <31.818439, 29.148596, 29.778378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540953, 29.128834, 30.359079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213123, 29.020195, 30.157276>,  <31.016426, 28.955011, 30.036194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213123, 29.020195, 30.157276>,  <31.540953, 29.128834, 30.359079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213123, 29.020195, 30.157276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311464, -0.527875, 0.790151,
		-0.480922, 0.804725, 0.348040,
		-0.819576, -0.271599, -0.504509,
		30.967251, 28.938715, 30.005924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981758, 29.212805, 30.850445>,  <31.540953, 29.128834, 30.359079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981758, 29.212805, 30.850445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838863, 28.977577, 30.560188>,  <30.753126, 28.836441, 30.386034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838863, 28.977577, 30.560188>,  <30.981758, 29.212805, 30.850445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838863, 28.977577, 30.560188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313113, -0.656551, 0.686222,
		-0.879967, 0.472353, 0.050414,
		-0.357238, -0.588068, -0.725643,
		30.731691, 28.801157, 30.342495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201960, 29.025043, 30.907990>,  <30.981758, 29.212805, 30.850445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201960, 29.025043, 30.907990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368324, 28.737556, 30.685112>,  <30.468143, 28.565063, 30.551386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368324, 28.737556, 30.685112>,  <30.201960, 29.025043, 30.907990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368324, 28.737556, 30.685112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481325, -0.693818, 0.535670,
		-0.771586, 0.045401, -0.634503,
		0.415910, -0.718717, -0.557193,
		30.493097, 28.521940, 30.517954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818789, 28.567507, 31.074987>,  <30.201960, 29.025043, 30.907990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818789, 28.567507, 31.074987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092073, 28.353096, 30.876637>,  <30.256044, 28.224449, 30.757626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092073, 28.353096, 30.876637>,  <29.818789, 28.567507, 31.074987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092073, 28.353096, 30.876637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238275, -0.805560, 0.542492,
		-0.690250, -0.252482, -0.678091,
		0.683213, -0.536027, -0.495878,
		30.297037, 28.192287, 30.727873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574850, 27.926798, 30.695513>,  <29.818789, 28.567507, 31.074987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574850, 27.926798, 30.695513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963512, 27.865223, 30.767281>,  <30.196709, 27.828278, 30.810341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963512, 27.865223, 30.767281>,  <29.574850, 27.926798, 30.695513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963512, 27.865223, 30.767281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226140, -0.826456, 0.515588,
		0.068914, -0.541547, -0.837841,
		0.971654, -0.153938, 0.179420,
		30.255009, 27.819042, 30.821106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726515, 27.278425, 30.417259>,  <29.574850, 27.926798, 30.695513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726515, 27.278425, 30.417259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028502, 27.341087, 30.671970>,  <30.209694, 27.378685, 30.824797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028502, 27.341087, 30.671970>,  <29.726515, 27.278425, 30.417259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028502, 27.341087, 30.671970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122480, -0.920273, 0.371614,
		0.644224, -0.358549, -0.675588,
		0.754967, 0.156657, 0.636776,
		30.254992, 27.388084, 30.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069925, 26.615297, 30.504629>,  <29.726515, 27.278425, 30.417259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069925, 26.615297, 30.504629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193178, 26.810535, 30.831264>,  <30.267130, 26.927679, 31.027246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193178, 26.810535, 30.831264>,  <30.069925, 26.615297, 30.504629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193178, 26.810535, 30.831264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241190, -0.790229, 0.563352,
		0.920263, -0.370539, -0.125769,
		0.308130, 0.488097, 0.816589,
		30.285618, 26.956964, 31.076241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461340, 26.162264, 30.855328>,  <30.069925, 26.615297, 30.504629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461340, 26.162264, 30.855328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375137, 26.425220, 31.144157>,  <30.323416, 26.582994, 31.317455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375137, 26.425220, 31.144157>,  <30.461340, 26.162264, 30.855328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375137, 26.425220, 31.144157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256995, -0.751566, 0.607538,
		0.942078, -0.054642, 0.330913,
		-0.215506, 0.657391, 0.722077,
		30.310486, 26.622438, 31.360781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842417, 25.985376, 31.437325>,  <30.461340, 26.162264, 30.855328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842417, 25.985376, 31.437325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549843, 26.219677, 31.576981>,  <30.374298, 26.360258, 31.660774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549843, 26.219677, 31.576981>,  <30.842417, 25.985376, 31.437325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549843, 26.219677, 31.576981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273523, -0.721021, 0.636642,
		0.624652, 0.370163, 0.687596,
		-0.731433, 0.585754, 0.349139,
		30.330414, 26.395403, 31.681723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828217, 25.744957, 32.102615>,  <30.842417, 25.985376, 31.437325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828217, 25.744957, 32.102615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473415, 25.925323, 32.062824>,  <30.260534, 26.033545, 32.038948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473415, 25.925323, 32.062824>,  <30.828217, 25.744957, 32.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473415, 25.925323, 32.062824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402566, -0.649607, 0.644943,
		0.226194, 0.612114, 0.757728,
		-0.887004, 0.450918, -0.099479,
		30.207314, 26.060598, 32.032982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605404, 25.837116, 32.824745>,  <30.828217, 25.744957, 32.102615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605404, 25.837116, 32.824745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286993, 25.851543, 32.583073>,  <30.095947, 25.860201, 32.438068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286993, 25.851543, 32.583073>,  <30.605404, 25.837116, 32.824745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286993, 25.851543, 32.583073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501876, -0.597311, 0.625572,
		-0.338322, 0.801199, 0.493578,
		-0.796027, 0.036070, -0.604186,
		30.048185, 25.862364, 32.401817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065424, 25.915182, 33.245205>,  <30.605404, 25.837116, 32.824745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065424, 25.915182, 33.245205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900194, 25.763245, 32.914124>,  <29.801056, 25.672083, 32.715477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900194, 25.763245, 32.914124>,  <30.065424, 25.915182, 33.245205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900194, 25.763245, 32.914124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415501, -0.730151, 0.542437,
		-0.810387, 0.567978, 0.143783,
		-0.413075, -0.379843, -0.827701,
		29.776272, 25.649292, 32.665813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437563, 25.838036, 33.486305>,  <30.065424, 25.915182, 33.245205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437563, 25.838036, 33.486305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455788, 25.621769, 33.150303>,  <29.466722, 25.492010, 32.948704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455788, 25.621769, 33.150303>,  <29.437563, 25.838036, 33.486305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455788, 25.621769, 33.150303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397580, -0.781224, 0.481268,
		-0.916435, 0.312040, -0.250553,
		0.045563, -0.540666, -0.840003,
		29.469456, 25.459570, 32.898300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859070, 25.387560, 33.425495>,  <29.437563, 25.838036, 33.486305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859070, 25.387560, 33.425495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136652, 25.207043, 33.201080>,  <29.303202, 25.098732, 33.066433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136652, 25.207043, 33.201080>,  <28.859070, 25.387560, 33.425495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136652, 25.207043, 33.201080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216203, -0.873846, 0.435487,
		-0.686791, -0.180911, -0.703982,
		0.693956, -0.451292, -0.561036,
		29.344839, 25.071655, 33.032768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509600, 24.845863, 33.280968>,  <28.859070, 25.387560, 33.425495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509600, 24.845863, 33.280968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896111, 24.775833, 33.205433>,  <29.128017, 24.733816, 33.160110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896111, 24.775833, 33.205433>,  <28.509600, 24.845863, 33.280968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896111, 24.775833, 33.205433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087184, -0.912439, 0.399817,
		-0.242300, -0.369870, -0.896932,
		0.966276, -0.175074, -0.188838,
		29.185993, 24.723310, 33.148781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097721, 24.862494, 32.640301>,  <28.509600, 24.845863, 33.280968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097721, 24.862494, 32.640301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704878, 24.907787, 32.580116>,  <27.469172, 24.934963, 32.544006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704878, 24.907787, 32.580116>,  <28.097721, 24.862494, 32.640301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704878, 24.907787, 32.580116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169781, 0.878061, -0.447418,
		0.081447, -0.464959, -0.881578,
		-0.982110, 0.113235, -0.150457,
		27.410244, 24.941757, 32.534981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965233, 25.066923, 31.901323>,  <28.097721, 24.862494, 32.640301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965233, 25.066923, 31.901323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650854, 25.199875, 32.109863>,  <27.462227, 25.279646, 32.234989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650854, 25.199875, 32.109863>,  <27.965233, 25.066923, 31.901323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650854, 25.199875, 32.109863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115718, 0.907391, -0.404044,
		-0.607366, -0.257228, -0.751625,
		-0.785949, 0.332379, 0.521352,
		27.415070, 25.299589, 32.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560291, 25.465342, 31.286104>,  <27.965233, 25.066923, 31.901323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560291, 25.465342, 31.286104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414398, 25.596027, 31.634869>,  <27.326862, 25.674438, 31.844128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414398, 25.596027, 31.634869>,  <27.560291, 25.465342, 31.286104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414398, 25.596027, 31.634869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152992, 0.902662, -0.402238,
		-0.918457, -0.280105, -0.279246,
		-0.364733, 0.326716, 0.871910,
		27.304977, 25.694042, 31.896442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928324, 25.722704, 31.130409>,  <27.560291, 25.465342, 31.286104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928324, 25.722704, 31.130409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037914, 25.875919, 31.483276>,  <27.103668, 25.967848, 31.694996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037914, 25.875919, 31.483276>,  <26.928324, 25.722704, 31.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037914, 25.875919, 31.483276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220736, 0.917823, -0.329964,
		-0.936062, -0.104324, 0.336012,
		0.273976, 0.383037, 0.882168,
		27.120108, 25.990829, 31.747927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412443, 26.186937, 31.213270>,  <26.928324, 25.722704, 31.130409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412443, 26.186937, 31.213270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727268, 26.320515, 31.420738>,  <26.916162, 26.400661, 31.545219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727268, 26.320515, 31.420738>,  <26.412443, 26.186937, 31.213270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727268, 26.320515, 31.420738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147268, 0.918205, -0.367711,
		-0.599038, 0.213028, 0.771863,
		0.787061, 0.333943, 0.518668,
		26.963387, 26.420698, 31.576338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
