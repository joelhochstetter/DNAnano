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
	<24.221451, 35.421822, 34.867458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309662, 35.031956, 34.882446>,  <24.362589, 34.798038, 34.891438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309662, 35.031956, 34.882446>,  <24.221451, 35.421822, 34.867458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309662, 35.031956, 34.882446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928984, 0.198176, -0.312594,
		0.297247, 0.103744, 0.949148,
		0.220528, -0.974661, 0.037469,
		24.375820, 34.739559, 34.893688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895189, 35.278156, 35.240608>,  <24.221451, 35.421822, 34.867458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895189, 35.278156, 35.240608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844610, 34.986126, 34.971985>,  <24.814262, 34.810905, 34.810810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844610, 34.986126, 34.971985>,  <24.895189, 35.278156, 35.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844610, 34.986126, 34.971985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982607, 0.000632, -0.185699,
		0.135999, -0.683363, 0.717300,
		-0.126447, -0.730078, -0.671563,
		24.806677, 34.767101, 34.770515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202543, 34.490681, 35.373608>,  <24.895189, 35.278156, 35.240608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202543, 34.490681, 35.373608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226063, 34.617813, 34.995079>,  <25.240175, 34.694092, 34.767963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226063, 34.617813, 34.995079>,  <25.202543, 34.490681, 35.373608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226063, 34.617813, 34.995079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995237, -0.092507, 0.030771,
		-0.077761, -0.943623, -0.321760,
		0.058801, 0.317834, -0.946321,
		25.243704, 34.713165, 34.711182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483980, 33.990120, 34.976311>,  <25.202543, 34.490681, 35.373608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483980, 33.990120, 34.976311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562288, 34.364552, 34.859398>,  <25.609272, 34.589211, 34.789249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562288, 34.364552, 34.859398>,  <25.483980, 33.990120, 34.976311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562288, 34.364552, 34.859398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959690, -0.121583, 0.253402,
		0.201668, -0.330108, -0.922149,
		0.195768, 0.936080, -0.292282,
		25.621019, 34.645374, 34.771713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086668, 34.039116, 34.433430>,  <25.483980, 33.990120, 34.976311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086668, 34.039116, 34.433430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075377, 34.372108, 34.654762>,  <26.068602, 34.571903, 34.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075377, 34.372108, 34.654762>,  <26.086668, 34.039116, 34.433430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075377, 34.372108, 34.654762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866984, -0.255133, 0.428073,
		0.497536, 0.491816, -0.714545,
		-0.028229, 0.832481, 0.553334,
		26.066908, 34.621853, 34.820763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724037, 34.516006, 34.405224>,  <26.086668, 34.039116, 34.433430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724037, 34.516006, 34.405224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567051, 34.571350, 34.768944>,  <26.472858, 34.604557, 34.987175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567051, 34.571350, 34.768944>,  <26.724037, 34.516006, 34.405224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567051, 34.571350, 34.768944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889503, -0.194419, 0.413504,
		0.233996, 0.971112, -0.046766,
		-0.392466, 0.138356, 0.909301,
		26.449310, 34.612858, 35.041733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115108, 35.018223, 34.875969>,  <26.724037, 34.516006, 34.405224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115108, 35.018223, 34.875969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938057, 34.699135, 35.039787>,  <26.831827, 34.507683, 35.138077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938057, 34.699135, 35.039787>,  <27.115108, 35.018223, 34.875969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938057, 34.699135, 35.039787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861005, -0.250500, 0.442628,
		-0.250500, 0.548541, 0.797717,
		-0.442628, -0.797717, 0.409547,
		26.805269, 34.459820, 35.162651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712921, 34.911850, 34.254925>,  <27.115108, 35.018223, 34.875969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712921, 34.911850, 34.254925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059057, 34.722111, 34.190205>,  <28.266739, 34.608269, 34.151371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059057, 34.722111, 34.190205>,  <27.712921, 34.911850, 34.254925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059057, 34.722111, 34.190205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231142, 0.664183, -0.710939,
		0.444697, 0.577806, 0.684387,
		0.865342, -0.474343, -0.161805,
		28.318661, 34.579807, 34.141663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993639, 35.314480, 33.788609>,  <27.712921, 34.911850, 34.254925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993639, 35.314480, 33.788609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262175, 35.020927, 33.747181>,  <28.423296, 34.844795, 33.722324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262175, 35.020927, 33.747181>,  <27.993639, 35.314480, 33.788609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262175, 35.020927, 33.747181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273753, 0.375395, -0.885516,
		0.688738, 0.566131, 0.452918,
		0.671341, -0.733876, -0.103569,
		28.463577, 34.800766, 33.716110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654922, 35.660133, 33.696831>,  <27.993639, 35.314480, 33.788609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654922, 35.660133, 33.696831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692566, 35.294827, 33.538292>,  <28.715151, 35.075642, 33.443169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692566, 35.294827, 33.538292>,  <28.654922, 35.660133, 33.696831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692566, 35.294827, 33.538292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432167, 0.396120, -0.810137,
		0.896870, -0.095047, 0.431961,
		0.094107, -0.913266, -0.396344,
		28.720798, 35.020847, 33.419388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349157, 35.604778, 33.551220>,  <28.654922, 35.660133, 33.696831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349157, 35.604778, 33.551220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161592, 35.341099, 33.316074>,  <29.049053, 35.182892, 33.174988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.161592, 35.341099, 33.316074>,  <29.349157, 35.604778, 33.551220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161592, 35.341099, 33.316074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502120, 0.348600, -0.791425,
		0.726633, -0.666286, 0.167533,
		-0.468914, -0.659197, -0.587860,
		29.020918, 35.143341, 33.139717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787613, 35.389397, 33.113422>,  <29.349157, 35.604778, 33.551220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787613, 35.389397, 33.113422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452759, 35.277210, 32.925575>,  <29.251846, 35.209896, 32.812866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452759, 35.277210, 32.925575>,  <29.787613, 35.389397, 33.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452759, 35.277210, 32.925575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415508, 0.232307, -0.879424,
		0.355749, -0.931327, -0.077934,
		-0.837136, -0.280472, -0.469617,
		29.201618, 35.193069, 32.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016577, 35.002533, 32.600266>,  <29.787613, 35.389397, 33.113422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016577, 35.002533, 32.600266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646080, 35.110443, 32.494965>,  <29.423782, 35.175190, 32.431786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646080, 35.110443, 32.494965>,  <30.016577, 35.002533, 32.600266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646080, 35.110443, 32.494965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315562, 0.173004, -0.933001,
		-0.206156, -0.947255, -0.245374,
		-0.926240, 0.269774, -0.263252,
		29.368208, 35.191376, 32.415989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942528, 34.707504, 31.898457>,  <30.016577, 35.002533, 32.600266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942528, 34.707504, 31.898457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647648, 34.975056, 31.936686>,  <29.470720, 35.135586, 31.959623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647648, 34.975056, 31.936686>,  <29.942528, 34.707504, 31.898457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647648, 34.975056, 31.936686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121241, 0.270103, -0.955167,
		-0.664706, -0.692564, -0.280216,
		-0.737202, 0.668880, 0.095572,
		29.426487, 35.175720, 31.965357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544353, 34.503613, 31.444115>,  <29.942528, 34.707504, 31.898457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544353, 34.503613, 31.444115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454290, 34.886822, 31.515100>,  <29.400251, 35.116749, 31.557692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454290, 34.886822, 31.515100>,  <29.544353, 34.503613, 31.444115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454290, 34.886822, 31.515100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051528, 0.193593, -0.979728,
		-0.972959, -0.211450, -0.092955,
		-0.225159, 0.958024, 0.177463,
		29.386744, 35.174229, 31.568338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037870, 34.620884, 31.011415>,  <29.544353, 34.503613, 31.444115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037870, 34.620884, 31.011415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180485, 34.989643, 31.072058>,  <29.266054, 35.210899, 31.108442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180485, 34.989643, 31.072058>,  <29.037870, 34.620884, 31.011415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180485, 34.989643, 31.072058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009738, 0.165926, -0.986090,
		-0.934231, 0.350101, 0.068137,
		0.356537, 0.921899, 0.151603,
		29.287445, 35.266212, 31.117538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678080, 35.084183, 30.531721>,  <29.037870, 34.620884, 31.011415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678080, 35.084183, 30.531721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972382, 35.334026, 30.636435>,  <29.148962, 35.483932, 30.699263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972382, 35.334026, 30.636435>,  <28.678080, 35.084183, 30.531721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972382, 35.334026, 30.636435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027557, 0.358613, -0.933080,
		-0.676687, 0.693732, 0.246639,
		0.735755, 0.624606, 0.261785,
		29.193108, 35.521408, 30.714970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498758, 35.721760, 30.275118>,  <28.678080, 35.084183, 30.531721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498758, 35.721760, 30.275118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894045, 35.752705, 30.327942>,  <29.131218, 35.771271, 30.359636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894045, 35.752705, 30.327942>,  <28.498758, 35.721760, 30.275118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894045, 35.752705, 30.327942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071203, 0.531420, -0.844110,
		-0.135478, 0.843569, 0.519651,
		0.988218, 0.077358, 0.132060,
		29.190510, 35.775913, 30.367559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597878, 36.372856, 30.189226>,  <28.498758, 35.721760, 30.275118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597878, 36.372856, 30.189226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961090, 36.219791, 30.121048>,  <29.179018, 36.127953, 30.080141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961090, 36.219791, 30.121048>,  <28.597878, 36.372856, 30.189226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961090, 36.219791, 30.121048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100204, 0.593485, -0.798583,
		0.406744, 0.708058, 0.577246,
		0.908030, -0.382661, -0.170446,
		29.233500, 36.104992, 30.069914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069138, 36.929401, 30.068748>,  <28.597878, 36.372856, 30.189226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069138, 36.929401, 30.068748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247190, 36.605671, 29.915468>,  <29.354023, 36.411430, 29.823500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247190, 36.605671, 29.915468>,  <29.069138, 36.929401, 30.068748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247190, 36.605671, 29.915468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283587, 0.533319, -0.796962,
		0.849373, 0.246084, 0.466914,
		0.445134, -0.809329, -0.383200,
		29.380730, 36.362873, 29.800508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732626, 37.168209, 29.787043>,  <29.069138, 36.929401, 30.068748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732626, 37.168209, 29.787043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690783, 36.819416, 29.595751>,  <29.665676, 36.610142, 29.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690783, 36.819416, 29.595751>,  <29.732626, 37.168209, 29.787043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690783, 36.819416, 29.595751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229486, 0.446726, -0.864738,
		0.967674, -0.200207, 0.153376,
		-0.104610, -0.871982, -0.478230,
		29.659399, 36.557823, 29.452282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377279, 37.063572, 29.349813>,  <29.732626, 37.168209, 29.787043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377279, 37.063572, 29.349813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076405, 36.846142, 29.200821>,  <29.895880, 36.715683, 29.111425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076405, 36.846142, 29.200821>,  <30.377279, 37.063572, 29.349813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076405, 36.846142, 29.200821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187098, 0.365826, -0.911683,
		0.631829, -0.755447, -0.173468,
		-0.752188, -0.543572, -0.372483,
		29.850748, 36.683071, 29.089077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694330, 36.690689, 28.701006>,  <30.377279, 37.063572, 29.349813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694330, 36.690689, 28.701006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295610, 36.693680, 28.669161>,  <30.056379, 36.695473, 28.650053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295610, 36.693680, 28.669161>,  <30.694330, 36.690689, 28.701006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295610, 36.693680, 28.669161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069409, 0.575237, -0.815036,
		0.039706, -0.817952, -0.573914,
		-0.996797, 0.007472, -0.079614,
		29.996571, 36.695923, 28.645277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572340, 36.680058, 27.988699>,  <30.694330, 36.690689, 28.701006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572340, 36.680058, 27.988699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234230, 36.818539, 28.151501>,  <30.031364, 36.901627, 28.249182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234230, 36.818539, 28.151501>,  <30.572340, 36.680058, 27.988699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234230, 36.818539, 28.151501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081200, 0.669632, -0.738241,
		-0.528128, -0.657065, -0.537910,
		-0.845274, 0.346207, 0.407005,
		29.980648, 36.922401, 28.273602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008347, 36.713131, 27.461178>,  <30.572340, 36.680058, 27.988699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008347, 36.713131, 27.461178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986198, 36.999123, 27.739958>,  <29.972910, 37.170719, 27.907225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986198, 36.999123, 27.739958>,  <30.008347, 36.713131, 27.461178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986198, 36.999123, 27.739958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050927, 0.699133, -0.713176,
		-0.997166, -0.003996, -0.075123,
		-0.055371, 0.714981, 0.696948,
		29.969587, 37.213615, 27.949041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518057, 37.041962, 27.153412>,  <30.008347, 36.713131, 27.461178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518057, 37.041962, 27.153412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762028, 37.294453, 27.345055>,  <29.908411, 37.445946, 27.460041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762028, 37.294453, 27.345055>,  <29.518057, 37.041962, 27.153412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762028, 37.294453, 27.345055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113219, 0.528973, -0.841053,
		-0.784328, 0.567225, 0.251169,
		0.609928, 0.631224, 0.479108,
		29.945005, 37.483818, 27.488787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308952, 37.762688, 26.980444>,  <29.518057, 37.041962, 27.153412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308952, 37.762688, 26.980444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691763, 37.783974, 27.094471>,  <29.921450, 37.796745, 27.162888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691763, 37.783974, 27.094471>,  <29.308952, 37.762688, 26.980444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691763, 37.783974, 27.094471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196545, 0.603767, -0.772552,
		-0.213227, 0.795383, 0.567363,
		0.957029, 0.053217, 0.285068,
		29.978872, 37.799938, 27.179991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627897, 38.463993, 26.828714>,  <29.308952, 37.762688, 26.980444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627897, 38.463993, 26.828714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938589, 38.212963, 26.850037>,  <30.125004, 38.062347, 26.862831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938589, 38.212963, 26.850037>,  <29.627897, 38.463993, 26.828714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938589, 38.212963, 26.850037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424908, 0.459654, -0.779853,
		0.464912, 0.628387, 0.623688,
		0.776731, -0.627573, 0.053308,
		30.171608, 38.024693, 26.866030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005247, 38.448746, 27.256500>,  <29.627897, 38.463993, 26.828714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005247, 38.448746, 27.256500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141306, 38.800449, 27.123116>,  <29.222942, 39.011471, 27.043085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141306, 38.800449, 27.123116>,  <29.005247, 38.448746, 27.256500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141306, 38.800449, 27.123116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665867, 0.475599, 0.574828,
		0.664018, 0.026514, 0.747246,
		0.340148, 0.879263, -0.333461,
		29.243351, 39.064228, 27.023077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222927, 38.879162, 27.852871>,  <29.005247, 38.448746, 27.256500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222927, 38.879162, 27.852871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119900, 39.110699, 27.543394>,  <29.058083, 39.249622, 27.357708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119900, 39.110699, 27.543394>,  <29.222927, 38.879162, 27.852871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119900, 39.110699, 27.543394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673690, 0.466420, 0.573232,
		0.692676, 0.668877, 0.269823,
		-0.257570, 0.578841, -0.773693,
		29.042629, 39.284351, 27.311287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316559, 39.572979, 28.068586>,  <29.222927, 38.879162, 27.852871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316559, 39.572979, 28.068586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038393, 39.532356, 27.784029>,  <28.871492, 39.507984, 27.613295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038393, 39.532356, 27.784029>,  <29.316559, 39.572979, 28.068586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038393, 39.532356, 27.784029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634623, 0.551213, 0.541681,
		0.337121, 0.828162, -0.447770,
		-0.695416, -0.101553, -0.711396,
		28.829769, 39.501892, 27.570610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068327, 40.277714, 28.021191>,  <29.316559, 39.572979, 28.068586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068327, 40.277714, 28.021191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830084, 39.970993, 27.925467>,  <28.687138, 39.786961, 27.868032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830084, 39.970993, 27.925467>,  <29.068327, 40.277714, 28.021191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830084, 39.970993, 27.925467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781222, 0.483620, 0.394720,
		-0.186937, 0.422052, -0.887089,
		-0.595607, -0.766801, -0.239310,
		28.651402, 39.740952, 27.853674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341576, 40.988243, 28.012972>,  <29.068327, 40.277714, 28.021191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341576, 40.988243, 28.012972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957510, 40.963131, 27.904055>,  <28.727070, 40.948063, 27.838705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957510, 40.963131, 27.904055>,  <29.341576, 40.988243, 28.012972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957510, 40.963131, 27.904055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118780, 0.790322, -0.601068,
		0.252935, -0.609467, -0.751381,
		-0.960164, -0.062782, -0.272292,
		28.669460, 40.944298, 27.822367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184158, 41.126415, 28.161358>,  <29.341576, 40.988243, 28.012972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184158, 41.126415, 28.161358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501020, 41.368282, 28.128210>,  <30.691137, 41.513405, 28.108322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501020, 41.368282, 28.128210>,  <30.184158, 41.126415, 28.161358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501020, 41.368282, 28.128210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399614, -0.411241, 0.819261,
		0.461304, -0.682096, -0.567401,
		0.792154, 0.604670, -0.082868,
		30.738667, 41.549683, 28.103350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733868, 40.749332, 28.377884>,  <30.184158, 41.126415, 28.161358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733868, 40.749332, 28.377884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816277, 41.137138, 28.430952>,  <30.865723, 41.369820, 28.462793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816277, 41.137138, 28.430952>,  <30.733868, 40.749332, 28.377884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816277, 41.137138, 28.430952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260211, -0.184976, 0.947668,
		0.943316, -0.160719, -0.290387,
		0.206023, 0.969512, 0.132670,
		30.878084, 41.427994, 28.470753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417595, 40.941704, 28.650581>,  <30.733868, 40.749332, 28.377884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417595, 40.941704, 28.650581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120663, 41.184383, 28.764324>,  <30.942503, 41.329990, 28.832571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120663, 41.184383, 28.764324>,  <31.417595, 40.941704, 28.650581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120663, 41.184383, 28.764324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099101, -0.320311, 0.942115,
		0.662667, 0.727539, 0.177651,
		-0.742329, 0.606703, 0.284359,
		30.897964, 41.366394, 28.849632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712440, 41.322052, 29.263536>,  <31.417595, 40.941704, 28.650581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712440, 41.322052, 29.263536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312679, 41.319210, 29.277077>,  <31.072823, 41.317505, 29.285200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312679, 41.319210, 29.277077>,  <31.712440, 41.322052, 29.263536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312679, 41.319210, 29.277077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034519, -0.143824, 0.989001,
		-0.002162, 0.989578, 0.143983,
		-0.999402, -0.007109, 0.033848,
		31.012859, 41.317078, 29.287231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615269, 41.513748, 29.903105>,  <31.712440, 41.322052, 29.263536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615269, 41.513748, 29.903105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259974, 41.356586, 29.807894>,  <31.046797, 41.262291, 29.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259974, 41.356586, 29.807894>,  <31.615269, 41.513748, 29.903105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259974, 41.356586, 29.807894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195434, -0.145726, 0.969830,
		-0.415736, 0.907960, 0.052653,
		-0.888239, -0.392903, -0.238030,
		30.993502, 41.238716, 29.736485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310221, 41.619541, 30.541967>,  <31.615269, 41.513748, 29.903105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310221, 41.619541, 30.541967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092201, 41.351688, 30.340170>,  <30.961390, 41.190975, 30.219091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092201, 41.351688, 30.340170>,  <31.310221, 41.619541, 30.541967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092201, 41.351688, 30.340170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255734, -0.440267, 0.860677,
		-0.798449, 0.598128, 0.068720,
		-0.545050, -0.669633, -0.504492,
		30.928686, 41.150799, 30.188822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653763, 41.557716, 30.922194>,  <31.310221, 41.619541, 30.541967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653763, 41.557716, 30.922194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704693, 41.221317, 30.711853>,  <30.735250, 41.019478, 30.585649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704693, 41.221317, 30.711853>,  <30.653763, 41.557716, 30.922194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704693, 41.221317, 30.711853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234768, -0.540652, 0.807823,
		-0.963676, 0.020596, -0.266277,
		0.127325, -0.840994, -0.525849,
		30.742891, 40.969021, 30.554098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053011, 41.188648, 31.105181>,  <30.653763, 41.557716, 30.922194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053011, 41.188648, 31.105181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307938, 40.916256, 30.960909>,  <30.460894, 40.752819, 30.874346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307938, 40.916256, 30.960909>,  <30.053011, 41.188648, 31.105181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307938, 40.916256, 30.960909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264548, -0.632950, 0.727591,
		-0.723768, -0.368289, -0.583543,
		0.637317, -0.680983, -0.360679,
		30.499134, 40.711960, 30.852705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726761, 40.543060, 31.196531>,  <30.053011, 41.188648, 31.105181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726761, 40.543060, 31.196531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108931, 40.425362, 31.186899>,  <30.338232, 40.354744, 31.181120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108931, 40.425362, 31.186899>,  <29.726761, 40.543060, 31.196531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108931, 40.425362, 31.186899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215020, -0.749421, 0.626207,
		-0.202304, -0.593117, -0.779285,
		0.955427, -0.294246, -0.024079,
		30.395559, 40.337090, 31.179676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786438, 39.737041, 31.140558>,  <29.726761, 40.543060, 31.196531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786438, 39.737041, 31.140558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142544, 39.847023, 31.285793>,  <30.356207, 39.913013, 31.372934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142544, 39.847023, 31.285793>,  <29.786438, 39.737041, 31.140558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142544, 39.847023, 31.285793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029353, -0.830190, 0.556707,
		0.454501, -0.484957, -0.747158,
		0.890262, 0.274955, 0.363088,
		30.409622, 39.929508, 31.394720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066889, 39.130775, 31.301973>,  <29.786438, 39.737041, 31.140558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066889, 39.130775, 31.301973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278740, 39.384693, 31.527018>,  <30.405851, 39.537045, 31.662045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278740, 39.384693, 31.527018>,  <30.066889, 39.130775, 31.301973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278740, 39.384693, 31.527018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119191, -0.712388, 0.691590,
		0.839814, -0.299227, -0.452963,
		0.529628, 0.634796, 0.562608,
		30.437628, 39.575130, 31.695801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586554, 38.699577, 31.591410>,  <30.066889, 39.130775, 31.301973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586554, 38.699577, 31.591410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589472, 39.036125, 31.807573>,  <30.591223, 39.238052, 31.937271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589472, 39.036125, 31.807573>,  <30.586554, 38.699577, 31.591410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589472, 39.036125, 31.807573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087263, -0.538898, 0.837839,
		0.996159, 0.041047, -0.077351,
		0.007294, 0.841370, 0.540410,
		30.591660, 39.288536, 31.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216187, 38.636147, 31.940487>,  <30.586554, 38.699577, 31.591410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216187, 38.636147, 31.940487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961943, 38.878071, 32.132404>,  <30.809397, 39.023228, 32.247555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961943, 38.878071, 32.132404>,  <31.216187, 38.636147, 31.940487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961943, 38.878071, 32.132404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094654, -0.555742, 0.825948,
		0.766185, 0.570396, 0.295988,
		-0.635610, 0.604813, 0.479792,
		30.771259, 39.059513, 32.276340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388149, 38.541428, 32.565491>,  <31.216187, 38.636147, 31.940487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388149, 38.541428, 32.565491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045847, 38.735321, 32.637848>,  <30.840466, 38.851658, 32.681263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045847, 38.735321, 32.637848>,  <31.388149, 38.541428, 32.565491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045847, 38.735321, 32.637848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113641, -0.517190, 0.848293,
		0.504746, 0.705374, 0.497673,
		-0.855755, 0.484729, 0.180890,
		30.789120, 38.880741, 32.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469988, 38.997807, 33.126793>,  <31.388149, 38.541428, 32.565491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469988, 38.997807, 33.126793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088600, 38.884647, 33.085106>,  <30.859768, 38.816753, 33.060093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088600, 38.884647, 33.085106>,  <31.469988, 38.997807, 33.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088600, 38.884647, 33.085106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087722, -0.591051, 0.801850,
		-0.288439, 0.755399, 0.588366,
		-0.953471, -0.282897, -0.104217,
		30.802559, 38.799778, 33.053841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285814, 38.810898, 33.737434>,  <31.469988, 38.997807, 33.126793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285814, 38.810898, 33.737434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969494, 38.643940, 33.558365>,  <30.779701, 38.543766, 33.450924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.969494, 38.643940, 33.558365>,  <31.285814, 38.810898, 33.737434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969494, 38.643940, 33.558365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023238, -0.710410, 0.703404,
		-0.611633, 0.566655, 0.552093,
		-0.790800, -0.417396, -0.447678,
		30.732254, 38.518723, 33.424061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913548, 38.581448, 34.297195>,  <31.285814, 38.810898, 33.737434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913548, 38.581448, 34.297195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777174, 38.396603, 33.969730>,  <30.695351, 38.285694, 33.773251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777174, 38.396603, 33.969730>,  <30.913548, 38.581448, 34.297195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777174, 38.396603, 33.969730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179408, -0.822852, 0.539192,
		-0.922810, 0.330703, 0.197629,
		-0.340932, -0.462115, -0.818667,
		30.674894, 38.257969, 33.724129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289705, 38.250340, 34.443306>,  <30.913548, 38.581448, 34.297195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289705, 38.250340, 34.443306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444633, 38.067661, 34.122952>,  <30.537590, 37.958054, 33.930740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444633, 38.067661, 34.122952>,  <30.289705, 38.250340, 34.443306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444633, 38.067661, 34.122952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279870, -0.885938, 0.369846,
		-0.878437, 0.080891, -0.470962,
		0.387326, -0.456695, -0.800880,
		30.560829, 37.930653, 33.882687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895058, 37.671455, 34.249592>,  <30.289705, 38.250340, 34.443306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895058, 37.671455, 34.249592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215597, 37.564461, 34.035568>,  <30.407921, 37.500263, 33.907154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215597, 37.564461, 34.035568>,  <29.895058, 37.671455, 34.249592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215597, 37.564461, 34.035568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197125, -0.962577, 0.185976,
		-0.564784, -0.043558, -0.824089,
		0.801350, -0.267485, -0.535062,
		30.456001, 37.484215, 33.875050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759155, 37.019402, 33.907360>,  <29.895058, 37.671455, 34.249592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759155, 37.019402, 33.907360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159082, 37.017586, 33.899925>,  <30.399038, 37.016495, 33.895462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159082, 37.017586, 33.899925>,  <29.759155, 37.019402, 33.907360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159082, 37.017586, 33.899925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002386, -0.993432, 0.114395,
		-0.018987, -0.114330, -0.993261,
		0.999817, -0.004542, -0.018590,
		30.459028, 37.016224, 33.894348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914955, 36.380318, 33.509918>,  <29.759155, 37.019402, 33.907360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914955, 36.380318, 33.509918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245903, 36.482586, 33.709953>,  <30.444471, 36.543949, 33.829975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245903, 36.482586, 33.709953>,  <29.914955, 36.380318, 33.509918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245903, 36.482586, 33.709953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141273, -0.956489, 0.255285,
		0.543599, -0.140566, -0.827491,
		0.827371, 0.255675, 0.500088,
		30.494114, 36.559288, 33.859982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417091, 35.974583, 33.347973>,  <29.914955, 36.380318, 33.509918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417091, 35.974583, 33.347973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555265, 36.096977, 33.702835>,  <30.638170, 36.170414, 33.915752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555265, 36.096977, 33.702835>,  <30.417091, 35.974583, 33.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555265, 36.096977, 33.702835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223906, -0.944920, 0.238730,
		0.911340, 0.116174, -0.394922,
		0.345435, 0.305990, 0.887155,
		30.658895, 36.188774, 33.968983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956751, 35.539898, 33.564346>,  <30.417091, 35.974583, 33.347973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956751, 35.539898, 33.564346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860264, 35.709408, 33.913570>,  <30.802372, 35.811115, 34.123104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860264, 35.709408, 33.913570>,  <30.956751, 35.539898, 33.564346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860264, 35.709408, 33.913570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048657, -0.903772, 0.425239,
		0.969251, 0.060095, 0.238625,
		-0.241218, 0.423774, 0.873058,
		30.787899, 35.836540, 34.175488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313015, 35.236103, 34.026554>,  <30.956751, 35.539898, 33.564346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313015, 35.236103, 34.026554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013683, 35.395939, 34.238338>,  <30.834084, 35.491840, 34.365410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013683, 35.395939, 34.238338>,  <31.313015, 35.236103, 34.026554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013683, 35.395939, 34.238338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037106, -0.822162, 0.568043,
		0.662288, 0.405438, 0.630075,
		-0.748330, 0.399588, 0.529464,
		30.789185, 35.515816, 34.397179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597200, 35.156288, 34.716965>,  <31.313015, 35.236103, 34.026554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597200, 35.156288, 34.716965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200697, 35.197727, 34.684292>,  <30.962795, 35.222591, 34.664688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200697, 35.197727, 34.684292>,  <31.597200, 35.156288, 34.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200697, 35.197727, 34.684292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126788, -0.919182, 0.372867,
		-0.036452, 0.379964, 0.924283,
		-0.991260, 0.103597, -0.081681,
		30.903318, 35.228806, 34.659786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988844, 35.341000, 35.273647>,  <31.597200, 35.156288, 34.716965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988844, 35.341000, 35.273647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103016, 34.965294, 35.197418>,  <32.171520, 34.739872, 35.151680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103016, 34.965294, 35.197418>,  <31.988844, 35.341000, 35.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103016, 34.965294, 35.197418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371260, 0.291677, -0.881528,
		0.883570, 0.180865, 0.431964,
		0.285431, -0.939262, -0.190569,
		32.188644, 34.683514, 35.140247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745651, 35.412373, 35.018394>,  <31.988844, 35.341000, 35.273647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745651, 35.412373, 35.018394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544804, 35.094402, 34.882175>,  <32.424294, 34.903622, 34.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544804, 35.094402, 34.882175>,  <32.745651, 35.412373, 35.018394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544804, 35.094402, 34.882175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251701, 0.242401, -0.936957,
		0.827358, -0.556180, 0.078369,
		-0.502121, -0.794924, -0.340544,
		32.394169, 34.855927, 34.780014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829659, 35.808296, 35.680981>,  <32.745651, 35.412373, 35.018394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829659, 35.808296, 35.680981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715462, 36.189785, 35.643211>,  <32.646942, 36.418678, 35.620552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715462, 36.189785, 35.643211>,  <32.829659, 35.808296, 35.680981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715462, 36.189785, 35.643211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360959, 0.198271, 0.911261,
		0.887807, 0.226078, -0.400858,
		-0.285494, 0.953718, -0.094421,
		32.629814, 36.475899, 35.614883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390617, 36.252827, 35.738201>,  <32.829659, 35.808296, 35.680981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390617, 36.252827, 35.738201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060966, 36.456940, 35.836529>,  <32.863174, 36.579407, 35.895527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060966, 36.456940, 35.836529>,  <33.390617, 36.252827, 35.738201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060966, 36.456940, 35.836529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327605, 0.075394, 0.941802,
		0.462051, 0.856696, -0.229304,
		-0.824126, 0.510282, 0.245822,
		32.813728, 36.610023, 35.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376091, 37.065289, 35.861931>,  <33.390617, 36.252827, 35.738201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376091, 37.065289, 35.861931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209873, 36.763805, 36.065594>,  <33.110142, 36.582916, 36.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209873, 36.763805, 36.065594>,  <33.376091, 37.065289, 35.861931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209873, 36.763805, 36.065594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386689, 0.360276, 0.848924,
		-0.823281, 0.549653, 0.141740,
		-0.415548, -0.753713, 0.509153,
		33.085209, 36.537693, 36.218338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763699, 37.269539, 36.283768>,  <33.376091, 37.065289, 35.861931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763699, 37.269539, 36.283768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995731, 36.976360, 36.425915>,  <33.134953, 36.800453, 36.511204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995731, 36.976360, 36.425915>,  <32.763699, 37.269539, 36.283768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995731, 36.976360, 36.425915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173412, 0.537394, 0.825310,
		-0.795885, -0.417121, 0.438835,
		0.580082, -0.732951, 0.355370,
		33.169754, 36.756474, 36.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547188, 37.115997, 36.978271>,  <32.763699, 37.269539, 36.283768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547188, 37.115997, 36.978271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926628, 36.990105, 36.965019>,  <33.154293, 36.914570, 36.957069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926628, 36.990105, 36.965019>,  <32.547188, 37.115997, 36.978271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926628, 36.990105, 36.965019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227022, 0.603810, 0.764117,
		-0.220487, -0.732364, 0.644226,
		0.948602, -0.314732, -0.033130,
		33.211208, 36.895687, 36.955082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639797, 36.928333, 37.641029>,  <32.547188, 37.115997, 36.978271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639797, 36.928333, 37.641029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002178, 36.968655, 37.476543>,  <33.219604, 36.992847, 37.377853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002178, 36.968655, 37.476543>,  <32.639797, 36.928333, 37.641029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002178, 36.968655, 37.476543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303200, 0.523435, 0.796295,
		0.295508, -0.846082, 0.443643,
		0.905950, 0.100799, -0.411211,
		33.273964, 36.998894, 37.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166981, 36.740765, 38.105919>,  <32.639797, 36.928333, 37.641029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166981, 36.740765, 38.105919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340038, 36.996933, 37.852089>,  <33.443874, 37.150635, 37.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340038, 36.996933, 37.852089>,  <33.166981, 36.740765, 38.105919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340038, 36.996933, 37.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250428, 0.590790, 0.766976,
		0.866084, -0.490745, 0.095225,
		0.432648, 0.640419, -0.634570,
		33.469833, 37.189060, 37.661716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752647, 36.876125, 38.426048>,  <33.166981, 36.740765, 38.105919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752647, 36.876125, 38.426048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733990, 37.189640, 38.178337>,  <33.722797, 37.377750, 38.029709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733990, 37.189640, 38.178337>,  <33.752647, 36.876125, 38.426048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733990, 37.189640, 38.178337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472746, 0.563449, 0.677522,
		0.879964, -0.261160, -0.396812,
		-0.046642, 0.783786, -0.619276,
		33.719997, 37.424774, 37.992554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398735, 37.226822, 38.508480>,  <33.752647, 36.876125, 38.426048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398735, 37.226822, 38.508480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151836, 37.499306, 38.351017>,  <34.003696, 37.662796, 38.256538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151836, 37.499306, 38.351017>,  <34.398735, 37.226822, 38.508480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151836, 37.499306, 38.351017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232200, 0.635781, 0.736115,
		0.751726, 0.362957, -0.550609,
		-0.617245, 0.681208, -0.393654,
		33.966663, 37.703667, 38.232922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818626, 37.944237, 38.392864>,  <34.398735, 37.226822, 38.508480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818626, 37.944237, 38.392864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423801, 38.007217, 38.405037>,  <34.186909, 38.045006, 38.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423801, 38.007217, 38.405037>,  <34.818626, 37.944237, 38.392864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423801, 38.007217, 38.405037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131260, 0.684234, 0.717352,
		0.092123, 0.712063, -0.696046,
		-0.987058, 0.157448, 0.030432,
		34.127686, 38.054451, 38.414165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767361, 38.722183, 38.512249>,  <34.818626, 37.944237, 38.392864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767361, 38.722183, 38.512249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406246, 38.589970, 38.622318>,  <34.189575, 38.510639, 38.688358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406246, 38.589970, 38.622318>,  <34.767361, 38.722183, 38.512249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406246, 38.589970, 38.622318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027097, 0.594821, 0.803401,
		-0.429232, 0.732757, -0.528041,
		-0.902788, -0.330537, 0.275171,
		34.135410, 38.490807, 38.704868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372967, 39.343349, 38.720284>,  <34.767361, 38.722183, 38.512249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372967, 39.343349, 38.720284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184998, 39.036457, 38.894882>,  <34.072216, 38.852322, 38.999641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184998, 39.036457, 38.894882>,  <34.372967, 39.343349, 38.720284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184998, 39.036457, 38.894882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153501, 0.557988, 0.815529,
		-0.869260, 0.316230, -0.379980,
		-0.469919, -0.767234, 0.436495,
		34.044022, 38.806286, 39.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745754, 39.515434, 38.893188>,  <34.372967, 39.343349, 38.720284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745754, 39.515434, 38.893188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795490, 39.211933, 39.148949>,  <33.825333, 39.029831, 39.302406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795490, 39.211933, 39.148949>,  <33.745754, 39.515434, 38.893188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795490, 39.211933, 39.148949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282384, 0.590693, 0.755871,
		-0.951209, -0.274543, -0.140812,
		0.124343, -0.758754, 0.639399,
		33.832794, 38.984306, 39.340767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150917, 39.546635, 39.342766>,  <33.745754, 39.515434, 38.893188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150917, 39.546635, 39.342766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421265, 39.335438, 39.548454>,  <33.583473, 39.208717, 39.671867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421265, 39.335438, 39.548454>,  <33.150917, 39.546635, 39.342766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421265, 39.335438, 39.548454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294409, 0.446212, 0.845114,
		-0.675669, -0.722576, 0.146133,
		0.675865, -0.527995, 0.514225,
		33.624023, 39.177040, 39.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879955, 39.658325, 39.997921>,  <33.150917, 39.546635, 39.342766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879955, 39.658325, 39.997921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228146, 39.477474, 40.075737>,  <33.437061, 39.368961, 40.122429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228146, 39.477474, 40.075737>,  <32.879955, 39.658325, 39.997921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228146, 39.477474, 40.075737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009399, 0.379905, 0.924978,
		-0.492117, -0.807002, 0.326449,
		0.870478, -0.452130, 0.194543,
		33.489288, 39.341835, 40.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912605, 39.158211, 40.604294>,  <32.879955, 39.658325, 39.997921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912605, 39.158211, 40.604294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293350, 39.271797, 40.558140>,  <33.521797, 39.339951, 40.530449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293350, 39.271797, 40.558140>,  <32.912605, 39.158211, 40.604294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293350, 39.271797, 40.558140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043545, 0.247345, 0.967949,
		0.303407, -0.926381, 0.223074,
		0.951866, 0.283969, -0.115385,
		33.578911, 39.356987, 40.523525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242069, 38.949051, 41.267994>,  <32.912605, 39.158211, 40.604294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242069, 38.949051, 41.267994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527786, 39.174789, 41.102436>,  <33.699215, 39.310230, 41.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527786, 39.174789, 41.102436>,  <33.242069, 38.949051, 41.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527786, 39.174789, 41.102436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379764, 0.184208, 0.906558,
		0.587853, -0.804726, -0.082739,
		0.714289, 0.564344, -0.413893,
		33.742073, 39.344093, 40.978268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826313, 38.697529, 41.427372>,  <33.242069, 38.949051, 41.267994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826313, 38.697529, 41.427372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905350, 39.085346, 41.369492>,  <33.952770, 39.318039, 41.334763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905350, 39.085346, 41.369492>,  <33.826313, 38.697529, 41.427372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905350, 39.085346, 41.369492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445886, 0.042566, 0.894077,
		0.873008, -0.241182, -0.423896,
		0.197592, 0.969546, -0.144701,
		33.964626, 39.376209, 41.326080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584282, 38.842316, 41.638817>,  <33.826313, 38.697529, 41.427372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584282, 38.842316, 41.638817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381096, 39.186852, 41.635696>,  <34.259186, 39.393574, 41.633823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381096, 39.186852, 41.635696>,  <34.584282, 38.842316, 41.638817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381096, 39.186852, 41.635696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125281, 0.082840, 0.988657,
		0.852219, 0.501225, -0.149990,
		-0.507965, 0.861343, -0.007804,
		34.228706, 39.445255, 41.633354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994896, 39.180901, 42.168549>,  <34.584282, 38.842316, 41.638817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994896, 39.180901, 42.168549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661148, 39.395321, 42.117191>,  <34.460899, 39.523972, 42.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661148, 39.395321, 42.117191>,  <34.994896, 39.180901, 42.168549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661148, 39.395321, 42.117191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034069, 0.282631, 0.958623,
		0.550158, 0.795468, -0.254081,
		-0.834365, 0.536051, -0.128391,
		34.410839, 39.556137, 42.078674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164612, 39.813313, 42.340878>,  <34.994896, 39.180901, 42.168549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164612, 39.813313, 42.340878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766556, 39.785786, 42.369068>,  <34.527721, 39.769272, 42.385983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766556, 39.785786, 42.369068>,  <35.164612, 39.813313, 42.340878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766556, 39.785786, 42.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038804, 0.383704, 0.922640,
		-0.090532, 0.920888, -0.379168,
		-0.995137, -0.068815, 0.070472,
		34.468014, 39.765141, 42.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873798, 40.463314, 42.488289>,  <35.164612, 39.813313, 42.340878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873798, 40.463314, 42.488289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606270, 40.192413, 42.610939>,  <34.445755, 40.029873, 42.684528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606270, 40.192413, 42.610939>,  <34.873798, 40.463314, 42.488289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606270, 40.192413, 42.610939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034088, 0.439951, 0.897375,
		-0.742644, 0.589728, -0.317333,
		-0.668818, -0.677247, 0.306625,
		34.405624, 39.989239, 42.702927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566929, 40.834160, 42.913891>,  <34.873798, 40.463314, 42.488289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566929, 40.834160, 42.913891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420017, 40.471169, 42.995457>,  <34.331871, 40.253372, 43.044395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420017, 40.471169, 42.995457>,  <34.566929, 40.834160, 42.913891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420017, 40.471169, 42.995457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210713, 0.294724, 0.932061,
		-0.905927, 0.299360, -0.299465,
		-0.367281, -0.907481, 0.203919,
		34.309834, 40.198925, 43.056633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912914, 40.853043, 43.174824>,  <34.566929, 40.834160, 42.913891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912914, 40.853043, 43.174824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060104, 40.515350, 43.330704>,  <34.148418, 40.312733, 43.424232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060104, 40.515350, 43.330704>,  <33.912914, 40.853043, 43.174824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060104, 40.515350, 43.330704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176847, 0.347911, 0.920697,
		-0.912863, -0.407712, -0.021277,
		0.367976, -0.844233, 0.389698,
		34.170498, 40.262081, 43.447613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532295, 40.748871, 43.749714>,  <33.912914, 40.853043, 43.174824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532295, 40.748871, 43.749714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827999, 40.490345, 43.825371>,  <34.005421, 40.335232, 43.870766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827999, 40.490345, 43.825371>,  <33.532295, 40.748871, 43.749714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827999, 40.490345, 43.825371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075152, 0.199929, 0.976924,
		-0.669211, -0.736417, 0.099228,
		0.739262, -0.646312, 0.189138,
		34.049778, 40.296452, 43.882111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330132, 40.378460, 44.264500>,  <33.532295, 40.748871, 43.749714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330132, 40.378460, 44.264500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729511, 40.374729, 44.286446>,  <33.969139, 40.372490, 44.299614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729511, 40.374729, 44.286446>,  <33.330132, 40.378460, 44.264500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729511, 40.374729, 44.286446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051508, 0.218522, 0.974472,
		-0.021074, -0.975788, 0.217703,
		0.998450, -0.009322, 0.054866,
		34.029045, 40.371933, 44.302906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394665, 40.233932, 44.944901>,  <33.330132, 40.378460, 44.264500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394665, 40.233932, 44.944901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762699, 40.337811, 44.827599>,  <33.983521, 40.400135, 44.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762699, 40.337811, 44.827599>,  <33.394665, 40.233932, 44.944901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762699, 40.337811, 44.827599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192023, 0.353491, 0.915517,
		0.341396, -0.898673, 0.275383,
		0.920096, 0.259674, -0.293246,
		34.038727, 40.415718, 44.739624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788441, 39.956036, 45.485855>,  <33.394665, 40.233932, 44.944901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788441, 39.956036, 45.485855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998199, 40.246605, 45.308178>,  <34.124054, 40.420948, 45.201572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998199, 40.246605, 45.308178>,  <33.788441, 39.956036, 45.485855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998199, 40.246605, 45.308178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231126, 0.380656, 0.895367,
		0.819502, -0.572197, 0.031721,
		0.524401, 0.726424, -0.444198,
		34.155521, 40.464531, 45.174919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414413, 39.725231, 45.741318>,  <33.788441, 39.956036, 45.485855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414413, 39.725231, 45.741318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417103, 40.110455, 45.633633>,  <34.418716, 40.341587, 45.569023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417103, 40.110455, 45.633633>,  <34.414413, 39.725231, 45.741318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417103, 40.110455, 45.633633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203307, 0.262278, 0.943333,
		0.979092, -0.061071, -0.194034,
		0.006719, 0.963058, -0.269210,
		34.419117, 40.399372, 45.552868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964241, 40.000298, 46.110023>,  <34.414413, 39.725231, 45.741318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964241, 40.000298, 46.110023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755959, 40.329765, 46.020187>,  <34.630989, 40.527447, 45.966286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755959, 40.329765, 46.020187>,  <34.964241, 40.000298, 46.110023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755959, 40.329765, 46.020187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314258, 0.429515, 0.846616,
		0.793791, 0.370261, -0.482495,
		-0.520708, 0.823665, -0.224588,
		34.599747, 40.576866, 45.952812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406490, 40.570633, 46.319736>,  <34.964241, 40.000298, 46.110023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406490, 40.570633, 46.319736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029053, 40.701935, 46.302402>,  <34.802589, 40.780716, 46.292004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029053, 40.701935, 46.302402>,  <35.406490, 40.570633, 46.319736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029053, 40.701935, 46.302402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057521, 0.291399, 0.954871,
		0.326064, 0.898520, -0.293844,
		-0.943596, 0.328251, -0.043331,
		34.745975, 40.800411, 46.289402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419132, 41.254913, 46.552525>,  <35.406490, 40.570633, 46.319736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419132, 41.254913, 46.552525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048645, 41.109364, 46.591930>,  <34.826351, 41.022034, 46.615574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048645, 41.109364, 46.591930>,  <35.419132, 41.254913, 46.552525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048645, 41.109364, 46.591930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032871, 0.338282, 0.940471,
		-0.375541, 0.867847, -0.325285,
		-0.926223, -0.363878, 0.098511,
		34.770779, 41.000198, 46.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080296, 41.850117, 46.836452>,  <35.419132, 41.254913, 46.552525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080296, 41.850117, 46.836452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837658, 41.549625, 46.940525>,  <34.692074, 41.369331, 47.002968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837658, 41.549625, 46.940525>,  <35.080296, 41.850117, 46.836452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837658, 41.549625, 46.940525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142294, 0.424578, 0.894140,
		-0.782172, 0.505360, -0.364443,
		-0.606597, -0.751229, 0.260183,
		34.655678, 41.324257, 47.018581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572094, 42.167618, 47.285843>,  <35.080296, 41.850117, 46.836452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572094, 42.167618, 47.285843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551308, 41.773178, 47.348972>,  <34.538837, 41.536514, 47.386848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551308, 41.773178, 47.348972>,  <34.572094, 42.167618, 47.285843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551308, 41.773178, 47.348972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247572, 0.165823, 0.954574,
		-0.967475, 0.010533, -0.252747,
		-0.051966, -0.986099, 0.157821,
		34.535717, 41.477348, 47.396320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978077, 42.048615, 47.561329>,  <34.572094, 42.167618, 47.285843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978077, 42.048615, 47.561329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220036, 41.748631, 47.668404>,  <34.365211, 41.568638, 47.732651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220036, 41.748631, 47.668404>,  <33.978077, 42.048615, 47.561329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220036, 41.748631, 47.668404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324180, 0.075122, 0.943008,
		-0.727330, -0.657200, -0.197682,
		0.604895, -0.749963, 0.267690,
		34.401505, 41.523643, 47.748711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498753, 41.617378, 47.949596>,  <33.978077, 42.048615, 47.561329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498753, 41.617378, 47.949596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883041, 41.566917, 48.048473>,  <34.113613, 41.536640, 48.107800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883041, 41.566917, 48.048473>,  <33.498753, 41.617378, 47.949596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883041, 41.566917, 48.048473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213083, 0.235340, 0.948267,
		-0.177800, -0.963691, 0.199214,
		0.960720, -0.126153, 0.247190,
		34.171257, 41.529072, 48.122631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428005, 41.375843, 48.617268>,  <33.498753, 41.617378, 47.949596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428005, 41.375843, 48.617268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816933, 41.468193, 48.602879>,  <34.050289, 41.523602, 48.594246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816933, 41.468193, 48.602879>,  <33.428005, 41.375843, 48.617268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816933, 41.468193, 48.602879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014843, 0.214692, 0.976569,
		0.233190, -0.949001, 0.212175,
		0.972318, 0.230876, -0.035978,
		34.108627, 41.537457, 48.592087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732658, 41.042873, 49.143250>,  <33.428005, 41.375843, 48.617268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732658, 41.042873, 49.143250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996929, 41.340183, 49.101212>,  <34.155491, 41.518570, 49.075989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996929, 41.340183, 49.101212>,  <33.732658, 41.042873, 49.143250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996929, 41.340183, 49.101212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042754, 0.102521, 0.993812,
		0.749452, -0.661082, 0.035955,
		0.660677, 0.743276, -0.105098,
		34.195133, 41.563168, 49.069683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293545, 40.930695, 49.499237>,  <33.732658, 41.042873, 49.143250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293545, 40.930695, 49.499237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310204, 41.329422, 49.472050>,  <34.320198, 41.568657, 49.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310204, 41.329422, 49.472050>,  <34.293545, 40.930695, 49.499237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310204, 41.329422, 49.472050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215493, 0.057469, 0.974813,
		0.975617, -0.055245, -0.212414,
		0.041646, 0.996817, -0.067973,
		34.322697, 41.628468, 49.451656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933422, 41.105675, 49.748928>,  <34.293545, 40.930695, 49.499237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933422, 41.105675, 49.748928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715424, 41.440319, 49.771030>,  <34.584625, 41.641106, 49.784290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715424, 41.440319, 49.771030>,  <34.933422, 41.105675, 49.748928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715424, 41.440319, 49.771030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302472, 0.134718, 0.943590,
		0.781977, 0.530967, -0.326473,
		-0.544997, 0.836615, 0.055256,
		34.551926, 41.691303, 49.787605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290596, 41.417736, 50.210476>,  <34.933422, 41.105675, 49.748928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290596, 41.417736, 50.210476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941494, 41.612244, 50.193321>,  <34.732033, 41.728947, 50.183029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941494, 41.612244, 50.193321>,  <35.290596, 41.417736, 50.210476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941494, 41.612244, 50.193321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142701, 0.338167, 0.930204,
		0.466830, 0.805722, -0.364529,
		-0.872758, 0.486266, -0.042890,
		34.679668, 41.758125, 50.180454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436386, 41.978294, 50.600880>,  <35.290596, 41.417736, 50.210476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436386, 41.978294, 50.600880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040413, 42.009602, 50.553707>,  <34.802830, 42.028385, 50.525402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040413, 42.009602, 50.553707>,  <35.436386, 41.978294, 50.600880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040413, 42.009602, 50.553707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082574, 0.357386, 0.930299,
		0.114960, 0.930672, -0.347325,
		-0.989932, 0.078267, -0.117934,
		34.743435, 42.033081, 50.518326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224579, 42.722801, 50.765022>,  <35.436386, 41.978294, 50.600880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224579, 42.722801, 50.765022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915840, 42.483192, 50.850277>,  <34.730595, 42.339428, 50.901428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915840, 42.483192, 50.850277>,  <35.224579, 42.722801, 50.765022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915840, 42.483192, 50.850277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009044, 0.345531, 0.938364,
		-0.635742, 0.722348, -0.272115,
		-0.771849, -0.599018, 0.213136,
		34.684284, 42.303486, 50.914219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815941, 43.180775, 51.195366>,  <35.224579, 42.722801, 50.765022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815941, 43.180775, 51.195366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688084, 42.803486, 51.231487>,  <34.611370, 42.577110, 51.253162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688084, 42.803486, 51.231487>,  <34.815941, 43.180775, 51.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688084, 42.803486, 51.231487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196227, 0.159134, 0.967559,
		-0.926998, 0.291551, -0.235953,
		-0.319641, -0.943226, 0.090307,
		34.592190, 42.520519, 51.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185917, 43.191902, 51.488106>,  <34.815941, 43.180775, 51.195366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185917, 43.191902, 51.488106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302170, 42.822208, 51.587158>,  <34.371922, 42.600391, 51.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302170, 42.822208, 51.587158>,  <34.185917, 43.191902, 51.488106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302170, 42.822208, 51.587158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128414, 0.218786, 0.967286,
		-0.948178, -0.312927, -0.055097,
		0.290635, -0.924234, 0.247633,
		34.389362, 42.544937, 51.661449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636105, 42.799286, 51.845058>,  <34.185917, 43.191902, 51.488106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636105, 42.799286, 51.845058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006573, 42.700310, 51.958889>,  <34.228855, 42.640926, 52.027187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006573, 42.700310, 51.958889>,  <33.636105, 42.799286, 51.845058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006573, 42.700310, 51.958889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256806, 0.138781, 0.956447,
		-0.276154, -0.958913, 0.064991,
		0.926169, -0.247436, 0.284580,
		34.284424, 42.626080, 52.044262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580936, 42.274708, 52.277977>,  <33.636105, 42.799286, 51.845058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580936, 42.274708, 52.277977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895100, 42.510052, 52.354881>,  <34.083599, 42.651257, 52.401024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895100, 42.510052, 52.354881>,  <33.580936, 42.274708, 52.277977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895100, 42.510052, 52.354881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419324, 0.277281, 0.864455,
		0.455303, -0.759569, 0.464494,
		0.785408, 0.588363, 0.192259,
		34.130722, 42.686562, 52.412560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892979, 41.547688, 52.131088>,  <33.580936, 42.274708, 52.277977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892979, 41.547688, 52.131088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997757, 41.209488, 52.317215>,  <34.060623, 41.006569, 52.428890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997757, 41.209488, 52.317215>,  <33.892979, 41.547688, 52.131088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997757, 41.209488, 52.317215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628615, 0.515322, 0.582483,
		-0.732276, 0.139928, 0.666477,
		0.261945, -0.845496, 0.465319,
		34.076340, 40.955841, 52.456810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815796, 41.548286, 52.968060>,  <33.892979, 41.547688, 52.131088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815796, 41.548286, 52.968060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103882, 41.301090, 52.841957>,  <34.276733, 41.152775, 52.766296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103882, 41.301090, 52.841957>,  <33.815796, 41.548286, 52.968060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103882, 41.301090, 52.841957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652106, 0.447976, 0.611617,
		-0.236746, -0.646073, 0.725631,
		0.720215, -0.617987, -0.315252,
		34.319946, 41.115696, 52.747383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222363, 41.264961, 53.577541>,  <33.815796, 41.548286, 52.968060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222363, 41.264961, 53.577541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452881, 41.276234, 53.250839>,  <34.591194, 41.282997, 53.054817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452881, 41.276234, 53.250839>,  <34.222363, 41.264961, 53.577541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452881, 41.276234, 53.250839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704867, 0.488618, 0.514213,
		0.413573, -0.872043, 0.261724,
		0.576298, 0.028183, -0.816753,
		34.625771, 41.284687, 53.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864643, 41.734318, 53.953873>,  <34.222363, 41.264961, 53.577541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864643, 41.734318, 53.953873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925236, 41.523651, 54.288460>,  <33.961590, 41.397251, 54.489212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925236, 41.523651, 54.288460>,  <33.864643, 41.734318, 53.953873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925236, 41.523651, 54.288460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593146, -0.628508, -0.503146,
		0.790716, 0.572364, 0.217182,
		0.151482, -0.526666, 0.836467,
		33.970680, 41.365650, 54.539398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514721, 41.706764, 54.275452>,  <33.864643, 41.734318, 53.953873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514721, 41.706764, 54.275452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364773, 41.350063, 54.376839>,  <34.274803, 41.136044, 54.437672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364773, 41.350063, 54.376839>,  <34.514721, 41.706764, 54.275452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364773, 41.350063, 54.376839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501370, -0.424980, -0.753671,
		0.779807, -0.155449, 0.606412,
		-0.374871, -0.891755, 0.253465,
		34.252312, 41.082539, 54.452877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901569, 41.352169, 53.825520>,  <34.514721, 41.706764, 54.275452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901569, 41.352169, 53.825520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678631, 41.075687, 54.009518>,  <34.544868, 40.909798, 54.119915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678631, 41.075687, 54.009518>,  <34.901569, 41.352169, 53.825520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678631, 41.075687, 54.009518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201032, -0.649883, -0.732966,
		0.805574, -0.316044, 0.501166,
		-0.557348, -0.691208, 0.459993,
		34.511425, 40.868324, 54.147514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181236, 40.664406, 53.867638>,  <34.901569, 41.352169, 53.825520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181236, 40.664406, 53.867638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782845, 40.636566, 53.845055>,  <34.543812, 40.619862, 53.831505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782845, 40.636566, 53.845055>,  <35.181236, 40.664406, 53.867638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782845, 40.636566, 53.845055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089578, -0.792597, -0.603131,
		-0.002767, -0.605761, 0.795642,
		-0.995976, -0.069603, -0.056457,
		34.484051, 40.615685, 53.828117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050407, 39.986359, 53.970833>,  <35.181236, 40.664406, 53.867638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050407, 39.986359, 53.970833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722900, 40.117840, 53.782543>,  <34.526398, 40.196728, 53.669571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722900, 40.117840, 53.782543>,  <35.050407, 39.986359, 53.970833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722900, 40.117840, 53.782543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073933, -0.873430, -0.481305,
		-0.569350, -0.359273, 0.739435,
		-0.818764, 0.328699, -0.470725,
		34.477272, 40.216450, 53.641327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421635, 39.482285, 53.906982>,  <35.050407, 39.986359, 53.970833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421635, 39.482285, 53.906982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394169, 39.724525, 53.589863>,  <34.377689, 39.869869, 53.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394169, 39.724525, 53.589863>,  <34.421635, 39.482285, 53.906982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394169, 39.724525, 53.589863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049266, -0.795761, -0.603604,
		-0.996422, -0.002390, 0.084479,
		-0.068668, 0.605606, -0.792796,
		34.373569, 39.906208, 53.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316109, 38.918289, 53.513279>,  <34.421635, 39.482285, 53.906982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316109, 38.918289, 53.513279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384224, 39.243076, 53.289955>,  <34.425095, 39.437950, 53.155960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384224, 39.243076, 53.289955>,  <34.316109, 38.918289, 53.513279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384224, 39.243076, 53.289955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, -0.558925, -0.827776,
		-0.984181, 0.168253, -0.055493,
		0.170293, 0.811969, -0.558307,
		34.435310, 39.486668, 53.122463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879101, 38.933598, 52.861099>,  <34.316109, 38.918289, 53.513279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879101, 38.933598, 52.861099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206974, 39.148613, 52.781937>,  <34.403698, 39.277622, 52.734440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206974, 39.148613, 52.781937>,  <33.879101, 38.933598, 52.861099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206974, 39.148613, 52.781937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008685, -0.333797, -0.942605,
		-0.572752, 0.774356, -0.268939,
		0.819683, 0.537543, -0.197908,
		34.452877, 39.309875, 52.722565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761597, 39.273178, 52.280895>,  <33.879101, 38.933598, 52.861099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761597, 39.273178, 52.280895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159874, 39.299232, 52.307304>,  <34.398838, 39.314865, 52.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159874, 39.299232, 52.307304>,  <33.761597, 39.273178, 52.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159874, 39.299232, 52.307304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070744, -0.072994, -0.994820,
		-0.059981, 0.995203, -0.077288,
		0.995689, 0.065138, 0.066027,
		34.458580, 39.318775, 52.327114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871880, 39.602692, 51.674873>,  <33.761597, 39.273178, 52.280895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871880, 39.602692, 51.674873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226490, 39.449772, 51.779121>,  <34.439255, 39.358021, 51.841671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226490, 39.449772, 51.779121>,  <33.871880, 39.602692, 51.674873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226490, 39.449772, 51.779121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284807, 0.006979, -0.958559,
		0.364642, 0.924010, 0.115070,
		0.886522, -0.382304, 0.260620,
		34.492447, 39.335079, 51.857307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348415, 39.903961, 51.216572>,  <33.871880, 39.602692, 51.674873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348415, 39.903961, 51.216572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531876, 39.575680, 51.352852>,  <34.641953, 39.378712, 51.434620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531876, 39.575680, 51.352852>,  <34.348415, 39.903961, 51.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531876, 39.575680, 51.352852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269546, -0.236847, -0.933407,
		0.846747, 0.519945, 0.112587,
		0.458655, -0.820707, 0.340699,
		34.669472, 39.329468, 51.455063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059540, 39.828548, 50.928947>,  <34.348415, 39.903961, 51.216572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059540, 39.828548, 50.928947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938808, 39.458836, 51.022408>,  <34.866367, 39.237007, 51.078484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938808, 39.458836, 51.022408>,  <35.059540, 39.828548, 50.928947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938808, 39.458836, 51.022408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271955, -0.318375, -0.908118,
		0.913750, -0.210555, 0.347459,
		-0.301831, -0.924285, 0.233654,
		34.848259, 39.181549, 51.092503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601189, 39.435104, 50.775333>,  <35.059540, 39.828548, 50.928947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601189, 39.435104, 50.775333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285748, 39.189564, 50.789696>,  <35.096481, 39.042240, 50.798313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.285748, 39.189564, 50.789696>,  <35.601189, 39.435104, 50.775333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285748, 39.189564, 50.789696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244804, -0.366991, -0.897434,
		0.564069, -0.698931, 0.439685,
		-0.788605, -0.613851, 0.035907,
		35.049168, 39.005409, 50.800468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868282, 38.765179, 50.603275>,  <35.601189, 39.435104, 50.775333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868282, 38.765179, 50.603275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472820, 38.746674, 50.546101>,  <35.235542, 38.735569, 50.511795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472820, 38.746674, 50.546101>,  <35.868282, 38.765179, 50.603275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472820, 38.746674, 50.546101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149926, -0.364726, -0.918965,
		-0.009617, -0.929965, 0.367522,
		-0.988651, -0.046264, -0.142934,
		35.176224, 38.732796, 50.503220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752522, 38.167759, 50.134319>,  <35.868282, 38.765179, 50.603275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752522, 38.167759, 50.134319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397865, 38.350677, 50.106750>,  <35.185070, 38.460426, 50.090210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397865, 38.350677, 50.106750>,  <35.752522, 38.167759, 50.134319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397865, 38.350677, 50.106750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082659, -0.303346, -0.949289,
		-0.455013, -0.835980, 0.306758,
		-0.886640, 0.457295, -0.068925,
		35.131874, 38.487865, 50.086071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429394, 37.687160, 49.730469>,  <35.752522, 38.167759, 50.134319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429394, 37.687160, 49.730469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212502, 38.022160, 49.703392>,  <35.082367, 38.223160, 49.687145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212502, 38.022160, 49.703392>,  <35.429394, 37.687160, 49.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212502, 38.022160, 49.703392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036223, -0.103788, -0.993940,
		-0.839449, -0.536491, 0.086613,
		-0.542229, 0.837499, -0.067692,
		35.049831, 38.273411, 49.683086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964005, 37.516693, 49.202389>,  <35.429394, 37.687160, 49.730469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964005, 37.516693, 49.202389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927166, 37.914989, 49.204315>,  <34.905064, 38.153965, 49.205471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927166, 37.914989, 49.204315>,  <34.964005, 37.516693, 49.202389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927166, 37.914989, 49.204315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065035, 0.010837, -0.997824,
		-0.993624, -0.091579, -0.065755,
		-0.092092, 0.995739, 0.004812,
		34.899540, 38.213711, 49.205757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539310, 37.650074, 48.611706>,  <34.964005, 37.516693, 49.202389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539310, 37.650074, 48.611706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724831, 37.992088, 48.704487>,  <34.836143, 38.197296, 48.760155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724831, 37.992088, 48.704487>,  <34.539310, 37.650074, 48.611706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724831, 37.992088, 48.704487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134898, 0.190604, -0.972354,
		-0.875607, 0.482272, -0.026940,
		0.463805, 0.855034, 0.231952,
		34.863972, 38.248600, 48.774071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280483, 38.070198, 48.124485>,  <34.539310, 37.650074, 48.611706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280483, 38.070198, 48.124485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613987, 38.252766, 48.248756>,  <34.814091, 38.362305, 48.323318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613987, 38.252766, 48.248756>,  <34.280483, 38.070198, 48.124485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613987, 38.252766, 48.248756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268705, 0.156134, -0.950484,
		-0.482326, 0.875959, 0.007537,
		0.833762, 0.456418, 0.310682,
		34.864117, 38.389690, 48.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337933, 38.710678, 47.802952>,  <34.280483, 38.070198, 48.124485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337933, 38.710678, 47.802952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704464, 38.556900, 47.847755>,  <34.924381, 38.464634, 47.874638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704464, 38.556900, 47.847755>,  <34.337933, 38.710678, 47.802952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704464, 38.556900, 47.847755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149096, 0.067969, -0.986484,
		0.371636, 0.920642, 0.119601,
		0.916328, -0.384445, 0.112005,
		34.979362, 38.441566, 47.881355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618050, 38.958973, 47.220924>,  <34.337933, 38.710678, 47.802952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618050, 38.958973, 47.220924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884315, 38.706032, 47.379425>,  <35.044075, 38.554268, 47.474525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884315, 38.706032, 47.379425>,  <34.618050, 38.958973, 47.220924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884315, 38.706032, 47.379425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428228, -0.111183, -0.896805,
		0.611151, 0.766663, 0.196779,
		0.665669, -0.632350, 0.396256,
		35.084015, 38.516327, 47.498302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355595, 39.219425, 46.968224>,  <34.618050, 38.958973, 47.220924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355595, 39.219425, 46.968224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329304, 38.828892, 47.050640>,  <35.313530, 38.594570, 47.100090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329304, 38.828892, 47.050640>,  <35.355595, 39.219425, 46.968224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329304, 38.828892, 47.050640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204234, -0.215281, -0.954957,
		0.976713, -0.020688, 0.213551,
		-0.065730, -0.976333, 0.206042,
		35.309586, 38.535992, 47.112453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950504, 38.919815, 46.716763>,  <35.355595, 39.219425, 46.968224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950504, 38.919815, 46.716763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687908, 38.618725, 46.736488>,  <35.530350, 38.438072, 46.748325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687908, 38.618725, 46.736488>,  <35.950504, 38.919815, 46.716763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687908, 38.618725, 46.736488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251147, -0.279749, -0.926642,
		0.711302, -0.595942, 0.372696,
		-0.656487, -0.752724, 0.049317,
		35.490963, 38.392906, 46.751282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298855, 38.247261, 46.496384>,  <35.950504, 38.919815, 46.716763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298855, 38.247261, 46.496384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907593, 38.211510, 46.421314>,  <35.672836, 38.190060, 46.376274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907593, 38.211510, 46.421314>,  <36.298855, 38.247261, 46.496384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907593, 38.211510, 46.421314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207609, -0.375149, -0.903417,
		0.010343, -0.922646, 0.385510,
		-0.978157, -0.089379, -0.187669,
		35.614147, 38.184696, 46.365013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288570, 37.832588, 46.037674>,  <36.298855, 38.247261, 46.496384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288570, 37.832588, 46.037674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897522, 37.912663, 46.011795>,  <35.662891, 37.960705, 45.996269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897522, 37.912663, 46.011795>,  <36.288570, 37.832588, 46.037674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897522, 37.912663, 46.011795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042297, -0.488284, -0.871659,
		-0.206082, -0.849415, 0.485823,
		-0.977620, 0.200183, -0.064699,
		35.604237, 37.972717, 45.992386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976364, 37.167404, 45.873505>,  <36.288570, 37.832588, 46.037674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976364, 37.167404, 45.873505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748425, 37.471882, 45.749660>,  <35.611660, 37.654568, 45.675354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748425, 37.471882, 45.749660>,  <35.976364, 37.167404, 45.873505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748425, 37.471882, 45.749660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050641, -0.343525, -0.937777,
		-0.820191, -0.550066, 0.157208,
		-0.569844, 0.761195, -0.309611,
		35.577473, 37.700241, 45.656776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460190, 36.898994, 45.449341>,  <35.976364, 37.167404, 45.873505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460190, 36.898994, 45.449341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428684, 37.283363, 45.343197>,  <35.409782, 37.513985, 45.279510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428684, 37.283363, 45.343197>,  <35.460190, 36.898994, 45.449341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428684, 37.283363, 45.343197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059927, -0.270271, -0.960917,
		-0.995090, -0.059784, 0.078873,
		-0.078765, 0.960926, -0.265361,
		35.405056, 37.571640, 45.263588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765629, 37.062336, 45.102566>,  <35.460190, 36.898994, 45.449341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765629, 37.062336, 45.102566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043221, 37.318371, 44.970695>,  <35.209774, 37.471992, 44.891575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043221, 37.318371, 44.970695>,  <34.765629, 37.062336, 45.102566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043221, 37.318371, 44.970695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249555, -0.215662, -0.944040,
		-0.675365, 0.737415, 0.010071,
		0.693978, 0.640085, -0.329676,
		35.251415, 37.510395, 44.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423161, 37.439671, 44.468166>,  <34.765629, 37.062336, 45.102566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423161, 37.439671, 44.468166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819267, 37.492790, 44.451508>,  <35.056931, 37.524662, 44.441513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819267, 37.492790, 44.451508>,  <34.423161, 37.439671, 44.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819267, 37.492790, 44.451508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030649, -0.083825, -0.996009,
		-0.135758, 0.987592, -0.078939,
		0.990268, 0.132797, -0.041649,
		35.116348, 37.532631, 44.439014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450779, 37.961971, 44.038300>,  <34.423161, 37.439671, 44.468166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450779, 37.961971, 44.038300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810551, 37.788193, 44.019222>,  <35.026413, 37.683926, 44.007774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810551, 37.788193, 44.019222>,  <34.450779, 37.961971, 44.038300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810551, 37.788193, 44.019222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073708, -0.043211, -0.996343,
		0.430797, 0.899661, -0.070887,
		0.899434, -0.434446, -0.047697,
		35.080379, 37.657860, 44.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852253, 38.356030, 43.623634>,  <34.450779, 37.961971, 44.038300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852253, 38.356030, 43.623634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018620, 37.992451, 43.635159>,  <35.118439, 37.774303, 43.642075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018620, 37.992451, 43.635159>,  <34.852253, 38.356030, 43.623634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018620, 37.992451, 43.635159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185895, 0.053966, -0.981086,
		0.890198, 0.413410, 0.191414,
		0.415921, -0.908944, 0.028811,
		35.143394, 37.719769, 43.643803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334328, 38.383396, 43.271797>,  <34.852253, 38.356030, 43.623634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334328, 38.383396, 43.271797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272697, 37.989143, 43.244099>,  <35.235718, 37.752594, 43.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272697, 37.989143, 43.244099>,  <35.334328, 38.383396, 43.271797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272697, 37.989143, 43.244099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227941, 0.032737, -0.973124,
		0.961407, -0.165721, 0.219621,
		-0.154077, -0.985629, -0.069248,
		35.226475, 37.693455, 43.223324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016590, 38.051529, 42.892204>,  <35.334328, 38.383396, 43.271797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016590, 38.051529, 42.892204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709610, 37.796291, 42.867378>,  <35.525421, 37.643147, 42.852482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709610, 37.796291, 42.867378>,  <36.016590, 38.051529, 42.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709610, 37.796291, 42.867378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192721, -0.137278, -0.971604,
		0.611457, -0.757619, 0.228328,
		-0.767450, -0.638098, -0.062069,
		35.479374, 37.604862, 42.848759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147907, 37.741547, 42.284370>,  <36.016590, 38.051529, 42.892204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147907, 37.741547, 42.284370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769032, 37.621574, 42.329762>,  <35.541706, 37.549591, 42.356995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769032, 37.621574, 42.329762>,  <36.147907, 37.741547, 42.284370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769032, 37.621574, 42.329762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045139, -0.225636, -0.973165,
		0.317484, -0.926893, 0.200182,
		-0.947189, -0.299929, 0.113475,
		35.484875, 37.531597, 42.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085480, 37.136238, 42.045761>,  <36.147907, 37.741547, 42.284370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085480, 37.136238, 42.045761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700970, 37.245243, 42.029312>,  <35.470264, 37.310646, 42.019444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700970, 37.245243, 42.029312>,  <36.085480, 37.136238, 42.045761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700970, 37.245243, 42.029312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075852, -0.405057, -0.911140,
		-0.264955, -0.872734, 0.410041,
		-0.961273, 0.272514, -0.041124,
		35.412586, 37.326996, 42.016975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722168, 36.488342, 41.947330>,  <36.085480, 37.136238, 42.045761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722168, 36.488342, 41.947330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531197, 36.814835, 41.817200>,  <35.416615, 37.010731, 41.739120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531197, 36.814835, 41.817200>,  <35.722168, 36.488342, 41.947330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531197, 36.814835, 41.817200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102308, -0.419369, -0.902032,
		-0.872694, -0.397372, 0.283725,
		-0.477428, 0.816226, -0.325327,
		35.387970, 37.059704, 41.719601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199009, 36.226654, 41.701542>,  <35.722168, 36.488342, 41.947330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199009, 36.226654, 41.701542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190838, 36.590183, 41.534866>,  <35.185936, 36.808300, 41.434860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190838, 36.590183, 41.534866>,  <35.199009, 36.226654, 41.701542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190838, 36.590183, 41.534866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331452, -0.399359, -0.854782,
		-0.943251, 0.120649, 0.309389,
		-0.020429, 0.908821, -0.416685,
		35.184708, 36.862831, 41.409863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537315, 36.263401, 41.291763>,  <35.199009, 36.226654, 41.701542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537315, 36.263401, 41.291763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788864, 36.540829, 41.151203>,  <34.939793, 36.707287, 41.066868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788864, 36.540829, 41.151203>,  <34.537315, 36.263401, 41.291763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788864, 36.540829, 41.151203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159865, -0.326955, -0.931420,
		-0.760899, 0.641918, -0.094734,
		0.628869, 0.693572, -0.351400,
		34.977524, 36.748901, 41.045784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200066, 36.539215, 40.627384>,  <34.537315, 36.263401, 41.291763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200066, 36.539215, 40.627384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562241, 36.704708, 40.589401>,  <34.779545, 36.804005, 40.566612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562241, 36.704708, 40.589401>,  <34.200066, 36.539215, 40.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562241, 36.704708, 40.589401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077847, -0.058075, -0.995272,
		-0.417287, 0.908546, -0.020376,
		0.905434, 0.413728, -0.094961,
		34.833870, 36.828827, 40.560913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154465, 36.890312, 40.036861>,  <34.200066, 36.539215, 40.627384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154465, 36.890312, 40.036861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546516, 36.839485, 40.097790>,  <34.781746, 36.808990, 40.134346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546516, 36.839485, 40.097790>,  <34.154465, 36.890312, 40.036861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546516, 36.839485, 40.097790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100617, -0.343327, -0.933811,
		0.170952, 0.930581, -0.323719,
		0.980128, -0.127065, 0.152325,
		34.840553, 36.801365, 40.143486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417377, 37.141685, 39.496082>,  <34.154465, 36.890312, 40.036861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417377, 37.141685, 39.496082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720291, 36.904442, 39.605434>,  <34.902039, 36.762096, 39.671047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720291, 36.904442, 39.605434>,  <34.417377, 37.141685, 39.496082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720291, 36.904442, 39.605434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100755, -0.307486, -0.946204,
		0.645263, 0.744093, -0.173096,
		0.757288, -0.593109, 0.273380,
		34.947479, 36.726509, 39.687447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042751, 37.247589, 39.089375>,  <34.417377, 37.141685, 39.496082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042751, 37.247589, 39.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046917, 36.877949, 39.242180>,  <35.049416, 36.656166, 39.333862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046917, 36.877949, 39.242180>,  <35.042751, 37.247589, 39.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046917, 36.877949, 39.242180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269803, -0.365266, -0.890947,
		0.962859, 0.112348, 0.245520,
		0.010416, -0.924099, 0.382012,
		35.050041, 36.600719, 39.356785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293015, 36.850651, 38.621811>,  <35.042751, 37.247589, 39.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293015, 36.850651, 38.621811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215366, 36.512489, 38.820850>,  <35.168777, 36.309593, 38.940273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215366, 36.512489, 38.820850>,  <35.293015, 36.850651, 38.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215366, 36.512489, 38.820850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326586, -0.534005, -0.779859,
		0.925018, 0.011120, 0.379761,
		-0.194122, -0.845408, 0.497596,
		35.157131, 36.258865, 38.970131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896988, 36.391117, 38.651146>,  <35.293015, 36.850651, 38.621811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896988, 36.391117, 38.651146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563080, 36.172855, 38.680595>,  <35.362736, 36.041897, 38.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563080, 36.172855, 38.680595>,  <35.896988, 36.391117, 38.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563080, 36.172855, 38.680595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260536, -0.509249, -0.820236,
		0.485056, -0.665528, 0.567268,
		-0.834770, -0.545654, 0.073620,
		35.312649, 36.009159, 38.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609764, 36.234360, 38.699669>,  <35.896988, 36.391117, 38.651146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609764, 36.234360, 38.699669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890926, 35.986073, 38.560741>,  <37.059624, 35.837101, 38.477386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890926, 35.986073, 38.560741>,  <36.609764, 36.234360, 38.699669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890926, 35.986073, 38.560741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468768, 0.037014, 0.882546,
		-0.534957, -0.783159, 0.316990,
		0.702907, -0.620719, -0.347319,
		37.101799, 35.799858, 38.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648666, 35.584984, 39.150131>,  <36.609764, 36.234360, 38.699669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648666, 35.584984, 39.150131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999401, 35.692833, 38.990906>,  <37.209843, 35.757542, 38.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999401, 35.692833, 38.990906>,  <36.648666, 35.584984, 39.150131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999401, 35.692833, 38.990906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420419, -0.028341, 0.906887,
		0.233241, -0.962548, -0.138207,
		0.876839, 0.269628, -0.398063,
		37.262451, 35.773720, 38.871487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184669, 35.205173, 39.478584>,  <36.648666, 35.584984, 39.150131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184669, 35.205173, 39.478584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391891, 35.521568, 39.348373>,  <37.516224, 35.711403, 39.270248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391891, 35.521568, 39.348373>,  <37.184669, 35.205173, 39.478584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391891, 35.521568, 39.348373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307429, 0.182956, 0.933817,
		0.798192, -0.583840, -0.148391,
		0.518051, 0.790985, -0.325523,
		37.547306, 35.758865, 39.250717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787643, 35.110008, 39.908672>,  <37.184669, 35.205173, 39.478584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787643, 35.110008, 39.908672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758945, 35.475006, 39.747574>,  <37.741726, 35.694004, 39.650913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758945, 35.475006, 39.747574>,  <37.787643, 35.110008, 39.908672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758945, 35.475006, 39.747574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300216, 0.404822, 0.863707,
		0.951169, -0.058942, -0.302990,
		-0.071748, 0.912494, -0.402749,
		37.737419, 35.748753, 39.626747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397652, 35.394073, 40.015499>,  <37.787643, 35.110008, 39.908672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397652, 35.394073, 40.015499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119823, 35.680122, 39.984085>,  <37.953125, 35.851749, 39.965237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119823, 35.680122, 39.984085>,  <38.397652, 35.394073, 40.015499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119823, 35.680122, 39.984085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348292, 0.429776, 0.833058,
		0.629490, 0.551267, -0.547583,
		-0.694575, 0.715120, -0.078538,
		37.911449, 35.894657, 39.960526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703350, 35.994785, 40.148003>,  <38.397652, 35.394073, 40.015499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703350, 35.994785, 40.148003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328884, 36.071510, 40.265850>,  <38.104202, 36.117546, 40.336559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328884, 36.071510, 40.265850>,  <38.703350, 35.994785, 40.148003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328884, 36.071510, 40.265850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347021, 0.370035, 0.861772,
		0.056278, 0.909001, -0.412976,
		-0.936167, 0.191810, 0.294618,
		38.048035, 36.129055, 40.354237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882038, 36.472595, 40.551987>,  <38.703350, 35.994785, 40.148003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882038, 36.472595, 40.551987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491222, 36.419838, 40.618916>,  <38.256733, 36.388184, 40.659073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491222, 36.419838, 40.618916>,  <38.882038, 36.472595, 40.551987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491222, 36.419838, 40.618916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092073, 0.446835, 0.889866,
		-0.192134, 0.884840, -0.424432,
		-0.977040, -0.131895, 0.167322,
		38.198109, 36.380268, 40.669113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633423, 37.110008, 40.781254>,  <38.882038, 36.472595, 40.551987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633423, 37.110008, 40.781254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378101, 36.835392, 40.920525>,  <38.224911, 36.670620, 41.004089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378101, 36.835392, 40.920525>,  <38.633423, 37.110008, 40.781254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378101, 36.835392, 40.920525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153000, 0.330134, 0.931452,
		-0.754428, 0.647819, -0.105684,
		-0.638302, -0.686544, 0.348179,
		38.186611, 36.629429, 41.024979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210701, 37.476177, 41.252682>,  <38.633423, 37.110008, 40.781254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210701, 37.476177, 41.252682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164909, 37.088223, 41.338680>,  <38.137436, 36.855450, 41.390278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164909, 37.088223, 41.338680>,  <38.210701, 37.476177, 41.252682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164909, 37.088223, 41.338680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070694, 0.223825, 0.972062,
		-0.990907, 0.096079, -0.094187,
		-0.114476, -0.969882, 0.214998,
		38.130566, 36.797256, 41.403179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747852, 37.590641, 41.714676>,  <38.210701, 37.476177, 41.252682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747852, 37.590641, 41.714676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895115, 37.222393, 41.766708>,  <37.983475, 37.001446, 41.797928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895115, 37.222393, 41.766708>,  <37.747852, 37.590641, 41.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895115, 37.222393, 41.766708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089998, 0.174536, 0.980529,
		-0.925397, -0.349284, 0.147111,
		0.368160, -0.920618, 0.130080,
		38.005562, 36.946209, 41.805733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520859, 37.254448, 42.393528>,  <37.747852, 37.590641, 41.714676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520859, 37.254448, 42.393528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839428, 37.033573, 42.294903>,  <38.030571, 36.901047, 42.235725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839428, 37.033573, 42.294903>,  <37.520859, 37.254448, 42.393528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839428, 37.033573, 42.294903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373864, 0.129117, 0.918452,
		-0.475324, -0.823660, 0.309275,
		0.796425, -0.552189, -0.246565,
		38.078354, 36.867916, 42.220932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471725, 36.727592, 42.913994>,  <37.520859, 37.254448, 42.393528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471725, 36.727592, 42.913994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848171, 36.743793, 42.779736>,  <38.074039, 36.753513, 42.699181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848171, 36.743793, 42.779736>,  <37.471725, 36.727592, 42.913994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848171, 36.743793, 42.779736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332475, 0.069231, 0.940567,
		0.061305, -0.996779, 0.051698,
		0.941117, 0.040473, -0.335649,
		38.130505, 36.755943, 42.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867054, 36.289196, 43.267551>,  <37.471725, 36.727592, 42.913994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867054, 36.289196, 43.267551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142242, 36.543533, 43.127613>,  <38.307358, 36.696136, 43.043652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142242, 36.543533, 43.127613>,  <37.867054, 36.289196, 43.267551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142242, 36.543533, 43.127613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385232, 0.088582, 0.918558,
		0.615050, -0.766718, -0.184005,
		0.687975, 0.635844, -0.349846,
		38.348637, 36.734287, 43.022659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514362, 36.113388, 43.649727>,  <37.867054, 36.289196, 43.267551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514362, 36.113388, 43.649727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553341, 36.484737, 43.506264>,  <38.576729, 36.707546, 43.420185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553341, 36.484737, 43.506264>,  <38.514362, 36.113388, 43.649727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553341, 36.484737, 43.506264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170527, 0.339466, 0.925031,
		0.980523, -0.151300, -0.125233,
		0.097444, 0.928370, -0.358655,
		38.582573, 36.763248, 43.398666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096539, 36.368717, 44.020767>,  <38.514362, 36.113388, 43.649727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096539, 36.368717, 44.020767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875500, 36.682205, 43.907333>,  <38.742874, 36.870296, 43.839272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875500, 36.682205, 43.907333>,  <39.096539, 36.368717, 44.020767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875500, 36.682205, 43.907333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140580, 0.423032, 0.895143,
		0.821506, 0.454788, -0.343942,
		-0.552599, 0.783716, -0.283589,
		38.709721, 36.917320, 43.822258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532429, 36.975159, 44.113026>,  <39.096539, 36.368717, 44.020767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532429, 36.975159, 44.113026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142849, 37.064709, 44.127510>,  <38.909103, 37.118439, 44.136200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142849, 37.064709, 44.127510>,  <39.532429, 36.975159, 44.113026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142849, 37.064709, 44.127510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112524, 0.338426, 0.934241,
		0.196898, 0.913974, -0.354799,
		-0.973945, 0.223873, 0.036209,
		38.850666, 37.131870, 44.138374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591370, 37.379845, 44.661148>,  <39.532429, 36.975159, 44.113026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591370, 37.379845, 44.661148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197502, 37.356701, 44.595318>,  <38.961182, 37.342815, 44.555820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197502, 37.356701, 44.595318>,  <39.591370, 37.379845, 44.661148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197502, 37.356701, 44.595318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174213, 0.276782, 0.945009,
		-0.009124, 0.959189, -0.282617,
		-0.984666, -0.057858, -0.164578,
		38.902103, 37.339344, 44.545944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271324, 38.026905, 45.003738>,  <39.591370, 37.379845, 44.661148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271324, 38.026905, 45.003738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995693, 37.739902, 44.963051>,  <38.830315, 37.567699, 44.938637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995693, 37.739902, 44.963051>,  <39.271324, 38.026905, 45.003738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995693, 37.739902, 44.963051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287695, 0.142020, 0.947133,
		-0.665132, 0.681915, -0.304287,
		-0.689080, -0.717511, -0.101722,
		38.788971, 37.524651, 44.932533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484066, 38.337906, 45.075470>,  <39.271324, 38.026905, 45.003738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484066, 38.337906, 45.075470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489986, 37.947563, 45.162624>,  <38.493538, 37.713356, 45.214916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489986, 37.947563, 45.162624>,  <38.484066, 38.337906, 45.075470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489986, 37.947563, 45.162624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422543, 0.191395, 0.885904,
		-0.906222, -0.105178, -0.409511,
		0.014799, -0.975861, 0.217889,
		38.494427, 37.654804, 45.227989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907753, 38.248905, 45.410530>,  <38.484066, 38.337906, 45.075470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907753, 38.248905, 45.410530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097958, 37.908951, 45.501381>,  <38.212078, 37.704979, 45.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097958, 37.908951, 45.501381>,  <37.907753, 38.248905, 45.410530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097958, 37.908951, 45.501381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465599, -0.024079, 0.884668,
		-0.746399, -0.526415, -0.407156,
		0.475507, -0.849887, 0.227126,
		38.240608, 37.653984, 45.569519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367954, 37.888802, 45.625446>,  <37.907753, 38.248905, 45.410530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367954, 37.888802, 45.625446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686047, 37.715870, 45.795479>,  <37.876904, 37.612110, 45.897499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686047, 37.715870, 45.795479>,  <37.367954, 37.888802, 45.625446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686047, 37.715870, 45.795479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414217, 0.124585, 0.901611,
		-0.442755, -0.893066, -0.080005,
		0.795231, -0.432332, 0.425084,
		37.924618, 37.586170, 45.923004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077271, 37.642021, 46.157497>,  <37.367954, 37.888802, 45.625446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077271, 37.642021, 46.157497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461899, 37.616879, 46.264404>,  <37.692677, 37.601791, 46.328548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461899, 37.616879, 46.264404>,  <37.077271, 37.642021, 46.157497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461899, 37.616879, 46.264404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254887, 0.157470, 0.954063,
		-0.102057, -0.985521, 0.135397,
		0.961570, -0.062857, 0.267268,
		37.750370, 37.598022, 46.344585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091370, 37.298325, 46.775585>,  <37.077271, 37.642021, 46.157497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091370, 37.298325, 46.775585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433075, 37.506260, 46.775848>,  <37.638100, 37.631020, 46.776005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433075, 37.506260, 46.775848>,  <37.091370, 37.298325, 46.775585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433075, 37.506260, 46.775848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203690, 0.333572, 0.920457,
		0.478269, -0.786447, 0.390844,
		0.854266, 0.519837, 0.000654,
		37.689354, 37.662212, 46.776043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560581, 37.092396, 47.352760>,  <37.091370, 37.298325, 46.775585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560581, 37.092396, 47.352760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643433, 37.469120, 47.246868>,  <37.693146, 37.695156, 47.183334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643433, 37.469120, 47.246868>,  <37.560581, 37.092396, 47.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643433, 37.469120, 47.246868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207422, 0.306724, 0.928922,
		0.956072, -0.137498, 0.258885,
		0.207131, 0.941815, -0.264729,
		37.705570, 37.751663, 47.167450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835590, 37.355232, 48.071785>,  <37.560581, 37.092396, 47.352760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835590, 37.355232, 48.071785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775230, 37.684116, 47.852257>,  <37.739014, 37.881447, 47.720539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775230, 37.684116, 47.852257>,  <37.835590, 37.355232, 48.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775230, 37.684116, 47.852257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179707, 0.523111, 0.833103,
		0.972077, 0.224345, 0.068817,
		-0.150904, 0.822207, -0.548820,
		37.729958, 37.930779, 47.687611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250759, 37.953098, 48.287292>,  <37.835590, 37.355232, 48.071785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250759, 37.953098, 48.287292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947456, 38.124962, 48.091152>,  <37.765476, 38.228081, 47.973469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947456, 38.124962, 48.091152>,  <38.250759, 37.953098, 48.287292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947456, 38.124962, 48.091152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001578, 0.750910, 0.660403,
		0.651957, 0.501527, -0.568703,
		-0.758254, 0.429657, -0.490352,
		37.719978, 38.253860, 47.944046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389069, 38.614674, 48.368519>,  <38.250759, 37.953098, 48.287292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389069, 38.614674, 48.368519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999844, 38.618202, 48.276375>,  <37.766308, 38.620319, 48.221088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999844, 38.618202, 48.276375>,  <38.389069, 38.614674, 48.368519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999844, 38.618202, 48.276375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131594, 0.799207, 0.586473,
		0.189281, 0.600990, -0.776520,
		-0.973065, 0.008823, -0.230362,
		37.707924, 38.620850, 48.207268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204136, 39.371906, 48.276913>,  <38.389069, 38.614674, 48.368519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204136, 39.371906, 48.276913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861309, 39.179386, 48.350437>,  <37.655613, 39.063873, 48.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861309, 39.179386, 48.350437>,  <38.204136, 39.371906, 48.276913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861309, 39.179386, 48.350437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316882, 0.773764, 0.548521,
		-0.406228, 0.411873, -0.815683,
		-0.857068, -0.481300, 0.183809,
		37.604187, 39.034996, 48.405579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724190, 39.921440, 48.334789>,  <38.204136, 39.371906, 48.276913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724190, 39.921440, 48.334789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555176, 39.610687, 48.521515>,  <37.453766, 39.424236, 48.633553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555176, 39.610687, 48.521515>,  <37.724190, 39.921440, 48.334789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555176, 39.610687, 48.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399893, 0.622009, 0.673195,
		-0.813357, 0.097772, -0.573490,
		-0.422535, -0.776882, 0.466817,
		37.428413, 39.377625, 48.661560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009598, 40.190605, 48.587585>,  <37.724190, 39.921440, 48.334789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009598, 40.190605, 48.587585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118217, 39.877216, 48.811169>,  <37.183388, 39.689182, 48.945320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118217, 39.877216, 48.811169>,  <37.009598, 40.190605, 48.587585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118217, 39.877216, 48.811169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389861, 0.441453, 0.808163,
		-0.879926, -0.437371, -0.185569,
		0.271547, -0.783470, 0.558960,
		37.199680, 39.642174, 48.978855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468399, 40.131039, 49.005104>,  <37.009598, 40.190605, 48.587585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468399, 40.131039, 49.005104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721828, 39.902275, 49.213531>,  <36.873886, 39.765018, 49.338589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721828, 39.902275, 49.213531>,  <36.468399, 40.131039, 49.005104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721828, 39.902275, 49.213531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229893, 0.503905, 0.832604,
		-0.738737, -0.647305, 0.187784,
		0.633574, -0.571905, 0.521064,
		36.911900, 39.730705, 49.369850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132626, 39.894661, 49.532143>,  <36.468399, 40.131039, 49.005104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132626, 39.894661, 49.532143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519131, 39.887436, 49.634914>,  <36.751034, 39.883099, 49.696579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519131, 39.887436, 49.634914>,  <36.132626, 39.894661, 49.532143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519131, 39.887436, 49.634914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236112, 0.336429, 0.911628,
		-0.102907, -0.941535, 0.320813,
		0.966261, -0.018065, 0.256929,
		36.809010, 39.882015, 49.711994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248405, 39.580868, 50.280552>,  <36.132626, 39.894661, 49.532143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248405, 39.580868, 50.280552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590790, 39.775635, 50.210991>,  <36.796219, 39.892494, 50.169254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590790, 39.775635, 50.210991>,  <36.248405, 39.580868, 50.280552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590790, 39.775635, 50.210991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041009, 0.399214, 0.915940,
		0.515415, -0.776876, 0.361679,
		0.855959, 0.486921, -0.173902,
		36.847576, 39.921711, 50.158821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390724, 39.634148, 50.975727>,  <36.248405, 39.580868, 50.280552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390724, 39.634148, 50.975727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604206, 39.912540, 50.783569>,  <36.732296, 40.079575, 50.668274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604206, 39.912540, 50.783569>,  <36.390724, 39.634148, 50.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604206, 39.912540, 50.783569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085994, 0.609776, 0.787894,
		0.841290, -0.379188, 0.385288,
		0.533700, 0.695981, -0.480391,
		36.764317, 40.121334, 50.639454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833942, 39.959763, 51.508987>,  <36.390724, 39.634148, 50.975727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833942, 39.959763, 51.508987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847641, 40.220646, 51.206081>,  <36.855862, 40.377174, 51.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847641, 40.220646, 51.206081>,  <36.833942, 39.959763, 51.508987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847641, 40.220646, 51.206081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004067, 0.757797, 0.652478,
		0.999405, -0.019267, 0.028607,
		0.034249, 0.652206, -0.757268,
		36.857918, 40.416309, 50.978901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332584, 40.460701, 51.684765>,  <36.833942, 39.959763, 51.508987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332584, 40.460701, 51.684765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117393, 40.647018, 51.403732>,  <36.988277, 40.758808, 51.235111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117393, 40.647018, 51.403732>,  <37.332584, 40.460701, 51.684765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117393, 40.647018, 51.403732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069133, 0.806284, 0.587476,
		0.840121, 0.364619, -0.401560,
		-0.537976, 0.465789, -0.702583,
		36.956001, 40.786755, 51.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641014, 41.075912, 51.599739>,  <37.332584, 40.460701, 51.684765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641014, 41.075912, 51.599739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259975, 41.126644, 51.489117>,  <37.031353, 41.157082, 51.422745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259975, 41.126644, 51.489117>,  <37.641014, 41.075912, 51.599739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259975, 41.126644, 51.489117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040945, 0.847269, 0.529583,
		0.301481, 0.515801, -0.801909,
		-0.952592, 0.126826, -0.276555,
		36.974197, 41.164692, 51.406151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549370, 41.825050, 51.484535>,  <37.641014, 41.075912, 51.599739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549370, 41.825050, 51.484535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177746, 41.688412, 51.541325>,  <36.954773, 41.606426, 51.575397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177746, 41.688412, 51.541325>,  <37.549370, 41.825050, 51.484535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177746, 41.688412, 51.541325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235000, 0.841400, 0.486643,
		-0.285697, 0.418756, -0.861986,
		-0.929060, -0.341599, 0.141977,
		36.899029, 41.585934, 51.583920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572556, 42.356728, 51.967243>,  <37.549370, 41.825050, 51.484535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572556, 42.356728, 51.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746243, 42.714607, 51.925350>,  <37.850452, 42.929337, 51.900215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746243, 42.714607, 51.925350>,  <37.572556, 42.356728, 51.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746243, 42.714607, 51.925350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067473, -0.083639, -0.994209,
		-0.898279, 0.438766, 0.024051,
		0.434214, 0.894701, -0.104736,
		37.876507, 42.983017, 51.893929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287849, 42.634842, 51.461838>,  <37.572556, 42.356728, 51.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287849, 42.634842, 51.461838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643303, 42.815964, 51.490948>,  <37.856575, 42.924637, 51.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643303, 42.815964, 51.490948>,  <37.287849, 42.634842, 51.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643303, 42.815964, 51.490948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160623, -0.158664, -0.974180,
		-0.429563, 0.877381, -0.213724,
		0.888637, 0.452800, 0.072771,
		37.909893, 42.951805, 51.512779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359329, 43.114449, 50.919098>,  <37.287849, 42.634842, 51.461838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359329, 43.114449, 50.919098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739185, 43.027912, 51.009766>,  <37.967098, 42.975990, 51.064167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739185, 43.027912, 51.009766>,  <37.359329, 43.114449, 50.919098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739185, 43.027912, 51.009766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182912, -0.204611, -0.961601,
		0.254416, 0.954636, -0.154735,
		0.949640, -0.216344, 0.226670,
		38.024078, 42.963009, 51.077766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796471, 43.483791, 50.418671>,  <37.359329, 43.114449, 50.919098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796471, 43.483791, 50.418671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076557, 43.238503, 50.564903>,  <38.244610, 43.091328, 50.652641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076557, 43.238503, 50.564903>,  <37.796471, 43.483791, 50.418671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076557, 43.238503, 50.564903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327828, -0.178712, -0.927680,
		0.634210, 0.769426, 0.075895,
		0.700219, -0.613225, 0.365581,
		38.286621, 43.054535, 50.674576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331142, 43.584167, 50.031757>,  <37.796471, 43.483791, 50.418671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331142, 43.584167, 50.031757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431725, 43.230110, 50.188362>,  <38.492073, 43.017673, 50.282326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431725, 43.230110, 50.188362>,  <38.331142, 43.584167, 50.031757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431725, 43.230110, 50.188362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351178, -0.293506, -0.889116,
		0.901910, 0.361069, 0.237039,
		0.251460, -0.885146, 0.391515,
		38.507164, 42.964565, 50.305817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022202, 43.441158, 49.833107>,  <38.331142, 43.584167, 50.031757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022202, 43.441158, 49.833107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865963, 43.081696, 49.912956>,  <38.772221, 42.866016, 49.960865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865963, 43.081696, 49.912956>,  <39.022202, 43.441158, 49.833107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865963, 43.081696, 49.912956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415435, -0.365585, -0.832923,
		0.821491, -0.242409, 0.516131,
		-0.390598, -0.898658, 0.199620,
		38.748783, 42.812099, 49.972843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573292, 42.892616, 49.772396>,  <39.022202, 43.441158, 49.833107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573292, 42.892616, 49.772396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249992, 42.658337, 49.748096>,  <39.056011, 42.517769, 49.733517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249992, 42.658337, 49.748096>,  <39.573292, 42.892616, 49.772396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249992, 42.658337, 49.748096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418438, -0.498701, -0.759083,
		0.414296, -0.638950, 0.648153,
		-0.808251, -0.585697, -0.060751,
		39.007519, 42.482628, 49.729870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799980, 42.273891, 49.669781>,  <39.573292, 42.892616, 49.772396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799980, 42.273891, 49.669781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425797, 42.242645, 49.531902>,  <39.201286, 42.223896, 49.449177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425797, 42.242645, 49.531902>,  <39.799980, 42.273891, 49.669781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425797, 42.242645, 49.531902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329159, -0.547767, -0.769159,
		-0.128727, -0.832976, 0.538127,
		-0.935459, -0.078118, -0.344694,
		39.145157, 42.219212, 49.428493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685226, 41.590050, 49.562271>,  <39.799980, 42.273891, 49.669781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685226, 41.590050, 49.562271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408363, 41.760609, 49.329342>,  <39.242245, 41.862946, 49.189583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408363, 41.760609, 49.329342>,  <39.685226, 41.590050, 49.562271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408363, 41.760609, 49.329342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122968, -0.725358, -0.677300,
		-0.711185, -0.540411, 0.449636,
		-0.692167, 0.426395, -0.582317,
		39.200714, 41.888531, 49.154644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075775, 41.096436, 49.381893>,  <39.685226, 41.590050, 49.562271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075775, 41.096436, 49.381893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074253, 41.377846, 49.097630>,  <39.073341, 41.546692, 48.927071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074253, 41.377846, 49.097630>,  <39.075775, 41.096436, 49.381893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074253, 41.377846, 49.097630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058388, -0.709294, -0.702490,
		-0.998287, -0.044167, -0.038378,
		-0.003805, 0.703527, -0.710658,
		39.073112, 41.588905, 48.884434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828739, 40.773476, 48.836121>,  <39.075775, 41.096436, 49.381893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828739, 40.773476, 48.836121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973377, 41.110779, 48.677036>,  <39.060158, 41.313160, 48.581585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973377, 41.110779, 48.677036>,  <38.828739, 40.773476, 48.836121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973377, 41.110779, 48.677036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193720, -0.485213, -0.852667,
		-0.911989, 0.231274, -0.338805,
		0.361592, 0.843256, -0.397706,
		39.081856, 41.363754, 48.557724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537952, 40.757668, 48.174541>,  <38.828739, 40.773476, 48.836121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537952, 40.757668, 48.174541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854214, 41.002338, 48.163807>,  <39.043968, 41.149143, 48.157368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854214, 41.002338, 48.163807>,  <38.537952, 40.757668, 48.174541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854214, 41.002338, 48.163807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299277, -0.424339, -0.854617,
		-0.534140, 0.667671, -0.518565,
		0.790650, 0.611679, -0.026837,
		39.091408, 41.185841, 48.155754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500103, 40.920132, 47.505108>,  <38.537952, 40.757668, 48.174541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500103, 40.920132, 47.505108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857925, 41.036526, 47.640808>,  <39.072620, 41.106361, 47.722229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857925, 41.036526, 47.640808>,  <38.500103, 40.920132, 47.505108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857925, 41.036526, 47.640808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379264, -0.092595, -0.920643,
		-0.236480, 0.952236, -0.193192,
		0.894559, 0.290985, 0.339252,
		39.126293, 41.123821, 47.742584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742096, 41.521481, 47.088860>,  <38.500103, 40.920132, 47.505108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742096, 41.521481, 47.088860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064930, 41.337383, 47.236801>,  <39.258629, 41.226925, 47.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064930, 41.337383, 47.236801>,  <38.742096, 41.521481, 47.088860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064930, 41.337383, 47.236801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340777, -0.148435, -0.928352,
		0.482170, 0.875294, 0.037042,
		0.807083, -0.460247, 0.369851,
		39.307056, 41.199310, 47.347755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190533, 41.885895, 46.693993>,  <38.742096, 41.521481, 47.088860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190533, 41.885895, 46.693993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383240, 41.563835, 46.832348>,  <39.498863, 41.370602, 46.915359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383240, 41.563835, 46.832348>,  <39.190533, 41.885895, 46.693993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383240, 41.563835, 46.832348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382723, -0.161748, -0.909593,
		0.788303, 0.570593, 0.230223,
		0.481769, -0.805147, 0.345886,
		39.527771, 41.322292, 46.936115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895752, 41.785408, 46.265247>,  <39.190533, 41.885895, 46.693993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895752, 41.785408, 46.265247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797192, 41.434280, 46.429554>,  <39.738056, 41.223606, 46.528137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797192, 41.434280, 46.429554>,  <39.895752, 41.785408, 46.265247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797192, 41.434280, 46.429554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222351, -0.463727, -0.857623,
		0.943317, -0.119987, 0.309446,
		-0.246402, -0.877816, 0.410762,
		39.723270, 41.170937, 46.552784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350243, 41.291191, 45.989998>,  <39.895752, 41.785408, 46.265247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350243, 41.291191, 45.989998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051167, 41.047863, 46.096508>,  <39.871719, 40.901867, 46.160416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051167, 41.047863, 46.096508>,  <40.350243, 41.291191, 45.989998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051167, 41.047863, 46.096508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197600, -0.586645, -0.785367,
		0.633965, -0.534596, 0.558833,
		-0.747691, -0.608321, 0.266276,
		39.826859, 40.865368, 46.176392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602673, 40.512772, 45.978870>,  <40.350243, 41.291191, 45.989998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602673, 40.512772, 45.978870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202991, 40.499123, 45.970516>,  <39.963184, 40.490932, 45.965504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202991, 40.499123, 45.970516>,  <40.602673, 40.512772, 45.978870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202991, 40.499123, 45.970516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037745, -0.631039, -0.774832,
		0.013266, -0.775000, 0.631822,
		-0.999199, -0.034127, -0.020881,
		39.903233, 40.488884, 45.964252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480629, 39.796024, 45.907410>,  <40.602673, 40.512772, 45.978870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480629, 39.796024, 45.907410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123013, 39.943775, 45.806023>,  <39.908443, 40.032425, 45.745190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123013, 39.943775, 45.806023>,  <40.480629, 39.796024, 45.907410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123013, 39.943775, 45.806023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006976, -0.577207, -0.816568,
		-0.447922, -0.728281, 0.518626,
		-0.894045, 0.369377, -0.253463,
		39.854797, 40.054588, 45.729984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864311, 39.195171, 45.690540>,  <40.480629, 39.796024, 45.907410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864311, 39.195171, 45.690540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807003, 39.548306, 45.511620>,  <39.772617, 39.760185, 45.404266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807003, 39.548306, 45.511620>,  <39.864311, 39.195171, 45.690540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807003, 39.548306, 45.511620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112261, -0.463540, -0.878936,
		-0.983296, -0.075714, 0.165521,
		-0.143273, 0.882835, -0.447297,
		39.764023, 39.813156, 45.377430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238422, 39.071316, 45.379955>,  <39.864311, 39.195171, 45.690540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238422, 39.071316, 45.379955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406391, 39.379295, 45.187767>,  <39.507172, 39.564083, 45.072456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406391, 39.379295, 45.187767>,  <39.238422, 39.071316, 45.379955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406391, 39.379295, 45.187767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208795, -0.433246, -0.876757,
		-0.883216, 0.468488, -0.021168,
		0.419921, 0.769947, -0.480467,
		39.532368, 39.610279, 45.043629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879314, 39.041637, 44.778442>,  <39.238422, 39.071316, 45.379955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879314, 39.041637, 44.778442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187344, 39.276653, 44.679008>,  <39.372162, 39.417664, 44.619350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187344, 39.276653, 44.679008>,  <38.879314, 39.041637, 44.778442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187344, 39.276653, 44.679008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119433, -0.249992, -0.960854,
		-0.626680, 0.769614, -0.122340,
		0.770070, 0.587536, -0.248582,
		39.418365, 39.452915, 44.604435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653896, 39.302429, 44.106422>,  <38.879314, 39.041637, 44.778442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653896, 39.302429, 44.106422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043987, 39.380116, 44.148781>,  <39.278042, 39.426727, 44.174194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043987, 39.380116, 44.148781>,  <38.653896, 39.302429, 44.106422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043987, 39.380116, 44.148781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174961, -0.384285, -0.906485,
		-0.135361, 0.902555, -0.408745,
		0.975226, 0.194217, 0.105894,
		39.336555, 39.438381, 44.180550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792980, 39.400070, 43.447311>,  <38.653896, 39.302429, 44.106422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792980, 39.400070, 43.447311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140480, 39.396400, 43.645378>,  <39.348980, 39.394199, 43.764217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140480, 39.396400, 43.645378>,  <38.792980, 39.400070, 43.447311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140480, 39.396400, 43.645378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475573, -0.263554, -0.839267,
		0.138205, 0.964601, -0.224599,
		0.868752, -0.009178, 0.495163,
		39.401104, 39.393646, 43.793926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280472, 39.740543, 43.005466>,  <38.792980, 39.400070, 43.447311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280472, 39.740543, 43.005466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470295, 39.481770, 43.244217>,  <39.584190, 39.326504, 43.387466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470295, 39.481770, 43.244217>,  <39.280472, 39.740543, 43.005466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470295, 39.481770, 43.244217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592440, -0.266765, -0.760165,
		0.651007, 0.714358, 0.256677,
		0.474557, -0.646939, 0.596880,
		39.612663, 39.287689, 43.423283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887497, 39.793076, 42.689064>,  <39.280472, 39.740543, 43.005466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887497, 39.793076, 42.689064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882099, 39.457615, 42.906864>,  <39.878860, 39.256336, 43.037544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882099, 39.457615, 42.906864>,  <39.887497, 39.793076, 42.689064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882099, 39.457615, 42.906864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621572, -0.433584, -0.652421,
		0.783240, 0.329640, 0.527135,
		-0.013494, -0.838655, 0.544496,
		39.878052, 39.206017, 43.070213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605316, 39.683350, 42.804108>,  <39.887497, 39.793076, 42.689064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605316, 39.683350, 42.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374996, 39.356377, 42.810646>,  <40.236805, 39.160194, 42.814571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374996, 39.356377, 42.810646>,  <40.605316, 39.683350, 42.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374996, 39.356377, 42.810646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489433, -0.360639, -0.793975,
		0.654913, -0.449168, 0.607732,
		-0.575799, -0.817428, 0.016350,
		40.202255, 39.111149, 42.815552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924213, 39.254921, 42.338364>,  <40.605316, 39.683350, 42.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924213, 39.254921, 42.338364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582966, 39.055408, 42.399563>,  <40.378220, 38.935699, 42.436283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582966, 39.055408, 42.399563>,  <40.924213, 39.254921, 42.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582966, 39.055408, 42.399563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130535, -0.488001, -0.863027,
		0.505129, -0.716289, 0.481429,
		-0.853115, -0.498783, 0.153003,
		40.327030, 38.905773, 42.445465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069233, 38.564213, 42.347733>,  <40.924213, 39.254921, 42.338364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069233, 38.564213, 42.347733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687923, 38.628674, 42.245522>,  <40.459137, 38.667351, 42.184196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687923, 38.628674, 42.245522>,  <41.069233, 38.564213, 42.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687923, 38.628674, 42.245522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145434, -0.496572, -0.855725,
		-0.264787, -0.852905, 0.449934,
		-0.953277, 0.161149, -0.255528,
		40.401939, 38.677017, 42.168861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009346, 38.094353, 41.903564>,  <41.069233, 38.564213, 42.347733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009346, 38.094353, 41.903564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671532, 38.294510, 41.827290>,  <40.468842, 38.414604, 41.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671532, 38.294510, 41.827290>,  <41.009346, 38.094353, 41.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671532, 38.294510, 41.827290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007297, -0.345307, -0.938461,
		-0.535449, -0.793956, 0.287973,
		-0.844536, 0.500397, -0.190687,
		40.418171, 38.444630, 41.770084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475010, 37.592350, 41.666683>,  <41.009346, 38.094353, 41.903564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475010, 37.592350, 41.666683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351185, 37.953930, 41.548672>,  <40.276890, 38.170879, 41.477867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351185, 37.953930, 41.548672>,  <40.475010, 37.592350, 41.666683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351185, 37.953930, 41.548672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086070, -0.335631, -0.938053,
		-0.946975, -0.264995, 0.181703,
		-0.309565, 0.903952, -0.295026,
		40.258316, 38.225117, 41.460163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922306, 37.434620, 41.164371>,  <40.475010, 37.592350, 41.666683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922306, 37.434620, 41.164371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996250, 37.821480, 41.094566>,  <40.040619, 38.053596, 41.052681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996250, 37.821480, 41.094566>,  <39.922306, 37.434620, 41.164371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996250, 37.821480, 41.094566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103618, -0.157404, -0.982083,
		-0.977286, 0.199636, 0.071115,
		0.184865, 0.967145, -0.174515,
		40.051708, 38.111622, 41.042213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306244, 37.705486, 40.739643>,  <39.922306, 37.434620, 41.164371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306244, 37.705486, 40.739643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613873, 37.944847, 40.649796>,  <39.798450, 38.088463, 40.595886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613873, 37.944847, 40.649796>,  <39.306244, 37.705486, 40.739643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613873, 37.944847, 40.649796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256931, -0.032350, -0.965888,
		-0.585253, 0.800544, 0.128868,
		0.769068, 0.598399, -0.224618,
		39.844593, 38.124367, 40.582409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054539, 38.122852, 40.167519>,  <39.306244, 37.705486, 40.739643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054539, 38.122852, 40.167519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451355, 38.172901, 40.161812>,  <39.689445, 38.202930, 40.158386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451355, 38.172901, 40.161812>,  <39.054539, 38.122852, 40.167519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451355, 38.172901, 40.161812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016624, 0.017794, -0.999703,
		-0.124832, 0.991982, 0.019733,
		0.992039, 0.125123, -0.014269,
		39.748966, 38.210438, 40.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074505, 38.472015, 39.551247>,  <39.054539, 38.122852, 40.167519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074505, 38.472015, 39.551247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453537, 38.370411, 39.628784>,  <39.680954, 38.309448, 39.675308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453537, 38.370411, 39.628784>,  <39.074505, 38.472015, 39.551247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453537, 38.370411, 39.628784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186853, -0.051614, -0.981031,
		0.259198, 0.965823, -0.001445,
		0.947577, -0.254011, 0.193846,
		39.737808, 38.294209, 39.686939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464294, 38.860161, 39.073677>,  <39.074505, 38.472015, 39.551247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464294, 38.860161, 39.073677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666359, 38.528080, 39.167969>,  <39.787598, 38.328831, 39.224545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666359, 38.528080, 39.167969>,  <39.464294, 38.860161, 39.073677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666359, 38.528080, 39.167969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184567, -0.162893, -0.969227,
		0.843056, 0.533126, 0.070941,
		0.505165, -0.830206, 0.235726,
		39.817909, 38.279018, 39.238686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134480, 38.946312, 38.860188>,  <39.464294, 38.860161, 39.073677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134480, 38.946312, 38.860188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085732, 38.550144, 38.886150>,  <40.056484, 38.312443, 38.901730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085732, 38.550144, 38.886150>,  <40.134480, 38.946312, 38.860188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085732, 38.550144, 38.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307517, -0.099854, -0.946289,
		0.943707, -0.095360, 0.316740,
		-0.121866, -0.990422, 0.064908,
		40.049171, 38.253017, 38.905624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814743, 38.661209, 38.631901>,  <40.134480, 38.946312, 38.860188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814743, 38.661209, 38.631901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533180, 38.379860, 38.592335>,  <40.364243, 38.211052, 38.568596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533180, 38.379860, 38.592335>,  <40.814743, 38.661209, 38.631901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533180, 38.379860, 38.592335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398360, -0.275634, -0.874835,
		0.588066, -0.655208, 0.474215,
		-0.703909, -0.703369, -0.098918,
		40.322006, 38.168850, 38.562660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148430, 38.216736, 38.290367>,  <40.814743, 38.661209, 38.631901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148430, 38.216736, 38.290367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764664, 38.125450, 38.224117>,  <40.534405, 38.070679, 38.184368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764664, 38.125450, 38.224117>,  <41.148430, 38.216736, 38.290367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764664, 38.125450, 38.224117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218889, -0.232458, -0.947656,
		0.177769, -0.945453, 0.272979,
		-0.959420, -0.228216, -0.165625,
		40.476837, 38.056984, 38.174431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113167, 37.614349, 37.875618>,  <41.148430, 38.216736, 38.290367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113167, 37.614349, 37.875618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740971, 37.749752, 37.819614>,  <40.517654, 37.830994, 37.786011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740971, 37.749752, 37.819614>,  <41.113167, 37.614349, 37.875618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740971, 37.749752, 37.819614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062367, -0.230238, -0.971134,
		-0.360973, -0.912361, 0.193122,
		-0.930488, 0.338509, -0.140011,
		40.461823, 37.851303, 37.777611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643753, 37.003876, 37.587044>,  <41.113167, 37.614349, 37.875618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643753, 37.003876, 37.587044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586353, 37.385021, 37.480118>,  <40.551914, 37.613708, 37.415962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586353, 37.385021, 37.480118>,  <40.643753, 37.003876, 37.587044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586353, 37.385021, 37.480118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163010, -0.243667, -0.956062,
		-0.976134, -0.180766, -0.120362,
		-0.143495, 0.952864, -0.267318,
		40.543304, 37.670879, 37.399921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145710, 37.255184, 36.935394>,  <40.643753, 37.003876, 37.587044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145710, 37.255184, 36.935394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466930, 37.493423, 36.943092>,  <40.659664, 37.636368, 36.947712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466930, 37.493423, 36.943092>,  <40.145710, 37.255184, 36.935394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466930, 37.493423, 36.943092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150504, -0.171472, -0.973625,
		-0.576589, 0.784768, -0.227341,
		0.803053, 0.595597, 0.019242,
		40.707848, 37.672104, 36.948864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125629, 37.596741, 36.369774>,  <40.145710, 37.255184, 36.935394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125629, 37.596741, 36.369774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508137, 37.579533, 36.485497>,  <40.737640, 37.569210, 36.554928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508137, 37.579533, 36.485497>,  <40.125629, 37.596741, 36.369774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508137, 37.579533, 36.485497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243290, -0.432037, -0.868420,
		0.162345, 0.900829, -0.402679,
		0.956271, -0.043016, 0.289302,
		40.795017, 37.566628, 36.572289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572926, 38.014523, 35.868061>,  <40.125629, 37.596741, 36.369774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572926, 38.014523, 35.868061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740166, 37.701134, 36.051960>,  <40.840511, 37.513100, 36.162300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740166, 37.701134, 36.051960>,  <40.572926, 38.014523, 35.868061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740166, 37.701134, 36.051960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222987, -0.402101, -0.888027,
		0.880606, 0.473803, 0.006584,
		0.418103, -0.783470, 0.459744,
		40.865597, 37.466091, 36.189884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309422, 37.855732, 35.641285>,  <40.572926, 38.014523, 35.868061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309422, 37.855732, 35.641285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123745, 37.518017, 35.748394>,  <41.012337, 37.315388, 35.812660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123745, 37.518017, 35.748394>,  <41.309422, 37.855732, 35.641285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123745, 37.518017, 35.748394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093479, -0.347329, -0.933072,
		0.880787, -0.408096, 0.240151,
		-0.464194, -0.844287, 0.267775,
		40.984486, 37.264732, 35.828728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602535, 37.405159, 35.258842>,  <41.309422, 37.855732, 35.641285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602535, 37.405159, 35.258842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290394, 37.177425, 35.362305>,  <41.103107, 37.040783, 35.424381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290394, 37.177425, 35.362305>,  <41.602535, 37.405159, 35.258842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290394, 37.177425, 35.362305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066235, -0.336046, -0.939514,
		0.621822, -0.750285, 0.224524,
		-0.780353, -0.569339, 0.258656,
		41.056290, 37.006622, 35.439903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725353, 36.662338, 35.018612>,  <41.602535, 37.405159, 35.258842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725353, 36.662338, 35.018612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349030, 36.797901, 35.019814>,  <41.123234, 36.879238, 35.020535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349030, 36.797901, 35.019814>,  <41.725353, 36.662338, 35.018612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349030, 36.797901, 35.019814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117520, -0.317898, -0.940814,
		-0.317898, -0.885483, 0.338911,
		0.940814, -0.338911, -0.003003,
		41.066784, 36.899574, 35.020714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231174, 36.105640, 35.240509>,  <41.725353, 36.662338, 35.018612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231174, 36.105640, 35.240509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623306, 36.180473, 35.265652>,  <42.858585, 36.225372, 35.280739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623306, 36.180473, 35.265652>,  <42.231174, 36.105640, 35.240509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623306, 36.180473, 35.265652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177399, 0.974874, -0.134720,
		-0.086483, 0.120919, 0.988888,
		0.980332, 0.187079, 0.062859,
		42.917404, 36.236595, 35.284508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426117, 36.455547, 35.834965>,  <42.231174, 36.105640, 35.240509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426117, 36.455547, 35.834965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656406, 36.533779, 35.517399>,  <42.794579, 36.580719, 35.326859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656406, 36.533779, 35.517399>,  <42.426117, 36.455547, 35.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656406, 36.533779, 35.517399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325205, 0.945639, -0.002869,
		0.750192, 0.259835, 0.608028,
		0.575720, 0.195582, -0.793911,
		42.829121, 36.592453, 35.279224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673218, 37.132675, 35.860256>,  <42.426117, 36.455547, 35.834965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673218, 37.132675, 35.860256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700157, 37.044403, 35.471050>,  <42.716320, 36.991440, 35.237526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700157, 37.044403, 35.471050>,  <42.673218, 37.132675, 35.860256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700157, 37.044403, 35.471050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420878, 0.877932, -0.228249,
		0.904613, 0.424895, -0.033748,
		0.067353, -0.220681, -0.973018,
		42.720364, 36.978199, 35.179146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899418, 37.796856, 35.547279>,  <42.673218, 37.132675, 35.860256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899418, 37.796856, 35.547279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732616, 37.572216, 35.261425>,  <42.632534, 37.437431, 35.089912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732616, 37.572216, 35.261425>,  <42.899418, 37.796856, 35.547279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732616, 37.572216, 35.261425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428060, 0.814956, -0.390654,
		0.801790, 0.143001, -0.580244,
		-0.417009, -0.561602, -0.714637,
		42.607513, 37.403736, 35.047035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219234, 38.013386, 34.992931>,  <42.899418, 37.796856, 35.547279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219234, 38.013386, 34.992931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901985, 37.851925, 34.810493>,  <42.711636, 37.755047, 34.701031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901985, 37.851925, 34.810493>,  <43.219234, 38.013386, 34.992931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901985, 37.851925, 34.810493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227303, 0.890910, -0.393209,
		0.565056, -0.208192, -0.798353,
		-0.793124, -0.403653, -0.456091,
		42.664047, 37.730827, 34.673668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195351, 38.267437, 34.310856>,  <43.219234, 38.013386, 34.992931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195351, 38.267437, 34.310856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819527, 38.135857, 34.348835>,  <42.594032, 38.056908, 34.371624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819527, 38.135857, 34.348835>,  <43.195351, 38.267437, 34.310856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819527, 38.135857, 34.348835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328276, 0.786745, -0.522749,
		0.097257, -0.522325, -0.847182,
		-0.939562, -0.328951, 0.094950,
		42.537659, 38.037170, 34.377319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872147, 38.428478, 33.704292>,  <43.195351, 38.267437, 34.310856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872147, 38.428478, 33.704292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558449, 38.366062, 33.944496>,  <42.370228, 38.328613, 34.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558449, 38.366062, 33.944496>,  <42.872147, 38.428478, 33.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558449, 38.366062, 33.944496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402498, 0.864518, -0.301006,
		-0.472178, -0.477765, -0.740803,
		-0.784247, -0.156043, 0.600506,
		42.323174, 38.319248, 34.124649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227348, 38.544952, 33.276993>,  <42.872147, 38.428478, 33.704292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227348, 38.544952, 33.276993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095406, 38.589699, 33.651943>,  <42.016239, 38.616547, 33.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095406, 38.589699, 33.651943>,  <42.227348, 38.544952, 33.276993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095406, 38.589699, 33.651943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715076, 0.618661, -0.325462,
		-0.616326, -0.777654, -0.124081,
		-0.329861, 0.111863, 0.937379,
		41.996449, 38.623257, 33.933155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442978, 38.448280, 33.277531>,  <42.227348, 38.544952, 33.276993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442978, 38.448280, 33.277531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479145, 38.633465, 33.630234>,  <41.500847, 38.744576, 33.841854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479145, 38.633465, 33.630234>,  <41.442978, 38.448280, 33.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479145, 38.633465, 33.630234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737974, 0.625676, -0.252833,
		-0.668744, -0.627849, 0.398229,
		0.090421, 0.462964, 0.881753,
		41.506271, 38.772354, 33.894760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774960, 38.565342, 33.485153>,  <41.442978, 38.448280, 33.277531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774960, 38.565342, 33.485153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002342, 38.836739, 33.671272>,  <41.138771, 38.999577, 33.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002342, 38.836739, 33.671272>,  <40.774960, 38.565342, 33.485153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002342, 38.836739, 33.671272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612656, 0.726586, -0.311007,
		-0.549098, -0.108276, 0.828715,
		0.568458, 0.678491, 0.465302,
		41.172878, 39.040287, 33.810863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384972, 38.932774, 33.971874>,  <40.774960, 38.565342, 33.485153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384972, 38.932774, 33.971874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691170, 39.179043, 33.897072>,  <40.874889, 39.326805, 33.852192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691170, 39.179043, 33.897072>,  <40.384972, 38.932774, 33.971874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691170, 39.179043, 33.897072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637307, 0.685414, -0.352204,
		-0.088667, 0.388789, 0.917050,
		0.765492, 0.615671, -0.187004,
		40.920818, 39.363743, 33.840969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040348, 39.525379, 34.013676>,  <40.384972, 38.932774, 33.971874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040348, 39.525379, 34.013676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385483, 39.619698, 33.834827>,  <40.592564, 39.676289, 33.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385483, 39.619698, 33.834827>,  <40.040348, 39.525379, 34.013676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385483, 39.619698, 33.834827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495985, 0.565632, -0.658832,
		0.097558, 0.790229, 0.604997,
		0.862833, 0.235795, -0.447123,
		40.644333, 39.690437, 33.700691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023468, 40.259327, 33.921246>,  <40.040348, 39.525379, 34.013676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023468, 40.259327, 33.921246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299927, 40.171928, 33.645687>,  <40.465801, 40.119488, 33.480350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299927, 40.171928, 33.645687>,  <40.023468, 40.259327, 33.921246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299927, 40.171928, 33.645687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308247, 0.773035, -0.554438,
		0.653683, 0.595547, 0.466928,
		0.691146, -0.218498, -0.688895,
		40.507271, 40.106380, 33.439018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313835, 40.931713, 33.702656>,  <40.023468, 40.259327, 33.921246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313835, 40.931713, 33.702656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389591, 40.649891, 33.429092>,  <40.435043, 40.480797, 33.264954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389591, 40.649891, 33.429092>,  <40.313835, 40.931713, 33.702656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389591, 40.649891, 33.429092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197995, 0.654806, -0.729401,
		0.961733, 0.273551, -0.015485,
		0.189389, -0.704555, -0.683910,
		40.446407, 40.438526, 33.223919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936081, 41.164543, 33.266556>,  <40.313835, 40.931713, 33.702656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936081, 41.164543, 33.266556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718044, 40.897602, 33.063568>,  <40.587223, 40.737438, 32.941776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718044, 40.897602, 33.063568>,  <40.936081, 41.164543, 33.266556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718044, 40.897602, 33.063568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041706, 0.626131, -0.778602,
		0.837339, -0.403245, -0.369131,
		-0.545092, -0.667349, -0.507466,
		40.554516, 40.697399, 32.911327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811241, 41.547096, 32.661041>,  <40.936081, 41.164543, 33.266556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811241, 41.547096, 32.661041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607506, 41.212013, 32.582230>,  <40.485264, 41.010963, 32.534943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607506, 41.212013, 32.582230>,  <40.811241, 41.547096, 32.661041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607506, 41.212013, 32.582230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221828, 0.349020, -0.910482,
		0.831484, -0.420038, -0.363596,
		-0.509339, -0.837708, -0.197028,
		40.454704, 40.960701, 32.523121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835873, 41.578484, 31.959049>,  <40.811241, 41.547096, 32.661041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835873, 41.578484, 31.959049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535271, 41.332718, 32.055161>,  <40.354908, 41.185261, 32.112827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535271, 41.332718, 32.055161>,  <40.835873, 41.578484, 31.959049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535271, 41.332718, 32.055161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549401, 0.381223, -0.743524,
		0.365219, -0.690782, -0.624047,
		-0.751514, -0.614402, 0.240287,
		40.309818, 41.148396, 32.127243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625721, 41.163860, 31.320234>,  <40.835873, 41.578484, 31.959049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625721, 41.163860, 31.320234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322857, 41.169025, 31.581474>,  <40.141136, 41.172127, 31.738218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322857, 41.169025, 31.581474>,  <40.625721, 41.163860, 31.320234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322857, 41.169025, 31.581474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600999, 0.377956, -0.704237,
		-0.255938, -0.925734, -0.278412,
		-0.757163, 0.012915, 0.653098,
		40.095707, 41.172901, 31.777403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133423, 40.963310, 30.884203>,  <40.625721, 41.163860, 31.320234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133423, 40.963310, 30.884203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915836, 41.129555, 31.175781>,  <39.785282, 41.229301, 31.350729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915836, 41.129555, 31.175781>,  <40.133423, 40.963310, 30.884203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915836, 41.129555, 31.175781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659169, 0.325894, -0.677709,
		-0.519223, -0.849153, 0.096681,
		-0.543970, 0.415611, 0.728947,
		39.752644, 41.254238, 31.394464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415390, 40.846294, 30.718580>,  <40.133423, 40.963310, 30.884203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415390, 40.846294, 30.718580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408939, 41.149925, 30.978901>,  <39.405067, 41.332104, 31.135094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408939, 41.149925, 30.978901>,  <39.415390, 40.846294, 30.718580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408939, 41.149925, 30.978901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767197, 0.408014, -0.494908,
		-0.641209, -0.507276, 0.575779,
		-0.016129, 0.759075, 0.650803,
		39.404102, 41.377647, 31.174143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738579, 40.903316, 30.997374>,  <39.415390, 40.846294, 30.718580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738579, 40.903316, 30.997374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906002, 41.264713, 31.034275>,  <39.006458, 41.481552, 31.056416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906002, 41.264713, 31.034275>,  <38.738579, 40.903316, 30.997374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906002, 41.264713, 31.034275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783091, 0.410488, -0.467191,
		-0.459972, 0.123305, 0.879330,
		0.418562, 0.903491, 0.092254,
		39.031570, 41.535759, 31.061951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311329, 41.413071, 31.380026>,  <38.738579, 40.903316, 30.997374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311329, 41.413071, 31.380026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521847, 41.610863, 31.103331>,  <38.648159, 41.729538, 30.937313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521847, 41.610863, 31.103331>,  <38.311329, 41.413071, 31.380026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521847, 41.610863, 31.103331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849809, 0.278166, -0.447715,
		-0.028968, 0.823476, 0.566611,
		0.526294, 0.494480, -0.691740,
		38.679733, 41.759209, 30.895809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102982, 42.146935, 31.333776>,  <38.311329, 41.413071, 31.380026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102982, 42.146935, 31.333776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248951, 42.007610, 30.988403>,  <38.336533, 41.924015, 30.781179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248951, 42.007610, 30.988403>,  <38.102982, 42.146935, 31.333776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248951, 42.007610, 30.988403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807566, 0.343089, -0.479715,
		0.463322, 0.872337, -0.156079,
		0.364924, -0.348306, -0.863431,
		38.358429, 41.903118, 30.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920349, 42.484795, 30.733730>,  <38.102982, 42.146935, 31.333776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920349, 42.484795, 30.733730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927197, 42.108822, 30.597359>,  <37.931305, 41.883236, 30.515535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927197, 42.108822, 30.597359>,  <37.920349, 42.484795, 30.733730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927197, 42.108822, 30.597359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766599, 0.206563, -0.607995,
		0.641898, 0.271765, -0.717015,
		0.017123, -0.939934, -0.340927,
		37.932335, 41.826843, 30.495081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187305, 42.415672, 30.752327>,  <37.920349, 42.484795, 30.733730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187305, 42.415672, 30.752327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082153, 42.094528, 30.538292>,  <37.019062, 41.901844, 30.409872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082153, 42.094528, 30.538292>,  <37.187305, 42.415672, 30.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082153, 42.094528, 30.538292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909693, -0.391041, 0.139810,
		-0.321488, -0.450011, 0.833148,
		-0.262879, -0.802856, -0.535086,
		37.003288, 41.853672, 30.377766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397587, 41.757851, 31.122759>,  <37.187305, 42.415672, 30.752327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397587, 41.757851, 31.122759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373337, 41.714283, 30.725880>,  <37.358788, 41.688141, 30.487751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373337, 41.714283, 30.725880>,  <37.397587, 41.757851, 31.122759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373337, 41.714283, 30.725880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929054, -0.369589, -0.016197,
		-0.364942, -0.922789, 0.123603,
		-0.060629, -0.108923, -0.992200,
		37.355148, 41.681606, 30.428219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437061, 41.054615, 30.922474>,  <37.397587, 41.757851, 31.122759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437061, 41.054615, 30.922474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550941, 41.272999, 30.607292>,  <37.619270, 41.404030, 30.418184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550941, 41.272999, 30.607292>,  <37.437061, 41.054615, 30.922474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550941, 41.272999, 30.607292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922532, -0.379441, 0.070419,
		-0.260535, -0.746960, -0.611696,
		0.284703, 0.545963, -0.787952,
		37.636353, 41.436787, 30.370907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695984, 40.753120, 30.258789>,  <37.437061, 41.054615, 30.922474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695984, 40.753120, 30.258789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882240, 41.106766, 30.274443>,  <37.993992, 41.318951, 30.283834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882240, 41.106766, 30.274443>,  <37.695984, 40.753120, 30.258789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882240, 41.106766, 30.274443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883298, -0.461577, -0.082044,
		-0.054473, 0.072769, -0.995860,
		0.465636, 0.884111, 0.039134,
		38.021931, 41.371998, 30.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126202, 40.752644, 29.729229>,  <37.695984, 40.753120, 30.258789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126202, 40.752644, 29.729229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278572, 40.997139, 30.006729>,  <38.369995, 41.143837, 30.173229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278572, 40.997139, 30.006729>,  <38.126202, 40.752644, 29.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278572, 40.997139, 30.006729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875479, -0.479761, -0.058012,
		0.297375, 0.629462, -0.717876,
		0.380926, 0.611234, 0.693749,
		38.392849, 41.180508, 30.214853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634140, 40.149876, 29.803596>,  <38.126202, 40.752644, 29.729229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634140, 40.149876, 29.803596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708611, 40.450214, 29.550119>,  <38.753292, 40.630417, 29.398033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708611, 40.450214, 29.550119>,  <38.634140, 40.149876, 29.803596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708611, 40.450214, 29.550119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973833, -0.055465, 0.220393,
		0.130333, -0.658145, -0.741525,
		0.186179, 0.750846, -0.633694,
		38.764465, 40.675468, 29.360012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042580, 40.013264, 29.134333>,  <38.634140, 40.149876, 29.803596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042580, 40.013264, 29.134333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095791, 40.369041, 29.309233>,  <39.127720, 40.582508, 29.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095791, 40.369041, 29.309233>,  <39.042580, 40.013264, 29.134333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095791, 40.369041, 29.309233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928801, -0.265838, 0.258182,
		0.345877, 0.371774, -0.861483,
		0.133030, 0.889446, 0.437251,
		39.135700, 40.635876, 29.440409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799042, 40.247902, 28.905462>,  <39.042580, 40.013264, 29.134333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799042, 40.247902, 28.905462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633278, 40.336285, 29.258606>,  <39.533821, 40.389313, 29.470493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633278, 40.336285, 29.258606>,  <39.799042, 40.247902, 28.905462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633278, 40.336285, 29.258606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841986, -0.275120, 0.464078,
		0.345433, 0.935675, -0.072028,
		-0.414410, 0.220954, 0.882861,
		39.508953, 40.402573, 29.523464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247051, 40.657864, 29.307411>,  <39.799042, 40.247902, 28.905462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247051, 40.657864, 29.307411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038227, 40.418755, 29.550762>,  <39.912933, 40.275291, 29.696772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038227, 40.418755, 29.550762>,  <40.247051, 40.657864, 29.307411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038227, 40.418755, 29.550762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851874, -0.330376, 0.406401,
		-0.041942, 0.730427, 0.681702,
		-0.522064, -0.597769, 0.608376,
		39.881607, 40.239426, 29.733274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472992, 40.768932, 30.024706>,  <40.247051, 40.657864, 29.307411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472992, 40.768932, 30.024706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329231, 40.396774, 29.995861>,  <40.242973, 40.173481, 29.978554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329231, 40.396774, 29.995861>,  <40.472992, 40.768932, 30.024706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329231, 40.396774, 29.995861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771787, -0.339791, 0.537483,
		-0.524573, 0.137518, 0.840186,
		-0.359401, -0.930393, -0.072111,
		40.221413, 40.117657, 29.974228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744934, 40.489681, 30.546753>,  <40.472992, 40.768932, 30.024706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744934, 40.489681, 30.546753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608829, 40.154343, 30.376389>,  <40.527168, 39.953140, 30.274170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608829, 40.154343, 30.376389>,  <40.744934, 40.489681, 30.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608829, 40.154343, 30.376389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663057, -0.535074, 0.523499,
		-0.666766, -0.104276, 0.737936,
		-0.340262, -0.838345, -0.425910,
		40.506752, 39.902840, 30.248615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829540, 39.999489, 31.078039>,  <40.744934, 40.489681, 30.546753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829540, 39.999489, 31.078039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770954, 39.781036, 30.748121>,  <40.735802, 39.649963, 30.550171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770954, 39.781036, 30.748121>,  <40.829540, 39.999489, 31.078039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770954, 39.781036, 30.748121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553405, -0.736342, 0.389286,
		-0.819933, -0.399429, 0.410081,
		-0.146468, -0.546130, -0.824797,
		40.727013, 39.617199, 30.500683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865055, 39.387314, 31.394983>,  <40.829540, 39.999489, 31.078039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865055, 39.387314, 31.394983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927856, 39.373737, 31.000177>,  <40.965538, 39.365593, 30.763294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927856, 39.373737, 31.000177>,  <40.865055, 39.387314, 31.394983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927856, 39.373737, 31.000177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772636, -0.618266, 0.144158,
		-0.615131, -0.785236, -0.070842,
		0.156998, -0.033941, -0.987016,
		40.974957, 39.363556, 30.704073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746422, 38.723049, 31.146561>,  <40.865055, 39.387314, 31.394983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746422, 38.723049, 31.146561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011623, 38.897564, 30.903221>,  <41.170742, 39.002274, 30.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011623, 38.897564, 30.903221>,  <40.746422, 38.723049, 31.146561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011623, 38.897564, 30.903221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700036, -0.649289, 0.297277,
		-0.265295, -0.622959, -0.735894,
		0.662999, 0.436287, -0.608347,
		41.210522, 39.028450, 30.720716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116413, 38.187878, 30.832872>,  <40.746422, 38.723049, 31.146561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116413, 38.187878, 30.832872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349998, 38.508801, 30.783409>,  <41.490150, 38.701355, 30.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349998, 38.508801, 30.783409>,  <41.116413, 38.187878, 30.832872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349998, 38.508801, 30.783409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811130, -0.582783, 0.049320,
		-0.032497, -0.129105, -0.991098,
		0.583963, 0.802306, -0.123660,
		41.525188, 38.749493, 30.746311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726978, 37.897198, 30.522360>,  <41.116413, 38.187878, 30.832872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726978, 37.897198, 30.522360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857983, 38.256031, 30.640999>,  <41.936584, 38.471333, 30.712181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857983, 38.256031, 30.640999>,  <41.726978, 37.897198, 30.522360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857983, 38.256031, 30.640999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882881, -0.402375, 0.242108,
		0.336535, 0.182565, -0.923804,
		0.327515, 0.897087, 0.296596,
		41.956238, 38.525158, 30.729979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461765, 37.907242, 30.304085>,  <41.726978, 37.897198, 30.522360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461765, 37.907242, 30.304085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407169, 38.148670, 30.618301>,  <42.374413, 38.293526, 30.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407169, 38.148670, 30.618301>,  <42.461765, 37.907242, 30.304085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407169, 38.148670, 30.618301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878639, -0.292500, 0.377408,
		0.457563, 0.741720, -0.490396,
		-0.136490, 0.603569, 0.785541,
		42.366222, 38.329742, 30.853964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097527, 38.222008, 30.378094>,  <42.461765, 37.907242, 30.304085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097527, 38.222008, 30.378094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921909, 38.276207, 30.733372>,  <42.816540, 38.308727, 30.946539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921909, 38.276207, 30.733372>,  <43.097527, 38.222008, 30.378094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921909, 38.276207, 30.733372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822772, -0.336524, 0.458038,
		0.360960, 0.931876, 0.036266,
		-0.439039, 0.135495, 0.888193,
		42.790199, 38.316856, 30.999830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670113, 38.514034, 30.889027>,  <43.097527, 38.222008, 30.378094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670113, 38.514034, 30.889027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 38.356697, 31.113340>,  <43.203835, 38.262295, 31.247929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378689, 38.356697, 31.113340>,  <43.670113, 38.514034, 30.889027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378689, 38.356697, 31.113340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681394, -0.332478, 0.652043,
		-0.070030, 0.857167, 0.510255,
		-0.728558, -0.393347, 0.560786,
		43.160122, 38.238693, 31.281576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914391, 38.619045, 31.571966>,  <43.670113, 38.514034, 30.889027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914391, 38.619045, 31.571966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641617, 38.336056, 31.646210>,  <43.477955, 38.166264, 31.690756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641617, 38.336056, 31.646210>,  <43.914391, 38.619045, 31.571966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641617, 38.336056, 31.646210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483411, -0.245509, 0.840262,
		-0.548895, 0.662726, 0.509421,
		-0.681930, -0.707475, 0.185610,
		43.437038, 38.123814, 31.701893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905540, 38.683498, 32.275070>,  <43.914391, 38.619045, 31.571966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905540, 38.683498, 32.275070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762402, 38.318535, 32.195606>,  <43.676517, 38.099556, 32.147926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762402, 38.318535, 32.195606>,  <43.905540, 38.683498, 32.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762402, 38.318535, 32.195606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455308, -0.356232, 0.815961,
		-0.815255, 0.201537, 0.542901,
		-0.357845, -0.912404, -0.198659,
		43.655048, 38.044815, 32.136009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707653, 38.378407, 32.960564>,  <43.905540, 38.683498, 32.275070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707653, 38.378407, 32.960564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726093, 38.070129, 32.706348>,  <43.737160, 37.885162, 32.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726093, 38.070129, 32.706348>,  <43.707653, 38.378407, 32.960564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726093, 38.070129, 32.706348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340294, -0.586046, 0.735357,
		-0.939188, -0.250173, 0.235242,
		0.046104, -0.770690, -0.635540,
		43.739925, 37.838921, 32.515686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317997, 37.811035, 33.219738>,  <43.707653, 38.378407, 32.960564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317997, 37.811035, 33.219738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601284, 37.666012, 32.977421>,  <43.771255, 37.578999, 32.832031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601284, 37.666012, 32.977421>,  <43.317997, 37.811035, 33.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601284, 37.666012, 32.977421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389750, -0.514678, 0.763676,
		-0.588660, -0.776956, -0.223200,
		0.708219, -0.362554, -0.605789,
		43.813751, 37.557247, 32.795685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486965, 37.080223, 33.362606>,  <43.317997, 37.811035, 33.219738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486965, 37.080223, 33.362606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807140, 37.215054, 33.164341>,  <43.999245, 37.295952, 33.045383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807140, 37.215054, 33.164341>,  <43.486965, 37.080223, 33.362606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807140, 37.215054, 33.164341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579460, -0.646730, 0.495950,
		-0.153384, -0.684192, -0.712990,
		0.800437, 0.337078, -0.495660,
		44.047272, 37.316177, 33.015644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913750, 36.487553, 33.206970>,  <43.486965, 37.080223, 33.362606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913750, 36.487553, 33.206970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182789, 36.769745, 33.117611>,  <44.344212, 36.939060, 33.063995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182789, 36.769745, 33.117611>,  <43.913750, 36.487553, 33.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182789, 36.769745, 33.117611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705704, -0.520640, 0.480537,
		0.222699, -0.480864, -0.848042,
		0.672597, 0.705482, -0.223402,
		44.384567, 36.981388, 33.050591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486755, 36.102676, 32.950394>,  <43.913750, 36.487553, 33.206970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486755, 36.102676, 32.950394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618793, 36.454960, 33.086269>,  <44.698017, 36.666328, 33.167797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618793, 36.454960, 33.086269>,  <44.486755, 36.102676, 32.950394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618793, 36.454960, 33.086269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743296, -0.464334, 0.481565,
		0.581849, 0.093529, -0.807901,
		0.330095, 0.880708, 0.339692,
		44.717823, 36.719173, 33.188175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213573, 36.091434, 32.922405>,  <44.486755, 36.102676, 32.950394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213573, 36.091434, 32.922405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153454, 36.370613, 33.202488>,  <45.117382, 36.538120, 33.370537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153454, 36.370613, 33.202488>,  <45.213573, 36.091434, 32.922405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153454, 36.370613, 33.202488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740813, -0.389496, 0.547256,
		0.654680, 0.600974, -0.458503,
		-0.150301, 0.697942, 0.700204,
		45.108364, 36.579994, 33.412548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982796, 36.305435, 33.128632>,  <45.213573, 36.091434, 32.922405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982796, 36.305435, 33.128632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731834, 36.456356, 33.401108>,  <45.581257, 36.546909, 33.564594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731834, 36.456356, 33.401108>,  <45.982796, 36.305435, 33.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731834, 36.456356, 33.401108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702770, -0.102419, 0.704006,
		0.335388, 0.920410, -0.200897,
		-0.627399, 0.377299, 0.681187,
		45.543613, 36.569546, 33.605465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399155, 36.694519, 33.706638>,  <45.982796, 36.305435, 33.128632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399155, 36.694519, 33.706638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041622, 36.620243, 33.869900>,  <45.827103, 36.575680, 33.967857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041622, 36.620243, 33.869900>,  <46.399155, 36.694519, 33.706638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041622, 36.620243, 33.869900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409524, 0.032709, 0.911713,
		-0.182644, 0.982064, 0.046807,
		-0.893829, -0.185688, 0.408153,
		45.773472, 36.564537, 33.992344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768753, 36.160061, 34.238468>,  <46.399155, 36.694519, 33.706638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768753, 36.160061, 34.238468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667458, 35.773289, 34.226353>,  <46.606678, 35.541225, 34.219082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667458, 35.773289, 34.226353>,  <46.768753, 36.160061, 34.238468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667458, 35.773289, 34.226353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870264, -0.241377, 0.429393,
		-0.422503, 0.082381, 0.902610,
		-0.253243, -0.966928, -0.030289,
		46.591484, 35.483212, 34.217266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.172199, 35.974079, 34.768158>,  <46.768753, 36.160061, 34.238468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.172199, 35.974079, 34.768158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089199, 35.623425, 34.594509>,  <47.039398, 35.413033, 34.490322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089199, 35.623425, 34.594509>,  <47.172199, 35.974079, 34.768158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089199, 35.623425, 34.594509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813769, -0.400968, 0.420720,
		-0.542884, -0.265972, 0.796578,
		-0.207502, -0.876632, -0.434119,
		47.026947, 35.360435, 34.464275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087357, 35.484303, 35.282047>,  <47.172199, 35.974079, 34.768158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087357, 35.484303, 35.282047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200981, 35.312664, 34.939075>,  <47.269154, 35.209682, 34.733292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200981, 35.312664, 34.939075>,  <47.087357, 35.484303, 35.282047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200981, 35.312664, 34.939075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718304, -0.497112, 0.486742,
		-0.635099, -0.754159, 0.167012,
		0.284057, -0.429095, -0.857431,
		47.286198, 35.183937, 34.681847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811069, 35.140095, 35.296715>,  <47.087357, 35.484303, 35.282047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811069, 35.140095, 35.296715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514359, 34.988651, 35.075291>,  <47.336334, 34.897785, 34.942436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.514359, 34.988651, 35.075291>,  <47.811069, 35.140095, 35.296715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.514359, 34.988651, 35.075291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637071, -0.655698, -0.405217,
		-0.209548, -0.653235, 0.727581,
		-0.741776, -0.378608, -0.553557,
		47.291824, 34.875069, 34.909225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.521072, 43.242058, 44.030525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132080, 43.208900, 44.117619>,  <35.898685, 43.189007, 44.169876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.132080, 43.208900, 44.117619>,  <36.521072, 43.242058, 44.030525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132080, 43.208900, 44.117619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090851, -0.725651, -0.682038,
		0.214536, -0.683051, 0.698152,
		-0.972482, -0.082894, 0.217734,
		35.840336, 43.184032, 44.182938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365677, 42.575108, 43.900974>,  <36.521072, 43.242058, 44.030525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365677, 42.575108, 43.900974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990929, 42.714764, 43.893291>,  <35.766079, 42.798557, 43.888680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.990929, 42.714764, 43.893291>,  <36.365677, 42.575108, 43.900974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990929, 42.714764, 43.893291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222477, -0.637575, -0.737565,
		-0.269759, -0.686732, 0.675003,
		-0.936875, 0.349138, -0.019210,
		35.709866, 42.819504, 43.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996117, 42.033485, 43.673126>,  <36.365677, 42.575108, 43.900974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996117, 42.033485, 43.673126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754368, 42.337719, 43.578262>,  <35.609318, 42.520260, 43.521343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.754368, 42.337719, 43.578262>,  <35.996117, 42.033485, 43.673126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754368, 42.337719, 43.578262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066386, -0.344713, -0.936358,
		-0.793931, -0.550166, 0.258828,
		-0.604373, 0.760586, -0.237155,
		35.573055, 42.565895, 43.507114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410458, 41.632099, 43.439884>,  <35.996117, 42.033485, 43.673126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410458, 41.632099, 43.439884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398468, 42.005199, 43.296177>,  <35.391273, 42.229061, 43.209953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398468, 42.005199, 43.296177>,  <35.410458, 41.632099, 43.439884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398468, 42.005199, 43.296177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131404, -0.359984, -0.923658,
		-0.990876, 0.019525, 0.133358,
		-0.029973, 0.932754, -0.359265,
		35.389477, 42.285027, 43.188396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855045, 41.590263, 42.903900>,  <35.410458, 41.632099, 43.439884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855045, 41.590263, 42.903900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017788, 41.947689, 42.827995>,  <35.115433, 42.162144, 42.782452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.017788, 41.947689, 42.827995>,  <34.855045, 41.590263, 42.903900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017788, 41.947689, 42.827995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054086, -0.183800, -0.981474,
		-0.911888, 0.409586, -0.026451,
		0.406860, 0.893564, -0.189758,
		35.139847, 42.215759, 42.771069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390846, 41.954773, 42.472954>,  <34.855045, 41.590263, 42.903900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390846, 41.954773, 42.472954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754971, 42.111404, 42.419300>,  <34.973446, 42.205383, 42.387108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.754971, 42.111404, 42.419300>,  <34.390846, 41.954773, 42.472954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754971, 42.111404, 42.419300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050004, -0.217643, -0.974747,
		-0.410885, 0.894033, -0.178543,
		0.910315, 0.391581, -0.134132,
		35.028065, 42.228878, 42.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349083, 42.206203, 41.815014>,  <34.390846, 41.954773, 42.472954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349083, 42.206203, 41.815014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739391, 42.184151, 41.899704>,  <34.973576, 42.170918, 41.950520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739391, 42.184151, 41.899704>,  <34.349083, 42.206203, 41.815014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739391, 42.184151, 41.899704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198790, -0.180760, -0.963228,
		0.091377, 0.981981, -0.165421,
		0.975773, -0.055133, 0.211725,
		35.032124, 42.167610, 41.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520714, 42.528629, 41.250168>,  <34.349083, 42.206203, 41.815014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520714, 42.528629, 41.250168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832737, 42.329830, 41.402218>,  <35.019951, 42.210548, 41.493446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832737, 42.329830, 41.402218>,  <34.520714, 42.528629, 41.250168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832737, 42.329830, 41.402218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242002, -0.320594, -0.915781,
		0.577011, 0.806355, -0.129807,
		0.780060, -0.497002, 0.380126,
		35.066753, 42.180729, 41.516254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059116, 42.825832, 41.005936>,  <34.520714, 42.528629, 41.250168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059116, 42.825832, 41.005936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155743, 42.452122, 41.110836>,  <35.213718, 42.227894, 41.173775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155743, 42.452122, 41.110836>,  <35.059116, 42.825832, 41.005936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155743, 42.452122, 41.110836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340700, -0.171390, -0.924418,
		0.908608, 0.312658, 0.276905,
		0.241568, -0.934275, 0.262249,
		35.228214, 42.171841, 41.189510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379501, 42.714638, 40.321247>,  <35.059116, 42.825832, 41.005936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379501, 42.714638, 40.321247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386040, 42.364239, 40.514061>,  <35.389961, 42.153999, 40.629749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386040, 42.364239, 40.514061>,  <35.379501, 42.714638, 40.321247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386040, 42.364239, 40.514061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123043, -0.476675, -0.870426,
		0.992267, 0.073536, 0.099995,
		0.016343, -0.875998, 0.482037,
		35.390942, 42.101440, 40.658672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993046, 42.321411, 40.227055>,  <35.379501, 42.714638, 40.321247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993046, 42.321411, 40.227055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737865, 42.041534, 40.355705>,  <35.584755, 41.873608, 40.432896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737865, 42.041534, 40.355705>,  <35.993046, 42.321411, 40.227055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737865, 42.041534, 40.355705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304564, -0.612853, -0.729145,
		0.707286, -0.367207, 0.604074,
		-0.637956, -0.699693, 0.321624,
		35.546478, 41.831627, 40.452194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333153, 41.697147, 40.173309>,  <35.993046, 42.321411, 40.227055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333153, 41.697147, 40.173309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949409, 41.584503, 40.166149>,  <35.719162, 41.516918, 40.161854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949409, 41.584503, 40.166149>,  <36.333153, 41.697147, 40.173309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949409, 41.584503, 40.166149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203989, -0.648319, -0.733533,
		0.194967, -0.707375, 0.679418,
		-0.959362, -0.281609, -0.017896,
		35.661602, 41.500019, 40.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342690, 40.907009, 40.232738>,  <36.333153, 41.697147, 40.173309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342690, 40.907009, 40.232738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026566, 41.068394, 40.048290>,  <35.836891, 41.165226, 39.937622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026566, 41.068394, 40.048290>,  <36.342690, 40.907009, 40.232738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026566, 41.068394, 40.048290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091767, -0.666157, -0.740144,
		-0.605802, -0.627256, 0.489443,
		-0.790306, 0.403466, -0.461121,
		35.789474, 41.189434, 39.909954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006531, 40.358639, 39.986839>,  <36.342690, 40.907009, 40.232738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006531, 40.358639, 39.986839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868309, 40.659267, 39.762081>,  <35.785378, 40.839645, 39.627224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868309, 40.659267, 39.762081>,  <36.006531, 40.358639, 39.986839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868309, 40.659267, 39.762081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032988, -0.588684, -0.807690,
		-0.937820, -0.297634, 0.178627,
		-0.345550, 0.751575, -0.561898,
		35.764645, 40.884739, 39.593513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397110, 40.030849, 39.527256>,  <36.006531, 40.358639, 39.986839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397110, 40.030849, 39.527256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455318, 40.382626, 39.345970>,  <35.490242, 40.593693, 39.237198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.455318, 40.382626, 39.345970>,  <35.397110, 40.030849, 39.527256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455318, 40.382626, 39.345970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190273, -0.424659, -0.885134,
		-0.970886, 0.215038, 0.105538,
		0.145520, 0.879445, -0.453211,
		35.498974, 40.646458, 39.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806210, 40.182781, 38.980026>,  <35.397110, 40.030849, 39.527256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806210, 40.182781, 38.980026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153244, 40.359890, 38.889481>,  <35.361465, 40.466156, 38.835152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153244, 40.359890, 38.889481>,  <34.806210, 40.182781, 38.980026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153244, 40.359890, 38.889481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014009, -0.433263, -0.901159,
		-0.497082, 0.785008, -0.369692,
		0.867591, 0.442770, -0.226364,
		35.413521, 40.492722, 38.821571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709457, 40.326435, 38.321407>,  <34.806210, 40.182781, 38.980026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709457, 40.326435, 38.321407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100204, 40.407837, 38.347672>,  <35.334652, 40.456676, 38.363430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100204, 40.407837, 38.347672>,  <34.709457, 40.326435, 38.321407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100204, 40.407837, 38.347672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123884, -0.288302, -0.949492,
		-0.174294, 0.935664, -0.306844,
		0.976870, 0.203504, 0.065665,
		35.393265, 40.468887, 38.367371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810516, 40.607838, 37.674950>,  <34.709457, 40.326435, 38.321407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810516, 40.607838, 37.674950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172459, 40.483074, 37.790844>,  <35.389626, 40.408218, 37.860378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172459, 40.483074, 37.790844>,  <34.810516, 40.607838, 37.674950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172459, 40.483074, 37.790844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198731, -0.292388, -0.935423,
		0.376479, 0.904004, -0.202584,
		0.904859, -0.311907, 0.289731,
		35.443916, 40.389503, 37.877762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331013, 40.892002, 37.167831>,  <34.810516, 40.607838, 37.674950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331013, 40.892002, 37.167831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516052, 40.590500, 37.354534>,  <35.627075, 40.409599, 37.466557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516052, 40.590500, 37.354534>,  <35.331013, 40.892002, 37.167831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516052, 40.590500, 37.354534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356671, -0.323770, -0.876332,
		0.811660, 0.571866, 0.119068,
		0.462594, -0.753752, 0.466759,
		35.654831, 40.364376, 37.494560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044147, 40.871765, 36.765621>,  <35.331013, 40.892002, 37.167831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044147, 40.871765, 36.765621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949638, 40.530273, 36.951233>,  <35.892933, 40.325378, 37.062599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949638, 40.530273, 36.951233>,  <36.044147, 40.871765, 36.765621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949638, 40.530273, 36.951233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204350, -0.510526, -0.835227,
		0.949956, -0.102518, 0.295083,
		-0.236273, -0.853729, 0.464028,
		35.878757, 40.274155, 37.090443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537708, 40.443550, 36.582634>,  <36.044147, 40.871765, 36.765621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537708, 40.443550, 36.582634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237427, 40.199566, 36.684135>,  <36.057259, 40.053177, 36.745037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237427, 40.199566, 36.684135>,  <36.537708, 40.443550, 36.582634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237427, 40.199566, 36.684135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226685, -0.598614, -0.768294,
		0.620525, -0.519243, 0.587653,
		-0.750708, -0.609957, 0.253750,
		36.012215, 40.016579, 36.760262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847786, 39.856617, 36.576038>,  <36.537708, 40.443550, 36.582634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847786, 39.856617, 36.576038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459885, 39.765289, 36.541519>,  <36.227142, 39.710491, 36.520805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459885, 39.765289, 36.541519>,  <36.847786, 39.856617, 36.576038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459885, 39.765289, 36.541519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206070, -0.576337, -0.790804,
		0.130821, -0.784668, 0.605955,
		-0.969753, -0.228324, -0.086300,
		36.168961, 39.696793, 36.515629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481358, 39.584248, 36.884644>,  <36.847786, 39.856617, 36.576038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481358, 39.584248, 36.884644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844364, 39.749683, 36.855396>,  <38.062168, 39.848946, 36.837849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844364, 39.749683, 36.855396>,  <37.481358, 39.584248, 36.884644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844364, 39.749683, 36.855396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209465, 0.596582, 0.774735,
		0.364047, -0.687772, 0.628044,
		0.907521, 0.413593, -0.073120,
		38.116619, 39.873760, 36.833462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758190, 39.587620, 37.523792>,  <37.481358, 39.584248, 36.884644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758190, 39.587620, 37.523792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957493, 39.880104, 37.337425>,  <38.077072, 40.055595, 37.225605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.957493, 39.880104, 37.337425>,  <37.758190, 39.587620, 37.523792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957493, 39.880104, 37.337425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154556, 0.603665, 0.782114,
		0.853146, -0.317680, 0.413790,
		0.498252, 0.731211, -0.465915,
		38.106968, 40.099468, 37.197651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356064, 39.807606, 37.871456>,  <37.758190, 39.587620, 37.523792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356064, 39.807606, 37.871456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273930, 40.126965, 37.645042>,  <38.224648, 40.318581, 37.509193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273930, 40.126965, 37.645042>,  <38.356064, 39.807606, 37.871456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273930, 40.126965, 37.645042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033200, 0.583711, 0.811283,
		0.978128, 0.147793, -0.146363,
		-0.205336, 0.798398, -0.566037,
		38.212330, 40.366486, 37.475231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806862, 40.217392, 38.146542>,  <38.356064, 39.807606, 37.871456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806862, 40.217392, 38.146542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590321, 40.496128, 37.958347>,  <38.460396, 40.663368, 37.845432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590321, 40.496128, 37.958347>,  <38.806862, 40.217392, 38.146542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590321, 40.496128, 37.958347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028384, 0.574397, 0.818085,
		0.840317, 0.429518, -0.330730,
		-0.541353, 0.696837, -0.470484,
		38.427914, 40.705181, 37.817204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138664, 40.808372, 38.303699>,  <38.806862, 40.217392, 38.146542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138664, 40.808372, 38.303699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777576, 40.940975, 38.194012>,  <38.560925, 41.020535, 38.128201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777576, 40.940975, 38.194012>,  <39.138664, 40.808372, 38.303699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777576, 40.940975, 38.194012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056811, 0.539954, 0.839775,
		0.426455, 0.773663, -0.468596,
		-0.902723, 0.331505, -0.274219,
		38.506760, 41.040428, 38.111748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156246, 41.528259, 38.234119>,  <39.138664, 40.808372, 38.303699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156246, 41.528259, 38.234119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773918, 41.436615, 38.307777>,  <38.544521, 41.381630, 38.351971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773918, 41.436615, 38.307777>,  <39.156246, 41.528259, 38.234119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773918, 41.436615, 38.307777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014305, 0.661990, 0.749376,
		-0.293591, 0.713638, -0.636023,
		-0.955824, -0.229108, 0.184146,
		38.487171, 41.367882, 38.363022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849602, 42.103943, 38.315933>,  <39.156246, 41.528259, 38.234119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849602, 42.103943, 38.315933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587368, 41.855721, 38.488037>,  <38.430027, 41.706787, 38.591301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587368, 41.855721, 38.488037>,  <38.849602, 42.103943, 38.315933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587368, 41.855721, 38.488037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111034, 0.642814, 0.757932,
		-0.746914, 0.449116, -0.490321,
		-0.655585, -0.620552, 0.430260,
		38.390694, 41.669556, 38.617115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408554, 42.509560, 38.678780>,  <38.849602, 42.103943, 38.315933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408554, 42.509560, 38.678780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308292, 42.170792, 38.866352>,  <38.248135, 41.967529, 38.978897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308292, 42.170792, 38.866352>,  <38.408554, 42.509560, 38.678780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308292, 42.170792, 38.866352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097687, 0.504049, 0.858132,
		-0.963135, 0.169286, -0.209075,
		-0.250654, -0.846922, 0.468931,
		38.233097, 41.916714, 39.007030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710480, 42.607872, 39.125610>,  <38.408554, 42.509560, 38.678780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710480, 42.607872, 39.125610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918789, 42.300526, 39.274422>,  <38.043774, 42.116116, 39.363708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.918789, 42.300526, 39.274422>,  <37.710480, 42.607872, 39.125610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918789, 42.300526, 39.274422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029433, 0.419367, 0.907339,
		-0.853188, -0.483467, 0.195780,
		0.520773, -0.768369, 0.372029,
		38.075020, 42.070015, 39.386032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345928, 42.348068, 39.690243>,  <37.710480, 42.607872, 39.125610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345928, 42.348068, 39.690243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729816, 42.242558, 39.728935>,  <37.960148, 42.179253, 39.752151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729816, 42.242558, 39.728935>,  <37.345928, 42.348068, 39.690243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729816, 42.242558, 39.728935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007226, 0.320997, 0.947053,
		-0.280860, -0.909606, 0.306161,
		0.959721, -0.263777, 0.096728,
		38.017735, 42.163425, 39.757954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380974, 42.199692, 40.371563>,  <37.345928, 42.348068, 39.690243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380974, 42.199692, 40.371563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774651, 42.234207, 40.309704>,  <38.010857, 42.254917, 40.272591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774651, 42.234207, 40.309704>,  <37.380974, 42.199692, 40.371563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774651, 42.234207, 40.309704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100663, 0.445861, 0.889424,
		0.145699, -0.890933, 0.430128,
		0.984194, 0.086290, -0.154646,
		38.069908, 42.260094, 40.263309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650146, 41.907566, 40.898174>,  <37.380974, 42.199692, 40.371563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650146, 41.907566, 40.898174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942451, 42.134815, 40.746792>,  <38.117832, 42.271164, 40.655964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.942451, 42.134815, 40.746792>,  <37.650146, 41.907566, 40.898174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942451, 42.134815, 40.746792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265831, 0.273800, 0.924320,
		0.628749, -0.776059, 0.049057,
		0.730759, 0.568124, -0.378452,
		38.161678, 42.305252, 40.633255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177345, 41.678818, 41.316311>,  <37.650146, 41.907566, 40.898174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177345, 41.678818, 41.316311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238445, 42.034950, 41.144737>,  <38.275105, 42.248631, 41.041794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238445, 42.034950, 41.144737>,  <38.177345, 41.678818, 41.316311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238445, 42.034950, 41.144737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120901, 0.413933, 0.902243,
		0.980842, -0.189674, -0.044414,
		0.152748, 0.890327, -0.428935,
		38.284271, 42.302048, 41.016056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821243, 41.814404, 41.470066>,  <38.177345, 41.678818, 41.316311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821243, 41.814404, 41.470066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659451, 42.172741, 41.396454>,  <38.562374, 42.387741, 41.352287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659451, 42.172741, 41.396454>,  <38.821243, 41.814404, 41.470066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659451, 42.172741, 41.396454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012008, 0.206407, 0.978393,
		0.914468, 0.393530, -0.094245,
		-0.404479, 0.895841, -0.184027,
		38.538105, 42.441494, 41.341248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325256, 42.258183, 41.827488>,  <38.821243, 41.814404, 41.470066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325256, 42.258183, 41.827488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987045, 42.466389, 41.779911>,  <38.784119, 42.591312, 41.751366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987045, 42.466389, 41.779911>,  <39.325256, 42.258183, 41.827488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987045, 42.466389, 41.779911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077340, 0.339816, 0.937307,
		0.528298, 0.783321, -0.327580,
		-0.845529, 0.520512, -0.118942,
		38.733387, 42.622543, 41.744228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522728, 42.928341, 42.010761>,  <39.325256, 42.258183, 41.827488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522728, 42.928341, 42.010761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123333, 42.941849, 42.028126>,  <38.883698, 42.949955, 42.038544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123333, 42.941849, 42.028126>,  <39.522728, 42.928341, 42.010761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123333, 42.941849, 42.028126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051939, 0.319246, 0.946248,
		0.018097, 0.947070, -0.320516,
		-0.998486, 0.033771, 0.043412,
		38.823788, 42.951981, 42.041149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457150, 43.442570, 42.425423>,  <39.522728, 42.928341, 42.010761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457150, 43.442570, 42.425423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 43.287388, 42.436234>,  <38.867531, 43.194279, 42.442719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 43.287388, 42.436234>,  <39.457150, 43.442570, 42.425423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088638, 43.287388, 42.436234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083267, 0.264671, 0.960737,
		-0.379875, 0.882859, -0.276141,
		-0.921282, -0.387954, 0.027029,
		38.812252, 43.171001, 42.444344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001030, 43.999302, 42.654228>,  <39.457150, 43.442570, 42.425423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001030, 43.999302, 42.654228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840328, 43.640965, 42.730171>,  <38.743908, 43.425961, 42.775738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840328, 43.640965, 42.730171>,  <39.001030, 43.999302, 42.654228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840328, 43.640965, 42.730171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331158, 0.335428, 0.881942,
		-0.853771, 0.291452, -0.431428,
		-0.401757, -0.895848, 0.189862,
		38.719803, 43.372211, 42.787128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.331917, 44.139000, 42.940235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396656, 43.757339, 43.040958>,  <38.435497, 43.528343, 43.101391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396656, 43.757339, 43.040958>,  <38.331917, 44.139000, 42.940235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396656, 43.757339, 43.040958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270765, 0.202437, 0.941119,
		-0.948943, -0.220494, -0.225588,
		0.161843, -0.954150, 0.251804,
		38.445210, 43.471096, 43.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758465, 43.975277, 43.398354>,  <38.331917, 44.139000, 42.940235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758465, 43.975277, 43.398354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011723, 43.673424, 43.467243>,  <38.163677, 43.492313, 43.508575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011723, 43.673424, 43.467243>,  <37.758465, 43.975277, 43.398354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011723, 43.673424, 43.467243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306849, -0.040430, 0.950899,
		-0.710618, -0.654899, -0.257156,
		0.633140, -0.754634, 0.172225,
		38.201664, 43.447033, 43.518909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365723, 43.469669, 43.791615>,  <37.758465, 43.975277, 43.398354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365723, 43.469669, 43.791615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753799, 43.421402, 43.875675>,  <37.986645, 43.392441, 43.926109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753799, 43.421402, 43.875675>,  <37.365723, 43.469669, 43.791615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753799, 43.421402, 43.875675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209557, 0.017710, 0.977636,
		-0.121693, -0.992535, -0.008105,
		0.970194, -0.120670, 0.210148,
		38.044857, 43.385201, 43.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402142, 42.961494, 44.325466>,  <37.365723, 43.469669, 43.791615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402142, 42.961494, 44.325466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724449, 43.198170, 44.335552>,  <37.917835, 43.340176, 44.341606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724449, 43.198170, 44.335552>,  <37.402142, 42.961494, 44.325466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724449, 43.198170, 44.335552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135444, 0.142661, 0.980461,
		0.576533, -0.793441, 0.195093,
		0.805769, 0.591692, 0.025218,
		37.966179, 43.375679, 44.343117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753315, 42.801071, 45.004280>,  <37.402142, 42.961494, 44.325466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753315, 42.801071, 45.004280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922684, 43.140160, 44.876476>,  <38.024303, 43.343613, 44.799793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922684, 43.140160, 44.876476>,  <37.753315, 42.801071, 45.004280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922684, 43.140160, 44.876476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010302, 0.357169, 0.933983,
		0.905876, -0.392173, 0.159965,
		0.423417, 0.847721, -0.319510,
		38.049709, 43.394474, 44.780624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303234, 42.898388, 45.392010>,  <37.753315, 42.801071, 45.004280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303234, 42.898388, 45.392010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239471, 43.274673, 45.272243>,  <38.201214, 43.500446, 45.200382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239471, 43.274673, 45.272243>,  <38.303234, 42.898388, 45.392010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239471, 43.274673, 45.272243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129107, 0.320553, 0.938390,
		0.978734, 0.110930, -0.172551,
		-0.159407, 0.940712, -0.299415,
		38.191650, 43.556889, 45.182419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609398, 43.194801, 45.916008>,  <38.303234, 42.898388, 45.392010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609398, 43.194801, 45.916008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445614, 43.513103, 45.737514>,  <38.347343, 43.704082, 45.630417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445614, 43.513103, 45.737514>,  <38.609398, 43.194801, 45.916008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445614, 43.513103, 45.737514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027678, 0.478057, 0.877892,
		0.911910, 0.371809, -0.173718,
		-0.409456, 0.795751, -0.446236,
		38.322777, 43.751827, 45.603645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945431, 43.834908, 46.094631>,  <38.609398, 43.194801, 45.916008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945431, 43.834908, 46.094631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577591, 43.936790, 45.974995>,  <38.356888, 43.997921, 45.903214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.577591, 43.936790, 45.974995>,  <38.945431, 43.834908, 46.094631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577591, 43.936790, 45.974995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140479, 0.497785, 0.855848,
		0.366875, 0.829056, -0.421983,
		-0.919602, 0.254709, -0.299090,
		38.301712, 44.013203, 45.885269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758751, 44.606052, 46.201469>,  <38.945431, 43.834908, 46.094631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758751, 44.606052, 46.201469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407421, 44.414921, 46.195530>,  <38.196621, 44.300243, 46.191967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407421, 44.414921, 46.195530>,  <38.758751, 44.606052, 46.201469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407421, 44.414921, 46.195530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203614, 0.345812, 0.915945,
		-0.432529, 0.807523, -0.401029,
		-0.878328, -0.477828, -0.014849,
		38.143921, 44.271572, 46.191074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132977, 45.056866, 46.361473>,  <38.758751, 44.606052, 46.201469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132977, 45.056866, 46.361473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026291, 44.682514, 46.453556>,  <37.962280, 44.457905, 46.508808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026291, 44.682514, 46.453556>,  <38.132977, 45.056866, 46.361473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026291, 44.682514, 46.453556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195148, 0.286357, 0.938039,
		-0.943811, 0.205265, -0.259010,
		-0.266716, -0.935877, 0.230210,
		37.946278, 44.401752, 46.522617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609566, 45.206127, 46.693813>,  <38.132977, 45.056866, 46.361473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609566, 45.206127, 46.693813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697090, 44.827274, 46.787682>,  <37.749603, 44.599964, 46.844002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697090, 44.827274, 46.787682>,  <37.609566, 45.206127, 46.693813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697090, 44.827274, 46.787682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279082, 0.169708, 0.945152,
		-0.935006, -0.272302, -0.227192,
		0.218810, -0.947128, 0.234673,
		37.762733, 44.543137, 46.858082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142323, 45.012249, 47.152351>,  <37.609566, 45.206127, 46.693813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142323, 45.012249, 47.152351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392681, 44.701889, 47.183952>,  <37.542896, 44.515675, 47.202911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392681, 44.701889, 47.183952>,  <37.142323, 45.012249, 47.152351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392681, 44.701889, 47.183952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125602, -0.000305, 0.992081,
		-0.769728, -0.630860, -0.097645,
		0.625893, -0.775897, 0.079002,
		37.580448, 44.469120, 47.207653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858143, 44.491444, 47.535500>,  <37.142323, 45.012249, 47.152351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858143, 44.491444, 47.535500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249729, 44.421001, 47.576710>,  <37.484680, 44.378738, 47.601437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249729, 44.421001, 47.576710>,  <36.858143, 44.491444, 47.535500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249729, 44.421001, 47.576710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103041, 0.009104, 0.994635,
		-0.176098, -0.984329, -0.009233,
		0.978965, -0.176105, 0.103029,
		37.543419, 44.368172, 47.607620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981533, 43.923698, 47.993053>,  <36.858143, 44.491444, 47.535500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981533, 43.923698, 47.993053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310688, 44.149277, 48.020844>,  <37.508179, 44.284622, 48.037518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310688, 44.149277, 48.020844>,  <36.981533, 43.923698, 47.993053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310688, 44.149277, 48.020844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082714, -0.002074, 0.996571,
		0.562155, -0.825810, 0.044940,
		0.822885, 0.563945, 0.069472,
		37.557552, 44.318459, 48.041683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257736, 43.852661, 48.664833>,  <36.981533, 43.923698, 47.993053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257736, 43.852661, 48.664833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488037, 44.164333, 48.565731>,  <37.626217, 44.351337, 48.506268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488037, 44.164333, 48.565731>,  <37.257736, 43.852661, 48.664833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488037, 44.164333, 48.565731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068320, 0.256116, 0.964229,
		0.814763, -0.572086, 0.094227,
		0.575754, 0.779181, -0.247759,
		37.660763, 44.398087, 48.491402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797501, 43.810268, 49.092968>,  <37.257736, 43.852661, 48.664833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797501, 43.810268, 49.092968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792381, 44.195793, 48.986454>,  <37.789310, 44.427109, 48.922546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792381, 44.195793, 48.986454>,  <37.797501, 43.810268, 49.092968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792381, 44.195793, 48.986454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138412, 0.265453, 0.954137,
		0.990292, -0.024642, -0.136802,
		-0.012803, 0.963809, -0.266287,
		37.788540, 44.484936, 48.906567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185925, 44.188992, 49.533878>,  <37.797501, 43.810268, 49.092968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185925, 44.188992, 49.533878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026474, 44.517143, 49.369888>,  <37.930805, 44.714035, 49.271496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026474, 44.517143, 49.369888>,  <38.185925, 44.188992, 49.533878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026474, 44.517143, 49.369888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029899, 0.435166, 0.899854,
		0.916627, 0.370961, -0.148939,
		-0.398624, 0.820377, -0.409976,
		37.906887, 44.763256, 49.246895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580887, 44.678692, 49.790352>,  <38.185925, 44.188992, 49.533878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580887, 44.678692, 49.790352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234749, 44.858459, 49.701622>,  <38.027065, 44.966320, 49.648384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234749, 44.858459, 49.701622>,  <38.580887, 44.678692, 49.790352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234749, 44.858459, 49.701622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033372, 0.389956, 0.920229,
		0.500067, 0.803717, -0.322448,
		-0.865344, 0.449415, -0.221826,
		37.975147, 44.993282, 49.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663898, 45.403828, 49.947647>,  <38.580887, 44.678692, 49.790352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663898, 45.403828, 49.947647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276268, 45.305176, 49.944553>,  <38.043690, 45.245983, 49.942699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276268, 45.305176, 49.944553>,  <38.663898, 45.403828, 49.947647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276268, 45.305176, 49.944553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124606, 0.462091, 0.878035,
		-0.212977, 0.851849, -0.478534,
		-0.969079, -0.246629, -0.007731,
		37.985546, 45.231186, 49.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453995, 45.839527, 50.475739>,  <38.663898, 45.403828, 49.947647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453995, 45.839527, 50.475739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138546, 45.602291, 50.410858>,  <37.949276, 45.459949, 50.371929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138546, 45.602291, 50.410858>,  <38.453995, 45.839527, 50.475739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138546, 45.602291, 50.410858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369426, 0.246161, 0.896063,
		-0.491523, 0.766579, -0.413234,
		-0.788625, -0.593095, -0.162200,
		37.901958, 45.424362, 50.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851398, 46.260620, 50.517376>,  <38.453995, 45.839527, 50.475739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851398, 46.260620, 50.517376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768269, 45.877583, 50.597195>,  <37.718391, 45.647758, 50.645084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768269, 45.877583, 50.597195>,  <37.851398, 46.260620, 50.517376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768269, 45.877583, 50.597195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359483, 0.264492, 0.894883,
		-0.909715, 0.114244, -0.399207,
		-0.207822, -0.957597, 0.199543,
		37.705921, 45.590302, 50.657059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191448, 46.301136, 50.819118>,  <37.851398, 46.260620, 50.517376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191448, 46.301136, 50.819118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354576, 45.945801, 50.903526>,  <37.452454, 45.732597, 50.954170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354576, 45.945801, 50.903526>,  <37.191448, 46.301136, 50.819118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354576, 45.945801, 50.903526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380909, 0.044514, 0.923540,
		-0.829812, -0.457021, -0.320224,
		0.407823, -0.888341, 0.211022,
		37.476925, 45.679298, 50.966831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740501, 45.968307, 51.292004>,  <37.191448, 46.301136, 50.819118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740501, 45.968307, 51.292004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104038, 45.808357, 51.339497>,  <37.322163, 45.712387, 51.367992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104038, 45.808357, 51.339497>,  <36.740501, 45.968307, 51.292004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104038, 45.808357, 51.339497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172225, -0.100481, 0.979919,
		-0.379918, -0.911044, -0.160191,
		0.908846, -0.399877, 0.118730,
		37.376694, 45.688393, 51.375114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440506, 45.648876, 51.870277>,  <36.740501, 45.968307, 51.292004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440506, 45.648876, 51.870277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269199, 45.308304, 51.991379>,  <36.166416, 45.103962, 52.064037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.269199, 45.308304, 51.991379>,  <36.440506, 45.648876, 51.870277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269199, 45.308304, 51.991379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372175, -0.139105, -0.917680,
		0.823452, -0.505689, -0.257306,
		-0.428268, -0.851428, 0.302751,
		36.140720, 45.052876, 52.082203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467209, 45.283531, 51.241096>,  <36.440506, 45.648876, 51.870277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467209, 45.283531, 51.241096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190807, 45.107056, 51.470135>,  <36.024967, 45.001171, 51.607559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190807, 45.107056, 51.470135>,  <36.467209, 45.283531, 51.241096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190807, 45.107056, 51.470135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484302, -0.305492, -0.819833,
		0.536627, -0.843816, -0.002574,
		-0.691002, -0.441191, 0.572596,
		35.983505, 44.974697, 51.641914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500648, 44.540657, 51.178501>,  <36.467209, 45.283531, 51.241096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500648, 44.540657, 51.178501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134174, 44.670013, 51.273178>,  <35.914291, 44.747627, 51.329987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134174, 44.670013, 51.273178>,  <36.500648, 44.540657, 51.178501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134174, 44.670013, 51.273178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369547, -0.453226, -0.811185,
		-0.155053, -0.830665, 0.534746,
		-0.916184, 0.323391, 0.236696,
		35.859318, 44.767033, 51.344185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024345, 43.966122, 51.088852>,  <36.500648, 44.540657, 51.178501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024345, 43.966122, 51.088852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789204, 44.289665, 51.083511>,  <35.648117, 44.483791, 51.080307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789204, 44.289665, 51.083511>,  <36.024345, 43.966122, 51.088852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789204, 44.289665, 51.083511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459059, -0.347127, -0.817782,
		-0.666102, -0.474608, 0.575374,
		-0.587854, 0.808857, -0.013349,
		35.612846, 44.532322, 51.079506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240894, 43.789974, 51.101830>,  <36.024345, 43.966122, 51.088852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240894, 43.789974, 51.101830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264950, 44.152122, 50.933693>,  <35.279381, 44.369411, 50.832809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.264950, 44.152122, 50.933693>,  <35.240894, 43.789974, 51.101830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264950, 44.152122, 50.933693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394071, -0.365367, -0.843335,
		-0.917111, 0.216360, 0.334808,
		0.060136, 0.905370, -0.420343,
		35.282990, 44.423733, 50.807590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589012, 43.982994, 50.856174>,  <35.240894, 43.789974, 51.101830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589012, 43.982994, 50.856174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818329, 44.238037, 50.650341>,  <34.955917, 44.391064, 50.526840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818329, 44.238037, 50.650341>,  <34.589012, 43.982994, 50.856174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818329, 44.238037, 50.650341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452387, -0.277307, -0.847612,
		-0.683141, 0.718718, 0.129468,
		0.573292, 0.637608, -0.514579,
		34.990318, 44.429321, 50.495968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198563, 44.264320, 50.174107>,  <34.589012, 43.982994, 50.856174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198563, 44.264320, 50.174107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549206, 44.414814, 50.054104>,  <34.759590, 44.505112, 49.982101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549206, 44.414814, 50.054104>,  <34.198563, 44.264320, 50.174107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549206, 44.414814, 50.054104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192119, -0.297965, -0.935044,
		-0.441188, 0.877305, -0.188917,
		0.876609, 0.376236, -0.300006,
		34.812187, 44.527683, 49.964104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055885, 44.700737, 49.515629>,  <34.198563, 44.264320, 50.174107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055885, 44.700737, 49.515629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443592, 44.602444, 49.520222>,  <34.676216, 44.543468, 49.522976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443592, 44.602444, 49.520222>,  <34.055885, 44.700737, 49.515629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443592, 44.602444, 49.520222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019864, -0.124694, -0.991996,
		0.245197, 0.961284, -0.125744,
		0.969270, -0.245732, 0.011479,
		34.734371, 44.528725, 49.523666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488056, 45.181602, 48.955761>,  <34.055885, 44.700737, 49.515629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488056, 45.181602, 48.955761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685928, 44.846340, 49.047661>,  <34.804653, 44.645184, 49.102802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.685928, 44.846340, 49.047661>,  <34.488056, 45.181602, 48.955761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685928, 44.846340, 49.047661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233351, -0.126558, -0.964122,
		0.837160, 0.530547, 0.132978,
		0.494683, -0.838154, 0.229753,
		34.834332, 44.594894, 49.116589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046635, 45.173847, 48.496330>,  <34.488056, 45.181602, 48.955761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046635, 45.173847, 48.496330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084454, 44.798130, 48.628265>,  <35.107147, 44.572701, 48.707428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.084454, 44.798130, 48.628265>,  <35.046635, 45.173847, 48.496330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084454, 44.798130, 48.628265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229717, -0.301799, -0.925283,
		0.968654, 0.163256, 0.187235,
		0.094550, -0.939290, 0.329842,
		35.112820, 44.516342, 48.727219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690121, 44.969910, 48.265064>,  <35.046635, 45.173847, 48.496330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690121, 44.969910, 48.265064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457455, 44.649502, 48.321686>,  <35.317856, 44.457256, 48.355659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.457455, 44.649502, 48.321686>,  <35.690121, 44.969910, 48.265064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457455, 44.649502, 48.321686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322246, -0.386696, -0.864074,
		0.746877, -0.456985, 0.483052,
		-0.581663, -0.801018, 0.141553,
		35.282955, 44.409195, 48.364151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093372, 44.529541, 48.064949>,  <35.690121, 44.969910, 48.265064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093372, 44.529541, 48.064949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739258, 44.343529, 48.063248>,  <35.526791, 44.231922, 48.062225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739258, 44.343529, 48.063248>,  <36.093372, 44.529541, 48.064949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739258, 44.343529, 48.063248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172006, -0.318916, -0.932044,
		0.432072, -0.825856, 0.362320,
		-0.885284, -0.465031, -0.004258,
		35.473671, 44.204018, 48.061970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212433, 43.925171, 47.751617>,  <36.093372, 44.529541, 48.064949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212433, 43.925171, 47.751617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814686, 43.961872, 47.730373>,  <35.576038, 43.983894, 47.717625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.814686, 43.961872, 47.730373>,  <36.212433, 43.925171, 47.751617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814686, 43.961872, 47.730373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003364, -0.473412, -0.880835,
		-0.105967, -0.876049, 0.470435,
		-0.994364, 0.091757, -0.053113,
		35.516376, 43.989399, 47.714439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017281, 43.245022, 47.579109>,  <36.212433, 43.925171, 47.751617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017281, 43.245022, 47.579109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701668, 43.469299, 47.478672>,  <35.512299, 43.603867, 47.418411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.701668, 43.469299, 47.478672>,  <36.017281, 43.245022, 47.579109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701668, 43.469299, 47.478672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054108, -0.343696, -0.937521,
		-0.611961, -0.753323, 0.240850,
		-0.789035, 0.560694, -0.251090,
		35.464958, 43.637508, 47.403347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644779, 42.782207, 47.075375>,  <36.017281, 43.245022, 47.579109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644779, 42.782207, 47.075375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511856, 43.153011, 47.005825>,  <35.432102, 43.375492, 46.964096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511856, 43.153011, 47.005825>,  <35.644779, 42.782207, 47.075375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511856, 43.153011, 47.005825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088732, -0.214260, -0.972738,
		-0.938988, -0.307818, 0.153455,
		-0.332306, 0.927006, -0.173874,
		35.412163, 43.431114, 46.953663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143929, 42.717625, 46.535366>,  <35.644779, 42.782207, 47.075375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143929, 42.717625, 46.535366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265656, 43.098286, 46.518646>,  <35.338692, 43.326683, 46.508614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265656, 43.098286, 46.518646>,  <35.143929, 42.717625, 46.535366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265656, 43.098286, 46.518646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126871, -0.002994, -0.991915,
		-0.944082, 0.307164, 0.119826,
		0.304322, 0.951652, -0.041796,
		35.356953, 43.383781, 46.506107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633530, 43.079109, 46.146481>,  <35.143929, 42.717625, 46.535366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633530, 43.079109, 46.146481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965260, 43.300289, 46.114307>,  <35.164299, 43.432999, 46.095005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965260, 43.300289, 46.114307>,  <34.633530, 43.079109, 46.146481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965260, 43.300289, 46.114307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160795, 0.098310, -0.982080,
		-0.535133, 0.827395, 0.170442,
		0.829323, 0.552950, -0.080432,
		35.214058, 43.466175, 46.090179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504608, 43.621689, 45.633518>,  <34.633530, 43.079109, 46.146481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504608, 43.621689, 45.633518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901440, 43.657932, 45.668304>,  <35.139538, 43.679676, 45.689175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.901440, 43.657932, 45.668304>,  <34.504608, 43.621689, 45.633518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901440, 43.657932, 45.668304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078588, 0.092210, -0.992633,
		-0.097956, 0.991609, 0.084359,
		0.992083, 0.090605, 0.086961,
		35.199066, 43.685112, 45.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672070, 44.152767, 45.128975>,  <34.504608, 43.621689, 45.633518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672070, 44.152767, 45.128975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986225, 43.919743, 45.212677>,  <35.174717, 43.779926, 45.262897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986225, 43.919743, 45.212677>,  <34.672070, 44.152767, 45.128975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986225, 43.919743, 45.212677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223418, -0.048477, -0.973516,
		0.577279, 0.811338, 0.092082,
		0.785387, -0.582563, 0.209253,
		35.221840, 43.744972, 45.275452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272953, 44.466640, 44.757969>,  <34.672070, 44.152767, 45.128975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272953, 44.466640, 44.757969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367908, 44.083023, 44.819794>,  <35.424881, 43.852852, 44.856888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.367908, 44.083023, 44.819794>,  <35.272953, 44.466640, 44.757969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367908, 44.083023, 44.819794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198157, -0.107959, -0.974207,
		0.950989, 0.261893, 0.164412,
		0.237388, -0.959040, 0.154564,
		35.439125, 43.795311, 44.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671780, 44.354874, 44.271576>,  <35.272953, 44.466640, 44.757969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671780, 44.354874, 44.271576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596024, 43.986496, 44.407803>,  <35.550568, 43.765469, 44.489540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596024, 43.986496, 44.407803>,  <35.671780, 44.354874, 44.271576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596024, 43.986496, 44.407803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062878, -0.334756, -0.940205,
		0.979886, -0.199483, 0.005493,
		-0.189393, -0.920948, 0.340566,
		35.539204, 43.710213, 44.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.556137, 42.679497, 30.710854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256397, 42.441814, 30.827744>,  <39.076553, 42.299206, 30.897879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256397, 42.441814, 30.827744>,  <39.556137, 42.679497, 30.710854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256397, 42.441814, 30.827744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482288, -0.187356, 0.855743,
		-0.453740, 0.782185, 0.426974,
		-0.749345, -0.594210, 0.292227,
		39.031593, 42.263550, 30.915411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513611, 42.686047, 31.381853>,  <39.556137, 42.679497, 30.710854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513611, 42.686047, 31.381853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360138, 42.333603, 31.271267>,  <39.268055, 42.122135, 31.204916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.360138, 42.333603, 31.271267>,  <39.513611, 42.686047, 31.381853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360138, 42.333603, 31.271267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531781, -0.455565, 0.713911,
		-0.754982, 0.126896, 0.643350,
		-0.383680, -0.881112, -0.276463,
		39.245033, 42.069271, 31.188328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366028, 42.386402, 31.967560>,  <39.513611, 42.686047, 31.381853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366028, 42.386402, 31.967560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406189, 42.080479, 31.713005>,  <39.430286, 41.896927, 31.560272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406189, 42.080479, 31.713005>,  <39.366028, 42.386402, 31.967560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406189, 42.080479, 31.713005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420063, -0.547232, 0.723936,
		-0.901923, -0.340010, 0.266322,
		0.100405, -0.764807, -0.636387,
		39.436310, 41.851036, 31.522089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049633, 41.803684, 32.331326>,  <39.366028, 42.386402, 31.967560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049633, 41.803684, 32.331326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273014, 41.628868, 32.049297>,  <39.407043, 41.523979, 31.880081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273014, 41.628868, 32.049297>,  <39.049633, 41.803684, 32.331326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273014, 41.628868, 32.049297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352612, -0.644277, 0.678654,
		-0.750861, -0.627613, -0.205693,
		0.558456, -0.437045, -0.705067,
		39.440552, 41.497753, 31.837778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972862, 41.125813, 32.562866>,  <39.049633, 41.803684, 32.331326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972862, 41.125813, 32.562866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307072, 41.166119, 32.346813>,  <39.507599, 41.190304, 32.217182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307072, 41.166119, 32.346813>,  <38.972862, 41.125813, 32.562866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307072, 41.166119, 32.346813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460352, -0.665034, 0.588053,
		-0.299950, -0.739984, -0.602041,
		0.835528, 0.100765, -0.540130,
		39.557732, 41.196346, 32.184772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252010, 40.573063, 32.662373>,  <38.972862, 41.125813, 32.562866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252010, 40.573063, 32.662373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578117, 40.732140, 32.493999>,  <39.773781, 40.827587, 32.392975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578117, 40.732140, 32.493999>,  <39.252010, 40.573063, 32.662373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578117, 40.732140, 32.493999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573857, -0.652303, 0.495165,
		-0.077650, -0.645245, -0.760019,
		0.815266, 0.397693, -0.420930,
		39.822697, 40.851448, 32.367722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601025, 40.084156, 32.321037>,  <39.252010, 40.573063, 32.662373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601025, 40.084156, 32.321037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881790, 40.363838, 32.375347>,  <40.050247, 40.531647, 32.407932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881790, 40.363838, 32.375347>,  <39.601025, 40.084156, 32.321037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881790, 40.363838, 32.375347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625199, -0.696140, 0.352868,
		0.341247, -0.162794, -0.925769,
		0.701910, 0.699205, 0.135777,
		40.092361, 40.573601, 32.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157764, 39.727295, 32.161964>,  <39.601025, 40.084156, 32.321037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157764, 39.727295, 32.161964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288563, 40.029160, 32.389496>,  <40.367043, 40.210278, 32.526012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288563, 40.029160, 32.389496>,  <40.157764, 39.727295, 32.161964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288563, 40.029160, 32.389496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447108, -0.653832, 0.610408,
		0.832566, 0.054722, -0.551217,
		0.327000, 0.754658, 0.568825,
		40.386662, 40.255558, 32.560143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733887, 39.472378, 32.407219>,  <40.157764, 39.727295, 32.161964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733887, 39.472378, 32.407219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643639, 39.785282, 32.639481>,  <40.589489, 39.973026, 32.778839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643639, 39.785282, 32.639481>,  <40.733887, 39.472378, 32.407219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643639, 39.785282, 32.639481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439660, -0.450117, 0.777234,
		0.869365, 0.430650, -0.242375,
		-0.225619, 0.782263, 0.580656,
		40.575954, 40.019962, 32.813679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414921, 39.826115, 32.614635>,  <40.733887, 39.472378, 32.407219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414921, 39.826115, 32.614635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.122002, 39.904930, 32.875378>,  <40.946251, 39.952221, 33.031822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.122002, 39.904930, 32.875378>,  <41.414921, 39.826115, 32.614635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122002, 39.904930, 32.875378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479628, -0.530291, 0.699106,
		0.483427, 0.824601, 0.293822,
		-0.732294, 0.197041, 0.651859,
		40.902313, 39.964043, 33.070934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766396, 39.964027, 33.183826>,  <41.414921, 39.826115, 32.614635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766396, 39.964027, 33.183826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409157, 39.897121, 33.350872>,  <41.194813, 39.856976, 33.451099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.409157, 39.897121, 33.350872>,  <41.766396, 39.964027, 33.183826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409157, 39.897121, 33.350872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430569, -0.586797, 0.685769,
		0.130347, 0.792269, 0.596087,
		-0.893096, -0.167268, 0.417614,
		41.141228, 39.846939, 33.476154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898304, 40.154137, 33.797260>,  <41.766396, 39.964027, 33.183826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898304, 40.154137, 33.797260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602470, 39.884918, 33.795025>,  <41.424973, 39.723389, 33.793686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602470, 39.884918, 33.795025>,  <41.898304, 40.154137, 33.797260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602470, 39.884918, 33.795025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500096, -0.555052, 0.664697,
		-0.450470, 0.488804, 0.747093,
		-0.739581, -0.673044, -0.005585,
		41.380596, 39.683006, 33.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738754, 39.978619, 34.588928>,  <41.898304, 40.154137, 33.797260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738754, 39.978619, 34.588928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588547, 39.711426, 34.331932>,  <41.498421, 39.551109, 34.177734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588547, 39.711426, 34.331932>,  <41.738754, 39.978619, 34.588928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588547, 39.711426, 34.331932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416903, -0.740872, 0.526594,
		-0.827754, -0.070109, 0.556694,
		-0.375519, -0.667978, -0.642488,
		41.475891, 39.511032, 34.139187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811481, 39.399872, 35.008980>,  <41.738754, 39.978619, 34.588928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811481, 39.399872, 35.008980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720737, 39.210148, 34.668732>,  <41.666290, 39.096313, 34.464581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720737, 39.210148, 34.668732>,  <41.811481, 39.399872, 35.008980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720737, 39.210148, 34.668732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468587, -0.818819, 0.331605,
		-0.853792, -0.323363, 0.408015,
		-0.226862, -0.474312, -0.850625,
		41.652679, 39.067856, 34.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638474, 38.750431, 35.186729>,  <41.811481, 39.399872, 35.008980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638474, 38.750431, 35.186729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731937, 38.706696, 34.800270>,  <41.788017, 38.680454, 34.568394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.731937, 38.706696, 34.800270>,  <41.638474, 38.750431, 35.186729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731937, 38.706696, 34.800270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236923, -0.957305, 0.165637,
		-0.943012, -0.267606, -0.197778,
		0.233660, -0.109339, -0.966151,
		41.802036, 38.673893, 34.510426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324181, 38.180912, 34.989590>,  <41.638474, 38.750431, 35.186729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324181, 38.180912, 34.989590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632114, 38.233227, 34.739712>,  <41.816875, 38.264618, 34.589787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632114, 38.233227, 34.739712>,  <41.324181, 38.180912, 34.989590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632114, 38.233227, 34.739712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278992, -0.949273, 0.145065,
		-0.574033, -0.285962, -0.767275,
		0.769837, 0.130792, -0.624695,
		41.863064, 38.272465, 34.552303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348053, 37.601723, 34.625118>,  <41.324181, 38.180912, 34.989590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348053, 37.601723, 34.625118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716759, 37.728935, 34.536381>,  <41.937981, 37.805264, 34.483139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.716759, 37.728935, 34.536381>,  <41.348053, 37.601723, 34.625118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716759, 37.728935, 34.536381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307757, -0.948064, -0.080382,
		-0.235889, 0.005818, -0.971763,
		0.921760, 0.318028, -0.221847,
		41.993286, 37.824345, 34.469826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564728, 37.126610, 34.189865>,  <41.348053, 37.601723, 34.625118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564728, 37.126610, 34.189865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886723, 37.308926, 34.341789>,  <42.079918, 37.418316, 34.432945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886723, 37.308926, 34.341789>,  <41.564728, 37.126610, 34.189865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886723, 37.308926, 34.341789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434908, -0.888758, 0.144791,
		0.403555, 0.048629, -0.913662,
		0.804983, 0.455790, 0.379811,
		42.128216, 37.445663, 34.455734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149300, 36.752575, 33.986107>,  <41.564728, 37.126610, 34.189865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149300, 36.752575, 33.986107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302666, 36.962391, 34.290173>,  <42.394688, 37.088280, 34.472610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302666, 36.962391, 34.290173>,  <42.149300, 36.752575, 33.986107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302666, 36.962391, 34.290173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577532, -0.778464, 0.245866,
		0.720727, 0.344750, -0.601414,
		0.383417, 0.524539, 0.760165,
		42.417690, 37.119751, 34.518223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801975, 36.718189, 33.910709>,  <42.149300, 36.752575, 33.986107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801975, 36.718189, 33.910709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.786835, 36.807076, 34.300415>,  <42.777752, 36.860405, 34.534237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.786835, 36.807076, 34.300415>,  <42.801975, 36.718189, 33.910709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786835, 36.807076, 34.300415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681913, -0.706931, 0.187732,
		0.730453, 0.671468, -0.124773,
		-0.037850, 0.222213, 0.974263,
		42.775478, 36.873741, 34.592693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492783, 36.776154, 34.179161>,  <42.801975, 36.718189, 33.910709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492783, 36.776154, 34.179161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297401, 36.719318, 34.523537>,  <43.180172, 36.685215, 34.730164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297401, 36.719318, 34.523537>,  <43.492783, 36.776154, 34.179161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297401, 36.719318, 34.523537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623533, -0.747055, 0.230465,
		0.610425, 0.649398, 0.453500,
		-0.488454, -0.142091, 0.860943,
		43.150864, 36.676693, 34.781818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954113, 36.840088, 34.749409>,  <43.492783, 36.776154, 34.179161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954113, 36.840088, 34.749409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644577, 36.609135, 34.853558>,  <43.458855, 36.470562, 34.916046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644577, 36.609135, 34.853558>,  <43.954113, 36.840088, 34.749409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644577, 36.609135, 34.853558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607595, -0.792811, 0.047729,
		0.178872, 0.195138, 0.964327,
		-0.773843, -0.577383, 0.260376,
		43.412426, 36.435921, 34.931671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682701, 37.032906, 34.554489>,  <43.954113, 36.840088, 34.749409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682701, 37.032906, 34.554489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917126, 36.882671, 34.267307>,  <45.057781, 36.792530, 34.094997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917126, 36.882671, 34.267307>,  <44.682701, 37.032906, 34.554489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917126, 36.882671, 34.267307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386188, 0.649482, -0.655006,
		0.712311, 0.661143, 0.235592,
		0.586065, -0.375585, -0.717958,
		45.092945, 36.769997, 34.051918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882622, 37.586189, 34.252453>,  <44.682701, 37.032906, 34.554489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882622, 37.586189, 34.252453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952423, 37.292736, 33.989750>,  <44.994305, 37.116665, 33.832127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952423, 37.292736, 33.989750>,  <44.882622, 37.586189, 34.252453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952423, 37.292736, 33.989750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443768, 0.536817, -0.717563,
		0.878987, 0.416665, -0.231887,
		0.174503, -0.733633, -0.656758,
		45.004772, 37.072647, 33.792721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186188, 37.849056, 33.550293>,  <44.882622, 37.586189, 34.252453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186188, 37.849056, 33.550293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022896, 37.498688, 33.447441>,  <44.924919, 37.288467, 33.385731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022896, 37.498688, 33.447441>,  <45.186188, 37.849056, 33.550293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022896, 37.498688, 33.447441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490626, 0.448049, -0.747354,
		0.769827, -0.178939, -0.612655,
		-0.408231, -0.875918, -0.257128,
		44.900425, 37.235912, 33.370304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246586, 37.926582, 32.844967>,  <45.186188, 37.849056, 33.550293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246586, 37.926582, 32.844967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977585, 37.642231, 32.927322>,  <44.816185, 37.471619, 32.976734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977585, 37.642231, 32.927322>,  <45.246586, 37.926582, 32.844967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977585, 37.642231, 32.927322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541283, 0.282718, -0.791886,
		0.504729, -0.643987, -0.574916,
		-0.672503, -0.710880, 0.205884,
		44.775833, 37.428967, 32.989086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104298, 37.430138, 32.253426>,  <45.246586, 37.926582, 32.844967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104298, 37.430138, 32.253426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784283, 37.410275, 32.492580>,  <44.592274, 37.398357, 32.636074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.784283, 37.410275, 32.492580>,  <45.104298, 37.430138, 32.253426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784283, 37.410275, 32.492580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571950, 0.364025, -0.735092,
		-0.181143, -0.930064, -0.319636,
		-0.800038, -0.049659, 0.597890,
		44.544270, 37.395378, 32.671947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623363, 37.011436, 31.951523>,  <45.104298, 37.430138, 32.253426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623363, 37.011436, 31.951523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394741, 37.202854, 32.218151>,  <44.257568, 37.317703, 32.378128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394741, 37.202854, 32.218151>,  <44.623363, 37.011436, 31.951523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394741, 37.202854, 32.218151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665496, 0.204886, -0.717730,
		-0.480036, -0.853825, 0.201364,
		-0.571559, 0.478543, 0.666570,
		44.223274, 37.346416, 32.418121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949173, 36.800426, 31.763897>,  <44.623363, 37.011436, 31.951523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949173, 36.800426, 31.763897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881310, 37.123402, 31.989908>,  <43.840591, 37.317188, 32.125515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881310, 37.123402, 31.989908>,  <43.949173, 36.800426, 31.763897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881310, 37.123402, 31.989908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766527, 0.252230, -0.590606,
		-0.619397, -0.533309, 0.576134,
		-0.169657, 0.807442, 0.565026,
		43.830414, 37.365635, 32.159416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205807, 36.834354, 31.834600>,  <43.949173, 36.800426, 31.763897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205807, 36.834354, 31.834600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341919, 37.198673, 31.928116>,  <43.423588, 37.417263, 31.984224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341919, 37.198673, 31.928116>,  <43.205807, 36.834354, 31.834600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341919, 37.198673, 31.928116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778010, 0.412338, -0.474002,
		-0.528120, -0.020595, 0.848920,
		0.340280, 0.910798, 0.233787,
		43.444004, 37.471912, 31.998253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580330, 37.220753, 31.899237>,  <43.205807, 36.834354, 31.834600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580330, 37.220753, 31.899237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845539, 37.515381, 31.845762>,  <43.004665, 37.692158, 31.813679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.845539, 37.515381, 31.845762>,  <42.580330, 37.220753, 31.899237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845539, 37.515381, 31.845762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702262, 0.550132, -0.451866,
		-0.259285, 0.393478, 0.882012,
		0.663022, 0.736566, -0.133684,
		43.044445, 37.736351, 31.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190529, 37.762852, 32.076923>,  <42.580330, 37.220753, 31.899237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190529, 37.762852, 32.076923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473484, 37.909378, 31.835127>,  <42.643257, 37.997295, 31.690050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.473484, 37.909378, 31.835127>,  <42.190529, 37.762852, 32.076923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473484, 37.909378, 31.835127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630383, 0.713800, -0.305134,
		0.319708, 0.596909, 0.735858,
		0.707393, 0.366319, -0.604488,
		42.685703, 38.019272, 31.653780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194527, 38.544586, 32.118145>,  <42.190529, 37.762852, 32.076923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194527, 38.544586, 32.118145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361202, 38.442039, 31.769283>,  <42.461208, 38.380512, 31.559967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361202, 38.442039, 31.769283>,  <42.194527, 38.544586, 32.118145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361202, 38.442039, 31.769283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541812, 0.700338, -0.464722,
		0.729941, 0.666185, 0.152918,
		0.416685, -0.256367, -0.872152,
		42.486206, 38.365128, 31.507637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397659, 39.156769, 31.817196>,  <42.194527, 38.544586, 32.118145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397659, 39.156769, 31.817196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.353931, 38.902176, 31.511795>,  <42.327694, 38.749420, 31.328554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.353931, 38.902176, 31.511795>,  <42.397659, 39.156769, 31.817196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353931, 38.902176, 31.511795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446876, 0.717577, -0.534214,
		0.887892, 0.282794, -0.362872,
		-0.109316, -0.636483, -0.763504,
		42.321136, 38.711231, 31.282743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363609, 39.651588, 31.233282>,  <42.397659, 39.156769, 31.817196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363609, 39.651588, 31.233282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.242348, 39.303467, 31.078016>,  <42.169590, 39.094593, 30.984858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.242348, 39.303467, 31.078016>,  <42.363609, 39.651588, 31.233282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242348, 39.303467, 31.078016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734899, 0.472824, -0.486168,
		0.606646, 0.137876, -0.782924,
		-0.303155, -0.870303, -0.388162,
		42.151402, 39.042377, 30.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200134, 39.780731, 30.448364>,  <42.363609, 39.651588, 31.233282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200134, 39.780731, 30.448364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006966, 39.445965, 30.551401>,  <41.891064, 39.245106, 30.613224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006966, 39.445965, 30.551401>,  <42.200134, 39.780731, 30.448364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006966, 39.445965, 30.551401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874695, 0.447203, -0.186863,
		0.041193, -0.315554, -0.948013,
		-0.482920, -0.836920, 0.257591,
		41.862091, 39.194889, 30.628679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874969, 39.590702, 29.805973>,  <42.200134, 39.780731, 30.448364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874969, 39.590702, 29.805973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667896, 39.412418, 30.098093>,  <41.543652, 39.305447, 30.273365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.667896, 39.412418, 30.098093>,  <41.874969, 39.590702, 29.805973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667896, 39.412418, 30.098093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855215, 0.245012, -0.456701,
		0.024625, -0.860994, -0.508019,
		-0.517687, -0.445712, 0.730301,
		41.512589, 39.278706, 30.317183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343151, 39.248127, 29.451025>,  <41.874969, 39.590702, 29.805973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343151, 39.248127, 29.451025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218624, 39.303310, 29.827120>,  <41.143909, 39.336418, 30.052776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218624, 39.303310, 29.827120>,  <41.343151, 39.248127, 29.451025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218624, 39.303310, 29.827120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947493, 0.031008, -0.318270,
		-0.073063, -0.989953, 0.121061,
		-0.311318, 0.137958, 0.940239,
		41.125229, 39.344696, 30.109192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780731, 38.808651, 29.493704>,  <41.343151, 39.248127, 29.451025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780731, 38.808651, 29.493704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751385, 39.075695, 29.790058>,  <40.733776, 39.235920, 29.967871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751385, 39.075695, 29.790058>,  <40.780731, 38.808651, 29.493704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751385, 39.075695, 29.790058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931825, 0.218859, -0.289487,
		-0.355414, -0.711616, 0.606039,
		-0.073367, 0.667610, 0.740887,
		40.729374, 39.275978, 30.012323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137074, 38.789631, 29.716520>,  <40.780731, 38.808651, 29.493704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137074, 38.789631, 29.716520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236694, 39.144619, 29.871632>,  <40.296467, 39.357613, 29.964699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.236694, 39.144619, 29.871632>,  <40.137074, 38.789631, 29.716520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236694, 39.144619, 29.871632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928258, 0.332941, -0.165794,
		-0.276245, -0.318669, 0.906719,
		0.249050, 0.887469, 0.387780,
		40.311409, 39.410858, 29.987967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574554, 38.990875, 30.085236>,  <40.137074, 38.789631, 29.716520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574554, 38.990875, 30.085236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768284, 39.339428, 30.053942>,  <39.884521, 39.548561, 30.035166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.768284, 39.339428, 30.053942>,  <39.574554, 38.990875, 30.085236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768284, 39.339428, 30.053942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870805, 0.471496, -0.139247,
		-0.084450, 0.135568, 0.987162,
		0.484320, 0.871386, -0.078235,
		39.913578, 39.600845, 30.030472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244541, 39.460777, 30.529182>,  <39.574554, 38.990875, 30.085236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244541, 39.460777, 30.529182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.433109, 39.683044, 30.255249>,  <39.546249, 39.816402, 30.090889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.433109, 39.683044, 30.255249>,  <39.244541, 39.460777, 30.529182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433109, 39.683044, 30.255249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841569, 0.515612, -0.160952,
		0.263674, 0.652211, 0.710702,
		0.471421, 0.555666, -0.684834,
		39.574535, 39.849743, 30.049799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.150959, 43.055439, 40.186703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846893, 42.828892, 40.314060>,  <38.664455, 42.692963, 40.390476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846893, 42.828892, 40.314060>,  <39.150959, 43.055439, 40.186703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846893, 42.828892, 40.314060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075017, -0.563270, -0.822860,
		0.645385, -0.601624, 0.470665,
		-0.760165, -0.566370, 0.318394,
		38.618843, 42.658981, 40.409580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337395, 42.313313, 40.088326>,  <39.150959, 43.055439, 40.186703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337395, 42.313313, 40.088326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938915, 42.311478, 40.123104>,  <38.699825, 42.310375, 40.143970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938915, 42.311478, 40.123104>,  <39.337395, 42.313313, 40.088326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938915, 42.311478, 40.123104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064812, -0.627753, -0.775709,
		0.058146, -0.778399, 0.625071,
		-0.996202, -0.004592, 0.086951,
		38.640053, 42.310101, 40.149189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211193, 41.662052, 39.857880>,  <39.337395, 42.313313, 40.088326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211193, 41.662052, 39.857880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854340, 41.842350, 39.845718>,  <38.640228, 41.950527, 39.838421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854340, 41.842350, 39.845718>,  <39.211193, 41.662052, 39.857880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854340, 41.842350, 39.845718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185185, -0.426262, -0.885442,
		-0.412049, -0.784313, 0.463755,
		-0.892145, 0.450725, -0.030397,
		38.586700, 41.977573, 39.836597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862736, 41.113361, 39.778336>,  <39.211193, 41.662052, 39.857880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862736, 41.113361, 39.778336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626648, 41.417099, 39.668766>,  <38.484997, 41.599342, 39.603024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626648, 41.417099, 39.668766>,  <38.862736, 41.113361, 39.778336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626648, 41.417099, 39.668766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231796, -0.484462, -0.843545,
		-0.773247, -0.434383, 0.461953,
		-0.590220, 0.759347, -0.273920,
		38.449581, 41.644901, 39.586590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218369, 40.705833, 39.606441>,  <38.862736, 41.113361, 39.778336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218369, 40.705833, 39.606441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208359, 41.061684, 39.424042>,  <38.202354, 41.275196, 39.314602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208359, 41.061684, 39.424042>,  <38.218369, 40.705833, 39.606441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208359, 41.061684, 39.424042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234199, -0.448666, -0.862468,
		-0.971867, 0.085213, 0.219577,
		-0.025023, 0.889628, -0.456000,
		38.200851, 41.328571, 39.287243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517620, 40.977421, 39.278378>,  <38.218369, 40.705833, 39.606441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517620, 40.977421, 39.278378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779186, 41.184353, 39.057552>,  <37.936127, 41.308514, 38.925056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779186, 41.184353, 39.057552>,  <37.517620, 40.977421, 39.278378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779186, 41.184353, 39.057552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409450, -0.371607, -0.833222,
		-0.636199, 0.770895, -0.031178,
		0.653913, 0.517329, -0.552059,
		37.975361, 41.339550, 38.891933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285473, 41.059319, 38.623943>,  <37.517620, 40.977421, 39.278378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285473, 41.059319, 38.623943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 41.182934, 38.494877>,  <37.858044, 41.257103, 38.417435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643330, 41.182934, 38.494877>,  <37.285473, 41.059319, 38.623943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643330, 41.182934, 38.494877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117665, -0.533731, -0.837428,
		-0.431017, 0.787163, -0.441134,
		0.894639, 0.309040, -0.322668,
		37.911720, 41.275646, 38.398075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202286, 41.322208, 37.905800>,  <37.285473, 41.059319, 38.623943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202286, 41.322208, 37.905800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590385, 41.230980, 37.938282>,  <37.823246, 41.176243, 37.957771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590385, 41.230980, 37.938282>,  <37.202286, 41.322208, 37.905800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590385, 41.230980, 37.938282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024074, -0.424653, -0.905036,
		0.240893, 0.876159, -0.417511,
		0.970253, -0.228068, 0.081203,
		37.881462, 41.162560, 37.962643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502106, 41.483757, 37.290329>,  <37.202286, 41.322208, 37.905800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502106, 41.483757, 37.290329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789173, 41.247463, 37.437836>,  <37.961414, 41.105686, 37.526340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789173, 41.247463, 37.437836>,  <37.502106, 41.483757, 37.290329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789173, 41.247463, 37.437836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095595, -0.440966, -0.892418,
		0.689795, 0.675711, -0.259996,
		0.717666, -0.590731, 0.368770,
		38.004475, 41.070244, 37.548466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088165, 41.435978, 36.784340>,  <37.502106, 41.483757, 37.290329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088165, 41.435978, 36.784340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133579, 41.103699, 37.002350>,  <38.160828, 40.904331, 37.133156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133579, 41.103699, 37.002350>,  <38.088165, 41.435978, 36.784340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133579, 41.103699, 37.002350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366904, -0.474737, -0.800004,
		0.923304, 0.290801, 0.250886,
		0.113537, -0.830698, 0.545023,
		38.167641, 40.854488, 37.165855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609886, 41.049923, 36.466152>,  <38.088165, 41.435978, 36.784340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609886, 41.049923, 36.466152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474945, 40.753353, 36.698181>,  <38.393978, 40.575413, 36.837399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474945, 40.753353, 36.698181>,  <38.609886, 41.049923, 36.466152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474945, 40.753353, 36.698181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305307, -0.669058, -0.677606,
		0.890493, -0.051495, 0.452073,
		-0.337357, -0.741424, 0.580069,
		38.373737, 40.530926, 36.872204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176003, 40.624283, 36.577991>,  <38.609886, 41.049923, 36.466152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176003, 40.624283, 36.577991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841091, 40.413250, 36.635429>,  <38.640144, 40.286629, 36.669891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841091, 40.413250, 36.635429>,  <39.176003, 40.624283, 36.577991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841091, 40.413250, 36.635429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323051, -0.689210, -0.648558,
		0.441138, -0.496633, 0.747497,
		-0.837278, -0.527583, 0.143599,
		38.589909, 40.254974, 36.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370655, 39.924923, 36.801003>,  <39.176003, 40.624283, 36.577991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370655, 39.924923, 36.801003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008446, 39.923004, 36.631298>,  <38.791119, 39.921852, 36.529476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008446, 39.923004, 36.631298>,  <39.370655, 39.924923, 36.801003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008446, 39.923004, 36.631298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332840, -0.628165, -0.703297,
		-0.263132, -0.778065, 0.570417,
		-0.905527, -0.004798, -0.424261,
		38.736786, 39.921566, 36.504021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063583, 39.272198, 36.887695>,  <39.370655, 39.924923, 36.801003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063583, 39.272198, 36.887695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908615, 39.469486, 36.576149>,  <38.815632, 39.587860, 36.389221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908615, 39.469486, 36.576149>,  <39.063583, 39.272198, 36.887695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908615, 39.469486, 36.576149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256783, -0.753680, -0.605003,
		-0.885419, -0.434392, 0.165341,
		-0.387423, 0.493224, -0.778866,
		38.792389, 39.617455, 36.342487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571579, 38.733734, 37.197712>,  <39.063583, 39.272198, 36.887695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571579, 38.733734, 37.197712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792210, 38.406082, 37.260689>,  <39.924587, 38.209492, 37.298473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792210, 38.406082, 37.260689>,  <39.571579, 38.733734, 37.197712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792210, 38.406082, 37.260689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248059, 0.019127, 0.968556,
		-0.796384, -0.573289, -0.192643,
		0.551578, -0.819130, 0.157442,
		39.957684, 38.160343, 37.307922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219448, 38.223717, 37.522686>,  <39.571579, 38.733734, 37.197712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219448, 38.223717, 37.522686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598770, 38.116230, 37.590214>,  <39.826363, 38.051739, 37.630730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598770, 38.116230, 37.590214>,  <39.219448, 38.223717, 37.522686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598770, 38.116230, 37.590214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168553, 0.024256, 0.985394,
		-0.268889, -0.962913, -0.022291,
		0.948308, -0.268719, 0.168824,
		39.883263, 38.035614, 37.640862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244400, 37.519863, 37.945385>,  <39.219448, 38.223717, 37.522686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244400, 37.519863, 37.945385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571972, 37.739994, 38.010490>,  <39.768517, 37.872074, 38.049553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571972, 37.739994, 38.010490>,  <39.244400, 37.519863, 37.945385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571972, 37.739994, 38.010490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263889, 0.109257, 0.958345,
		0.509625, -0.827767, 0.234700,
		0.818929, 0.550331, 0.162759,
		39.817650, 37.905094, 38.059319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622078, 37.119263, 38.478512>,  <39.244400, 37.519863, 37.945385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622078, 37.119263, 38.478512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789139, 37.482597, 38.487438>,  <39.889374, 37.700596, 38.492794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789139, 37.482597, 38.487438>,  <39.622078, 37.119263, 38.478512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789139, 37.482597, 38.487438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112389, 0.027277, 0.993290,
		0.901630, -0.417357, 0.113479,
		0.417652, 0.908333, 0.022313,
		39.914433, 37.755096, 38.494133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142574, 36.960072, 38.858803>,  <39.622078, 37.119263, 38.478512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142574, 36.960072, 38.858803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122475, 37.358898, 38.881905>,  <40.110416, 37.598194, 38.895767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122475, 37.358898, 38.881905>,  <40.142574, 36.960072, 38.858803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122475, 37.358898, 38.881905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071248, -0.061259, 0.995576,
		0.996192, 0.045907, 0.074117,
		-0.050245, 0.997066, 0.057754,
		40.107403, 37.658016, 38.899231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463383, 37.167297, 39.541595>,  <40.142574, 36.960072, 38.858803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463383, 37.167297, 39.541595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290371, 37.517925, 39.457172>,  <40.186562, 37.728302, 39.406521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290371, 37.517925, 39.457172>,  <40.463383, 37.167297, 39.541595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290371, 37.517925, 39.457172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107159, 0.282403, 0.953292,
		0.895228, 0.389712, -0.216081,
		-0.432532, 0.876569, -0.211054,
		40.160610, 37.780895, 39.393856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845963, 37.657978, 39.776512>,  <40.463383, 37.167297, 39.541595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845963, 37.657978, 39.776512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504787, 37.866657, 39.769203>,  <40.300083, 37.991863, 39.764816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504787, 37.866657, 39.769203>,  <40.845963, 37.657978, 39.776512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504787, 37.866657, 39.769203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171690, 0.313412, 0.933968,
		0.492977, 0.793475, -0.356890,
		-0.852934, 0.521699, -0.018273,
		40.248909, 38.023167, 39.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025501, 38.252243, 40.114040>,  <40.845963, 37.657978, 39.776512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025501, 38.252243, 40.114040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625900, 38.246338, 40.130859>,  <40.386139, 38.242794, 40.140949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625900, 38.246338, 40.130859>,  <41.025501, 38.252243, 40.114040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625900, 38.246338, 40.130859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036492, 0.270473, 0.962036,
		-0.025577, 0.962614, -0.269665,
		-0.999007, -0.014765, 0.042045,
		40.326199, 38.241909, 40.143475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859131, 38.887775, 40.519348>,  <41.025501, 38.252243, 40.114040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859131, 38.887775, 40.519348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535065, 38.653694, 40.533028>,  <40.340626, 38.513245, 40.541237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535065, 38.653694, 40.533028>,  <40.859131, 38.887775, 40.519348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535065, 38.653694, 40.533028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135345, 0.243499, 0.960412,
		-0.570366, 0.773462, -0.276478,
		-0.810163, -0.585206, 0.034199,
		40.292015, 38.478134, 40.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363579, 39.324394, 40.700123>,  <40.859131, 38.887775, 40.519348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363579, 39.324394, 40.700123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280247, 38.948353, 40.808052>,  <40.230247, 38.722729, 40.872810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280247, 38.948353, 40.808052>,  <40.363579, 39.324394, 40.700123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280247, 38.948353, 40.808052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143152, 0.302212, 0.942431,
		-0.967525, 0.157713, -0.197538,
		-0.208332, -0.940103, 0.269821,
		40.217747, 38.666321, 40.889000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786980, 39.389076, 41.104408>,  <40.363579, 39.324394, 40.700123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786980, 39.389076, 41.104408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965420, 39.045692, 41.205627>,  <40.072483, 38.839661, 41.266361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965420, 39.045692, 41.205627>,  <39.786980, 39.389076, 41.104408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965420, 39.045692, 41.205627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187669, 0.186731, 0.964319,
		-0.875086, -0.477673, -0.077807,
		0.446100, -0.858464, 0.253051,
		40.099251, 38.788155, 41.281544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365757, 39.201679, 41.620235>,  <39.786980, 39.389076, 41.104408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365757, 39.201679, 41.620235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673595, 38.950726, 41.667751>,  <39.858299, 38.800152, 41.696262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673595, 38.950726, 41.667751>,  <39.365757, 39.201679, 41.620235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673595, 38.950726, 41.667751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113184, 0.049060, 0.992362,
		-0.628423, -0.777161, -0.033255,
		0.769593, -0.627387, 0.118793,
		39.904472, 38.762508, 41.703388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120922, 38.731525, 42.032410>,  <39.365757, 39.201679, 41.620235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120922, 38.731525, 42.032410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519741, 38.734230, 42.062988>,  <39.759033, 38.735851, 42.081337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519741, 38.734230, 42.062988>,  <39.120922, 38.731525, 42.032410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519741, 38.734230, 42.062988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076493, 0.006261, 0.997050,
		0.006261, -0.999958, 0.006760,
		-0.997050, -0.006760, -0.076451,
		39.818855, 38.736259, 42.085922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187489, 38.222916, 42.356323>,  <39.120922, 38.731525, 42.032410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187489, 38.222916, 42.356323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522274, 38.429646, 42.428295>,  <39.723145, 38.553684, 42.471478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522274, 38.429646, 42.428295>,  <39.187489, 38.222916, 42.356323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522274, 38.429646, 42.428295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331201, 0.216645, 0.918352,
		0.435650, -0.828223, 0.352499,
		0.836967, 0.516828, 0.179927,
		39.773365, 38.584694, 42.482273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222813, 37.573582, 42.550644>,  <39.187489, 38.222916, 42.356323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222813, 37.573582, 42.550644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971516, 37.295532, 42.690426>,  <38.820736, 37.128704, 42.774296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971516, 37.295532, 42.690426>,  <39.222813, 37.573582, 42.550644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971516, 37.295532, 42.690426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123827, -0.354094, -0.926976,
		0.768101, -0.625637, 0.136382,
		-0.628242, -0.695123, 0.349451,
		38.783043, 37.086994, 42.795261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304489, 37.010384, 42.228165>,  <39.222813, 37.573582, 42.550644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304489, 37.010384, 42.228165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933910, 36.936024, 42.359089>,  <38.711563, 36.891407, 42.437645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933910, 36.936024, 42.359089>,  <39.304489, 37.010384, 42.228165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933910, 36.936024, 42.359089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249686, -0.347214, -0.903935,
		0.281693, -0.919175, 0.275258,
		-0.926448, -0.185904, 0.327313,
		38.655975, 36.880253, 42.457283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171032, 36.266655, 41.966702>,  <39.304489, 37.010384, 42.228165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171032, 36.266655, 41.966702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828667, 36.460983, 42.037567>,  <38.623245, 36.577579, 42.080086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828667, 36.460983, 42.037567>,  <39.171032, 36.266655, 41.966702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828667, 36.460983, 42.037567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447225, -0.523435, -0.725262,
		-0.259612, -0.699996, 0.665287,
		-0.855915, 0.485820, 0.177165,
		38.571892, 36.606728, 42.090717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638336, 35.775471, 41.901608>,  <39.171032, 36.266655, 41.966702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638336, 35.775471, 41.901608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447365, 36.126465, 41.883343>,  <38.332783, 36.337063, 41.872383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447365, 36.126465, 41.883343>,  <38.638336, 35.775471, 41.901608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447365, 36.126465, 41.883343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567784, -0.347751, -0.746117,
		-0.670588, -0.330286, 0.664246,
		-0.477424, 0.877485, -0.045667,
		38.304138, 36.389709, 41.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878059, 35.630505, 41.897564>,  <38.638336, 35.775471, 41.901608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878059, 35.630505, 41.897564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933575, 35.993416, 41.738773>,  <37.966885, 36.211163, 41.643497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933575, 35.993416, 41.738773>,  <37.878059, 35.630505, 41.897564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933575, 35.993416, 41.738773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413963, -0.311006, -0.855517,
		-0.899652, 0.283065, 0.332416,
		0.138784, 0.907276, -0.396976,
		37.975208, 36.265598, 41.619682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426254, 35.707989, 41.401714>,  <37.878059, 35.630505, 41.897564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426254, 35.707989, 41.401714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651829, 36.016479, 41.283607>,  <37.787174, 36.201572, 41.212742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651829, 36.016479, 41.283607>,  <37.426254, 35.707989, 41.401714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651829, 36.016479, 41.283607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310646, -0.133175, -0.941150,
		-0.765160, 0.622477, 0.164475,
		0.563940, 0.771224, -0.295271,
		37.821011, 36.247849, 41.195026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988564, 36.087173, 40.911449>,  <37.426254, 35.707989, 41.401714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988564, 36.087173, 40.911449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365765, 36.205360, 40.850189>,  <37.592083, 36.276272, 40.813431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365765, 36.205360, 40.850189>,  <36.988564, 36.087173, 40.911449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365765, 36.205360, 40.850189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202759, 0.145148, -0.968412,
		-0.263900, 0.944263, 0.196782,
		0.942998, 0.295464, -0.153153,
		37.648663, 36.293999, 40.804245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875423, 36.625992, 40.435291>,  <36.988564, 36.087173, 40.911449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875423, 36.625992, 40.435291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248127, 36.484848, 40.401054>,  <37.471748, 36.400162, 40.380512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248127, 36.484848, 40.401054>,  <36.875423, 36.625992, 40.435291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248127, 36.484848, 40.401054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099176, -0.020564, -0.994857,
		0.349283, 0.935451, -0.054156,
		0.931754, -0.352857, -0.085591,
		37.527653, 36.378990, 40.375378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204151, 36.959812, 39.909760>,  <36.875423, 36.625992, 40.435291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204151, 36.959812, 39.909760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408722, 36.616337, 39.922974>,  <37.531464, 36.410252, 39.930901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408722, 36.616337, 39.922974>,  <37.204151, 36.959812, 39.909760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408722, 36.616337, 39.922974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092432, -0.093189, -0.991349,
		0.854342, 0.503948, -0.127030,
		0.511426, -0.858692, 0.033034,
		37.562149, 36.358730, 39.932884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631275, 37.015762, 39.244709>,  <37.204151, 36.959812, 39.909760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631275, 37.015762, 39.244709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672562, 36.639690, 39.374573>,  <37.697334, 36.414047, 39.452492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672562, 36.639690, 39.374573>,  <37.631275, 37.015762, 39.244709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672562, 36.639690, 39.374573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061572, -0.331820, -0.941331,
		0.992751, 0.077173, -0.092139,
		0.103219, -0.940181, 0.324663,
		37.703526, 36.357635, 39.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222294, 36.768677, 38.837959>,  <37.631275, 37.015762, 39.244709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222294, 36.768677, 38.837959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986782, 36.471786, 38.965984>,  <37.845474, 36.293652, 39.042797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986782, 36.471786, 38.965984>,  <38.222294, 36.768677, 38.837959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986782, 36.471786, 38.965984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274902, -0.188488, -0.942816,
		0.760112, -0.643093, -0.093063,
		-0.588777, -0.742229, 0.320059,
		37.810150, 36.249119, 39.062000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394489, 36.138565, 38.457031>,  <38.222294, 36.768677, 38.837959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394489, 36.138565, 38.457031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011375, 36.099525, 38.565189>,  <37.781506, 36.076103, 38.630085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011375, 36.099525, 38.565189>,  <38.394489, 36.138565, 38.457031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011375, 36.099525, 38.565189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224028, -0.336010, -0.914827,
		0.180143, -0.936788, 0.299962,
		-0.957789, -0.097600, 0.270396,
		37.724037, 36.070244, 38.646309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.026615, 37.764133, 46.674240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642448, 37.706886, 46.578651>,  <38.411949, 37.672539, 46.521297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642448, 37.706886, 46.578651>,  <39.026615, 37.764133, 46.674240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642448, 37.706886, 46.578651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277865, -0.552448, -0.785870,
		-0.019545, -0.821168, 0.570351,
		-0.960421, -0.143121, -0.238971,
		38.354321, 37.663952, 46.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921307, 36.932919, 46.430080>,  <39.026615, 37.764133, 46.674240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921307, 36.932919, 46.430080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626320, 37.154930, 46.276150>,  <38.449329, 37.288136, 46.183792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626320, 37.154930, 46.276150>,  <38.921307, 36.932919, 46.430080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626320, 37.154930, 46.276150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318742, -0.216325, -0.922826,
		-0.595443, -0.803209, -0.017380,
		-0.737462, 0.555030, -0.384826,
		38.405083, 37.321438, 46.160702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751495, 36.440449, 45.877777>,  <38.921307, 36.932919, 46.430080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751495, 36.440449, 45.877777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614231, 36.803852, 45.782406>,  <38.531872, 37.021896, 45.725182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.614231, 36.803852, 45.782406>,  <38.751495, 36.440449, 45.877777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614231, 36.803852, 45.782406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130321, -0.205334, -0.969976,
		-0.930192, -0.363930, -0.047935,
		-0.343161, 0.908511, -0.238428,
		38.511284, 37.076405, 45.710876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435410, 36.349689, 45.249969>,  <38.751495, 36.440449, 45.877777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435410, 36.349689, 45.249969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.443604, 36.749485, 45.259766>,  <38.448521, 36.989361, 45.265644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.443604, 36.749485, 45.259766>,  <38.435410, 36.349689, 45.249969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443604, 36.749485, 45.259766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084938, 0.022664, -0.996128,
		-0.996175, 0.022488, -0.084431,
		0.020488, 0.999490, 0.024488,
		38.449749, 37.049332, 45.267113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888988, 36.660465, 44.812847>,  <38.435410, 36.349689, 45.249969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888988, 36.660465, 44.812847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189987, 36.922871, 44.836155>,  <38.370586, 37.080315, 44.850140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189987, 36.922871, 44.836155>,  <37.888988, 36.660465, 44.812847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189987, 36.922871, 44.836155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085496, -0.009573, -0.996292,
		-0.653025, 0.754687, -0.063290,
		0.752495, 0.656015, 0.058271,
		38.415737, 37.119675, 44.853638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666412, 37.147984, 44.279076>,  <37.888988, 36.660465, 44.812847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666412, 37.147984, 44.279076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051666, 37.219944, 44.359077>,  <38.282818, 37.263123, 44.407078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051666, 37.219944, 44.359077>,  <37.666412, 37.147984, 44.279076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051666, 37.219944, 44.359077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163828, 0.197432, -0.966530,
		-0.213369, 0.963667, 0.160681,
		0.963137, 0.179904, 0.200001,
		38.340607, 37.273914, 44.419079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798519, 37.875381, 44.098526>,  <37.666412, 37.147984, 44.279076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798519, 37.875381, 44.098526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136555, 37.662209, 44.081539>,  <38.339375, 37.534306, 44.071346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136555, 37.662209, 44.081539>,  <37.798519, 37.875381, 44.098526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136555, 37.662209, 44.081539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085888, -0.056938, -0.994677,
		0.527682, 0.844238, -0.093890,
		0.845089, -0.532937, -0.042464,
		38.390083, 37.502327, 44.068798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950310, 37.797234, 43.372925>,  <37.798519, 37.875381, 44.098526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950310, 37.797234, 43.372925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235165, 37.549580, 43.505306>,  <38.406078, 37.400986, 43.584736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235165, 37.549580, 43.505306>,  <37.950310, 37.797234, 43.372925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235165, 37.549580, 43.505306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177004, -0.297843, -0.938061,
		0.679363, 0.726606, -0.102514,
		0.712134, -0.619139, 0.330956,
		38.448807, 37.363838, 43.604591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641788, 38.005280, 43.070080>,  <37.950310, 37.797234, 43.372925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641788, 38.005280, 43.070080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639076, 37.616283, 43.163216>,  <38.637447, 37.382885, 43.219097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639076, 37.616283, 43.163216>,  <38.641788, 38.005280, 43.070080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639076, 37.616283, 43.163216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098230, -0.232370, -0.967655,
		0.995141, 0.016310, 0.097104,
		-0.006782, -0.972491, 0.232843,
		38.637043, 37.324535, 43.233067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481529, 38.042900, 43.111515>,  <38.641788, 38.005280, 43.070080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481529, 38.042900, 43.111515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700310, 38.366318, 43.024708>,  <39.831577, 38.560368, 42.972622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700310, 38.366318, 43.024708>,  <39.481529, 38.042900, 43.111515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700310, 38.366318, 43.024708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127441, 0.336625, 0.932975,
		0.827410, -0.482631, 0.287159,
		0.546948, 0.808549, -0.217019,
		39.864395, 38.608883, 42.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781384, 38.065723, 43.703327>,  <39.481529, 38.042900, 43.111515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781384, 38.065723, 43.703327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828846, 38.420521, 43.524818>,  <39.857323, 38.633400, 43.417713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828846, 38.420521, 43.524818>,  <39.781384, 38.065723, 43.703327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828846, 38.420521, 43.524818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042785, 0.453598, 0.890179,
		0.992014, -0.086529, 0.091771,
		0.118653, 0.886996, -0.446273,
		39.864441, 38.686619, 43.390938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133926, 38.303478, 44.171768>,  <39.781384, 38.065723, 43.703327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133926, 38.303478, 44.171768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005142, 38.612663, 43.953091>,  <39.927872, 38.798176, 43.821884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.005142, 38.612663, 43.953091>,  <40.133926, 38.303478, 44.171768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005142, 38.612663, 43.953091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080428, 0.553019, 0.829278,
		0.943331, 0.310963, -0.115882,
		-0.321960, 0.772963, -0.546690,
		39.908554, 38.844551, 43.789085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455791, 38.822193, 44.421467>,  <40.133926, 38.303478, 44.171768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455791, 38.822193, 44.421467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137383, 38.990234, 44.247177>,  <39.946339, 39.091061, 44.142601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.137383, 38.990234, 44.247177>,  <40.455791, 38.822193, 44.421467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137383, 38.990234, 44.247177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126508, 0.588512, 0.798529,
		0.591898, 0.690771, -0.415323,
		-0.796023, 0.420106, -0.435727,
		39.898575, 39.116268, 44.116459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651787, 39.502018, 44.343399>,  <40.455791, 38.822193, 44.421467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651787, 39.502018, 44.343399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.253647, 39.484425, 44.309143>,  <40.014763, 39.473869, 44.288589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.253647, 39.484425, 44.309143>,  <40.651787, 39.502018, 44.343399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253647, 39.484425, 44.309143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093118, 0.665773, 0.740321,
		0.024457, 0.744857, -0.666776,
		-0.995355, -0.043983, -0.085642,
		39.955040, 39.471230, 44.283451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419212, 40.164383, 44.276981>,  <40.651787, 39.502018, 44.343399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419212, 40.164383, 44.276981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094242, 39.957512, 44.384674>,  <39.899258, 39.833389, 44.449291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.094242, 39.957512, 44.384674>,  <40.419212, 40.164383, 44.276981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094242, 39.957512, 44.384674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179532, 0.661221, 0.728392,
		-0.554730, 0.543431, -0.630045,
		-0.812430, -0.517175, 0.269236,
		39.850513, 39.802361, 44.465446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082558, 40.673717, 44.542370>,  <40.419212, 40.164383, 44.276981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082558, 40.673717, 44.542370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895298, 40.349236, 44.682526>,  <39.782944, 40.154545, 44.766621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895298, 40.349236, 44.682526>,  <40.082558, 40.673717, 44.542370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895298, 40.349236, 44.682526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172874, 0.472947, 0.863965,
		-0.866574, 0.343891, -0.361647,
		-0.468149, -0.811209, 0.350394,
		39.754852, 40.105873, 44.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334259, 40.862114, 44.788990>,  <40.082558, 40.673717, 44.542370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334259, 40.862114, 44.788990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464504, 40.535538, 44.979736>,  <39.542652, 40.339592, 45.094185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464504, 40.535538, 44.979736>,  <39.334259, 40.862114, 44.788990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464504, 40.535538, 44.979736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305654, 0.386378, 0.870223,
		-0.894734, -0.429116, -0.123736,
		0.325618, -0.816438, 0.476867,
		39.562191, 40.290607, 45.122795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775249, 40.618641, 45.294613>,  <39.334259, 40.862114, 44.788990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775249, 40.618641, 45.294613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119984, 40.472355, 45.435184>,  <39.326824, 40.384583, 45.519527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119984, 40.472355, 45.435184>,  <38.775249, 40.618641, 45.294613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119984, 40.472355, 45.435184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204541, 0.383431, 0.900635,
		-0.464121, -0.848077, 0.255650,
		0.861832, -0.365712, 0.351425,
		39.378532, 40.362640, 45.540611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617508, 40.425587, 45.916969>,  <38.775249, 40.618641, 45.294613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617508, 40.425587, 45.916969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015549, 40.460171, 45.936146>,  <39.254372, 40.480919, 45.947651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015549, 40.460171, 45.936146>,  <38.617508, 40.425587, 45.916969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015549, 40.460171, 45.936146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077096, 0.375149, 0.923753,
		0.061879, -0.922924, 0.379977,
		0.995102, 0.086456, 0.047940,
		39.314079, 40.486107, 45.950527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808357, 40.134544, 46.524689>,  <38.617508, 40.425587, 45.916969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808357, 40.134544, 46.524689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125660, 40.356819, 46.425125>,  <39.316040, 40.490185, 46.365387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.125660, 40.356819, 46.425125>,  <38.808357, 40.134544, 46.524689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125660, 40.356819, 46.425125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084720, 0.304090, 0.948868,
		0.602964, -0.773785, 0.194144,
		0.793257, 0.555685, -0.248911,
		39.363636, 40.523525, 46.350452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341248, 40.022575, 47.017540>,  <38.808357, 40.134544, 46.524689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341248, 40.022575, 47.017540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440815, 40.383350, 46.876377>,  <39.500557, 40.599815, 46.791679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.440815, 40.383350, 46.876377>,  <39.341248, 40.022575, 47.017540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440815, 40.383350, 46.876377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058256, 0.349770, 0.935023,
		0.966771, -0.253303, 0.034521,
		0.248918, 0.901942, -0.352903,
		39.515491, 40.653934, 46.770508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877827, 40.179680, 47.445202>,  <39.341248, 40.022575, 47.017540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877827, 40.179680, 47.445202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778954, 40.527081, 47.273338>,  <39.719631, 40.735519, 47.170219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778954, 40.527081, 47.273338>,  <39.877827, 40.179680, 47.445202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778954, 40.527081, 47.273338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048147, 0.453879, 0.889762,
		0.967772, 0.199246, -0.154006,
		-0.247181, 0.868502, -0.429658,
		39.704800, 40.787632, 47.144440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388706, 40.651669, 47.688370>,  <39.877827, 40.179680, 47.445202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388706, 40.651669, 47.688370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027874, 40.799667, 47.599514>,  <39.811375, 40.888466, 47.546200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027874, 40.799667, 47.599514>,  <40.388706, 40.651669, 47.688370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027874, 40.799667, 47.599514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058354, 0.405434, 0.912260,
		0.427598, 0.835898, -0.344144,
		-0.902083, 0.369998, -0.222141,
		39.757248, 40.910667, 47.532871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.512249, 41.102074, 46.172241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899086, 41.009666, 46.214890>,  <34.131187, 40.954224, 46.240479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899086, 41.009666, 46.214890>,  <33.512249, 41.102074, 46.172241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899086, 41.009666, 46.214890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083279, -0.108561, -0.990595,
		0.240417, 0.966875, -0.085750,
		0.967091, -0.231015, 0.106621,
		34.189213, 40.940361, 46.246876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886505, 41.619114, 45.656857>,  <33.512249, 41.102074, 46.172241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886505, 41.619114, 45.656857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107868, 41.298172, 45.746273>,  <34.240688, 41.105606, 45.799923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107868, 41.298172, 45.746273>,  <33.886505, 41.619114, 45.656857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107868, 41.298172, 45.746273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162854, -0.158967, -0.973760,
		0.816831, 0.575294, 0.042692,
		0.553412, -0.802350, 0.223538,
		34.273891, 41.057468, 45.813335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523312, 41.632385, 45.222023>,  <33.886505, 41.619114, 45.656857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523312, 41.632385, 45.222023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467388, 41.250725, 45.327888>,  <34.433834, 41.021729, 45.391407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467388, 41.250725, 45.327888>,  <34.523312, 41.632385, 45.222023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467388, 41.250725, 45.327888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024516, -0.270540, -0.962397,
		0.989875, -0.128061, 0.061216,
		-0.139807, -0.954153, 0.264661,
		34.425446, 40.964478, 45.407288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850338, 41.411041, 44.685585>,  <34.523312, 41.632385, 45.222023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850338, 41.411041, 44.685585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631912, 41.121567, 44.854389>,  <34.500858, 40.947884, 44.955673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631912, 41.121567, 44.854389>,  <34.850338, 41.411041, 44.685585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631912, 41.121567, 44.854389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088015, -0.550519, -0.830170,
		0.833107, -0.416183, 0.364314,
		-0.546065, -0.723685, 0.422011,
		34.468094, 40.904461, 44.980991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192524, 40.836460, 44.411236>,  <34.850338, 41.411041, 44.685585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192524, 40.836460, 44.411236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829937, 40.706326, 44.518917>,  <34.612385, 40.628246, 44.583527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.829937, 40.706326, 44.518917>,  <35.192524, 40.836460, 44.411236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829937, 40.706326, 44.518917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022275, -0.599781, -0.799854,
		0.421684, -0.731040, 0.536436,
		-0.906469, -0.325336, 0.269202,
		34.557995, 40.608727, 44.599678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252804, 40.066788, 44.423248>,  <35.192524, 40.836460, 44.411236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252804, 40.066788, 44.423248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868900, 40.167763, 44.374039>,  <34.638557, 40.228348, 44.344513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868900, 40.167763, 44.374039>,  <35.252804, 40.066788, 44.423248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868900, 40.167763, 44.374039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003093, -0.428565, -0.903506,
		-0.280799, -0.867531, 0.410539,
		-0.959762, 0.252434, -0.123024,
		34.580971, 40.243492, 44.337132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041019, 39.512623, 44.075138>,  <35.252804, 40.066788, 44.423248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041019, 39.512623, 44.075138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724190, 39.748482, 44.011978>,  <34.534092, 39.889999, 43.974083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724190, 39.748482, 44.011978>,  <35.041019, 39.512623, 44.075138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724190, 39.748482, 44.011978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063004, -0.336260, -0.939659,
		-0.607166, -0.734330, 0.303493,
		-0.792073, 0.589651, -0.157900,
		34.486568, 39.925377, 43.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617985, 39.068134, 43.737564>,  <35.041019, 39.512623, 44.075138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617985, 39.068134, 43.737564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.484211, 39.437523, 43.662350>,  <34.403946, 39.659157, 43.617222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.484211, 39.437523, 43.662350>,  <34.617985, 39.068134, 43.737564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484211, 39.437523, 43.662350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193292, -0.262502, -0.945373,
		-0.922383, -0.279820, 0.266290,
		-0.334436, 0.923468, -0.188041,
		34.383881, 39.714561, 43.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017998, 38.978016, 43.430603>,  <34.617985, 39.068134, 43.737564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017998, 38.978016, 43.430603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.122261, 39.345173, 43.310909>,  <34.184818, 39.565468, 43.239094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.122261, 39.345173, 43.310909>,  <34.017998, 38.978016, 43.430603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122261, 39.345173, 43.310909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239332, -0.238834, -0.941105,
		-0.935295, 0.316924, 0.157425,
		0.260660, 0.917888, -0.299230,
		34.200459, 39.620541, 43.221142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445911, 39.210060, 42.983879>,  <34.017998, 38.978016, 43.430603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445911, 39.210060, 42.983879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770340, 39.429737, 42.903332>,  <33.964996, 39.561543, 42.855003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770340, 39.429737, 42.903332>,  <33.445911, 39.210060, 42.983879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770340, 39.429737, 42.903332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224022, -0.026372, -0.974227,
		-0.540346, 0.835282, 0.101641,
		0.811074, 0.549189, -0.201372,
		34.013660, 39.594494, 42.842918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186245, 39.625046, 42.487556>,  <33.445911, 39.210060, 42.983879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186245, 39.625046, 42.487556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582943, 39.666489, 42.457352>,  <33.820961, 39.691353, 42.439228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582943, 39.666489, 42.457352>,  <33.186245, 39.625046, 42.487556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582943, 39.666489, 42.457352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080786, 0.047635, -0.995593,
		-0.099554, 0.993477, 0.055611,
		0.991747, 0.103608, -0.075517,
		33.880466, 39.697571, 42.434696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212654, 40.042892, 41.879925>,  <33.186245, 39.625046, 42.487556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212654, 40.042892, 41.879925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582603, 39.903332, 41.940414>,  <33.804573, 39.819595, 41.976707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582603, 39.903332, 41.940414>,  <33.212654, 40.042892, 41.879925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582603, 39.903332, 41.940414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191727, 0.084425, -0.977810,
		0.328393, 0.933349, 0.144977,
		0.924878, -0.348902, 0.151224,
		33.860065, 39.798660, 41.985783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608833, 40.548553, 41.700279>,  <33.212654, 40.042892, 41.879925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608833, 40.548553, 41.700279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811222, 40.204910, 41.669510>,  <33.932655, 39.998722, 41.651047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.811222, 40.204910, 41.669510>,  <33.608833, 40.548553, 41.700279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811222, 40.204910, 41.669510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152704, 0.176996, -0.972293,
		0.848925, 0.480206, 0.220745,
		0.505972, -0.859113, -0.076927,
		33.963013, 39.947178, 41.646431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317272, 40.594540, 41.258629>,  <33.608833, 40.548553, 41.700279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317272, 40.594540, 41.258629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182884, 40.217823, 41.253586>,  <34.102253, 39.991795, 41.250561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182884, 40.217823, 41.253586>,  <34.317272, 40.594540, 41.258629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182884, 40.217823, 41.253586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100933, -0.022696, -0.994634,
		0.936449, -0.335438, 0.102683,
		-0.335969, -0.941789, -0.012603,
		34.082092, 39.935287, 41.249805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040852, 40.878727, 41.220833>,  <34.317272, 40.594540, 41.258629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040852, 40.878727, 41.220833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155109, 41.237026, 41.084576>,  <35.223663, 41.452007, 41.002823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155109, 41.237026, 41.084576>,  <35.040852, 40.878727, 41.220833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155109, 41.237026, 41.084576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304858, 0.252054, 0.918439,
		0.908552, -0.366197, -0.201078,
		0.285647, 0.895750, -0.340642,
		35.240803, 41.505753, 40.982384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619862, 41.007500, 41.645813>,  <35.040852, 40.878727, 41.220833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619862, 41.007500, 41.645813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520184, 41.358036, 41.480923>,  <35.460377, 41.568359, 41.381989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520184, 41.358036, 41.480923>,  <35.619862, 41.007500, 41.645813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520184, 41.358036, 41.480923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326862, 0.476781, 0.815991,
		0.911626, 0.068602, -0.405254,
		-0.249196, 0.876341, -0.412223,
		35.445423, 41.620937, 41.357254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128105, 41.426628, 41.935398>,  <35.619862, 41.007500, 41.645813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128105, 41.426628, 41.935398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804569, 41.642315, 41.841572>,  <35.610447, 41.771729, 41.785275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.804569, 41.642315, 41.841572>,  <36.128105, 41.426628, 41.935398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804569, 41.642315, 41.841572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093092, 0.511291, 0.854351,
		0.580616, 0.669195, -0.463749,
		-0.808838, 0.539221, -0.234567,
		35.561916, 41.804081, 41.771202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287617, 42.051807, 41.946430>,  <36.128105, 41.426628, 41.935398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287617, 42.051807, 41.946430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890869, 42.076214, 41.991096>,  <35.652821, 42.090858, 42.017895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890869, 42.076214, 41.991096>,  <36.287617, 42.051807, 41.946430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890869, 42.076214, 41.991096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125823, 0.601042, 0.789251,
		-0.018958, 0.796885, -0.603833,
		-0.991871, 0.061014, 0.111662,
		35.593307, 42.094517, 42.024593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205620, 42.703712, 42.121841>,  <36.287617, 42.051807, 41.946430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205620, 42.703712, 42.121841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851624, 42.544758, 42.218906>,  <35.639225, 42.449387, 42.277145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851624, 42.544758, 42.218906>,  <36.205620, 42.703712, 42.121841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851624, 42.544758, 42.218906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009760, 0.536877, 0.843604,
		-0.465511, 0.744212, -0.479008,
		-0.884988, -0.397382, 0.242659,
		35.586128, 42.425545, 42.291702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876534, 43.276051, 42.506290>,  <36.205620, 42.703712, 42.121841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876534, 43.276051, 42.506290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634354, 42.967838, 42.585999>,  <35.489044, 42.782909, 42.633823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634354, 42.967838, 42.585999>,  <35.876534, 43.276051, 42.506290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634354, 42.967838, 42.585999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145096, 0.353049, 0.924285,
		-0.782544, 0.530696, -0.325556,
		-0.605452, -0.770531, 0.199275,
		35.452717, 42.736679, 42.645782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195869, 43.545441, 42.780022>,  <35.876534, 43.276051, 42.506290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195869, 43.545441, 42.780022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266575, 43.173210, 42.908264>,  <35.308998, 42.949871, 42.985210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266575, 43.173210, 42.908264>,  <35.195869, 43.545441, 42.780022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266575, 43.173210, 42.908264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269418, 0.267544, 0.925113,
		-0.946661, -0.249906, -0.203420,
		0.176768, -0.930573, 0.320603,
		35.319607, 42.894039, 43.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620865, 43.359730, 43.333984>,  <35.195869, 43.545441, 42.780022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620865, 43.359730, 43.333984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936928, 43.119202, 43.381424>,  <35.126568, 42.974884, 43.409885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.936928, 43.119202, 43.381424>,  <34.620865, 43.359730, 43.333984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936928, 43.119202, 43.381424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033094, 0.235075, 0.971413,
		-0.612006, -0.763648, 0.205647,
		0.790161, -0.601316, 0.118595,
		35.173977, 42.938808, 43.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698013, 43.552238, 44.015469>,  <34.620865, 43.359730, 43.333984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698013, 43.552238, 44.015469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982349, 43.277008, 43.957146>,  <35.152950, 43.111870, 43.922150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.982349, 43.277008, 43.957146>,  <34.698013, 43.552238, 44.015469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982349, 43.277008, 43.957146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268114, 0.073424, 0.960585,
		-0.650250, -0.721914, 0.236675,
		0.710838, -0.688076, -0.145811,
		35.195602, 43.070587, 43.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644115, 42.948467, 44.536804>,  <34.698013, 43.552238, 44.015469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644115, 42.948467, 44.536804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008072, 43.044323, 44.401352>,  <35.226444, 43.101837, 44.320080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008072, 43.044323, 44.401352>,  <34.644115, 42.948467, 44.536804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008072, 43.044323, 44.401352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301951, 0.177175, 0.936715,
		0.284475, -0.954557, 0.088849,
		0.909890, 0.239643, -0.338632,
		35.281040, 43.116215, 44.299763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085796, 42.528465, 44.868801>,  <34.644115, 42.948467, 44.536804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085796, 42.528465, 44.868801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256332, 42.873062, 44.758476>,  <35.358654, 43.079819, 44.692284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256332, 42.873062, 44.758476>,  <35.085796, 42.528465, 44.868801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256332, 42.873062, 44.758476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219108, 0.197475, 0.955508,
		0.877626, -0.467801, -0.104569,
		0.426338, 0.861490, -0.275808,
		35.384235, 43.131508, 44.675735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846664, 42.509556, 45.157059>,  <35.085796, 42.528465, 44.868801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846664, 42.509556, 45.157059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730751, 42.886574, 45.090561>,  <35.661201, 43.112785, 45.050663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730751, 42.886574, 45.090561>,  <35.846664, 42.509556, 45.157059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730751, 42.886574, 45.090561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283749, 0.250499, 0.925601,
		0.914063, 0.221054, -0.340037,
		-0.289786, 0.942542, -0.166248,
		35.643814, 43.169338, 45.040688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354214, 43.054829, 45.341259>,  <35.846664, 42.509556, 45.157059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354214, 43.054829, 45.341259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011387, 43.260620, 45.352158>,  <35.805691, 43.384094, 45.358696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011387, 43.260620, 45.352158>,  <36.354214, 43.054829, 45.341259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011387, 43.260620, 45.352158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131951, 0.168083, 0.976902,
		0.498019, 0.840866, -0.211945,
		-0.857068, 0.514482, 0.027245,
		35.754265, 43.414967, 45.360332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483986, 43.755375, 45.596542>,  <36.354214, 43.054829, 45.341259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483986, 43.755375, 45.596542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089493, 43.713364, 45.647640>,  <35.852798, 43.688156, 45.678299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.089493, 43.713364, 45.647640>,  <36.483986, 43.755375, 45.596542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089493, 43.713364, 45.647640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098159, 0.249872, 0.963291,
		-0.133095, 0.962565, -0.236122,
		-0.986231, -0.105032, 0.127741,
		35.793625, 43.681854, 45.685963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091026, 44.212578, 45.408134>,  <36.483986, 43.755375, 45.596542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091026, 44.212578, 45.408134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454620, 44.148056, 45.561878>,  <37.672775, 44.109344, 45.654125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454620, 44.148056, 45.561878>,  <37.091026, 44.212578, 45.408134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454620, 44.148056, 45.561878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383857, -0.035514, -0.922709,
		0.162487, 0.986265, 0.029637,
		0.908984, -0.161305, 0.384355,
		37.727314, 44.099663, 45.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534592, 44.619061, 45.017250>,  <37.091026, 44.212578, 45.408134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534592, 44.619061, 45.017250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796112, 44.366047, 45.183361>,  <37.953022, 44.214241, 45.283028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796112, 44.366047, 45.183361>,  <37.534592, 44.619061, 45.017250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796112, 44.366047, 45.183361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392623, -0.185565, -0.900785,
		0.646834, 0.751978, 0.127023,
		0.653799, -0.632530, 0.415273,
		37.992252, 44.176289, 45.307941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092037, 44.718227, 44.639301>,  <37.534592, 44.619061, 45.017250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092037, 44.718227, 44.639301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145832, 44.357990, 44.804638>,  <38.178108, 44.141850, 44.903839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145832, 44.357990, 44.804638>,  <38.092037, 44.718227, 44.639301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145832, 44.357990, 44.804638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306888, -0.358768, -0.881536,
		0.942196, 0.245406, 0.228130,
		0.134489, -0.900590, 0.413342,
		38.186180, 44.087814, 44.928638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672153, 44.520824, 44.410748>,  <38.092037, 44.718227, 44.639301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672153, 44.520824, 44.410748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488537, 44.183365, 44.522125>,  <38.378368, 43.980888, 44.588951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488537, 44.183365, 44.522125>,  <38.672153, 44.520824, 44.410748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488537, 44.183365, 44.522125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245786, -0.421783, -0.872748,
		0.853738, -0.332190, 0.400974,
		-0.459042, -0.843652, 0.278445,
		38.350822, 43.930271, 44.605659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139790, 43.918163, 44.407593>,  <38.672153, 44.520824, 44.410748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139790, 43.918163, 44.407593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774879, 43.756222, 44.382801>,  <38.555931, 43.659058, 44.367924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774879, 43.756222, 44.382801>,  <39.139790, 43.918163, 44.407593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774879, 43.756222, 44.382801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204110, -0.318200, -0.925790,
		0.355084, -0.857231, 0.372921,
		-0.912279, -0.404850, -0.061982,
		38.501194, 43.634766, 44.364208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258469, 43.160206, 44.281937>,  <39.139790, 43.918163, 44.407593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258469, 43.160206, 44.281937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890701, 43.254673, 44.156155>,  <38.670040, 43.311356, 44.080685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.890701, 43.254673, 44.156155>,  <39.258469, 43.160206, 44.281937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890701, 43.254673, 44.156155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166392, -0.490891, -0.855184,
		-0.356333, -0.838600, 0.412040,
		-0.919424, 0.236170, -0.314457,
		38.614876, 43.325523, 44.061817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183720, 42.711391, 43.822006>,  <39.258469, 43.160206, 44.281937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183720, 42.711391, 43.822006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849392, 42.914639, 43.738850>,  <38.648796, 43.036587, 43.688953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849392, 42.914639, 43.738850>,  <39.183720, 42.711391, 43.822006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849392, 42.914639, 43.738850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000574, -0.379485, -0.925198,
		-0.549007, -0.773178, 0.317472,
		-0.835818, 0.508122, -0.207896,
		38.598648, 43.067074, 43.676479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600529, 42.245159, 43.517479>,  <39.183720, 42.711391, 43.822006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600529, 42.245159, 43.517479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566147, 42.623077, 43.390999>,  <38.545517, 42.849827, 43.315113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.566147, 42.623077, 43.390999>,  <38.600529, 42.245159, 43.517479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566147, 42.623077, 43.390999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113389, -0.324585, -0.939035,
		-0.989826, -0.044860, 0.135028,
		-0.085953, 0.944792, -0.316196,
		38.540359, 42.906513, 43.296139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093357, 42.205532, 43.006569>,  <38.600529, 42.245159, 43.517479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093357, 42.205532, 43.006569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275963, 42.554798, 42.938240>,  <38.385525, 42.764359, 42.897243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.275963, 42.554798, 42.938240>,  <38.093357, 42.205532, 43.006569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275963, 42.554798, 42.938240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226973, -0.071348, -0.971284,
		-0.860278, 0.482177, 0.165614,
		0.456514, 0.873164, -0.170821,
		38.412918, 42.816746, 42.886993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653603, 42.585453, 42.539021>,  <38.093357, 42.205532, 43.006569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653603, 42.585453, 42.539021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006039, 42.771660, 42.505615>,  <38.217499, 42.883385, 42.485573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006039, 42.771660, 42.505615>,  <37.653603, 42.585453, 42.539021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006039, 42.771660, 42.505615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093571, -0.001516, -0.995611,
		-0.463602, 0.885037, 0.042223,
		0.881089, 0.465518, -0.083517,
		38.270367, 42.911316, 42.480560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512089, 43.022362, 42.073833>,  <37.653603, 42.585453, 42.539021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512089, 43.022362, 42.073833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.910641, 42.989311, 42.065773>,  <38.149773, 42.969482, 42.060936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.910641, 42.989311, 42.065773>,  <37.512089, 43.022362, 42.073833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910641, 42.989311, 42.065773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028339, -0.099139, -0.994670,
		0.080186, 0.991637, -0.101121,
		0.996377, -0.082624, -0.020152,
		38.209553, 42.964523, 42.059727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703514, 43.395870, 41.454987>,  <37.512089, 43.022362, 42.073833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703514, 43.395870, 41.454987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016171, 43.158440, 41.531620>,  <38.203762, 43.015980, 41.577599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016171, 43.158440, 41.531620>,  <37.703514, 43.395870, 41.454987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016171, 43.158440, 41.531620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095266, -0.189933, -0.977164,
		0.616413, 0.782040, -0.091911,
		0.781639, -0.593581, 0.191579,
		38.250664, 42.980366, 41.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174435, 43.640095, 41.040306>,  <37.703514, 43.395870, 41.454987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174435, 43.640095, 41.040306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315933, 43.275417, 41.123905>,  <38.400833, 43.056610, 41.174065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315933, 43.275417, 41.123905>,  <38.174435, 43.640095, 41.040306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315933, 43.275417, 41.123905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084992, -0.191193, -0.977866,
		0.931471, 0.363681, 0.009853,
		0.353748, -0.911691, 0.209001,
		38.422058, 43.001911, 41.186604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688503, 43.501476, 40.585293>,  <38.174435, 43.640095, 41.040306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688503, 43.501476, 40.585293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565472, 43.142284, 40.711170>,  <38.491653, 42.926769, 40.786697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565472, 43.142284, 40.711170>,  <38.688503, 43.501476, 40.585293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565472, 43.142284, 40.711170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032091, -0.340332, -0.939758,
		0.950981, -0.278950, 0.133496,
		-0.307579, -0.897976, 0.314697,
		38.473198, 42.872890, 40.805580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.538136, 37.794804, 28.477695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570103, 37.475174, 28.239336>,  <29.589283, 37.283398, 28.096321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570103, 37.475174, 28.239336>,  <29.538136, 37.794804, 28.477695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570103, 37.475174, 28.239336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276111, -0.592162, 0.757037,
		-0.957797, 0.104034, -0.267957,
		0.079917, -0.799075, -0.595896,
		29.594078, 37.235451, 28.060568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888550, 37.365108, 28.696655>,  <29.538136, 37.794804, 28.477695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888550, 37.365108, 28.696655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221834, 37.202278, 28.546963>,  <29.421804, 37.104580, 28.457148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.221834, 37.202278, 28.546963>,  <28.888550, 37.365108, 28.696655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221834, 37.202278, 28.546963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076724, -0.755350, 0.650815,
		-0.547604, -0.513554, -0.660599,
		0.833213, -0.407073, -0.374231,
		29.471798, 37.080154, 28.434694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736156, 36.744591, 28.468084>,  <28.888550, 37.365108, 28.696655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736156, 36.744591, 28.468084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129904, 36.722622, 28.535015>,  <29.366154, 36.709442, 28.575174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.129904, 36.722622, 28.535015>,  <28.736156, 36.744591, 28.468084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129904, 36.722622, 28.535015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149687, -0.761486, 0.630660,
		0.092781, -0.645850, -0.757806,
		0.984370, -0.054920, 0.167327,
		29.425215, 36.706146, 28.585213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024796, 35.944027, 28.393074>,  <28.736156, 36.744591, 28.468084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024796, 35.944027, 28.393074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270189, 36.152241, 28.630623>,  <29.417425, 36.277168, 28.773151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270189, 36.152241, 28.630623>,  <29.024796, 35.944027, 28.393074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270189, 36.152241, 28.630623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017909, -0.742651, 0.669439,
		0.789504, -0.421326, -0.446282,
		0.613484, 0.520532, 0.593872,
		29.454235, 36.308399, 28.808784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348261, 35.477581, 28.796984>,  <29.024796, 35.944027, 28.393074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348261, 35.477581, 28.796984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436745, 35.803738, 29.010975>,  <29.489836, 35.999432, 29.139370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.436745, 35.803738, 29.010975>,  <29.348261, 35.477581, 28.796984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436745, 35.803738, 29.010975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123379, -0.567561, 0.814034,
		0.967391, -0.114066, -0.226152,
		0.221209, 0.815392, 0.534980,
		29.503107, 36.048355, 29.171469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915344, 35.288200, 29.304066>,  <29.348261, 35.477581, 28.796984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915344, 35.288200, 29.304066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757418, 35.620930, 29.460112>,  <29.662661, 35.820568, 29.553740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757418, 35.620930, 29.460112>,  <29.915344, 35.288200, 29.304066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757418, 35.620930, 29.460112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140217, -0.365084, 0.920355,
		0.907997, 0.418074, 0.027506,
		-0.394818, 0.831822, 0.390116,
		29.638971, 35.870476, 29.577147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299274, 35.397610, 29.890358>,  <29.915344, 35.288200, 29.304066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299274, 35.397610, 29.890358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978436, 35.629658, 29.947062>,  <29.785933, 35.768887, 29.981083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978436, 35.629658, 29.947062>,  <30.299274, 35.397610, 29.890358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978436, 35.629658, 29.947062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032287, -0.194899, 0.980292,
		0.596318, 0.790868, 0.137598,
		-0.802099, 0.580123, 0.141757,
		29.737806, 35.803696, 29.989588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450308, 35.998817, 30.414673>,  <30.299274, 35.397610, 29.890358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450308, 35.998817, 30.414673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063450, 35.897736, 30.403587>,  <29.831335, 35.837086, 30.396936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063450, 35.897736, 30.403587>,  <30.450308, 35.998817, 30.414673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063450, 35.897736, 30.403587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007695, -0.079868, 0.996776,
		-0.254107, 0.964240, 0.075300,
		-0.967146, -0.252708, -0.027714,
		29.773306, 35.821922, 30.395273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266619, 36.103058, 31.100433>,  <30.450308, 35.998817, 30.414673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266619, 36.103058, 31.100433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923449, 35.941734, 30.973120>,  <29.717546, 35.844940, 30.896730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923449, 35.941734, 30.973120>,  <30.266619, 36.103058, 31.100433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923449, 35.941734, 30.973120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218957, -0.273415, 0.936644,
		-0.464784, 0.873260, 0.146261,
		-0.857924, -0.403312, -0.318285,
		29.666071, 35.820740, 30.877634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701071, 36.488182, 31.344175>,  <30.266619, 36.103058, 31.100433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701071, 36.488182, 31.344175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571568, 36.117245, 31.269110>,  <29.493866, 35.894684, 31.224072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571568, 36.117245, 31.269110>,  <29.701071, 36.488182, 31.344175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571568, 36.117245, 31.269110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232772, -0.114179, 0.965806,
		-0.917060, 0.356370, -0.178892,
		-0.323758, -0.927342, -0.187662,
		29.474440, 35.839043, 31.212811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118923, 36.433571, 31.717035>,  <29.701071, 36.488182, 31.344175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118923, 36.433571, 31.717035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229645, 36.053028, 31.662922>,  <29.296078, 35.824703, 31.630453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229645, 36.053028, 31.662922>,  <29.118923, 36.433571, 31.717035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229645, 36.053028, 31.662922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319887, -0.223986, 0.920599,
		-0.906119, -0.211551, -0.366326,
		0.276805, -0.951355, -0.135285,
		29.312687, 35.767620, 31.622335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567751, 36.165901, 32.011433>,  <29.118923, 36.433571, 31.717035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567751, 36.165901, 32.011433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829861, 35.863808, 32.005268>,  <28.987127, 35.682552, 32.001568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829861, 35.863808, 32.005268>,  <28.567751, 36.165901, 32.011433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829861, 35.863808, 32.005268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371281, -0.339776, 0.864120,
		-0.657848, -0.560515, -0.503051,
		0.655276, -0.755232, -0.015412,
		29.026443, 35.637238, 32.000645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213083, 35.420128, 31.934723>,  <28.567751, 36.165901, 32.011433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213083, 35.420128, 31.934723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573988, 35.371414, 32.100174>,  <28.790531, 35.342186, 32.199444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573988, 35.371414, 32.100174>,  <28.213083, 35.420128, 31.934723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573988, 35.371414, 32.100174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412545, -0.522821, 0.745965,
		0.125405, -0.843698, -0.521965,
		0.902264, -0.121787, 0.413628,
		28.844667, 35.334877, 32.224262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242346, 34.725056, 32.096294>,  <28.213083, 35.420128, 31.934723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242346, 34.725056, 32.096294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535295, 34.887871, 32.314632>,  <28.711065, 34.985561, 32.445633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535295, 34.887871, 32.314632>,  <28.242346, 34.725056, 32.096294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535295, 34.887871, 32.314632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327763, -0.491909, 0.806596,
		0.596823, -0.769637, -0.226848,
		0.732375, 0.407043, 0.545841,
		28.755009, 35.009983, 32.478386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372946, 34.177349, 32.507969>,  <28.242346, 34.725056, 32.096294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372946, 34.177349, 32.507969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566473, 34.468266, 32.702690>,  <28.682589, 34.642815, 32.819523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.566473, 34.468266, 32.702690>,  <28.372946, 34.177349, 32.507969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566473, 34.468266, 32.702690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158112, -0.474442, 0.865971,
		0.860768, -0.495940, -0.114550,
		0.483817, 0.727288, 0.486799,
		28.711618, 34.686451, 32.848728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802706, 33.802437, 32.920784>,  <28.372946, 34.177349, 32.507969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802706, 33.802437, 32.920784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787024, 34.173714, 33.068794>,  <28.777615, 34.396481, 33.157600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787024, 34.173714, 33.068794>,  <28.802706, 33.802437, 32.920784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787024, 34.173714, 33.068794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005747, -0.370518, 0.928807,
		0.999215, 0.034287, 0.019860,
		-0.039204, 0.928192, 0.370030,
		28.775263, 34.452171, 33.179802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200706, 33.801392, 33.462574>,  <28.802706, 33.802437, 32.920784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200706, 33.801392, 33.462574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988575, 34.128723, 33.551193>,  <28.861296, 34.325123, 33.604366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988575, 34.128723, 33.551193>,  <29.200706, 33.801392, 33.462574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988575, 34.128723, 33.551193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019414, -0.272980, 0.961824,
		0.847571, 0.505780, 0.160656,
		-0.530327, 0.818333, 0.221550,
		28.829477, 34.374222, 33.617657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606127, 34.194157, 33.948822>,  <29.200706, 33.801392, 33.462574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606127, 34.194157, 33.948822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211174, 34.228535, 34.002029>,  <28.974203, 34.249161, 34.033955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211174, 34.228535, 34.002029>,  <29.606127, 34.194157, 33.948822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211174, 34.228535, 34.002029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078225, -0.465669, 0.881495,
		0.137703, 0.880776, 0.453069,
		-0.987380, 0.085943, 0.133023,
		28.914961, 34.254318, 34.041935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886259, 34.761612, 34.263088>,  <29.606127, 34.194157, 33.948822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886259, 34.761612, 34.263088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042843, 34.872009, 34.614220>,  <30.136793, 34.938248, 34.824898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042843, 34.872009, 34.614220>,  <29.886259, 34.761612, 34.263088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042843, 34.872009, 34.614220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374435, 0.823638, -0.425932,
		-0.840570, 0.495425, 0.219079,
		0.391459, 0.275995, 0.877831,
		30.160280, 34.954807, 34.877567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615137, 35.522694, 34.502216>,  <29.886259, 34.761612, 34.263088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615137, 35.522694, 34.502216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984602, 35.451511, 34.637970>,  <30.206282, 35.408802, 34.719421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.984602, 35.451511, 34.637970>,  <29.615137, 35.522694, 34.502216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984602, 35.451511, 34.637970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287113, 0.907928, -0.305341,
		-0.253798, 0.379473, 0.889712,
		0.923663, -0.177952, 0.339382,
		30.261702, 35.398125, 34.739784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789715, 35.948719, 35.027111>,  <29.615137, 35.522694, 34.502216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789715, 35.948719, 35.027111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124376, 35.824505, 34.846634>,  <30.325174, 35.749977, 34.738346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.124376, 35.824505, 34.846634>,  <29.789715, 35.948719, 35.027111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124376, 35.824505, 34.846634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206340, 0.941758, -0.265547,
		0.507377, 0.129071, 0.852003,
		0.836655, -0.310535, -0.451194,
		30.375372, 35.731346, 34.711277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421328, 36.387371, 35.323711>,  <29.789715, 35.948719, 35.027111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421328, 36.387371, 35.323711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533859, 36.219193, 34.978672>,  <30.601377, 36.118286, 34.771648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533859, 36.219193, 34.978672>,  <30.421328, 36.387371, 35.323711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533859, 36.219193, 34.978672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342362, 0.883728, -0.319082,
		0.896462, -0.205555, 0.392560,
		0.281328, -0.420443, -0.862602,
		30.618258, 36.093060, 34.719891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106277, 36.711941, 35.079868>,  <30.421328, 36.387371, 35.323711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106277, 36.711941, 35.079868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933687, 36.570614, 34.747845>,  <30.830133, 36.485817, 34.548630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.933687, 36.570614, 34.747845>,  <31.106277, 36.711941, 35.079868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933687, 36.570614, 34.747845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283836, 0.820216, -0.496671,
		0.856309, -0.449902, -0.253620,
		-0.431477, -0.353317, -0.830057,
		30.804245, 36.464619, 34.498829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525465, 36.974129, 34.568340>,  <31.106277, 36.711941, 35.079868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525465, 36.974129, 34.568340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199770, 36.862602, 34.364662>,  <31.004353, 36.795685, 34.242455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199770, 36.862602, 34.364662>,  <31.525465, 36.974129, 34.568340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199770, 36.862602, 34.364662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102629, 0.794167, -0.598972,
		0.571387, -0.539963, -0.618026,
		-0.814238, -0.278818, -0.509192,
		30.955498, 36.778957, 34.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727318, 37.009556, 33.893250>,  <31.525465, 36.974129, 34.568340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727318, 37.009556, 33.893250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328060, 37.021698, 33.914379>,  <31.088507, 37.028984, 33.927055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.328060, 37.021698, 33.914379>,  <31.727318, 37.009556, 33.893250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328060, 37.021698, 33.914379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001309, 0.877489, -0.479595,
		-0.060910, -0.478635, -0.875898,
		-0.998142, 0.030359, 0.052821,
		31.028618, 37.030804, 33.930225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459181, 37.006542, 33.247543>,  <31.727318, 37.009556, 33.893250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459181, 37.006542, 33.247543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.164900, 37.177513, 33.457703>,  <30.988331, 37.280094, 33.583797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.164900, 37.177513, 33.457703>,  <31.459181, 37.006542, 33.247543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164900, 37.177513, 33.457703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006541, 0.780174, -0.625528,
		-0.677272, -0.456766, -0.576773,
		-0.735703, 0.427426, 0.525403,
		30.944189, 37.305740, 33.615322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042059, 37.399689, 32.782246>,  <31.459181, 37.006542, 33.247543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042059, 37.399689, 32.782246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.889132, 37.542088, 33.123325>,  <30.797375, 37.627529, 33.327972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.889132, 37.542088, 33.123325>,  <31.042059, 37.399689, 32.782246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889132, 37.542088, 33.123325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208993, 0.865576, -0.455082,
		-0.900086, -0.352194, -0.256525,
		-0.382319, 0.356001, 0.852699,
		30.774435, 37.648888, 33.379135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361385, 37.496933, 32.666691>,  <31.042059, 37.399689, 32.782246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361385, 37.496933, 32.666691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465147, 37.722851, 32.980049>,  <30.527405, 37.858402, 33.168064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.465147, 37.722851, 32.980049>,  <30.361385, 37.496933, 32.666691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465147, 37.722851, 32.980049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247668, 0.822942, -0.511300,
		-0.933472, -0.061389, 0.353357,
		0.259404, 0.564799, 0.783397,
		30.542969, 37.892292, 33.215069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778917, 37.911392, 32.868179>,  <30.361385, 37.496933, 32.666691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778917, 37.911392, 32.868179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106066, 38.100033, 33.000042>,  <30.302355, 38.213219, 33.079159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.106066, 38.100033, 33.000042>,  <29.778917, 37.911392, 32.868179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106066, 38.100033, 33.000042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289073, 0.832142, -0.473262,
		-0.497515, 0.291772, 0.816914,
		0.817873, 0.471603, 0.329659,
		30.351427, 38.241512, 33.098938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514868, 38.671429, 32.767971>,  <29.778917, 37.911392, 32.868179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514868, 38.671429, 32.767971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902386, 38.692444, 32.864864>,  <30.134897, 38.705051, 32.923000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902386, 38.692444, 32.864864>,  <29.514868, 38.671429, 32.767971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902386, 38.692444, 32.864864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050391, 0.915119, -0.400022,
		-0.242686, 0.399746, 0.883915,
		0.968795, 0.052539, 0.242230,
		30.193024, 38.708206, 32.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618200, 39.252766, 33.044598>,  <29.514868, 38.671429, 32.767971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618200, 39.252766, 33.044598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.974958, 39.141815, 32.901722>,  <30.189014, 39.075245, 32.815998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.974958, 39.141815, 32.901722>,  <29.618200, 39.252766, 33.044598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974958, 39.141815, 32.901722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136926, 0.918374, -0.371270,
		0.431013, 0.282227, 0.857075,
		0.891897, -0.277378, -0.357186,
		30.242527, 39.058601, 32.794567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960575, 39.872864, 32.792068>,  <29.618200, 39.252766, 33.044598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960575, 39.872864, 32.792068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257298, 39.621956, 32.697193>,  <30.435331, 39.471413, 32.640266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.257298, 39.621956, 32.697193>,  <29.960575, 39.872864, 32.792068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257298, 39.621956, 32.697193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509526, 0.757146, -0.408794,
		0.436008, 0.182394, 0.881266,
		0.741808, -0.627266, -0.237188,
		30.479839, 39.433777, 32.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681894, 40.151798, 32.984169>,  <29.960575, 39.872864, 32.792068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681894, 40.151798, 32.984169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646603, 39.920429, 32.659790>,  <30.625427, 39.781609, 32.465160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646603, 39.920429, 32.659790>,  <30.681894, 40.151798, 32.984169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646603, 39.920429, 32.659790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383957, 0.731465, -0.563504,
		0.919126, -0.361087, 0.157554,
		-0.088228, -0.578425, -0.810950,
		30.620134, 39.746902, 32.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151701, 40.332947, 32.456730>,  <30.681894, 40.151798, 32.984169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151701, 40.332947, 32.456730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.921522, 40.113647, 32.213985>,  <30.783415, 39.982067, 32.068336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.921522, 40.113647, 32.213985>,  <31.151701, 40.332947, 32.456730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921522, 40.113647, 32.213985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203783, 0.622509, -0.755616,
		0.792045, -0.558484, -0.246496,
		-0.575445, -0.548250, -0.606865,
		30.748888, 39.949173, 32.031925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611677, 40.157894, 31.839506>,  <31.151701, 40.332947, 32.456730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611677, 40.157894, 31.839506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238932, 40.109169, 31.702805>,  <31.015285, 40.079933, 31.620785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.238932, 40.109169, 31.702805>,  <31.611677, 40.157894, 31.839506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238932, 40.109169, 31.702805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215682, 0.571442, -0.791792,
		0.291743, -0.811551, -0.506232,
		-0.931862, -0.121815, -0.341752,
		30.959373, 40.072624, 31.600279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623119, 39.998379, 31.094715>,  <31.611677, 40.157894, 31.839506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623119, 39.998379, 31.094715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231094, 40.077816, 31.097256>,  <30.995880, 40.125477, 31.098780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.231094, 40.077816, 31.097256>,  <31.623119, 39.998379, 31.094715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231094, 40.077816, 31.097256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102205, 0.531288, -0.841004,
		-0.170389, -0.823587, -0.540992,
		-0.980062, 0.198590, 0.006352,
		30.937077, 40.137394, 31.099161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441555, 39.853603, 30.436611>,  <31.623119, 39.998379, 31.094715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441555, 39.853603, 30.436611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135555, 40.085995, 30.547783>,  <30.951956, 40.225430, 30.614487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135555, 40.085995, 30.547783>,  <31.441555, 39.853603, 30.436611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135555, 40.085995, 30.547783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055644, 0.489556, -0.870195,
		-0.641625, -0.650232, -0.406837,
		-0.764998, 0.580976, 0.277929,
		30.906055, 40.260288, 30.631161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994091, 39.877346, 29.886049>,  <31.441555, 39.853603, 30.436611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994091, 39.877346, 29.886049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890503, 40.195065, 30.105877>,  <30.828350, 40.385696, 30.237774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.890503, 40.195065, 30.105877>,  <30.994091, 39.877346, 29.886049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890503, 40.195065, 30.105877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090279, 0.546583, -0.832524,
		-0.961657, -0.265214, -0.069841,
		-0.258971, 0.794297, 0.549568,
		30.812811, 40.433353, 30.270748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297144, 40.155472, 29.641655>,  <30.994091, 39.877346, 29.886049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297144, 40.155472, 29.641655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462519, 40.475082, 29.816298>,  <30.561743, 40.666847, 29.921083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462519, 40.475082, 29.816298>,  <30.297144, 40.155472, 29.641655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462519, 40.475082, 29.816298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287388, 0.569507, -0.770110,
		-0.863990, 0.192917, 0.465086,
		0.413437, 0.799027, 0.436607,
		30.586550, 40.714790, 29.947279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813490, 40.755676, 29.653622>,  <30.297144, 40.155472, 29.641655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813490, 40.755676, 29.653622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189487, 40.892078, 29.649147>,  <30.415087, 40.973919, 29.646461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.189487, 40.892078, 29.649147>,  <29.813490, 40.755676, 29.653622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189487, 40.892078, 29.649147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202985, 0.532575, -0.821682,
		-0.274239, 0.774648, 0.569837,
		0.939995, 0.341005, -0.011189,
		30.471485, 40.994381, 29.645790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700315, 41.330868, 29.358624>,  <29.813490, 40.755676, 29.653622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700315, 41.330868, 29.358624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100309, 41.331120, 29.360884>,  <30.340305, 41.331268, 29.362240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100309, 41.331120, 29.360884>,  <29.700315, 41.330868, 29.358624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100309, 41.331120, 29.360884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003375, 0.734685, -0.678400,
		-0.004577, 0.678408, 0.734671,
		0.999984, 0.000626, 0.005652,
		30.400305, 41.331306, 29.362579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935402, 42.034496, 29.361565>,  <29.700315, 41.330868, 29.358624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935402, 42.034496, 29.361565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197529, 41.788403, 29.186274>,  <30.354805, 41.640747, 29.081099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.197529, 41.788403, 29.186274>,  <29.935402, 42.034496, 29.361565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197529, 41.788403, 29.186274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007746, 0.574657, -0.818357,
		0.755312, 0.539680, 0.371819,
		0.655319, -0.615236, -0.438226,
		30.394125, 41.603832, 29.054806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.335804, 41.371056, 48.159809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.959946, 41.307228, 48.038750>,  <39.734428, 41.268932, 47.966114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.959946, 41.307228, 48.038750>,  <40.335804, 41.371056, 48.159809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959946, 41.307228, 48.038750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329557, 0.659806, 0.675313,
		0.091929, 0.734297, -0.672575,
		-0.939650, -0.159571, -0.302648,
		39.678051, 41.259357, 47.947956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093468, 42.004971, 48.150833>,  <40.335804, 41.371056, 48.159809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093468, 42.004971, 48.150833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.766884, 41.774643, 48.133751>,  <39.570934, 41.636448, 48.123501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.766884, 41.774643, 48.133751>,  <40.093468, 42.004971, 48.150833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766884, 41.774643, 48.133751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445656, 0.581421, 0.680691,
		-0.367124, 0.574790, -0.731325,
		-0.816462, -0.575818, -0.042705,
		39.521946, 41.601898, 48.120941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518532, 42.430000, 47.935295>,  <40.093468, 42.004971, 48.150833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518532, 42.430000, 47.935295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375427, 42.101265, 48.112648>,  <39.289566, 41.904022, 48.219059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375427, 42.101265, 48.112648>,  <39.518532, 42.430000, 47.935295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375427, 42.101265, 48.112648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571017, 0.568228, 0.592501,
		-0.738883, -0.041207, -0.672572,
		-0.357759, -0.821839, 0.443384,
		39.268101, 41.854713, 48.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791824, 42.490860, 48.004570>,  <39.518532, 42.430000, 47.935295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791824, 42.490860, 48.004570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893372, 42.219517, 48.280361>,  <38.954300, 42.056709, 48.445835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893372, 42.219517, 48.280361>,  <38.791824, 42.490860, 48.004570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893372, 42.219517, 48.280361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464131, 0.539968, 0.702152,
		-0.848606, -0.498263, -0.177766,
		0.253869, -0.678357, 0.689479,
		38.969532, 42.016010, 48.487206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247025, 42.596020, 48.542591>,  <38.791824, 42.490860, 48.004570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247025, 42.596020, 48.542591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512142, 42.367672, 48.736420>,  <38.671215, 42.230663, 48.852718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512142, 42.367672, 48.736420>,  <38.247025, 42.596020, 48.542591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512142, 42.367672, 48.736420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373131, 0.309269, 0.874715,
		-0.649208, -0.760568, -0.008025,
		0.662799, -0.570867, 0.484571,
		38.710983, 42.196411, 48.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876972, 42.347347, 49.092583>,  <38.247025, 42.596020, 48.542591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876972, 42.347347, 49.092583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257256, 42.281425, 49.197647>,  <38.485424, 42.241871, 49.260685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.257256, 42.281425, 49.197647>,  <37.876972, 42.347347, 49.092583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257256, 42.281425, 49.197647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192039, 0.352124, 0.916040,
		-0.243460, -0.921329, 0.303118,
		0.950709, -0.164809, 0.262659,
		38.542469, 42.231983, 49.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846474, 41.908146, 49.624161>,  <37.876972, 42.347347, 49.092583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846474, 41.908146, 49.624161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202667, 42.087608, 49.654480>,  <38.416382, 42.195286, 49.672672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.202667, 42.087608, 49.654480>,  <37.846474, 41.908146, 49.624161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202667, 42.087608, 49.654480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200470, 0.237300, 0.950526,
		0.408477, -0.861622, 0.301254,
		0.890482, 0.448661, 0.075798,
		38.469810, 42.222206, 49.677219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242672, 41.638081, 50.296921>,  <37.846474, 41.908146, 49.624161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242672, 41.638081, 50.296921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375694, 41.997150, 50.181282>,  <38.455509, 42.212593, 50.111897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375694, 41.997150, 50.181282>,  <38.242672, 41.638081, 50.296921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375694, 41.997150, 50.181282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034468, 0.294774, 0.954945,
		0.942453, -0.327540, 0.067088,
		0.332558, 0.897678, -0.289101,
		38.475460, 42.266453, 50.094551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788761, 41.781837, 50.798820>,  <38.242672, 41.638081, 50.296921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788761, 41.781837, 50.798820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684364, 42.128437, 50.628609>,  <38.621727, 42.336395, 50.526482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684364, 42.128437, 50.628609>,  <38.788761, 41.781837, 50.798820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684364, 42.128437, 50.628609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044125, 0.451051, 0.891407,
		0.964333, 0.213871, -0.155953,
		-0.260988, 0.866494, -0.425526,
		38.606068, 42.388386, 50.500950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166771, 42.291187, 51.180561>,  <38.788761, 41.781837, 50.798820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166771, 42.291187, 51.180561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872513, 42.513451, 51.025604>,  <38.695957, 42.646809, 50.932629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.872513, 42.513451, 51.025604>,  <39.166771, 42.291187, 51.180561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872513, 42.513451, 51.025604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031022, 0.598946, 0.800188,
		0.676657, 0.576636, -0.457849,
		-0.735644, 0.555657, -0.387393,
		38.651821, 42.680149, 50.909386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236794, 42.962502, 51.457447>,  <39.166771, 42.291187, 51.180561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236794, 42.962502, 51.457447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859650, 42.979210, 51.325226>,  <38.633362, 42.989235, 51.245892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.859650, 42.979210, 51.325226>,  <39.236794, 42.962502, 51.457447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859650, 42.979210, 51.325226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220937, 0.664240, 0.714123,
		0.249397, 0.746351, -0.617058,
		-0.942862, 0.041769, -0.330556,
		38.576790, 42.991741, 51.226059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020477, 43.613831, 51.590202>,  <39.236794, 42.962502, 51.457447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020477, 43.613831, 51.590202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683846, 43.399395, 51.563789>,  <38.481869, 43.270733, 51.547943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683846, 43.399395, 51.563789>,  <39.020477, 43.613831, 51.590202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683846, 43.399395, 51.563789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361059, 0.467419, 0.806942,
		-0.401726, 0.702945, -0.586927,
		-0.841577, -0.536085, -0.066031,
		38.431374, 43.238571, 51.543980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409595, 44.011211, 51.537540>,  <39.020477, 43.613831, 51.590202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409595, 44.011211, 51.537540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346035, 43.654915, 51.707870>,  <38.307899, 43.441135, 51.810066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346035, 43.654915, 51.707870>,  <38.409595, 44.011211, 51.537540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346035, 43.654915, 51.707870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504783, 0.443966, 0.740330,
		-0.848495, -0.097309, -0.520180,
		-0.158902, -0.890744, 0.425823,
		38.298363, 43.387691, 51.835617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676128, 43.919353, 51.701759>,  <38.409595, 44.011211, 51.537540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676128, 43.919353, 51.701759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928959, 43.734901, 51.950867>,  <38.080658, 43.624229, 52.100330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928959, 43.734901, 51.950867>,  <37.676128, 43.919353, 51.701759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928959, 43.734901, 51.950867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532543, 0.325314, 0.781389,
		-0.562914, -0.825550, -0.039945,
		0.632081, -0.461127, 0.622765,
		38.118584, 43.596565, 52.137695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899235, 44.507187, 51.289600>,  <37.676128, 43.919353, 51.701759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899235, 44.507187, 51.289600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728039, 44.856693, 51.197201>,  <37.625320, 45.066399, 51.141762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728039, 44.856693, 51.197201>,  <37.899235, 44.507187, 51.289600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728039, 44.856693, 51.197201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041593, -0.236282, -0.970794,
		-0.902828, -0.425094, 0.064782,
		-0.427985, 0.873766, -0.231003,
		37.599644, 45.118824, 51.127899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145538, 44.381756, 50.899067>,  <37.899235, 44.507187, 51.289600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145538, 44.381756, 50.899067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328606, 44.730659, 50.830124>,  <37.438446, 44.940002, 50.788757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.328606, 44.730659, 50.830124>,  <37.145538, 44.381756, 50.899067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328606, 44.730659, 50.830124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024393, -0.181464, -0.983095,
		-0.888788, 0.454136, -0.061773,
		0.457669, 0.872257, -0.172361,
		37.465908, 44.992336, 50.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099785, 44.458385, 50.236065>,  <37.145538, 44.381756, 50.899067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099785, 44.458385, 50.236065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313671, 44.796371, 50.240479>,  <37.442001, 44.999161, 50.243126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.313671, 44.796371, 50.240479>,  <37.099785, 44.458385, 50.236065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313671, 44.796371, 50.240479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068126, -0.030084, -0.997223,
		-0.842284, 0.533979, -0.073650,
		0.534712, 0.844962, 0.011039,
		37.474083, 45.049862, 50.243790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738491, 44.940517, 49.755306>,  <37.099785, 44.458385, 50.236065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738491, 44.940517, 49.755306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125538, 45.015495, 49.822922>,  <37.357765, 45.060482, 49.863491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125538, 45.015495, 49.822922>,  <36.738491, 44.940517, 49.755306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125538, 45.015495, 49.822922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129908, 0.204354, -0.970239,
		-0.216408, 0.960783, 0.173387,
		0.967622, 0.187443, 0.169037,
		37.415825, 45.071728, 49.873634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825752, 45.419231, 49.204842>,  <36.738491, 44.940517, 49.755306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825752, 45.419231, 49.204842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179882, 45.279686, 49.327805>,  <37.392361, 45.195957, 49.401581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179882, 45.279686, 49.327805>,  <36.825752, 45.419231, 49.204842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179882, 45.279686, 49.327805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346138, 0.053027, -0.936684,
		0.310478, 0.935671, 0.167702,
		0.885320, -0.348867, 0.307408,
		37.445477, 45.175026, 49.420029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196121, 45.900043, 48.890453>,  <36.825752, 45.419231, 49.204842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196121, 45.900043, 48.890453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386677, 45.556225, 48.964474>,  <37.501011, 45.349934, 49.008884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.386677, 45.556225, 48.964474>,  <37.196121, 45.900043, 48.890453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386677, 45.556225, 48.964474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387900, 0.016587, -0.921552,
		0.789044, 0.510794, 0.341318,
		0.476385, -0.859543, 0.185049,
		37.529591, 45.298363, 49.019989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630077, 45.686523, 48.303085>,  <37.196121, 45.900043, 48.890453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630077, 45.686523, 48.303085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653416, 45.346035, 48.511707>,  <37.667419, 45.141743, 48.636883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.653416, 45.346035, 48.511707>,  <37.630077, 45.686523, 48.303085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653416, 45.346035, 48.511707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294301, -0.484562, -0.823764,
		0.953930, 0.201559, 0.222242,
		0.058347, -0.851219, 0.521557,
		37.670921, 45.090668, 48.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375393, 45.420422, 48.240940>,  <37.630077, 45.686523, 48.303085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375393, 45.420422, 48.240940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145996, 45.102886, 48.321869>,  <38.008358, 44.912365, 48.370426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145996, 45.102886, 48.321869>,  <38.375393, 45.420422, 48.240940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145996, 45.102886, 48.321869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327731, -0.448666, -0.831439,
		0.750799, -0.410518, 0.517470,
		-0.573492, -0.793835, 0.202319,
		37.973949, 44.864735, 48.382565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781044, 44.732620, 48.124092>,  <38.375393, 45.420422, 48.240940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781044, 44.732620, 48.124092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396477, 44.631191, 48.081425>,  <38.165737, 44.570335, 48.055824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396477, 44.631191, 48.081425>,  <38.781044, 44.732620, 48.124092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396477, 44.631191, 48.081425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178341, -0.279272, -0.943505,
		0.209458, -0.926125, 0.313719,
		-0.961417, -0.253574, -0.106671,
		38.108051, 44.555119, 48.049423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843346, 44.095539, 47.712292>,  <38.781044, 44.732620, 48.124092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843346, 44.095539, 47.712292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453186, 44.175842, 47.675880>,  <38.219090, 44.224026, 47.654034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453186, 44.175842, 47.675880>,  <38.843346, 44.095539, 47.712292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453186, 44.175842, 47.675880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049543, -0.202747, -0.977977,
		-0.214821, -0.958425, 0.187812,
		-0.975396, 0.200785, -0.091037,
		38.160564, 44.236069, 47.648571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552944, 43.586609, 47.315769>,  <38.843346, 44.095539, 47.712292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552944, 43.586609, 47.315769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256016, 43.852734, 47.283978>,  <38.077858, 44.012409, 47.264904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256016, 43.852734, 47.283978>,  <38.552944, 43.586609, 47.315769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256016, 43.852734, 47.283978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194826, -0.327808, -0.924438,
		-0.641094, -0.670746, 0.372959,
		-0.742322, 0.665314, -0.079477,
		38.033318, 44.052326, 47.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046799, 43.270077, 46.940006>,  <38.552944, 43.586609, 47.315769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046799, 43.270077, 46.940006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974522, 43.662445, 46.911327>,  <37.931156, 43.897865, 46.894119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974522, 43.662445, 46.911327>,  <38.046799, 43.270077, 46.940006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974522, 43.662445, 46.911327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157635, -0.100836, -0.982336,
		-0.970826, -0.166195, 0.172848,
		-0.180688, 0.980924, -0.071696,
		37.920315, 43.956722, 46.889820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330418, 43.338707, 46.544342>,  <38.046799, 43.270077, 46.940006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330418, 43.338707, 46.544342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560081, 43.666004, 46.532944>,  <37.697880, 43.862385, 46.526104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.560081, 43.666004, 46.532944>,  <37.330418, 43.338707, 46.544342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560081, 43.666004, 46.532944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269110, 0.155733, -0.950435,
		-0.773251, 0.553372, 0.309615,
		0.574162, 0.818246, -0.028497,
		37.732330, 43.911476, 46.524395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930382, 43.715885, 46.155319>,  <37.330418, 43.338707, 46.544342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930382, 43.715885, 46.155319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307800, 43.848377, 46.156830>,  <37.534252, 43.927872, 46.157738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.307800, 43.848377, 46.156830>,  <36.930382, 43.715885, 46.155319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307800, 43.848377, 46.156830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008861, 0.036638, -0.999289,
		-0.331131, 0.942839, 0.037505,
		0.943543, 0.331228, 0.003778,
		37.590862, 43.947746, 46.157963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290195, 44.245415, 46.085403>,  <36.930382, 43.715885, 46.155319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290195, 44.245415, 46.085403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966827, 44.010574, 46.102268>,  <35.772808, 43.869671, 46.112389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966827, 44.010574, 46.102268>,  <36.290195, 44.245415, 46.085403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966827, 44.010574, 46.102268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066348, 0.162068, 0.984547,
		-0.584860, 0.793126, -0.169971,
		-0.808416, -0.587099, 0.042165,
		35.724304, 43.834446, 46.114918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764637, 44.640743, 46.442135>,  <36.290195, 44.245415, 46.085403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764637, 44.640743, 46.442135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640087, 44.261246, 46.463791>,  <35.565357, 44.033546, 46.476784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640087, 44.261246, 46.463791>,  <35.764637, 44.640743, 46.442135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640087, 44.261246, 46.463791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219418, 0.127207, 0.967303,
		-0.924610, 0.289311, -0.247780,
		-0.311370, -0.948745, 0.054137,
		35.546677, 43.976624, 46.480030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049397, 44.659863, 46.637897>,  <35.764637, 44.640743, 46.442135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049397, 44.659863, 46.637897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177784, 44.292915, 46.732056>,  <35.254818, 44.072746, 46.788551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.177784, 44.292915, 46.732056>,  <35.049397, 44.659863, 46.637897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177784, 44.292915, 46.732056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375081, 0.105098, 0.921015,
		-0.869652, -0.383908, -0.310355,
		0.320967, -0.917371, 0.235395,
		35.274075, 44.017704, 46.802673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604359, 44.543949, 47.157833>,  <35.049397, 44.659863, 46.637897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604359, 44.543949, 47.157833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868073, 44.247879, 47.210720>,  <35.026299, 44.070236, 47.242455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868073, 44.247879, 47.210720>,  <34.604359, 44.543949, 47.157833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868073, 44.247879, 47.210720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181583, 0.013911, 0.983277,
		-0.729641, -0.672265, -0.125232,
		0.659281, -0.740180, 0.132222,
		35.065857, 44.025826, 47.250385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237305, 44.098076, 47.554016>,  <34.604359, 44.543949, 47.157833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237305, 44.098076, 47.554016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630703, 44.060318, 47.615761>,  <34.866741, 44.037663, 47.652805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630703, 44.060318, 47.615761>,  <34.237305, 44.098076, 47.554016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630703, 44.060318, 47.615761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136474, 0.173089, 0.975405,
		-0.118794, -0.980372, 0.157349,
		0.983495, -0.094399, 0.154357,
		34.925751, 44.031998, 47.662067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281475, 43.705551, 48.064884>,  <34.237305, 44.098076, 47.554016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281475, 43.705551, 48.064884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648594, 43.864277, 48.070492>,  <34.868866, 43.959511, 48.073856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648594, 43.864277, 48.070492>,  <34.281475, 43.705551, 48.064884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648594, 43.864277, 48.070492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063371, 0.111527, 0.991739,
		0.391969, -0.911100, 0.127505,
		0.917793, 0.396811, 0.014022,
		34.923931, 43.983318, 48.074699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665966, 43.287071, 48.506557>,  <34.281475, 43.705551, 48.064884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665966, 43.287071, 48.506557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833149, 43.649334, 48.477985>,  <34.933460, 43.866692, 48.460842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833149, 43.649334, 48.477985>,  <34.665966, 43.287071, 48.506557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833149, 43.649334, 48.477985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061900, 0.050054, 0.996826,
		0.906354, -0.421055, -0.035140,
		0.417960, 0.905653, -0.071430,
		34.958538, 43.921028, 48.456558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854305, 42.521606, 48.666286>,  <34.665966, 43.287071, 48.506557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854305, 42.521606, 48.666286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667984, 42.197002, 48.807411>,  <34.556190, 42.002239, 48.892086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667984, 42.197002, 48.807411>,  <34.854305, 42.521606, 48.666286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667984, 42.197002, 48.807411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217779, -0.491579, -0.843162,
		0.857670, -0.315915, 0.405710,
		-0.465806, -0.811510, 0.352813,
		34.528244, 41.953548, 48.913254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342976, 41.833431, 48.605217>,  <34.854305, 42.521606, 48.666286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342976, 41.833431, 48.605217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956009, 41.732162, 48.606777>,  <34.723831, 41.671402, 48.607716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956009, 41.732162, 48.606777>,  <35.342976, 41.833431, 48.605217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956009, 41.732162, 48.606777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110229, -0.434982, -0.893667,
		0.227947, -0.864116, 0.448714,
		-0.967414, -0.253170, 0.003903,
		34.665783, 41.656212, 48.607948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450260, 41.143276, 48.363400>,  <35.342976, 41.833431, 48.605217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450260, 41.143276, 48.363400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085587, 41.297523, 48.306644>,  <34.866783, 41.390072, 48.272591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.085587, 41.297523, 48.306644>,  <35.450260, 41.143276, 48.363400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085587, 41.297523, 48.306644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019713, -0.385975, -0.922299,
		-0.410431, -0.838043, 0.359487,
		-0.911679, 0.385627, -0.141895,
		34.812080, 41.413208, 48.264076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112213, 40.555973, 48.088226>,  <35.450260, 41.143276, 48.363400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112213, 40.555973, 48.088226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879032, 40.872025, 48.012470>,  <34.739124, 41.061653, 47.967018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.879032, 40.872025, 48.012470>,  <35.112213, 40.555973, 48.088226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879032, 40.872025, 48.012470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161752, -0.341284, -0.925938,
		-0.796242, -0.509144, 0.326757,
		-0.582953, 0.790125, -0.189390,
		34.704147, 41.109062, 47.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525684, 40.231552, 47.722733>,  <35.112213, 40.555973, 48.088226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525684, 40.231552, 47.722733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524578, 40.616966, 47.615707>,  <34.523914, 40.848217, 47.551495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.524578, 40.616966, 47.615707>,  <34.525684, 40.231552, 47.722733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524578, 40.616966, 47.615707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169298, -0.264150, -0.949507,
		-0.985561, 0.042673, 0.163855,
		-0.002764, 0.963537, -0.267560,
		34.523750, 40.906029, 47.535439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903446, 40.297478, 47.366058>,  <34.525684, 40.231552, 47.722733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903446, 40.297478, 47.366058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119255, 40.617619, 47.261486>,  <34.248741, 40.809704, 47.198742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.119255, 40.617619, 47.261486>,  <33.903446, 40.297478, 47.366058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119255, 40.617619, 47.261486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094557, -0.250940, -0.963373,
		-0.836643, 0.544484, -0.059709,
		0.539525, 0.800354, -0.261432,
		34.281113, 40.857723, 47.183056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565811, 40.590603, 46.804115>,  <33.903446, 40.297478, 47.366058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565811, 40.590603, 46.804115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935230, 40.733654, 46.748745>,  <34.156883, 40.819485, 46.715523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935230, 40.733654, 46.748745>,  <33.565811, 40.590603, 46.804115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935230, 40.733654, 46.748745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036511, -0.277330, -0.960081,
		-0.381741, 0.891735, -0.243070,
		0.923548, 0.357627, -0.138426,
		34.212296, 40.840942, 46.707218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.943272, 41.197018, 52.308670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.144657, 41.478394, 52.107994>,  <36.265488, 41.647221, 51.987587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.144657, 41.478394, 52.107994>,  <35.943272, 41.197018, 52.308670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144657, 41.478394, 52.107994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125474, -0.634018, -0.763071,
		-0.854857, 0.321229, -0.407469,
		0.503463, 0.703444, -0.501689,
		36.295696, 41.689426, 51.957489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678333, 41.148289, 51.624184>,  <35.943272, 41.197018, 52.308670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678333, 41.148289, 51.624184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054684, 41.283459, 51.633663>,  <36.280495, 41.364563, 51.639351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054684, 41.283459, 51.633663>,  <35.678333, 41.148289, 51.624184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054684, 41.283459, 51.633663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250143, -0.645866, -0.721308,
		-0.228444, 0.684588, -0.692208,
		0.940873, 0.337930, 0.023701,
		36.336945, 41.384838, 51.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841663, 41.425900, 50.898224>,  <35.678333, 41.148289, 51.624184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841663, 41.425900, 50.898224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188229, 41.324123, 51.070080>,  <36.396168, 41.263058, 51.173195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188229, 41.324123, 51.070080>,  <35.841663, 41.425900, 50.898224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188229, 41.324123, 51.070080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197643, -0.615409, -0.763026,
		0.458553, 0.746009, -0.482907,
		0.866410, -0.254445, 0.429641,
		36.448151, 41.247791, 51.198971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354820, 41.495960, 50.341747>,  <35.841663, 41.425900, 50.898224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354820, 41.495960, 50.341747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512516, 41.256680, 50.620815>,  <36.607132, 41.113113, 50.788254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512516, 41.256680, 50.620815>,  <36.354820, 41.495960, 50.341747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512516, 41.256680, 50.620815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419276, -0.558466, -0.715768,
		0.817793, 0.574696, 0.030642,
		0.394236, -0.598197, 0.697666,
		36.630787, 41.077221, 50.830116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924828, 41.270283, 50.012455>,  <36.354820, 41.495960, 50.341747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924828, 41.270283, 50.012455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.886269, 41.002934, 50.307476>,  <36.863132, 40.842522, 50.484489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.886269, 41.002934, 50.307476>,  <36.924828, 41.270283, 50.012455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886269, 41.002934, 50.307476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467651, -0.684532, -0.559213,
		0.878642, 0.291012, 0.378551,
		-0.096393, -0.668377, 0.737550,
		36.857349, 40.802422, 50.528740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569626, 40.952061, 49.979576>,  <36.924828, 41.270283, 50.012455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569626, 40.952061, 49.979576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327625, 40.703529, 50.178745>,  <37.182423, 40.554413, 50.298244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.327625, 40.703529, 50.178745>,  <37.569626, 40.952061, 49.979576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327625, 40.703529, 50.178745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331754, -0.765194, -0.551740,
		0.723816, -0.168617, 0.669073,
		-0.605004, -0.621326, 0.497921,
		37.146126, 40.517132, 50.328121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014629, 40.416248, 49.972069>,  <37.569626, 40.952061, 49.979576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014629, 40.416248, 49.972069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.645844, 40.272964, 50.030956>,  <37.424572, 40.186996, 50.066288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.645844, 40.272964, 50.030956>,  <38.014629, 40.416248, 49.972069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645844, 40.272964, 50.030956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137842, -0.658761, -0.739617,
		0.361919, -0.661606, 0.656728,
		-0.921962, -0.358206, 0.147221,
		37.369255, 40.165504, 50.075123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079742, 39.770645, 50.042545>,  <38.014629, 40.416248, 49.972069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079742, 39.770645, 50.042545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697140, 39.813301, 49.933941>,  <37.467579, 39.838894, 49.868778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697140, 39.813301, 49.933941>,  <38.079742, 39.770645, 50.042545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697140, 39.813301, 49.933941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100409, -0.753527, -0.649704,
		-0.273872, -0.648710, 0.710049,
		-0.956510, 0.106640, -0.271506,
		37.410187, 39.845295, 49.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865040, 39.071991, 49.916607>,  <38.079742, 39.770645, 50.042545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865040, 39.071991, 49.916607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.554657, 39.261024, 49.749489>,  <37.368427, 39.374447, 49.649220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.554657, 39.261024, 49.749489>,  <37.865040, 39.071991, 49.916607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554657, 39.261024, 49.749489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023480, -0.683517, -0.729557,
		-0.630345, -0.556297, 0.541478,
		-0.775960, 0.472587, -0.417790,
		37.321869, 39.402802, 49.624153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433743, 38.518360, 49.649033>,  <37.865040, 39.071991, 49.916607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433743, 38.518360, 49.649033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.393253, 38.857868, 49.441441>,  <37.368961, 39.061573, 49.316883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.393253, 38.857868, 49.441441>,  <37.433743, 38.518360, 49.649033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393253, 38.857868, 49.441441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114642, -0.508235, -0.853554,
		-0.988237, -0.145893, -0.045862,
		-0.101219, 0.848771, -0.518982,
		37.362888, 39.112499, 49.285748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899136, 38.382038, 49.292793>,  <37.433743, 38.518360, 49.649033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899136, 38.382038, 49.292793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082024, 38.682217, 49.101887>,  <37.191757, 38.862324, 48.987343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.082024, 38.682217, 49.101887>,  <36.899136, 38.382038, 49.292793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082024, 38.682217, 49.101887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069626, -0.504789, -0.860430,
		-0.886624, 0.426637, -0.178549,
		0.457221, 0.750446, -0.477263,
		37.219189, 38.907352, 48.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532581, 38.461281, 48.691101>,  <36.899136, 38.382038, 49.292793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532581, 38.461281, 48.691101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883339, 38.626804, 48.593277>,  <37.093796, 38.726120, 48.534584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.883339, 38.626804, 48.593277>,  <36.532581, 38.461281, 48.691101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883339, 38.626804, 48.593277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085402, -0.366565, -0.926465,
		-0.473030, 0.833301, -0.286100,
		0.876898, 0.413812, -0.244561,
		37.146408, 38.750950, 48.519909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987457, 38.877708, 48.746479>,  <36.532581, 38.461281, 48.691101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987457, 38.877708, 48.746479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618603, 38.783665, 48.623589>,  <35.397289, 38.727238, 48.549854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618603, 38.783665, 48.623589>,  <35.987457, 38.877708, 48.746479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618603, 38.783665, 48.623589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231779, -0.300089, 0.925324,
		-0.309751, 0.924483, 0.222228,
		-0.922135, -0.235113, -0.307229,
		35.341961, 38.713131, 48.531422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440979, 39.346291, 49.041267>,  <35.987457, 38.877708, 48.746479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440979, 39.346291, 49.041267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234436, 39.019463, 48.938683>,  <35.110512, 38.823364, 48.877132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234436, 39.019463, 48.938683>,  <35.440979, 39.346291, 49.041267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234436, 39.019463, 48.938683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389841, -0.042374, 0.919907,
		-0.762496, 0.574978, -0.296648,
		-0.516356, -0.817071, -0.256460,
		35.079529, 38.774342, 48.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899910, 39.516273, 49.273705>,  <35.440979, 39.346291, 49.041267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899910, 39.516273, 49.273705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915195, 39.118374, 49.235725>,  <34.924366, 38.879635, 49.212936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.915195, 39.118374, 49.235725>,  <34.899910, 39.516273, 49.273705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915195, 39.118374, 49.235725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203334, -0.100773, 0.973910,
		-0.978364, -0.017906, -0.206117,
		0.038210, -0.994748, -0.094952,
		34.926659, 38.819950, 49.207241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337669, 39.385258, 49.620880>,  <34.899910, 39.516273, 49.273705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337669, 39.385258, 49.620880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547344, 39.044781, 49.631523>,  <34.673149, 38.840496, 49.637909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547344, 39.044781, 49.631523>,  <34.337669, 39.385258, 49.620880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547344, 39.044781, 49.631523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257190, -0.128444, 0.957787,
		-0.811840, -0.508900, -0.286245,
		0.524184, -0.851189, 0.026607,
		34.704601, 38.789425, 49.639503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927124, 38.930347, 49.900677>,  <34.337669, 39.385258, 49.620880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927124, 38.930347, 49.900677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294388, 38.789562, 49.973457>,  <34.514748, 38.705093, 50.017128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.294388, 38.789562, 49.973457>,  <33.927124, 38.930347, 49.900677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294388, 38.789562, 49.973457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201403, -0.019116, 0.979322,
		-0.341203, -0.935820, -0.088437,
		0.918160, -0.351959, 0.181954,
		34.569836, 38.683975, 50.028042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888802, 38.668808, 50.496368>,  <33.927124, 38.930347, 49.900677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888802, 38.668808, 50.496368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288059, 38.682575, 50.476242>,  <34.527615, 38.690834, 50.464165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288059, 38.682575, 50.476242>,  <33.888802, 38.668808, 50.496368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288059, 38.682575, 50.476242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048312, 0.056783, 0.997217,
		0.037169, -0.997793, 0.055015,
		0.998141, 0.034408, -0.050316,
		34.587502, 38.692898, 50.461147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233429, 38.023254, 50.827854>,  <33.888802, 38.668808, 50.496368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233429, 38.023254, 50.827854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444237, 38.363068, 50.818577>,  <34.570721, 38.566956, 50.813011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444237, 38.363068, 50.818577>,  <34.233429, 38.023254, 50.827854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444237, 38.363068, 50.818577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051169, 0.058957, 0.996948,
		0.848310, -0.524227, 0.074541,
		0.527022, 0.849535, -0.023189,
		34.602345, 38.617928, 50.811619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565945, 37.982594, 51.449844>,  <34.233429, 38.023254, 50.827854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565945, 37.982594, 51.449844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.712891, 38.341408, 51.351566>,  <34.801056, 38.556698, 51.292599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.712891, 38.341408, 51.351566>,  <34.565945, 37.982594, 51.449844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712891, 38.341408, 51.351566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043031, 0.247494, 0.967933,
		0.929082, -0.366154, 0.052320,
		0.367362, 0.897038, -0.245698,
		34.823097, 38.610519, 51.277859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129005, 38.145004, 51.900387>,  <34.565945, 37.982594, 51.449844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129005, 38.145004, 51.900387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001373, 38.500378, 51.768406>,  <34.924793, 38.713600, 51.689217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.001373, 38.500378, 51.768406>,  <35.129005, 38.145004, 51.900387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001373, 38.500378, 51.768406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080450, 0.372288, 0.924624,
		0.944306, 0.268488, -0.190265,
		-0.319084, 0.888435, -0.329954,
		34.905647, 38.766907, 51.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567039, 38.700581, 52.209553>,  <35.129005, 38.145004, 51.900387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567039, 38.700581, 52.209553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238590, 38.897408, 52.093880>,  <35.041523, 39.015503, 52.024475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238590, 38.897408, 52.093880>,  <35.567039, 38.700581, 52.209553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238590, 38.897408, 52.093880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036049, 0.550374, 0.834139,
		0.569615, 0.674504, -0.469662,
		-0.821120, 0.492070, -0.289187,
		34.992252, 39.045029, 52.007122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738922, 39.333702, 52.421726>,  <35.567039, 38.700581, 52.209553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738922, 39.333702, 52.421726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341080, 39.320118, 52.382515>,  <35.102375, 39.311966, 52.358990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341080, 39.320118, 52.382515>,  <35.738922, 39.333702, 52.421726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341080, 39.320118, 52.382515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101820, 0.500518, 0.859718,
		0.019867, 0.865059, -0.501275,
		-0.994604, -0.033960, -0.098024,
		35.042698, 39.309929, 52.353107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586998, 39.987000, 52.597366>,  <35.738922, 39.333702, 52.421726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586998, 39.987000, 52.597366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242924, 39.786278, 52.633759>,  <35.036480, 39.665844, 52.655594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242924, 39.786278, 52.633759>,  <35.586998, 39.987000, 52.597366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242924, 39.786278, 52.633759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192111, 0.484080, 0.853674,
		-0.472421, 0.716837, -0.512799,
		-0.860181, -0.501808, 0.090977,
		34.984871, 39.635735, 52.661053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919563, 40.465034, 52.706043>,  <35.586998, 39.987000, 52.597366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919563, 40.465034, 52.706043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.899059, 40.102566, 52.873955>,  <34.886757, 39.885082, 52.974701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.899059, 40.102566, 52.873955>,  <34.919563, 40.465034, 52.706043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899059, 40.102566, 52.873955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107019, 0.422899, 0.899835,
		-0.992935, 0.001201, -0.118656,
		-0.051260, -0.906176, 0.419783,
		34.883682, 39.830711, 52.999889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033054, 40.582226, 52.057537>,  <34.919563, 40.465034, 52.706043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033054, 40.582226, 52.057537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698471, 40.375957, 51.983334>,  <34.497719, 40.252197, 51.938812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698471, 40.375957, 51.983334>,  <35.033054, 40.582226, 52.057537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698471, 40.375957, 51.983334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507794, 0.856603, -0.091521,
		0.206100, 0.017645, -0.978372,
		-0.836461, -0.515674, -0.185506,
		34.447533, 40.221256, 51.927681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840008, 41.407669, 51.999756>,  <35.033054, 40.582226, 52.057537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840008, 41.407669, 51.999756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669861, 41.746555, 51.872456>,  <34.567772, 41.949886, 51.796074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.669861, 41.746555, 51.872456>,  <34.840008, 41.407669, 51.999756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669861, 41.746555, 51.872456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011856, -0.356836, -0.934091,
		-0.904944, -0.393558, 0.161831,
		-0.425366, 0.847219, -0.318251,
		34.542252, 42.000721, 51.776981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239616, 41.235031, 51.540970>,  <34.840008, 41.407669, 51.999756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239616, 41.235031, 51.540970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331684, 41.612820, 51.447166>,  <34.386925, 41.839493, 51.390884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331684, 41.612820, 51.447166>,  <34.239616, 41.235031, 51.540970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331684, 41.612820, 51.447166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208368, -0.187563, -0.959897,
		-0.950582, 0.269800, 0.153628,
		0.230166, 0.944472, -0.234511,
		34.400734, 41.896160, 51.376812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766712, 41.428837, 51.080528>,  <34.239616, 41.235031, 51.540970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766712, 41.428837, 51.080528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.046745, 41.708160, 51.020863>,  <34.214764, 41.875755, 50.985062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.046745, 41.708160, 51.020863>,  <33.766712, 41.428837, 51.080528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046745, 41.708160, 51.020863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153344, -0.057001, -0.986527,
		-0.697407, 0.713520, 0.067177,
		0.700078, 0.698312, -0.149167,
		34.256767, 41.917656, 50.976112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426903, 41.966579, 50.591656>,  <33.766712, 41.428837, 51.080528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426903, 41.966579, 50.591656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826580, 41.975292, 50.578205>,  <34.066387, 41.980518, 50.570137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826580, 41.975292, 50.578205>,  <33.426903, 41.966579, 50.591656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826580, 41.975292, 50.578205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037240, 0.195541, -0.979988,
		-0.014769, 0.980454, 0.196195,
		0.999197, 0.021780, -0.033624,
		34.126339, 41.981827, 50.568119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623627, 42.504478, 50.212994>,  <33.426903, 41.966579, 50.591656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623627, 42.504478, 50.212994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943554, 42.266041, 50.184792>,  <34.135509, 42.122978, 50.167870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943554, 42.266041, 50.184792>,  <33.623627, 42.504478, 50.212994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943554, 42.266041, 50.184792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091298, 0.236900, -0.967235,
		0.593260, 0.767174, 0.243898,
		0.799817, -0.596089, -0.070502,
		34.183498, 42.087215, 50.163643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040318, 42.853615, 49.762280>,  <33.623627, 42.504478, 50.212994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040318, 42.853615, 49.762280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165752, 42.474060, 49.776596>,  <34.241013, 42.246326, 49.785187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.165752, 42.474060, 49.776596>,  <34.040318, 42.853615, 49.762280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165752, 42.474060, 49.776596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025714, -0.029190, -0.999243,
		0.949210, 0.314275, 0.015246,
		0.313592, -0.948883, 0.035789,
		34.259830, 42.189396, 49.787334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450676, 42.894169, 49.205780>,  <34.040318, 42.853615, 49.762280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450676, 42.894169, 49.205780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397785, 42.503941, 49.275963>,  <34.366051, 42.269806, 49.318073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.397785, 42.503941, 49.275963>,  <34.450676, 42.894169, 49.205780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397785, 42.503941, 49.275963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302367, -0.208274, -0.930159,
		0.943976, -0.069939, 0.322519,
		-0.132227, -0.975567, 0.175459,
		34.358116, 42.211269, 49.328602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064575, 43.338211, 49.208813>,  <34.450676, 42.894169, 49.205780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064575, 43.338211, 49.208813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085941, 43.704639, 49.049835>,  <35.098763, 43.924496, 48.954449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085941, 43.704639, 49.049835>,  <35.064575, 43.338211, 49.208813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085941, 43.704639, 49.049835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101818, 0.390945, 0.914765,
		0.993368, -0.089331, -0.072389,
		0.053417, 0.916069, -0.397448,
		35.101967, 43.979462, 48.930599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704483, 43.676826, 49.494362>,  <35.064575, 43.338211, 49.208813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704483, 43.676826, 49.494362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445972, 43.955769, 49.370407>,  <35.290867, 44.123135, 49.296036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445972, 43.955769, 49.370407>,  <35.704483, 43.676826, 49.494362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445972, 43.955769, 49.370407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065849, 0.455528, 0.887783,
		0.760261, 0.553343, -0.340316,
		-0.646272, 0.697356, -0.309883,
		35.252090, 44.164974, 49.277443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042355, 44.286686, 49.612942>,  <35.704483, 43.676826, 49.494362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042355, 44.286686, 49.612942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653393, 44.378357, 49.595478>,  <35.420017, 44.433361, 49.584999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.653393, 44.378357, 49.595478>,  <36.042355, 44.286686, 49.612942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653393, 44.378357, 49.595478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054179, 0.403866, 0.913212,
		0.226923, 0.885646, -0.405138,
		-0.972404, 0.229179, -0.043663,
		35.361671, 44.447109, 49.582378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973465, 44.975071, 49.723129>,  <36.042355, 44.286686, 49.612942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973465, 44.975071, 49.723129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618221, 44.814289, 49.812298>,  <35.405075, 44.717819, 49.865799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618221, 44.814289, 49.812298>,  <35.973465, 44.975071, 49.723129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618221, 44.814289, 49.812298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050227, 0.397231, 0.916343,
		-0.456876, 0.825011, -0.332596,
		-0.888111, -0.401950, 0.222924,
		35.351788, 44.693703, 49.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579987, 45.485027, 49.991116>,  <35.973465, 44.975071, 49.723129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579987, 45.485027, 49.991116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433201, 45.135529, 50.118805>,  <35.345131, 44.925831, 50.195419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433201, 45.135529, 50.118805>,  <35.579987, 45.485027, 49.991116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433201, 45.135529, 50.118805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049487, 0.324337, 0.944646,
		-0.928917, 0.362450, -0.075782,
		-0.366966, -0.873748, 0.319219,
		35.323112, 44.873405, 50.214569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297688, 45.758324, 50.508648>,  <35.579987, 45.485027, 49.991116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297688, 45.758324, 50.508648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308037, 45.363129, 50.569580>,  <35.314247, 45.126011, 50.606140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308037, 45.363129, 50.569580>,  <35.297688, 45.758324, 50.508648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308037, 45.363129, 50.569580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008683, 0.152156, 0.988319,
		-0.999628, -0.026893, -0.004643,
		0.025872, -0.987990, 0.152333,
		35.315800, 45.066730, 50.615280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912735, 45.638199, 51.179970>,  <35.297688, 45.758324, 50.508648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912735, 45.638199, 51.179970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132858, 45.304676, 51.162422>,  <35.264931, 45.104561, 51.151894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.132858, 45.304676, 51.162422>,  <34.912735, 45.638199, 51.179970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132858, 45.304676, 51.162422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109675, 0.020100, 0.993764,
		-0.827728, -0.551686, 0.102509,
		0.550307, -0.833809, -0.043869,
		35.297951, 45.054535, 51.149261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698902, 45.192211, 51.817291>,  <34.912735, 45.638199, 51.179970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698902, 45.192211, 51.817291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034081, 45.032215, 51.668774>,  <35.235188, 44.936218, 51.579662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034081, 45.032215, 51.668774>,  <34.698902, 45.192211, 51.817291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034081, 45.032215, 51.668774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383853, -0.051668, 0.921947,
		-0.387958, -0.915060, 0.110244,
		0.837941, -0.399994, -0.371294,
		35.285461, 44.912216, 51.557384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945843, 44.632763, 52.270626>,  <34.698902, 45.192211, 51.817291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945843, 44.632763, 52.270626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287239, 44.723606, 52.083019>,  <35.492077, 44.778114, 51.970455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.287239, 44.723606, 52.083019>,  <34.945843, 44.632763, 52.270626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287239, 44.723606, 52.083019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516731, -0.252385, 0.818102,
		0.067427, -0.940597, -0.332764,
		0.853488, 0.227111, -0.469018,
		35.543285, 44.791740, 51.942314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.894505, 39.489948, 36.542290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287758, 39.556541, 36.511986>,  <35.523708, 39.596497, 36.493801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287758, 39.556541, 36.511986>,  <34.894505, 39.489948, 36.542290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287758, 39.556541, 36.511986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001830, 0.405240, 0.914209,
		0.182900, -0.898924, 0.398099,
		0.983130, 0.166480, -0.075764,
		35.582695, 39.606487, 36.489258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112053, 39.218636, 37.208012>,  <34.894505, 39.489948, 36.542290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112053, 39.218636, 37.208012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384373, 39.469582, 37.056793>,  <35.547764, 39.620152, 36.966061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384373, 39.469582, 37.056793>,  <35.112053, 39.218636, 37.208012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384373, 39.469582, 37.056793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132576, 0.402063, 0.905963,
		0.720373, -0.666898, 0.190549,
		0.680798, 0.627369, -0.378050,
		35.588612, 39.657791, 36.943378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678787, 39.090225, 37.621964>,  <35.112053, 39.218636, 37.208012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678787, 39.090225, 37.621964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732258, 39.452953, 37.462063>,  <35.764339, 39.670589, 37.366123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732258, 39.452953, 37.462063>,  <35.678787, 39.090225, 37.621964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732258, 39.452953, 37.462063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270506, 0.354663, 0.895009,
		0.953392, -0.227779, -0.197890,
		0.133680, 0.906825, -0.399748,
		35.772362, 39.725002, 37.342140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156860, 39.383842, 38.065952>,  <35.678787, 39.090225, 37.621964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156860, 39.383842, 38.065952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008053, 39.709797, 37.888161>,  <35.918770, 39.905369, 37.781487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008053, 39.709797, 37.888161>,  <36.156860, 39.383842, 38.065952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008053, 39.709797, 37.888161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000168, 0.478790, 0.877929,
		0.928225, 0.326682, -0.177983,
		-0.372020, 0.814886, -0.444480,
		35.896446, 39.954262, 37.754818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555317, 39.925499, 38.332111>,  <36.156860, 39.383842, 38.065952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555317, 39.925499, 38.332111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218849, 40.074471, 38.175278>,  <36.016968, 40.163853, 38.081177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218849, 40.074471, 38.175278>,  <36.555317, 39.925499, 38.332111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218849, 40.074471, 38.175278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138409, 0.552627, 0.821855,
		0.522762, 0.745586, -0.413305,
		-0.841168, 0.372430, -0.392088,
		35.966499, 40.186199, 38.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651867, 40.621796, 38.498283>,  <36.555317, 39.925499, 38.332111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651867, 40.621796, 38.498283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258362, 40.582146, 38.438431>,  <36.022259, 40.558357, 38.402519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258362, 40.582146, 38.438431>,  <36.651867, 40.621796, 38.498283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258362, 40.582146, 38.438431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177538, 0.659830, 0.730140,
		0.026357, 0.744848, -0.666713,
		-0.983761, -0.099123, -0.149630,
		35.963234, 40.552410, 38.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420135, 41.277203, 38.568233>,  <36.651867, 40.621796, 38.498283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420135, 41.277203, 38.568233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130684, 41.019089, 38.666195>,  <35.957012, 40.864220, 38.724972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130684, 41.019089, 38.666195>,  <36.420135, 41.277203, 38.568233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130684, 41.019089, 38.666195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204291, 0.539188, 0.817032,
		-0.659267, 0.541192, -0.521994,
		-0.723624, -0.645281, 0.244908,
		35.913597, 40.825504, 38.739666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789867, 41.682903, 38.585060>,  <36.420135, 41.277203, 38.568233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789867, 41.682903, 38.585060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736454, 41.355061, 38.807919>,  <35.704407, 41.158356, 38.941635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736454, 41.355061, 38.807919>,  <35.789867, 41.682903, 38.585060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736454, 41.355061, 38.807919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279492, 0.570503, 0.772276,
		-0.950818, -0.052596, -0.305253,
		-0.133529, -0.819610, 0.557144,
		35.696396, 41.109177, 38.975063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158203, 41.759422, 38.862305>,  <35.789867, 41.682903, 38.585060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158203, 41.759422, 38.862305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348843, 41.486378, 39.083897>,  <35.463226, 41.322552, 39.216854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348843, 41.486378, 39.083897>,  <35.158203, 41.759422, 38.862305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348843, 41.486378, 39.083897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258287, 0.493621, 0.830438,
		-0.840323, -0.538871, 0.058949,
		0.476598, -0.682610, 0.553984,
		35.491821, 41.281593, 39.250092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708225, 41.817223, 39.455757>,  <35.158203, 41.759422, 38.862305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708225, 41.817223, 39.455757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012646, 41.595741, 39.590939>,  <35.195297, 41.462852, 39.672047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012646, 41.595741, 39.590939>,  <34.708225, 41.817223, 39.455757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012646, 41.595741, 39.590939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295686, 0.167595, 0.940469,
		-0.577379, -0.815675, -0.036173,
		0.761054, -0.553703, 0.337949,
		35.240963, 41.429630, 39.692322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432125, 41.317783, 40.059845>,  <34.708225, 41.817223, 39.455757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432125, 41.317783, 40.059845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830029, 41.336643, 40.096130>,  <35.068771, 41.347961, 40.117901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830029, 41.336643, 40.096130>,  <34.432125, 41.317783, 40.059845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830029, 41.336643, 40.096130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092472, 0.036521, 0.995045,
		0.043657, -0.998217, 0.040695,
		0.994758, 0.047204, 0.090713,
		35.128456, 41.350788, 40.123344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577782, 40.988346, 40.700291>,  <34.432125, 41.317783, 40.059845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577782, 40.988346, 40.700291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879734, 41.236008, 40.613754>,  <35.060905, 41.384605, 40.561832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879734, 41.236008, 40.613754>,  <34.577782, 40.988346, 40.700291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879734, 41.236008, 40.613754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124705, 0.188348, 0.974153,
		0.643896, -0.762350, 0.064969,
		0.754882, 0.619151, -0.216345,
		35.106197, 41.421753, 40.548851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609142, 40.263981, 40.579243>,  <34.577782, 40.988346, 40.700291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609142, 40.263981, 40.579243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364727, 39.971096, 40.699574>,  <34.218079, 39.795364, 40.771770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364727, 39.971096, 40.699574>,  <34.609142, 40.263981, 40.579243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364727, 39.971096, 40.699574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055569, -0.418759, -0.906395,
		0.789649, -0.537124, 0.296566,
		-0.611036, -0.732215, 0.300826,
		34.181416, 39.751431, 40.789822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853447, 39.606907, 40.442459>,  <34.609142, 40.263981, 40.579243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853447, 39.606907, 40.442459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454376, 39.583153, 40.455784>,  <34.214931, 39.568901, 40.463779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454376, 39.583153, 40.455784>,  <34.853447, 39.606907, 40.442459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454376, 39.583153, 40.455784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006522, -0.403678, -0.914878,
		0.067775, -0.912972, 0.402354,
		-0.997679, -0.059382, 0.033314,
		34.155071, 39.565338, 40.465778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649406, 38.822388, 40.362476>,  <34.853447, 39.606907, 40.442459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649406, 38.822388, 40.362476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294914, 38.991634, 40.287025>,  <34.082218, 39.093182, 40.241756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294914, 38.991634, 40.287025>,  <34.649406, 38.822388, 40.362476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294914, 38.991634, 40.287025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124048, -0.609055, -0.783367,
		-0.446335, -0.670842, 0.592247,
		-0.886226, 0.423111, -0.188626,
		34.029045, 39.118568, 40.230438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093441, 38.244476, 40.435009>,  <34.649406, 38.822388, 40.362476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093441, 38.244476, 40.435009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996933, 38.544086, 40.188187>,  <33.939030, 38.723850, 40.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996933, 38.544086, 40.188187>,  <34.093441, 38.244476, 40.435009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996933, 38.544086, 40.188187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073554, -0.648122, -0.757976,
		-0.967667, -0.137489, 0.211466,
		-0.241269, 0.749023, -0.617053,
		33.924553, 38.768795, 40.003071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985390, 37.842552, 39.955990>,  <34.093441, 38.244476, 40.435009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985390, 37.842552, 39.955990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897991, 38.199074, 39.797073>,  <33.845554, 38.412987, 39.701725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897991, 38.199074, 39.797073>,  <33.985390, 37.842552, 39.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897991, 38.199074, 39.797073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089096, -0.423647, -0.901435,
		-0.971763, -0.161559, 0.171976,
		-0.218492, 0.891303, -0.397290,
		33.832443, 38.466465, 39.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361687, 37.853252, 39.592834>,  <33.985390, 37.842552, 39.955990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361687, 37.853252, 39.592834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568420, 38.142685, 39.409828>,  <33.692459, 38.316345, 39.300026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568420, 38.142685, 39.409828>,  <33.361687, 37.853252, 39.592834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568420, 38.142685, 39.409828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128214, -0.462973, -0.877050,
		-0.846432, 0.511946, -0.146505,
		0.516830, 0.723580, -0.457514,
		33.723469, 38.359760, 39.272575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990013, 38.033497, 38.960838>,  <33.361687, 37.853252, 39.592834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990013, 38.033497, 38.960838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353256, 38.175682, 38.872311>,  <33.571201, 38.260994, 38.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353256, 38.175682, 38.872311>,  <32.990013, 38.033497, 38.960838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353256, 38.175682, 38.872311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059060, -0.414545, -0.908111,
		-0.414545, 0.837736, -0.355459,
		0.908111, 0.355459, -0.221324,
		33.625690, 38.282318, 38.805912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889053, 38.439262, 38.390652>,  <32.990013, 38.033497, 38.960838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889053, 38.439262, 38.390652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262173, 38.295387, 38.399677>,  <33.486046, 38.209061, 38.405094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262173, 38.295387, 38.399677>,  <32.889053, 38.439262, 38.390652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262173, 38.295387, 38.399677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148571, -0.440832, -0.885208,
		0.328348, 0.822369, -0.464647,
		0.932799, -0.359689, 0.022566,
		33.542011, 38.187481, 38.406448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078575, 38.493382, 37.804775>,  <32.889053, 38.439262, 38.390652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078575, 38.493382, 37.804775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354702, 38.235291, 37.935711>,  <33.520378, 38.080437, 38.014271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354702, 38.235291, 37.935711>,  <33.078575, 38.493382, 37.804775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354702, 38.235291, 37.935711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086788, -0.523011, -0.847896,
		0.718284, 0.556908, -0.417041,
		0.690316, -0.645224, 0.327337,
		33.561798, 38.041725, 38.033913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448780, 38.324287, 37.145870>,  <33.078575, 38.493382, 37.804775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448780, 38.324287, 37.145870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550053, 38.057751, 37.426411>,  <33.610817, 37.897831, 37.594734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550053, 38.057751, 37.426411>,  <33.448780, 38.324287, 37.145870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550053, 38.057751, 37.426411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185181, -0.678183, -0.711179,
		0.949529, 0.309937, -0.048313,
		0.253186, -0.666339, 0.701349,
		33.626007, 37.857849, 37.636814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072861, 37.990883, 36.896172>,  <33.448780, 38.324287, 37.145870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072861, 37.990883, 36.896172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874718, 37.736904, 37.133312>,  <33.755833, 37.584518, 37.275597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874718, 37.736904, 37.133312>,  <34.072861, 37.990883, 36.896172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874718, 37.736904, 37.133312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022067, -0.691440, -0.722097,
		0.868410, -0.344613, 0.356520,
		-0.495356, -0.634944, 0.592848,
		33.726112, 37.546421, 37.311165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434666, 37.323235, 36.829098>,  <34.072861, 37.990883, 36.896172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434666, 37.323235, 36.829098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072063, 37.235409, 36.973343>,  <33.854504, 37.182713, 37.059891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072063, 37.235409, 36.973343>,  <34.434666, 37.323235, 36.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072063, 37.235409, 36.973343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130346, -0.666863, -0.733692,
		0.401578, -0.712098, 0.575892,
		-0.906501, -0.219569, 0.360617,
		33.800114, 37.169537, 37.081528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457214, 36.627289, 36.801407>,  <34.434666, 37.323235, 36.829098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457214, 36.627289, 36.801407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072792, 36.735981, 36.821529>,  <33.842140, 36.801197, 36.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072792, 36.735981, 36.821529>,  <34.457214, 36.627289, 36.801407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072792, 36.735981, 36.821529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233466, -0.700947, -0.673919,
		-0.147861, -0.659420, 0.737090,
		-0.961057, 0.271732, 0.050309,
		33.784473, 36.817501, 36.836620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060184, 36.019833, 37.076756>,  <34.457214, 36.627289, 36.801407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060184, 36.019833, 37.076756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773647, 36.234570, 36.898472>,  <33.601727, 36.363411, 36.791500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773647, 36.234570, 36.898472>,  <34.060184, 36.019833, 37.076756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773647, 36.234570, 36.898472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342809, -0.827150, -0.445314,
		-0.607731, -0.166203, 0.776556,
		-0.716341, 0.536842, -0.445709,
		33.558746, 36.395622, 36.764759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329659, 35.660965, 37.639633>,  <34.060184, 36.019833, 37.076756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329659, 35.660965, 37.639633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721817, 35.606834, 37.696926>,  <34.957111, 35.574356, 37.731304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721817, 35.606834, 37.696926>,  <34.329659, 35.660965, 37.639633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721817, 35.606834, 37.696926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169845, -0.211776, 0.962447,
		-0.099911, -0.967904, -0.230608,
		0.980393, -0.135326, 0.143235,
		35.015934, 35.566235, 37.739895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404575, 35.055382, 38.026775>,  <34.329659, 35.660965, 37.639633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404575, 35.055382, 38.026775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722588, 35.294106, 38.070118>,  <34.913395, 35.437340, 38.096123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722588, 35.294106, 38.070118>,  <34.404575, 35.055382, 38.026775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722588, 35.294106, 38.070118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100361, -0.046748, 0.993852,
		0.598203, -0.801022, 0.022729,
		0.795035, 0.596807, 0.108356,
		34.961098, 35.473148, 38.102623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135456, 35.601696, 38.355198>,  <34.404575, 35.055382, 38.026775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135456, 35.601696, 38.355198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530640, 35.575916, 38.411453>,  <34.767750, 35.560448, 38.445206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530640, 35.575916, 38.411453>,  <34.135456, 35.601696, 38.355198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530640, 35.575916, 38.411453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112282, 0.326600, 0.938470,
		-0.106417, -0.942963, 0.315431,
		0.987962, -0.064452, 0.140634,
		34.827026, 35.556580, 38.453644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290077, 35.249229, 39.016464>,  <34.135456, 35.601696, 38.355198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290077, 35.249229, 39.016464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604092, 35.475101, 38.914593>,  <34.792500, 35.610622, 38.853470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604092, 35.475101, 38.914593>,  <34.290077, 35.249229, 39.016464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604092, 35.475101, 38.914593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065152, 0.484118, 0.872574,
		0.616015, -0.668409, 0.416840,
		0.785036, 0.564676, -0.254676,
		34.839603, 35.644505, 38.838192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788158, 35.220512, 39.618362>,  <34.290077, 35.249229, 39.016464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788158, 35.220512, 39.618362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924732, 35.538544, 39.417854>,  <35.006676, 35.729362, 39.297550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924732, 35.538544, 39.417854>,  <34.788158, 35.220512, 39.618362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924732, 35.538544, 39.417854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055809, 0.515229, 0.855234,
		0.938246, -0.319984, 0.131545,
		0.341437, 0.795079, -0.501270,
		35.027164, 35.777069, 39.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253952, 35.511909, 40.047565>,  <34.788158, 35.220512, 39.618362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253952, 35.511909, 40.047565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212105, 35.829338, 39.807796>,  <35.186996, 36.019794, 39.663937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212105, 35.829338, 39.807796>,  <35.253952, 35.511909, 40.047565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212105, 35.829338, 39.807796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102391, 0.608118, 0.787216,
		0.989227, 0.020984, -0.144876,
		-0.104621, 0.793569, -0.599419,
		35.180717, 36.067410, 39.627972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885654, 35.920574, 40.123997>,  <35.253952, 35.511909, 40.047565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885654, 35.920574, 40.123997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613846, 36.182125, 39.990910>,  <35.450760, 36.339054, 39.911057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613846, 36.182125, 39.990910>,  <35.885654, 35.920574, 40.123997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613846, 36.182125, 39.990910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140895, 0.561367, 0.815485,
		0.720000, 0.507261, -0.473589,
		-0.679520, 0.653876, -0.332714,
		35.409988, 36.378288, 39.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130177, 36.598553, 40.246353>,  <35.885654, 35.920574, 40.123997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130177, 36.598553, 40.246353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738235, 36.673599, 40.218967>,  <35.503071, 36.718628, 40.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738235, 36.673599, 40.218967>,  <36.130177, 36.598553, 40.246353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738235, 36.673599, 40.218967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045812, 0.544810, 0.837307,
		0.194387, 0.817303, -0.542429,
		-0.979854, 0.187612, -0.068462,
		35.444279, 36.729881, 40.198429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016651, 37.300491, 40.350658>,  <36.130177, 36.598553, 40.246353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016651, 37.300491, 40.350658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657124, 37.141205, 40.423920>,  <35.441406, 37.045631, 40.467876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657124, 37.141205, 40.423920>,  <36.016651, 37.300491, 40.350658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657124, 37.141205, 40.423920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026004, 0.465573, 0.884627,
		-0.437545, 0.790358, -0.428821,
		-0.898820, -0.398215, 0.183157,
		35.387478, 37.021740, 40.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575775, 37.773098, 40.488899>,  <36.016651, 37.300491, 40.350658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575775, 37.773098, 40.488899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382053, 37.470993, 40.665543>,  <35.265820, 37.289730, 40.771530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382053, 37.470993, 40.665543>,  <35.575775, 37.773098, 40.488899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382053, 37.470993, 40.665543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064308, 0.534125, 0.842956,
		-0.872530, 0.379852, -0.307251,
		-0.484309, -0.755264, 0.441613,
		35.236759, 37.244415, 40.798027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157120, 38.093861, 40.955193>,  <35.575775, 37.773098, 40.488899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157120, 38.093861, 40.955193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172901, 37.717072, 41.088535>,  <35.182369, 37.490997, 41.168541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172901, 37.717072, 41.088535>,  <35.157120, 38.093861, 40.955193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172901, 37.717072, 41.088535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185687, 0.320895, 0.928734,
		-0.981816, -0.098547, -0.162251,
		0.039458, -0.941974, 0.333359,
		35.184738, 37.434479, 41.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487301, 37.943661, 41.356503>,  <35.157120, 38.093861, 40.955193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487301, 37.943661, 41.356503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797302, 37.716507, 41.467407>,  <34.983303, 37.580215, 41.533951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797302, 37.716507, 41.467407>,  <34.487301, 37.943661, 41.356503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797302, 37.716507, 41.467407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198641, 0.197598, 0.959946,
		-0.599927, -0.799037, 0.040334,
		0.775003, -0.567886, 0.277266,
		35.029804, 37.546143, 41.550587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207699, 37.722084, 41.965900>,  <34.487301, 37.943661, 41.356503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207699, 37.722084, 41.965900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587147, 37.595798, 41.974339>,  <34.814816, 37.520027, 41.979401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587147, 37.595798, 41.974339>,  <34.207699, 37.722084, 41.965900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587147, 37.595798, 41.974339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002377, 0.073772, 0.997272,
		-0.316408, -0.945982, 0.070732,
		0.948620, -0.315713, 0.021093,
		34.871735, 37.501083, 41.980667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193439, 37.298416, 42.618740>,  <34.207699, 37.722084, 41.965900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193439, 37.298416, 42.618740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583897, 37.322701, 42.535358>,  <34.818172, 37.337269, 42.485329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583897, 37.322701, 42.535358>,  <34.193439, 37.298416, 42.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583897, 37.322701, 42.535358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214578, -0.123326, 0.968889,
		0.033110, -0.990507, -0.133411,
		0.976146, 0.060707, -0.208458,
		34.876740, 37.340912, 42.472820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579838, 36.697830, 43.010731>,  <34.193439, 37.298416, 42.618740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579838, 36.697830, 43.010731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803562, 37.018272, 42.925507>,  <34.937798, 37.210537, 42.874371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803562, 37.018272, 42.925507>,  <34.579838, 36.697830, 43.010731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803562, 37.018272, 42.925507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360472, -0.003597, 0.932763,
		0.746477, -0.598510, -0.290789,
		0.559314, 0.801108, -0.213061,
		34.971355, 37.258606, 42.861588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191780, 36.467999, 43.334816>,  <34.579838, 36.697830, 43.010731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191780, 36.467999, 43.334816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237820, 36.862202, 43.284981>,  <35.265442, 37.098724, 43.255081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237820, 36.862202, 43.284981>,  <35.191780, 36.467999, 43.334816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237820, 36.862202, 43.284981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384336, 0.071472, 0.920423,
		0.915991, -0.153820, -0.370540,
		0.115096, 0.985511, -0.124586,
		35.272350, 37.157856, 43.247604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851788, 36.632793, 43.701565>,  <35.191780, 36.467999, 43.334816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851788, 36.632793, 43.701565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645554, 36.974209, 43.671494>,  <35.521812, 37.179058, 43.653450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645554, 36.974209, 43.671494>,  <35.851788, 36.632793, 43.701565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645554, 36.974209, 43.671494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201658, 0.206152, 0.957515,
		0.832772, 0.478516, -0.278410,
		-0.515581, 0.853536, -0.075181,
		35.490879, 37.230270, 43.648941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287567, 37.137737, 44.019802>,  <35.851788, 36.632793, 43.701565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287567, 37.137737, 44.019802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925789, 37.307732, 44.005013>,  <35.708721, 37.409729, 43.996140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925789, 37.307732, 44.005013>,  <36.287567, 37.137737, 44.019802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925789, 37.307732, 44.005013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136775, 0.370983, 0.918512,
		0.404072, 0.825686, -0.393661,
		-0.904444, 0.424988, -0.036971,
		35.654457, 37.435226, 43.993923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341671, 37.895088, 44.259403>,  <36.287567, 37.137737, 44.019802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341671, 37.895088, 44.259403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962685, 37.779289, 44.313805>,  <35.735291, 37.709808, 44.346447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962685, 37.779289, 44.313805>,  <36.341671, 37.895088, 44.259403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962685, 37.779289, 44.313805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002616, 0.418176, 0.908362,
		-0.319841, 0.861000, -0.395451,
		-0.947468, -0.289497, 0.136002,
		35.678444, 37.692440, 44.354607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042709, 38.495598, 44.486977>,  <36.341671, 37.895088, 44.259403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042709, 38.495598, 44.486977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780571, 38.207172, 44.576939>,  <35.623287, 38.034115, 44.630917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780571, 38.207172, 44.576939>,  <36.042709, 38.495598, 44.486977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780571, 38.207172, 44.576939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043044, 0.332923, 0.941971,
		-0.754097, 0.607641, -0.249218,
		-0.655350, -0.721065, 0.224901,
		35.583965, 37.990852, 44.644409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450081, 38.815029, 44.843761>,  <36.042709, 38.495598, 44.486977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450081, 38.815029, 44.843761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420715, 38.436314, 44.969109>,  <35.403095, 38.209084, 45.044315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420715, 38.436314, 44.969109>,  <35.450081, 38.815029, 44.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420715, 38.436314, 44.969109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280092, 0.321144, 0.904663,
		-0.957162, -0.021359, -0.288764,
		-0.073412, -0.946789, 0.313369,
		35.398693, 38.152275, 45.063118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890530, 38.673721, 45.293022>,  <35.450081, 38.815029, 44.843761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890530, 38.673721, 45.293022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125320, 38.365829, 45.393410>,  <35.266193, 38.181095, 45.453640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125320, 38.365829, 45.393410>,  <34.890530, 38.673721, 45.293022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125320, 38.365829, 45.393410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200560, 0.162078, 0.966181,
		-0.784371, -0.617457, -0.059241,
		0.586974, -0.769726, 0.250966,
		35.301414, 38.134911, 45.468700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396679, 38.289505, 45.772045>,  <34.890530, 38.673721, 45.293022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396679, 38.289505, 45.772045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769768, 38.160908, 45.837379>,  <34.993622, 38.083752, 45.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769768, 38.160908, 45.837379>,  <34.396679, 38.289505, 45.772045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769768, 38.160908, 45.837379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167113, 0.016009, 0.985808,
		-0.319542, -0.946777, -0.038794,
		0.932720, -0.321490, 0.163335,
		35.049583, 38.064461, 45.886379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321091, 37.955261, 46.327007>,  <34.396679, 38.289505, 45.772045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321091, 37.955261, 46.327007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720257, 37.981045, 46.327972>,  <34.959759, 37.996513, 46.328552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720257, 37.981045, 46.327972>,  <34.321091, 37.955261, 46.327007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720257, 37.981045, 46.327972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000794, -0.025157, 0.999683,
		0.064501, -0.997603, -0.025053,
		0.997917, 0.064460, 0.002415,
		35.019630, 38.000381, 46.328697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648876, 37.455784, 46.687832>,  <34.321091, 37.955261, 46.327007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648876, 37.455784, 46.687832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909103, 37.757668, 46.721699>,  <35.065239, 37.938797, 46.742020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909103, 37.757668, 46.721699>,  <34.648876, 37.455784, 46.687832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909103, 37.757668, 46.721699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130713, 0.001450, 0.991419,
		0.748115, -0.656053, 0.099595,
		0.650568, 0.754714, 0.084670,
		35.104275, 37.984081, 46.747101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200462, 37.220985, 47.239788>,  <34.648876, 37.455784, 46.687832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200462, 37.220985, 47.239788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210850, 37.619213, 47.203644>,  <35.217083, 37.858150, 47.181957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210850, 37.619213, 47.203644>,  <35.200462, 37.220985, 47.239788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210850, 37.619213, 47.203644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093992, 0.087562, 0.991715,
		0.995234, -0.034244, -0.091302,
		0.025966, 0.995570, -0.090363,
		35.218639, 37.917885, 47.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769066, 37.393078, 47.588188>,  <35.200462, 37.220985, 47.239788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769066, 37.393078, 47.588188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555798, 37.731239, 47.575432>,  <35.427837, 37.934135, 47.567780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555798, 37.731239, 47.575432>,  <35.769066, 37.393078, 47.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555798, 37.731239, 47.575432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091958, 0.095381, 0.991184,
		0.840996, 0.525537, -0.128596,
		-0.533170, 0.845407, -0.031888,
		35.395847, 37.984863, 47.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103180, 37.855610, 48.069576>,  <35.769066, 37.393078, 47.588188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103180, 37.855610, 48.069576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753719, 38.041168, 48.010868>,  <35.544044, 38.152504, 47.975643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753719, 38.041168, 48.010868>,  <36.103180, 37.855610, 48.069576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753719, 38.041168, 48.010868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047200, 0.381022, 0.923360,
		0.484264, 0.799764, -0.354775,
		-0.873648, 0.463896, -0.146766,
		35.491627, 38.180336, 47.966839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499882, 38.507771, 47.872334>,  <36.103180, 37.855610, 48.069576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499882, 38.507771, 47.872334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884018, 38.574848, 47.961441>,  <37.114498, 38.615093, 48.014904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884018, 38.574848, 47.961441>,  <36.499882, 38.507771, 47.872334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884018, 38.574848, 47.961441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275455, -0.446695, -0.851227,
		-0.043233, 0.878831, -0.475171,
		0.960341, 0.167689, 0.222766,
		37.172119, 38.625156, 48.028271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817570, 38.746231, 47.194981>,  <36.499882, 38.507771, 47.872334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817570, 38.746231, 47.194981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116791, 38.599728, 47.416348>,  <37.296326, 38.511826, 47.549168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116791, 38.599728, 47.416348>,  <36.817570, 38.746231, 47.194981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116791, 38.599728, 47.416348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422718, -0.379877, -0.822802,
		0.511587, 0.849440, -0.129345,
		0.748056, -0.366258, 0.553413,
		37.341209, 38.489849, 47.582371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445515, 39.009579, 47.015602>,  <36.817570, 38.746231, 47.194981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445515, 39.009579, 47.015602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566067, 38.675587, 47.199768>,  <37.638397, 38.475193, 47.310268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566067, 38.675587, 47.199768>,  <37.445515, 39.009579, 47.015602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566067, 38.675587, 47.199768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319125, -0.366686, -0.873900,
		0.898514, 0.410307, 0.155950,
		0.301383, -0.834979, 0.460412,
		37.656483, 38.425095, 47.337891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240627, 38.886784, 46.867699>,  <37.445515, 39.009579, 47.015602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240627, 38.886784, 46.867699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058937, 38.543606, 46.963703>,  <37.949924, 38.337700, 47.021305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058937, 38.543606, 46.963703>,  <38.240627, 38.886784, 46.867699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058937, 38.543606, 46.963703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438031, -0.449669, -0.778412,
		0.775765, -0.248438, 0.580058,
		-0.454222, -0.857949, 0.240014,
		37.922672, 38.286221, 47.035706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726036, 38.418106, 46.770176>,  <38.240627, 38.886784, 46.867699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726036, 38.418106, 46.770176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410057, 38.172894, 46.764709>,  <38.220470, 38.025768, 46.761429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410057, 38.172894, 46.764709>,  <38.726036, 38.418106, 46.770176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410057, 38.172894, 46.764709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370036, -0.458813, -0.807815,
		0.488941, -0.643186, 0.589278,
		-0.789943, -0.613028, -0.013669,
		38.173073, 37.988987, 46.760609>
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
