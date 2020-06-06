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
	<24.669315, 35.101921, 35.224731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333479, 35.012238, 35.026814>,  <24.131977, 34.958427, 34.908062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333479, 35.012238, 35.026814>,  <24.669315, 35.101921, 35.224731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333479, 35.012238, 35.026814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168060, 0.973370, -0.155906,
		0.516572, -0.047742, -0.854912,
		-0.839589, -0.224213, -0.494792,
		24.081602, 34.944973, 34.878376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544306, 34.952972, 34.473076>,  <24.669315, 35.101921, 35.224731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544306, 34.952972, 34.473076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563911, 34.615349, 34.259476>,  <24.575676, 34.412773, 34.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563911, 34.615349, 34.259476>,  <24.544306, 34.952972, 34.473076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563911, 34.615349, 34.259476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934652, 0.227273, -0.273447,
		0.352170, -0.485698, 0.800046,
		0.049016, -0.844064, -0.533998,
		24.578617, 34.362129, 34.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657675, 35.621212, 34.714725>,  <24.544306, 34.952972, 34.473076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657675, 35.621212, 34.714725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511238, 35.956100, 34.552223>,  <24.423376, 36.157032, 34.454723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511238, 35.956100, 34.552223>,  <24.657675, 35.621212, 34.714725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511238, 35.956100, 34.552223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832891, -0.100072, 0.544315,
		0.415055, 0.537636, 0.733946,
		-0.366090, 0.837217, -0.406257,
		24.401411, 36.207264, 34.430347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323311, 36.151928, 35.199108>,  <24.657675, 35.621212, 34.714725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323311, 36.151928, 35.199108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158327, 36.263256, 34.852139>,  <24.059338, 36.330051, 34.643959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158327, 36.263256, 34.852139>,  <24.323311, 36.151928, 35.199108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158327, 36.263256, 34.852139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891003, 0.075045, 0.447751,
		0.189712, 0.957553, 0.217028,
		-0.412458, 0.278317, -0.867420,
		24.034590, 36.346752, 34.591911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979410, 36.558464, 35.349800>,  <24.323311, 36.151928, 35.199108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979410, 36.558464, 35.349800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078421, 36.764763, 35.677883>,  <25.137827, 36.888542, 35.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078421, 36.764763, 35.677883>,  <24.979410, 36.558464, 35.349800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078421, 36.764763, 35.677883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259577, 0.850904, -0.456708,
		-0.933462, -0.099860, 0.344495,
		0.247526, 0.515743, 0.820208,
		25.152678, 36.919487, 35.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.500362, 37.088341, 35.669567>,  <24.979410, 36.558464, 35.349800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.500362, 37.088341, 35.669567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895121, 37.152153, 35.679237>,  <25.131975, 37.190441, 35.685040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895121, 37.152153, 35.679237>,  <24.500362, 37.088341, 35.669567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895121, 37.152153, 35.679237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129017, 0.870221, -0.475468,
		-0.096891, 0.466119, 0.879400,
		0.986897, 0.159526, 0.024179,
		25.191191, 37.200012, 35.686493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.511671, 37.724648, 35.936543>,  <24.500362, 37.088341, 35.669567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.511671, 37.724648, 35.936543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848577, 37.661144, 35.730480>,  <25.050722, 37.623043, 35.606842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848577, 37.661144, 35.730480>,  <24.511671, 37.724648, 35.936543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848577, 37.661144, 35.730480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164286, 0.834587, -0.525809,
		0.513417, 0.527504, 0.676862,
		0.842267, -0.158761, -0.515152,
		25.101257, 37.613518, 35.575935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838366, 38.411037, 35.958977>,  <24.511671, 37.724648, 35.936543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838366, 38.411037, 35.958977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017723, 38.210018, 35.663303>,  <25.125338, 38.089405, 35.485901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017723, 38.210018, 35.663303>,  <24.838366, 38.411037, 35.958977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017723, 38.210018, 35.663303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042937, 0.838132, -0.543775,
		0.892805, 0.212086, 0.397389,
		0.448392, -0.502548, -0.739182,
		25.152241, 38.059254, 35.441547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362455, 38.878494, 35.706501>,  <24.838366, 38.411037, 35.958977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362455, 38.878494, 35.706501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304379, 38.625359, 35.402283>,  <25.269533, 38.473476, 35.219749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304379, 38.625359, 35.402283>,  <25.362455, 38.878494, 35.706501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304379, 38.625359, 35.402283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229237, 0.726260, -0.648072,
		0.962481, -0.268441, 0.039623,
		-0.145193, -0.632840, -0.760548,
		25.260820, 38.435505, 35.174118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936501, 38.922333, 35.295147>,  <25.362455, 38.878494, 35.706501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936501, 38.922333, 35.295147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653296, 38.758003, 35.065384>,  <25.483374, 38.659405, 34.927525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653296, 38.758003, 35.065384>,  <25.936501, 38.922333, 35.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653296, 38.758003, 35.065384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156116, 0.702200, -0.694653,
		0.688717, -0.581504, -0.433039,
		-0.708024, -0.410815, -0.574399,
		25.440893, 38.634754, 34.893063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279112, 38.780045, 34.672665>,  <25.936501, 38.922333, 35.295147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279112, 38.780045, 34.672665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886356, 38.822830, 34.610111>,  <25.650703, 38.848503, 34.572578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886356, 38.822830, 34.610111>,  <26.279112, 38.780045, 34.672665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886356, 38.822830, 34.610111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189466, 0.559929, -0.806586,
		0.001288, -0.821606, -0.570053,
		-0.981887, 0.106967, -0.156387,
		25.591791, 38.854919, 34.563194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.118427, 38.517704, 34.054554>,  <26.279112, 38.780045, 34.672665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.118427, 38.517704, 34.054554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895889, 38.829269, 34.170330>,  <25.762367, 39.016209, 34.239796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895889, 38.829269, 34.170330>,  <26.118427, 38.517704, 34.054554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895889, 38.829269, 34.170330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395709, 0.554635, -0.731980,
		-0.730682, -0.292699, -0.616791,
		-0.556343, 0.778914, 0.289438,
		25.728987, 39.062943, 34.257160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479628, 39.146511, 34.022427>,  <26.118427, 38.517704, 34.054554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479628, 39.146511, 34.022427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693979, 39.467304, 33.916859>,  <26.822590, 39.659779, 33.853519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693979, 39.467304, 33.916859>,  <26.479628, 39.146511, 34.022427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693979, 39.467304, 33.916859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335920, -0.489313, -0.804817,
		-0.774590, 0.342630, -0.531616,
		0.535881, 0.801984, -0.263920,
		26.854744, 39.707901, 33.837681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839451, 39.709835, 33.941257>,  <26.479628, 39.146511, 34.022427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839451, 39.709835, 33.941257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554750, 39.660652, 33.664623>,  <25.383930, 39.631142, 33.498642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554750, 39.660652, 33.664623>,  <25.839451, 39.709835, 33.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554750, 39.660652, 33.664623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314231, -0.824821, 0.470031,
		-0.628230, 0.551862, 0.548430,
		-0.711749, -0.122954, -0.691589,
		25.341227, 39.623768, 33.457146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156664, 39.835239, 34.385239>,  <25.839451, 39.709835, 33.941257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156664, 39.835239, 34.385239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193804, 39.600197, 34.063717>,  <25.216087, 39.459171, 33.870804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193804, 39.600197, 34.063717>,  <25.156664, 39.835239, 34.385239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193804, 39.600197, 34.063717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152230, -0.806177, 0.571755,
		-0.983974, 0.069275, -0.164304,
		0.092850, -0.587604, -0.803803,
		25.221659, 39.423916, 33.822575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554138, 39.380020, 34.277279>,  <25.156664, 39.835239, 34.385239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554138, 39.380020, 34.277279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892963, 39.202938, 34.159637>,  <25.096258, 39.096687, 34.089054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892963, 39.202938, 34.159637>,  <24.554138, 39.380020, 34.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892963, 39.202938, 34.159637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118108, -0.696304, 0.707963,
		-0.518202, -0.564955, -0.642101,
		0.847064, -0.442704, -0.294101,
		25.147083, 39.070126, 34.071407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448423, 38.726635, 33.967682>,  <24.554138, 39.380020, 34.277279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448423, 38.726635, 33.967682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802244, 38.758621, 34.151497>,  <25.014536, 38.777813, 34.261787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802244, 38.758621, 34.151497>,  <24.448423, 38.726635, 33.967682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802244, 38.758621, 34.151497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287018, -0.683289, 0.671369,
		0.367684, -0.725756, -0.581453,
		0.884550, 0.079965, 0.459539,
		25.067610, 38.782612, 34.289360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608747, 38.061569, 34.122715>,  <24.448423, 38.726635, 33.967682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608747, 38.061569, 34.122715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887915, 38.231918, 34.353035>,  <25.055416, 38.334126, 34.491226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.887915, 38.231918, 34.353035>,  <24.608747, 38.061569, 34.122715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.887915, 38.231918, 34.353035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158541, -0.692171, 0.704105,
		0.698407, -0.582697, -0.415562,
		0.697920, 0.425868, 0.575799,
		25.097290, 38.359680, 34.525776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970217, 37.600121, 34.191704>,  <24.608747, 38.061569, 34.122715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970217, 37.600121, 34.191704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066019, 37.836014, 34.500210>,  <25.123501, 37.977551, 34.685314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066019, 37.836014, 34.500210>,  <24.970217, 37.600121, 34.191704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066019, 37.836014, 34.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139252, -0.807039, 0.573844,
		0.960857, -0.030038, -0.275410,
		0.239504, 0.589734, 0.771266,
		25.137871, 38.012936, 34.731590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725241, 37.384090, 34.470734>,  <24.970217, 37.600121, 34.191704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725241, 37.384090, 34.470734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550007, 37.589497, 34.765862>,  <25.444866, 37.712742, 34.942940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550007, 37.589497, 34.765862>,  <25.725241, 37.384090, 34.470734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550007, 37.589497, 34.765862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259561, -0.713555, 0.650744,
		0.860646, 0.476589, 0.179307,
		-0.438083, 0.513519, 0.737822,
		25.418581, 37.743553, 34.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714106, 37.011723, 35.048336>,  <25.725241, 37.384090, 34.470734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714106, 37.011723, 35.048336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754608, 36.709404, 34.789566>,  <25.778910, 36.528011, 34.634304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754608, 36.709404, 34.789566>,  <25.714106, 37.011723, 35.048336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754608, 36.709404, 34.789566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979453, -0.038268, 0.198008,
		-0.174410, -0.653686, 0.736394,
		0.101255, -0.755798, -0.646929,
		25.784985, 36.482666, 34.595486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247927, 37.467403, 34.966339>,  <25.714106, 37.011723, 35.048336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247927, 37.467403, 34.966339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896473, 37.507179, 35.153149>,  <25.685600, 37.531044, 35.265236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896473, 37.507179, 35.153149>,  <26.247927, 37.467403, 34.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896473, 37.507179, 35.153149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219523, -0.784461, 0.580027,
		0.424037, 0.612155, 0.667427,
		-0.878637, 0.099437, 0.467022,
		25.632881, 37.537010, 35.293255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471605, 37.433323, 35.642235>,  <26.247927, 37.467403, 34.966339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471605, 37.433323, 35.642235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079294, 37.355362, 35.638424>,  <25.843908, 37.308586, 35.636139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079294, 37.355362, 35.638424>,  <26.471605, 37.433323, 35.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079294, 37.355362, 35.638424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164481, -0.851980, 0.497068,
		-0.104995, 0.485946, 0.867660,
		-0.980776, -0.194903, -0.009524,
		25.785061, 37.296890, 35.635567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123196, 37.392647, 36.339607>,  <26.471605, 37.433323, 35.642235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123196, 37.392647, 36.339607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961212, 37.169865, 36.049557>,  <25.864021, 37.036194, 35.875526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.961212, 37.169865, 36.049557>,  <26.123196, 37.392647, 36.339607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961212, 37.169865, 36.049557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179215, -0.826032, 0.534372,
		-0.896598, 0.086447, 0.434325,
		-0.404961, -0.556954, -0.725126,
		25.839724, 37.002777, 35.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754101, 36.950840, 36.652386>,  <26.123196, 37.392647, 36.339607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754101, 36.950840, 36.652386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777077, 36.753723, 36.305088>,  <25.790863, 36.635452, 36.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777077, 36.753723, 36.305088>,  <25.754101, 36.950840, 36.652386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777077, 36.753723, 36.305088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103353, -0.862076, 0.496129,
		-0.992985, -0.118234, 0.001413,
		0.057441, -0.492795, -0.868248,
		25.794310, 36.605885, 36.044613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164890, 36.385399, 36.547050>,  <25.754101, 36.950840, 36.652386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164890, 36.385399, 36.547050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494217, 36.276176, 36.348019>,  <25.691813, 36.210644, 36.228600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.494217, 36.276176, 36.348019>,  <25.164890, 36.385399, 36.547050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494217, 36.276176, 36.348019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158448, -0.731248, 0.663454,
		-0.545016, -0.625074, -0.558784,
		0.823317, -0.273055, -0.497583,
		25.741213, 36.194260, 36.198742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103819, 35.787941, 36.238861>,  <25.164890, 36.385399, 36.547050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103819, 35.787941, 36.238861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461605, 35.881954, 36.391014>,  <25.676277, 35.938362, 36.482307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461605, 35.881954, 36.391014>,  <25.103819, 35.787941, 36.238861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461605, 35.881954, 36.391014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046369, -0.797369, 0.601708,
		0.444728, -0.555844, -0.702320,
		0.894464, 0.235030, 0.380387,
		25.729944, 35.952465, 36.505131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518660, 35.191814, 36.212296>,  <25.103819, 35.787941, 36.238861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518660, 35.191814, 36.212296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647532, 35.417721, 36.516201>,  <25.724855, 35.553265, 36.698544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647532, 35.417721, 36.516201>,  <25.518660, 35.191814, 36.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647532, 35.417721, 36.516201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038480, -0.809706, 0.585573,
		0.945896, -0.159424, -0.282603,
		0.322180, 0.564765, 0.759763,
		25.744186, 35.587151, 36.744129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145788, 34.840042, 36.582352>,  <25.518660, 35.191814, 36.212296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145788, 34.840042, 36.582352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925055, 35.061523, 36.831795>,  <25.792614, 35.194412, 36.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925055, 35.061523, 36.831795>,  <26.145788, 34.840042, 36.582352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925055, 35.061523, 36.831795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278807, -0.827241, 0.487790,
		0.785968, 0.095312, 0.610877,
		-0.551835, 0.553704, 0.623611,
		25.759504, 35.227634, 37.018879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318645, 34.648102, 37.266056>,  <26.145788, 34.840042, 36.582352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318645, 34.648102, 37.266056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951256, 34.806004, 37.275612>,  <25.730822, 34.900745, 37.281345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951256, 34.806004, 37.275612>,  <26.318645, 34.648102, 37.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951256, 34.806004, 37.275612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285300, -0.703213, 0.651226,
		0.273876, 0.591318, 0.758508,
		-0.918475, 0.394758, 0.023890,
		25.675713, 34.924431, 37.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128912, 34.676105, 38.022530>,  <26.318645, 34.648102, 37.266056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128912, 34.676105, 38.022530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804390, 34.647369, 37.790451>,  <25.609676, 34.630127, 37.651203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804390, 34.647369, 37.790451>,  <26.128912, 34.676105, 38.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804390, 34.647369, 37.790451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408215, -0.640808, 0.650173,
		-0.418503, 0.764332, 0.490563,
		-0.811305, -0.071844, -0.580192,
		25.560999, 34.625816, 37.616394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536205, 34.682171, 38.416729>,  <26.128912, 34.676105, 38.022530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536205, 34.682171, 38.416729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385630, 34.522812, 38.082169>,  <25.295284, 34.427197, 37.881432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385630, 34.522812, 38.082169>,  <25.536205, 34.682171, 38.416729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385630, 34.522812, 38.082169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402672, -0.742716, 0.535003,
		-0.834356, 0.538192, 0.119162,
		-0.376437, -0.398400, -0.836405,
		25.272699, 34.403294, 37.831245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763811, 34.687263, 38.459156>,  <25.536205, 34.682171, 38.416729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763811, 34.687263, 38.459156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875189, 34.412594, 38.190544>,  <24.942015, 34.247795, 38.029377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.875189, 34.412594, 38.190544>,  <24.763811, 34.687263, 38.459156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875189, 34.412594, 38.190544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462110, -0.708715, 0.533082,
		-0.841976, 0.161889, -0.514653,
		0.278442, -0.686669, -0.671532,
		24.958721, 34.206593, 37.989086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154533, 34.231152, 38.419178>,  <24.763811, 34.687263, 38.459156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154533, 34.231152, 38.419178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465244, 34.020332, 38.281284>,  <24.651670, 33.893841, 38.198547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465244, 34.020332, 38.281284>,  <24.154533, 34.231152, 38.419178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465244, 34.020332, 38.281284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394754, -0.833979, 0.385550,
		-0.490701, -0.163402, -0.855869,
		0.776777, -0.527047, -0.344731,
		24.698277, 33.862217, 38.177864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.904156, 33.562950, 38.142036>,  <24.154533, 34.231152, 38.419178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.904156, 33.562950, 38.142036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283480, 33.541580, 38.267162>,  <24.511074, 33.528759, 38.342239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.283480, 33.541580, 38.267162>,  <23.904156, 33.562950, 38.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.283480, 33.541580, 38.267162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204930, -0.855724, 0.475121,
		0.242302, -0.514668, -0.822439,
		0.948311, -0.053420, 0.312815,
		24.567972, 33.525555, 38.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116112, 33.467762, 38.787090>,  <23.904156, 33.562950, 38.142036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116112, 33.467762, 38.787090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293791, 33.166332, 38.980919>,  <24.400398, 32.985474, 39.097214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293791, 33.166332, 38.980919>,  <24.116112, 33.467762, 38.787090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293791, 33.166332, 38.980919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694372, -0.052211, -0.717720,
		0.566158, 0.655281, 0.500072,
		0.444199, -0.753579, 0.484568,
		24.427050, 32.940258, 39.126289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883156, 33.579987, 39.020763>,  <24.116112, 33.467762, 38.787090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883156, 33.579987, 39.020763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789213, 33.210789, 38.898834>,  <24.732847, 32.989269, 38.825676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789213, 33.210789, 38.898834>,  <24.883156, 33.579987, 39.020763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789213, 33.210789, 38.898834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668883, 0.074082, -0.739667,
		0.705293, -0.377606, 0.599980,
		-0.234855, -0.922998, -0.304824,
		24.718758, 32.933887, 38.807388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496010, 33.336990, 38.889606>,  <24.883156, 33.579987, 39.020763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496010, 33.336990, 38.889606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178082, 33.176937, 38.707111>,  <24.987324, 33.080906, 38.597614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178082, 33.176937, 38.707111>,  <25.496010, 33.336990, 38.889606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178082, 33.176937, 38.707111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284935, 0.417720, -0.862741,
		0.535791, -0.815723, -0.218001,
		-0.794821, -0.400133, -0.456238,
		24.939634, 33.056896, 38.570240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732416, 32.924080, 38.304615>,  <25.496010, 33.336990, 38.889606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732416, 32.924080, 38.304615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393557, 33.136620, 38.304352>,  <25.190241, 33.264145, 38.304195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393557, 33.136620, 38.304352>,  <25.732416, 32.924080, 38.304615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393557, 33.136620, 38.304352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407348, 0.648653, -0.642897,
		-0.341180, -0.544898, -0.765952,
		-0.847150, 0.531353, -0.000655,
		25.139412, 33.296024, 38.304153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716070, 33.256607, 37.644783>,  <25.732416, 32.924080, 38.304615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716070, 33.256607, 37.644783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386694, 33.432049, 37.788769>,  <25.189068, 33.537312, 37.875160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.386694, 33.432049, 37.788769>,  <25.716070, 33.256607, 37.644783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386694, 33.432049, 37.788769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060590, 0.698753, -0.712792,
		-0.564162, -0.565130, -0.601955,
		-0.823438, 0.438602, 0.359968,
		25.139662, 33.563629, 37.896759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312754, 33.380203, 36.996319>,  <25.716070, 33.256607, 37.644783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312754, 33.380203, 36.996319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173710, 33.609772, 37.292908>,  <25.090284, 33.747513, 37.470860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173710, 33.609772, 37.292908>,  <25.312754, 33.380203, 36.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173710, 33.609772, 37.292908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045645, 0.800205, -0.597988,
		-0.936528, -0.174022, -0.304356,
		-0.347610, 0.573924, 0.741470,
		25.069427, 33.781948, 37.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708096, 33.760700, 36.756569>,  <25.312754, 33.380203, 36.996319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708096, 33.760700, 36.756569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914875, 33.947803, 37.043335>,  <25.038942, 34.060066, 37.215393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914875, 33.947803, 37.043335>,  <24.708096, 33.760700, 36.756569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914875, 33.947803, 37.043335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428140, 0.583940, -0.689717,
		-0.741256, 0.663488, 0.101601,
		0.516948, 0.467758, 0.716915,
		25.069960, 34.088131, 37.258408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563286, 34.405678, 36.824966>,  <24.708096, 33.760700, 36.756569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563286, 34.405678, 36.824966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942165, 34.391899, 36.952480>,  <25.169493, 34.383633, 37.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942165, 34.391899, 36.952480>,  <24.563286, 34.405678, 36.824966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942165, 34.391899, 36.952480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267474, 0.633181, -0.726319,
		-0.176833, 0.773237, 0.608962,
		0.947200, -0.034444, 0.318788,
		25.226326, 34.381565, 37.048119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849316, 34.934944, 37.335354>,  <24.563286, 34.405678, 36.824966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849316, 34.934944, 37.335354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100241, 34.983494, 37.643055>,  <25.250795, 35.012623, 37.827675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100241, 34.983494, 37.643055>,  <24.849316, 34.934944, 37.335354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100241, 34.983494, 37.643055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524004, 0.664946, -0.532229,
		-0.576108, 0.736964, 0.353529,
		0.627312, 0.121371, 0.769252,
		25.288435, 35.019905, 37.873829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801479, 35.656982, 37.677872>,  <24.849316, 34.934944, 37.335354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801479, 35.656982, 37.677872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149328, 35.462090, 37.645969>,  <25.358038, 35.345154, 37.626827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149328, 35.462090, 37.645969>,  <24.801479, 35.656982, 37.677872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149328, 35.462090, 37.645969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378279, 0.761351, -0.526544,
		0.317271, 0.427725, 0.846398,
		0.869623, -0.487232, -0.079755,
		25.410215, 35.315918, 37.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256519, 36.135292, 37.735489>,  <24.801479, 35.656982, 37.677872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256519, 36.135292, 37.735489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437920, 35.832916, 37.546646>,  <25.546761, 35.651489, 37.433338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437920, 35.832916, 37.546646>,  <25.256519, 36.135292, 37.735489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437920, 35.832916, 37.546646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419071, 0.648367, -0.635610,
		0.786585, 0.090402, 0.610829,
		0.453502, -0.755941, -0.472111,
		25.573971, 35.606133, 37.405014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965218, 36.189785, 37.854389>,  <25.256519, 36.135292, 37.735489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965218, 36.189785, 37.854389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889591, 36.017490, 37.501408>,  <25.844215, 35.914112, 37.289619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889591, 36.017490, 37.501408>,  <25.965218, 36.189785, 37.854389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889591, 36.017490, 37.501408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326339, 0.820018, -0.470184,
		0.926151, -0.376875, -0.014472,
		-0.189068, -0.430739, -0.882450,
		25.832870, 35.888268, 37.236671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507681, 35.947346, 37.463501>,  <25.965218, 36.189785, 37.854389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507681, 35.947346, 37.463501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227142, 36.051601, 37.198116>,  <26.058819, 36.114155, 37.038887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227142, 36.051601, 37.198116>,  <26.507681, 35.947346, 37.463501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227142, 36.051601, 37.198116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611974, 0.697427, -0.372937,
		0.365516, -0.667580, -0.648641,
		-0.701346, 0.260637, -0.663463,
		26.016739, 36.129791, 36.999077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208187, 35.868511, 37.244339>,  <26.507681, 35.947346, 37.463501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208187, 35.868511, 37.244339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134848, 36.222256, 37.072624>,  <27.090845, 36.434502, 36.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134848, 36.222256, 37.072624>,  <27.208187, 35.868511, 37.244339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134848, 36.222256, 37.072624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782689, -0.395545, -0.480564,
		-0.594796, 0.247891, 0.764701,
		-0.183347, 0.884361, -0.429290,
		27.079844, 36.487564, 36.943836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712667, 36.232895, 36.818844>,  <27.208187, 35.868511, 37.244339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712667, 36.232895, 36.818844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867182, 36.056561, 36.494759>,  <27.959890, 35.950760, 36.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867182, 36.056561, 36.494759>,  <27.712667, 36.232895, 36.818844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867182, 36.056561, 36.494759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327544, 0.886705, -0.326295,
		0.862264, -0.139337, 0.486915,
		0.386285, -0.440839, -0.810213,
		27.983067, 35.924309, 36.251694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504108, 36.361435, 36.709339>,  <27.712667, 36.232895, 36.818844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504108, 36.361435, 36.709339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298470, 36.322002, 36.368519>,  <28.175087, 36.298344, 36.164028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298470, 36.322002, 36.368519>,  <28.504108, 36.361435, 36.709339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298470, 36.322002, 36.368519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158106, 0.965460, -0.207096,
		0.843034, -0.241181, -0.480755,
		-0.514097, -0.098579, -0.852048,
		28.144241, 36.292427, 36.112904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742355, 36.180809, 35.938114>,  <28.504108, 36.361435, 36.709339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742355, 36.180809, 35.938114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568142, 36.531910, 35.858253>,  <28.463614, 36.742569, 35.810337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568142, 36.531910, 35.858253>,  <28.742355, 36.180809, 35.938114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568142, 36.531910, 35.858253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024585, -0.210114, -0.977368,
		-0.899837, -0.430584, 0.069932,
		-0.435533, 0.877752, -0.199654,
		28.437483, 36.795235, 35.798359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320587, 35.803761, 36.061249>,  <28.742355, 36.180809, 35.938114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320587, 35.803761, 36.061249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453709, 36.122189, 35.859055>,  <29.533581, 36.313244, 35.737736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453709, 36.122189, 35.859055>,  <29.320587, 35.803761, 36.061249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453709, 36.122189, 35.859055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426523, -0.351005, -0.833591,
		-0.841024, 0.493024, 0.222725,
		0.332802, 0.796067, -0.505490,
		29.553549, 36.361008, 35.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214748, 35.044548, 35.760509>,  <29.320587, 35.803761, 36.061249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214748, 35.044548, 35.760509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511543, 35.020893, 35.493389>,  <29.689621, 35.006702, 35.333118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511543, 35.020893, 35.493389>,  <29.214748, 35.044548, 35.760509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511543, 35.020893, 35.493389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570544, -0.467365, 0.675314,
		-0.352039, -0.882084, -0.313042,
		0.741989, -0.059133, -0.667799,
		29.734140, 35.003151, 35.293049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370003, 34.528454, 36.189167>,  <29.214748, 35.044548, 35.760509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370003, 34.528454, 36.189167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153898, 34.849998, 36.288704>,  <29.024235, 35.042927, 36.348427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153898, 34.849998, 36.288704>,  <29.370003, 34.528454, 36.189167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153898, 34.849998, 36.288704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032854, 0.315638, -0.948311,
		-0.840855, -0.504160, -0.196937,
		-0.540262, 0.803862, 0.248843,
		28.991819, 35.091156, 36.363358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814938, 34.176022, 36.608086>,  <29.370003, 34.528454, 36.189167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814938, 34.176022, 36.608086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877316, 34.239521, 36.998055>,  <29.914742, 34.277622, 37.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877316, 34.239521, 36.998055>,  <29.814938, 34.176022, 36.608086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877316, 34.239521, 36.998055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830143, 0.555946, 0.042258,
		-0.535297, -0.815917, 0.218484,
		0.155945, 0.158753, 0.974925,
		29.924099, 34.287148, 37.290531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510099, 33.837849, 36.654697>,  <29.814938, 34.176022, 36.608086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510099, 33.837849, 36.654697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676018, 33.591564, 36.922680>,  <30.775568, 33.443794, 37.083469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676018, 33.591564, 36.922680>,  <30.510099, 33.837849, 36.654697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676018, 33.591564, 36.922680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478646, -0.478534, -0.736141,
		0.773849, 0.626020, 0.096216,
		0.414796, -0.615715, 0.669955,
		30.800457, 33.406849, 37.123665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208479, 33.811146, 36.456982>,  <30.510099, 33.837849, 36.654697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208479, 33.811146, 36.456982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113346, 33.477268, 36.655666>,  <31.056267, 33.276943, 36.774879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113346, 33.477268, 36.655666>,  <31.208479, 33.811146, 36.456982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113346, 33.477268, 36.655666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576553, -0.532869, -0.619384,
		0.781678, 0.139072, 0.607978,
		-0.237834, -0.834691, 0.496715,
		31.041996, 33.226860, 36.804680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935064, 33.632378, 36.527767>,  <31.208479, 33.811146, 36.456982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935064, 33.632378, 36.527767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668934, 33.334358, 36.508804>,  <31.509256, 33.155548, 36.497429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668934, 33.334358, 36.508804>,  <31.935064, 33.632378, 36.527767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668934, 33.334358, 36.508804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500010, -0.397556, -0.769376,
		0.554377, -0.535586, 0.637035,
		-0.665324, -0.745048, -0.047403,
		31.469337, 33.110844, 36.494583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248981, 33.207611, 36.017273>,  <31.935064, 33.632378, 36.527767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248981, 33.207611, 36.017273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885366, 33.040936, 36.015614>,  <31.667196, 32.940929, 36.014618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885366, 33.040936, 36.015614>,  <32.248981, 33.207611, 36.017273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885366, 33.040936, 36.015614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238827, -0.512816, -0.824610,
		0.341479, -0.750594, 0.565687,
		-0.909040, -0.416688, -0.004147,
		31.612654, 32.915928, 36.014370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318527, 32.477833, 35.874908>,  <32.248981, 33.207611, 36.017273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318527, 32.477833, 35.874908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948999, 32.588814, 35.769398>,  <31.727283, 32.655403, 35.706093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948999, 32.588814, 35.769398>,  <32.318527, 32.477833, 35.874908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948999, 32.588814, 35.769398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120836, -0.442464, -0.888608,
		-0.363257, -0.852787, 0.375231,
		-0.923820, 0.277452, -0.263775,
		31.671854, 32.672050, 35.690266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101166, 32.478390, 35.694241>,  <32.318527, 32.477833, 35.874908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101166, 32.478390, 35.694241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477551, 32.561733, 35.587524>,  <33.703381, 32.611740, 35.523495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477551, 32.561733, 35.587524>,  <33.101166, 32.478390, 35.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477551, 32.561733, 35.587524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107274, -0.563959, -0.818805,
		-0.321061, 0.799085, -0.508314,
		0.940963, 0.208358, -0.266787,
		33.759838, 32.624241, 35.507488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253910, 32.798153, 34.952614>,  <33.101166, 32.478390, 35.694241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253910, 32.798153, 34.952614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547222, 32.552391, 35.069096>,  <33.723209, 32.404934, 35.138985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547222, 32.552391, 35.069096>,  <33.253910, 32.798153, 34.952614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547222, 32.552391, 35.069096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062238, -0.487141, -0.871103,
		0.677068, 0.620642, -0.395453,
		0.733284, -0.614408, 0.291200,
		33.767208, 32.368069, 35.156456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861599, 32.805050, 34.493492>,  <33.253910, 32.798153, 34.952614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861599, 32.805050, 34.493492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800476, 32.462227, 34.690308>,  <33.763802, 32.256535, 34.808395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800476, 32.462227, 34.690308>,  <33.861599, 32.805050, 34.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800476, 32.462227, 34.690308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224465, -0.454771, -0.861858,
		0.962427, -0.242144, -0.122887,
		-0.152808, -0.857059, 0.492036,
		33.754635, 32.205109, 34.837917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243271, 32.188171, 34.285767>,  <33.861599, 32.805050, 34.493492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243271, 32.188171, 34.285767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919132, 32.033623, 34.461975>,  <33.724648, 31.940895, 34.567699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919132, 32.033623, 34.461975>,  <34.243271, 32.188171, 34.285767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919132, 32.033623, 34.461975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183383, -0.546808, -0.816928,
		0.556514, -0.742779, 0.372251,
		-0.810347, -0.386367, 0.440520,
		33.676029, 31.917713, 34.594131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317158, 31.455381, 34.440758>,  <34.243271, 32.188171, 34.285767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317158, 31.455381, 34.440758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949650, 31.568460, 34.330521>,  <33.729145, 31.636307, 34.264378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949650, 31.568460, 34.330521>,  <34.317158, 31.455381, 34.440758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949650, 31.568460, 34.330521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039821, -0.628132, -0.777087,
		-0.392786, -0.724937, 0.565850,
		-0.918767, 0.282696, -0.275589,
		33.674019, 31.653269, 34.247845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969288, 30.884758, 34.145370>,  <34.317158, 31.455381, 34.440758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969288, 30.884758, 34.145370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771408, 31.209551, 34.021465>,  <33.652679, 31.404427, 33.947124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771408, 31.209551, 34.021465>,  <33.969288, 30.884758, 34.145370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771408, 31.209551, 34.021465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142109, -0.427213, -0.892913,
		-0.857365, -0.397707, 0.326734,
		-0.494703, 0.811984, -0.309760,
		33.622997, 31.453146, 33.928539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493374, 30.742182, 33.660610>,  <33.969288, 30.884758, 34.145370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493374, 30.742182, 33.660610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470097, 31.129374, 33.562935>,  <33.456131, 31.361689, 33.504330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470097, 31.129374, 33.562935>,  <33.493374, 30.742182, 33.660610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470097, 31.129374, 33.562935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061284, -0.240676, -0.968669,
		-0.996422, -0.071338, -0.045315,
		-0.058196, 0.967980, -0.244187,
		33.452637, 31.419767, 33.489677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021263, 30.781139, 33.107819>,  <33.493374, 30.742182, 33.660610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021263, 30.781139, 33.107819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237846, 31.115404, 33.070953>,  <33.367798, 31.315962, 33.048832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237846, 31.115404, 33.070953>,  <33.021263, 30.781139, 33.107819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237846, 31.115404, 33.070953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013160, -0.118036, -0.992922,
		-0.840624, 0.536414, -0.074909,
		0.541460, 0.835660, -0.092165,
		33.400284, 31.366102, 33.043304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715931, 31.177698, 32.554375>,  <33.021263, 30.781139, 33.107819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715931, 31.177698, 32.554375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073925, 31.356094, 32.558384>,  <33.288719, 31.463133, 32.560791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073925, 31.356094, 32.558384>,  <32.715931, 31.177698, 32.554375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073925, 31.356094, 32.558384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038714, -0.055261, -0.997721,
		-0.444422, 0.893330, -0.066723,
		0.894981, 0.445992, 0.010025,
		33.342419, 31.489891, 32.561390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711391, 31.880444, 32.203911>,  <32.715931, 31.177698, 32.554375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711391, 31.880444, 32.203911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094036, 31.764032, 32.198425>,  <33.323624, 31.694185, 32.195133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094036, 31.764032, 32.198425>,  <32.711391, 31.880444, 32.203911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094036, 31.764032, 32.198425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003087, 0.057179, -0.998359,
		0.291337, 0.955004, 0.055597,
		0.956616, -0.291030, -0.013710,
		33.381020, 31.676723, 32.194313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091087, 32.314152, 31.703938>,  <32.711391, 31.880444, 32.203911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091087, 32.314152, 31.703938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356419, 32.019993, 31.759336>,  <33.515617, 31.843496, 31.792576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356419, 32.019993, 31.759336>,  <33.091087, 32.314152, 31.703938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356419, 32.019993, 31.759336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350156, 0.141455, -0.925949,
		0.661353, 0.662703, 0.351336,
		0.663327, -0.735402, 0.138498,
		33.555416, 31.799372, 31.800886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689575, 32.516373, 31.323240>,  <33.091087, 32.314152, 31.703938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689575, 32.516373, 31.323240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712826, 32.119820, 31.370190>,  <33.726776, 31.881887, 31.398359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712826, 32.119820, 31.370190>,  <33.689575, 32.516373, 31.323240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712826, 32.119820, 31.370190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509907, -0.071596, -0.857245,
		0.858264, 0.109676, 0.501353,
		0.058124, -0.991386, 0.117373,
		33.730263, 31.822405, 31.405401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376366, 32.394287, 31.117229>,  <33.689575, 32.516373, 31.323240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376366, 32.394287, 31.117229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169716, 32.052101, 31.102875>,  <34.045727, 31.846790, 31.094261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169716, 32.052101, 31.102875>,  <34.376366, 32.394287, 31.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169716, 32.052101, 31.102875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301452, -0.142500, -0.942773,
		0.801391, -0.497877, 0.331499,
		-0.516623, -0.855460, -0.035888,
		34.014729, 31.795464, 31.092108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795803, 32.030579, 30.750532>,  <34.376366, 32.394287, 31.117229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795803, 32.030579, 30.750532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457073, 31.819370, 30.724968>,  <34.253834, 31.692646, 30.709629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457073, 31.819370, 30.724968>,  <34.795803, 32.030579, 30.750532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457073, 31.819370, 30.724968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230136, -0.255430, -0.939038,
		0.479504, -0.809910, 0.337821,
		-0.846826, -0.528017, -0.063910,
		34.203026, 31.660965, 30.705795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960186, 31.340900, 30.518932>,  <34.795803, 32.030579, 30.750532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960186, 31.340900, 30.518932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581306, 31.414829, 30.414124>,  <34.353977, 31.459187, 30.351238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581306, 31.414829, 30.414124>,  <34.960186, 31.340900, 30.518932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581306, 31.414829, 30.414124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226714, -0.191839, -0.954882,
		-0.226756, -0.963865, 0.139806,
		-0.947197, 0.184829, -0.262022,
		34.297146, 31.470276, 30.335518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820747, 30.857708, 29.984169>,  <34.960186, 31.340900, 30.518932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820747, 30.857708, 29.984169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552151, 31.153080, 29.959440>,  <34.390991, 31.330303, 29.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552151, 31.153080, 29.959440>,  <34.820747, 30.857708, 29.984169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552151, 31.153080, 29.959440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017793, -0.099473, -0.994881,
		-0.740800, -0.666953, 0.079935,
		-0.671490, 0.738430, -0.061823,
		34.350704, 31.374609, 29.940893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718292, 30.786087, 29.306040>,  <34.820747, 30.857708, 29.984169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718292, 30.786087, 29.306040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526882, 31.122934, 29.405519>,  <34.412037, 31.325043, 29.465208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526882, 31.122934, 29.405519>,  <34.718292, 30.786087, 29.306040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526882, 31.122934, 29.405519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031239, 0.299383, -0.953622,
		-0.877520, -0.448560, -0.169568,
		-0.478522, 0.842119, 0.248702,
		34.383324, 31.375570, 29.480129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183113, 30.968380, 28.760418>,  <34.718292, 30.786087, 29.306040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183113, 30.968380, 28.760418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254307, 31.311741, 28.952862>,  <34.297024, 31.517757, 29.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254307, 31.311741, 28.952862>,  <34.183113, 30.968380, 28.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254307, 31.311741, 28.952862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076166, 0.499467, -0.862978,
		-0.981082, 0.116948, 0.154276,
		0.177980, 0.858403, 0.481111,
		34.307701, 31.569262, 29.097195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595284, 31.428726, 28.668831>,  <34.183113, 30.968380, 28.760418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595284, 31.428726, 28.668831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902637, 31.667704, 28.760609>,  <34.087051, 31.811090, 28.815676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902637, 31.667704, 28.760609>,  <33.595284, 31.428726, 28.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902637, 31.667704, 28.760609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199407, 0.564167, -0.801220,
		-0.608127, 0.569894, 0.552632,
		0.768387, 0.597442, 0.229444,
		34.133152, 31.846935, 28.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354927, 31.998676, 28.386536>,  <33.595284, 31.428726, 28.668831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354927, 31.998676, 28.386536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737473, 32.084713, 28.465635>,  <33.966999, 32.136333, 28.513096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737473, 32.084713, 28.465635>,  <33.354927, 31.998676, 28.386536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737473, 32.084713, 28.465635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038140, 0.762921, -0.645366,
		-0.289679, 0.609663, 0.737833,
		0.956364, 0.215090, 0.197749,
		34.024384, 32.149239, 28.524960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324196, 32.622349, 28.530270>,  <33.354927, 31.998676, 28.386536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324196, 32.622349, 28.530270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710884, 32.595165, 28.431610>,  <33.942898, 32.578854, 28.372414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710884, 32.595165, 28.431610>,  <33.324196, 32.622349, 28.530270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710884, 32.595165, 28.431610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102000, 0.781762, -0.615177,
		0.234629, 0.619862, 0.748812,
		0.966719, -0.067959, -0.246651,
		34.000900, 32.574776, 28.357615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660355, 33.346825, 28.487682>,  <33.324196, 32.622349, 28.530270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660355, 33.346825, 28.487682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897442, 33.115192, 28.263771>,  <34.039696, 32.976212, 28.129423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897442, 33.115192, 28.263771>,  <33.660355, 33.346825, 28.487682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897442, 33.115192, 28.263771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103178, 0.743890, -0.660289,
		0.798774, 0.333608, 0.500666,
		0.592718, -0.579079, -0.559779,
		34.075256, 32.941467, 28.095837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024437, 33.798634, 28.131548>,  <33.660355, 33.346825, 28.487682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024437, 33.798634, 28.131548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097317, 33.468739, 27.917400>,  <34.141045, 33.270802, 27.788912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097317, 33.468739, 27.917400>,  <34.024437, 33.798634, 28.131548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097317, 33.468739, 27.917400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203119, 0.564307, -0.800188,
		0.962053, 0.037051, 0.270336,
		0.182200, -0.824733, -0.535367,
		34.151978, 33.221317, 27.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683754, 33.932064, 27.717781>,  <34.024437, 33.798634, 28.131548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683754, 33.932064, 27.717781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482018, 33.633198, 27.544634>,  <34.360973, 33.453876, 27.440744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482018, 33.633198, 27.544634>,  <34.683754, 33.932064, 27.717781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482018, 33.633198, 27.544634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141037, 0.423285, -0.894952,
		0.851908, -0.512414, -0.108102,
		-0.504343, -0.747170, -0.432869,
		34.330715, 33.409046, 27.414774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154446, 33.998199, 27.249998>,  <34.683754, 33.932064, 27.717781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154446, 33.998199, 27.249998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819847, 33.801323, 27.153643>,  <34.619087, 33.683197, 27.095829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819847, 33.801323, 27.153643>,  <35.154446, 33.998199, 27.249998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819847, 33.801323, 27.153643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075191, 0.332346, -0.940155,
		0.542796, -0.804545, -0.240997,
		-0.836492, -0.492192, -0.240891,
		34.568901, 33.653664, 27.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294376, 33.641514, 26.649921>,  <35.154446, 33.998199, 27.249998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294376, 33.641514, 26.649921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895584, 33.672554, 26.649746>,  <34.656307, 33.691177, 26.649641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895584, 33.672554, 26.649746>,  <35.294376, 33.641514, 26.649921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895584, 33.672554, 26.649746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015003, 0.187200, -0.982207,
		-0.076139, -0.979252, -0.187800,
		-0.996984, 0.077602, -0.000439,
		34.596489, 33.695835, 26.649614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099983, 33.295818, 26.059711>,  <35.294376, 33.641514, 26.649921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099983, 33.295818, 26.059711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805599, 33.545910, 26.163605>,  <34.628971, 33.695965, 26.225941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805599, 33.545910, 26.163605>,  <35.099983, 33.295818, 26.059711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805599, 33.545910, 26.163605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070115, 0.311187, -0.947759,
		-0.673388, -0.715720, -0.185182,
		-0.735956, 0.625226, 0.259732,
		34.584812, 33.733479, 26.241524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577984, 33.248920, 25.589502>,  <35.099983, 33.295818, 26.059711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577984, 33.248920, 25.589502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503937, 33.606506, 25.752748>,  <34.459507, 33.821056, 25.850697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503937, 33.606506, 25.752748>,  <34.577984, 33.248920, 25.589502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503937, 33.606506, 25.752748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180662, 0.377257, -0.908316,
		-0.965967, -0.241877, 0.091668,
		-0.185118, 0.893964, 0.408116,
		34.448402, 33.874695, 25.875183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008564, 33.496105, 25.317007>,  <34.577984, 33.248920, 25.589502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008564, 33.496105, 25.317007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140621, 33.850266, 25.447897>,  <34.219856, 34.062759, 25.526430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140621, 33.850266, 25.447897>,  <34.008564, 33.496105, 25.317007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140621, 33.850266, 25.447897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242926, 0.414680, -0.876942,
		-0.912136, 0.210027, 0.351990,
		0.330145, 0.885398, 0.327224,
		34.239666, 34.115887, 25.546064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582073, 33.954376, 24.934872>,  <34.008564, 33.496105, 25.317007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582073, 33.954376, 24.934872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883747, 34.180630, 25.068295>,  <34.064751, 34.316383, 25.148348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883747, 34.180630, 25.068295>,  <33.582073, 33.954376, 24.934872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883747, 34.180630, 25.068295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014269, 0.521956, -0.852853,
		-0.656503, 0.638453, 0.401724,
		0.754188, 0.565633, 0.333556,
		34.110004, 34.350319, 25.168362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377312, 34.692932, 24.992167>,  <33.582073, 33.954376, 24.934872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377312, 34.692932, 24.992167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774143, 34.681110, 24.943335>,  <34.012241, 34.674019, 24.914036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774143, 34.681110, 24.943335>,  <33.377312, 34.692932, 24.992167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774143, 34.681110, 24.943335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058922, 0.748870, -0.660092,
		0.110930, 0.662057, 0.741198,
		0.992080, -0.029551, -0.122082,
		34.071766, 34.672245, 24.906710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489277, 35.410782, 24.796345>,  <33.377312, 34.692932, 24.992167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489277, 35.410782, 24.796345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826324, 35.220329, 24.695711>,  <34.028553, 35.106056, 24.635330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826324, 35.220329, 24.695711>,  <33.489277, 35.410782, 24.796345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826324, 35.220329, 24.695711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123106, 0.625125, -0.770755,
		0.524251, 0.618481, 0.585357,
		0.842618, -0.476130, -0.251584,
		34.079109, 35.077492, 24.620235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073517, 35.867012, 24.716549>,  <33.489277, 35.410782, 24.796345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073517, 35.867012, 24.716549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152981, 35.533665, 24.510235>,  <34.200657, 35.333656, 24.386446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152981, 35.533665, 24.510235>,  <34.073517, 35.867012, 24.716549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152981, 35.533665, 24.510235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111440, 0.542067, -0.832913,
		0.973713, 0.107985, 0.200556,
		0.198657, -0.833368, -0.515784,
		34.212578, 35.283653, 24.355499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298317, 36.229099, 24.220844>,  <34.073517, 35.867012, 24.716549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298317, 36.229099, 24.220844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321205, 35.853226, 24.085951>,  <34.334938, 35.627701, 24.005014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321205, 35.853226, 24.085951>,  <34.298317, 36.229099, 24.220844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321205, 35.853226, 24.085951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291577, 0.338790, -0.894541,
		0.954834, -0.047145, 0.293375,
		0.057220, -0.939680, -0.337235,
		34.338371, 35.571323, 23.984781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049404, 35.987900, 23.887043>,  <34.298317, 36.229099, 24.220844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049404, 35.987900, 23.887043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765335, 35.760849, 23.720448>,  <34.594894, 35.624619, 23.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765335, 35.760849, 23.720448>,  <35.049404, 35.987900, 23.887043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765335, 35.760849, 23.720448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117970, 0.487270, -0.865246,
		0.694076, -0.663605, -0.279082,
		-0.710170, -0.567623, -0.416488,
		34.552284, 35.590561, 23.595501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292797, 35.697147, 23.251160>,  <35.049404, 35.987900, 23.887043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292797, 35.697147, 23.251160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893536, 35.714096, 23.233793>,  <34.653976, 35.724266, 23.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893536, 35.714096, 23.233793>,  <35.292797, 35.697147, 23.251160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893536, 35.714096, 23.233793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058711, 0.494327, -0.867291,
		-0.015288, -0.868242, -0.495905,
		-0.998158, 0.042375, -0.043418,
		34.594090, 35.726807, 23.220768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262314, 35.626015, 22.564823>,  <35.292797, 35.697147, 23.251160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262314, 35.626015, 22.564823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923386, 35.795635, 22.692719>,  <34.720028, 35.897408, 22.769455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923386, 35.795635, 22.692719>,  <35.262314, 35.626015, 22.564823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923386, 35.795635, 22.692719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025903, 0.568335, -0.822389,
		-0.530451, -0.705109, -0.470578,
		-0.847320, 0.424048, 0.319738,
		34.669189, 35.922848, 22.788639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930904, 35.706219, 21.937323>,  <35.262314, 35.626015, 22.564823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930904, 35.706219, 21.937323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727531, 35.931343, 22.198011>,  <34.605507, 36.066418, 22.354425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727531, 35.931343, 22.198011>,  <34.930904, 35.706219, 21.937323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727531, 35.931343, 22.198011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045439, 0.738259, -0.672985,
		-0.859902, -0.371781, -0.349782,
		-0.508432, 0.562807, 0.651724,
		34.575001, 36.100185, 22.393528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181236, 35.960339, 21.593464>,  <34.930904, 35.706219, 21.937323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181236, 35.960339, 21.593464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283424, 36.213703, 21.885633>,  <34.344738, 36.365723, 22.060936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283424, 36.213703, 21.885633>,  <34.181236, 35.960339, 21.593464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283424, 36.213703, 21.885633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210603, 0.773811, -0.597380,
		-0.943601, -0.001218, 0.331083,
		0.255468, 0.633416, 0.730425,
		34.360065, 36.403728, 22.104761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647995, 36.453609, 21.528072>,  <34.181236, 35.960339, 21.593464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647995, 36.453609, 21.528072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960556, 36.609943, 21.722662>,  <34.148094, 36.703743, 21.839417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960556, 36.609943, 21.722662>,  <33.647995, 36.453609, 21.528072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960556, 36.609943, 21.722662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092673, 0.843605, -0.528906,
		-0.617109, 0.368206, 0.695414,
		0.781402, 0.390839, 0.486473,
		34.194977, 36.727196, 21.868605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477253, 37.178890, 21.690605>,  <33.647995, 36.453609, 21.528072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477253, 37.178890, 21.690605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874451, 37.131641, 21.691784>,  <34.112770, 37.103291, 21.692492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874451, 37.131641, 21.691784>,  <33.477253, 37.178890, 21.690605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874451, 37.131641, 21.691784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101280, 0.838049, -0.536113,
		0.060858, 0.532656, 0.844141,
		0.992995, -0.118122, 0.002945,
		34.172348, 37.096207, 21.692667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752522, 37.800510, 21.906029>,  <33.477253, 37.178890, 21.690605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752522, 37.800510, 21.906029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054298, 37.623425, 21.712194>,  <34.235363, 37.517174, 21.595894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054298, 37.623425, 21.712194>,  <33.752522, 37.800510, 21.906029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054298, 37.623425, 21.712194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210116, 0.862331, -0.460692,
		0.621828, 0.245745, 0.743599,
		0.754441, -0.442713, -0.484586,
		34.280632, 37.490612, 21.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196289, 38.283455, 21.906000>,  <33.752522, 37.800510, 21.906029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196289, 38.283455, 21.906000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365715, 38.045124, 21.633066>,  <34.467373, 37.902126, 21.469305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365715, 38.045124, 21.633066>,  <34.196289, 38.283455, 21.906000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365715, 38.045124, 21.633066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319003, 0.803100, -0.503257,
		0.847837, -0.004504, 0.530237,
		0.423567, -0.595827, -0.682335,
		34.492786, 37.866375, 21.428366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858189, 38.542305, 21.794247>,  <34.196289, 38.283455, 21.906000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858189, 38.542305, 21.794247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753117, 38.343697, 21.463316>,  <34.690075, 38.224533, 21.264757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753117, 38.343697, 21.463316>,  <34.858189, 38.542305, 21.794247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753117, 38.343697, 21.463316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189395, 0.814224, -0.548789,
		0.946113, -0.300847, -0.119842,
		-0.262680, -0.496519, -0.827326,
		34.674313, 38.194740, 21.215118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331520, 38.862251, 21.354910>,  <34.858189, 38.542305, 21.794247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331520, 38.862251, 21.354910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082527, 38.655815, 21.119566>,  <34.933132, 38.531952, 20.978359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082527, 38.655815, 21.119566>,  <35.331520, 38.862251, 21.354910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082527, 38.655815, 21.119566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006153, 0.748518, -0.663086,
		0.782612, -0.416377, -0.462761,
		-0.622479, -0.516092, -0.588361,
		34.895782, 38.500988, 20.943058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713425, 38.772366, 20.722214>,  <35.331520, 38.862251, 21.354910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713425, 38.772366, 20.722214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316730, 38.755592, 20.673698>,  <35.078716, 38.745529, 20.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316730, 38.755592, 20.673698>,  <35.713425, 38.772366, 20.722214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316730, 38.755592, 20.673698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039020, 0.801852, -0.596248,
		0.122257, -0.596050, -0.793585,
		-0.991731, -0.041930, -0.121290,
		35.019211, 38.743011, 20.637312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637283, 38.902061, 20.016272>,  <35.713425, 38.772366, 20.722214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637283, 38.902061, 20.016272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288502, 38.982014, 20.195044>,  <35.079235, 39.029987, 20.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288502, 38.982014, 20.195044>,  <35.637283, 38.902061, 20.016272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288502, 38.982014, 20.195044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097794, 0.823360, -0.559030,
		-0.479726, -0.531154, -0.698382,
		-0.871951, 0.199884, 0.446931,
		35.026917, 39.041977, 20.329123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182896, 39.158512, 19.478882>,  <35.637283, 38.902061, 20.016272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182896, 39.158512, 19.478882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961594, 39.272141, 19.792112>,  <34.828812, 39.340317, 19.980051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961594, 39.272141, 19.792112>,  <35.182896, 39.158512, 19.478882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961594, 39.272141, 19.792112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195505, 0.869517, -0.453562,
		-0.809742, -0.404032, -0.425529,
		-0.553259, 0.284075, 0.783075,
		34.795616, 39.357365, 20.027035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472527, 39.310539, 19.242367>,  <35.182896, 39.158512, 19.478882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472527, 39.310539, 19.242367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501797, 39.508102, 19.588940>,  <34.519360, 39.626640, 19.796883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501797, 39.508102, 19.588940>,  <34.472527, 39.310539, 19.242367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501797, 39.508102, 19.588940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366606, 0.821256, -0.437194,
		-0.927495, -0.285649, 0.241161,
		0.073171, 0.493906, 0.866431,
		34.523746, 39.656273, 19.848869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876900, 39.570461, 19.611853>,  <34.472527, 39.310539, 19.242367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876900, 39.570461, 19.611853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166904, 39.824375, 19.718740>,  <34.340908, 39.976723, 19.782873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166904, 39.824375, 19.718740>,  <33.876900, 39.570461, 19.611853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166904, 39.824375, 19.718740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541416, 0.765103, -0.348550,
		-0.425704, 0.108026, 0.898391,
		0.725014, 0.634782, 0.267220,
		34.384407, 40.014809, 19.798906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644215, 40.052692, 20.226206>,  <33.876900, 39.570461, 19.611853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644215, 40.052692, 20.226206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902802, 40.164989, 19.942440>,  <34.057953, 40.232368, 19.772181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902802, 40.164989, 19.942440>,  <33.644215, 40.052692, 20.226206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902802, 40.164989, 19.942440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654742, 0.681477, -0.326958,
		0.391659, 0.675850, 0.624363,
		0.646464, 0.280741, -0.709414,
		34.096741, 40.249210, 19.729616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181732, 40.636093, 20.167679>,  <33.644215, 40.052692, 20.226206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181732, 40.636093, 20.167679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136169, 41.025883, 20.245066>,  <34.108833, 41.259758, 20.291498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136169, 41.025883, 20.245066>,  <34.181732, 40.636093, 20.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136169, 41.025883, 20.245066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029205, 0.197933, -0.979780,
		-0.993063, -0.105949, -0.051004,
		-0.113903, 0.974473, 0.193466,
		34.101997, 41.318226, 20.303106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632999, 40.987198, 19.743565>,  <34.181732, 40.636093, 20.167679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632999, 40.987198, 19.743565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955608, 41.208176, 19.827782>,  <34.149174, 41.340763, 19.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955608, 41.208176, 19.827782>,  <33.632999, 40.987198, 19.743565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955608, 41.208176, 19.827782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266018, -0.021076, -0.963738,
		-0.527975, 0.833283, -0.163958,
		0.806522, 0.552445, 0.210541,
		34.197563, 41.373909, 19.890944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624645, 41.555012, 19.318806>,  <33.632999, 40.987198, 19.743565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624645, 41.555012, 19.318806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995110, 41.450069, 19.427176>,  <34.217388, 41.387104, 19.492199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995110, 41.450069, 19.427176>,  <33.624645, 41.555012, 19.318806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995110, 41.450069, 19.427176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267112, -0.050816, -0.962325,
		0.266237, 0.963633, 0.023014,
		0.926158, -0.262354, 0.270927,
		34.272957, 41.371365, 19.508453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053070, 41.894753, 18.927155>,  <33.624645, 41.555012, 19.318806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053070, 41.894753, 18.927155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293919, 41.606377, 19.064384>,  <34.438427, 41.433350, 19.146723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293919, 41.606377, 19.064384>,  <34.053070, 41.894753, 18.927155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293919, 41.606377, 19.064384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423050, -0.076330, -0.902886,
		0.677114, 0.688781, 0.259034,
		0.602118, -0.720940, 0.343073,
		34.474552, 41.390095, 19.167307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783081, 42.057034, 18.893391>,  <34.053070, 41.894753, 18.927155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783081, 42.057034, 18.893391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743614, 41.659016, 18.888578>,  <34.719933, 41.420204, 18.885691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743614, 41.659016, 18.888578>,  <34.783081, 42.057034, 18.893391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743614, 41.659016, 18.888578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359898, -0.024409, -0.932673,
		0.927760, -0.096355, 0.360524,
		-0.098668, -0.995048, -0.012033,
		34.714012, 41.360500, 18.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915443, 41.883560, 19.644018>,  <34.783081, 42.057034, 18.893391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915443, 41.883560, 19.644018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524986, 41.922737, 19.566494>,  <34.290714, 41.946243, 19.519979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524986, 41.922737, 19.566494>,  <34.915443, 41.883560, 19.644018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524986, 41.922737, 19.566494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200150, -0.059611, 0.977950,
		0.084227, 0.993405, 0.077792,
		-0.976138, 0.097940, -0.193809,
		34.232143, 41.952118, 19.508352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497143, 42.471928, 19.980719>,  <34.915443, 41.883560, 19.644018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497143, 42.471928, 19.980719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268036, 42.146820, 19.938105>,  <34.130573, 41.951756, 19.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268036, 42.146820, 19.938105>,  <34.497143, 42.471928, 19.980719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268036, 42.146820, 19.938105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159587, -0.016916, 0.987039,
		-0.804034, 0.582345, -0.120018,
		-0.572767, -0.812766, -0.106536,
		34.096207, 41.902988, 19.906143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923225, 42.585949, 20.445721>,  <34.497143, 42.471928, 19.980719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923225, 42.585949, 20.445721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957253, 42.190029, 20.400023>,  <33.977669, 41.952477, 20.372602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957253, 42.190029, 20.400023>,  <33.923225, 42.585949, 20.445721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957253, 42.190029, 20.400023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001153, -0.114761, 0.993393,
		-0.996375, -0.084371, -0.010904,
		0.085065, -0.989804, -0.114248,
		33.982773, 41.893089, 20.365747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572010, 42.300613, 20.903503>,  <33.923225, 42.585949, 20.445721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572010, 42.300613, 20.903503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794514, 41.979229, 20.818626>,  <33.928017, 41.786400, 20.767700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794514, 41.979229, 20.818626>,  <33.572010, 42.300613, 20.903503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794514, 41.979229, 20.818626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154869, -0.150638, 0.976383,
		-0.816451, -0.575983, 0.040637,
		0.556259, -0.803462, -0.212191,
		33.961391, 41.738190, 20.754969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370567, 41.707771, 21.317125>,  <33.572010, 42.300613, 20.903503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370567, 41.707771, 21.317125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754570, 41.650398, 21.220947>,  <33.984970, 41.615974, 21.163240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754570, 41.650398, 21.220947>,  <33.370567, 41.707771, 21.317125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754570, 41.650398, 21.220947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210606, -0.195927, 0.957736,
		-0.184460, -0.970075, -0.157888,
		0.960010, -0.143412, -0.240444,
		34.042572, 41.607368, 21.148813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598438, 41.095936, 21.622704>,  <33.370567, 41.707771, 21.317125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598438, 41.095936, 21.622704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931114, 41.309101, 21.560349>,  <34.130718, 41.437000, 21.522936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931114, 41.309101, 21.560349>,  <33.598438, 41.095936, 21.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931114, 41.309101, 21.560349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310478, -0.213589, 0.926274,
		0.460330, -0.818768, -0.343097,
		0.831685, 0.532915, -0.155888,
		34.180618, 41.468975, 21.513582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136860, 40.643993, 21.991083>,  <33.598438, 41.095936, 21.622704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136860, 40.643993, 21.991083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324112, 40.986790, 21.904900>,  <34.436462, 41.192467, 21.853189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324112, 40.986790, 21.904900>,  <34.136860, 40.643993, 21.991083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324112, 40.986790, 21.904900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460627, -0.028578, 0.887133,
		0.754108, -0.514538, -0.408132,
		0.468127, 0.856991, -0.215459,
		34.464550, 41.243889, 21.840261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769352, 40.500092, 22.089493>,  <34.136860, 40.643993, 21.991083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769352, 40.500092, 22.089493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769176, 40.897911, 22.131187>,  <34.769070, 41.136604, 22.156204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769176, 40.897911, 22.131187>,  <34.769352, 40.500092, 22.089493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769176, 40.897911, 22.131187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333358, -0.098128, 0.937680,
		0.942800, 0.035162, -0.331499,
		-0.000442, 0.994552, 0.104237,
		34.769043, 41.196278, 22.162458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378033, 40.716007, 22.511944>,  <34.769352, 40.500092, 22.089493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378033, 40.716007, 22.511944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157974, 41.049473, 22.531353>,  <35.025940, 41.249550, 22.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157974, 41.049473, 22.531353>,  <35.378033, 40.716007, 22.511944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157974, 41.049473, 22.531353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163805, 0.050752, 0.985187,
		0.818848, 0.549940, -0.164478,
		-0.550141, 0.833660, 0.048524,
		34.992931, 41.299572, 22.545910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794617, 41.183846, 22.858543>,  <35.378033, 40.716007, 22.511944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794617, 41.183846, 22.858543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432671, 41.346588, 22.908644>,  <35.215504, 41.444233, 22.938704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432671, 41.346588, 22.908644>,  <35.794617, 41.183846, 22.858543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432671, 41.346588, 22.908644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169160, 0.073651, 0.982833,
		0.390647, 0.910518, -0.135468,
		-0.904865, 0.406856, 0.125252,
		35.161213, 41.468643, 22.946218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866505, 41.779423, 23.236324>,  <35.794617, 41.183846, 22.858543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866505, 41.779423, 23.236324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497593, 41.640709, 23.304609>,  <35.276245, 41.557480, 23.345579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497593, 41.640709, 23.304609>,  <35.866505, 41.779423, 23.236324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497593, 41.640709, 23.304609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185644, -0.010038, 0.982566,
		-0.339023, 0.937892, 0.073636,
		-0.922280, -0.346783, 0.170711,
		35.220909, 41.536674, 23.355822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540283, 42.244480, 23.862782>,  <35.866505, 41.779423, 23.236324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540283, 42.244480, 23.862782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296833, 41.927990, 23.838997>,  <35.150764, 41.738094, 23.824726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296833, 41.927990, 23.838997>,  <35.540283, 42.244480, 23.862782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296833, 41.927990, 23.838997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178916, 0.063844, 0.981791,
		-0.773023, 0.608181, -0.180420,
		-0.608625, -0.791227, -0.059460,
		35.114246, 41.690620, 23.821159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027058, 42.315903, 24.365656>,  <35.540283, 42.244480, 23.862782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027058, 42.315903, 24.365656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025600, 41.922428, 24.293724>,  <35.024727, 41.686344, 24.250565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025600, 41.922428, 24.293724>,  <35.027058, 42.315903, 24.365656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025600, 41.922428, 24.293724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151104, -0.177226, 0.972501,
		-0.988511, 0.030720, -0.147994,
		-0.003647, -0.983691, -0.179832,
		35.024506, 41.627319, 24.239775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415771, 42.058060, 24.640165>,  <35.027058, 42.315903, 24.365656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415771, 42.058060, 24.640165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652287, 41.735912, 24.623404>,  <34.794197, 41.542625, 24.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652287, 41.735912, 24.623404>,  <34.415771, 42.058060, 24.640165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652287, 41.735912, 24.623404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291014, -0.261542, 0.920275,
		-0.752120, -0.531956, -0.389021,
		0.591292, -0.805368, -0.041904,
		34.829674, 41.494301, 24.610832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954941, 41.450943, 24.908752>,  <34.415771, 42.058060, 24.640165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954941, 41.450943, 24.908752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333706, 41.329586, 24.951277>,  <34.560966, 41.256771, 24.976791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333706, 41.329586, 24.951277>,  <33.954941, 41.450943, 24.908752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333706, 41.329586, 24.951277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207632, -0.324705, 0.922743,
		-0.245436, -0.895834, -0.370463,
		0.946916, -0.303394, 0.106310,
		34.617783, 41.238567, 24.983170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927841, 40.734627, 25.177975>,  <33.954941, 41.450943, 24.908752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927841, 40.734627, 25.177975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303783, 40.845501, 25.257811>,  <34.529350, 40.912025, 25.305712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303783, 40.845501, 25.257811>,  <33.927841, 40.734627, 25.177975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303783, 40.845501, 25.257811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091940, -0.357475, 0.929386,
		0.328959, -0.891841, -0.310491,
		0.939858, 0.277184, 0.199591,
		34.585739, 40.928658, 25.317688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174133, 40.152115, 25.457909>,  <33.927841, 40.734627, 25.177975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174133, 40.152115, 25.457909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388958, 40.461407, 25.592777>,  <34.517853, 40.646980, 25.673698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388958, 40.461407, 25.592777>,  <34.174133, 40.152115, 25.457909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388958, 40.461407, 25.592777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003599, -0.397604, 0.917550,
		0.843533, -0.493998, -0.210757,
		0.537066, 0.773225, 0.337170,
		34.550079, 40.693375, 25.693928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812355, 39.908913, 25.759624>,  <34.174133, 40.152115, 25.457909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812355, 39.908913, 25.759624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728302, 40.265633, 25.919895>,  <34.677872, 40.479664, 26.016058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728302, 40.265633, 25.919895>,  <34.812355, 39.908913, 25.759624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728302, 40.265633, 25.919895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097629, -0.426917, 0.899006,
		0.972787, 0.149792, 0.176774,
		-0.210131, 0.891799, 0.400675,
		34.665264, 40.533173, 26.040098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120052, 39.832619, 26.453297>,  <34.812355, 39.908913, 25.759624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120052, 39.832619, 26.453297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890049, 40.158997, 26.477310>,  <34.752045, 40.354824, 26.491718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890049, 40.158997, 26.477310>,  <35.120052, 39.832619, 26.453297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890049, 40.158997, 26.477310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289715, -0.271691, 0.917742,
		0.765133, 0.510319, 0.392615,
		-0.575011, 0.815941, 0.060033,
		34.717545, 40.403778, 26.495319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185421, 40.071331, 27.116034>,  <35.120052, 39.832619, 26.453297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185421, 40.071331, 27.116034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854645, 40.281162, 27.035053>,  <34.656178, 40.407063, 26.986465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854645, 40.281162, 27.035053>,  <35.185421, 40.071331, 27.116034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854645, 40.281162, 27.035053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393870, -0.283446, 0.874371,
		0.401293, 0.802792, 0.441009,
		-0.826940, 0.524579, -0.202451,
		34.606564, 40.438538, 26.974318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028194, 40.372864, 27.788090>,  <35.185421, 40.071331, 27.116034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028194, 40.372864, 27.788090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683258, 40.393665, 27.586628>,  <34.476295, 40.406147, 27.465752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683258, 40.393665, 27.586628>,  <35.028194, 40.372864, 27.788090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683258, 40.393665, 27.586628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502206, -0.214533, 0.837714,
		-0.064489, 0.975332, 0.211115,
		-0.862340, 0.052000, -0.503653,
		34.424557, 40.409264, 27.435532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547527, 40.750874, 28.255098>,  <35.028194, 40.372864, 27.788090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547527, 40.750874, 28.255098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304684, 40.568176, 27.995005>,  <34.158978, 40.458557, 27.838947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304684, 40.568176, 27.995005>,  <34.547527, 40.750874, 28.255098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304684, 40.568176, 27.995005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640032, -0.203895, 0.740801,
		-0.470937, 0.865916, -0.168546,
		-0.607106, -0.456745, -0.650235,
		34.122551, 40.431152, 27.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838490, 41.008598, 28.424995>,  <34.547527, 40.750874, 28.255098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838490, 41.008598, 28.424995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838104, 40.640633, 28.268148>,  <33.837872, 40.419853, 28.174040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838104, 40.640633, 28.268148>,  <33.838490, 41.008598, 28.424995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838104, 40.640633, 28.268148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594643, -0.314728, 0.739828,
		-0.803989, 0.233884, -0.546717,
		-0.000967, -0.919915, -0.392116,
		33.837814, 40.364658, 28.150515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181942, 40.789009, 28.542004>,  <33.838490, 41.008598, 28.424995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181942, 40.789009, 28.542004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404388, 40.462662, 28.478647>,  <33.537857, 40.266853, 28.440634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404388, 40.462662, 28.478647>,  <33.181942, 40.789009, 28.542004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404388, 40.462662, 28.478647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510731, -0.485830, 0.709312,
		-0.655660, -0.313563, -0.686869,
		0.556115, -0.815872, -0.158392,
		33.571224, 40.217899, 28.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677353, 40.291954, 28.589775>,  <33.181942, 40.789009, 28.542004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677353, 40.291954, 28.589775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024200, 40.102779, 28.652292>,  <33.232311, 39.989273, 28.689802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024200, 40.102779, 28.652292>,  <32.677353, 40.291954, 28.589775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024200, 40.102779, 28.652292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445330, -0.595556, 0.668576,
		-0.223116, -0.649338, -0.727034,
		0.867122, -0.472941, 0.156292,
		33.284336, 39.960896, 28.699181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476810, 39.531155, 28.650539>,  <32.677353, 40.291954, 28.589775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476810, 39.531155, 28.650539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855282, 39.568222, 28.774578>,  <33.082363, 39.590462, 28.849001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855282, 39.568222, 28.774578>,  <32.476810, 39.531155, 28.650539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855282, 39.568222, 28.774578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178004, -0.651204, 0.737731,
		0.270297, -0.753224, -0.599661,
		0.946179, 0.092664, 0.310096,
		33.139137, 39.596020, 28.867607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677444, 38.882759, 28.510824>,  <32.476810, 39.531155, 28.650539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677444, 38.882759, 28.510824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912273, 39.056015, 28.784388>,  <33.053169, 39.159969, 28.948526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912273, 39.056015, 28.784388>,  <32.677444, 38.882759, 28.510824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912273, 39.056015, 28.784388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102688, -0.798150, 0.593642,
		0.802995, -0.418741, -0.424093,
		0.587072, 0.433142, 0.683911,
		33.088394, 39.185959, 28.989561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244633, 38.365742, 28.603079>,  <32.677444, 38.882759, 28.510824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244633, 38.365742, 28.603079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177025, 38.609905, 28.912617>,  <33.136459, 38.756401, 29.098339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177025, 38.609905, 28.912617>,  <33.244633, 38.365742, 28.603079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177025, 38.609905, 28.912617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049023, -0.789376, 0.611949,
		0.984392, 0.065498, 0.163348,
		-0.169024, 0.610406, 0.773845,
		33.126316, 38.793026, 29.144770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742138, 38.117393, 29.104595>,  <33.244633, 38.365742, 28.603079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742138, 38.117393, 29.104595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480644, 38.327591, 29.322399>,  <33.323750, 38.453709, 29.453081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480644, 38.327591, 29.322399>,  <33.742138, 38.117393, 29.104595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480644, 38.327591, 29.322399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106639, -0.776356, 0.621208,
		0.749174, 0.348038, 0.563567,
		-0.653733, 0.525491, 0.544511,
		33.284523, 38.485237, 29.485752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980549, 38.009476, 29.792814>,  <33.742138, 38.117393, 29.104595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980549, 38.009476, 29.792814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603565, 38.129467, 29.851849>,  <33.377377, 38.201462, 29.887270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603565, 38.129467, 29.851849>,  <33.980549, 38.009476, 29.792814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603565, 38.129467, 29.851849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091251, -0.655504, 0.749658,
		0.321626, 0.693055, 0.645160,
		-0.942460, 0.299981, 0.147585,
		33.320827, 38.219460, 29.896124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874863, 38.020912, 30.448948>,  <33.980549, 38.009476, 29.792814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874863, 38.020912, 30.448948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490070, 38.015434, 30.339832>,  <33.259197, 38.012146, 30.274363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490070, 38.015434, 30.339832>,  <33.874863, 38.020912, 30.448948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490070, 38.015434, 30.339832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216142, -0.572415, 0.790964,
		-0.166982, 0.819849, 0.547690,
		-0.961977, -0.013698, -0.272787,
		33.201477, 38.011326, 30.257996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517612, 38.176743, 31.041674>,  <33.874863, 38.020912, 30.448948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517612, 38.176743, 31.041674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240471, 38.004131, 30.810593>,  <33.074184, 37.900566, 30.671944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240471, 38.004131, 30.810593>,  <33.517612, 38.176743, 31.041674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240471, 38.004131, 30.810593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415279, -0.416163, 0.808920,
		-0.589490, 0.800370, 0.109134,
		-0.692853, -0.431529, -0.577700,
		33.032616, 37.874672, 30.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841194, 38.260635, 31.400202>,  <33.517612, 38.176743, 31.041674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841194, 38.260635, 31.400202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813644, 37.954380, 31.144373>,  <32.797115, 37.770626, 30.990875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813644, 37.954380, 31.144373>,  <32.841194, 38.260635, 31.400202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813644, 37.954380, 31.144373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302582, -0.594863, 0.744702,
		-0.950632, 0.244814, -0.190698,
		-0.068874, -0.765639, -0.639572,
		32.792984, 37.724689, 30.952501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180973, 37.805840, 31.557974>,  <32.841194, 38.260635, 31.400202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180973, 37.805840, 31.557974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414017, 37.568710, 31.335577>,  <32.553844, 37.426434, 31.202139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414017, 37.568710, 31.335577>,  <32.180973, 37.805840, 31.557974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414017, 37.568710, 31.335577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249010, -0.781381, 0.572221,
		-0.773656, -0.194946, -0.602870,
		0.582624, -0.592823, -0.555977,
		32.588799, 37.390862, 31.168779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927679, 37.163967, 31.581339>,  <32.180973, 37.805840, 31.557974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927679, 37.163967, 31.581339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294155, 37.080120, 31.444719>,  <32.514042, 37.029812, 31.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294155, 37.080120, 31.444719>,  <31.927679, 37.163967, 31.581339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294155, 37.080120, 31.444719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044646, -0.793594, 0.606808,
		-0.398249, -0.571200, -0.717724,
		0.916190, -0.209617, -0.341550,
		32.569012, 37.017235, 31.342255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841347, 36.503124, 31.395243>,  <31.927679, 37.163967, 31.581339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841347, 36.503124, 31.395243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234512, 36.561138, 31.440584>,  <32.470409, 36.595947, 31.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234512, 36.561138, 31.440584>,  <31.841347, 36.503124, 31.395243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234512, 36.561138, 31.440584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059839, -0.834108, 0.548346,
		0.174079, -0.532193, -0.828533,
		0.982912, 0.145034, 0.113355,
		32.529385, 36.604649, 31.474590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017925, 35.850842, 31.516670>,  <31.841347, 36.503124, 31.395243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017925, 35.850842, 31.516670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358765, 36.031624, 31.622250>,  <32.563267, 36.140095, 31.685598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358765, 36.031624, 31.622250>,  <32.017925, 35.850842, 31.516670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358765, 36.031624, 31.622250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262370, -0.805219, 0.531774,
		0.452877, -0.383869, -0.804703,
		0.852094, 0.451958, 0.263950,
		32.614391, 36.167210, 31.701435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543495, 35.308147, 31.433252>,  <32.017925, 35.850842, 31.516670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543495, 35.308147, 31.433252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677689, 35.580475, 31.693695>,  <32.758205, 35.743870, 31.849960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677689, 35.580475, 31.693695>,  <32.543495, 35.308147, 31.433252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677689, 35.580475, 31.693695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536343, -0.706247, 0.462116,
		0.774459, 0.194185, -0.602085,
		0.335484, 0.680814, 0.651109,
		32.778336, 35.784718, 31.889029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206066, 35.157543, 31.444347>,  <32.543495, 35.308147, 31.433252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206066, 35.157543, 31.444347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123386, 35.357018, 31.781059>,  <33.073780, 35.476700, 31.983086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123386, 35.357018, 31.781059>,  <33.206066, 35.157543, 31.444347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123386, 35.357018, 31.781059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515682, -0.675629, 0.526876,
		0.831474, 0.542993, -0.117513,
		-0.206695, 0.498683, 0.841780,
		33.061378, 35.506622, 32.033592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818478, 35.206585, 31.842028>,  <33.206066, 35.157543, 31.444347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818478, 35.206585, 31.842028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521011, 35.247421, 32.106312>,  <33.342533, 35.271923, 32.264881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521011, 35.247421, 32.106312>,  <33.818478, 35.206585, 31.842028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521011, 35.247421, 32.106312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559562, -0.445773, 0.698696,
		0.365858, 0.889305, 0.274380,
		-0.743665, 0.102091, 0.660711,
		33.297913, 35.278049, 32.304523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227646, 35.246410, 32.477806>,  <33.818478, 35.206585, 31.842028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227646, 35.246410, 32.477806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852928, 35.184013, 32.603081>,  <33.628098, 35.146576, 32.678246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852928, 35.184013, 32.603081>,  <34.227646, 35.246410, 32.477806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852928, 35.184013, 32.603081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345428, -0.269832, 0.898816,
		-0.055704, 0.950187, 0.306662,
		-0.936791, -0.155997, 0.313191,
		33.571892, 35.137215, 32.697037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082481, 35.553322, 33.197418>,  <34.227646, 35.246410, 32.477806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082481, 35.553322, 33.197418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780144, 35.292824, 33.170322>,  <33.598743, 35.136524, 33.154064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780144, 35.292824, 33.170322>,  <34.082481, 35.553322, 33.197418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780144, 35.292824, 33.170322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137669, -0.259219, 0.955956,
		-0.640119, 0.713225, 0.285585,
		-0.755841, -0.651242, -0.067742,
		33.553391, 35.097450, 33.150002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611366, 35.525791, 33.699642>,  <34.082481, 35.553322, 33.197418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611366, 35.525791, 33.699642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971844, 35.627628, 33.839947>,  <35.188129, 35.688732, 33.924129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971844, 35.627628, 33.839947>,  <34.611366, 35.525791, 33.699642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971844, 35.627628, 33.839947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158768, 0.559116, -0.813746,
		-0.403289, 0.789032, 0.463451,
		0.901194, 0.254593, 0.350758,
		35.242203, 35.704006, 33.945175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683685, 36.349060, 33.773918>,  <34.611366, 35.525791, 33.699642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683685, 36.349060, 33.773918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037712, 36.164692, 33.747967>,  <35.250130, 36.054073, 33.732395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037712, 36.164692, 33.747967>,  <34.683685, 36.349060, 33.773918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037712, 36.164692, 33.747967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245763, 0.581132, -0.775813,
		0.395290, 0.670702, 0.627618,
		0.885069, -0.460917, -0.064882,
		35.303234, 36.026417, 33.728500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168518, 36.871475, 33.667549>,  <34.683685, 36.349060, 33.773918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168518, 36.871475, 33.667549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381683, 36.555359, 33.546597>,  <35.509583, 36.365688, 33.474026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381683, 36.555359, 33.546597>,  <35.168518, 36.871475, 33.667549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381683, 36.555359, 33.546597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332414, 0.524159, -0.784065,
		0.778140, 0.317323, 0.542037,
		0.532916, -0.790293, -0.302386,
		35.541557, 36.318272, 33.455879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908207, 37.047615, 33.515915>,  <35.168518, 36.871475, 33.667549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908207, 37.047615, 33.515915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880001, 36.708508, 33.305653>,  <35.863079, 36.505043, 33.179493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880001, 36.708508, 33.305653>,  <35.908207, 37.047615, 33.515915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880001, 36.708508, 33.305653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400499, 0.458571, -0.793293,
		0.913580, -0.266462, 0.307195,
		-0.070512, -0.847768, -0.525659,
		35.858849, 36.454178, 33.147953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532043, 36.870865, 33.223549>,  <35.908207, 37.047615, 33.515915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532043, 36.870865, 33.223549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287823, 36.675140, 32.974457>,  <36.141289, 36.557705, 32.825001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287823, 36.675140, 32.974457>,  <36.532043, 36.870865, 33.223549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287823, 36.675140, 32.974457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507200, 0.362317, -0.781968,
		0.608256, -0.793283, 0.026967,
		-0.610551, -0.489314, -0.622734,
		36.104656, 36.528347, 32.787636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928631, 36.525513, 32.694248>,  <36.532043, 36.870865, 33.223549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928631, 36.525513, 32.694248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556625, 36.542454, 32.548214>,  <36.333424, 36.552616, 32.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556625, 36.542454, 32.548214>,  <36.928631, 36.525513, 32.694248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556625, 36.542454, 32.548214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342644, 0.459206, -0.819588,
		0.132939, -0.887320, -0.441577,
		-0.930012, 0.042349, -0.365081,
		36.277622, 36.555157, 32.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000118, 36.187714, 31.941637>,  <36.928631, 36.525513, 32.694248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000118, 36.187714, 31.941637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663612, 36.403954, 31.939466>,  <36.461708, 36.533695, 31.938164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663612, 36.403954, 31.939466>,  <37.000118, 36.187714, 31.941637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663612, 36.403954, 31.939466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292973, 0.447435, -0.844967,
		-0.454359, -0.712430, -0.534791,
		-0.841264, 0.540598, -0.005426,
		36.411232, 36.566132, 31.937840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783424, 36.136135, 31.244534>,  <37.000118, 36.187714, 31.941637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783424, 36.136135, 31.244534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600388, 36.444500, 31.421761>,  <36.490566, 36.629520, 31.528097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600388, 36.444500, 31.421761>,  <36.783424, 36.136135, 31.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600388, 36.444500, 31.421761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342560, 0.612677, -0.712235,
		-0.820527, -0.174134, -0.544438,
		-0.457589, 0.770911, 0.443067,
		36.463112, 36.675774, 31.554680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344898, 36.493038, 30.747000>,  <36.783424, 36.136135, 31.244534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344898, 36.493038, 30.747000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383430, 36.761456, 31.041052>,  <36.406548, 36.922508, 31.217484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383430, 36.761456, 31.041052>,  <36.344898, 36.493038, 30.747000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383430, 36.761456, 31.041052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233027, 0.702835, -0.672102,
		-0.967687, 0.236048, -0.088670,
		0.096328, 0.671047, 0.735130,
		36.412331, 36.962769, 31.261591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261234, 37.114586, 30.424618>,  <36.344898, 36.493038, 30.747000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261234, 37.114586, 30.424618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432308, 37.242035, 30.762981>,  <36.534950, 37.318504, 30.966000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432308, 37.242035, 30.762981>,  <36.261234, 37.114586, 30.424618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432308, 37.242035, 30.762981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472793, 0.718751, -0.509769,
		-0.770425, 0.617959, 0.156752,
		0.427682, 0.318627, 0.845911,
		36.560612, 37.337624, 31.016754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890377, 37.801933, 30.537836>,  <36.261234, 37.114586, 30.424618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890377, 37.801933, 30.537836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232521, 37.808407, 30.744951>,  <36.437805, 37.812290, 30.869221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232521, 37.808407, 30.744951>,  <35.890377, 37.801933, 30.537836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232521, 37.808407, 30.744951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245301, 0.867704, -0.432338,
		-0.456280, 0.496817, 0.738228,
		0.855357, 0.016179, 0.517786,
		36.489128, 37.813259, 30.900288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940544, 38.523003, 30.821514>,  <35.890377, 37.801933, 30.537836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940544, 38.523003, 30.821514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314121, 38.380344, 30.830915>,  <36.538269, 38.294750, 30.836557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314121, 38.380344, 30.830915>,  <35.940544, 38.523003, 30.821514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314121, 38.380344, 30.830915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333542, 0.846045, -0.415882,
		0.128435, 0.396250, 0.909115,
		0.933945, -0.356642, 0.023504,
		36.594303, 38.273354, 30.837967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309433, 38.997169, 31.216675>,  <35.940544, 38.523003, 30.821514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309433, 38.997169, 31.216675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550877, 38.812912, 30.956379>,  <36.695744, 38.702358, 30.800201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550877, 38.812912, 30.956379>,  <36.309433, 38.997169, 31.216675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550877, 38.812912, 30.956379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229979, 0.882105, -0.411097,
		0.763389, 0.098486, 0.638386,
		0.603611, -0.460643, -0.650739,
		36.731960, 38.674721, 30.761158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963684, 39.430286, 31.160706>,  <36.309433, 38.997169, 31.216675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963684, 39.430286, 31.160706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951920, 39.199955, 30.833889>,  <36.944859, 39.061756, 30.637798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951920, 39.199955, 30.833889>,  <36.963684, 39.430286, 31.160706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951920, 39.199955, 30.833889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231386, 0.791270, -0.565996,
		0.972417, -0.205700, 0.109965,
		-0.029413, -0.575828, -0.817041,
		36.943096, 39.027206, 30.588778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462952, 39.728432, 30.744652>,  <36.963684, 39.430286, 31.160706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462952, 39.728432, 30.744652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234028, 39.504585, 30.504887>,  <37.096672, 39.370277, 30.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234028, 39.504585, 30.504887>,  <37.462952, 39.728432, 30.744652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234028, 39.504585, 30.504887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065045, 0.697675, -0.713455,
		0.817454, -0.447305, -0.362886,
		-0.572309, -0.559613, -0.599413,
		37.062336, 39.336700, 30.325064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678978, 39.915829, 30.083611>,  <37.462952, 39.728432, 30.744652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678978, 39.915829, 30.083611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354801, 39.701866, 29.988058>,  <37.160297, 39.573490, 29.930727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354801, 39.701866, 29.988058>,  <37.678978, 39.915829, 30.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354801, 39.701866, 29.988058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100870, 0.529097, -0.842545,
		0.577075, -0.658734, -0.482756,
		-0.810438, -0.534907, -0.238882,
		37.111668, 39.541393, 29.916393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807106, 39.553234, 29.395622>,  <37.678978, 39.915829, 30.083611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807106, 39.553234, 29.395622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427197, 39.646736, 29.478851>,  <37.199253, 39.702839, 29.528790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427197, 39.646736, 29.478851>,  <37.807106, 39.553234, 29.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427197, 39.646736, 29.478851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059051, 0.519071, -0.852689,
		-0.307326, -0.822145, -0.479195,
		-0.949770, 0.233757, 0.208072,
		37.142265, 39.716862, 29.541273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467918, 39.464802, 28.727282>,  <37.807106, 39.553234, 29.395622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467918, 39.464802, 28.727282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217178, 39.683178, 28.949633>,  <37.066734, 39.814205, 29.083044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217178, 39.683178, 28.949633>,  <37.467918, 39.464802, 28.727282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217178, 39.683178, 28.949633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150927, 0.614858, -0.774062,
		-0.764379, -0.569121, -0.303029,
		-0.626854, 0.545941, 0.555880,
		37.029121, 39.846962, 29.116396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737953, 39.481747, 28.460321>,  <37.467918, 39.464802, 28.727282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737953, 39.481747, 28.460321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756584, 39.828175, 28.659418>,  <36.767765, 40.036034, 28.778875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756584, 39.828175, 28.659418>,  <36.737953, 39.481747, 28.460321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756584, 39.828175, 28.659418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004070, 0.498113, -0.867103,
		-0.998906, 0.042417, 0.019678,
		0.046582, 0.866074, 0.497741,
		36.770557, 40.087997, 28.808741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203476, 39.835526, 28.211374>,  <36.737953, 39.481747, 28.460321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203476, 39.835526, 28.211374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462048, 40.095135, 28.371826>,  <36.617191, 40.250900, 28.468098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462048, 40.095135, 28.371826>,  <36.203476, 39.835526, 28.211374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462048, 40.095135, 28.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025270, 0.507243, -0.861432,
		-0.762556, 0.566991, 0.311495,
		0.646428, 0.649019, 0.401129,
		36.655975, 40.289841, 28.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888512, 40.523800, 28.191557>,  <36.203476, 39.835526, 28.211374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888512, 40.523800, 28.191557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286808, 40.558350, 28.204489>,  <36.525784, 40.579079, 28.212248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286808, 40.558350, 28.204489>,  <35.888512, 40.523800, 28.191557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286808, 40.558350, 28.204489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029821, 0.633227, -0.773391,
		-0.087275, 0.769131, 0.633104,
		0.995738, 0.086378, 0.032329,
		36.585529, 40.584263, 28.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031616, 41.225628, 27.932518>,  <35.888512, 40.523800, 28.191557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031616, 41.225628, 27.932518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412865, 41.104824, 27.924919>,  <36.641613, 41.032341, 27.920359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412865, 41.104824, 27.924919>,  <36.031616, 41.225628, 27.932518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412865, 41.104824, 27.924919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162074, 0.562500, -0.810756,
		0.255540, 0.769666, 0.585076,
		0.953116, -0.302007, -0.018998,
		36.698799, 41.014221, 27.919220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386272, 41.813774, 27.877871>,  <36.031616, 41.225628, 27.932518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386272, 41.813774, 27.877871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623226, 41.524628, 27.735580>,  <36.765400, 41.351139, 27.650206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623226, 41.524628, 27.735580>,  <36.386272, 41.813774, 27.877871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623226, 41.524628, 27.735580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162115, 0.539461, -0.826257,
		0.789173, 0.431796, 0.436758,
		0.592388, -0.722865, -0.355727,
		36.800941, 41.307770, 27.628862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905151, 42.237236, 27.475151>,  <36.386272, 41.813774, 27.877871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905151, 42.237236, 27.475151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937057, 41.858116, 27.351658>,  <36.956200, 41.630646, 27.277563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937057, 41.858116, 27.351658>,  <36.905151, 42.237236, 27.475151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937057, 41.858116, 27.351658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312189, 0.317889, -0.895257,
		0.946666, -0.024974, 0.321248,
		0.079763, -0.947799, -0.308731,
		36.960987, 41.573776, 27.259039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462444, 42.217045, 27.109209>,  <36.905151, 42.237236, 27.475151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462444, 42.217045, 27.109209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282696, 41.878048, 26.996195>,  <37.174847, 41.674652, 26.928387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282696, 41.878048, 26.996195>,  <37.462444, 42.217045, 27.109209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282696, 41.878048, 26.996195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421772, 0.077530, -0.903381,
		0.787511, -0.525120, 0.322608,
		-0.449371, -0.847490, -0.282537,
		37.147884, 41.623802, 26.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896084, 41.878883, 26.559507>,  <37.462444, 42.217045, 27.109209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896084, 41.878883, 26.559507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520336, 41.749146, 26.514990>,  <37.294888, 41.671303, 26.488279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520336, 41.749146, 26.514990>,  <37.896084, 41.878883, 26.559507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520336, 41.749146, 26.514990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143274, -0.076365, -0.986732,
		0.311546, -0.942850, 0.118205,
		-0.939368, -0.324348, -0.111294,
		37.238525, 41.651840, 26.481602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975311, 41.249050, 26.143608>,  <37.896084, 41.878883, 26.559507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975311, 41.249050, 26.143608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614792, 41.420208, 26.116570>,  <37.398479, 41.522903, 26.100346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614792, 41.420208, 26.116570>,  <37.975311, 41.249050, 26.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614792, 41.420208, 26.116570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133936, 0.126850, -0.982838,
		-0.411979, -0.894881, -0.171640,
		-0.901296, 0.427898, -0.067597,
		37.344402, 41.548576, 26.096291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589859, 40.795841, 25.577913>,  <37.975311, 41.249050, 26.143608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589859, 40.795841, 25.577913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437801, 41.164181, 25.612602>,  <37.346565, 41.385185, 25.633415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437801, 41.164181, 25.612602>,  <37.589859, 40.795841, 25.577913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437801, 41.164181, 25.612602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021541, 0.102551, -0.994495,
		-0.924675, -0.376186, -0.058821,
		-0.380147, 0.920851, 0.086723,
		37.323757, 41.440437, 25.638618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158730, 40.838543, 25.056406>,  <37.589859, 40.795841, 25.577913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158730, 40.838543, 25.056406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179035, 41.228764, 25.141928>,  <37.191219, 41.462898, 25.193241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179035, 41.228764, 25.141928>,  <37.158730, 40.838543, 25.056406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179035, 41.228764, 25.141928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135556, 0.205369, -0.969251,
		-0.989468, 0.078190, -0.121817,
		0.050769, 0.975556, 0.213806,
		37.194267, 41.521431, 25.206070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675301, 41.325279, 24.692430>,  <37.158730, 40.838543, 25.056406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675301, 41.325279, 24.692430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981171, 41.571014, 24.770262>,  <37.164692, 41.718456, 24.816959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981171, 41.571014, 24.770262>,  <36.675301, 41.325279, 24.692430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981171, 41.571014, 24.770262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069187, 0.221930, -0.972605,
		-0.640688, 0.757191, 0.127201,
		0.764677, 0.614336, 0.194576,
		37.210575, 41.755314, 24.828634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605045, 41.863922, 24.288073>,  <36.675301, 41.325279, 24.692430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605045, 41.863922, 24.288073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971134, 41.979019, 24.400909>,  <37.190788, 42.048077, 24.468611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971134, 41.979019, 24.400909>,  <36.605045, 41.863922, 24.288073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971134, 41.979019, 24.400909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131014, 0.449529, -0.883606,
		-0.381061, 0.845651, 0.373719,
		0.915220, 0.287745, 0.282090,
		37.245701, 42.065342, 24.485537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616776, 42.562016, 23.970675>,  <36.605045, 41.863922, 24.288073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616776, 42.562016, 23.970675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988064, 42.430340, 24.040005>,  <37.210838, 42.351334, 24.081602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988064, 42.430340, 24.040005>,  <36.616776, 42.562016, 23.970675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988064, 42.430340, 24.040005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246910, 0.196604, -0.948885,
		0.278289, 0.923569, 0.263772,
		0.928219, -0.329192, 0.173326,
		37.266529, 42.331581, 24.092003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041721, 43.002750, 23.611790>,  <36.616776, 42.562016, 23.970675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041721, 43.002750, 23.611790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250813, 42.663860, 23.649666>,  <37.376266, 42.460526, 23.672392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250813, 42.663860, 23.649666>,  <37.041721, 43.002750, 23.611790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250813, 42.663860, 23.649666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286952, 0.070271, -0.955364,
		0.802752, 0.526571, 0.279845,
		0.522732, -0.847222, 0.094690,
		37.407631, 42.409695, 23.678072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747158, 43.149632, 23.221331>,  <37.041721, 43.002750, 23.611790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747158, 43.149632, 23.221331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683342, 42.756180, 23.254852>,  <37.645050, 42.520111, 23.274965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683342, 42.756180, 23.254852>,  <37.747158, 43.149632, 23.221331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683342, 42.756180, 23.254852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280257, -0.126527, -0.951550,
		0.946574, -0.128328, 0.295855,
		-0.159544, -0.983627, 0.083802,
		37.635479, 42.461090, 23.279993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278522, 42.923710, 22.884398>,  <37.747158, 43.149632, 23.221331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278522, 42.923710, 22.884398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014671, 42.623844, 22.905891>,  <37.856361, 42.443924, 22.918787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014671, 42.623844, 22.905891>,  <38.278522, 42.923710, 22.884398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014671, 42.623844, 22.905891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174939, -0.222672, -0.959069,
		0.730946, -0.623233, 0.278027,
		-0.659632, -0.749666, 0.053733,
		37.816780, 42.398945, 22.922010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647129, 42.403301, 22.767212>,  <38.278522, 42.923710, 22.884398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647129, 42.403301, 22.767212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269836, 42.309490, 22.673145>,  <38.043461, 42.253204, 22.616705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269836, 42.309490, 22.673145>,  <38.647129, 42.403301, 22.767212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269836, 42.309490, 22.673145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207244, 0.137690, -0.968551,
		0.259537, -0.962308, -0.081268,
		-0.943234, -0.234532, -0.235168,
		37.986866, 42.239132, 22.602594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684330, 41.947384, 22.311701>,  <38.647129, 42.403301, 22.767212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684330, 41.947384, 22.311701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309498, 42.070343, 22.245506>,  <38.084599, 42.144119, 22.205790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309498, 42.070343, 22.245506>,  <38.684330, 41.947384, 22.311701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309498, 42.070343, 22.245506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147394, -0.081345, -0.985727,
		-0.316469, -0.948099, 0.030919,
		-0.937082, 0.307394, -0.165487,
		38.028374, 42.162560, 22.195860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403931, 41.544704, 21.820845>,  <38.684330, 41.947384, 22.311701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403931, 41.544704, 21.820845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207584, 41.892086, 21.793041>,  <38.089775, 42.100517, 21.776360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207584, 41.892086, 21.793041>,  <38.403931, 41.544704, 21.820845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207584, 41.892086, 21.793041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108624, -0.018154, -0.993917,
		-0.864436, -0.495431, -0.085424,
		-0.490867, 0.868457, -0.069508,
		38.060326, 42.152622, 21.772188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790592, 41.128231, 21.380695>,  <38.403931, 41.544704, 21.820845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790592, 41.128231, 21.380695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169189, 41.198898, 21.272671>,  <39.396347, 41.241299, 21.207855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169189, 41.198898, 21.272671>,  <38.790592, 41.128231, 21.380695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169189, 41.198898, 21.272671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320492, -0.416495, 0.850774,
		0.037824, -0.891807, -0.450832,
		0.946496, 0.176667, -0.270063,
		39.453136, 41.251900, 21.191652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183792, 40.486336, 21.553015>,  <38.790592, 41.128231, 21.380695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183792, 40.486336, 21.553015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446209, 40.783581, 21.500269>,  <39.603661, 40.961929, 21.468620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446209, 40.783581, 21.500269>,  <39.183792, 40.486336, 21.553015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446209, 40.783581, 21.500269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507666, -0.305213, 0.805680,
		0.558466, -0.595504, -0.577487,
		0.656042, 0.743115, -0.131866,
		39.643021, 41.006516, 21.460709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881943, 40.168602, 21.511662>,  <39.183792, 40.486336, 21.553015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881943, 40.168602, 21.511662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 40.549980, 21.623236>,  <39.955307, 40.778805, 21.690180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 40.549980, 21.623236>,  <39.881943, 40.168602, 21.511662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927795, 40.549980, 21.623236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292912, -0.300745, 0.907610,
		0.949243, -0.022336, -0.313749,
		0.114630, 0.953443, 0.278937,
		39.962185, 40.836014, 21.706917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514309, 40.206867, 21.884945>,  <39.881943, 40.168602, 21.511662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514309, 40.206867, 21.884945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296997, 40.527237, 21.985638>,  <40.166611, 40.719460, 22.046053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296997, 40.527237, 21.985638>,  <40.514309, 40.206867, 21.884945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296997, 40.527237, 21.985638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047882, -0.269796, 0.961726,
		0.838182, 0.534544, 0.108226,
		-0.543284, 0.800920, 0.251733,
		40.134010, 40.767513, 22.061157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904064, 40.462479, 22.344015>,  <40.514309, 40.206867, 21.884945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904064, 40.462479, 22.344015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530849, 40.599293, 22.388672>,  <40.306923, 40.681381, 22.415466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530849, 40.599293, 22.388672>,  <40.904064, 40.462479, 22.344015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530849, 40.599293, 22.388672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018722, -0.263716, 0.964419,
		0.359305, 0.901924, 0.239652,
		-0.933032, 0.342034, 0.111640,
		40.250938, 40.701904, 22.422163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820763, 41.006954, 22.817970>,  <40.904064, 40.462479, 22.344015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820763, 41.006954, 22.817970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457825, 40.838840, 22.821522>,  <40.240063, 40.737972, 22.823652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457825, 40.838840, 22.821522>,  <40.820763, 41.006954, 22.817970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457825, 40.838840, 22.821522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130715, -0.262004, 0.956173,
		-0.399541, 0.868743, 0.292666,
		-0.907348, -0.420286, 0.008877,
		40.185619, 40.712753, 22.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397762, 41.235626, 23.401905>,  <40.820763, 41.006954, 22.817970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397762, 41.235626, 23.401905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184986, 40.910473, 23.307028>,  <40.057320, 40.715382, 23.250101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184986, 40.910473, 23.307028>,  <40.397762, 41.235626, 23.401905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184986, 40.910473, 23.307028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122255, -0.203452, 0.971422,
		-0.837911, 0.545736, 0.008845,
		-0.531939, -0.812884, -0.237194,
		40.025406, 40.666607, 23.235870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888725, 41.254326, 23.859503>,  <40.397762, 41.235626, 23.401905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888725, 41.254326, 23.859503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865025, 40.871021, 23.747631>,  <39.850803, 40.641037, 23.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865025, 40.871021, 23.747631>,  <39.888725, 41.254326, 23.859503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865025, 40.871021, 23.747631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140287, -0.269399, 0.952756,
		-0.988336, 0.095686, -0.118470,
		-0.059250, -0.958263, -0.279680,
		39.847248, 40.583542, 23.663727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208748, 40.949276, 24.168392>,  <39.888725, 41.254326, 23.859503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208748, 40.949276, 24.168392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450542, 40.643429, 24.078991>,  <39.595619, 40.459919, 24.025351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450542, 40.643429, 24.078991>,  <39.208748, 40.949276, 24.168392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450542, 40.643429, 24.078991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150326, -0.385011, 0.910587,
		-0.782306, -0.516835, -0.347675,
		0.604482, -0.764623, -0.223503,
		39.631886, 40.414043, 24.011940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845207, 40.442253, 24.404770>,  <39.208748, 40.949276, 24.168392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845207, 40.442253, 24.404770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210155, 40.278599, 24.410240>,  <39.429123, 40.180405, 24.413523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210155, 40.278599, 24.410240>,  <38.845207, 40.442253, 24.404770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210155, 40.278599, 24.410240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158871, -0.323102, 0.932934,
		-0.377283, -0.853352, -0.359789,
		0.912369, -0.409140, 0.013672,
		39.483868, 40.155857, 24.414343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730579, 39.812378, 24.638834>,  <38.845207, 40.442253, 24.404770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730579, 39.812378, 24.638834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117931, 39.892685, 24.698086>,  <39.350342, 39.940868, 24.733637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117931, 39.892685, 24.698086>,  <38.730579, 39.812378, 24.638834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117931, 39.892685, 24.698086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100776, -0.228382, 0.968342,
		0.228241, -0.952646, -0.200927,
		0.968375, 0.200766, 0.148130,
		39.408443, 39.952915, 24.742525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009975, 39.201538, 25.013290>,  <38.730579, 39.812378, 24.638834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009975, 39.201538, 25.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267570, 39.504337, 25.057550>,  <39.422127, 39.686016, 25.084106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267570, 39.504337, 25.057550>,  <39.009975, 39.201538, 25.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267570, 39.504337, 25.057550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110106, -0.234836, 0.965779,
		0.757073, -0.609764, -0.234580,
		0.643985, 0.756994, 0.110649,
		39.460766, 39.731434, 25.090746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566971, 38.961914, 25.377926>,  <39.009975, 39.201538, 25.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566971, 38.961914, 25.377926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564999, 39.357498, 25.437168>,  <39.563816, 39.594849, 25.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564999, 39.357498, 25.437168>,  <39.566971, 38.961914, 25.377926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564999, 39.357498, 25.437168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135631, -0.146076, 0.979932,
		0.990747, 0.024920, -0.133413,
		-0.004932, 0.988959, 0.148104,
		39.563519, 39.654186, 25.481600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172840, 39.070343, 25.812271>,  <39.566971, 38.961914, 25.377926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172840, 39.070343, 25.812271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964088, 39.409134, 25.852812>,  <39.838837, 39.612408, 25.877136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964088, 39.409134, 25.852812>,  <40.172840, 39.070343, 25.812271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964088, 39.409134, 25.852812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047602, -0.089716, 0.994829,
		0.851688, 0.524008, 0.006503,
		-0.521882, 0.846975, 0.101353,
		39.807526, 39.663227, 25.883219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430588, 39.498474, 26.357008>,  <40.172840, 39.070343, 25.812271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430588, 39.498474, 26.357008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069260, 39.669487, 26.342936>,  <39.852463, 39.772095, 26.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069260, 39.669487, 26.342936>,  <40.430588, 39.498474, 26.357008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069260, 39.669487, 26.342936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083462, -0.094712, 0.992000,
		0.420776, 0.899026, 0.121237,
		-0.903317, 0.427529, -0.035182,
		39.798264, 39.797745, 26.332380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428329, 39.933880, 26.907967>,  <40.430588, 39.498474, 26.357008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428329, 39.933880, 26.907967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040070, 39.888283, 26.823261>,  <39.807114, 39.860924, 26.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040070, 39.888283, 26.823261>,  <40.428329, 39.933880, 26.907967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040070, 39.888283, 26.823261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201419, -0.095801, 0.974809,
		-0.131410, 0.988852, 0.070028,
		-0.970650, -0.113995, -0.211763,
		39.748875, 39.854084, 26.759733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069527, 40.366123, 27.506094>,  <40.428329, 39.933880, 26.907967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069527, 40.366123, 27.506094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803101, 40.115971, 27.343489>,  <39.643246, 39.965878, 27.245926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803101, 40.115971, 27.343489>,  <40.069527, 40.366123, 27.506094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803101, 40.115971, 27.343489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228837, -0.347388, 0.909371,
		-0.709925, 0.698723, 0.088271,
		-0.666063, -0.625386, -0.406513,
		39.603283, 39.928356, 27.221535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380432, 40.367569, 27.919220>,  <40.069527, 40.366123, 27.506094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380432, 40.367569, 27.919220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326958, 40.034515, 27.704245>,  <39.294872, 39.834682, 27.575258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326958, 40.034515, 27.704245>,  <39.380432, 40.367569, 27.919220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326958, 40.034515, 27.704245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438780, -0.436528, 0.785440,
		-0.888595, 0.340818, -0.306988,
		-0.133683, -0.832638, -0.537440,
		39.286854, 39.784725, 27.543013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811195, 40.199600, 28.177717>,  <39.380432, 40.367569, 27.919220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811195, 40.199600, 28.177717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983845, 39.873589, 28.023088>,  <39.087433, 39.677982, 27.930311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983845, 39.873589, 28.023088>,  <38.811195, 40.199600, 28.177717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983845, 39.873589, 28.023088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257340, -0.521990, 0.813205,
		-0.864569, -0.251516, -0.435040,
		0.431621, -0.815025, -0.386571,
		39.113331, 39.629082, 27.907118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333130, 39.617748, 28.272150>,  <38.811195, 40.199600, 28.177717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333130, 39.617748, 28.272150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695412, 39.449791, 28.248867>,  <38.912781, 39.349014, 28.234898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695412, 39.449791, 28.248867>,  <38.333130, 39.617748, 28.272150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695412, 39.449791, 28.248867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196942, -0.538383, 0.819364,
		-0.375386, -0.730638, -0.570311,
		0.905704, -0.419896, -0.058208,
		38.967121, 39.323822, 28.231405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273743, 38.913074, 28.464605>,  <38.333130, 39.617748, 28.272150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273743, 38.913074, 28.464605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654091, 39.023426, 28.520815>,  <38.882298, 39.089638, 28.554541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654091, 39.023426, 28.520815>,  <38.273743, 38.913074, 28.464605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654091, 39.023426, 28.520815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041433, -0.563186, 0.825291,
		0.306817, -0.778919, -0.546945,
		0.950866, 0.275875, 0.140522,
		38.939350, 39.106190, 28.562971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624596, 38.326740, 28.797310>,  <38.273743, 38.913074, 28.464605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624596, 38.326740, 28.797310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891258, 38.617794, 28.861965>,  <39.051254, 38.792427, 28.900759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891258, 38.617794, 28.861965>,  <38.624596, 38.326740, 28.797310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891258, 38.617794, 28.861965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146588, -0.340608, 0.928708,
		0.730810, -0.595433, -0.333730,
		0.666654, 0.727630, 0.161637,
		39.091255, 38.836082, 28.910456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208363, 37.980080, 28.975735>,  <38.624596, 38.326740, 28.797310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208363, 37.980080, 28.975735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234097, 38.348221, 29.130035>,  <39.249538, 38.569107, 29.222616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234097, 38.348221, 29.130035>,  <39.208363, 37.980080, 28.975735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234097, 38.348221, 29.130035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279122, -0.387721, 0.878501,
		0.958098, 0.051154, -0.281836,
		0.064335, 0.920356, 0.385753,
		39.253395, 38.624329, 29.245762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692688, 37.858185, 29.458239>,  <39.208363, 37.980080, 28.975735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692688, 37.858185, 29.458239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518829, 38.206413, 29.550489>,  <39.414516, 38.415352, 29.605841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518829, 38.206413, 29.550489>,  <39.692688, 37.858185, 29.458239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518829, 38.206413, 29.550489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056346, -0.229295, 0.971725,
		0.898838, 0.435349, 0.050609,
		-0.434644, 0.870572, 0.230629,
		39.388435, 38.467587, 29.619678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124321, 38.200771, 29.979153>,  <39.692688, 37.858185, 29.458239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124321, 38.200771, 29.979153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763626, 38.365902, 30.030428>,  <39.547207, 38.464981, 30.061193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763626, 38.365902, 30.030428>,  <40.124321, 38.200771, 29.979153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763626, 38.365902, 30.030428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147770, 0.015704, 0.988897,
		0.406234, 0.910672, -0.075165,
		-0.901742, 0.412831, 0.128191,
		39.493103, 38.489750, 30.068886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251179, 38.512390, 30.582932>,  <40.124321, 38.200771, 29.979153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251179, 38.512390, 30.582932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851910, 38.520363, 30.560097>,  <39.612350, 38.525146, 30.546396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851910, 38.520363, 30.560097>,  <40.251179, 38.512390, 30.582932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851910, 38.520363, 30.560097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058444, -0.075841, 0.995406,
		0.015511, 0.996921, 0.076867,
		-0.998170, 0.019932, -0.057088,
		39.552460, 38.526344, 30.542971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014149, 39.042088, 31.071171>,  <40.251179, 38.512390, 30.582932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014149, 39.042088, 31.071171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698177, 38.798336, 31.043850>,  <39.508595, 38.652084, 31.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698177, 38.798336, 31.043850>,  <40.014149, 39.042088, 31.071171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698177, 38.798336, 31.043850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148065, -0.297643, 0.943125,
		-0.595054, 0.734889, 0.325345,
		-0.789929, -0.609383, -0.068302,
		39.461197, 38.615520, 31.023359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608540, 39.245670, 31.547604>,  <40.014149, 39.042088, 31.071171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608540, 39.245670, 31.547604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461906, 38.880539, 31.475649>,  <39.373928, 38.661461, 31.432476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461906, 38.880539, 31.475649>,  <39.608540, 39.245670, 31.547604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461906, 38.880539, 31.475649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111045, -0.234890, 0.965658,
		-0.923735, 0.334018, 0.187471,
		-0.366583, -0.912830, -0.179885,
		39.351933, 38.606689, 31.421682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333351, 39.015202, 32.072586>,  <39.608540, 39.245670, 31.547604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333351, 39.015202, 32.072586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378323, 38.638721, 31.945145>,  <39.405304, 38.412834, 31.868681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378323, 38.638721, 31.945145>,  <39.333351, 39.015202, 32.072586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378323, 38.638721, 31.945145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019478, -0.318484, 0.947728,
		-0.993469, -0.112757, -0.017474,
		0.112428, -0.941198, -0.318600,
		39.412052, 38.356361, 31.849566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859379, 38.638332, 32.521278>,  <39.333351, 39.015202, 32.072586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859379, 38.638332, 32.521278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095879, 38.353226, 32.370338>,  <39.237778, 38.182163, 32.279774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095879, 38.353226, 32.370338>,  <38.859379, 38.638332, 32.521278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095879, 38.353226, 32.370338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218741, -0.592082, 0.775623,
		-0.776259, -0.376043, -0.505978,
		0.591249, -0.712763, -0.377353,
		39.273254, 38.139397, 32.257133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472881, 38.073967, 32.667992>,  <38.859379, 38.638332, 32.521278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472881, 38.073967, 32.667992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828362, 37.923107, 32.563713>,  <39.041649, 37.832592, 32.501144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828362, 37.923107, 32.563713>,  <38.472881, 38.073967, 32.667992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828362, 37.923107, 32.563713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086469, -0.696280, 0.712543,
		-0.450256, -0.610697, -0.651398,
		0.888703, -0.377152, -0.260698,
		39.094971, 37.809963, 32.485504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286373, 37.445309, 32.732258>,  <38.472881, 38.073967, 32.667992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286373, 37.445309, 32.732258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685429, 37.464836, 32.751572>,  <38.924862, 37.476555, 32.763161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685429, 37.464836, 32.751572>,  <38.286373, 37.445309, 32.732258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685429, 37.464836, 32.751572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005973, -0.762215, 0.647297,
		0.068403, -0.645481, -0.760707,
		0.997640, 0.048821, 0.048282,
		38.984722, 37.479481, 32.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489838, 36.762054, 32.696022>,  <38.286373, 37.445309, 32.732258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489838, 36.762054, 32.696022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796463, 36.969578, 32.847397>,  <38.980438, 37.094090, 32.938221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796463, 36.969578, 32.847397>,  <38.489838, 36.762054, 32.696022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796463, 36.969578, 32.847397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127093, -0.700233, 0.702511,
		0.629461, -0.490425, -0.602712,
		0.766568, 0.518804, 0.378439,
		39.026432, 37.125217, 32.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919300, 36.299702, 32.886230>,  <38.489838, 36.762054, 32.696022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919300, 36.299702, 32.886230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033581, 36.606056, 33.116634>,  <39.102150, 36.789871, 33.254875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033581, 36.606056, 33.116634>,  <38.919300, 36.299702, 32.886230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033581, 36.606056, 33.116634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066863, -0.615528, 0.785274,
		0.955983, -0.185841, -0.227068,
		0.285703, 0.765891, 0.576008,
		39.119293, 36.835823, 33.289436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506657, 36.053055, 33.206841>,  <38.919300, 36.299702, 32.886230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506657, 36.053055, 33.206841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397152, 36.345554, 33.456745>,  <39.331448, 36.521053, 33.606686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397152, 36.345554, 33.456745>,  <39.506657, 36.053055, 33.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397152, 36.345554, 33.456745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194856, -0.593936, 0.780558,
		0.941852, 0.335424, 0.020107,
		-0.273761, 0.731253, 0.624759,
		39.315025, 36.564930, 33.644173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941837, 35.988384, 33.645306>,  <39.506657, 36.053055, 33.206841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941837, 35.988384, 33.645306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675846, 36.219460, 33.834656>,  <39.516251, 36.358105, 33.948265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675846, 36.219460, 33.834656>,  <39.941837, 35.988384, 33.645306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675846, 36.219460, 33.834656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191908, -0.480378, 0.855808,
		0.721790, 0.659936, 0.208577,
		-0.664974, 0.577686, 0.473379,
		39.476353, 36.392765, 33.976669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247948, 36.196896, 34.245586>,  <39.941837, 35.988384, 33.645306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247948, 36.196896, 34.245586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855350, 36.225880, 34.316490>,  <39.619793, 36.243271, 34.359032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855350, 36.225880, 34.316490>,  <40.247948, 36.196896, 34.245586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855350, 36.225880, 34.316490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093030, -0.628660, 0.772096,
		0.167382, 0.774297, 0.610284,
		-0.981493, 0.072460, 0.177259,
		39.560902, 36.247616, 34.369667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187515, 36.158215, 35.009201>,  <40.247948, 36.196896, 34.245586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187515, 36.158215, 35.009201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807980, 36.096500, 34.899006>,  <39.580257, 36.059471, 34.832890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807980, 36.096500, 34.899006>,  <40.187515, 36.158215, 35.009201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807980, 36.096500, 34.899006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130706, -0.602307, 0.787491,
		-0.287424, 0.783213, 0.551329,
		-0.948843, -0.154282, -0.275489,
		39.523327, 36.050217, 34.816360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825291, 36.279976, 35.624489>,  <40.187515, 36.158215, 35.009201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825291, 36.279976, 35.624489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587406, 36.055511, 35.394215>,  <39.444675, 35.920834, 35.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587406, 36.055511, 35.394215>,  <39.825291, 36.279976, 35.624489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587406, 36.055511, 35.394215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232758, -0.565225, 0.791419,
		-0.769507, 0.604662, 0.205531,
		-0.594712, -0.561164, -0.575685,
		39.408993, 35.887161, 35.221508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198902, 36.301460, 36.085049>,  <39.825291, 36.279976, 35.624489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198902, 36.301460, 36.085049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181374, 35.997025, 35.826183>,  <39.170856, 35.814362, 35.670864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181374, 35.997025, 35.826183>,  <39.198902, 36.301460, 36.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181374, 35.997025, 35.826183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271401, -0.614351, 0.740887,
		-0.961468, 0.208109, -0.179638,
		-0.043825, -0.761094, -0.647160,
		39.168224, 35.768696, 35.632034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564323, 35.952393, 36.205338>,  <39.198902, 36.301460, 36.085049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564323, 35.952393, 36.205338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830555, 35.707928, 36.033997>,  <38.990295, 35.561249, 35.931190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830555, 35.707928, 36.033997>,  <38.564323, 35.952393, 36.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830555, 35.707928, 36.033997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258868, -0.727367, 0.635550,
		-0.699989, -0.312125, -0.642334,
		0.665584, -0.611158, -0.428350,
		39.030228, 35.524578, 35.905491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177959, 35.425819, 36.046860>,  <38.564323, 35.952393, 36.205338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177959, 35.425819, 36.046860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551613, 35.283405, 36.056847>,  <38.775806, 35.197956, 36.062840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551613, 35.283405, 36.056847>,  <38.177959, 35.425819, 36.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551613, 35.283405, 36.056847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289850, -0.715933, 0.635159,
		-0.208263, -0.600564, -0.771978,
		0.934138, -0.356038, 0.024971,
		38.831856, 35.176594, 36.064339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180363, 34.747822, 36.001465>,  <38.177959, 35.425819, 36.046860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180363, 34.747822, 36.001465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551247, 34.783939, 36.146866>,  <38.773777, 34.805611, 36.234104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551247, 34.783939, 36.146866>,  <38.180363, 34.747822, 36.001465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551247, 34.783939, 36.146866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124293, -0.841334, 0.526031,
		0.353321, -0.532921, -0.768869,
		0.927208, 0.090293, 0.363499,
		38.829411, 34.811028, 36.255917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496571, 34.055473, 35.947495>,  <38.180363, 34.747822, 36.001465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496571, 34.055473, 35.947495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720970, 34.265133, 36.203789>,  <38.855610, 34.390930, 36.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720970, 34.265133, 36.203789>,  <38.496571, 34.055473, 35.947495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720970, 34.265133, 36.203789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098280, -0.810708, 0.577142,
		0.821960, -0.260807, -0.506322,
		0.561002, 0.524149, 0.640738,
		38.889271, 34.422379, 36.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062569, 33.639626, 36.013306>,  <38.496571, 34.055473, 35.947495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062569, 33.639626, 36.013306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052662, 33.872166, 36.338619>,  <39.046719, 34.011688, 36.533806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052662, 33.872166, 36.338619>,  <39.062569, 33.639626, 36.013306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052662, 33.872166, 36.338619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141211, -0.803338, 0.578539,
		0.989670, 0.129170, -0.062200,
		-0.024762, 0.581346, 0.813280,
		39.045235, 34.046570, 36.582603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368286, 33.213482, 36.335583>,  <39.062569, 33.639626, 36.013306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368286, 33.213482, 36.335583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208454, 33.484673, 36.582382>,  <39.112556, 33.647388, 36.730461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208454, 33.484673, 36.582382>,  <39.368286, 33.213482, 36.335583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208454, 33.484673, 36.582382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132487, -0.708708, 0.692950,
		0.907075, 0.195144, 0.373007,
		-0.399578, 0.677976, 0.616997,
		39.088581, 33.688065, 36.767483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686306, 33.099216, 36.969650>,  <39.368286, 33.213482, 36.335583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686306, 33.099216, 36.969650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336025, 33.277260, 37.044506>,  <39.125854, 33.384087, 37.089420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336025, 33.277260, 37.044506>,  <39.686306, 33.099216, 36.969650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336025, 33.277260, 37.044506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127551, -0.587056, 0.799435,
		0.465693, 0.676200, 0.570862,
		-0.875706, 0.445105, 0.187138,
		39.073315, 33.410793, 37.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666656, 33.155540, 37.594566>,  <39.686306, 33.099216, 36.969650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666656, 33.155540, 37.594566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275723, 33.161213, 37.510078>,  <39.041161, 33.164616, 37.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275723, 33.161213, 37.510078>,  <39.666656, 33.155540, 37.594566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275723, 33.161213, 37.510078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178132, -0.594199, 0.784345,
		-0.114378, 0.804193, 0.583259,
		-0.977337, 0.014185, -0.211216,
		38.982521, 33.165470, 37.446712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418819, 32.805260, 38.110958>,  <39.666656, 33.155540, 37.594566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418819, 32.805260, 38.110958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060703, 32.882668, 37.950459>,  <38.845833, 32.929111, 37.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060703, 32.882668, 37.950459>,  <39.418819, 32.805260, 38.110958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060703, 32.882668, 37.950459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427308, -0.627665, 0.650726,
		-0.125918, 0.754047, 0.644638,
		-0.895295, 0.193521, -0.401245,
		38.792114, 32.940723, 37.830086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958679, 32.915768, 38.702419>,  <39.418819, 32.805260, 38.110958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958679, 32.915768, 38.702419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745880, 32.819229, 38.377769>,  <38.618202, 32.761307, 38.182980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745880, 32.819229, 38.377769>,  <38.958679, 32.915768, 38.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745880, 32.819229, 38.377769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474166, -0.709222, 0.521700,
		-0.701533, 0.662386, 0.262862,
		-0.531994, -0.241350, -0.811623,
		38.586281, 32.746822, 38.134281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220566, 32.772827, 38.843117>,  <38.958679, 32.915768, 38.702419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220566, 32.772827, 38.843117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275986, 32.560040, 38.508976>,  <38.309238, 32.432369, 38.308491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275986, 32.560040, 38.508976>,  <38.220566, 32.772827, 38.843117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275986, 32.560040, 38.508976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061701, -0.846487, 0.528821,
		-0.988431, -0.021728, -0.150106,
		0.138553, -0.531965, -0.835354,
		38.317551, 32.400452, 38.258369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744099, 32.189991, 38.842419>,  <38.220566, 32.772827, 38.843117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744099, 32.189991, 38.842419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044044, 32.085442, 38.599308>,  <38.224010, 32.022713, 38.453442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044044, 32.085442, 38.599308>,  <37.744099, 32.189991, 38.842419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044044, 32.085442, 38.599308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037320, -0.933899, 0.355584,
		-0.660540, -0.243957, -0.710051,
		0.749863, -0.261376, -0.607773,
		38.269005, 32.007030, 38.416977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396236, 31.797453, 38.358288>,  <37.744099, 32.189991, 38.842419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396236, 31.797453, 38.358288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785461, 31.730171, 38.421360>,  <38.018997, 31.689802, 38.459202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785461, 31.730171, 38.421360>,  <37.396236, 31.797453, 38.358288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785461, 31.730171, 38.421360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219816, -0.883151, 0.414398,
		0.069553, -0.437894, -0.896332,
		0.973059, -0.168206, 0.157682,
		38.077377, 31.679710, 38.468666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584553, 31.111252, 38.108162>,  <37.396236, 31.797453, 38.358288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584553, 31.111252, 38.108162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832016, 31.188087, 38.412888>,  <37.980495, 31.234188, 38.595722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832016, 31.188087, 38.412888>,  <37.584553, 31.111252, 38.108162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832016, 31.188087, 38.412888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192751, -0.902907, 0.384195,
		0.761648, -0.384526, -0.521566,
		0.618659, 0.192089, 0.761816,
		38.017612, 31.245714, 38.641434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996563, 30.502394, 38.179157>,  <37.584553, 31.111252, 38.108162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996563, 30.502394, 38.179157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025463, 30.709774, 38.519978>,  <38.042805, 30.834202, 38.724468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025463, 30.709774, 38.519978>,  <37.996563, 30.502394, 38.179157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025463, 30.709774, 38.519978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199144, -0.844581, 0.497016,
		0.977303, 0.133769, -0.164271,
		0.072255, 0.518449, 0.852051,
		38.047138, 30.865309, 38.775593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567776, 30.159693, 38.482346>,  <37.996563, 30.502394, 38.179157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567776, 30.159693, 38.482346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337208, 30.337446, 38.756649>,  <38.198868, 30.444098, 38.921230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337208, 30.337446, 38.756649>,  <38.567776, 30.159693, 38.482346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337208, 30.337446, 38.756649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071849, -0.808390, 0.584245,
		0.813988, 0.386042, 0.434045,
		-0.576421, 0.444383, 0.685757,
		38.164280, 30.470760, 38.962376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906754, 30.010662, 39.118244>,  <38.567776, 30.159693, 38.482346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906754, 30.010662, 39.118244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540642, 30.114046, 39.241833>,  <38.320976, 30.176077, 39.315987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540642, 30.114046, 39.241833>,  <38.906754, 30.010662, 39.118244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540642, 30.114046, 39.241833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039155, -0.820474, 0.570341,
		0.400914, 0.509923, 0.761082,
		-0.915278, 0.258458, 0.308974,
		38.266060, 30.191584, 39.334526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004627, 30.143917, 39.816536>,  <38.906754, 30.010662, 39.118244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004627, 30.143917, 39.816536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625248, 30.040123, 39.743752>,  <38.397621, 29.977846, 39.700081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625248, 30.040123, 39.743752>,  <39.004627, 30.143917, 39.816536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625248, 30.040123, 39.743752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053691, -0.697397, 0.714671,
		-0.312347, 0.668060, 0.675378,
		-0.948450, -0.259487, -0.181961,
		38.340714, 29.962276, 39.689163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644829, 30.083668, 40.461563>,  <39.004627, 30.143917, 39.816536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644829, 30.083668, 40.461563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390282, 29.882719, 40.227417>,  <38.237553, 29.762150, 40.086929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390282, 29.882719, 40.227417>,  <38.644829, 30.083668, 40.461563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390282, 29.882719, 40.227417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007520, -0.762858, 0.646522,
		-0.771346, 0.407026, 0.489239,
		-0.636371, -0.502372, -0.585367,
		38.199371, 29.732008, 40.051807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017845, 29.843321, 40.860672>,  <38.644829, 30.083668, 40.461563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017845, 29.843321, 40.860672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132587, 29.600454, 40.564278>,  <38.201431, 29.454735, 40.386440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132587, 29.600454, 40.564278>,  <38.017845, 29.843321, 40.860672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132587, 29.600454, 40.564278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134036, -0.740449, 0.658612,
		-0.948552, -0.288243, -0.131016,
		0.286851, -0.607166, -0.740989,
		38.218643, 29.418304, 40.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611649, 29.220451, 40.950474>,  <38.017845, 29.843321, 40.860672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611649, 29.220451, 40.950474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966656, 29.086193, 40.824196>,  <38.179661, 29.005638, 40.748428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966656, 29.086193, 40.824196>,  <37.611649, 29.220451, 40.950474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966656, 29.086193, 40.824196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047410, -0.748005, 0.661998,
		-0.458336, -0.572565, -0.679777,
		0.887513, -0.335646, -0.315692,
		38.232910, 28.985498, 40.729488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548191, 28.495451, 41.041073>,  <37.611649, 29.220451, 40.950474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548191, 28.495451, 41.041073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928608, 28.603146, 41.101784>,  <38.156857, 28.667763, 41.138210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928608, 28.603146, 41.101784>,  <37.548191, 28.495451, 41.041073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928608, 28.603146, 41.101784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015648, -0.532393, 0.846352,
		0.308672, -0.802540, -0.510540,
		0.951039, 0.269234, 0.151777,
		38.213921, 28.683916, 41.147316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945377, 27.852646, 41.064518>,  <37.548191, 28.495451, 41.041073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945377, 27.852646, 41.064518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129940, 28.145809, 41.264496>,  <38.240677, 28.321707, 41.384483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129940, 28.145809, 41.264496>,  <37.945377, 27.852646, 41.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129940, 28.145809, 41.264496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174999, -0.477263, 0.861159,
		0.869759, -0.484833, -0.091953,
		0.461405, 0.732910, 0.499949,
		38.268360, 28.365683, 41.414482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346722, 28.019438, 40.403065>,  <37.945377, 27.852646, 41.064518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346722, 28.019438, 40.403065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998497, 28.197733, 40.319706>,  <37.789562, 28.304710, 40.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998497, 28.197733, 40.319706>,  <38.346722, 28.019438, 40.403065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998497, 28.197733, 40.319706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490063, 0.747404, -0.448582,
		-0.044191, -0.492650, -0.869105,
		-0.870566, 0.445740, -0.208401,
		37.737328, 28.331455, 40.257187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370720, 28.474833, 39.723675>,  <38.346722, 28.019438, 40.403065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370720, 28.474833, 39.723675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058716, 28.630859, 39.919399>,  <37.871513, 28.724476, 40.036835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058716, 28.630859, 39.919399>,  <38.370720, 28.474833, 39.723675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058716, 28.630859, 39.919399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163177, 0.881682, -0.442731,
		-0.604112, -0.265492, -0.751374,
		-0.780014, 0.390066, 0.489312,
		37.824711, 28.747879, 40.066193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994476, 28.833736, 39.265850>,  <38.370720, 28.474833, 39.723675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994476, 28.833736, 39.265850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911697, 29.006897, 39.616795>,  <37.862030, 29.110792, 39.827362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911697, 29.006897, 39.616795>,  <37.994476, 28.833736, 39.265850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911697, 29.006897, 39.616795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015926, 0.898151, -0.439399,
		-0.978223, -0.076959, -0.192762,
		-0.206945, 0.432900, 0.877366,
		37.849613, 29.136766, 39.880005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335945, 29.206591, 39.299911>,  <37.994476, 28.833736, 39.265850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335945, 29.206591, 39.299911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589119, 29.366261, 39.565258>,  <37.741024, 29.462063, 39.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589119, 29.366261, 39.565258>,  <37.335945, 29.206591, 39.299911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589119, 29.366261, 39.565258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127764, 0.898939, -0.419029,
		-0.763588, 0.180465, 0.619972,
		0.632937, 0.399175, 0.663362,
		37.778999, 29.486013, 39.764267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993851, 29.766237, 39.695301>,  <37.335945, 29.206591, 39.299911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993851, 29.766237, 39.695301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390583, 29.813948, 39.677200>,  <37.628624, 29.842575, 39.666340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390583, 29.813948, 39.677200>,  <36.993851, 29.766237, 39.695301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390583, 29.813948, 39.677200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126714, 0.880056, -0.457652,
		-0.014767, 0.459646, 0.887979,
		0.991829, 0.119278, -0.045248,
		37.688133, 29.849731, 39.663628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044277, 30.467176, 39.683647>,  <36.993851, 29.766237, 39.695301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044277, 30.467176, 39.683647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417141, 30.367723, 39.578381>,  <37.640862, 30.308052, 39.515221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417141, 30.367723, 39.578381>,  <37.044277, 30.467176, 39.683647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417141, 30.367723, 39.578381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068673, 0.835126, -0.545755,
		0.355467, 0.490660, 0.795548,
		0.932163, -0.248630, -0.263165,
		37.696789, 30.293135, 39.499432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485596, 31.092621, 39.858894>,  <37.044277, 30.467176, 39.683647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485596, 31.092621, 39.858894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693848, 30.870359, 39.599606>,  <37.818798, 30.737003, 39.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693848, 30.870359, 39.599606>,  <37.485596, 31.092621, 39.858894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693848, 30.870359, 39.599606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320606, 0.830911, -0.454750,
		0.791298, 0.028934, 0.610746,
		0.520633, -0.555652, -0.648222,
		37.850037, 30.703663, 39.405140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099815, 31.441757, 39.908615>,  <37.485596, 31.092621, 39.858894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099815, 31.441757, 39.908615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063507, 31.248566, 39.560249>,  <38.041721, 31.132650, 39.351231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063507, 31.248566, 39.560249>,  <38.099815, 31.441757, 39.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063507, 31.248566, 39.560249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217645, 0.843764, -0.490605,
		0.971798, -0.234082, 0.028531,
		-0.090769, -0.482979, -0.870915,
		38.036278, 31.103672, 39.298973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732708, 31.676386, 39.747803>,  <38.099815, 31.441757, 39.908615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732708, 31.676386, 39.747803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496170, 31.567066, 39.444324>,  <38.354248, 31.501474, 39.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496170, 31.567066, 39.444324>,  <38.732708, 31.676386, 39.747803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496170, 31.567066, 39.444324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347412, 0.762699, -0.545523,
		0.727747, -0.586172, -0.356071,
		-0.591345, -0.273300, -0.758695,
		38.318768, 31.485077, 39.216717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098164, 31.756340, 39.140499>,  <38.732708, 31.676386, 39.747803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098164, 31.756340, 39.140499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716576, 31.730017, 39.023468>,  <38.487621, 31.714222, 38.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716576, 31.730017, 39.023468>,  <39.098164, 31.756340, 39.140499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716576, 31.730017, 39.023468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102041, 0.846180, -0.523036,
		0.281995, -0.528818, -0.800519,
		-0.953974, -0.065808, -0.292580,
		38.430382, 31.710274, 38.935696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360912, 31.532377, 38.401260>,  <39.098164, 31.756340, 39.140499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360912, 31.532377, 38.401260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963600, 31.552650, 38.442886>,  <38.725212, 31.564814, 38.467861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963600, 31.552650, 38.442886>,  <39.360912, 31.532377, 38.401260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963600, 31.552650, 38.442886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041876, 0.680794, -0.731277,
		-0.107910, -0.730720, -0.674095,
		-0.993278, 0.050684, 0.104064,
		38.665615, 31.567856, 38.474106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085495, 31.385502, 37.714787>,  <39.360912, 31.532377, 38.401260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085495, 31.385502, 37.714787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826500, 31.604948, 37.926361>,  <38.671101, 31.736616, 38.053307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826500, 31.604948, 37.926361>,  <39.085495, 31.385502, 37.714787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826500, 31.604948, 37.926361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197364, 0.791120, -0.578945,
		-0.736071, -0.270468, -0.620521,
		-0.647492, 0.548613, 0.528939,
		38.632252, 31.769531, 38.085041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765835, 31.719872, 37.210411>,  <39.085495, 31.385502, 37.714787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765835, 31.719872, 37.210411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636562, 31.931416, 37.524319>,  <38.558998, 32.058342, 37.712662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.636562, 31.931416, 37.524319>,  <38.765835, 31.719872, 37.210411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636562, 31.931416, 37.524319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078525, 0.841397, -0.534682,
		-0.943075, -0.111174, -0.313450,
		-0.323178, 0.528859, 0.784770,
		38.539608, 32.090073, 37.759750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082672, 32.078495, 37.010754>,  <38.765835, 31.719872, 37.210411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082672, 32.078495, 37.010754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300503, 32.280895, 37.278305>,  <38.431202, 32.402336, 37.438835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300503, 32.280895, 37.278305>,  <38.082672, 32.078495, 37.010754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300503, 32.280895, 37.278305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058642, 0.818530, -0.571463,
		-0.836661, 0.271979, 0.475422,
		0.544573, 0.506000, 0.668883,
		38.463875, 32.432693, 37.478970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720322, 32.714054, 37.028728>,  <38.082672, 32.078495, 37.010754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720322, 32.714054, 37.028728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054901, 32.767139, 37.241421>,  <38.255650, 32.798988, 37.369038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054901, 32.767139, 37.241421>,  <37.720322, 32.714054, 37.028728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054901, 32.767139, 37.241421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086360, 0.926198, -0.367013,
		-0.541194, 0.352909, 0.763259,
		0.836451, 0.132711, 0.531731,
		38.305836, 32.806953, 37.400940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730671, 33.378117, 37.390190>,  <37.720322, 32.714054, 37.028728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730671, 33.378117, 37.390190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124359, 33.307606, 37.383991>,  <38.360573, 33.265301, 37.380272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124359, 33.307606, 37.383991>,  <37.730671, 33.378117, 37.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124359, 33.307606, 37.383991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149624, 0.875767, -0.458960,
		0.094475, 0.449399, 0.888322,
		0.984219, -0.176274, -0.015497,
		38.419624, 33.254723, 37.379341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988628, 34.053207, 37.461555>,  <37.730671, 33.378117, 37.390190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988628, 34.053207, 37.461555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323383, 33.867565, 37.345474>,  <38.524239, 33.756180, 37.275826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323383, 33.867565, 37.345474>,  <37.988628, 34.053207, 37.461555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323383, 33.867565, 37.345474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313688, 0.841134, -0.440561,
		0.448570, 0.277666, 0.849521,
		0.836890, -0.464107, -0.290207,
		38.574451, 33.728333, 37.258411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534374, 34.240356, 37.719547>,  <37.988628, 34.053207, 37.461555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534374, 34.240356, 37.719547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641491, 34.125008, 37.351822>,  <38.705761, 34.055798, 37.131187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641491, 34.125008, 37.351822>,  <38.534374, 34.240356, 37.719547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641491, 34.125008, 37.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307456, 0.929849, -0.202118,
		0.913104, -0.228522, 0.337665,
		0.267789, -0.288372, -0.919310,
		38.721828, 34.038494, 37.076031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113792, 34.594341, 37.700199>,  <38.534374, 34.240356, 37.719547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113792, 34.594341, 37.700199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083130, 34.447445, 37.329414>,  <39.064732, 34.359306, 37.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083130, 34.447445, 37.329414>,  <39.113792, 34.594341, 37.700199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083130, 34.447445, 37.329414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339161, 0.864653, -0.370599,
		0.937600, -0.342797, 0.058275,
		-0.076652, -0.367238, -0.926963,
		39.060135, 34.337273, 37.051327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236916, 35.098801, 37.284382>,  <39.113792, 34.594341, 37.700199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236916, 35.098801, 37.284382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239227, 34.836121, 36.982727>,  <39.240612, 34.678513, 36.801735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239227, 34.836121, 36.982727>,  <39.236916, 35.098801, 37.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239227, 34.836121, 36.982727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177446, 0.742851, -0.645512,
		0.984114, -0.130090, 0.120818,
		0.005775, -0.656696, -0.754134,
		39.240959, 34.639111, 36.756489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903404, 35.107368, 36.830063>,  <39.236916, 35.098801, 37.284382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903404, 35.107368, 36.830063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583366, 34.985641, 36.623283>,  <39.391346, 34.912605, 36.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583366, 34.985641, 36.623283>,  <39.903404, 35.107368, 36.830063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583366, 34.985641, 36.623283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136367, 0.746935, -0.650763,
		0.584169, -0.591167, -0.556119,
		-0.800094, -0.304319, -0.516952,
		39.343338, 34.894344, 36.468197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153805, 34.859756, 36.131676>,  <39.903404, 35.107368, 36.830063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153805, 34.859756, 36.131676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758507, 34.916931, 36.109966>,  <39.521328, 34.951237, 36.096939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758507, 34.916931, 36.109966>,  <40.153805, 34.859756, 36.131676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758507, 34.916931, 36.109966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143789, 0.748228, -0.647672,
		-0.051965, -0.647861, -0.759984,
		-0.988243, 0.142934, -0.054274,
		39.462032, 34.959812, 36.093685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994793, 34.763115, 35.450832>,  <40.153805, 34.859756, 36.131676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994793, 34.763115, 35.450832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704330, 34.995880, 35.597298>,  <39.530052, 35.135540, 35.685177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704330, 34.995880, 35.597298>,  <39.994793, 34.763115, 35.450832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704330, 34.995880, 35.597298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144216, 0.649651, -0.746428,
		-0.672235, -0.489216, -0.555669,
		-0.726156, 0.581911, 0.366165,
		39.486485, 35.170452, 35.707146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547462, 34.537720, 34.948650>,  <39.994793, 34.763115, 35.450832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547462, 34.537720, 34.948650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411087, 34.897999, 34.840942>,  <40.329262, 35.114166, 34.776318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411087, 34.897999, 34.840942>,  <40.547462, 34.537720, 34.948650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411087, 34.897999, 34.840942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916349, -0.382361, -0.118759,
		-0.209923, 0.206253, 0.955715,
		-0.340934, 0.900699, -0.269266,
		40.308807, 35.168209, 34.760162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572884, 35.222210, 35.177322>,  <40.547462, 34.537720, 34.948650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572884, 35.222210, 35.177322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920624, 35.409409, 35.113800>,  <41.129269, 35.521729, 35.075687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920624, 35.409409, 35.113800>,  <40.572884, 35.222210, 35.177322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920624, 35.409409, 35.113800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053569, 0.408683, 0.911103,
		0.491295, -0.783555, 0.380357,
		0.869344, 0.467996, -0.158810,
		41.181427, 35.549805, 35.066158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268204, 35.004143, 35.618168>,  <40.572884, 35.222210, 35.177322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268204, 35.004143, 35.618168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278095, 35.385269, 35.497147>,  <41.284031, 35.613945, 35.424534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278095, 35.385269, 35.497147>,  <41.268204, 35.004143, 35.618168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278095, 35.385269, 35.497147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032532, 0.303250, 0.952355,
		0.999165, -0.013710, 0.038497,
		0.024731, 0.952812, -0.302551,
		41.285515, 35.671112, 35.406380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535774, 35.071457, 34.933483>,  <41.268204, 35.004143, 35.618168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535774, 35.071457, 34.933483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918781, 35.183556, 34.960678>,  <42.148586, 35.250816, 34.976994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918781, 35.183556, 34.960678>,  <41.535774, 35.071457, 34.933483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918781, 35.183556, 34.960678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219110, -0.553753, -0.803335,
		-0.187488, 0.784103, -0.591634,
		0.957517, 0.280249, 0.067983,
		42.206036, 35.267632, 34.981071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822086, 35.310848, 34.318966>,  <41.535774, 35.071457, 34.933483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822086, 35.310848, 34.318966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169407, 35.184795, 34.472198>,  <42.377800, 35.109165, 34.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169407, 35.184795, 34.472198>,  <41.822086, 35.310848, 34.318966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169407, 35.184795, 34.472198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104831, -0.638259, -0.762651,
		0.484839, 0.702367, -0.521164,
		0.868298, -0.315129, 0.383082,
		42.429897, 35.090256, 34.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367321, 35.269707, 33.897488>,  <41.822086, 35.310848, 34.318966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367321, 35.269707, 33.897488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447121, 35.003597, 34.185265>,  <42.495003, 34.843929, 34.357933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447121, 35.003597, 34.185265>,  <42.367321, 35.269707, 33.897488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447121, 35.003597, 34.185265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330283, -0.645590, -0.688569,
		0.922557, 0.374993, 0.090933,
		0.199503, -0.665278, 0.719447,
		42.506973, 34.804012, 34.401100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679466, 35.837933, 34.339478>,  <42.367321, 35.269707, 33.897488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679466, 35.837933, 34.339478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825165, 35.959930, 33.987499>,  <42.912582, 36.033131, 33.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825165, 35.959930, 33.987499>,  <42.679466, 35.837933, 34.339478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825165, 35.959930, 33.987499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709097, 0.703354, -0.049734,
		0.603745, 0.642082, 0.472464,
		0.364243, 0.304996, -0.879946,
		42.934437, 36.051430, 33.723515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623295, 35.766788, 35.039307>,  <42.679466, 35.837933, 34.339478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623295, 35.766788, 35.039307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522133, 36.078743, 35.268330>,  <42.461437, 36.265915, 35.405743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522133, 36.078743, 35.268330>,  <42.623295, 35.766788, 35.039307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522133, 36.078743, 35.268330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751163, -0.531250, 0.391826,
		0.609750, -0.330989, 0.720174,
		-0.252902, 0.779884, 0.572557,
		42.446262, 36.312710, 35.440098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799011, 35.615101, 35.808571>,  <42.623295, 35.766788, 35.039307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799011, 35.615101, 35.808571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494972, 35.841335, 35.680588>,  <42.312550, 35.977077, 35.603798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494972, 35.841335, 35.680588>,  <42.799011, 35.615101, 35.808571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494972, 35.841335, 35.680588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646835, -0.705626, 0.289303,
		-0.062143, 0.426855, 0.902182,
		-0.760094, 0.565585, -0.319954,
		42.266945, 36.011009, 35.584602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378407, 35.088501, 36.120819>,  <42.799011, 35.615101, 35.808571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378407, 35.088501, 36.120819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435158, 35.478981, 36.186428>,  <43.469208, 35.713268, 36.225792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435158, 35.478981, 36.186428>,  <43.378407, 35.088501, 36.120819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435158, 35.478981, 36.186428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981936, -0.159746, 0.101406,
		0.125195, 0.146673, -0.981230,
		0.141874, 0.976201, 0.164023,
		43.477718, 35.771843, 36.235634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908897, 35.359234, 35.613220>,  <43.378407, 35.088501, 36.120819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908897, 35.359234, 35.613220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892422, 35.537804, 35.970772>,  <43.882538, 35.644943, 36.185303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892422, 35.537804, 35.970772>,  <43.908897, 35.359234, 35.613220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892422, 35.537804, 35.970772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991562, -0.091794, 0.091529,
		0.122913, 0.890103, -0.438873,
		-0.041185, 0.446421, 0.893875,
		43.880066, 35.671730, 36.238934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435688, 35.979885, 35.625801>,  <43.908897, 35.359234, 35.613220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435688, 35.979885, 35.625801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379078, 35.802673, 35.979908>,  <44.345112, 35.696346, 36.192371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379078, 35.802673, 35.979908>,  <44.435688, 35.979885, 35.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379078, 35.802673, 35.979908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974611, -0.219096, 0.046164,
		0.173507, 0.869323, 0.462788,
		-0.141527, -0.443029, 0.885266,
		44.336620, 35.669765, 36.245487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918911, 36.278866, 36.085842>,  <44.435688, 35.979885, 35.625801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918911, 36.278866, 36.085842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806473, 35.898693, 36.139004>,  <44.739010, 35.670589, 36.170898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806473, 35.898693, 36.139004>,  <44.918911, 36.278866, 36.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806473, 35.898693, 36.139004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950581, -0.294775, -0.097486,
		0.131830, 0.098931, 0.986323,
		-0.281099, -0.950432, 0.132903,
		44.722141, 35.613564, 36.178875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415855, 35.933254, 36.517700>,  <44.918911, 36.278866, 36.085842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415855, 35.933254, 36.517700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246437, 35.654327, 36.286404>,  <45.144787, 35.486973, 36.147625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246437, 35.654327, 36.286404>,  <45.415855, 35.933254, 36.517700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246437, 35.654327, 36.286404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901120, -0.389640, -0.190165,
		-0.092700, -0.601606, 0.793396,
		-0.423544, -0.697316, -0.578239,
		45.119373, 35.445133, 36.112930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527824, 35.188679, 36.729904>,  <45.415855, 35.933254, 36.517700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527824, 35.188679, 36.729904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469593, 35.245995, 36.338337>,  <45.434654, 35.280384, 36.103397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469593, 35.245995, 36.338337>,  <45.527824, 35.188679, 36.729904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469593, 35.245995, 36.338337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883476, -0.426502, -0.193818,
		-0.445281, -0.893064, -0.064502,
		-0.145582, 0.143290, -0.978915,
		45.425919, 35.288982, 36.044662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694427, 34.502522, 36.362343>,  <45.527824, 35.188679, 36.729904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694427, 34.502522, 36.362343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686729, 34.796383, 36.091076>,  <45.682110, 34.972698, 35.928314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.686729, 34.796383, 36.091076>,  <45.694427, 34.502522, 36.362343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686729, 34.796383, 36.091076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773290, -0.419018, -0.475865,
		-0.633761, -0.533582, -0.560034,
		-0.019249, 0.734653, -0.678170,
		45.680954, 35.016777, 35.887627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840199, 34.214855, 35.683247>,  <45.694427, 34.502522, 36.362343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840199, 34.214855, 35.683247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921387, 34.603550, 35.635036>,  <45.970100, 34.836769, 35.606110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921387, 34.603550, 35.635036>,  <45.840199, 34.214855, 35.683247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921387, 34.603550, 35.635036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851411, -0.235938, -0.468437,
		-0.483635, -0.007537, -0.875237,
		0.202971, 0.971739, -0.120525,
		45.982277, 34.895073, 35.598881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245701, 34.398636, 34.975193>,  <45.840199, 34.214855, 35.683247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245701, 34.398636, 34.975193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383812, 34.668842, 35.235798>,  <46.466679, 34.830967, 35.392162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383812, 34.668842, 35.235798>,  <46.245701, 34.398636, 34.975193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383812, 34.668842, 35.235798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766024, 0.198220, -0.611486,
		-0.542209, 0.710205, -0.449019,
		0.345276, 0.675513, 0.651511,
		46.487396, 34.871494, 35.431252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301647, 35.079422, 34.701248>,  <46.245701, 34.398636, 34.975193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301647, 35.079422, 34.701248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577888, 34.970154, 34.969112>,  <46.743633, 34.904594, 35.129833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577888, 34.970154, 34.969112>,  <46.301647, 35.079422, 34.701248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577888, 34.970154, 34.969112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709120, 0.073703, -0.701226,
		0.142195, 0.959139, 0.244607,
		0.690601, -0.273166, 0.669664,
		46.785069, 34.888203, 35.170013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891476, 35.539520, 34.598938>,  <46.301647, 35.079422, 34.701248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891476, 35.539520, 34.598938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994526, 35.186234, 34.755684>,  <47.056355, 34.974262, 34.849731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.994526, 35.186234, 34.755684>,  <46.891476, 35.539520, 34.598938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.994526, 35.186234, 34.755684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702253, -0.107409, -0.703778,
		0.663679, 0.456495, 0.592572,
		0.257624, -0.883219, 0.391860,
		47.071812, 34.921268, 34.873241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595783, 35.456379, 34.920151>,  <46.891476, 35.539520, 34.598938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595783, 35.456379, 34.920151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469032, 35.129391, 34.727760>,  <47.392982, 34.933197, 34.612328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469032, 35.129391, 34.727760>,  <47.595783, 35.456379, 34.920151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469032, 35.129391, 34.727760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708188, 0.133407, -0.693306,
		0.630921, -0.560310, 0.536648,
		-0.316874, -0.817469, -0.480974,
		47.373970, 34.884151, 34.583469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.110806, 34.718365, 25.513308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813831, 34.542473, 25.311150>,  <37.635647, 34.436935, 25.189856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813831, 34.542473, 25.311150>,  <38.110806, 34.718365, 25.513308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813831, 34.542473, 25.311150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447169, -0.236449, 0.862631,
		-0.498826, 0.866445, -0.021086,
		-0.742437, -0.439732, -0.505395,
		37.591099, 34.410553, 25.159531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559002, 34.794674, 26.057346>,  <38.110806, 34.718365, 25.513308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559002, 34.794674, 26.057346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418884, 34.525787, 25.796450>,  <37.334816, 34.364456, 25.639912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418884, 34.525787, 25.796450>,  <37.559002, 34.794674, 26.057346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418884, 34.525787, 25.796450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487757, -0.463573, 0.739725,
		-0.799618, 0.577254, -0.165494,
		-0.350290, -0.672218, -0.652242,
		37.313797, 34.324123, 25.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790688, 34.700096, 26.136583>,  <37.559002, 34.794674, 26.057346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790688, 34.700096, 26.136583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950211, 34.377350, 25.962263>,  <37.045925, 34.183701, 25.857672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.950211, 34.377350, 25.962263>,  <36.790688, 34.700096, 26.136583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950211, 34.377350, 25.962263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248145, -0.552447, 0.795755,
		-0.882825, -0.209208, -0.420538,
		0.398803, -0.806867, -0.435800,
		37.069851, 34.135288, 25.831524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325497, 34.163719, 26.181822>,  <36.790688, 34.700096, 26.136583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325497, 34.163719, 26.181822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649540, 33.948105, 26.089584>,  <36.843964, 33.818737, 26.034243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.649540, 33.948105, 26.089584>,  <36.325497, 34.163719, 26.181822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649540, 33.948105, 26.089584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256823, -0.679838, 0.686922,
		-0.527038, -0.497258, -0.689177,
		0.810106, -0.539031, -0.230593,
		36.892570, 33.786396, 26.020407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055321, 33.428055, 26.177052>,  <36.325497, 34.163719, 26.181822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055321, 33.428055, 26.177052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450077, 33.440636, 26.240358>,  <36.686932, 33.448185, 26.278343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450077, 33.440636, 26.240358>,  <36.055321, 33.428055, 26.177052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450077, 33.440636, 26.240358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119244, -0.518639, 0.846637,
		0.108716, -0.854415, -0.508091,
		0.986895, 0.031456, 0.158269,
		36.746147, 33.450073, 26.287838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217270, 32.764732, 26.380894>,  <36.055321, 33.428055, 26.177052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217270, 32.764732, 26.380894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514721, 33.004070, 26.500223>,  <36.693192, 33.147675, 26.571821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514721, 33.004070, 26.500223>,  <36.217270, 32.764732, 26.380894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514721, 33.004070, 26.500223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067181, -0.510810, 0.857065,
		0.665206, -0.617299, -0.420052,
		0.743632, 0.598344, 0.298323,
		36.737812, 33.183575, 26.589720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650391, 32.332542, 26.542185>,  <36.217270, 32.764732, 26.380894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650391, 32.332542, 26.542185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708530, 32.671543, 26.746386>,  <36.743416, 32.874943, 26.868906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708530, 32.671543, 26.746386>,  <36.650391, 32.332542, 26.542185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708530, 32.671543, 26.746386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053562, -0.508487, 0.859402,
		0.987930, -0.152257, -0.028514,
		0.145349, 0.847502, 0.510504,
		36.752136, 32.925793, 26.899536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059635, 32.111282, 27.088032>,  <36.650391, 32.332542, 26.542185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059635, 32.111282, 27.088032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965908, 32.472103, 27.233025>,  <36.909672, 32.688595, 27.320021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965908, 32.472103, 27.233025>,  <37.059635, 32.111282, 27.088032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965908, 32.472103, 27.233025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007487, -0.371177, 0.928532,
		0.972132, 0.220281, 0.080218,
		-0.234313, 0.902055, 0.362482,
		36.895615, 32.742722, 27.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355392, 32.107376, 27.761814>,  <37.059635, 32.111282, 27.088032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355392, 32.107376, 27.761814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112240, 32.424477, 27.779861>,  <36.966351, 32.614735, 27.790689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112240, 32.424477, 27.779861>,  <37.355392, 32.107376, 27.761814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112240, 32.424477, 27.779861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093674, -0.128021, 0.987338,
		0.788486, 0.595954, 0.152081,
		-0.607877, 0.792748, 0.045117,
		36.929878, 32.662300, 27.793396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560459, 32.740036, 28.197121>,  <37.355392, 32.107376, 27.761814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560459, 32.740036, 28.197121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162979, 32.781933, 28.213043>,  <36.924492, 32.807072, 28.222597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162979, 32.781933, 28.213043>,  <37.560459, 32.740036, 28.197121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162979, 32.781933, 28.213043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003152, -0.381262, 0.924462,
		0.112004, 0.918515, 0.379191,
		-0.993703, 0.104739, 0.039808,
		36.864868, 32.813354, 28.224985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363316, 33.252903, 28.712320>,  <37.560459, 32.740036, 28.197121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363316, 33.252903, 28.712320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045246, 33.013832, 28.671368>,  <36.854404, 32.870392, 28.646795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045246, 33.013832, 28.671368>,  <37.363316, 33.252903, 28.712320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045246, 33.013832, 28.671368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040837, -0.115676, 0.992447,
		-0.605003, 0.793351, 0.067576,
		-0.795176, -0.597674, -0.102382,
		36.806694, 32.834530, 28.640654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919483, 33.520416, 29.257879>,  <37.363316, 33.252903, 28.712320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919483, 33.520416, 29.257879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773209, 33.159389, 29.166971>,  <36.685444, 32.942776, 29.112427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773209, 33.159389, 29.166971>,  <36.919483, 33.520416, 29.257879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773209, 33.159389, 29.166971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235744, -0.146397, 0.960725,
		-0.900386, 0.404905, -0.159238,
		-0.365691, -0.902563, -0.227268,
		36.663502, 32.888622, 29.098791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313862, 33.425884, 29.572720>,  <36.919483, 33.520416, 29.257879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313862, 33.425884, 29.572720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418915, 33.044197, 29.515461>,  <36.481949, 32.815186, 29.481106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.418915, 33.044197, 29.515461>,  <36.313862, 33.425884, 29.572720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418915, 33.044197, 29.515461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162476, -0.189969, 0.968252,
		-0.951117, -0.231041, -0.204931,
		0.262637, -0.954218, -0.143144,
		36.497707, 32.757931, 29.472517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716831, 32.969486, 29.751251>,  <36.313862, 33.425884, 29.572720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716831, 32.969486, 29.751251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065952, 32.783520, 29.810673>,  <36.275425, 32.671940, 29.846325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.065952, 32.783520, 29.810673>,  <35.716831, 32.969486, 29.751251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065952, 32.783520, 29.810673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249724, -0.163875, 0.954349,
		-0.419349, -0.870056, -0.259131,
		0.872803, -0.464917, 0.148553,
		36.327793, 32.644043, 29.855238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530975, 32.441971, 30.178087>,  <35.716831, 32.969486, 29.751251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530975, 32.441971, 30.178087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925030, 32.385033, 30.216551>,  <36.161461, 32.350868, 30.239628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925030, 32.385033, 30.216551>,  <35.530975, 32.441971, 30.178087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925030, 32.385033, 30.216551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150581, -0.446199, 0.882174,
		-0.082669, -0.883541, -0.461001,
		0.985135, -0.142346, 0.096158,
		36.220570, 32.342327, 30.245398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587234, 31.719484, 30.498680>,  <35.530975, 32.441971, 30.178087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587234, 31.719484, 30.498680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915096, 31.936804, 30.571344>,  <36.111813, 32.067196, 30.614943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915096, 31.936804, 30.571344>,  <35.587234, 31.719484, 30.498680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915096, 31.936804, 30.571344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034320, -0.269970, 0.962257,
		0.571835, -0.794949, -0.202635,
		0.819651, 0.543297, 0.181661,
		36.160992, 32.099792, 30.625843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070187, 31.271229, 30.998051>,  <35.587234, 31.719484, 30.498680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070187, 31.271229, 30.998051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260204, 31.621464, 31.033098>,  <36.374214, 31.831604, 31.054127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260204, 31.621464, 31.033098>,  <36.070187, 31.271229, 30.998051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260204, 31.621464, 31.033098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251005, -0.230264, 0.940199,
		0.843401, -0.424648, -0.329163,
		0.475048, 0.875587, 0.087617,
		36.402718, 31.884140, 31.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736416, 31.152077, 31.236700>,  <36.070187, 31.271229, 30.998051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736416, 31.152077, 31.236700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658581, 31.533291, 31.329535>,  <36.611881, 31.762018, 31.385235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658581, 31.533291, 31.329535>,  <36.736416, 31.152077, 31.236700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658581, 31.533291, 31.329535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294459, -0.168942, 0.940613,
		0.935645, 0.251368, -0.247756,
		-0.194583, 0.953034, 0.232087,
		36.600204, 31.819201, 31.399160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183979, 31.421593, 31.661474>,  <36.736416, 31.152077, 31.236700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183979, 31.421593, 31.661474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928795, 31.713419, 31.760057>,  <36.775684, 31.888515, 31.819208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928795, 31.713419, 31.760057>,  <37.183979, 31.421593, 31.661474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928795, 31.713419, 31.760057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326520, -0.033579, 0.944594,
		0.697419, 0.683086, -0.216795,
		-0.637959, 0.729565, 0.246460,
		36.737408, 31.932289, 31.833996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638710, 31.951897, 31.970098>,  <37.183979, 31.421593, 31.661474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638710, 31.951897, 31.970098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257660, 32.005474, 32.079319>,  <37.029030, 32.037621, 32.144852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257660, 32.005474, 32.079319>,  <37.638710, 31.951897, 31.970098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257660, 32.005474, 32.079319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283970, 0.070252, 0.956256,
		0.108903, 0.988496, -0.104960,
		-0.952629, 0.133944, 0.273053,
		36.971870, 32.045658, 32.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684029, 32.513634, 32.383713>,  <37.638710, 31.951897, 31.970098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684029, 32.513634, 32.383713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327263, 32.364552, 32.486141>,  <37.113201, 32.275101, 32.547596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327263, 32.364552, 32.486141>,  <37.684029, 32.513634, 32.383713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327263, 32.364552, 32.486141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246085, 0.075024, 0.966340,
		-0.379373, 0.924911, 0.024802,
		-0.891918, -0.372707, 0.256069,
		37.059689, 32.252739, 32.562962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404003, 32.955181, 32.910099>,  <37.684029, 32.513634, 32.383713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404003, 32.955181, 32.910099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249081, 32.587990, 32.944309>,  <37.156128, 32.367676, 32.964836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.249081, 32.587990, 32.944309>,  <37.404003, 32.955181, 32.910099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249081, 32.587990, 32.944309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162731, 0.023247, 0.986397,
		-0.907477, 0.395953, 0.140379,
		-0.387304, -0.917976, 0.085530,
		37.132889, 32.312595, 32.969967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158012, 33.016270, 33.154922>,  <37.404003, 32.955181, 32.910099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158012, 33.016270, 33.154922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523998, 33.116356, 33.281563>,  <38.743587, 33.176407, 33.357548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.523998, 33.116356, 33.281563>,  <38.158012, 33.016270, 33.154922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523998, 33.116356, 33.281563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060839, 0.690060, -0.721191,
		-0.398928, 0.679123, 0.616155,
		0.914962, 0.250217, 0.316601,
		38.798489, 33.191422, 33.376545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141129, 33.690636, 33.138775>,  <38.158012, 33.016270, 33.154922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141129, 33.690636, 33.138775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531086, 33.606747, 33.108860>,  <38.765060, 33.556412, 33.090912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.531086, 33.606747, 33.108860>,  <38.141129, 33.690636, 33.138775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531086, 33.606747, 33.108860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058598, 0.565696, -0.822529,
		0.214807, 0.797499, 0.563784,
		0.974897, -0.209722, -0.074783,
		38.823555, 33.543831, 33.086426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504204, 34.339737, 32.973728>,  <38.141129, 33.690636, 33.138775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504204, 34.339737, 32.973728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733994, 34.035881, 32.851799>,  <38.871868, 33.853565, 32.778641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.733994, 34.035881, 32.851799>,  <38.504204, 34.339737, 32.973728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733994, 34.035881, 32.851799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167501, 0.473633, -0.864647,
		0.801199, 0.445661, 0.399332,
		0.574477, -0.759643, -0.304825,
		38.906338, 33.807987, 32.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091747, 34.648865, 32.579239>,  <38.504204, 34.339737, 32.973728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091747, 34.648865, 32.579239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087147, 34.255741, 32.505531>,  <39.084389, 34.019867, 32.461308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087147, 34.255741, 32.505531>,  <39.091747, 34.648865, 32.579239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087147, 34.255741, 32.505531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273824, 0.174140, -0.945884,
		0.961711, -0.061333, 0.267114,
		-0.011499, -0.982809, -0.184267,
		39.083698, 33.960899, 32.450253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766422, 34.546329, 32.187416>,  <39.091747, 34.648865, 32.579239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766422, 34.546329, 32.187416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548653, 34.224606, 32.092178>,  <39.417992, 34.031570, 32.035034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548653, 34.224606, 32.092178>,  <39.766422, 34.546329, 32.187416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548653, 34.224606, 32.092178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350580, 0.039691, -0.935691,
		0.762037, -0.592882, 0.260367,
		-0.544420, -0.804311, -0.238099,
		39.385326, 33.983311, 32.020748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199570, 34.134155, 31.755081>,  <39.766422, 34.546329, 32.187416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199570, 34.134155, 31.755081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833706, 33.994553, 31.673512>,  <39.614185, 33.910789, 31.624569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833706, 33.994553, 31.673512>,  <40.199570, 34.134155, 31.755081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833706, 33.994553, 31.673512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228920, -0.031451, -0.972937,
		0.333149, -0.936592, 0.108662,
		-0.914662, -0.349008, -0.203926,
		39.559307, 33.889851, 31.612333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279354, 33.553871, 31.372974>,  <40.199570, 34.134155, 31.755081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279354, 33.553871, 31.372974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913548, 33.685501, 31.278845>,  <39.694065, 33.764477, 31.222366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913548, 33.685501, 31.278845>,  <40.279354, 33.553871, 31.372974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913548, 33.685501, 31.278845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252573, 0.010024, -0.967526,
		-0.316028, -0.944251, -0.092282,
		-0.914513, 0.329073, -0.235324,
		39.639194, 33.784222, 31.208248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127796, 33.176796, 30.689426>,  <40.279354, 33.553871, 31.372974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127796, 33.176796, 30.689426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.856598, 33.469398, 30.718342>,  <39.693878, 33.644958, 30.735691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.856598, 33.469398, 30.718342>,  <40.127796, 33.176796, 30.689426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856598, 33.469398, 30.718342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019632, 0.116329, -0.993017,
		-0.734805, -0.671841, -0.093231,
		-0.677994, 0.731504, 0.072290,
		39.653198, 33.688850, 30.740028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514378, 33.000778, 30.173510>,  <40.127796, 33.176796, 30.689426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514378, 33.000778, 30.173510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528481, 33.395527, 30.236561>,  <39.536942, 33.632374, 30.274391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528481, 33.395527, 30.236561>,  <39.514378, 33.000778, 30.173510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528481, 33.395527, 30.236561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132262, 0.160944, -0.978061,
		-0.990588, 0.013637, 0.136199,
		0.035258, 0.986869, 0.157626,
		39.539059, 33.691589, 30.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140244, 33.285480, 29.606424>,  <39.514378, 33.000778, 30.173510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140244, 33.285480, 29.606424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312290, 33.618462, 29.746153>,  <39.415516, 33.818249, 29.829990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.312290, 33.618462, 29.746153>,  <39.140244, 33.285480, 29.606424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312290, 33.618462, 29.746153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115723, 0.332908, -0.935832,
		-0.895328, 0.442937, 0.046854,
		0.430112, 0.832454, 0.349320,
		39.441322, 33.868198, 29.850948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858044, 33.813866, 29.281788>,  <39.140244, 33.285480, 29.606424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858044, 33.813866, 29.281788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199535, 33.975525, 29.413128>,  <39.404430, 34.072521, 29.491932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199535, 33.975525, 29.413128>,  <38.858044, 33.813866, 29.281788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199535, 33.975525, 29.413128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123632, 0.455221, -0.881753,
		-0.505826, 0.793374, 0.338670,
		0.853730, 0.404143, 0.328349,
		39.455654, 34.096767, 29.511633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847576, 34.479115, 28.995869>,  <38.858044, 33.813866, 29.281788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847576, 34.479115, 28.995869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234852, 34.391655, 29.044535>,  <39.467216, 34.339180, 29.073734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.234852, 34.391655, 29.044535>,  <38.847576, 34.479115, 28.995869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234852, 34.391655, 29.044535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216114, 0.485627, -0.847031,
		0.126120, 0.846379, 0.517432,
		0.968188, -0.218652, 0.121667,
		39.525307, 34.326061, 29.081036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203114, 35.075184, 28.852478>,  <38.847576, 34.479115, 28.995869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203114, 35.075184, 28.852478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483147, 34.791687, 28.817669>,  <39.651165, 34.621590, 28.796783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.483147, 34.791687, 28.817669>,  <39.203114, 35.075184, 28.852478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483147, 34.791687, 28.817669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389324, 0.481019, -0.785524,
		0.598590, 0.516052, 0.612682,
		0.700083, -0.708739, -0.087022,
		39.693172, 34.579067, 28.791563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909039, 35.519226, 28.719109>,  <39.203114, 35.075184, 28.852478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909039, 35.519226, 28.719109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916534, 35.139549, 28.593456>,  <39.921032, 34.911743, 28.518064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916534, 35.139549, 28.593456>,  <39.909039, 35.519226, 28.719109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916534, 35.139549, 28.593456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432000, 0.291031, -0.853626,
		0.901679, -0.119709, 0.415505,
		0.018738, -0.949195, -0.314131,
		39.922157, 34.854790, 28.499216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575542, 35.507172, 28.321938>,  <39.909039, 35.519226, 28.719109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575542, 35.507172, 28.321938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420761, 35.148045, 28.237848>,  <40.327892, 34.932568, 28.187395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.420761, 35.148045, 28.237848>,  <40.575542, 35.507172, 28.321938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420761, 35.148045, 28.237848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285453, 0.100148, -0.953146,
		0.876802, -0.428834, 0.217531,
		-0.386956, -0.897815, -0.210222,
		40.304672, 34.878700, 28.174782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135319, 35.081638, 27.913527>,  <40.575542, 35.507172, 28.321938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135319, 35.081638, 27.913527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758289, 34.973499, 27.835079>,  <40.532070, 34.908615, 27.788012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758289, 34.973499, 27.835079>,  <41.135319, 35.081638, 27.913527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758289, 34.973499, 27.835079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205977, -0.008296, -0.978522,
		0.262918, -0.962726, 0.063506,
		-0.942575, -0.270352, -0.196118,
		40.475517, 34.892395, 27.776243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149082, 34.717888, 27.318817>,  <41.135319, 35.081638, 27.913527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149082, 34.717888, 27.318817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.760471, 34.806885, 27.351395>,  <40.527306, 34.860283, 27.370941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.760471, 34.806885, 27.351395>,  <41.149082, 34.717888, 27.318817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760471, 34.806885, 27.351395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055524, 0.120372, -0.991175,
		-0.230336, -0.967474, -0.104591,
		-0.971526, 0.222496, 0.081444,
		40.469013, 34.873634, 27.375828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727001, 34.174412, 26.902782>,  <41.149082, 34.717888, 27.318817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727001, 34.174412, 26.902782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494343, 34.498783, 26.928341>,  <40.354748, 34.693405, 26.943676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.494343, 34.498783, 26.928341>,  <40.727001, 34.174412, 26.902782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494343, 34.498783, 26.928341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202347, -0.068161, -0.976939,
		-0.787871, -0.581164, 0.203734,
		-0.581649, 0.810927, 0.063895,
		40.319847, 34.742062, 26.947510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.244595, 34.018723, 26.405674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181446, 34.404541, 26.490278>,  <40.143559, 34.636032, 26.541040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.181446, 34.404541, 26.490278>,  <40.244595, 34.018723, 26.405674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181446, 34.404541, 26.490278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286190, 0.160308, -0.944668,
		-0.945078, -0.209668, 0.250734,
		-0.157872, 0.964542, 0.211509,
		40.134083, 34.693905, 26.553730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496784, 34.287045, 26.324638>,  <40.244595, 34.018723, 26.405674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496784, 34.287045, 26.324638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762596, 34.581631, 26.274015>,  <39.922081, 34.758385, 26.243641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762596, 34.581631, 26.274015>,  <39.496784, 34.287045, 26.324638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762596, 34.581631, 26.274015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436099, 0.244685, -0.865995,
		-0.606812, 0.630669, 0.483773,
		0.664527, 0.736469, -0.126557,
		39.961956, 34.802570, 26.236048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099033, 34.854794, 26.095757>,  <39.496784, 34.287045, 26.324638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099033, 34.854794, 26.095757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474537, 34.921268, 25.975012>,  <39.699837, 34.961155, 25.902565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474537, 34.921268, 25.975012>,  <39.099033, 34.854794, 26.095757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474537, 34.921268, 25.975012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342144, 0.345444, -0.873845,
		-0.040944, 0.923607, 0.381147,
		0.938755, 0.166186, -0.301863,
		39.756165, 34.971123, 25.884453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090881, 35.516926, 25.781403>,  <39.099033, 34.854794, 26.095757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090881, 35.516926, 25.781403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434715, 35.387882, 25.622894>,  <39.641018, 35.310455, 25.527790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434715, 35.387882, 25.622894>,  <39.090881, 35.516926, 25.781403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434715, 35.387882, 25.622894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203584, 0.495075, -0.844663,
		0.468680, 0.806736, 0.359882,
		0.859589, -0.322611, -0.396270,
		39.692593, 35.291100, 25.504013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308414, 36.078182, 25.418114>,  <39.090881, 35.516926, 25.781403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308414, 36.078182, 25.418114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512875, 35.775478, 25.255121>,  <39.635551, 35.593857, 25.157326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512875, 35.775478, 25.255121>,  <39.308414, 36.078182, 25.418114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512875, 35.775478, 25.255121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053050, 0.500969, -0.863837,
		0.857854, 0.419931, 0.296215,
		0.511147, -0.756761, -0.407481,
		39.666218, 35.548450, 25.132877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907932, 36.382698, 25.173548>,  <39.308414, 36.078182, 25.418114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907932, 36.382698, 25.173548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863327, 36.031857, 24.986675>,  <39.836563, 35.821354, 24.874552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.863327, 36.031857, 24.986675>,  <39.907932, 36.382698, 25.173548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863327, 36.031857, 24.986675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012123, 0.471280, -0.881900,
		0.993690, -0.092676, -0.063185,
		-0.111509, -0.877101, -0.467183,
		39.829876, 35.768726, 24.846521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270828, 36.492844, 24.519051>,  <39.907932, 36.382698, 25.173548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270828, 36.492844, 24.519051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058964, 36.162693, 24.440861>,  <39.931847, 35.964603, 24.393948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058964, 36.162693, 24.440861>,  <40.270828, 36.492844, 24.519051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058964, 36.162693, 24.440861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156422, 0.321548, -0.933884,
		0.833664, -0.464062, -0.299417,
		-0.529657, -0.825381, -0.195474,
		39.900066, 35.915077, 24.382219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471306, 36.193859, 23.871719>,  <40.270828, 36.492844, 24.519051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471306, 36.193859, 23.871719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091572, 36.081146, 23.927389>,  <39.863731, 36.013519, 23.960791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.091572, 36.081146, 23.927389>,  <40.471306, 36.193859, 23.871719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091572, 36.081146, 23.927389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217491, 0.269378, -0.938154,
		0.226857, -0.920890, -0.317012,
		-0.949333, -0.281774, 0.139175,
		39.806774, 35.996613, 23.969141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388279, 35.772560, 23.445198>,  <40.471306, 36.193859, 23.871719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388279, 35.772560, 23.445198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034332, 35.926575, 23.550079>,  <39.821964, 36.018986, 23.613008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.034332, 35.926575, 23.550079>,  <40.388279, 35.772560, 23.445198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034332, 35.926575, 23.550079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165959, 0.265367, -0.949757,
		-0.435274, -0.883926, -0.170915,
		-0.884869, 0.385040, 0.262203,
		39.768871, 36.042088, 23.628740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982204, 35.677402, 22.829866>,  <40.388279, 35.772560, 23.445198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982204, 35.677402, 22.829866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774330, 35.944469, 23.043087>,  <39.649605, 36.104710, 23.171021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774330, 35.944469, 23.043087>,  <39.982204, 35.677402, 22.829866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774330, 35.944469, 23.043087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319924, 0.426448, -0.846044,
		-0.792197, -0.610214, -0.008016,
		-0.519686, 0.667669, 0.533053,
		39.618423, 36.144772, 23.203003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357620, 35.665222, 22.504026>,  <39.982204, 35.677402, 22.829866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357620, 35.665222, 22.504026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398109, 36.014221, 22.695236>,  <39.422401, 36.223621, 22.809961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398109, 36.014221, 22.695236>,  <39.357620, 35.665222, 22.504026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398109, 36.014221, 22.695236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126496, 0.487880, -0.863697,
		-0.986789, 0.026955, 0.159750,
		0.101219, 0.872495, 0.478025,
		39.428474, 36.275970, 22.838644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756882, 36.057579, 22.293249>,  <39.357620, 35.665222, 22.504026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756882, 36.057579, 22.293249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018333, 36.335331, 22.413652>,  <39.175205, 36.501984, 22.485895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.018333, 36.335331, 22.413652>,  <38.756882, 36.057579, 22.293249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018333, 36.335331, 22.413652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162585, 0.517277, -0.840233,
		-0.739147, 0.500260, 0.451002,
		0.653627, 0.694381, 0.301009,
		39.214420, 36.543644, 22.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446476, 36.695465, 22.060331>,  <38.756882, 36.057579, 22.293249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446476, 36.695465, 22.060331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824970, 36.802990, 22.132311>,  <39.052067, 36.867504, 22.175499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.824970, 36.802990, 22.132311>,  <38.446476, 36.695465, 22.060331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824970, 36.802990, 22.132311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042697, 0.655198, -0.754249,
		-0.320654, 0.706012, 0.631449,
		0.946234, 0.268814, 0.179947,
		39.108841, 36.883633, 22.186295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463699, 37.466618, 21.989140>,  <38.446476, 36.695465, 22.060331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463699, 37.466618, 21.989140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840652, 37.338314, 21.951113>,  <39.066822, 37.261333, 21.928297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.840652, 37.338314, 21.951113>,  <38.463699, 37.466618, 21.989140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840652, 37.338314, 21.951113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152713, 0.665269, -0.730819,
		0.297658, 0.674191, 0.675919,
		0.942379, -0.320756, -0.095066,
		39.123367, 37.242088, 21.922592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828419, 38.019318, 22.074469>,  <38.463699, 37.466618, 21.989140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828419, 38.019318, 22.074469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058495, 37.772022, 21.860201>,  <39.196541, 37.623646, 21.731640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058495, 37.772022, 21.860201>,  <38.828419, 38.019318, 22.074469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058495, 37.772022, 21.860201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098857, 0.702571, -0.704714,
		0.812028, 0.352387, 0.465226,
		0.575186, -0.618238, -0.535671,
		39.231049, 37.586552, 21.699499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424496, 38.378891, 22.007166>,  <38.828419, 38.019318, 22.074469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424496, 38.378891, 22.007166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424500, 38.108334, 21.712551>,  <39.424503, 37.945999, 21.535782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424500, 38.108334, 21.712551>,  <39.424496, 38.378891, 22.007166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424500, 38.108334, 21.712551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250301, 0.713093, -0.654865,
		0.968168, -0.184347, 0.169312,
		0.000013, -0.676398, -0.736536,
		39.424503, 37.905415, 21.491590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003178, 38.588497, 21.707945>,  <39.424496, 38.378891, 22.007166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003178, 38.588497, 21.707945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770622, 38.374084, 21.463110>,  <39.631088, 38.245438, 21.316208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.770622, 38.374084, 21.463110>,  <40.003178, 38.588497, 21.707945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770622, 38.374084, 21.463110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168503, 0.656661, -0.735121,
		0.795986, -0.530530, -0.291452,
		-0.581389, -0.536036, -0.612089,
		39.596207, 38.213276, 21.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409805, 38.538250, 21.079222>,  <40.003178, 38.588497, 21.707945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409805, 38.538250, 21.079222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026752, 38.466679, 20.988962>,  <39.796921, 38.423737, 20.934807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.026752, 38.466679, 20.988962>,  <40.409805, 38.538250, 21.079222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026752, 38.466679, 20.988962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001458, 0.780530, -0.625117,
		0.287980, -0.598963, -0.747202,
		-0.957635, -0.178931, -0.225650,
		39.739460, 38.412998, 20.921267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371609, 38.240349, 20.407293>,  <40.409805, 38.538250, 21.079222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371609, 38.240349, 20.407293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006969, 38.394642, 20.464138>,  <39.788185, 38.487217, 20.498245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006969, 38.394642, 20.464138>,  <40.371609, 38.240349, 20.407293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006969, 38.394642, 20.464138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097019, 0.537822, -0.837457,
		-0.399463, -0.749640, -0.527703,
		-0.911601, 0.385730, 0.142111,
		39.733490, 38.510361, 20.506771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220814, 38.375366, 19.776199>,  <40.371609, 38.240349, 20.407293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220814, 38.375366, 19.776199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.928223, 38.564911, 19.972319>,  <39.752666, 38.678638, 20.089991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.928223, 38.564911, 19.972319>,  <40.220814, 38.375366, 19.776199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928223, 38.564911, 19.972319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119565, 0.618775, -0.776416,
		-0.671301, -0.626553, -0.395963,
		-0.731478, 0.473865, 0.490298,
		39.708778, 38.707069, 20.119408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641087, 38.336456, 19.280275>,  <40.220814, 38.375366, 19.776199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641087, 38.336456, 19.280275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580082, 38.625950, 19.549480>,  <39.543480, 38.799648, 19.711002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580082, 38.625950, 19.549480>,  <39.641087, 38.336456, 19.280275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580082, 38.625950, 19.549480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127620, 0.660854, -0.739585,
		-0.980028, -0.198682, -0.008423,
		-0.152509, 0.723738, 0.673011,
		39.534328, 38.843071, 19.751383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044731, 38.694534, 19.009335>,  <39.641087, 38.336456, 19.280275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044731, 38.694534, 19.009335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239899, 38.937038, 19.260534>,  <39.356998, 39.082542, 19.411255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239899, 38.937038, 19.260534>,  <39.044731, 38.694534, 19.009335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239899, 38.937038, 19.260534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143232, 0.765304, -0.627530,
		-0.861060, 0.216231, 0.460239,
		0.487915, 0.606262, 0.628001,
		39.386272, 39.118916, 19.448935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682308, 39.360161, 18.944883>,  <39.044731, 38.694534, 19.009335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682308, 39.360161, 18.944883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033253, 39.457096, 19.110537>,  <39.243820, 39.515259, 19.209929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.033253, 39.457096, 19.110537>,  <38.682308, 39.360161, 18.944883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033253, 39.457096, 19.110537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037379, 0.825944, -0.562511,
		-0.478369, 0.509006, 0.715594,
		0.877363, 0.242340, 0.414132,
		39.296463, 39.529797, 19.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952690, 39.503269, 18.571432>,  <38.682308, 39.360161, 18.944883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952690, 39.503269, 18.571432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993572, 39.720173, 18.905020>,  <38.018101, 39.850315, 19.105173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993572, 39.720173, 18.905020>,  <37.952690, 39.503269, 18.571432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993572, 39.720173, 18.905020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396536, -0.746663, 0.534092,
		0.912312, -0.385287, 0.138712,
		0.102208, 0.542263, 0.833969,
		38.024235, 39.882851, 19.155210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967060, 38.831268, 18.865900>,  <37.952690, 39.503269, 18.571432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967060, 38.831268, 18.865900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576485, 38.774647, 18.800741>,  <37.342140, 38.740673, 18.761646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.576485, 38.774647, 18.800741>,  <37.967060, 38.831268, 18.865900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576485, 38.774647, 18.800741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029008, -0.834065, 0.550903,
		-0.213851, 0.533196, 0.818517,
		-0.976436, -0.141554, -0.162898,
		37.283554, 38.732182, 18.751871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605404, 38.645760, 19.448637>,  <37.967060, 38.831268, 18.865900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605404, 38.645760, 19.448637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371376, 38.499474, 19.159100>,  <37.230961, 38.411701, 18.985376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371376, 38.499474, 19.159100>,  <37.605404, 38.645760, 19.448637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371376, 38.499474, 19.159100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128155, -0.839643, 0.527802,
		-0.800796, 0.401564, 0.444379,
		-0.585066, -0.365712, -0.723845,
		37.195858, 38.389759, 18.941946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053242, 38.403553, 19.764011>,  <37.605404, 38.645760, 19.448637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053242, 38.403553, 19.764011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006298, 38.204113, 19.420469>,  <36.978130, 38.084450, 19.214344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006298, 38.204113, 19.420469>,  <37.053242, 38.403553, 19.764011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006298, 38.204113, 19.420469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252336, -0.821474, 0.511378,
		-0.960496, 0.276737, -0.029403,
		-0.117363, -0.498595, -0.858853,
		36.971088, 38.054535, 19.162813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454163, 38.172363, 19.832914>,  <37.053242, 38.403553, 19.764011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454163, 38.172363, 19.832914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626583, 37.929840, 19.565607>,  <36.730034, 37.784325, 19.405222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626583, 37.929840, 19.565607>,  <36.454163, 38.172363, 19.832914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626583, 37.929840, 19.565607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262810, -0.792856, 0.549828,
		-0.863206, -0.061378, -0.501107,
		0.431053, -0.606310, -0.668267,
		36.755898, 37.747948, 19.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974957, 37.656517, 19.737610>,  <36.454163, 38.172363, 19.832914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974957, 37.656517, 19.737610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329006, 37.503807, 19.631178>,  <36.541435, 37.412182, 19.567318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.329006, 37.503807, 19.631178>,  <35.974957, 37.656517, 19.737610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329006, 37.503807, 19.631178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121128, -0.741089, 0.660390,
		-0.449312, -0.552298, -0.702200,
		0.885125, -0.381777, -0.266082,
		36.594543, 37.389275, 19.551353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881191, 36.998985, 19.604389>,  <35.974957, 37.656517, 19.737610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881191, 36.998985, 19.604389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276089, 37.002182, 19.667999>,  <36.513027, 37.004101, 19.706165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276089, 37.002182, 19.667999>,  <35.881191, 36.998985, 19.604389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276089, 37.002182, 19.667999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116787, -0.642511, 0.757325,
		0.108226, -0.766235, -0.633381,
		0.987243, 0.007992, 0.159023,
		36.572262, 37.004578, 19.715706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037167, 36.336998, 19.737799>,  <35.881191, 36.998985, 19.604389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037167, 36.336998, 19.737799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344898, 36.546185, 19.884575>,  <36.529537, 36.671696, 19.972641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344898, 36.546185, 19.884575>,  <36.037167, 36.336998, 19.737799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344898, 36.546185, 19.884575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040561, -0.613197, 0.788888,
		0.637567, -0.592029, -0.492961,
		0.769326, 0.522964, 0.366941,
		36.575695, 36.703075, 19.994658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614410, 35.849842, 20.005934>,  <36.037167, 36.336998, 19.737799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614410, 35.849842, 20.005934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678051, 36.188660, 20.208792>,  <36.716236, 36.391953, 20.330505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678051, 36.188660, 20.208792>,  <36.614410, 35.849842, 20.005934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678051, 36.188660, 20.208792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230513, -0.531361, 0.815180,
		0.959974, -0.012795, -0.279797,
		0.159104, 0.847049, 0.507144,
		36.725780, 36.442776, 20.360935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308933, 35.862823, 20.297485>,  <36.614410, 35.849842, 20.005934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308933, 35.862823, 20.297485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092247, 36.116638, 20.517996>,  <36.962234, 36.268929, 20.650303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.092247, 36.116638, 20.517996>,  <37.308933, 35.862823, 20.297485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092247, 36.116638, 20.517996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322277, -0.448934, 0.833424,
		0.776329, 0.629140, 0.038695,
		-0.541711, 0.634541, 0.551278,
		36.929733, 36.306999, 20.683378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746811, 36.185440, 20.871256>,  <37.308933, 35.862823, 20.297485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746811, 36.185440, 20.871256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378040, 36.276749, 20.996437>,  <37.156776, 36.331532, 21.071547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378040, 36.276749, 20.996437>,  <37.746811, 36.185440, 20.871256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378040, 36.276749, 20.996437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283688, -0.152228, 0.946756,
		0.263754, 0.961624, 0.075586,
		-0.921930, 0.228268, 0.312952,
		37.101460, 36.345230, 21.090322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835697, 36.690311, 21.504446>,  <37.746811, 36.185440, 20.871256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835697, 36.690311, 21.504446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469791, 36.531731, 21.535526>,  <37.250248, 36.436581, 21.554174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469791, 36.531731, 21.535526>,  <37.835697, 36.690311, 21.504446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469791, 36.531731, 21.535526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121518, -0.086584, 0.988806,
		-0.385287, 0.913963, 0.127380,
		-0.914761, -0.396453, 0.077703,
		37.195362, 36.412796, 21.558838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510681, 36.961048, 22.130789>,  <37.835697, 36.690311, 21.504446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510681, 36.961048, 22.130789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324142, 36.616455, 22.050411>,  <37.212219, 36.409698, 22.002186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.324142, 36.616455, 22.050411>,  <37.510681, 36.961048, 22.130789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324142, 36.616455, 22.050411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038482, -0.207183, 0.977545,
		-0.883765, 0.463607, 0.063468,
		-0.466346, -0.861478, -0.200942,
		37.184238, 36.358013, 21.990129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919769, 36.912716, 22.680952>,  <37.510681, 36.961048, 22.130789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919769, 36.912716, 22.680952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997940, 36.549107, 22.533722>,  <37.044842, 36.330940, 22.445383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.997940, 36.549107, 22.533722>,  <36.919769, 36.912716, 22.680952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997940, 36.549107, 22.533722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165198, -0.339437, 0.926009,
		-0.966705, -0.241772, 0.083834,
		0.195426, -0.909026, -0.368076,
		37.056568, 36.276398, 22.423300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551601, 36.356750, 23.111120>,  <36.919769, 36.912716, 22.680952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551601, 36.356750, 23.111120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841537, 36.146801, 22.932632>,  <37.015499, 36.020832, 22.825541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841537, 36.146801, 22.932632>,  <36.551601, 36.356750, 23.111120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841537, 36.146801, 22.932632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113877, -0.547512, 0.829013,
		-0.679440, -0.651716, -0.337087,
		0.724841, -0.524878, -0.446217,
		37.058990, 35.989338, 22.798767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375614, 35.691669, 23.065083>,  <36.551601, 36.356750, 23.111120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375614, 35.691669, 23.065083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767540, 35.638165, 23.005667>,  <37.002697, 35.606060, 22.970016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767540, 35.638165, 23.005667>,  <36.375614, 35.691669, 23.065083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767540, 35.638165, 23.005667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003415, -0.731796, 0.681515,
		-0.199861, -0.668268, -0.716571,
		0.979818, -0.133761, -0.148540,
		37.061485, 35.598038, 22.961105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488190, 35.016685, 22.991503>,  <36.375614, 35.691669, 23.065083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488190, 35.016685, 22.991503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852135, 35.148159, 23.092793>,  <37.070499, 35.227043, 23.153566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852135, 35.148159, 23.092793>,  <36.488190, 35.016685, 22.991503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852135, 35.148159, 23.092793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090231, -0.752439, 0.652453,
		0.404987, -0.570791, -0.714271,
		0.909859, 0.328684, 0.253224,
		37.125092, 35.246765, 23.168760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843105, 34.493652, 22.998215>,  <36.488190, 35.016685, 22.991503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843105, 34.493652, 22.998215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072792, 34.735859, 23.218624>,  <37.210602, 34.881184, 23.350870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072792, 34.735859, 23.218624>,  <36.843105, 34.493652, 22.998215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072792, 34.735859, 23.218624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073148, -0.708294, 0.702117,
		0.815431, -0.362860, -0.451005,
		0.574214, 0.605518, 0.551023,
		37.245056, 34.917515, 23.383930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362354, 34.065525, 23.366375>,  <36.843105, 34.493652, 22.998215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362354, 34.065525, 23.366375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375633, 34.397408, 23.589258>,  <37.383602, 34.596539, 23.722988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375633, 34.397408, 23.589258>,  <37.362354, 34.065525, 23.366375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375633, 34.397408, 23.589258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084801, -0.557843, 0.825603,
		0.995845, 0.019842, -0.088881,
		0.033200, 0.829709, 0.557208,
		37.385593, 34.646320, 23.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042484, 33.974373, 23.694433>,  <37.362354, 34.065525, 23.366375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042484, 33.974373, 23.694433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803837, 34.219273, 23.901972>,  <37.660648, 34.366215, 24.026495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803837, 34.219273, 23.901972>,  <38.042484, 33.974373, 23.694433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803837, 34.219273, 23.901972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212302, -0.503072, 0.837763,
		0.773938, 0.609973, 0.170158,
		-0.596614, 0.612252, 0.518844,
		37.624851, 34.402946, 24.057625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429317, 34.111439, 24.295813>,  <38.042484, 33.974373, 23.694433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429317, 34.111439, 24.295813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056168, 34.215595, 24.395363>,  <37.832279, 34.278091, 24.455093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056168, 34.215595, 24.395363>,  <38.429317, 34.111439, 24.295813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056168, 34.215595, 24.395363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099116, -0.478690, 0.872371,
		0.346295, 0.838481, 0.420749,
		-0.932875, 0.260395, 0.248874,
		37.776306, 34.293713, 24.470026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.734596, 34.019218, 29.443909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366688, 34.147209, 29.353014>,  <40.145943, 34.224003, 29.298477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366688, 34.147209, 29.353014>,  <40.734596, 34.019218, 29.443909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366688, 34.147209, 29.353014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284236, -0.143864, 0.947899,
		0.270617, 0.936438, 0.223271,
		-0.919769, 0.319980, -0.227237,
		40.090755, 34.243202, 29.284843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577797, 34.505779, 29.962961>,  <40.734596, 34.019218, 29.443909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577797, 34.505779, 29.962961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229626, 34.393696, 29.801050>,  <40.020725, 34.326447, 29.703903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229626, 34.393696, 29.801050>,  <40.577797, 34.505779, 29.962961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229626, 34.393696, 29.801050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348379, -0.230356, 0.908608,
		-0.347840, 0.931891, 0.102889,
		-0.870425, -0.280205, -0.404779,
		39.968498, 34.309635, 29.679617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139854, 34.885036, 30.351053>,  <40.577797, 34.505779, 29.962961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139854, 34.885036, 30.351053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915695, 34.587746, 30.204863>,  <39.781200, 34.409370, 30.117147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915695, 34.587746, 30.204863>,  <40.139854, 34.885036, 30.351053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915695, 34.587746, 30.204863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406505, -0.137648, 0.903220,
		-0.721604, 0.654727, -0.224989,
		-0.560394, -0.743227, -0.365477,
		39.747578, 34.364777, 30.095219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395260, 34.996811, 30.469988>,  <40.139854, 34.885036, 30.351053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395260, 34.996811, 30.469988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464436, 34.604218, 30.437050>,  <39.505939, 34.368660, 30.417286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464436, 34.604218, 30.437050>,  <39.395260, 34.996811, 30.469988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464436, 34.604218, 30.437050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394065, -0.145573, 0.907480,
		-0.902665, -0.124490, -0.411944,
		0.172941, -0.981484, -0.082347,
		39.516319, 34.309772, 30.412346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791176, 34.623821, 30.699017>,  <39.395260, 34.996811, 30.469988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791176, 34.623821, 30.699017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063023, 34.332188, 30.731411>,  <39.226131, 34.157207, 30.750847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063023, 34.332188, 30.731411>,  <38.791176, 34.623821, 30.699017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063023, 34.332188, 30.731411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353796, -0.229062, 0.906840,
		-0.642611, -0.644956, -0.413622,
		0.679617, -0.729083, 0.080985,
		39.266907, 34.113464, 30.755707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464935, 34.033398, 30.893045>,  <38.791176, 34.623821, 30.699017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464935, 34.033398, 30.893045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832188, 33.931252, 31.014257>,  <39.052540, 33.869965, 31.086985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832188, 33.931252, 31.014257>,  <38.464935, 34.033398, 30.893045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832188, 33.931252, 31.014257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364994, -0.247114, 0.897616,
		-0.154336, -0.934732, -0.320089,
		0.918128, -0.255365, 0.303033,
		39.107628, 33.854641, 31.105167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374062, 33.481205, 31.342257>,  <38.464935, 34.033398, 30.893045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374062, 33.481205, 31.342257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746098, 33.604877, 31.421591>,  <38.969318, 33.679081, 31.469193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.746098, 33.604877, 31.421591>,  <38.374062, 33.481205, 31.342257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746098, 33.604877, 31.421591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070415, -0.379858, 0.922361,
		0.360521, -0.871844, -0.331531,
		0.930090, 0.309186, 0.198338,
		39.025124, 33.697632, 31.481092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718151, 32.870052, 31.687908>,  <38.374062, 33.481205, 31.342257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718151, 32.870052, 31.687908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906906, 33.206444, 31.793804>,  <39.020157, 33.408279, 31.857342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906906, 33.206444, 31.793804>,  <38.718151, 32.870052, 31.687908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906906, 33.206444, 31.793804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015786, -0.292166, 0.956237,
		0.881520, -0.455412, -0.124593,
		0.471884, 0.840975, 0.264739,
		39.048470, 33.458736, 31.873226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242710, 32.683891, 32.097759>,  <38.718151, 32.870052, 31.687908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242710, 32.683891, 32.097759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204678, 33.072010, 32.186733>,  <39.181858, 33.304882, 32.240116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.204678, 33.072010, 32.186733>,  <39.242710, 32.683891, 32.097759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204678, 33.072010, 32.186733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010755, -0.224432, 0.974430,
		0.995411, 0.090260, 0.031775,
		-0.095083, 0.970301, 0.222432,
		39.176151, 33.363102, 32.253464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620476, 32.718956, 32.664288>,  <39.242710, 32.683891, 32.097759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620476, 32.718956, 32.664288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442959, 33.077404, 32.665691>,  <39.336449, 33.292473, 32.666534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.442959, 33.077404, 32.665691>,  <39.620476, 32.718956, 32.664288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442959, 33.077404, 32.665691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070572, 0.031047, 0.997023,
		0.893345, 0.442721, -0.077019,
		-0.443795, 0.896122, 0.003508,
		39.309822, 33.346241, 32.666744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075989, 33.164490, 33.043785>,  <39.620476, 32.718956, 32.664288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075989, 33.164490, 33.043785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697010, 33.292240, 33.051189>,  <39.469624, 33.368893, 33.055634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697010, 33.292240, 33.051189>,  <40.075989, 33.164490, 33.043785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697010, 33.292240, 33.051189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027470, -0.138880, 0.989928,
		0.318734, 0.937395, 0.140355,
		-0.947446, 0.319380, 0.018515,
		39.412777, 33.388054, 33.056744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008717, 33.573414, 33.720165>,  <40.075989, 33.164490, 33.043785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008717, 33.573414, 33.720165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648544, 33.443615, 33.604286>,  <39.432442, 33.365738, 33.534760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.648544, 33.443615, 33.604286>,  <40.008717, 33.573414, 33.720165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648544, 33.443615, 33.604286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241716, -0.180443, 0.953422,
		-0.361653, 0.928517, 0.084041,
		-0.900434, -0.324494, -0.289695,
		39.378414, 33.346268, 33.517376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367413, 33.867386, 34.094994>,  <40.008717, 33.573414, 33.720165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367413, 33.867386, 34.094994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250748, 33.502331, 33.980438>,  <39.180748, 33.283298, 33.911705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250748, 33.502331, 33.980438>,  <39.367413, 33.867386, 34.094994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250748, 33.502331, 33.980438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166706, -0.246326, 0.954742,
		-0.941882, 0.326206, -0.080298,
		-0.291663, -0.912641, -0.286391,
		39.163250, 33.228539, 33.894520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801609, 34.157116, 34.657879>,  <39.367413, 33.867386, 34.094994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801609, 34.157116, 34.657879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.103500, 33.922085, 34.774590>,  <40.284637, 33.781067, 34.844616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.103500, 33.922085, 34.774590>,  <39.801609, 34.157116, 34.657879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103500, 33.922085, 34.774590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639039, 0.557895, -0.529512,
		0.148351, 0.586094, 0.796546,
		0.754733, -0.587578, 0.291772,
		40.329922, 33.745811, 34.862122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261482, 34.712364, 34.862972>,  <39.801609, 34.157116, 34.657879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261482, 34.712364, 34.862972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206726, 35.030449, 35.099243>,  <39.173870, 35.221298, 35.241005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206726, 35.030449, 35.099243>,  <39.261482, 34.712364, 34.862972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206726, 35.030449, 35.099243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002814, 0.595976, -0.802997,
		-0.990582, -0.111586, -0.079347,
		-0.136892, 0.795212, 0.590677,
		39.165657, 35.269012, 35.276447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619907, 35.028336, 34.627308>,  <39.261482, 34.712364, 34.862972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619907, 35.028336, 34.627308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867172, 35.299297, 34.786804>,  <39.015530, 35.461876, 34.882504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867172, 35.299297, 34.786804>,  <38.619907, 35.028336, 34.627308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867172, 35.299297, 34.786804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131871, 0.589457, -0.796964,
		-0.774910, 0.440070, 0.453710,
		0.618162, 0.677406, 0.398743,
		39.052620, 35.502518, 34.906425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285488, 35.699211, 34.515038>,  <38.619907, 35.028336, 34.627308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285488, 35.699211, 34.515038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650528, 35.827881, 34.615982>,  <38.869553, 35.905083, 34.676548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650528, 35.827881, 34.615982>,  <38.285488, 35.699211, 34.515038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650528, 35.827881, 34.615982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073675, 0.736517, -0.672395,
		-0.402162, 0.595035, 0.695844,
		0.912600, 0.321678, 0.252360,
		38.924309, 35.924385, 34.691689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309715, 36.458004, 34.434643>,  <38.285488, 35.699211, 34.515038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309715, 36.458004, 34.434643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706059, 36.404079, 34.432606>,  <38.943863, 36.371723, 34.431385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.706059, 36.404079, 34.432606>,  <38.309715, 36.458004, 34.434643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706059, 36.404079, 34.432606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089954, 0.688348, -0.719782,
		0.100542, 0.712743, 0.694182,
		0.990858, -0.134813, -0.005094,
		39.003315, 36.363636, 34.431076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514168, 37.139698, 34.593937>,  <38.309715, 36.458004, 34.434643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514168, 37.139698, 34.593937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787785, 36.918961, 34.403122>,  <38.951954, 36.786518, 34.288631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787785, 36.918961, 34.403122>,  <38.514168, 37.139698, 34.593937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787785, 36.918961, 34.403122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100265, 0.718893, -0.687851,
		0.722522, 0.422687, 0.547081,
		0.684038, -0.551841, -0.477036,
		38.992996, 36.753407, 34.260010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014172, 37.567909, 34.413017>,  <38.514168, 37.139698, 34.593937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014172, 37.567909, 34.413017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092686, 37.262615, 34.166786>,  <39.139793, 37.079437, 34.019047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092686, 37.262615, 34.166786>,  <39.014172, 37.567909, 34.413017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092686, 37.262615, 34.166786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172891, 0.644898, -0.744456,
		0.965184, 0.039697, 0.258541,
		0.196285, -0.763237, -0.615582,
		39.151569, 37.033646, 33.982113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394382, 37.865917, 33.946548>,  <39.014172, 37.567909, 34.413017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394382, 37.865917, 33.946548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325211, 37.528576, 33.743034>,  <39.283707, 37.326172, 33.620926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325211, 37.528576, 33.743034>,  <39.394382, 37.865917, 33.946548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325211, 37.528576, 33.743034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188481, 0.478681, -0.857519,
		0.966732, -0.244186, 0.076177,
		-0.172930, -0.843349, -0.508781,
		39.273331, 37.275570, 33.590401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011158, 37.818485, 33.491154>,  <39.394382, 37.865917, 33.946548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011158, 37.818485, 33.491154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718376, 37.601917, 33.325695>,  <39.542706, 37.471977, 33.226421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718376, 37.601917, 33.325695>,  <40.011158, 37.818485, 33.491154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718376, 37.601917, 33.325695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222269, 0.384149, -0.896117,
		0.644079, -0.747859, -0.160839,
		-0.731956, -0.541421, -0.413648,
		39.498791, 37.439491, 33.201599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275196, 37.509460, 32.881340>,  <40.011158, 37.818485, 33.491154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275196, 37.509460, 32.881340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878674, 37.503830, 32.829006>,  <39.640762, 37.500450, 32.797607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.878674, 37.503830, 32.829006>,  <40.275196, 37.509460, 32.881340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878674, 37.503830, 32.829006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118542, 0.336103, -0.934335,
		0.057128, -0.941720, -0.331512,
		-0.991304, -0.014078, -0.130834,
		39.581284, 37.499607, 32.789757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252163, 37.235767, 32.284199>,  <40.275196, 37.509460, 32.881340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252163, 37.235767, 32.284199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898605, 37.416500, 32.332489>,  <39.686470, 37.524940, 32.361462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898605, 37.416500, 32.332489>,  <40.252163, 37.235767, 32.284199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898605, 37.416500, 32.332489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036810, 0.190116, -0.981071,
		-0.466234, -0.871608, -0.151411,
		-0.883895, 0.451835, 0.120723,
		39.633438, 37.552052, 32.368706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878555, 37.091274, 31.656940>,  <40.252163, 37.235767, 32.284199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878555, 37.091274, 31.656940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683289, 37.393845, 31.831074>,  <39.566128, 37.575386, 31.935555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683289, 37.393845, 31.831074>,  <39.878555, 37.091274, 31.656940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683289, 37.393845, 31.831074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140752, 0.424044, -0.894637,
		-0.861324, -0.498009, -0.100538,
		-0.488170, 0.756421, 0.435335,
		39.536839, 37.620770, 31.961674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555355, 37.273724, 31.146362>,  <39.878555, 37.091274, 31.656940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555355, 37.273724, 31.146362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478493, 37.580849, 31.390835>,  <39.432377, 37.765121, 31.537519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.478493, 37.580849, 31.390835>,  <39.555355, 37.273724, 31.146362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478493, 37.580849, 31.390835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283183, 0.552914, -0.783641,
		-0.939619, -0.323655, 0.111187,
		-0.192153, 0.767811, 0.611182,
		39.420845, 37.811192, 31.574190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926693, 37.462677, 30.984760>,  <39.555355, 37.273724, 31.146362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926693, 37.462677, 30.984760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060635, 37.798981, 31.154932>,  <39.140999, 38.000763, 31.257036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060635, 37.798981, 31.154932>,  <38.926693, 37.462677, 30.984760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060635, 37.798981, 31.154932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246603, 0.513955, -0.821606,
		-0.909427, 0.170206, 0.379435,
		0.334855, 0.840761, 0.425432,
		39.161091, 38.051208, 31.282562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350487, 37.913029, 30.963837>,  <38.926693, 37.462677, 30.984760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350487, 37.913029, 30.963837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699242, 38.108765, 30.971321>,  <38.908497, 38.226208, 30.975811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699242, 38.108765, 30.971321>,  <38.350487, 37.913029, 30.963837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699242, 38.108765, 30.971321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227513, 0.438616, -0.869398,
		-0.433640, 0.753764, 0.493757,
		0.871891, 0.489343, 0.018710,
		38.960808, 38.255566, 30.976934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765125, 37.775799, 30.603903>,  <38.350487, 37.913029, 30.963837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765125, 37.775799, 30.603903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401756, 37.924644, 30.680120>,  <37.183735, 38.013950, 30.725851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.401756, 37.924644, 30.680120>,  <37.765125, 37.775799, 30.603903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401756, 37.924644, 30.680120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247126, -0.845596, 0.473177,
		0.337199, 0.382755, 0.860114,
		-0.908419, 0.372112, 0.190545,
		37.129230, 38.036278, 30.737284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683758, 37.633362, 31.305132>,  <37.765125, 37.775799, 30.603903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683758, 37.633362, 31.305132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307755, 37.715393, 31.196079>,  <37.082153, 37.764614, 31.130648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307755, 37.715393, 31.196079>,  <37.683758, 37.633362, 31.305132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307755, 37.715393, 31.196079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340463, -0.614787, 0.711422,
		-0.021710, 0.761563, 0.647727,
		-0.940007, 0.205082, -0.272631,
		37.025753, 37.776917, 31.114290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223106, 37.859795, 31.944799>,  <37.683758, 37.633362, 31.305132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223106, 37.859795, 31.944799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991760, 37.695957, 31.662600>,  <36.852951, 37.597656, 31.493280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.991760, 37.695957, 31.662600>,  <37.223106, 37.859795, 31.944799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991760, 37.695957, 31.662600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400076, -0.611260, 0.682862,
		-0.710939, 0.677195, 0.189663,
		-0.578364, -0.409593, -0.705498,
		36.818253, 37.573078, 31.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614639, 37.913742, 32.129013>,  <37.223106, 37.859795, 31.944799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614639, 37.913742, 32.129013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.585342, 37.612125, 31.867922>,  <36.567764, 37.431156, 31.711267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.585342, 37.612125, 31.867922>,  <36.614639, 37.913742, 32.129013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585342, 37.612125, 31.867922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479925, -0.547071, 0.685846,
		-0.874246, 0.363495, -0.321815,
		-0.073246, -0.754046, -0.652725,
		36.563370, 37.385910, 31.672104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850513, 37.720459, 32.051483>,  <36.614639, 37.913742, 32.129013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850513, 37.720459, 32.051483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.032318, 37.394413, 31.907814>,  <36.141403, 37.198784, 31.821611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.032318, 37.394413, 31.907814>,  <35.850513, 37.720459, 32.051483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032318, 37.394413, 31.907814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579917, -0.576856, 0.575269,
		-0.676102, -0.053175, -0.734886,
		0.454513, -0.815113, -0.359176,
		36.168671, 37.149879, 31.800062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263706, 37.220322, 32.019531>,  <35.850513, 37.720459, 32.051483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263706, 37.220322, 32.019531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.598701, 37.004883, 31.982597>,  <35.799698, 36.875618, 31.960438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.598701, 37.004883, 31.982597>,  <35.263706, 37.220322, 32.019531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598701, 37.004883, 31.982597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360705, -0.671790, 0.646985,
		-0.410494, -0.508537, -0.756891,
		0.837488, -0.538598, -0.092334,
		35.849949, 36.843304, 31.954897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076939, 36.424885, 31.929064>,  <35.263706, 37.220322, 32.019531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076939, 36.424885, 31.929064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438641, 36.505016, 32.079895>,  <35.655663, 36.553097, 32.170395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.438641, 36.505016, 32.079895>,  <35.076939, 36.424885, 31.929064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438641, 36.505016, 32.079895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168759, -0.643538, 0.746578,
		0.392226, -0.738733, -0.548117,
		0.904256, 0.200328, 0.377080,
		35.709919, 36.565113, 32.193020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194077, 35.825615, 32.149494>,  <35.076939, 36.424885, 31.929064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194077, 35.825615, 32.149494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.462822, 36.056850, 32.334717>,  <35.624069, 36.195591, 32.445850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.462822, 36.056850, 32.334717>,  <35.194077, 35.825615, 32.149494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462822, 36.056850, 32.334717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041904, -0.594515, 0.802992,
		0.739493, -0.558901, -0.375206,
		0.671859, 0.578085, 0.463060,
		35.664379, 36.230274, 32.473633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536926, 35.370922, 32.525230>,  <35.194077, 35.825615, 32.149494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536926, 35.370922, 32.525230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.636925, 35.703140, 32.724308>,  <35.696922, 35.902470, 32.843754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.636925, 35.703140, 32.724308>,  <35.536926, 35.370922, 32.525230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636925, 35.703140, 32.724308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018686, -0.509781, 0.860101,
		0.968066, -0.224322, -0.111924,
		0.249997, 0.830543, 0.497694,
		35.711926, 35.952305, 32.873615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013298, 35.138763, 33.011806>,  <35.536926, 35.370922, 32.525230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013298, 35.138763, 33.011806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.894985, 35.493874, 33.152874>,  <35.823997, 35.706940, 33.237514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.894985, 35.493874, 33.152874>,  <36.013298, 35.138763, 33.011806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894985, 35.493874, 33.152874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011694, -0.372521, 0.927950,
		0.955185, 0.270345, 0.120566,
		-0.295780, 0.887773, 0.352665,
		35.806252, 35.760204, 33.258675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446468, 35.382938, 33.569717>,  <36.013298, 35.138763, 33.011806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446468, 35.382938, 33.569717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106861, 35.583260, 33.637081>,  <35.903095, 35.703453, 33.677498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106861, 35.583260, 33.637081>,  <36.446468, 35.382938, 33.569717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106861, 35.583260, 33.637081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009647, -0.303993, 0.952625,
		0.528274, 0.810422, 0.253265,
		-0.849019, 0.500804, 0.168410,
		35.852154, 35.733501, 33.687603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497734, 35.805725, 34.170193>,  <36.446468, 35.382938, 33.569717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497734, 35.805725, 34.170193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.118526, 35.692822, 34.111431>,  <35.891003, 35.625080, 34.076176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.118526, 35.692822, 34.111431>,  <36.497734, 35.805725, 34.170193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118526, 35.692822, 34.111431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039332, -0.354170, 0.934353,
		-0.315761, 0.891567, 0.324660,
		-0.948023, -0.282263, -0.146900,
		35.834118, 35.608143, 34.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.852329, 40.765446, 28.434458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459518, 40.732788, 28.366381>,  <37.223831, 40.713192, 28.325535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459518, 40.732788, 28.366381>,  <37.852329, 40.765446, 28.434458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459518, 40.732788, 28.366381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117684, -0.440129, 0.890190,
		-0.147589, 0.894215, 0.422608,
		-0.982022, -0.081648, -0.170193,
		37.164913, 40.708294, 28.315323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453804, 41.137745, 29.104351>,  <37.852329, 40.765446, 28.434458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453804, 41.137745, 29.104351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237442, 40.867580, 28.903858>,  <37.107624, 40.705482, 28.783562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237442, 40.867580, 28.903858>,  <37.453804, 41.137745, 29.104351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237442, 40.867580, 28.903858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311736, -0.392502, 0.865311,
		-0.781177, 0.624307, 0.001757,
		-0.540910, -0.675413, -0.501233,
		37.075169, 40.664955, 28.753489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831722, 41.145649, 29.538269>,  <37.453804, 41.137745, 29.104351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831722, 41.145649, 29.538269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841190, 40.820702, 29.305204>,  <36.846870, 40.625732, 29.165365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841190, 40.820702, 29.305204>,  <36.831722, 41.145649, 29.538269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841190, 40.820702, 29.305204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352553, -0.552164, 0.755527,
		-0.935493, 0.187536, -0.299473,
		0.023669, -0.812370, -0.582662,
		36.848289, 40.576992, 29.130405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227276, 40.700661, 29.689032>,  <36.831722, 41.145649, 29.538269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227276, 40.700661, 29.689032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497887, 40.454987, 29.526508>,  <36.660252, 40.307583, 29.428993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497887, 40.454987, 29.526508>,  <36.227276, 40.700661, 29.689032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497887, 40.454987, 29.526508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204274, -0.686597, 0.697752,
		-0.707526, -0.389043, -0.589959,
		0.676520, -0.614191, -0.406314,
		36.700844, 40.270729, 29.404615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900864, 40.007835, 29.845776>,  <36.227276, 40.700661, 29.689032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900864, 40.007835, 29.845776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280533, 39.921608, 29.754038>,  <36.508335, 39.869873, 29.698996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280533, 39.921608, 29.754038>,  <35.900864, 40.007835, 29.845776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280533, 39.921608, 29.754038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014956, -0.758719, 0.651246,
		-0.314398, -0.614716, -0.723380,
		0.949173, -0.215570, -0.229346,
		36.565285, 39.856937, 29.685234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928223, 39.242603, 29.720152>,  <35.900864, 40.007835, 29.845776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928223, 39.242603, 29.720152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311333, 39.340633, 29.780298>,  <36.541199, 39.399452, 29.816387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311333, 39.340633, 29.780298>,  <35.928223, 39.242603, 29.720152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311333, 39.340633, 29.780298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149768, -0.871638, 0.466708,
		0.245446, -0.424480, -0.871535,
		0.957771, 0.245079, 0.150367,
		36.598663, 39.414158, 29.825409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319565, 38.639416, 29.463564>,  <35.928223, 39.242603, 29.720152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319565, 38.639416, 29.463564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517693, 38.852184, 29.738291>,  <36.636570, 38.979843, 29.903128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517693, 38.852184, 29.738291>,  <36.319565, 38.639416, 29.463564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517693, 38.852184, 29.738291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105978, -0.821713, 0.559961,
		0.862221, -0.204573, -0.463383,
		0.495321, 0.531919, 0.686818,
		36.666290, 39.011761, 29.944336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026691, 38.284534, 29.579887>,  <36.319565, 38.639416, 29.463564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026691, 38.284534, 29.579887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950920, 38.508701, 29.902391>,  <36.905457, 38.643200, 30.095894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950920, 38.508701, 29.902391>,  <37.026691, 38.284534, 29.579887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950920, 38.508701, 29.902391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295163, -0.750649, 0.591105,
		0.936481, 0.349948, -0.023222,
		-0.189425, 0.560413, 0.806260,
		36.894093, 38.676826, 30.144270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610809, 38.151917, 30.022850>,  <37.026691, 38.284534, 29.579887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610809, 38.151917, 30.022850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301617, 38.295563, 30.232054>,  <37.116100, 38.381752, 30.357576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301617, 38.295563, 30.232054>,  <37.610809, 38.151917, 30.022850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301617, 38.295563, 30.232054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104503, -0.741041, 0.663277,
		0.625767, 0.567355, 0.535280,
		-0.772978, 0.359119, 0.523009,
		37.069725, 38.403297, 30.388956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259007, 38.496140, 30.571503>,  <37.610809, 38.151917, 30.022850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259007, 38.496140, 30.571503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658783, 38.509090, 30.568331>,  <38.898651, 38.516861, 30.566427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658783, 38.509090, 30.568331>,  <38.259007, 38.496140, 30.571503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658783, 38.509090, 30.568331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023438, 0.513435, -0.857809,
		-0.023700, 0.857518, 0.513908,
		0.999444, 0.032375, -0.007930,
		38.958618, 38.518803, 30.565952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403870, 39.140499, 30.226906>,  <38.259007, 38.496140, 30.571503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403870, 39.140499, 30.226906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740734, 38.932880, 30.168446>,  <38.942852, 38.808308, 30.133369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740734, 38.932880, 30.168446>,  <38.403870, 39.140499, 30.226906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740734, 38.932880, 30.168446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089444, 0.401746, -0.911372,
		0.531760, 0.754448, 0.384760,
		0.842158, -0.519046, -0.146151,
		38.993382, 38.777168, 30.124599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875858, 39.658916, 29.989208>,  <38.403870, 39.140499, 30.226906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875858, 39.658916, 29.989208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047581, 39.316689, 29.873491>,  <39.150616, 39.111351, 29.804062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047581, 39.316689, 29.873491>,  <38.875858, 39.658916, 29.989208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047581, 39.316689, 29.873491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082448, 0.356100, -0.930804,
		0.899386, 0.375752, 0.223417,
		0.429310, -0.855572, -0.289291,
		39.176373, 39.060017, 29.786703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390202, 39.914520, 29.549520>,  <38.875858, 39.658916, 29.989208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390202, 39.914520, 29.549520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361610, 39.521702, 29.479683>,  <39.344456, 39.286011, 29.437780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361610, 39.521702, 29.479683>,  <39.390202, 39.914520, 29.549520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361610, 39.521702, 29.479683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008445, 0.174441, -0.984631,
		0.997407, -0.071849, -0.004174,
		-0.071473, -0.982043, -0.174595,
		39.340168, 39.227089, 29.427305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814922, 39.859070, 29.014931>,  <39.390202, 39.914520, 29.549520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814922, 39.859070, 29.014931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604187, 39.519676, 28.994894>,  <39.477745, 39.316040, 28.982872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604187, 39.519676, 28.994894>,  <39.814922, 39.859070, 29.014931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604187, 39.519676, 28.994894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020336, 0.046334, -0.998719,
		0.849720, -0.527185, -0.007156,
		-0.526841, -0.848486, -0.050092,
		39.446133, 39.265129, 28.979866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218494, 39.453705, 28.574030>,  <39.814922, 39.859070, 29.014931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218494, 39.453705, 28.574030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830193, 39.357899, 28.580465>,  <39.597210, 39.300415, 28.584328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830193, 39.357899, 28.580465>,  <40.218494, 39.453705, 28.574030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830193, 39.357899, 28.580465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034714, 0.073737, -0.996673,
		0.237535, -0.968088, -0.079895,
		-0.970758, -0.239519, 0.016091,
		39.538963, 39.286045, 28.585293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227776, 38.990028, 28.070333>,  <40.218494, 39.453705, 28.574030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227776, 38.990028, 28.070333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841118, 39.083305, 28.112717>,  <39.609123, 39.139271, 28.138147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841118, 39.083305, 28.112717>,  <40.227776, 38.990028, 28.070333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841118, 39.083305, 28.112717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074860, 0.138415, -0.987541,
		-0.244953, -0.962529, -0.116340,
		-0.966640, 0.233192, 0.105960,
		39.551125, 39.153263, 28.144505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865829, 38.616879, 27.541416>,  <40.227776, 38.990028, 28.070333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865829, 38.616879, 27.541416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641739, 38.930870, 27.647205>,  <39.507282, 39.119267, 27.710678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641739, 38.930870, 27.647205>,  <39.865829, 38.616879, 27.541416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641739, 38.930870, 27.647205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087056, 0.261714, -0.961211,
		-0.823750, -0.561522, -0.078283,
		-0.560229, 0.784983, 0.264471,
		39.473671, 39.166367, 27.726547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339439, 38.621128, 27.040106>,  <39.865829, 38.616879, 27.541416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339439, 38.621128, 27.040106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330387, 38.995815, 27.179850>,  <39.324955, 39.220627, 27.263695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330387, 38.995815, 27.179850>,  <39.339439, 38.621128, 27.040106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330387, 38.995815, 27.179850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018379, 0.349778, -0.936652,
		-0.999575, -0.014778, -0.025132,
		-0.022633, 0.936716, 0.349357,
		39.323597, 39.276829, 27.284657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818108, 39.025391, 26.677681>,  <39.339439, 38.621128, 27.040106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818108, 39.025391, 26.677681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068245, 39.289268, 26.844414>,  <39.218327, 39.447598, 26.944454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068245, 39.289268, 26.844414>,  <38.818108, 39.025391, 26.677681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068245, 39.289268, 26.844414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005989, 0.538201, -0.842795,
		-0.780329, 0.524538, 0.340510,
		0.625341, 0.659697, 0.416832,
		39.255848, 39.487179, 26.969463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478733, 39.678932, 26.587036>,  <38.818108, 39.025391, 26.677681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478733, 39.678932, 26.587036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877777, 39.704678, 26.597019>,  <39.117203, 39.720127, 26.603008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877777, 39.704678, 26.597019>,  <38.478733, 39.678932, 26.587036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877777, 39.704678, 26.597019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011691, 0.513797, -0.857832,
		-0.068039, 0.855494, 0.513323,
		0.997614, 0.064367, 0.024956,
		39.177063, 39.723988, 26.604506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655323, 40.288376, 26.326908>,  <38.478733, 39.678932, 26.587036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655323, 40.288376, 26.326908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025581, 40.137890, 26.310646>,  <39.247734, 40.047600, 26.300888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025581, 40.137890, 26.310646>,  <38.655323, 40.288376, 26.326908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025581, 40.137890, 26.310646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161426, 0.489762, -0.856782,
		0.342243, 0.786510, 0.514074,
		0.925641, -0.376212, -0.040655,
		39.303272, 40.025024, 26.298450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089344, 40.774261, 25.990505>,  <38.655323, 40.288376, 26.326908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089344, 40.774261, 25.990505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300953, 40.435204, 25.974319>,  <39.427917, 40.231770, 25.964607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300953, 40.435204, 25.974319>,  <39.089344, 40.774261, 25.990505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300953, 40.435204, 25.974319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385713, 0.282652, -0.878256,
		0.755885, 0.449009, 0.476476,
		0.529022, -0.847643, -0.040464,
		39.459660, 40.180912, 25.962181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693104, 40.914188, 25.742836>,  <39.089344, 40.774261, 25.990505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693104, 40.914188, 25.742836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 40.523304, 25.661385>,  <39.654705, 40.288773, 25.612513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 40.523304, 25.661385>,  <39.693104, 40.914188, 25.742836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669106, 40.523304, 25.661385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390065, 0.164826, -0.905915,
		0.918831, -0.133782, 0.371285,
		-0.059997, -0.977208, -0.203630,
		39.651108, 40.230141, 25.600296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.977032, 34.406841, 23.482023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102005, 34.758781, 23.625275>,  <34.176987, 34.969944, 23.711226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.102005, 34.758781, 23.625275>,  <33.977032, 34.406841, 23.482023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102005, 34.758781, 23.625275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231228, -0.436102, 0.869683,
		0.921369, -0.188905, -0.339697,
		0.312430, 0.879847, 0.358130,
		34.195736, 35.022736, 23.732714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616699, 34.288879, 23.704657>,  <33.977032, 34.406841, 23.482023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616699, 34.288879, 23.704657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498207, 34.610603, 23.910700>,  <34.427113, 34.803638, 24.034327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.498207, 34.610603, 23.910700>,  <34.616699, 34.288879, 23.704657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498207, 34.610603, 23.910700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326123, -0.421725, 0.846044,
		0.897715, 0.418611, -0.137377,
		-0.296228, 0.804309, 0.515108,
		34.409340, 34.851894, 24.065233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179642, 34.482792, 24.206196>,  <34.616699, 34.288879, 23.704657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179642, 34.482792, 24.206196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843529, 34.656418, 24.336132>,  <34.641861, 34.760593, 24.414093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843529, 34.656418, 24.336132>,  <35.179642, 34.482792, 24.206196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843529, 34.656418, 24.336132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121805, -0.432706, 0.893269,
		0.528293, 0.790163, 0.310723,
		-0.840280, 0.434060, 0.324841,
		34.591446, 34.786636, 24.433584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420643, 34.711590, 24.854242>,  <35.179642, 34.482792, 24.206196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420643, 34.711590, 24.854242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021877, 34.684116, 24.869455>,  <34.782619, 34.667633, 24.878582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021877, 34.684116, 24.869455>,  <35.420643, 34.711590, 24.854242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021877, 34.684116, 24.869455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062343, -0.398091, 0.915225,
		-0.047725, 0.914770, 0.401145,
		-0.996913, -0.068688, 0.038030,
		34.722805, 34.663509, 24.880865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228119, 35.026230, 25.476902>,  <35.420643, 34.711590, 24.854242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228119, 35.026230, 25.476902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909626, 34.810459, 25.367336>,  <34.718529, 34.680996, 25.301598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909626, 34.810459, 25.367336>,  <35.228119, 35.026230, 25.476902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909626, 34.810459, 25.367336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022874, -0.425594, 0.904625,
		-0.604554, 0.726560, 0.326534,
		-0.796236, -0.539426, -0.273914,
		34.670753, 34.648632, 25.285162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859577, 35.050117, 26.228533>,  <35.228119, 35.026230, 25.476902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859577, 35.050117, 26.228533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668270, 34.775166, 26.009892>,  <34.553486, 34.610195, 25.878708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.668270, 34.775166, 26.009892>,  <34.859577, 35.050117, 26.228533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668270, 34.775166, 26.009892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217027, -0.510588, 0.831985,
		-0.850977, 0.516536, 0.095016,
		-0.478264, -0.687379, -0.546601,
		34.524792, 34.568951, 25.845911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201199, 34.917912, 26.549465>,  <34.859577, 35.050117, 26.228533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201199, 34.917912, 26.549465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.259220, 34.606541, 26.305166>,  <34.294033, 34.419720, 26.158587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.259220, 34.606541, 26.305166>,  <34.201199, 34.917912, 26.549465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259220, 34.606541, 26.305166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261937, -0.625467, 0.734970,
		-0.954122, 0.053366, -0.294626,
		0.145056, -0.778424, -0.610750,
		34.302738, 34.373013, 26.121941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603569, 34.526409, 26.642851>,  <34.201199, 34.917912, 26.549465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603569, 34.526409, 26.642851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897114, 34.284603, 26.518909>,  <34.073242, 34.139519, 26.444544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.897114, 34.284603, 26.518909>,  <33.603569, 34.526409, 26.642851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897114, 34.284603, 26.518909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197478, -0.626292, 0.754162,
		-0.649965, -0.492258, -0.578988,
		0.733858, -0.604517, -0.309858,
		34.117271, 34.103249, 26.425953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314087, 33.818863, 26.750814>,  <33.603569, 34.526409, 26.642851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314087, 33.818863, 26.750814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709404, 33.774658, 26.708740>,  <33.946594, 33.748135, 26.683496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.709404, 33.774658, 26.708740>,  <33.314087, 33.818863, 26.750814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709404, 33.774658, 26.708740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008437, -0.648789, 0.760922,
		-0.152335, -0.752901, -0.640261,
		0.988293, -0.110513, -0.105185,
		34.005894, 33.741505, 26.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401966, 33.147755, 26.747448>,  <33.314087, 33.818863, 26.750814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401966, 33.147755, 26.747448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768703, 33.283775, 26.831121>,  <33.988747, 33.365387, 26.881325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.768703, 33.283775, 26.831121>,  <33.401966, 33.147755, 26.747448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768703, 33.283775, 26.831121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080032, -0.669862, 0.738160,
		0.391136, -0.660038, -0.641375,
		0.916846, 0.340051, 0.209183,
		34.043758, 33.385792, 26.893877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857635, 32.582977, 26.541906>,  <33.401966, 33.147755, 26.747448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857635, 32.582977, 26.541906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975864, 32.833061, 26.830835>,  <34.046803, 32.983112, 27.004192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975864, 32.833061, 26.830835>,  <33.857635, 32.582977, 26.541906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975864, 32.833061, 26.830835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068304, -0.740337, 0.668756,
		0.952875, -0.247005, -0.176121,
		0.295575, 0.625211, 0.722320,
		34.064537, 33.020626, 27.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187157, 32.070702, 27.039513>,  <33.857635, 32.582977, 26.541906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187157, 32.070702, 27.039513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.168819, 32.410801, 27.249268>,  <34.157818, 32.614861, 27.375120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.168819, 32.410801, 27.249268>,  <34.187157, 32.070702, 27.039513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168819, 32.410801, 27.249268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352074, -0.477505, 0.805005,
		0.934849, 0.221524, -0.277461,
		-0.045839, 0.850245, 0.524388,
		34.155067, 32.665874, 27.406584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762745, 32.090176, 27.444815>,  <34.187157, 32.070702, 27.039513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762745, 32.090176, 27.444815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531853, 32.356297, 27.634207>,  <34.393318, 32.515968, 27.747843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.531853, 32.356297, 27.634207>,  <34.762745, 32.090176, 27.444815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531853, 32.356297, 27.634207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126819, -0.499759, 0.856830,
		0.806676, 0.554631, 0.204102,
		-0.577227, 0.665300, 0.473481,
		34.358685, 32.555885, 27.776251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169456, 32.268375, 28.058754>,  <34.762745, 32.090176, 27.444815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169456, 32.268375, 28.058754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787533, 32.361626, 28.132494>,  <34.558376, 32.417576, 28.176737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787533, 32.361626, 28.132494>,  <35.169456, 32.268375, 28.058754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787533, 32.361626, 28.132494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080922, -0.392918, 0.916006,
		0.285976, 0.889533, 0.356299,
		-0.954814, 0.233123, 0.184348,
		34.501087, 32.431564, 28.187798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569698, 32.860855, 28.107559>,  <35.169456, 32.268375, 28.058754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569698, 32.860855, 28.107559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967571, 32.846745, 28.146246>,  <36.206295, 32.838280, 28.169458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.967571, 32.846745, 28.146246>,  <35.569698, 32.860855, 28.107559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967571, 32.846745, 28.146246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100879, 0.521410, -0.847322,
		-0.020540, 0.852577, 0.522198,
		0.994687, -0.035275, 0.096717,
		36.265976, 32.836163, 28.175261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909962, 33.494717, 27.967073>,  <35.569698, 32.860855, 28.107559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909962, 33.494717, 27.967073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232456, 33.263237, 27.917925>,  <36.425953, 33.124352, 27.888435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232456, 33.263237, 27.917925>,  <35.909962, 33.494717, 27.967073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232456, 33.263237, 27.917925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275520, 0.551092, -0.787646,
		0.523522, 0.601173, 0.603751,
		0.806234, -0.578695, -0.122873,
		36.474327, 33.089630, 27.881063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449326, 33.931805, 27.677700>,  <35.909962, 33.494717, 27.967073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449326, 33.931805, 27.677700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611347, 33.575741, 27.594227>,  <36.708561, 33.362103, 27.544142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611347, 33.575741, 27.594227>,  <36.449326, 33.931805, 27.677700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611347, 33.575741, 27.594227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485495, 0.402816, -0.775908,
		0.774744, 0.212967, 0.595329,
		0.405051, -0.890159, -0.208685,
		36.732864, 33.308693, 27.531622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140438, 34.046722, 27.456028>,  <36.449326, 33.931805, 27.677700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140438, 34.046722, 27.456028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025082, 33.691494, 27.312826>,  <36.955868, 33.478359, 27.226904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025082, 33.691494, 27.312826>,  <37.140438, 34.046722, 27.456028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025082, 33.691494, 27.312826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442156, 0.208128, -0.872457,
		0.849311, -0.409902, 0.332642,
		-0.288390, -0.888067, -0.358006,
		36.938564, 33.425076, 27.205423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765244, 33.794018, 27.092022>,  <37.140438, 34.046722, 27.456028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765244, 33.794018, 27.092022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459587, 33.598465, 26.923697>,  <37.276192, 33.481133, 26.822701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.459587, 33.598465, 26.923697>,  <37.765244, 33.794018, 27.092022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459587, 33.598465, 26.923697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332580, 0.260383, -0.906417,
		0.552704, -0.832583, -0.036376,
		-0.764139, -0.488882, -0.420815,
		37.230347, 33.451801, 26.797453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029369, 33.388973, 26.469881>,  <37.765244, 33.794018, 27.092022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029369, 33.388973, 26.469881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634197, 33.424347, 26.419003>,  <37.397095, 33.445572, 26.388475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.634197, 33.424347, 26.419003>,  <38.029369, 33.388973, 26.469881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634197, 33.424347, 26.419003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149574, 0.330655, -0.931824,
		-0.040349, -0.939599, -0.339891,
		-0.987927, 0.088437, -0.127198,
		37.337818, 33.450878, 26.380842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971237, 33.172428, 25.790928>,  <38.029369, 33.388973, 26.469881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971237, 33.172428, 25.790928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627655, 33.364166, 25.862961>,  <37.421505, 33.479210, 25.906181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.627655, 33.364166, 25.862961>,  <37.971237, 33.172428, 25.790928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627655, 33.364166, 25.862961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085381, 0.480838, -0.872643,
		-0.504889, -0.734182, -0.453943,
		-0.858951, 0.479346, 0.180084,
		37.369968, 33.507969, 25.916986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546543, 33.080265, 25.250164>,  <37.971237, 33.172428, 25.790928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546543, 33.080265, 25.250164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382938, 33.399948, 25.426336>,  <37.284775, 33.591759, 25.532040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.382938, 33.399948, 25.426336>,  <37.546543, 33.080265, 25.250164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382938, 33.399948, 25.426336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036348, 0.467996, -0.882983,
		-0.911806, -0.377157, -0.162365,
		-0.409009, 0.799208, 0.440431,
		37.260235, 33.639709, 25.558466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991104, 33.256569, 24.819828>,  <37.546543, 33.080265, 25.250164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991104, 33.256569, 24.819828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109463, 33.570808, 25.037186>,  <37.180477, 33.759354, 25.167601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109463, 33.570808, 25.037186>,  <36.991104, 33.256569, 24.819828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109463, 33.570808, 25.037186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081843, 0.587626, -0.804983,
		-0.951707, 0.193721, 0.238174,
		0.295899, 0.785601, 0.543392,
		37.198231, 33.806488, 25.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602848, 33.883888, 24.579100>,  <36.991104, 33.256569, 24.819828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602848, 33.883888, 24.579100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919891, 34.060162, 24.747656>,  <37.110119, 34.165924, 24.848789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.919891, 34.060162, 24.747656>,  <36.602848, 33.883888, 24.579100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919891, 34.060162, 24.747656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029084, 0.717652, -0.695794,
		-0.609036, 0.539237, 0.581634,
		0.792609, 0.440681, 0.421393,
		37.157673, 34.192368, 24.874073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619057, 34.674294, 24.721783>,  <36.602848, 33.883888, 24.579100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619057, 34.674294, 24.721783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000584, 34.572086, 24.658609>,  <37.229500, 34.510761, 24.620707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.000584, 34.572086, 24.658609>,  <36.619057, 34.674294, 24.721783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000584, 34.572086, 24.658609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070952, 0.702531, -0.708107,
		0.291884, 0.664200, 0.688216,
		0.953818, -0.255516, -0.157931,
		37.286728, 34.495430, 24.611231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004074, 35.293339, 24.769522>,  <36.619057, 34.674294, 24.721783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004074, 35.293339, 24.769522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209736, 35.027267, 24.552937>,  <37.333134, 34.867622, 24.422985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209736, 35.027267, 24.552937>,  <37.004074, 35.293339, 24.769522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209736, 35.027267, 24.552937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007146, 0.634598, -0.772810,
		0.857669, 0.393473, 0.331034,
		0.514153, -0.665180, -0.541463,
		37.363983, 34.827713, 24.390497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406826, 35.737797, 24.427624>,  <37.004074, 35.293339, 24.769522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406826, 35.737797, 24.427624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420113, 35.394409, 24.222908>,  <37.428085, 35.188377, 24.100079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420113, 35.394409, 24.222908>,  <37.406826, 35.737797, 24.427624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420113, 35.394409, 24.222908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204689, 0.507061, -0.837252,
		0.978263, -0.076943, 0.192564,
		0.033221, -0.858469, -0.511789,
		37.430080, 35.136868, 24.069372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983620, 35.757183, 24.094454>,  <37.406826, 35.737797, 24.427624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983620, 35.757183, 24.094454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750473, 35.505135, 23.889240>,  <37.610584, 35.353905, 23.766111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750473, 35.505135, 23.889240>,  <37.983620, 35.757183, 24.094454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750473, 35.505135, 23.889240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168699, 0.523777, -0.834984,
		0.794860, -0.573236, -0.198992,
		-0.582870, -0.630126, -0.513034,
		37.575611, 35.316097, 23.735331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646152, 35.472298, 24.065399>,  <37.983620, 35.757183, 24.094454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646152, 35.472298, 24.065399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025978, 35.591007, 24.024914>,  <39.253876, 35.662231, 24.000622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.025978, 35.591007, 24.024914>,  <38.646152, 35.472298, 24.065399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025978, 35.591007, 24.024914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263291, -0.579356, 0.771379,
		0.170287, -0.759125, -0.628276,
		0.949568, 0.296775, -0.101214,
		39.310848, 35.680038, 23.994549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997509, 34.939789, 24.228445>,  <38.646152, 35.472298, 24.065399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997509, 34.939789, 24.228445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266212, 35.229980, 24.288342>,  <39.427433, 35.404095, 24.324280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.266212, 35.229980, 24.288342>,  <38.997509, 34.939789, 24.228445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266212, 35.229980, 24.288342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348554, -0.487927, 0.800273,
		0.653643, -0.485398, -0.580637,
		0.671760, 0.725476, 0.149742,
		39.467739, 35.447624, 24.333263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786709, 34.678551, 24.163441>,  <38.997509, 34.939789, 24.228445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786709, 34.678551, 24.163441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781605, 35.011467, 24.385115>,  <39.778542, 35.211216, 24.518120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781605, 35.011467, 24.385115>,  <39.786709, 34.678551, 24.163441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781605, 35.011467, 24.385115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300089, -0.525497, 0.796115,
		0.953826, 0.176460, -0.243059,
		-0.012756, 0.832295, 0.554186,
		39.777779, 35.261154, 24.551371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384609, 34.580933, 24.595665>,  <39.786709, 34.678551, 24.163441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384609, 34.580933, 24.595665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.179398, 34.883060, 24.758780>,  <40.056271, 35.064339, 24.856647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.179398, 34.883060, 24.758780>,  <40.384609, 34.580933, 24.595665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179398, 34.883060, 24.758780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430903, -0.184248, 0.883388,
		0.742377, 0.628920, -0.230946,
		-0.513029, 0.755322, 0.407785,
		40.025490, 35.109657, 24.881115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786770, 34.853264, 25.064419>,  <40.384609, 34.580933, 24.595665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786770, 34.853264, 25.064419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443188, 34.996758, 25.210571>,  <40.237038, 35.082855, 25.298262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443188, 34.996758, 25.210571>,  <40.786770, 34.853264, 25.064419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443188, 34.996758, 25.210571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349035, -0.111905, 0.930404,
		0.374655, 0.926708, -0.029090,
		-0.858957, 0.358734, 0.365379,
		40.185501, 35.104378, 25.320185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011253, 35.316093, 25.601683>,  <40.786770, 34.853264, 25.064419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011253, 35.316093, 25.601683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623489, 35.250599, 25.674826>,  <40.390831, 35.211304, 25.718712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623489, 35.250599, 25.674826>,  <41.011253, 35.316093, 25.601683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623489, 35.250599, 25.674826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206146, -0.138753, 0.968634,
		-0.133229, 0.976697, 0.168262,
		-0.969409, -0.163736, 0.182856,
		40.332668, 35.201477, 25.729683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684750, 35.834267, 26.072647>,  <41.011253, 35.316093, 25.601683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684750, 35.834267, 26.072647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442604, 35.519360, 26.119534>,  <40.297318, 35.330414, 26.147665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.442604, 35.519360, 26.119534>,  <40.684750, 35.834267, 26.072647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442604, 35.519360, 26.119534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160974, 0.023129, 0.986688,
		-0.779503, 0.616172, 0.112729,
		-0.605362, -0.787272, 0.117217,
		40.260994, 35.283176, 26.154699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119743, 35.994373, 26.642170>,  <40.684750, 35.834267, 26.072647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119743, 35.994373, 26.642170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106102, 35.596634, 26.601974>,  <40.097916, 35.357990, 26.577856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.106102, 35.596634, 26.601974>,  <40.119743, 35.994373, 26.642170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106102, 35.596634, 26.601974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070523, -0.097904, 0.992694,
		-0.996927, 0.040946, -0.066786,
		-0.034108, -0.994353, -0.100490,
		40.095871, 35.298328, 26.571827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673359, 35.861610, 27.118214>,  <40.119743, 35.994373, 26.642170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673359, 35.861610, 27.118214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838840, 35.501083, 27.066870>,  <39.938129, 35.284767, 27.036064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838840, 35.501083, 27.066870>,  <39.673359, 35.861610, 27.118214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838840, 35.501083, 27.066870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133129, -0.199367, 0.970840,
		-0.900624, -0.384553, -0.202471,
		0.413706, -0.901317, -0.128359,
		39.962952, 35.230690, 27.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281960, 35.347778, 27.468437>,  <39.673359, 35.861610, 27.118214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281960, 35.347778, 27.468437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630222, 35.157082, 27.419989>,  <39.839180, 35.042664, 27.390919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.630222, 35.157082, 27.419989>,  <39.281960, 35.347778, 27.468437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630222, 35.157082, 27.419989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030509, -0.298102, 0.954046,
		-0.490946, -0.826951, -0.274090,
		0.870656, -0.476747, -0.121122,
		39.891418, 35.014057, 27.383652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210850, 34.582451, 27.594759>,  <39.281960, 35.347778, 27.468437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210850, 34.582451, 27.594759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590096, 34.692810, 27.657948>,  <39.817642, 34.759026, 27.695860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.590096, 34.692810, 27.657948>,  <39.210850, 34.582451, 27.594759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590096, 34.692810, 27.657948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050734, -0.359218, 0.931874,
		0.313847, -0.891540, -0.326583,
		0.948117, 0.275897, 0.157971,
		39.874531, 34.775578, 27.705339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464611, 33.916348, 27.868080>,  <39.210850, 34.582451, 27.594759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464611, 33.916348, 27.868080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706272, 34.224293, 27.950354>,  <39.851269, 34.409061, 27.999718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.706272, 34.224293, 27.950354>,  <39.464611, 33.916348, 27.868080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706272, 34.224293, 27.950354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101991, -0.330699, 0.938209,
		0.790314, -0.545844, -0.278312,
		0.604154, 0.769865, 0.205685,
		39.887520, 34.455254, 28.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104641, 33.685444, 28.103752>,  <39.464611, 33.916348, 27.868080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104641, 33.685444, 28.103752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.089222, 34.060017, 28.243248>,  <40.079971, 34.284760, 28.326944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.089222, 34.060017, 28.243248>,  <40.104641, 33.685444, 28.103752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089222, 34.060017, 28.243248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136592, -0.340784, 0.930166,
		0.989877, 0.083486, -0.114773,
		-0.038543, 0.936427, 0.348738,
		40.077660, 34.340946, 28.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560535, 33.631100, 28.640968>,  <40.104641, 33.685444, 28.103752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560535, 33.631100, 28.640968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.312233, 33.938904, 28.700989>,  <40.163254, 34.123589, 28.737001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.312233, 33.938904, 28.700989>,  <40.560535, 33.631100, 28.640968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312233, 33.938904, 28.700989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144088, -0.300104, 0.942962,
		0.770652, 0.563726, 0.297168,
		-0.620753, 0.769514, 0.150049,
		40.126007, 34.169758, 28.746004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.249905, 40.719841, 25.243605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.026356, 40.390781, 25.201841>,  <39.892227, 40.193344, 25.176785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.026356, 40.390781, 25.201841>,  <40.249905, 40.719841, 25.243605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026356, 40.390781, 25.201841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185149, -0.001062, -0.982710,
		0.808317, -0.568544, 0.152907,
		-0.558876, -0.822652, -0.104407,
		39.858692, 40.143986, 25.170519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668118, 40.176319, 24.919193>,  <40.249905, 40.719841, 25.243605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668118, 40.176319, 24.919193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.282768, 40.096245, 24.847816>,  <40.051559, 40.048199, 24.804991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.282768, 40.096245, 24.847816>,  <40.668118, 40.176319, 24.919193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282768, 40.096245, 24.847816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183681, -0.007750, -0.982955,
		0.195393, -0.979727, 0.044237,
		-0.963370, -0.200188, -0.178443,
		39.993755, 40.036190, 24.794283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675621, 39.704300, 24.318502>,  <40.668118, 40.176319, 24.919193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675621, 39.704300, 24.318502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297390, 39.828426, 24.357681>,  <40.070454, 39.902901, 24.381187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297390, 39.828426, 24.357681>,  <40.675621, 39.704300, 24.318502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297390, 39.828426, 24.357681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024048, 0.233532, -0.972052,
		-0.324519, -0.921502, -0.213359,
		-0.945574, 0.310318, 0.097946,
		40.013718, 39.921520, 24.387064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257397, 39.296535, 23.855848>,  <40.675621, 39.704300, 24.318502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257397, 39.296535, 23.855848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.070820, 39.648205, 23.894806>,  <39.958874, 39.859207, 23.918180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.070820, 39.648205, 23.894806>,  <40.257397, 39.296535, 23.855848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070820, 39.648205, 23.894806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040609, 0.088706, -0.995230,
		-0.883618, -0.468175, -0.005674,
		-0.466445, 0.879172, 0.097394,
		39.930885, 39.911957, 23.924025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699505, 39.340988, 23.281656>,  <40.257397, 39.296535, 23.855848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699505, 39.340988, 23.281656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782841, 39.718254, 23.385223>,  <39.832840, 39.944614, 23.447363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782841, 39.718254, 23.385223>,  <39.699505, 39.340988, 23.281656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782841, 39.718254, 23.385223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151252, 0.292608, -0.944194,
		-0.966291, 0.157548, 0.203616,
		0.208335, 0.943164, 0.258916,
		39.845341, 40.001202, 23.462898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262566, 39.773396, 22.894859>,  <39.699505, 39.340988, 23.281656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262566, 39.773396, 22.894859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548065, 40.039322, 22.983023>,  <39.719364, 40.198875, 23.035921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.548065, 40.039322, 22.983023>,  <39.262566, 39.773396, 22.894859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548065, 40.039322, 22.983023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025362, 0.339017, -0.940438,
		-0.699939, 0.665650, 0.258835,
		0.713752, 0.664814, 0.220409,
		39.762192, 40.238766, 23.049145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021778, 40.354881, 22.612810>,  <39.262566, 39.773396, 22.894859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021778, 40.354881, 22.612810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.403137, 40.442673, 22.695623>,  <39.631954, 40.495346, 22.745312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.403137, 40.442673, 22.695623>,  <39.021778, 40.354881, 22.612810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403137, 40.442673, 22.695623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040312, 0.587367, -0.808316,
		-0.299010, 0.778993, 0.551147,
		0.953398, 0.219476, 0.207031,
		39.689156, 40.508514, 22.757732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082432, 41.136082, 22.657269>,  <39.021778, 40.354881, 22.612810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082432, 41.136082, 22.657269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448906, 41.000538, 22.571676>,  <39.668789, 40.919212, 22.520321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448906, 41.000538, 22.571676>,  <39.082432, 41.136082, 22.657269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448906, 41.000538, 22.571676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076173, 0.671438, -0.737135,
		0.393459, 0.659050, 0.640971,
		0.916181, -0.338857, -0.213982,
		39.723759, 40.898880, 22.507483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469986, 41.778790, 22.419571>,  <39.082432, 41.136082, 22.657269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469986, 41.778790, 22.419571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648018, 41.439434, 22.304934>,  <39.754837, 41.235821, 22.236151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648018, 41.439434, 22.304934>,  <39.469986, 41.778790, 22.419571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648018, 41.439434, 22.304934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151319, 0.386694, -0.909709,
		0.882614, 0.361526, 0.300487,
		0.445080, -0.848391, -0.286595,
		39.781540, 41.184917, 22.218954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092377, 42.037785, 22.164291>,  <39.469986, 41.778790, 22.419571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092377, 42.037785, 22.164291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079556, 41.674782, 21.996769>,  <40.071861, 41.456978, 21.896255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.079556, 41.674782, 21.996769>,  <40.092377, 42.037785, 22.164291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079556, 41.674782, 21.996769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250910, 0.412912, -0.875527,
		0.967480, 0.077017, -0.240939,
		-0.032056, -0.907509, -0.418808,
		40.069939, 41.402531, 21.871126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470543, 42.073215, 21.495705>,  <40.092377, 42.037785, 22.164291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470543, 42.073215, 21.495705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236610, 41.748844, 21.488129>,  <40.096249, 41.554222, 21.483583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.236610, 41.748844, 21.488129>,  <40.470543, 42.073215, 21.495705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236610, 41.748844, 21.488129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144301, 0.126991, -0.981351,
		0.798215, -0.571193, -0.191287,
		-0.584833, -0.810932, -0.018942,
		40.061161, 41.505566, 21.482447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746559, 41.550098, 20.917391>,  <40.470543, 42.073215, 21.495705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746559, 41.550098, 20.917391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.355072, 41.509212, 20.988577>,  <40.120182, 41.484680, 21.031288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.355072, 41.509212, 20.988577>,  <40.746559, 41.550098, 20.917391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355072, 41.509212, 20.988577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178149, -0.007413, -0.983976,
		0.101897, -0.994735, -0.010955,
		-0.978713, -0.102215, 0.177966,
		40.061459, 41.478546, 21.041967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560352, 40.959930, 20.538572>,  <40.746559, 41.550098, 20.917391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560352, 40.959930, 20.538572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244923, 41.197674, 20.601667>,  <40.055664, 41.340321, 20.639524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244923, 41.197674, 20.601667>,  <40.560352, 40.959930, 20.538572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244923, 41.197674, 20.601667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231836, -0.049773, -0.971481,
		-0.569561, -0.802655, 0.177044,
		-0.788576, 0.594363, 0.157735,
		40.008350, 41.375984, 20.648989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842022, 40.662319, 20.304110>,  <40.560352, 40.959930, 20.538572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842022, 40.662319, 20.304110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846893, 41.060204, 20.263304>,  <39.849815, 41.298935, 20.238819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846893, 41.060204, 20.263304>,  <39.842022, 40.662319, 20.304110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846893, 41.060204, 20.263304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181913, -0.098117, -0.978407,
		-0.983239, 0.030474, 0.179755,
		0.012179, 0.994708, -0.102016,
		39.850548, 41.358616, 20.232698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914242, 39.959557, 20.293318>,  <39.842022, 40.662319, 20.304110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914242, 39.959557, 20.293318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.728516, 39.707443, 20.044432>,  <39.617081, 39.556175, 19.895100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.728516, 39.707443, 20.044432>,  <39.914242, 39.959557, 20.293318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728516, 39.707443, 20.044432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003405, -0.703805, 0.710385,
		-0.885661, 0.327727, 0.328937,
		-0.464320, -0.630280, -0.622217,
		39.589218, 39.518360, 19.857767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208038, 39.783119, 20.607391>,  <39.914242, 39.959557, 20.293318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208038, 39.783119, 20.607391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354843, 39.506054, 20.359030>,  <39.442924, 39.339817, 20.210012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.354843, 39.506054, 20.359030>,  <39.208038, 39.783119, 20.607391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354843, 39.506054, 20.359030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089303, -0.690638, 0.717666,
		-0.925921, -0.207942, -0.315327,
		0.367009, -0.692661, -0.620906,
		39.464947, 39.298256, 20.172758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734936, 39.362392, 20.625366>,  <39.208038, 39.783119, 20.607391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734936, 39.362392, 20.625366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035355, 39.143929, 20.476967>,  <39.215607, 39.012852, 20.387928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035355, 39.143929, 20.476967>,  <38.734936, 39.362392, 20.625366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035355, 39.143929, 20.476967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089869, -0.641242, 0.762058,
		-0.654115, -0.538991, -0.530680,
		0.751037, -0.546166, -0.371008,
		39.260670, 38.980083, 20.365667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521828, 38.822746, 20.840063>,  <38.734936, 39.362392, 20.625366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521828, 38.822746, 20.840063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901615, 38.751911, 20.736408>,  <39.129486, 38.709412, 20.674215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901615, 38.751911, 20.736408>,  <38.521828, 38.822746, 20.840063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901615, 38.751911, 20.736408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011978, -0.804589, 0.593711,
		-0.313638, -0.566813, -0.761810,
		0.949467, -0.177085, -0.259139,
		39.186455, 38.698784, 20.658667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502052, 38.151646, 20.599913>,  <38.521828, 38.822746, 20.840063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502052, 38.151646, 20.599913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875034, 38.246769, 20.708712>,  <39.098824, 38.303844, 20.773991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875034, 38.246769, 20.708712>,  <38.502052, 38.151646, 20.599913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875034, 38.246769, 20.708712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106146, -0.899927, 0.422924,
		0.345351, -0.365485, -0.864381,
		0.932452, 0.237807, 0.271996,
		39.154770, 38.318111, 20.790310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827137, 37.542355, 20.496054>,  <38.502052, 38.151646, 20.599913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827137, 37.542355, 20.496054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.073875, 37.755875, 20.727421>,  <39.221916, 37.883987, 20.866241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.073875, 37.755875, 20.727421>,  <38.827137, 37.542355, 20.496054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073875, 37.755875, 20.727421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133477, -0.795184, 0.591496,
		0.775687, -0.287654, -0.561752,
		0.616843, 0.533796, 0.578418,
		39.258926, 37.916012, 20.900946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408710, 37.102535, 20.560390>,  <38.827137, 37.542355, 20.496054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408710, 37.102535, 20.560390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391808, 37.357262, 20.868332>,  <39.381664, 37.510098, 21.053097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.391808, 37.357262, 20.868332>,  <39.408710, 37.102535, 20.560390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391808, 37.357262, 20.868332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266746, -0.735382, 0.622944,
		0.962840, 0.231680, -0.138794,
		-0.042257, 0.636818, 0.769855,
		39.379131, 37.548306, 21.099289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881390, 36.747704, 20.990448>,  <39.408710, 37.102535, 20.560390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881390, 36.747704, 20.990448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.691647, 37.011589, 21.223602>,  <39.577801, 37.169922, 21.363495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.691647, 37.011589, 21.223602>,  <39.881390, 36.747704, 20.990448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691647, 37.011589, 21.223602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145231, -0.594402, 0.790945,
		0.868269, 0.459846, 0.186149,
		-0.474360, 0.659718, 0.582885,
		39.549339, 37.209503, 21.398468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301537, 36.908192, 21.600819>,  <39.881390, 36.747704, 20.990448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301537, 36.908192, 21.600819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928272, 37.000679, 21.710909>,  <39.704315, 37.056171, 21.776962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.928272, 37.000679, 21.710909>,  <40.301537, 36.908192, 21.600819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928272, 37.000679, 21.710909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190636, -0.330786, 0.924250,
		0.304740, 0.914943, 0.264599,
		-0.933162, 0.231214, 0.275225,
		39.648323, 37.070042, 21.793476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348347, 37.187805, 22.301624>,  <40.301537, 36.908192, 21.600819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348347, 37.187805, 22.301624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956146, 37.110435, 22.287764>,  <39.720825, 37.064014, 22.279448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.956146, 37.110435, 22.287764>,  <40.348347, 37.187805, 22.301624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956146, 37.110435, 22.287764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043886, -0.387442, 0.920849,
		-0.191537, 0.901375, 0.388377,
		-0.980504, -0.193420, -0.034652,
		39.661995, 37.052410, 22.277369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015060, 37.441635, 22.936340>,  <40.348347, 37.187805, 22.301624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015060, 37.441635, 22.936340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780704, 37.149891, 22.795053>,  <39.640091, 36.974846, 22.710281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780704, 37.149891, 22.795053>,  <40.015060, 37.441635, 22.936340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780704, 37.149891, 22.795053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132199, -0.344002, 0.929616,
		-0.799533, 0.591350, 0.105127,
		-0.585893, -0.729361, -0.353217,
		39.604939, 36.931084, 22.689089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521095, 37.382504, 23.511980>,  <40.015060, 37.441635, 22.936340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521095, 37.382504, 23.511980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511162, 37.049984, 23.289869>,  <39.505199, 36.850471, 23.156603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511162, 37.049984, 23.289869>,  <39.521095, 37.382504, 23.511980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511162, 37.049984, 23.289869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239742, -0.534285, 0.810595,
		-0.970519, 0.153255, -0.186027,
		-0.024836, -0.831296, -0.555275,
		39.503712, 36.800594, 23.123287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870106, 37.029758, 23.708923>,  <39.521095, 37.382504, 23.511980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870106, 37.029758, 23.708923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147552, 36.774567, 23.575130>,  <39.314022, 36.621452, 23.494856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147552, 36.774567, 23.575130>,  <38.870106, 37.029758, 23.708923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147552, 36.774567, 23.575130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156756, -0.586888, 0.794348,
		-0.703082, -0.498540, -0.507083,
		0.693616, -0.637981, -0.334482,
		39.355637, 36.583172, 23.474787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516914, 36.358723, 23.923265>,  <38.870106, 37.029758, 23.708923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516914, 36.358723, 23.923265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896961, 36.272186, 23.833403>,  <39.124989, 36.220264, 23.779486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.896961, 36.272186, 23.833403>,  <38.516914, 36.358723, 23.923265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896961, 36.272186, 23.833403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023966, -0.667532, 0.744195,
		-0.310967, -0.712458, -0.629050,
		0.950118, -0.216345, -0.224655,
		39.181995, 36.207283, 23.766006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277111, 35.774258, 23.428509>,  <38.516914, 36.358723, 23.923265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277111, 35.774258, 23.428509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929527, 35.598991, 23.336491>,  <37.720978, 35.493832, 23.281281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929527, 35.598991, 23.336491>,  <38.277111, 35.774258, 23.428509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929527, 35.598991, 23.336491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114905, 0.273505, -0.954983,
		0.481363, -0.856272, -0.187317,
		-0.868957, -0.438170, -0.230045,
		37.668839, 35.467541, 23.267477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344322, 35.503902, 22.748217>,  <38.277111, 35.774258, 23.428509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344322, 35.503902, 22.748217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.950066, 35.527939, 22.811327>,  <37.713512, 35.542358, 22.849194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.950066, 35.527939, 22.811327>,  <38.344322, 35.503902, 22.748217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950066, 35.527939, 22.811327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101152, 0.538038, -0.836829,
		-0.135172, -0.840776, -0.524237,
		-0.985645, 0.060088, 0.157774,
		37.654373, 35.545967, 22.858660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988869, 35.405651, 22.159512>,  <38.344322, 35.503902, 22.748217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988869, 35.405651, 22.159512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687027, 35.563736, 22.369040>,  <37.505924, 35.658588, 22.494757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687027, 35.563736, 22.369040>,  <37.988869, 35.405651, 22.159512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687027, 35.563736, 22.369040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424695, 0.314378, -0.849000,
		-0.500212, -0.863119, -0.069385,
		-0.754601, 0.395212, 0.523817,
		37.460648, 35.682301, 22.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332100, 35.104706, 21.902925>,  <37.988869, 35.405651, 22.159512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332100, 35.104706, 21.902925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261532, 35.461609, 22.069178>,  <37.219189, 35.675751, 22.168930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.261532, 35.461609, 22.069178>,  <37.332100, 35.104706, 21.902925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261532, 35.461609, 22.069178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419457, 0.313845, -0.851797,
		-0.890466, -0.324617, 0.318894,
		-0.176424, 0.892258, 0.415632,
		37.208603, 35.729286, 22.193867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606819, 35.304924, 21.672976>,  <37.332100, 35.104706, 21.902925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606819, 35.304924, 21.672976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 35.632816, 21.770557>,  <36.938461, 35.829552, 21.829107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 35.632816, 21.770557>,  <36.606819, 35.304924, 21.672976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814095, 35.632816, 21.770557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372791, 0.473202, -0.798190,
		-0.769744, 0.322669, 0.550798,
		0.518190, 0.819735, 0.243957,
		36.969551, 35.878738, 21.843744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069260, 35.765793, 21.604254>,  <36.606819, 35.304924, 21.672976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069260, 35.765793, 21.604254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 35.935226, 21.576082>,  <36.647255, 36.036888, 21.559179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 35.935226, 21.576082>,  <36.069260, 35.765793, 21.604254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430508, 35.935226, 21.576082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304414, 0.515895, -0.800740,
		-0.302845, 0.744600, 0.594857,
		0.903115, 0.423583, -0.070430,
		36.701443, 36.062302, 21.554953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883446, 36.488335, 21.510965>,  <36.069260, 35.765793, 21.604254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883446, 36.488335, 21.510965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253788, 36.424591, 21.373915>,  <36.475994, 36.386345, 21.291685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253788, 36.424591, 21.373915>,  <35.883446, 36.488335, 21.510965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253788, 36.424591, 21.373915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186188, 0.596622, -0.780625,
		0.328819, 0.786541, 0.522716,
		0.925857, -0.159361, -0.342625,
		36.531544, 36.376781, 21.271128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409538, 36.974125, 21.923979>,  <35.883446, 36.488335, 21.510965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409538, 36.974125, 21.923979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028782, 37.051285, 21.828733>,  <34.800327, 37.097580, 21.771585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028782, 37.051285, 21.828733>,  <35.409538, 36.974125, 21.923979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028782, 37.051285, 21.828733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304572, -0.509724, 0.804622,
		0.033842, 0.838433, 0.543953,
		-0.951888, 0.192903, -0.238113,
		34.743214, 37.109154, 21.757299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180706, 37.371189, 22.502766>,  <35.409538, 36.974125, 21.923979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180706, 37.371189, 22.502766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890083, 37.173431, 22.311897>,  <34.715710, 37.054775, 22.197376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890083, 37.173431, 22.311897>,  <35.180706, 37.371189, 22.502766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890083, 37.173431, 22.311897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074961, -0.633281, 0.770283,
		-0.683007, 0.595422, 0.423054,
		-0.726555, -0.494396, -0.477169,
		34.672115, 37.025112, 22.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605843, 37.314346, 23.016882>,  <35.180706, 37.371189, 22.502766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605843, 37.314346, 23.016882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560272, 37.022511, 22.747150>,  <34.532932, 36.847408, 22.585312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.560272, 37.022511, 22.747150>,  <34.605843, 37.314346, 23.016882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560272, 37.022511, 22.747150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089999, -0.668380, 0.738355,
		-0.989405, 0.144806, 0.010482,
		-0.113924, -0.729589, -0.674330,
		34.526096, 36.803635, 22.544851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932919, 36.881401, 23.196487>,  <34.605843, 37.314346, 23.016882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932919, 36.881401, 23.196487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140835, 36.635777, 22.958916>,  <34.265583, 36.488403, 22.816374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140835, 36.635777, 22.958916>,  <33.932919, 36.881401, 23.196487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140835, 36.635777, 22.958916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082330, -0.727998, 0.680618,
		-0.850318, -0.304880, -0.428961,
		0.519790, -0.614059, -0.593929,
		34.296772, 36.451557, 22.780737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454361, 36.363098, 23.063738>,  <33.932919, 36.881401, 23.196487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454361, 36.363098, 23.063738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821896, 36.222134, 22.992701>,  <34.042416, 36.137554, 22.950077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821896, 36.222134, 22.992701>,  <33.454361, 36.363098, 23.063738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821896, 36.222134, 22.992701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094106, -0.632715, 0.768646,
		-0.383246, -0.689549, -0.614527,
		0.918840, -0.352411, -0.177595,
		34.097546, 36.116409, 22.939423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325558, 35.580849, 23.155279>,  <33.454361, 36.363098, 23.063738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325558, 35.580849, 23.155279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724575, 35.608337, 23.149723>,  <33.963985, 35.624828, 23.146389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.724575, 35.608337, 23.149723>,  <33.325558, 35.580849, 23.155279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724575, 35.608337, 23.149723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055747, -0.657374, 0.751500,
		0.042512, -0.750425, -0.659587,
		0.997540, 0.068718, -0.013888,
		34.023838, 35.628952, 23.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557266, 34.875237, 23.134748>,  <33.325558, 35.580849, 23.155279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557266, 34.875237, 23.134748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857456, 35.091476, 23.286827>,  <34.037571, 35.221218, 23.378075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857456, 35.091476, 23.286827>,  <33.557266, 34.875237, 23.134748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857456, 35.091476, 23.286827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138459, -0.691106, 0.709367,
		0.646237, -0.479718, -0.593506,
		0.750471, 0.540595, 0.380197,
		34.082596, 35.253654, 23.400887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.107117, 43.093349, 21.856968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389088, 42.811443, 21.825014>,  <37.558270, 42.642300, 21.805841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389088, 42.811443, 21.825014>,  <37.107117, 43.093349, 21.856968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389088, 42.811443, 21.825014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176599, -0.283483, 0.942577,
		-0.686942, -0.650341, -0.324296,
		0.704928, -0.704766, -0.079887,
		37.600567, 42.600014, 21.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790337, 42.495113, 22.156742>,  <37.107117, 43.093349, 21.856968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790337, 42.495113, 22.156742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174614, 42.384075, 22.155540>,  <37.405182, 42.317451, 22.154819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.174614, 42.384075, 22.155540>,  <36.790337, 42.495113, 22.156742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174614, 42.384075, 22.155540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087418, -0.312773, 0.945796,
		-0.263485, -0.908359, -0.324746,
		0.960694, -0.277592, -0.003004,
		37.462822, 42.300797, 22.154638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761948, 41.949375, 22.431330>,  <36.790337, 42.495113, 22.156742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761948, 41.949375, 22.431330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152660, 42.019474, 22.480612>,  <37.387089, 42.061535, 22.510181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152660, 42.019474, 22.480612>,  <36.761948, 41.949375, 22.431330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152660, 42.019474, 22.480612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048593, -0.378888, 0.924166,
		0.208639, -0.908698, -0.361576,
		0.976785, 0.175247, 0.123207,
		37.445694, 42.072048, 22.517574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005589, 41.411549, 22.901642>,  <36.761948, 41.949375, 22.431330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005589, 41.411549, 22.901642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261642, 41.718761, 22.909101>,  <37.415276, 41.903091, 22.913576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261642, 41.718761, 22.909101>,  <37.005589, 41.411549, 22.901642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261642, 41.718761, 22.909101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150033, -0.148780, 0.977422,
		0.753468, -0.622887, -0.210471,
		0.640138, 0.768034, 0.018648,
		37.453682, 41.949173, 22.914696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653294, 41.196060, 23.193411>,  <37.005589, 41.411549, 22.901642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653294, 41.196060, 23.193411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638237, 41.591984, 23.248354>,  <37.629204, 41.829536, 23.281321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.638237, 41.591984, 23.248354>,  <37.653294, 41.196060, 23.193411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638237, 41.591984, 23.248354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091686, -0.133454, 0.986805,
		0.995076, 0.049743, -0.085727,
		-0.037646, 0.989806, 0.137358,
		37.626942, 41.888924, 23.289562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143795, 41.345001, 23.801231>,  <37.653294, 41.196060, 23.193411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143795, 41.345001, 23.801231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896194, 41.657608, 23.770058>,  <37.747635, 41.845173, 23.751352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.896194, 41.657608, 23.770058>,  <38.143795, 41.345001, 23.801231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896194, 41.657608, 23.770058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084199, 0.032627, 0.995915,
		0.780863, 0.623035, 0.045606,
		-0.619002, 0.781513, -0.077936,
		37.710495, 41.892063, 23.746677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507778, 41.922924, 24.283646>,  <38.143795, 41.345001, 23.801231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507778, 41.922924, 24.283646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122044, 42.008507, 24.221317>,  <37.890602, 42.059856, 24.183920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.122044, 42.008507, 24.221317>,  <38.507778, 41.922924, 24.283646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122044, 42.008507, 24.221317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152755, 0.030896, 0.987781,
		0.216160, 0.976354, 0.002889,
		-0.964334, 0.213960, -0.155821,
		37.832745, 42.072697, 24.174570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406521, 42.330494, 24.854435>,  <38.507778, 41.922924, 24.283646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406521, 42.330494, 24.854435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041775, 42.225548, 24.728151>,  <37.822929, 42.162579, 24.652382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041775, 42.225548, 24.728151>,  <38.406521, 42.330494, 24.854435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041775, 42.225548, 24.728151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320905, -0.023997, 0.946808,
		-0.255986, 0.964670, -0.062313,
		-0.911861, -0.262366, -0.315710,
		37.768215, 42.146839, 24.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008488, 42.619328, 25.294062>,  <38.406521, 42.330494, 24.854435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008488, 42.619328, 25.294062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748966, 42.364494, 25.127600>,  <37.593254, 42.211594, 25.027723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748966, 42.364494, 25.127600>,  <38.008488, 42.619328, 25.294062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748966, 42.364494, 25.127600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515115, -0.034831, 0.856413,
		-0.560098, 0.770011, -0.305570,
		-0.648805, -0.637079, -0.416153,
		37.554325, 42.173370, 25.002754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266479, 42.834644, 25.398848>,  <38.008488, 42.619328, 25.294062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266479, 42.834644, 25.398848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265141, 42.439381, 25.337488>,  <37.264336, 42.202221, 25.300673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.265141, 42.439381, 25.337488>,  <37.266479, 42.834644, 25.398848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265141, 42.439381, 25.337488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386823, -0.140177, 0.911438,
		-0.922148, 0.062393, -0.381772,
		-0.003351, -0.988158, -0.153399,
		37.264133, 42.142933, 25.291468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614719, 42.539932, 25.739294>,  <37.266479, 42.834644, 25.398848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614719, 42.539932, 25.739294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838829, 42.209648, 25.713102>,  <36.973297, 42.011478, 25.697388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.838829, 42.209648, 25.713102>,  <36.614719, 42.539932, 25.739294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838829, 42.209648, 25.713102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297632, -0.274464, 0.914377,
		-0.772984, -0.492816, -0.399534,
		0.560277, -0.825713, -0.065479,
		37.006912, 41.961933, 25.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087841, 42.028755, 25.942225>,  <36.614719, 42.539932, 25.739294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087841, 42.028755, 25.942225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.469196, 41.916824, 25.987383>,  <36.698009, 41.849667, 26.014479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.469196, 41.916824, 25.987383>,  <36.087841, 42.028755, 25.942225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469196, 41.916824, 25.987383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226676, -0.417223, 0.880081,
		-0.199167, -0.864651, -0.461206,
		0.953389, -0.279827, 0.112898,
		36.755215, 41.832874, 26.021252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737831, 41.517853, 25.535303>,  <36.087841, 42.028755, 25.942225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737831, 41.517853, 25.535303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397701, 41.313251, 25.485823>,  <35.193623, 41.190491, 25.456135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397701, 41.313251, 25.485823>,  <35.737831, 41.517853, 25.535303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397701, 41.313251, 25.485823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042581, 0.167414, -0.984967,
		0.524526, -0.842813, -0.120576,
		-0.850329, -0.511506, -0.123701,
		35.142601, 41.159801, 25.448713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897903, 40.920517, 25.065426>,  <35.737831, 41.517853, 25.535303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897903, 40.920517, 25.065426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509106, 41.013226, 25.049875>,  <35.275826, 41.068851, 25.040545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509106, 41.013226, 25.049875>,  <35.897903, 40.920517, 25.065426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509106, 41.013226, 25.049875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048451, 0.035752, -0.998185,
		-0.229961, -0.972113, -0.045981,
		-0.971993, 0.231772, -0.038878,
		35.217506, 41.082756, 25.038212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626804, 40.479485, 24.565714>,  <35.897903, 40.920517, 25.065426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626804, 40.479485, 24.565714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372047, 40.786266, 24.597086>,  <35.219193, 40.970333, 24.615910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.372047, 40.786266, 24.597086>,  <35.626804, 40.479485, 24.565714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372047, 40.786266, 24.597086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033805, 0.129417, -0.991014,
		-0.770208, -0.628521, -0.108352,
		-0.636896, 0.766950, 0.078431,
		35.180977, 41.016350, 24.620615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027325, 40.336937, 24.192072>,  <35.626804, 40.479485, 24.565714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027325, 40.336937, 24.192072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.025047, 40.736900, 24.187040>,  <35.023682, 40.976879, 24.184021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.025047, 40.736900, 24.187040>,  <35.027325, 40.336937, 24.192072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025047, 40.736900, 24.187040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182423, -0.013404, -0.983129,
		-0.983204, -0.003302, 0.182482,
		-0.005692, 0.999905, -0.012577,
		35.023338, 41.036873, 24.183268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438503, 40.571404, 23.739515>,  <35.027325, 40.336937, 24.192072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438503, 40.571404, 23.739515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.655205, 40.906849, 23.762257>,  <34.785225, 41.108116, 23.775902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.655205, 40.906849, 23.762257>,  <34.438503, 40.571404, 23.739515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655205, 40.906849, 23.762257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171836, 0.176710, -0.969147,
		-0.822787, 0.515267, 0.239837,
		0.541751, 0.838614, 0.056854,
		34.817730, 41.158432, 23.779312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003937, 41.101086, 23.453053>,  <34.438503, 40.571404, 23.739515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003937, 41.101086, 23.453053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377163, 41.244469, 23.441111>,  <34.601101, 41.330498, 23.433945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377163, 41.244469, 23.441111>,  <34.003937, 41.101086, 23.453053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377163, 41.244469, 23.441111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126073, 0.248179, -0.960475,
		-0.336877, 0.899954, 0.276759,
		0.933070, 0.358454, -0.029854,
		34.657085, 41.352005, 23.432154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967373, 41.836823, 23.196808>,  <34.003937, 41.101086, 23.453053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967373, 41.836823, 23.196808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.333527, 41.698311, 23.114674>,  <34.553219, 41.615204, 23.065393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.333527, 41.698311, 23.114674>,  <33.967373, 41.836823, 23.196808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333527, 41.698311, 23.114674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120152, 0.251807, -0.960290,
		0.384230, 0.903707, 0.188894,
		0.915385, -0.346277, -0.205334,
		34.608143, 41.594429, 23.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166088, 42.310566, 22.738630>,  <33.967373, 41.836823, 23.196808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166088, 42.310566, 22.738630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.424831, 42.008602, 22.695379>,  <34.580078, 41.827423, 22.669428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.424831, 42.008602, 22.695379>,  <34.166088, 42.310566, 22.738630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424831, 42.008602, 22.695379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012783, 0.131032, -0.991296,
		0.762505, 0.642608, 0.075109,
		0.646856, -0.754908, -0.108127,
		34.618889, 41.782131, 22.662941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622425, 42.564346, 22.353193>,  <34.166088, 42.310566, 22.738630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622425, 42.564346, 22.353193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.645741, 42.170704, 22.286093>,  <34.659729, 41.934517, 22.245832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.645741, 42.170704, 22.286093>,  <34.622425, 42.564346, 22.353193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645741, 42.170704, 22.286093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025394, 0.166521, -0.985711,
		0.997977, 0.061716, -0.015284,
		0.058289, -0.984105, -0.167751,
		34.663227, 41.875473, 22.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024826, 42.417542, 21.700460>,  <34.622425, 42.564346, 22.353193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024826, 42.417542, 21.700460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852028, 42.060490, 21.751972>,  <34.748348, 41.846256, 21.782879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.852028, 42.060490, 21.751972>,  <35.024826, 42.417542, 21.700460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852028, 42.060490, 21.751972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173150, -0.058048, -0.983184,
		0.885098, -0.447031, -0.129482,
		-0.431997, -0.892633, 0.128781,
		34.722427, 41.792698, 21.790607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234806, 42.018097, 21.111727>,  <35.024826, 42.417542, 21.700460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234806, 42.018097, 21.111727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.927284, 41.818615, 21.271845>,  <34.742771, 41.698925, 21.367916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.927284, 41.818615, 21.271845>,  <35.234806, 42.018097, 21.111727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927284, 41.818615, 21.271845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292701, -0.282124, -0.913637,
		0.568570, -0.819572, 0.070924,
		-0.768800, -0.498707, 0.400297,
		34.696644, 41.669003, 21.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179325, 41.357365, 20.799006>,  <35.234806, 42.018097, 21.111727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179325, 41.357365, 20.799006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795525, 41.391731, 20.906324>,  <34.565247, 41.412350, 20.970716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795525, 41.391731, 20.906324>,  <35.179325, 41.357365, 20.799006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795525, 41.391731, 20.906324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278737, -0.151311, -0.948373,
		-0.040883, -0.984745, 0.169130,
		-0.959496, 0.085915, 0.268299,
		34.507675, 41.417507, 20.986814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863979, 40.822510, 20.453011>,  <35.179325, 41.357365, 20.799006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863979, 40.822510, 20.453011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571880, 41.082832, 20.536139>,  <34.396622, 41.239025, 20.586016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.571880, 41.082832, 20.536139>,  <34.863979, 40.822510, 20.453011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571880, 41.082832, 20.536139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260348, 0.016143, -0.965380,
		-0.631629, -0.759073, 0.157647,
		-0.730248, 0.650805, 0.207819,
		34.352806, 41.278072, 20.598484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693306, 40.195618, 21.012718>,  <34.863979, 40.822510, 20.453011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693306, 40.195618, 21.012718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.609688, 40.036034, 20.655588>,  <34.559517, 39.940285, 20.441311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.609688, 40.036034, 20.655588>,  <34.693306, 40.195618, 21.012718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609688, 40.036034, 20.655588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096786, -0.916954, 0.387076,
		-0.973105, -0.005497, 0.230297,
		-0.209044, -0.398956, -0.892824,
		34.546974, 39.916348, 20.387741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243744, 39.746666, 21.145346>,  <34.693306, 40.195618, 21.012718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243744, 39.746666, 21.145346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.381527, 39.638790, 20.785654>,  <34.464195, 39.574066, 20.569839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.381527, 39.638790, 20.785654>,  <34.243744, 39.746666, 21.145346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381527, 39.638790, 20.785654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004326, -0.957384, 0.288787,
		-0.938791, -0.103366, -0.328614,
		0.344461, -0.269689, -0.899230,
		34.484863, 39.557884, 20.515884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838978, 39.238483, 20.875326>,  <34.243744, 39.746666, 21.145346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838978, 39.238483, 20.875326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.196125, 39.167175, 20.709911>,  <34.410412, 39.124390, 20.610662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.196125, 39.167175, 20.709911>,  <33.838978, 39.238483, 20.875326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196125, 39.167175, 20.709911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040915, -0.946624, 0.319733,
		-0.448464, -0.268558, -0.852500,
		0.892864, -0.178269, -0.413539,
		34.463985, 39.113693, 20.585850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707291, 38.647419, 20.490915>,  <33.838978, 39.238483, 20.875326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707291, 38.647419, 20.490915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.105137, 38.662750, 20.529442>,  <34.343845, 38.671947, 20.552559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.105137, 38.662750, 20.529442>,  <33.707291, 38.647419, 20.490915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105137, 38.662750, 20.529442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007137, -0.952252, 0.305230,
		0.103418, -0.302898, -0.947395,
		0.994612, 0.038328, 0.096318,
		34.403519, 38.674248, 20.558338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975288, 38.039116, 20.155193>,  <33.707291, 38.647419, 20.490915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975288, 38.039116, 20.155193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272659, 38.172489, 20.387102>,  <34.451080, 38.252514, 20.526247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272659, 38.172489, 20.387102>,  <33.975288, 38.039116, 20.155193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272659, 38.172489, 20.387102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006830, -0.870604, 0.491938,
		0.668781, -0.361761, -0.649509,
		0.743428, 0.333435, 0.579772,
		34.495689, 38.272518, 20.561033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495312, 37.556313, 20.095533>,  <33.975288, 38.039116, 20.155193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495312, 37.556313, 20.095533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543850, 37.744011, 20.445408>,  <34.572975, 37.856632, 20.655333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.543850, 37.744011, 20.445408>,  <34.495312, 37.556313, 20.095533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543850, 37.744011, 20.445408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028537, -0.882485, 0.469475,
		0.992200, -0.032010, -0.120480,
		0.121350, 0.469251, 0.874688,
		34.580254, 37.884785, 20.707813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969582, 37.094460, 20.510933>,  <34.495312, 37.556313, 20.095533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969582, 37.094460, 20.510933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795967, 37.326172, 20.786919>,  <34.691799, 37.465199, 20.952511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.795967, 37.326172, 20.786919>,  <34.969582, 37.094460, 20.510933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795967, 37.326172, 20.786919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132290, -0.716582, 0.684842,
		0.891130, 0.388521, 0.234389,
		-0.434035, 0.579276, 0.689966,
		34.665756, 37.499954, 20.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378567, 36.961185, 21.204733>,  <34.969582, 37.094460, 20.510933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378567, 36.961185, 21.204733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.037334, 37.147537, 21.298721>,  <34.832596, 37.259350, 21.355114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.037334, 37.147537, 21.298721>,  <35.378567, 36.961185, 21.204733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037334, 37.147537, 21.298721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059787, -0.534639, 0.842963,
		0.518345, 0.705066, 0.483943,
		-0.853079, 0.465879, 0.234973,
		34.781410, 37.287300, 21.369213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188526, 37.115818, 21.280182>,  <35.378567, 36.961185, 21.204733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188526, 37.115818, 21.280182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449753, 36.868538, 21.105215>,  <36.606487, 36.720169, 21.000235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.449753, 36.868538, 21.105215>,  <36.188526, 37.115818, 21.280182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449753, 36.868538, 21.105215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012082, 0.569021, -0.822234,
		0.757203, 0.542259, 0.364141,
		0.653068, -0.618199, -0.437416,
		36.645672, 36.683079, 20.973989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769150, 37.580956, 20.909338>,  <36.188526, 37.115818, 21.280182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769150, 37.580956, 20.909338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.794628, 37.212814, 20.754988>,  <36.809917, 36.991932, 20.662378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.794628, 37.212814, 20.754988>,  <36.769150, 37.580956, 20.909338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794628, 37.212814, 20.754988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113459, 0.390832, -0.913442,
		0.991499, 0.014403, 0.129317,
		0.063698, -0.920349, -0.385876,
		36.813736, 36.936710, 20.639225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385014, 37.496853, 20.599443>,  <36.769150, 37.580956, 20.909338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385014, 37.496853, 20.599443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153568, 37.233452, 20.406954>,  <37.014702, 37.075409, 20.291460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153568, 37.233452, 20.406954>,  <37.385014, 37.496853, 20.599443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153568, 37.233452, 20.406954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139424, 0.501479, -0.853862,
		0.803595, -0.561151, -0.198352,
		-0.578615, -0.658504, -0.481224,
		36.979984, 37.035900, 20.262587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816017, 37.152390, 19.962053>,  <37.385014, 37.496853, 20.599443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816017, 37.152390, 19.962053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.421772, 37.119919, 19.902744>,  <37.185226, 37.100437, 19.867159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.421772, 37.119919, 19.902744>,  <37.816017, 37.152390, 19.962053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421772, 37.119919, 19.902744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090263, 0.488909, -0.867652,
		0.142923, -0.868550, -0.474546,
		-0.985609, -0.081173, -0.148274,
		37.126091, 37.095566, 19.858261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741032, 36.878353, 19.229303>,  <37.816017, 37.152390, 19.962053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741032, 36.878353, 19.229303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.390488, 37.042126, 19.330786>,  <37.180161, 37.140388, 19.391674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.390488, 37.042126, 19.330786>,  <37.741032, 36.878353, 19.229303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390488, 37.042126, 19.330786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006771, 0.516201, -0.856441,
		-0.481616, -0.752265, -0.449603,
		-0.876356, 0.409432, 0.253705,
		37.127583, 37.164955, 19.406897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351711, 36.933475, 18.579184>,  <37.741032, 36.878353, 19.229303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351711, 36.933475, 18.579184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162735, 37.186825, 18.824341>,  <37.049351, 37.338837, 18.971436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162735, 37.186825, 18.824341>,  <37.351711, 36.933475, 18.579184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162735, 37.186825, 18.824341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041618, 0.678585, -0.733342,
		-0.880381, -0.371966, -0.294230,
		-0.472438, 0.633375, 0.612893,
		37.021004, 37.376839, 19.008209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775906, 37.275738, 18.165071>,  <37.351711, 36.933475, 18.579184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775906, 37.275738, 18.165071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.848064, 37.526859, 18.467941>,  <36.891361, 37.677532, 18.649664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.848064, 37.526859, 18.467941>,  <36.775906, 37.275738, 18.165071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848064, 37.526859, 18.467941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086244, 0.776937, -0.623643,
		-0.979805, 0.047202, 0.194302,
		0.180398, 0.627806, 0.757176,
		36.902184, 37.715202, 18.695095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374432, 37.862041, 18.100960>,  <36.775906, 37.275738, 18.165071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374432, 37.862041, 18.100960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646694, 38.028404, 18.342199>,  <36.810051, 38.128223, 18.486944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646694, 38.028404, 18.342199>,  <36.374432, 37.862041, 18.100960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646694, 38.028404, 18.342199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139515, 0.881749, -0.450616,
		-0.719198, 0.222572, 0.658191,
		0.680654, 0.415910, 0.603100,
		36.850891, 38.153175, 18.523129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045074, 38.446198, 18.306818>,  <36.374432, 37.862041, 18.100960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045074, 38.446198, 18.306818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.418255, 38.546314, 18.410320>,  <36.642162, 38.606384, 18.472422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.418255, 38.546314, 18.410320>,  <36.045074, 38.446198, 18.306818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418255, 38.546314, 18.410320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173070, 0.942085, -0.287267,
		-0.315671, 0.223223, 0.922238,
		0.932952, 0.250293, 0.258756,
		36.698139, 38.621403, 18.487947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.428574, 31.186415, 32.980015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610199, 31.541594, 33.009346>,  <36.719173, 31.754702, 33.026947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.610199, 31.541594, 33.009346>,  <36.428574, 31.186415, 32.980015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610199, 31.541594, 33.009346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398796, 0.276148, -0.874473,
		-0.796736, 0.367821, 0.479498,
		0.454062, 0.887947, 0.073332,
		36.746418, 31.807978, 33.031345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916317, 31.731852, 32.933132>,  <36.428574, 31.186415, 32.980015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916317, 31.731852, 32.933132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260132, 31.896067, 32.811378>,  <36.466423, 31.994596, 32.738327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260132, 31.896067, 32.811378>,  <35.916317, 31.731852, 32.933132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260132, 31.896067, 32.811378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399567, 0.168469, -0.901091,
		-0.318652, 0.896146, 0.308843,
		0.859539, 0.410538, -0.304387,
		36.517994, 32.019230, 32.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754139, 32.389511, 32.620636>,  <35.916317, 31.731852, 32.933132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754139, 32.389511, 32.620636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107151, 32.288666, 32.461849>,  <36.318958, 32.228157, 32.366577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107151, 32.288666, 32.461849>,  <35.754139, 32.389511, 32.620636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107151, 32.288666, 32.461849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294458, 0.361923, -0.884480,
		0.366662, 0.897469, 0.245170,
		0.882527, -0.252113, -0.396971,
		36.371910, 32.213032, 32.342758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944305, 32.868530, 32.132706>,  <35.754139, 32.389511, 32.620636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944305, 32.868530, 32.132706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188564, 32.566624, 32.036839>,  <36.335121, 32.385479, 31.979319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188564, 32.566624, 32.036839>,  <35.944305, 32.868530, 32.132706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188564, 32.566624, 32.036839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128639, 0.204083, -0.970465,
		0.781382, 0.623445, 0.027532,
		0.610650, -0.754763, -0.239667,
		36.371758, 32.340195, 31.964939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348682, 33.092937, 31.630232>,  <35.944305, 32.868530, 32.132706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348682, 33.092937, 31.630232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428253, 32.708736, 31.552399>,  <36.475998, 32.478214, 31.505699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428253, 32.708736, 31.552399>,  <36.348682, 33.092937, 31.630232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428253, 32.708736, 31.552399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054878, 0.209157, -0.976341,
		0.978476, 0.183546, 0.094318,
		0.198930, -0.960502, -0.194582,
		36.487934, 32.420586, 31.494024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807659, 33.093067, 31.097240>,  <36.348682, 33.092937, 31.630232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807659, 33.093067, 31.097240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726650, 32.701618, 31.082958>,  <36.678043, 32.466747, 31.074389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.726650, 32.701618, 31.082958>,  <36.807659, 33.093067, 31.097240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726650, 32.701618, 31.082958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090153, 0.017675, -0.995771,
		0.975119, -0.204887, 0.084646,
		-0.202524, -0.978626, -0.035706,
		36.665894, 32.408031, 31.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295097, 32.690369, 30.819357>,  <36.807659, 33.093067, 31.097240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295097, 32.690369, 30.819357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958519, 32.485023, 30.751921>,  <36.756573, 32.361816, 30.711460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958519, 32.485023, 30.751921>,  <37.295097, 32.690369, 30.819357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958519, 32.485023, 30.751921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245965, -0.086105, -0.965447,
		0.481108, -0.853841, 0.198722,
		-0.841449, -0.513363, -0.168589,
		36.706085, 32.331017, 30.701344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490047, 32.205132, 30.299725>,  <37.295097, 32.690369, 30.819357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490047, 32.205132, 30.299725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090797, 32.229450, 30.302650>,  <36.851246, 32.244041, 30.304405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090797, 32.229450, 30.302650>,  <37.490047, 32.205132, 30.299725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090797, 32.229450, 30.302650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013167, -0.096458, -0.995250,
		-0.059794, -0.993479, 0.097078,
		-0.998124, 0.060788, 0.007314,
		36.791359, 32.247688, 30.304844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226521, 31.684916, 29.827217>,  <37.490047, 32.205132, 30.299725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226521, 31.684916, 29.827217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962460, 31.985037, 29.841311>,  <36.804024, 32.165112, 29.849766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.962460, 31.985037, 29.841311>,  <37.226521, 31.684916, 29.827217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962460, 31.985037, 29.841311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006238, 0.041427, -0.999122,
		-0.751105, -0.659794, -0.022668,
		-0.660153, 0.750304, 0.035231,
		36.764412, 32.210129, 29.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959587, 31.605648, 29.177999>,  <37.226521, 31.684916, 29.827217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959587, 31.605648, 29.177999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831104, 31.972210, 29.273527>,  <36.754017, 32.192146, 29.330843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831104, 31.972210, 29.273527>,  <36.959587, 31.605648, 29.177999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831104, 31.972210, 29.273527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071522, 0.227986, -0.971034,
		-0.944306, -0.328980, -0.007687,
		-0.321203, 0.916403, 0.238818,
		36.734745, 32.247131, 29.345173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379147, 31.647387, 28.812563>,  <36.959587, 31.605648, 29.177999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379147, 31.647387, 28.812563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485851, 32.023735, 28.896086>,  <36.549873, 32.249542, 28.946199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485851, 32.023735, 28.896086>,  <36.379147, 31.647387, 28.812563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485851, 32.023735, 28.896086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065019, 0.233735, -0.970124,
		-0.961566, 0.245217, 0.123527,
		0.266763, 0.940870, 0.208808,
		36.565880, 32.305996, 28.958729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789749, 32.018642, 28.532648>,  <36.379147, 31.647387, 28.812563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789749, 32.018642, 28.532648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092785, 32.278423, 28.558758>,  <36.274609, 32.434292, 28.574425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.092785, 32.278423, 28.558758>,  <35.789749, 32.018642, 28.532648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092785, 32.278423, 28.558758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197264, 0.323137, -0.925565,
		-0.622205, 0.688325, 0.372920,
		0.757594, 0.649454, 0.065275,
		36.320065, 32.473259, 28.578341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229534, 32.485466, 28.736507>,  <35.789749, 32.018642, 28.532648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229534, 32.485466, 28.736507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844849, 32.390572, 28.681620>,  <34.614037, 32.333633, 28.648687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844849, 32.390572, 28.681620>,  <35.229534, 32.485466, 28.736507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844849, 32.390572, 28.681620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071989, -0.264438, 0.961712,
		-0.264438, 0.934769, 0.237234,
		-0.961712, -0.237234, -0.137221,
		34.556335, 32.319401, 28.640453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995476, 32.692089, 29.326920>,  <35.229534, 32.485466, 28.736507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995476, 32.692089, 29.326920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714294, 32.450603, 29.176514>,  <34.545586, 32.305714, 29.086271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714294, 32.450603, 29.176514>,  <34.995476, 32.692089, 29.326920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714294, 32.450603, 29.176514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203181, -0.336188, 0.919617,
		-0.681592, 0.722850, 0.113664,
		-0.702958, -0.603709, -0.376013,
		34.503407, 32.269489, 29.063709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404877, 32.655182, 29.805643>,  <34.995476, 32.692089, 29.326920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404877, 32.655182, 29.805643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406017, 32.329678, 29.573166>,  <34.406700, 32.134373, 29.433680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406017, 32.329678, 29.573166>,  <34.404877, 32.655182, 29.805643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406017, 32.329678, 29.573166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338528, -0.547662, 0.765157,
		-0.940952, 0.194570, -0.277042,
		0.002849, -0.813763, -0.581191,
		34.406872, 32.085548, 29.398809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720818, 32.502674, 29.812098>,  <34.404877, 32.655182, 29.805643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720818, 32.502674, 29.812098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905743, 32.166447, 29.699165>,  <34.016697, 31.964710, 29.631407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905743, 32.166447, 29.699165>,  <33.720818, 32.502674, 29.812098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905743, 32.166447, 29.699165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240032, -0.425146, 0.872717,
		-0.853609, -0.335703, -0.398315,
		0.462316, -0.840568, -0.282329,
		34.044437, 31.914276, 29.614466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252121, 32.001083, 29.787020>,  <33.720818, 32.502674, 29.812098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252121, 32.001083, 29.787020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604797, 31.827429, 29.860926>,  <33.816402, 31.723234, 29.905270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604797, 31.827429, 29.860926>,  <33.252121, 32.001083, 29.787020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604797, 31.827429, 29.860926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333522, -0.296486, 0.894907,
		-0.333738, -0.850656, -0.406206,
		0.881693, -0.434144, 0.184764,
		33.869305, 31.697187, 29.916355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991589, 31.556955, 30.184067>,  <33.252121, 32.001083, 29.787020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991589, 31.556955, 30.184067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390072, 31.532238, 30.208593>,  <33.629162, 31.517406, 30.223309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390072, 31.532238, 30.208593>,  <32.991589, 31.556955, 30.184067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390072, 31.532238, 30.208593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072046, -0.189889, 0.979159,
		-0.048864, -0.979859, -0.193620,
		0.996204, -0.061795, 0.061317,
		33.688934, 31.513699, 30.226988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141243, 30.953627, 30.510042>,  <32.991589, 31.556955, 30.184067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141243, 30.953627, 30.510042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455509, 31.193165, 30.572149>,  <33.644070, 31.336887, 30.609413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455509, 31.193165, 30.572149>,  <33.141243, 30.953627, 30.510042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455509, 31.193165, 30.572149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133450, -0.081018, 0.987738,
		0.604084, -0.796755, 0.016263,
		0.785668, 0.598847, 0.155268,
		33.691208, 31.372818, 30.618731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383404, 30.626753, 31.050962>,  <33.141243, 30.953627, 30.510042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383404, 30.626753, 31.050962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570324, 30.980320, 31.043865>,  <33.682476, 31.192461, 31.039606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570324, 30.980320, 31.043865>,  <33.383404, 30.626753, 31.050962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570324, 30.980320, 31.043865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063418, -0.013495, 0.997896,
		0.881820, -0.467444, -0.062363,
		0.467302, 0.883920, -0.017744,
		33.710514, 31.245497, 31.038542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899059, 30.559553, 31.579920>,  <33.383404, 30.626753, 31.050962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899059, 30.559553, 31.579920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824867, 30.946997, 31.513710>,  <33.780354, 31.179462, 31.473984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824867, 30.946997, 31.513710>,  <33.899059, 30.559553, 31.579920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824867, 30.946997, 31.513710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020494, 0.164597, 0.986148,
		0.982434, 0.186304, -0.010679,
		-0.185481, 0.968607, -0.165524,
		33.769222, 31.237579, 31.464052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269226, 30.812300, 32.153526>,  <33.899059, 30.559553, 31.579920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269226, 30.812300, 32.153526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027496, 31.096106, 32.008541>,  <33.882458, 31.266388, 31.921549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027496, 31.096106, 32.008541>,  <34.269226, 30.812300, 32.153526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027496, 31.096106, 32.008541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156500, 0.340367, 0.927178,
		0.781217, 0.617042, -0.094653,
		-0.604324, 0.709514, -0.362467,
		33.846199, 31.308960, 31.899801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617981, 31.385611, 32.381916>,  <34.269226, 30.812300, 32.153526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617981, 31.385611, 32.381916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238068, 31.473763, 32.293060>,  <34.010120, 31.526653, 32.239746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.238068, 31.473763, 32.293060>,  <34.617981, 31.385611, 32.381916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238068, 31.473763, 32.293060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164116, 0.253589, 0.953288,
		0.266418, 0.941873, -0.204686,
		-0.949783, 0.220381, -0.222138,
		33.953133, 31.539877, 32.226418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497704, 32.088192, 32.592190>,  <34.617981, 31.385611, 32.381916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497704, 32.088192, 32.592190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133659, 31.923058, 32.577938>,  <33.915234, 31.823977, 32.569386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133659, 31.923058, 32.577938>,  <34.497704, 32.088192, 32.592190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133659, 31.923058, 32.577938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157608, 0.265357, 0.951181,
		-0.383231, 0.871291, -0.306570,
		-0.910106, -0.412840, -0.035629,
		33.860626, 31.799206, 32.567249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081326, 32.541504, 32.901855>,  <34.497704, 32.088192, 32.592190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081326, 32.541504, 32.901855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882664, 32.196537, 32.940975>,  <33.763466, 31.989557, 32.964447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882664, 32.196537, 32.940975>,  <34.081326, 32.541504, 32.901855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882664, 32.196537, 32.940975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343365, 0.298719, 0.890431,
		-0.797139, 0.408659, -0.444486,
		-0.496659, -0.862418, 0.097802,
		33.733665, 31.937811, 32.970314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438908, 32.666920, 33.016869>,  <34.081326, 32.541504, 32.901855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438908, 32.666920, 33.016869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495796, 32.305527, 33.178608>,  <33.529930, 32.088692, 33.275654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495796, 32.305527, 33.178608>,  <33.438908, 32.666920, 33.016869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495796, 32.305527, 33.178608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278677, 0.355431, 0.892193,
		-0.949796, -0.239570, -0.201229,
		0.142220, -0.903479, 0.404350,
		33.538464, 32.034485, 33.299911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905613, 33.189190, 33.066200>,  <33.438908, 32.666920, 33.016869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905613, 33.189190, 33.066200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775368, 33.237980, 33.441242>,  <32.697220, 33.267254, 33.666267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775368, 33.237980, 33.441242>,  <32.905613, 33.189190, 33.066200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775368, 33.237980, 33.441242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788479, -0.582295, -0.198077,
		0.521801, -0.803776, 0.285776,
		-0.325616, 0.121972, 0.937602,
		32.677685, 33.274570, 33.722523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260445, 33.890472, 32.941586>,  <32.905613, 33.189190, 33.066200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260445, 33.890472, 32.941586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318012, 34.226673, 33.150524>,  <33.352554, 34.428394, 33.275887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318012, 34.226673, 33.150524>,  <33.260445, 33.890472, 32.941586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318012, 34.226673, 33.150524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641000, 0.481317, -0.597874,
		-0.753927, -0.248779, 0.608032,
		0.143918, 0.840501, 0.522345,
		33.361187, 34.478825, 33.307228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608089, 34.213890, 32.948536>,  <33.260445, 33.890472, 32.941586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608089, 34.213890, 32.948536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890701, 34.487183, 33.022312>,  <33.060268, 34.651157, 33.066578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.890701, 34.487183, 33.022312>,  <32.608089, 34.213890, 32.948536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890701, 34.487183, 33.022312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428950, 0.620740, -0.656265,
		-0.562867, 0.384554, 0.731641,
		0.706528, 0.683228, 0.184440,
		33.102661, 34.692150, 33.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295284, 34.873520, 32.950233>,  <32.608089, 34.213890, 32.948536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295284, 34.873520, 32.950233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680553, 34.969139, 32.900986>,  <32.911713, 35.026508, 32.871437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680553, 34.969139, 32.900986>,  <32.295284, 34.873520, 32.950233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680553, 34.969139, 32.900986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265084, 0.767398, -0.583807,
		-0.045073, 0.594944, 0.802503,
		0.963171, 0.239044, -0.123121,
		32.969505, 35.040852, 32.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285881, 35.456459, 33.117790>,  <32.295284, 34.873520, 32.950233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285881, 35.456459, 33.117790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602936, 35.402714, 32.879910>,  <32.793167, 35.370468, 32.737179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602936, 35.402714, 32.879910>,  <32.285881, 35.456459, 33.117790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602936, 35.402714, 32.879910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252769, 0.815222, -0.521077,
		0.554829, 0.563347, 0.612213,
		0.792636, -0.134360, -0.594706,
		32.840725, 35.362404, 32.701496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694691, 36.124405, 33.103542>,  <32.285881, 35.456459, 33.117790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694691, 36.124405, 33.103542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820271, 35.923859, 32.781033>,  <32.895618, 35.803532, 32.587528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820271, 35.923859, 32.781033>,  <32.694691, 36.124405, 33.103542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820271, 35.923859, 32.781033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002536, 0.848761, -0.528771,
		0.949436, 0.168052, 0.265197,
		0.313950, -0.501362, -0.806270,
		32.914455, 35.773449, 32.539150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235630, 36.497093, 32.833042>,  <32.694691, 36.124405, 33.103542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235630, 36.497093, 32.833042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078278, 36.285530, 32.532242>,  <32.983868, 36.158592, 32.351761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078278, 36.285530, 32.532242>,  <33.235630, 36.497093, 32.833042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078278, 36.285530, 32.532242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051668, 0.829374, -0.556300,
		0.917924, -0.179981, -0.353584,
		-0.393377, -0.528910, -0.752003,
		32.960262, 36.126858, 32.306641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411064, 36.998070, 32.257473>,  <33.235630, 36.497093, 32.833042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411064, 36.998070, 32.257473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191902, 36.732029, 32.054516>,  <33.060406, 36.572403, 31.932743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191902, 36.732029, 32.054516>,  <33.411064, 36.998070, 32.257473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191902, 36.732029, 32.054516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116625, 0.661339, -0.740965,
		0.828372, -0.346804, -0.439917,
		-0.547904, -0.665101, -0.507389,
		33.027531, 36.532497, 31.902300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769768, 36.966255, 31.599983>,  <33.411064, 36.998070, 32.257473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769768, 36.966255, 31.599983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387589, 36.849701, 31.581194>,  <33.158279, 36.779766, 31.569921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387589, 36.849701, 31.581194>,  <33.769768, 36.966255, 31.599983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387589, 36.849701, 31.581194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094642, 0.453208, -0.886366,
		0.279564, -0.842434, -0.460596,
		-0.955451, -0.291387, -0.046971,
		33.100952, 36.762283, 31.567102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760746, 36.706287, 30.942076>,  <33.769768, 36.966255, 31.599983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760746, 36.706287, 30.942076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386246, 36.785221, 31.058346>,  <33.161545, 36.832581, 31.128107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386246, 36.785221, 31.058346>,  <33.760746, 36.706287, 30.942076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386246, 36.785221, 31.058346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139467, 0.550611, -0.823029,
		-0.322463, -0.811101, -0.487989,
		-0.936252, 0.197338, 0.290673,
		33.105370, 36.844421, 31.145548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281883, 36.643787, 30.394173>,  <33.760746, 36.706287, 30.942076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281883, 36.643787, 30.394173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058861, 36.872303, 30.635090>,  <32.925049, 37.009411, 30.779640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058861, 36.872303, 30.635090>,  <33.281883, 36.643787, 30.394173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058861, 36.872303, 30.635090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091991, 0.678548, -0.728773,
		-0.825025, -0.461738, -0.325777,
		-0.557558, 0.571288, 0.602295,
		32.891594, 37.043690, 30.815779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636093, 36.823792, 30.037392>,  <33.281883, 36.643787, 30.394173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636093, 36.823792, 30.037392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674316, 37.103386, 30.320881>,  <32.697250, 37.271141, 30.490974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.674316, 37.103386, 30.320881>,  <32.636093, 36.823792, 30.037392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674316, 37.103386, 30.320881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146779, 0.714093, -0.684490,
		-0.984542, -0.038615, 0.170836,
		0.095562, 0.698985, 0.708723,
		32.702984, 37.313080, 30.533497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076122, 37.344986, 29.955362>,  <32.636093, 36.823792, 30.037392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076122, 37.344986, 29.955362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394112, 37.498325, 30.143433>,  <32.584904, 37.590328, 30.256275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394112, 37.498325, 30.143433>,  <32.076122, 37.344986, 29.955362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394112, 37.498325, 30.143433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067039, 0.714774, -0.696135,
		-0.602934, 0.584926, 0.542524,
		0.794969, 0.383353, 0.470174,
		32.632603, 37.613331, 30.284485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988890, 38.008198, 29.871998>,  <32.076122, 37.344986, 29.955362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988890, 38.008198, 29.871998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363270, 38.029362, 30.011253>,  <32.587898, 38.042061, 30.094807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363270, 38.029362, 30.011253>,  <31.988890, 38.008198, 29.871998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363270, 38.029362, 30.011253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170210, 0.797512, -0.578795,
		-0.308267, 0.600979, 0.737425,
		0.935949, 0.052906, 0.348139,
		32.644054, 38.045235, 30.115696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134033, 38.748375, 30.016785>,  <31.988890, 38.008198, 29.871998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134033, 38.748375, 30.016785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493858, 38.580162, 29.969568>,  <32.709755, 38.479233, 29.941238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.493858, 38.580162, 29.969568>,  <32.134033, 38.748375, 30.016785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493858, 38.580162, 29.969568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323823, 0.823458, -0.465892,
		0.293127, 0.380876, 0.876932,
		0.899564, -0.420536, -0.118041,
		32.763729, 38.454002, 29.934156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515320, 39.222569, 30.246004>,  <32.134033, 38.748375, 30.016785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515320, 39.222569, 30.246004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740551, 38.996616, 30.004725>,  <32.875690, 38.861046, 29.859957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740551, 38.996616, 30.004725>,  <32.515320, 39.222569, 30.246004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740551, 38.996616, 30.004725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297746, 0.819564, -0.489552,
		0.770899, 0.096058, 0.629673,
		0.563082, -0.564878, -0.603201,
		32.909477, 38.827152, 29.823765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151245, 39.558121, 30.218626>,  <32.515320, 39.222569, 30.246004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151245, 39.558121, 30.218626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113567, 39.323273, 29.897026>,  <33.090961, 39.182362, 29.704067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113567, 39.323273, 29.897026>,  <33.151245, 39.558121, 30.218626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113567, 39.323273, 29.897026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404010, 0.715557, -0.569873,
		0.909892, -0.378503, 0.169800,
		-0.094197, -0.587123, -0.803998,
		33.085308, 39.147137, 29.655827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656994, 39.808792, 29.946268>,  <33.151245, 39.558121, 30.218626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656994, 39.808792, 29.946268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474892, 39.603252, 29.655420>,  <33.365631, 39.479931, 29.480911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474892, 39.603252, 29.655420>,  <33.656994, 39.808792, 29.946268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474892, 39.603252, 29.655420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483150, 0.543388, -0.686509,
		0.747868, -0.663847, 0.000883,
		-0.455257, -0.513844, -0.727121,
		33.338314, 39.449100, 29.437284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247795, 39.641411, 29.520916>,  <33.656994, 39.808792, 29.946268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247795, 39.641411, 29.520916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907822, 39.627953, 29.310589>,  <33.703838, 39.619877, 29.184393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907822, 39.627953, 29.310589>,  <34.247795, 39.641411, 29.520916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907822, 39.627953, 29.310589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478023, 0.370491, -0.796386,
		0.221609, -0.928226, -0.298806,
		-0.849931, -0.033650, -0.525818,
		33.652843, 39.617859, 29.152843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409672, 39.369282, 28.740658>,  <34.247795, 39.641411, 29.520916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409672, 39.369282, 28.740658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048481, 39.540901, 28.731300>,  <33.831764, 39.643871, 28.725687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048481, 39.540901, 28.731300>,  <34.409672, 39.369282, 28.740658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048481, 39.540901, 28.731300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174868, 0.317211, -0.932093,
		-0.392493, -0.845751, -0.361462,
		-0.902978, 0.429049, -0.023392,
		33.777588, 39.669617, 28.724283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183315, 39.159557, 28.075668>,  <34.409672, 39.369282, 28.740658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183315, 39.159557, 28.075668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995815, 39.492165, 28.194906>,  <33.883316, 39.691727, 28.266449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995815, 39.492165, 28.194906>,  <34.183315, 39.159557, 28.075668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995815, 39.492165, 28.194906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269333, 0.455936, -0.848282,
		-0.841270, -0.317344, -0.437673,
		-0.468748, 0.831514, 0.298094,
		33.855190, 39.741619, 28.284334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680363, 39.239513, 27.531385>,  <34.183315, 39.159557, 28.075668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680363, 39.239513, 27.531385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750664, 39.582283, 27.725204>,  <33.792843, 39.787945, 27.841496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750664, 39.582283, 27.725204>,  <33.680363, 39.239513, 27.531385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750664, 39.582283, 27.725204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160870, 0.460594, -0.872911,
		-0.971202, 0.231364, -0.056904,
		0.175750, 0.856927, 0.484549,
		33.803391, 39.839359, 27.870569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430477, 39.724331, 26.968052>,  <33.680363, 39.239513, 27.531385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430477, 39.724331, 26.968052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637581, 39.942989, 27.231295>,  <33.761845, 40.074184, 27.389240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637581, 39.942989, 27.231295>,  <33.430477, 39.724331, 26.968052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637581, 39.942989, 27.231295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370850, 0.549810, -0.748452,
		-0.770970, 0.631578, 0.081947,
		0.517761, 0.546644, 0.658107,
		33.792908, 40.106983, 27.428726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293003, 40.392696, 26.846542>,  <33.430477, 39.724331, 26.968052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293003, 40.392696, 26.846542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655190, 40.397198, 27.016251>,  <33.872501, 40.399899, 27.118076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655190, 40.397198, 27.016251>,  <33.293003, 40.392696, 26.846542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655190, 40.397198, 27.016251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364396, 0.491892, -0.790733,
		-0.217595, 0.870583, 0.441290,
		0.905466, 0.011256, 0.424270,
		33.926830, 40.400574, 27.143532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479809, 40.974995, 26.688368>,  <33.293003, 40.392696, 26.846542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479809, 40.974995, 26.688368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831196, 40.796227, 26.755966>,  <34.042027, 40.688965, 26.796524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831196, 40.796227, 26.755966>,  <33.479809, 40.974995, 26.688368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831196, 40.796227, 26.755966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418831, 0.550051, -0.722513,
		0.229950, 0.705483, 0.670385,
		0.878467, -0.446920, 0.168994,
		34.094734, 40.662151, 26.806664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014229, 41.549671, 26.614265>,  <33.479809, 40.974995, 26.688368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014229, 41.549671, 26.614265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204330, 41.198391, 26.592749>,  <34.318394, 40.987621, 26.579838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204330, 41.198391, 26.592749>,  <34.014229, 41.549671, 26.614265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204330, 41.198391, 26.592749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590176, 0.363536, -0.720787,
		0.652552, 0.310812, 0.691066,
		0.475257, -0.878201, -0.053793,
		34.346909, 40.934929, 26.576611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751606, 41.688034, 26.597448>,  <34.014229, 41.549671, 26.614265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751606, 41.688034, 26.597448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719784, 41.332005, 26.417917>,  <34.700691, 41.118389, 26.310200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.719784, 41.332005, 26.417917>,  <34.751606, 41.688034, 26.597448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719784, 41.332005, 26.417917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354986, 0.395440, -0.847120,
		0.931481, -0.226717, 0.284504,
		-0.079552, -0.890071, -0.448826,
		34.695919, 41.064983, 26.283270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349392, 41.609493, 26.170362>,  <34.751606, 41.688034, 26.597448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349392, 41.609493, 26.170362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129616, 41.317078, 26.008520>,  <34.997749, 41.141628, 25.911415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129616, 41.317078, 26.008520>,  <35.349392, 41.609493, 26.170362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129616, 41.317078, 26.008520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269427, 0.303365, -0.913991,
		0.790904, -0.611190, 0.030282,
		-0.549435, -0.731038, -0.404604,
		34.964787, 41.097767, 25.887138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017399, 41.285797, 26.269077>,  <35.349392, 41.609493, 26.170362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017399, 41.285797, 26.269077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392723, 41.406994, 26.335735>,  <36.617916, 41.479713, 26.375731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.392723, 41.406994, 26.335735>,  <36.017399, 41.285797, 26.269077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392723, 41.406994, 26.335735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038878, -0.386419, 0.921504,
		0.343605, -0.871134, -0.350801,
		0.938309, 0.302995, 0.166643,
		36.674217, 41.497890, 26.385729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373501, 40.660320, 26.473572>,  <36.017399, 41.285797, 26.269077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373501, 40.660320, 26.473572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625469, 40.939030, 26.610802>,  <36.776649, 41.106255, 26.693140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625469, 40.939030, 26.610802>,  <36.373501, 40.660320, 26.473572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625469, 40.939030, 26.610802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043579, -0.409329, 0.911346,
		0.775434, -0.589029, -0.227481,
		0.629923, 0.696775, 0.343077,
		36.814445, 41.148064, 26.713724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007820, 40.332661, 26.816816>,  <36.373501, 40.660320, 26.473572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007820, 40.332661, 26.816816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015984, 40.701591, 26.971163>,  <37.020882, 40.922951, 27.063770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015984, 40.701591, 26.971163>,  <37.007820, 40.332661, 26.816816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015984, 40.701591, 26.971163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136508, -0.384902, 0.912807,
		0.990429, 0.034044, -0.133760,
		0.020409, 0.922329, 0.385865,
		37.022106, 40.978291, 27.086922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527363, 40.356750, 27.128811>,  <37.007820, 40.332661, 26.816816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527363, 40.356750, 27.128811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311104, 40.645931, 27.300875>,  <37.181347, 40.819439, 27.404114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.311104, 40.645931, 27.300875>,  <37.527363, 40.356750, 27.128811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311104, 40.645931, 27.300875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077317, -0.466469, 0.881152,
		0.837688, 0.509652, 0.196299,
		-0.540648, 0.722954, 0.430160,
		37.148911, 40.862816, 27.429922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757496, 40.309643, 27.820593>,  <37.527363, 40.356750, 27.128811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757496, 40.309643, 27.820593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451115, 40.565060, 27.850494>,  <37.267288, 40.718307, 27.868435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451115, 40.565060, 27.850494>,  <37.757496, 40.309643, 27.820593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451115, 40.565060, 27.850494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223377, -0.373360, 0.900392,
		0.602847, 0.672956, 0.428610,
		-0.765949, 0.638540, 0.074756,
		37.221329, 40.756622, 27.872921>
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
