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
	<24.507639, 35.125198, 34.960583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199356, 34.870331, 34.962711>,  <24.014385, 34.717411, 34.963989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199356, 34.870331, 34.962711>,  <24.507639, 35.125198, 34.960583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199356, 34.870331, 34.962711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611683, 0.737494, -0.286261,
		0.178472, -0.223878, -0.958137,
		-0.770708, -0.637166, 0.005321,
		23.968143, 34.679180, 34.964306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909410, 34.476051, 35.324409>,  <24.507639, 35.125198, 34.960583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909410, 34.476051, 35.324409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093691, 34.438805, 35.677471>,  <25.204258, 34.416458, 35.889309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.093691, 34.438805, 35.677471>,  <24.909410, 34.476051, 35.324409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.093691, 34.438805, 35.677471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508030, -0.843121, 0.176217,
		0.727779, -0.529600, -0.435731,
		0.460699, -0.093118, 0.882658,
		25.231901, 34.410870, 35.942268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212677, 33.775688, 35.389091>,  <24.909410, 34.476051, 35.324409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212677, 33.775688, 35.389091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129204, 33.913712, 35.755127>,  <25.079121, 33.996525, 35.974747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.129204, 33.913712, 35.755127>,  <25.212677, 33.775688, 35.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129204, 33.913712, 35.755127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158434, -0.935255, 0.316538,
		0.965065, -0.078924, 0.249842,
		-0.208684, 0.345063, 0.915086,
		25.066599, 34.017231, 36.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587549, 33.407753, 35.884438>,  <25.212677, 33.775688, 35.389091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587549, 33.407753, 35.884438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240189, 33.550667, 36.021976>,  <25.031773, 33.636417, 36.104500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240189, 33.550667, 36.021976>,  <25.587549, 33.407753, 35.884438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240189, 33.550667, 36.021976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300217, -0.930717, 0.208891,
		0.394655, 0.078173, 0.915498,
		-0.868399, 0.357288, 0.343843,
		24.979670, 33.657852, 36.125130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454313, 33.268211, 36.578777>,  <25.587549, 33.407753, 35.884438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454313, 33.268211, 36.578777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132172, 33.286007, 36.342331>,  <24.938887, 33.296684, 36.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132172, 33.286007, 36.342331>,  <25.454313, 33.268211, 36.578777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132172, 33.286007, 36.342331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201870, -0.958160, 0.202923,
		-0.557359, 0.282755, 0.780641,
		-0.805356, 0.044487, -0.591119,
		24.890564, 33.299355, 36.164993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039225, 32.704327, 36.761505>,  <25.454313, 33.268211, 36.578777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039225, 32.704327, 36.761505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895031, 32.780018, 36.396156>,  <24.808514, 32.825432, 36.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895031, 32.780018, 36.396156>,  <25.039225, 32.704327, 36.761505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895031, 32.780018, 36.396156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151649, -0.978068, -0.142776,
		-0.920355, 0.087043, 0.381275,
		-0.360486, 0.189225, -0.913370,
		24.786884, 32.836784, 36.122147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739952, 32.517399, 36.579998>,  <25.039225, 32.704327, 36.761505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739952, 32.517399, 36.579998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941774, 32.199360, 36.445393>,  <26.062868, 32.008537, 36.364632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941774, 32.199360, 36.445393>,  <25.739952, 32.517399, 36.579998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941774, 32.199360, 36.445393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085920, -0.341584, 0.935916,
		-0.859093, -0.501136, -0.104033,
		0.504557, -0.795099, -0.336510,
		26.093142, 31.960831, 36.344440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558405, 32.030731, 37.022167>,  <25.739952, 32.517399, 36.579998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558405, 32.030731, 37.022167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861235, 31.840382, 36.843109>,  <26.042933, 31.726171, 36.735676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861235, 31.840382, 36.843109>,  <25.558405, 32.030731, 37.022167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861235, 31.840382, 36.843109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094820, -0.597881, 0.795957,
		-0.646414, -0.645042, -0.407517,
		0.757072, -0.475877, -0.447641,
		26.088356, 31.697618, 36.708817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437138, 31.358675, 37.092716>,  <25.558405, 32.030731, 37.022167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437138, 31.358675, 37.092716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833548, 31.378290, 37.042969>,  <26.071394, 31.390059, 37.013119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833548, 31.378290, 37.042969>,  <25.437138, 31.358675, 37.092716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833548, 31.378290, 37.042969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123220, -0.695937, 0.707452,
		-0.051863, -0.716426, -0.695733,
		0.991023, 0.049038, -0.124372,
		26.130854, 31.393002, 37.005657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592945, 30.676172, 36.939106>,  <25.437138, 31.358675, 37.092716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592945, 30.676172, 36.939106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927032, 30.864614, 37.052574>,  <26.127485, 30.977680, 37.120655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927032, 30.864614, 37.052574>,  <25.592945, 30.676172, 36.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927032, 30.864614, 37.052574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289563, -0.815297, 0.501443,
		0.467506, -0.336675, -0.817366,
		0.835219, 0.471106, 0.283667,
		26.177599, 31.005947, 37.137676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192829, 30.233015, 36.733246>,  <25.592945, 30.676172, 36.939106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192829, 30.233015, 36.733246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314602, 30.472086, 37.029922>,  <26.387665, 30.615528, 37.207928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314602, 30.472086, 37.029922>,  <26.192829, 30.233015, 36.733246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314602, 30.472086, 37.029922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291059, -0.799775, 0.525019,
		0.906977, 0.056044, -0.417435,
		0.304430, 0.597678, 0.741689,
		26.405931, 30.651390, 37.252430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645876, 29.724962, 37.132450>,  <26.192829, 30.233015, 36.733246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645876, 29.724962, 37.132450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609636, 30.030722, 37.387787>,  <26.587893, 30.214178, 37.540989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609636, 30.030722, 37.387787>,  <26.645876, 29.724962, 37.132450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609636, 30.030722, 37.387787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323636, -0.583591, 0.744769,
		0.941834, 0.274068, -0.194514,
		-0.090600, 0.764401, 0.638344,
		26.582457, 30.260042, 37.579288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281651, 29.781197, 37.370655>,  <26.645876, 29.724962, 37.132450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281651, 29.781197, 37.370655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026735, 29.952002, 37.627258>,  <26.873787, 30.054483, 37.781219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026735, 29.952002, 37.627258>,  <27.281651, 29.781197, 37.370655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026735, 29.952002, 37.627258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407258, -0.520083, 0.750769,
		0.654222, 0.739713, 0.157539,
		-0.637287, 0.427011, 0.641504,
		26.835548, 30.080105, 37.819710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229836, 29.668846, 38.104725>,  <27.281651, 29.781197, 37.370655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229836, 29.668846, 38.104725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236456, 30.011627, 37.898670>,  <27.240427, 30.217295, 37.775040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236456, 30.011627, 37.898670>,  <27.229836, 29.668846, 38.104725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236456, 30.011627, 37.898670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847614, 0.285303, 0.447385,
		0.530356, 0.429230, 0.731084,
		0.016550, 0.856950, -0.515133,
		27.241421, 30.268713, 37.744129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944008, 30.244040, 38.561810>,  <27.229836, 29.668846, 38.104725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944008, 30.244040, 38.561810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937855, 30.419746, 38.202518>,  <26.934162, 30.525171, 37.986946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937855, 30.419746, 38.202518>,  <26.944008, 30.244040, 38.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937855, 30.419746, 38.202518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735031, 0.604045, 0.307991,
		0.677859, 0.664960, 0.313585,
		-0.015382, 0.439269, -0.898224,
		26.933241, 30.551527, 37.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105974, 30.971222, 38.651817>,  <26.944008, 30.244040, 38.561810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105974, 30.971222, 38.651817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832005, 30.844763, 38.389236>,  <26.667624, 30.768888, 38.231689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832005, 30.844763, 38.389236>,  <27.105974, 30.971222, 38.651817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832005, 30.844763, 38.389236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717792, 0.447483, 0.533417,
		0.125114, 0.836547, -0.533418,
		-0.684924, -0.316146, -0.656453,
		26.626528, 30.749920, 38.192299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908987, 31.455778, 38.132851>,  <27.105974, 30.971222, 38.651817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908987, 31.455778, 38.132851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781881, 31.210775, 37.843338>,  <26.705618, 31.063774, 37.669632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781881, 31.210775, 37.843338>,  <26.908987, 31.455778, 38.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781881, 31.210775, 37.843338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053249, 0.773671, -0.631346,
		0.946673, -0.162080, -0.278462,
		-0.317766, -0.612505, -0.723783,
		26.686552, 31.027023, 37.626202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287291, 31.618593, 37.536606>,  <26.908987, 31.455778, 38.132851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287291, 31.618593, 37.536606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972916, 31.423790, 37.384224>,  <26.784290, 31.306908, 37.292793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972916, 31.423790, 37.384224>,  <27.287291, 31.618593, 37.536606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972916, 31.423790, 37.384224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164583, 0.758676, -0.630336,
		0.596000, -0.432706, -0.676424,
		-0.785937, -0.487008, -0.380955,
		26.737135, 31.277687, 37.269936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468098, 31.575628, 36.819653>,  <27.287291, 31.618593, 37.536606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468098, 31.575628, 36.819653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079088, 31.501165, 36.875568>,  <26.845682, 31.456488, 36.909119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079088, 31.501165, 36.875568>,  <27.468098, 31.575628, 36.819653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079088, 31.501165, 36.875568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212126, 0.461279, -0.861524,
		0.095896, -0.867507, -0.488094,
		-0.972525, -0.186155, 0.139786,
		26.787331, 31.445318, 36.917503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194006, 31.044516, 36.349941>,  <27.468098, 31.575628, 36.819653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194006, 31.044516, 36.349941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905708, 31.303112, 36.450001>,  <26.732729, 31.458269, 36.510036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905708, 31.303112, 36.450001>,  <27.194006, 31.044516, 36.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905708, 31.303112, 36.450001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104909, 0.254976, -0.961239,
		-0.685215, -0.719052, -0.115950,
		-0.720746, 0.646492, 0.250149,
		26.689486, 31.497059, 36.525043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588554, 30.975508, 36.020195>,  <27.194006, 31.044516, 36.349941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588554, 30.975508, 36.020195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618000, 31.363689, 36.112106>,  <26.635668, 31.596598, 36.167255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618000, 31.363689, 36.112106>,  <26.588554, 30.975508, 36.020195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618000, 31.363689, 36.112106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081852, 0.235510, -0.968419,
		-0.993922, 0.052482, 0.096771,
		0.073615, 0.970454, 0.229783,
		26.640085, 31.654825, 36.181042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915951, 31.242704, 35.725197>,  <26.588554, 30.975508, 36.020195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915951, 31.242704, 35.725197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273529, 31.417627, 35.764431>,  <26.488077, 31.522581, 35.787971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273529, 31.417627, 35.764431>,  <25.915951, 31.242704, 35.725197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273529, 31.417627, 35.764431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115790, -0.013939, -0.993176,
		-0.432956, 0.899204, -0.063096,
		0.893947, 0.437308, 0.098084,
		26.541714, 31.548820, 35.793858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957315, 31.933273, 35.341717>,  <25.915951, 31.242704, 35.725197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957315, 31.933273, 35.341717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283800, 31.703743, 35.368614>,  <26.479691, 31.566025, 35.384754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283800, 31.703743, 35.368614>,  <25.957315, 31.933273, 35.341717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283800, 31.703743, 35.368614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058770, -0.033326, -0.997715,
		0.574754, 0.818300, 0.006523,
		0.816213, -0.573825, 0.067246,
		26.528664, 31.531595, 35.388786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548349, 32.164036, 34.917610>,  <25.957315, 31.933273, 35.341717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548349, 32.164036, 34.917610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565260, 31.767897, 34.970417>,  <26.575407, 31.530214, 35.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565260, 31.767897, 34.970417>,  <26.548349, 32.164036, 34.917610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565260, 31.767897, 34.970417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012064, -0.132635, -0.991092,
		0.999033, 0.040310, -0.017555,
		0.042279, -0.990345, 0.132020,
		26.577944, 31.470793, 35.010025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228752, 31.861919, 34.917179>,  <26.548349, 32.164036, 34.917610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228752, 31.861919, 34.917179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548710, 32.101326, 34.899532>,  <27.740685, 32.244968, 34.888947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548710, 32.101326, 34.899532>,  <27.228752, 31.861919, 34.917179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548710, 32.101326, 34.899532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219636, 0.360358, 0.906588,
		0.558506, -0.715485, 0.419704,
		0.799895, 0.598517, -0.044115,
		27.788679, 32.280880, 34.886299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499063, 31.772203, 35.610218>,  <27.228752, 31.861919, 34.917179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499063, 31.772203, 35.610218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661564, 32.090714, 35.430927>,  <27.759064, 32.281818, 35.323353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661564, 32.090714, 35.430927>,  <27.499063, 31.772203, 35.610218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661564, 32.090714, 35.430927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015957, 0.484269, 0.874773,
		0.913623, -0.362528, 0.184027,
		0.406248, 0.796277, -0.448225,
		27.783438, 32.329597, 35.296459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778051, 31.093067, 35.763874>,  <27.499063, 31.772203, 35.610218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778051, 31.093067, 35.763874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937910, 30.897247, 36.073875>,  <28.033825, 30.779757, 36.259876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937910, 30.897247, 36.073875>,  <27.778051, 31.093067, 35.763874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937910, 30.897247, 36.073875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897858, -0.038651, 0.438585,
		-0.184754, -0.871119, -0.454992,
		0.399646, -0.489549, 0.775000,
		28.057804, 30.750383, 36.306377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510170, 31.339098, 35.600807>,  <27.778051, 31.093067, 35.763874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510170, 31.339098, 35.600807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885201, 31.305759, 35.465748>,  <29.110218, 31.285757, 35.384712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885201, 31.305759, 35.465748>,  <28.510170, 31.339098, 35.600807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885201, 31.305759, 35.465748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188415, -0.694312, 0.694572,
		-0.292321, -0.714832, -0.635266,
		0.937575, -0.083344, -0.337647,
		29.166473, 31.280756, 35.364452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271278, 31.531305, 34.941898>,  <28.510170, 31.339098, 35.600807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271278, 31.531305, 34.941898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419855, 31.447580, 34.580078>,  <28.509001, 31.397345, 34.362984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419855, 31.447580, 34.580078>,  <28.271278, 31.531305, 34.941898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419855, 31.447580, 34.580078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849559, -0.316395, 0.422071,
		-0.374542, -0.925247, 0.060304,
		0.371440, -0.209315, -0.904555,
		28.531288, 31.384787, 34.308712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463583, 30.824263, 34.891888>,  <28.271278, 31.531305, 34.941898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463583, 30.824263, 34.891888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705364, 31.066614, 34.684986>,  <28.850433, 31.212025, 34.560844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705364, 31.066614, 34.684986>,  <28.463583, 30.824263, 34.891888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705364, 31.066614, 34.684986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772823, -0.288383, 0.565314,
		0.193347, -0.741448, -0.642551,
		0.604452, 0.605880, -0.517250,
		28.886700, 31.248379, 34.529812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082066, 30.411676, 34.745674>,  <28.463583, 30.824263, 34.891888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082066, 30.411676, 34.745674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208529, 30.786806, 34.688366>,  <29.284407, 31.011885, 34.653980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208529, 30.786806, 34.688366>,  <29.082066, 30.411676, 34.745674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208529, 30.786806, 34.688366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874308, -0.229396, 0.427741,
		0.368280, -0.260499, -0.892474,
		0.316156, 0.937826, -0.143274,
		29.303375, 31.068153, 34.645382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745863, 30.330730, 34.473728>,  <29.082066, 30.411676, 34.745674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745863, 30.330730, 34.473728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732950, 30.704638, 34.615246>,  <29.725203, 30.928982, 34.700157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732950, 30.704638, 34.615246>,  <29.745863, 30.330730, 34.473728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732950, 30.704638, 34.615246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813503, -0.181076, 0.552652,
		0.580664, 0.305655, -0.754589,
		-0.032283, 0.934766, 0.353796,
		29.723265, 30.985067, 34.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463869, 30.638304, 34.403637>,  <29.745863, 30.330730, 34.473728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463869, 30.638304, 34.403637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267805, 30.825197, 34.697968>,  <30.150166, 30.937332, 34.874565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267805, 30.825197, 34.697968>,  <30.463869, 30.638304, 34.403637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267805, 30.825197, 34.697968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783464, -0.133805, 0.606861,
		0.382001, 0.873951, -0.300473,
		-0.490162, 0.467232, 0.735823,
		30.120756, 30.965366, 34.918713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959341, 31.097912, 34.698761>,  <30.463869, 30.638304, 34.403637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959341, 31.097912, 34.698761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682034, 31.050947, 34.983181>,  <30.515650, 31.022768, 35.153835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682034, 31.050947, 34.983181>,  <30.959341, 31.097912, 34.698761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682034, 31.050947, 34.983181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711779, 0.043038, 0.701083,
		-0.112917, 0.992150, 0.053733,
		-0.693268, -0.117410, 0.711052,
		30.474052, 31.015724, 35.196495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014875, 31.675062, 35.338356>,  <30.959341, 31.097912, 34.698761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014875, 31.675062, 35.338356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896358, 31.295235, 35.379406>,  <30.825249, 31.067339, 35.404037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896358, 31.295235, 35.379406>,  <31.014875, 31.675062, 35.338356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896358, 31.295235, 35.379406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907917, -0.246674, 0.338879,
		-0.296473, 0.193583, 0.935216,
		-0.296294, -0.949567, 0.102625,
		30.807470, 31.010365, 35.410194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001230, 31.697620, 36.009933>,  <31.014875, 31.675062, 35.338356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001230, 31.697620, 36.009933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631817, 31.545692, 35.988686>,  <30.410168, 31.454536, 35.975937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631817, 31.545692, 35.988686>,  <31.001230, 31.697620, 36.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631817, 31.545692, 35.988686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181679, -0.555252, 0.811596,
		-0.337752, 0.739887, 0.581800,
		-0.923535, -0.379819, -0.053116,
		30.354757, 31.431747, 35.972752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650253, 31.780859, 36.602722>,  <31.001230, 31.697620, 36.009933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650253, 31.780859, 36.602722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553545, 31.417883, 36.465263>,  <30.495520, 31.200096, 36.382786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553545, 31.417883, 36.465263>,  <30.650253, 31.780859, 36.602722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553545, 31.417883, 36.465263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183138, -0.390465, 0.902218,
		-0.952894, 0.155194, 0.260590,
		-0.241771, -0.907443, -0.343650,
		30.481014, 31.145651, 36.362167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428213, 31.406773, 37.197598>,  <30.650253, 31.780859, 36.602722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428213, 31.406773, 37.197598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583273, 31.139181, 36.943920>,  <30.676310, 30.978626, 36.791714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583273, 31.139181, 36.943920>,  <30.428213, 31.406773, 37.197598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583273, 31.139181, 36.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475889, -0.443977, 0.759219,
		-0.789467, -0.596114, 0.146252,
		0.387648, -0.668978, -0.634190,
		30.699568, 30.938488, 36.753662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341242, 30.734751, 37.525955>,  <30.428213, 31.406773, 37.197598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341242, 30.734751, 37.525955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647373, 30.829079, 37.286400>,  <30.831051, 30.885675, 37.142666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647373, 30.829079, 37.286400>,  <30.341242, 30.734751, 37.525955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647373, 30.829079, 37.286400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642935, -0.323700, 0.694156,
		-0.030163, -0.916301, -0.399354,
		0.765326, 0.235821, -0.598885,
		30.876970, 30.899824, 37.106735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633650, 30.081928, 37.673084>,  <30.341242, 30.734751, 37.525955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633650, 30.081928, 37.673084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949717, 29.837202, 37.658550>,  <31.139357, 29.690367, 37.649830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949717, 29.837202, 37.658550>,  <30.633650, 30.081928, 37.673084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949717, 29.837202, 37.658550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168061, 0.273301, -0.947134,
		0.589400, 0.742287, 0.318775,
		0.790166, -0.611815, -0.036334,
		31.186766, 29.653658, 37.647652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253061, 30.407509, 37.609035>,  <30.633650, 30.081928, 37.673084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253061, 30.407509, 37.609035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282621, 30.050524, 37.431026>,  <31.300358, 29.836332, 37.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282621, 30.050524, 37.431026>,  <31.253061, 30.407509, 37.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282621, 30.050524, 37.431026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000201, 0.446260, -0.894903,
		0.997265, 0.066046, 0.033159,
		0.073902, -0.892463, -0.445027,
		31.304792, 29.782785, 37.297520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818382, 30.439398, 37.003559>,  <31.253061, 30.407509, 37.609035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818382, 30.439398, 37.003559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474730, 30.234701, 37.004673>,  <31.268538, 30.111883, 37.005341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474730, 30.234701, 37.004673>,  <31.818382, 30.439398, 37.003559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474730, 30.234701, 37.004673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362365, 0.604492, -0.709423,
		0.361359, -0.610499, -0.704778,
		-0.859134, -0.511743, 0.002785,
		31.216990, 30.081179, 37.005508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644636, 30.212408, 36.307430>,  <31.818382, 30.439398, 37.003559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644636, 30.212408, 36.307430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291998, 30.243111, 36.493717>,  <31.080416, 30.261532, 36.605492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291998, 30.243111, 36.493717>,  <31.644636, 30.212408, 36.307430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291998, 30.243111, 36.493717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344780, 0.569140, -0.746462,
		-0.322359, -0.818650, -0.475287,
		-0.881596, 0.076759, 0.465722,
		31.027519, 30.266138, 36.633434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014769, 30.020971, 35.856602>,  <31.644636, 30.212408, 36.307430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014769, 30.020971, 35.856602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901928, 30.280453, 36.139332>,  <30.834223, 30.436142, 36.308971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901928, 30.280453, 36.139332>,  <31.014769, 30.020971, 35.856602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901928, 30.280453, 36.139332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394408, 0.593194, -0.701828,
		-0.874563, -0.476765, 0.088513,
		-0.282102, 0.648703, 0.706826,
		30.817297, 30.475063, 36.351379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359337, 30.010939, 35.803677>,  <31.014769, 30.020971, 35.856602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359337, 30.010939, 35.803677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406858, 30.359188, 35.994633>,  <30.435371, 30.568138, 36.109207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406858, 30.359188, 35.994633>,  <30.359337, 30.010939, 35.803677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406858, 30.359188, 35.994633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641622, 0.434245, -0.632260,
		-0.757764, -0.231189, 0.610201,
		0.118805, 0.870622, 0.477392,
		30.442499, 30.620375, 36.137852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701347, 30.354109, 35.996902>,  <30.359337, 30.010939, 35.803677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701347, 30.354109, 35.996902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992708, 30.611961, 35.904053>,  <30.167524, 30.766672, 35.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992708, 30.611961, 35.904053>,  <29.701347, 30.354109, 35.996902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992708, 30.611961, 35.904053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561019, 0.366688, -0.742157,
		-0.393301, 0.670815, 0.628747,
		0.728404, 0.644630, -0.232121,
		30.211229, 30.805351, 35.834415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593700, 31.096632, 36.141510>,  <29.701347, 30.354109, 35.996902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593700, 31.096632, 36.141510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851519, 31.041567, 35.840683>,  <30.006210, 31.008528, 35.660187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851519, 31.041567, 35.840683>,  <29.593700, 31.096632, 36.141510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851519, 31.041567, 35.840683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694844, 0.304924, -0.651316,
		0.318986, 0.942375, 0.100884,
		0.644546, -0.137662, -0.752070,
		30.044882, 31.000269, 35.615063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535154, 31.684006, 35.821411>,  <29.593700, 31.096632, 36.141510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535154, 31.684006, 35.821411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696758, 31.444050, 35.545177>,  <29.793720, 31.300076, 35.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696758, 31.444050, 35.545177>,  <29.535154, 31.684006, 35.821411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696758, 31.444050, 35.545177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540970, 0.452091, -0.709200,
		0.737650, 0.660109, -0.141875,
		0.404009, -0.599892, -0.690584,
		29.817961, 31.264082, 35.338001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569860, 32.202915, 35.291073>,  <29.535154, 31.684006, 35.821411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569860, 32.202915, 35.291073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605574, 31.846031, 35.113991>,  <29.627003, 31.631901, 35.007740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605574, 31.846031, 35.113991>,  <29.569860, 32.202915, 35.291073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605574, 31.846031, 35.113991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640361, 0.289017, -0.711622,
		0.762867, 0.347028, -0.545533,
		0.089284, -0.892211, -0.442705,
		29.632359, 31.578367, 34.981178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582897, 32.308475, 34.546490>,  <29.569860, 32.202915, 35.291073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582897, 32.308475, 34.546490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516085, 31.915739, 34.582485>,  <29.475998, 31.680098, 34.604084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516085, 31.915739, 34.582485>,  <29.582897, 32.308475, 34.546490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516085, 31.915739, 34.582485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669719, 0.045998, -0.741189,
		0.723587, -0.184069, -0.665237,
		-0.167030, -0.981837, 0.089991,
		29.465975, 31.621187, 34.609482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655518, 32.071068, 33.834732>,  <29.582897, 32.308475, 34.546490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655518, 32.071068, 33.834732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425798, 31.810644, 34.033249>,  <29.287968, 31.654390, 34.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425798, 31.810644, 34.033249>,  <29.655518, 32.071068, 33.834732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425798, 31.810644, 34.033249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703997, 0.083366, -0.705293,
		0.417815, -0.754434, -0.506222,
		-0.574298, -0.651061, 0.496287,
		29.253510, 31.615326, 34.182137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429649, 31.591551, 33.348774>,  <29.655518, 32.071068, 33.834732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429649, 31.591551, 33.348774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162922, 31.594486, 33.646847>,  <29.002886, 31.596247, 33.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162922, 31.594486, 33.646847>,  <29.429649, 31.591551, 33.348774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162922, 31.594486, 33.646847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726393, 0.216956, -0.652137,
		-0.166459, -0.976154, -0.139338,
		-0.666816, 0.007340, 0.745186,
		28.962877, 31.596687, 33.870403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895798, 31.278362, 33.169800>,  <29.429649, 31.591551, 33.348774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895798, 31.278362, 33.169800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735603, 31.489935, 33.469090>,  <28.639486, 31.616879, 33.648663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735603, 31.489935, 33.469090>,  <28.895798, 31.278362, 33.169800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735603, 31.489935, 33.469090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802870, 0.190980, -0.564736,
		-0.441603, -0.826898, 0.348177,
		-0.400484, 0.528930, 0.748228,
		28.615458, 31.648613, 33.693558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214890, 30.967487, 33.354610>,  <28.895798, 31.278362, 33.169800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214890, 30.967487, 33.354610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255424, 31.361128, 33.412949>,  <28.279745, 31.597313, 33.447952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255424, 31.361128, 33.412949>,  <28.214890, 30.967487, 33.354610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255424, 31.361128, 33.412949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891400, 0.154916, -0.425919,
		-0.441742, -0.086848, 0.892929,
		0.101338, 0.984103, 0.145849,
		28.285826, 31.656359, 33.456703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674601, 31.427132, 33.257801>,  <28.214890, 30.967487, 33.354610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674601, 31.427132, 33.257801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880333, 31.769033, 33.285683>,  <28.003773, 31.974174, 33.302414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880333, 31.769033, 33.285683>,  <27.674601, 31.427132, 33.257801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880333, 31.769033, 33.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721794, 0.475350, -0.503047,
		-0.463117, 0.208418, 0.861444,
		0.514331, 0.854754, 0.069708,
		28.034632, 32.025459, 33.306595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857412, 31.115093, 32.545013>,  <27.674601, 31.427132, 33.257801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857412, 31.115093, 32.545013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474758, 31.101568, 32.660740>,  <27.245165, 31.093452, 32.730175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474758, 31.101568, 32.660740>,  <27.857412, 31.115093, 32.545013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474758, 31.101568, 32.660740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290481, 0.184614, -0.938903,
		-0.021665, -0.982229, -0.186431,
		-0.956636, -0.033813, 0.289318,
		27.187767, 31.091423, 32.747536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499035, 30.476170, 32.275379>,  <27.857412, 31.115093, 32.545013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499035, 30.476170, 32.275379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257221, 30.790258, 32.328995>,  <27.112133, 30.978712, 32.361164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257221, 30.790258, 32.328995>,  <27.499035, 30.476170, 32.275379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257221, 30.790258, 32.328995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090342, 0.099604, -0.990917,
		-0.791441, -0.611151, 0.010725,
		-0.604532, 0.785222, 0.134043,
		27.075861, 31.025826, 32.369209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802147, 30.413078, 31.877960>,  <27.499035, 30.476170, 32.275379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802147, 30.413078, 31.877960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867653, 30.798100, 31.964376>,  <26.906958, 31.029112, 32.016228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867653, 30.798100, 31.964376>,  <26.802147, 30.413078, 31.877960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867653, 30.798100, 31.964376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188033, 0.245439, -0.951001,
		-0.968413, 0.115119, 0.221187,
		0.163766, 0.962552, 0.216040,
		26.916782, 31.086864, 32.029190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256044, 30.784208, 31.484674>,  <26.802147, 30.413078, 31.877960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256044, 30.784208, 31.484674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540834, 31.051319, 31.571545>,  <26.711708, 31.211586, 31.623667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540834, 31.051319, 31.571545>,  <26.256044, 30.784208, 31.484674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540834, 31.051319, 31.571545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010601, 0.299017, -0.954189,
		-0.702123, 0.681663, 0.205814,
		0.711977, 0.667776, 0.217173,
		26.754427, 31.251652, 31.636696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094345, 31.457790, 31.133087>,  <26.256044, 30.784208, 31.484674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094345, 31.457790, 31.133087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492533, 31.458454, 31.171122>,  <26.731445, 31.458853, 31.193941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492533, 31.458454, 31.171122>,  <26.094345, 31.457790, 31.133087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492533, 31.458454, 31.171122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084251, 0.448345, -0.889881,
		-0.044108, 0.893859, 0.446173,
		0.995468, 0.001660, 0.095084,
		26.791174, 31.458952, 31.199646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472878, 32.158241, 31.023458>,  <26.094345, 31.457790, 31.133087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472878, 32.158241, 31.023458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711544, 31.871178, 30.879820>,  <26.854744, 31.698940, 30.793636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711544, 31.871178, 30.879820>,  <26.472878, 32.158241, 31.023458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711544, 31.871178, 30.879820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058008, 0.484881, -0.872654,
		0.800389, 0.499855, 0.330943,
		0.596668, -0.717660, -0.359098,
		26.890545, 31.655880, 30.772091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164595, 32.388157, 30.801939>,  <26.472878, 32.158241, 31.023458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164595, 32.388157, 30.801939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005154, 32.089165, 30.589376>,  <26.909489, 31.909769, 30.461840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.005154, 32.089165, 30.589376>,  <27.164595, 32.388157, 30.801939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.005154, 32.089165, 30.589376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079556, 0.549060, -0.831988,
		0.913667, -0.373908, -0.159390,
		-0.398602, -0.747480, -0.531405,
		26.885572, 31.864922, 30.429955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866449, 32.547127, 30.579872>,  <27.164595, 32.388157, 30.801939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866449, 32.547127, 30.579872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899448, 32.222912, 30.811813>,  <27.919249, 32.028385, 30.950977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899448, 32.222912, 30.811813>,  <27.866449, 32.547127, 30.579872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899448, 32.222912, 30.811813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031733, -0.583676, -0.811366,
		0.996086, 0.048537, -0.073873,
		0.082499, -0.810535, 0.579851,
		27.924198, 31.979752, 30.985769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540670, 32.331821, 30.475767>,  <27.866449, 32.547127, 30.579872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540670, 32.331821, 30.475767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257332, 32.058735, 30.547478>,  <28.087328, 31.894882, 30.590504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257332, 32.058735, 30.547478>,  <28.540670, 32.331821, 30.475767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257332, 32.058735, 30.547478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119235, -0.366060, -0.922921,
		0.695720, -0.632373, 0.340702,
		-0.708348, -0.682718, 0.179274,
		28.044827, 31.853920, 30.601259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707230, 31.759350, 30.103052>,  <28.540670, 32.331821, 30.475767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707230, 31.759350, 30.103052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311365, 31.739475, 30.156872>,  <28.073847, 31.727551, 30.189163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311365, 31.739475, 30.156872>,  <28.707230, 31.759350, 30.103052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311365, 31.739475, 30.156872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101560, -0.419668, -0.901978,
		0.101281, -0.906317, 0.410283,
		-0.989660, -0.049685, 0.134550,
		28.014467, 31.724569, 30.197237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497332, 31.131538, 29.967869>,  <28.707230, 31.759350, 30.103052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497332, 31.131538, 29.967869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186106, 31.371216, 29.892418>,  <27.999371, 31.515022, 29.847147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186106, 31.371216, 29.892418>,  <28.497332, 31.131538, 29.967869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186106, 31.371216, 29.892418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114568, -0.430594, -0.895245,
		-0.617649, -0.674947, 0.403679,
		-0.778064, 0.599196, -0.188628,
		27.952686, 31.550974, 29.835829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201458, 30.760544, 29.463011>,  <28.497332, 31.131538, 29.967869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201458, 30.760544, 29.463011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024574, 31.119246, 29.456280>,  <27.918444, 31.334467, 29.452242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024574, 31.119246, 29.456280>,  <28.201458, 30.760544, 29.463011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024574, 31.119246, 29.456280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465745, -0.245620, -0.850148,
		-0.766507, -0.368107, 0.526275,
		-0.442209, 0.896754, -0.016826,
		27.891911, 31.388271, 29.451233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444500, 30.690487, 29.407803>,  <28.201458, 30.760544, 29.463011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444500, 30.690487, 29.407803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560303, 31.027807, 29.226683>,  <27.629786, 31.230200, 29.118010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560303, 31.027807, 29.226683>,  <27.444500, 30.690487, 29.407803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560303, 31.027807, 29.226683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703154, -0.133590, -0.698375,
		-0.649430, 0.520575, 0.554295,
		0.289508, 0.843301, -0.452802,
		27.647156, 31.280798, 29.090841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845934, 30.948254, 29.033184>,  <27.444500, 30.690487, 29.407803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845934, 30.948254, 29.033184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159981, 31.115362, 28.850292>,  <27.348408, 31.215628, 28.740557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159981, 31.115362, 28.850292>,  <26.845934, 30.948254, 29.033184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159981, 31.115362, 28.850292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395465, -0.230010, -0.889215,
		-0.476656, 0.878955, -0.015370,
		0.785115, 0.417771, -0.457232,
		27.395515, 31.240694, 28.713123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531145, 31.278576, 28.503668>,  <26.845934, 30.948254, 29.033184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531145, 31.278576, 28.503668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910362, 31.255402, 28.378536>,  <27.137892, 31.241497, 28.303457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910362, 31.255402, 28.378536>,  <26.531145, 31.278576, 28.503668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910362, 31.255402, 28.378536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318057, -0.195894, -0.927613,
		-0.007541, 0.978913, -0.204142,
		0.948042, -0.057934, -0.312827,
		27.194775, 31.238022, 28.284689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658674, 31.613379, 27.946747>,  <26.531145, 31.278576, 28.503668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658674, 31.613379, 27.946747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990637, 31.395384, 27.899014>,  <27.189816, 31.264587, 27.870373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990637, 31.395384, 27.899014>,  <26.658674, 31.613379, 27.946747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990637, 31.395384, 27.899014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052707, 0.136350, -0.989258,
		0.555404, 0.827283, 0.084433,
		0.829909, -0.544987, -0.119333,
		27.239609, 31.231888, 27.863214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215479, 32.011086, 27.492439>,  <26.658674, 31.613379, 27.946747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215479, 32.011086, 27.492439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251196, 31.612827, 27.481745>,  <27.272627, 31.373873, 27.475328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251196, 31.612827, 27.481745>,  <27.215479, 32.011086, 27.492439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251196, 31.612827, 27.481745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096056, 0.018109, -0.995211,
		0.991363, 0.091435, -0.094021,
		0.089294, -0.995646, -0.026735,
		27.277985, 31.314133, 27.473724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268845, 32.014462, 26.779394>,  <27.215479, 32.011086, 27.492439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268845, 32.014462, 26.779394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291033, 31.638781, 26.914938>,  <27.304346, 31.413372, 26.996264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291033, 31.638781, 26.914938>,  <27.268845, 32.014462, 26.779394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291033, 31.638781, 26.914938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220286, -0.342532, -0.913316,
		0.973857, -0.023983, -0.225894,
		0.055472, -0.939200, 0.338860,
		27.307674, 31.357021, 27.016596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918098, 31.658966, 26.506546>,  <27.268845, 32.014462, 26.779394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918098, 31.658966, 26.506546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621199, 31.408272, 26.601431>,  <27.443058, 31.257854, 26.658361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621199, 31.408272, 26.601431>,  <27.918098, 31.658966, 26.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621199, 31.408272, 26.601431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085664, -0.262334, -0.961167,
		0.664627, -0.733746, 0.141028,
		-0.742249, -0.626736, 0.237210,
		27.398523, 31.220251, 26.672594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951839, 31.164003, 26.088537>,  <27.918098, 31.658966, 26.506546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951839, 31.164003, 26.088537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571295, 31.116392, 26.202196>,  <27.342968, 31.087826, 26.270391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571295, 31.116392, 26.202196>,  <27.951839, 31.164003, 26.088537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571295, 31.116392, 26.202196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244866, -0.267552, -0.931910,
		0.186947, -0.956163, 0.225393,
		-0.951363, -0.119027, 0.284150,
		27.285885, 31.080685, 26.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835806, 30.590872, 25.806328>,  <27.951839, 31.164003, 26.088537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835806, 30.590872, 25.806328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479958, 30.761139, 25.872511>,  <27.266449, 30.863300, 25.912222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479958, 30.761139, 25.872511>,  <27.835806, 30.590872, 25.806328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479958, 30.761139, 25.872511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270789, -0.199906, -0.941653,
		-0.367758, -0.882520, 0.293108,
		-0.889622, 0.425671, 0.165460,
		27.213070, 30.888840, 25.922150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323046, 30.142807, 25.535913>,  <27.835806, 30.590872, 25.806328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323046, 30.142807, 25.535913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160143, 30.507414, 25.558798>,  <27.062401, 30.726179, 25.572529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160143, 30.507414, 25.558798>,  <27.323046, 30.142807, 25.535913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160143, 30.507414, 25.558798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208805, -0.031944, -0.977435,
		-0.889123, -0.410015, 0.203339,
		-0.407259, 0.911519, 0.057211,
		27.037966, 30.780870, 25.575962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678186, 30.014294, 25.320969>,  <27.323046, 30.142807, 25.535913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678186, 30.014294, 25.320969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715643, 30.409698, 25.273514>,  <26.738117, 30.646942, 25.245041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715643, 30.409698, 25.273514>,  <26.678186, 30.014294, 25.320969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715643, 30.409698, 25.273514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362486, -0.077130, -0.928792,
		-0.927273, 0.129978, 0.351099,
		0.093642, 0.988512, -0.118636,
		26.743736, 30.706253, 25.237923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056025, 30.287809, 24.954800>,  <26.678186, 30.014294, 25.320969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056025, 30.287809, 24.954800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328844, 30.572130, 24.886013>,  <26.492537, 30.742722, 24.844740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328844, 30.572130, 24.886013>,  <26.056025, 30.287809, 24.954800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328844, 30.572130, 24.886013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403493, 0.169643, -0.899119,
		-0.609921, 0.682630, 0.402508,
		0.682049, 0.710800, -0.171967,
		26.533459, 30.785370, 24.834423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716681, 30.859888, 24.616999>,  <26.056025, 30.287809, 24.954800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716681, 30.859888, 24.616999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096874, 30.933186, 24.516600>,  <26.324991, 30.977163, 24.456360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096874, 30.933186, 24.516600>,  <25.716681, 30.859888, 24.616999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096874, 30.933186, 24.516600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305693, 0.405920, -0.861267,
		-0.055937, 0.895350, 0.441838,
		0.950485, 0.183244, -0.250996,
		26.382019, 30.988159, 24.441301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843132, 31.519566, 24.117905>,  <25.716681, 30.859888, 24.616999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843132, 31.519566, 24.117905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163759, 31.289160, 24.053783>,  <26.356136, 31.150917, 24.015310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163759, 31.289160, 24.053783>,  <25.843132, 31.519566, 24.117905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163759, 31.289160, 24.053783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079805, 0.368779, -0.926085,
		0.592553, 0.729528, 0.341570,
		0.801569, -0.576013, -0.160301,
		26.404230, 31.116356, 24.005693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368286, 32.034416, 24.104279>,  <25.843132, 31.519566, 24.117905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368286, 32.034416, 24.104279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509558, 31.716801, 23.906385>,  <26.594320, 31.526230, 23.787649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509558, 31.716801, 23.906385>,  <26.368286, 32.034416, 24.104279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509558, 31.716801, 23.906385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163213, 0.572996, -0.803142,
		0.921210, 0.202904, 0.331968,
		0.353177, -0.794043, -0.494733,
		26.615511, 31.478588, 23.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955132, 32.267715, 23.705044>,  <26.368286, 32.034416, 24.104279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955132, 32.267715, 23.705044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860884, 31.912928, 23.546162>,  <26.804335, 31.700056, 23.450832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860884, 31.912928, 23.546162>,  <26.955132, 32.267715, 23.705044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860884, 31.912928, 23.546162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104778, 0.429516, -0.896960,
		0.966181, -0.169722, -0.194137,
		-0.235618, -0.886967, -0.397207,
		26.790197, 31.646837, 23.427000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283485, 32.166542, 23.045389>,  <26.955132, 32.267715, 23.705044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283485, 32.166542, 23.045389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995731, 31.889431, 23.025215>,  <26.823080, 31.723164, 23.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995731, 31.889431, 23.025215>,  <27.283485, 32.166542, 23.045389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995731, 31.889431, 23.025215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176969, 0.253011, -0.951140,
		0.671692, -0.675308, -0.304612,
		-0.719383, -0.692780, -0.050437,
		26.779917, 31.681597, 23.010084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439041, 31.626455, 22.490282>,  <27.283485, 32.166542, 23.045389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439041, 31.626455, 22.490282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044874, 31.599892, 22.552942>,  <26.808374, 31.583954, 22.590538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044874, 31.599892, 22.552942>,  <27.439041, 31.626455, 22.490282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044874, 31.599892, 22.552942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155944, -0.015711, -0.987641,
		0.068056, -0.997668, 0.005125,
		-0.985419, -0.066415, 0.156649,
		26.749249, 31.579969, 22.599937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116995, 31.047342, 22.018963>,  <27.439041, 31.626455, 22.490282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116995, 31.047342, 22.018963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834463, 31.311512, 22.120895>,  <26.664944, 31.470013, 22.182055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834463, 31.311512, 22.120895>,  <27.116995, 31.047342, 22.018963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834463, 31.311512, 22.120895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312427, 0.032192, -0.949396,
		-0.635206, -0.750204, 0.183596,
		-0.706330, 0.660422, 0.254832,
		26.622564, 31.509638, 22.197346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639452, 30.960054, 21.554224>,  <27.116995, 31.047342, 22.018963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639452, 30.960054, 21.554224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521626, 31.314104, 21.698328>,  <26.450930, 31.526533, 21.784790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521626, 31.314104, 21.698328>,  <26.639452, 30.960054, 21.554224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521626, 31.314104, 21.698328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205635, 0.309446, -0.928417,
		-0.933245, -0.347562, 0.090860,
		-0.294566, 0.885124, 0.360260,
		26.433256, 31.579641, 21.806406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945002, 31.213425, 21.256746>,  <26.639452, 30.960054, 21.554224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945002, 31.213425, 21.256746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083527, 31.563385, 21.392164>,  <26.166641, 31.773361, 21.473415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083527, 31.563385, 21.392164>,  <25.945002, 31.213425, 21.256746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083527, 31.563385, 21.392164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404334, 0.464843, -0.787677,
		-0.846511, 0.135897, 0.514734,
		0.346314, 0.874901, 0.338547,
		26.187420, 31.825855, 21.493729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.401028, 31.635729, 21.286077>,  <25.945002, 31.213425, 21.256746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.401028, 31.635729, 21.286077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720373, 31.876080, 21.270287>,  <25.911982, 32.020290, 21.260811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720373, 31.876080, 21.270287>,  <25.401028, 31.635729, 21.286077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720373, 31.876080, 21.270287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359904, 0.423573, -0.831297,
		-0.482785, 0.677888, 0.554424,
		0.798365, 0.600878, -0.039480,
		25.959883, 32.056343, 21.258442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204342, 32.398914, 21.036125>,  <25.401028, 31.635729, 21.286077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204342, 32.398914, 21.036125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599258, 32.381302, 20.975040>,  <25.836208, 32.370735, 20.938389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599258, 32.381302, 20.975040>,  <25.204342, 32.398914, 21.036125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599258, 32.381302, 20.975040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095817, 0.601721, -0.792938,
		0.126803, 0.797492, 0.589854,
		0.987289, -0.044028, -0.152713,
		25.895445, 32.368092, 20.929226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328674, 33.033138, 20.894835>,  <25.204342, 32.398914, 21.036125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328674, 33.033138, 20.894835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634706, 32.819557, 20.750866>,  <25.818327, 32.691410, 20.664484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634706, 32.819557, 20.750866>,  <25.328674, 33.033138, 20.894835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634706, 32.819557, 20.750866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046979, 0.511170, -0.858195,
		0.642216, 0.673499, 0.366003,
		0.765082, -0.533952, -0.359922,
		25.864231, 32.659370, 20.642889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759745, 33.437988, 20.433773>,  <25.328674, 33.033138, 20.894835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759745, 33.437988, 20.433773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867504, 33.076527, 20.300602>,  <25.932159, 32.859650, 20.220699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867504, 33.076527, 20.300602>,  <25.759745, 33.437988, 20.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867504, 33.076527, 20.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204022, 0.284306, -0.936774,
		0.941169, 0.320292, -0.107772,
		0.269401, -0.903650, -0.332926,
		25.948324, 32.805431, 20.200724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146204, 33.521183, 19.887421>,  <25.759745, 33.437988, 20.433773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146204, 33.521183, 19.887421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033859, 33.139694, 19.844475>,  <25.966454, 32.910801, 19.818707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033859, 33.139694, 19.844475>,  <26.146204, 33.521183, 19.887421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033859, 33.139694, 19.844475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148366, 0.153668, -0.976920,
		0.948212, -0.258448, -0.184659,
		-0.280859, -0.953724, -0.107365,
		25.949602, 32.853577, 19.812265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484663, 33.252953, 19.214022>,  <26.146204, 33.521183, 19.887421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484663, 33.252953, 19.214022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179180, 32.999134, 19.261528>,  <25.995890, 32.846844, 19.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179180, 32.999134, 19.261528>,  <26.484663, 33.252953, 19.214022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179180, 32.999134, 19.261528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237812, 0.105498, -0.965565,
		0.600163, -0.765654, -0.231471,
		-0.763708, -0.634543, 0.118766,
		25.950068, 32.808773, 19.297157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580297, 32.867126, 18.705812>,  <26.484663, 33.252953, 19.214022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580297, 32.867126, 18.705812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204319, 32.796902, 18.822895>,  <25.978731, 32.754765, 18.893145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204319, 32.796902, 18.822895>,  <26.580297, 32.867126, 18.705812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204319, 32.796902, 18.822895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298861, 0.009089, -0.954253,
		0.164876, -0.984425, -0.061014,
		-0.939946, -0.175568, 0.292708,
		25.922335, 32.744232, 18.910707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339497, 32.341129, 18.332615>,  <26.580297, 32.867126, 18.705812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339497, 32.341129, 18.332615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035837, 32.572918, 18.451212>,  <25.853642, 32.711990, 18.522369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035837, 32.572918, 18.451212>,  <26.339497, 32.341129, 18.332615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035837, 32.572918, 18.451212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300962, 0.091410, -0.949245,
		-0.577162, -0.809851, 0.105005,
		-0.759149, 0.579470, 0.296492,
		25.808092, 32.746758, 18.540159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840225, 32.104038, 18.008768>,  <26.339497, 32.341129, 18.332615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840225, 32.104038, 18.008768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714497, 32.473839, 18.095022>,  <25.639059, 32.695721, 18.146774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714497, 32.473839, 18.095022>,  <25.840225, 32.104038, 18.008768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714497, 32.473839, 18.095022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389121, 0.081719, -0.917555,
		-0.865902, -0.372317, 0.334057,
		-0.314323, 0.924501, 0.215637,
		25.620199, 32.751190, 18.159714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310114, 32.166725, 17.571627>,  <25.840225, 32.104038, 18.008768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310114, 32.166725, 17.571627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362547, 32.539989, 17.705505>,  <25.394007, 32.763950, 17.785831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362547, 32.539989, 17.705505>,  <25.310114, 32.166725, 17.571627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362547, 32.539989, 17.705505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312425, 0.359291, -0.879375,
		-0.940855, 0.010705, 0.338641,
		0.131084, 0.933164, 0.334696,
		25.401873, 32.819939, 17.805914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839876, 32.433731, 17.228569>,  <25.310114, 32.166725, 17.571627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839876, 32.433731, 17.228569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071115, 32.733570, 17.357508>,  <25.209860, 32.913475, 17.434870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.071115, 32.733570, 17.357508>,  <24.839876, 32.433731, 17.228569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.071115, 32.733570, 17.357508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120168, 0.468950, -0.875011,
		-0.807070, 0.467106, 0.361177,
		0.578098, 0.749598, 0.322345,
		25.244545, 32.958450, 17.454210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436924, 32.993313, 17.155067>,  <24.839876, 32.433731, 17.228569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436924, 32.993313, 17.155067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828943, 33.072777, 17.157482>,  <25.064156, 33.120457, 17.158932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828943, 33.072777, 17.157482>,  <24.436924, 32.993313, 17.155067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828943, 33.072777, 17.157482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063080, 0.339711, -0.938412,
		-0.188478, 0.919309, 0.345466,
		0.980049, 0.198662, 0.006038,
		25.122957, 33.132374, 17.159294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556850, 33.755283, 16.958040>,  <24.436924, 32.993313, 17.155067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556850, 33.755283, 16.958040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895594, 33.562473, 16.868170>,  <25.098841, 33.446785, 16.814247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895594, 33.562473, 16.868170>,  <24.556850, 33.755283, 16.958040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895594, 33.562473, 16.868170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095010, 0.278540, -0.955714,
		0.523261, 0.830702, 0.190087,
		0.846860, -0.482027, -0.224674,
		25.149651, 33.417866, 16.800768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925756, 34.268299, 16.613226>,  <24.556850, 33.755283, 16.958040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925756, 34.268299, 16.613226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097765, 33.926231, 16.497461>,  <25.200970, 33.720989, 16.428003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097765, 33.926231, 16.497461>,  <24.925756, 34.268299, 16.613226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097765, 33.926231, 16.497461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048127, 0.298396, -0.953228,
		0.901534, 0.423838, 0.087160,
		0.430023, -0.855173, -0.289412,
		25.226772, 33.669678, 16.410637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508894, 34.434158, 16.164803>,  <24.925756, 34.268299, 16.613226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508894, 34.434158, 16.164803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404840, 34.059959, 16.069160>,  <25.342407, 33.835442, 16.011774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404840, 34.059959, 16.069160>,  <25.508894, 34.434158, 16.164803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404840, 34.059959, 16.069160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087490, 0.223777, -0.970706,
		0.961600, -0.273434, 0.023634,
		-0.260136, -0.935498, -0.239107,
		25.326799, 33.779308, 15.997428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002935, 34.298668, 15.831522>,  <25.508894, 34.434158, 16.164803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002935, 34.298668, 15.831522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711809, 34.051567, 15.712416>,  <25.537134, 33.903305, 15.640952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711809, 34.051567, 15.712416>,  <26.002935, 34.298668, 15.831522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711809, 34.051567, 15.712416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147332, 0.283209, -0.947674,
		0.669761, -0.733601, -0.115109,
		-0.727814, -0.617756, -0.297765,
		25.493465, 33.866241, 15.623086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241581, 34.135368, 15.198013>,  <26.002935, 34.298668, 15.831522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241581, 34.135368, 15.198013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869629, 33.988293, 15.193545>,  <25.646458, 33.900047, 15.190865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869629, 33.988293, 15.193545>,  <26.241581, 34.135368, 15.198013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869629, 33.988293, 15.193545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106501, 0.298156, -0.948557,
		0.352108, -0.880855, -0.316409,
		-0.929881, -0.367692, -0.011171,
		25.590664, 33.877987, 15.190194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260639, 33.697174, 14.629623>,  <26.241581, 34.135368, 15.198013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260639, 33.697174, 14.629623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881371, 33.803501, 14.699266>,  <25.653811, 33.867298, 14.741053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.881371, 33.803501, 14.699266>,  <26.260639, 33.697174, 14.629623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.881371, 33.803501, 14.699266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070342, 0.358741, -0.930783,
		-0.309882, -0.894787, -0.321449,
		-0.948169, 0.265822, 0.174109,
		25.596920, 33.883247, 14.751499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842897, 33.452076, 14.033402>,  <26.260639, 33.697174, 14.629623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842897, 33.452076, 14.033402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637337, 33.746136, 14.210246>,  <25.514000, 33.922573, 14.316352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637337, 33.746136, 14.210246>,  <25.842897, 33.452076, 14.033402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637337, 33.746136, 14.210246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168898, 0.418573, -0.892339,
		-0.841057, -0.533248, -0.090941,
		-0.513903, 0.735148, 0.442109,
		25.483166, 33.966679, 14.342878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253723, 33.619907, 13.609733>,  <25.842897, 33.452076, 14.033402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253723, 33.619907, 13.609733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291857, 33.947769, 13.835680>,  <25.314737, 34.144485, 13.971249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291857, 33.947769, 13.835680>,  <25.253723, 33.619907, 13.609733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291857, 33.947769, 13.835680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001505, 0.567334, -0.823487,
		-0.995444, 0.079358, 0.052854,
		0.095336, 0.819655, 0.564869,
		25.320457, 34.193665, 14.005140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810522, 34.108513, 13.292371>,  <25.253723, 33.619907, 13.609733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810522, 34.108513, 13.292371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040327, 34.340969, 13.522921>,  <25.178209, 34.480442, 13.661250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040327, 34.340969, 13.522921>,  <24.810522, 34.108513, 13.292371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040327, 34.340969, 13.522921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119851, 0.636866, -0.761602,
		-0.809674, 0.506629, 0.296237,
		0.574512, 0.581144, 0.576374,
		25.212681, 34.515312, 13.695833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549511, 34.748348, 13.223618>,  <24.810522, 34.108513, 13.292371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549511, 34.748348, 13.223618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924829, 34.795315, 13.353732>,  <25.150021, 34.823494, 13.431801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924829, 34.795315, 13.353732>,  <24.549511, 34.748348, 13.223618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924829, 34.795315, 13.353732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229527, 0.492134, -0.839715,
		-0.258679, 0.862565, 0.434818,
		0.938298, 0.117415, 0.325287,
		25.206318, 34.830540, 13.451318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794750, 35.379639, 12.906252>,  <24.549511, 34.748348, 13.223618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794750, 35.379639, 12.906252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977682, 35.240776, 12.578757>,  <25.087442, 35.157459, 12.382260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977682, 35.240776, 12.578757>,  <24.794750, 35.379639, 12.906252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977682, 35.240776, 12.578757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561254, 0.826813, -0.037075,
		0.689813, -0.442564, 0.572971,
		0.457332, -0.347157, -0.818737,
		25.114882, 35.136627, 12.333137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574524, 35.576778, 12.912375>,  <24.794750, 35.379639, 12.906252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574524, 35.576778, 12.912375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478949, 35.512192, 12.529369>,  <25.421604, 35.473438, 12.299565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478949, 35.512192, 12.529369>,  <25.574524, 35.576778, 12.912375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478949, 35.512192, 12.529369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491405, 0.830382, -0.262654,
		0.837514, -0.533286, -0.119063,
		-0.238937, -0.161468, -0.957516,
		25.407267, 35.463753, 12.242115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098816, 36.187126, 13.030618>,  <25.574524, 35.576778, 12.912375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098816, 36.187126, 13.030618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928009, 36.381744, 13.335492>,  <24.825525, 36.498516, 13.518416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928009, 36.381744, 13.335492>,  <25.098816, 36.187126, 13.030618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928009, 36.381744, 13.335492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237689, 0.752861, -0.613763,
		-0.872444, -0.443251, -0.205838,
		-0.427018, 0.486549, 0.762185,
		24.799904, 36.527710, 13.564148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393324, 36.461769, 12.909832>,  <25.098816, 36.187126, 13.030618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393324, 36.461769, 12.909832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627634, 36.671501, 13.157041>,  <24.768219, 36.797340, 13.305366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627634, 36.671501, 13.157041>,  <24.393324, 36.461769, 12.909832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627634, 36.671501, 13.157041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114130, 0.701579, -0.703393,
		-0.802398, 0.482564, 0.351126,
		0.585774, 0.524327, 0.618021,
		24.803366, 36.828800, 13.342446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274246, 37.218830, 12.878622>,  <24.393324, 36.461769, 12.909832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274246, 37.218830, 12.878622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647888, 37.133476, 12.993105>,  <24.872074, 37.082264, 13.061794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647888, 37.133476, 12.993105>,  <24.274246, 37.218830, 12.878622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647888, 37.133476, 12.993105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355300, 0.633783, -0.687081,
		-0.034779, 0.743495, 0.667836,
		0.934105, -0.213386, 0.286206,
		24.928120, 37.069462, 13.078967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816000, 37.888058, 12.894561>,  <24.274246, 37.218830, 12.878622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816000, 37.888058, 12.894561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993881, 37.542202, 12.801055>,  <25.100609, 37.334690, 12.744951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993881, 37.542202, 12.801055>,  <24.816000, 37.888058, 12.894561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993881, 37.542202, 12.801055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565745, 0.473493, -0.675083,
		0.694386, 0.167959, 0.699727,
		0.444702, -0.864635, -0.233765,
		25.127293, 37.282810, 12.730926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545729, 38.019436, 12.809840>,  <24.816000, 37.888058, 12.894561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545729, 38.019436, 12.809840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478991, 37.684536, 12.601544>,  <25.438948, 37.483597, 12.476567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478991, 37.684536, 12.601544>,  <25.545729, 38.019436, 12.809840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478991, 37.684536, 12.601544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519145, 0.374408, -0.768315,
		0.838243, -0.398528, 0.372188,
		-0.166845, -0.837254, -0.520738,
		25.428938, 37.433361, 12.445323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249737, 37.799095, 12.484944>,  <25.545729, 38.019436, 12.809840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249737, 37.799095, 12.484944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954111, 37.618858, 12.284646>,  <25.776735, 37.510715, 12.164467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954111, 37.618858, 12.284646>,  <26.249737, 37.799095, 12.484944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954111, 37.618858, 12.284646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463564, 0.199149, -0.863393,
		0.488765, -0.870231, 0.061697,
		-0.739065, -0.450597, -0.500745,
		25.732391, 37.483681, 12.134422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622341, 37.284164, 12.195711>,  <26.249737, 37.799095, 12.484944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622341, 37.284164, 12.195711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285917, 37.397671, 12.011497>,  <26.084063, 37.465775, 11.900968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285917, 37.397671, 12.011497>,  <26.622341, 37.284164, 12.195711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285917, 37.397671, 12.011497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532267, 0.282274, -0.798131,
		-0.096485, -0.916405, -0.388449,
		-0.841061, 0.283766, -0.460537,
		26.033600, 37.482800, 11.873336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617689, 37.415279, 12.961548>,  <26.622341, 37.284164, 12.195711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617689, 37.415279, 12.961548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426991, 37.081776, 13.072946>,  <26.312571, 36.881672, 13.139784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426991, 37.081776, 13.072946>,  <26.617689, 37.415279, 12.961548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426991, 37.081776, 13.072946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086322, 0.359689, 0.929071,
		-0.874792, 0.418892, -0.243452,
		-0.476747, -0.833759, 0.278493,
		26.283966, 36.831650, 13.156493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923506, 37.543602, 13.274108>,  <26.617689, 37.415279, 12.961548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923506, 37.543602, 13.274108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074423, 37.203419, 13.420734>,  <26.164972, 36.999310, 13.508711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074423, 37.203419, 13.420734>,  <25.923506, 37.543602, 13.274108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074423, 37.203419, 13.420734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251921, 0.286644, 0.924322,
		-0.891171, -0.441086, -0.106099,
		0.377293, -0.850458, 0.366567,
		26.187611, 36.948280, 13.530704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411030, 37.221058, 13.820640>,  <25.923506, 37.543602, 13.274108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411030, 37.221058, 13.820640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764174, 37.052013, 13.902570>,  <25.976061, 36.950584, 13.951728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764174, 37.052013, 13.902570>,  <25.411030, 37.221058, 13.820640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764174, 37.052013, 13.902570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127344, 0.204373, 0.970575,
		-0.452040, -0.882965, 0.126616,
		0.882861, -0.422615, 0.204825,
		26.029032, 36.925228, 13.964017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326750, 36.829212, 14.354538>,  <25.411030, 37.221058, 13.820640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326750, 36.829212, 14.354538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724094, 36.869919, 14.376002>,  <25.962502, 36.894344, 14.388881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724094, 36.869919, 14.376002>,  <25.326750, 36.829212, 14.354538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724094, 36.869919, 14.376002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062579, 0.086556, 0.994280,
		0.096570, -0.991032, 0.092352,
		0.993357, 0.101796, 0.053659,
		26.022102, 36.900448, 14.392101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525145, 36.455627, 14.994773>,  <25.326750, 36.829212, 14.354538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525145, 36.455627, 14.994773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839600, 36.679558, 14.890021>,  <26.028273, 36.813915, 14.827170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839600, 36.679558, 14.890021>,  <25.525145, 36.455627, 14.994773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839600, 36.679558, 14.890021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215662, 0.148613, 0.965093,
		0.579202, -0.815175, -0.003902,
		0.786139, 0.559825, -0.261879,
		26.075441, 36.847504, 14.811458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111406, 36.110001, 15.275880>,  <25.525145, 36.455627, 14.994773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111406, 36.110001, 15.275880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233564, 36.483780, 15.202623>,  <26.306860, 36.708046, 15.158669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233564, 36.483780, 15.202623>,  <26.111406, 36.110001, 15.275880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233564, 36.483780, 15.202623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303569, 0.086753, 0.948852,
		0.902540, -0.345373, -0.257175,
		0.305397, 0.934447, -0.183142,
		26.325184, 36.764114, 15.147680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819687, 36.083828, 15.540002>,  <26.111406, 36.110001, 15.275880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819687, 36.083828, 15.540002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678749, 36.458118, 15.533459>,  <26.594187, 36.682693, 15.529533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678749, 36.458118, 15.533459>,  <26.819687, 36.083828, 15.540002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678749, 36.458118, 15.533459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375932, 0.157519, 0.913161,
		0.857046, 0.315600, -0.407271,
		-0.352346, 0.935727, -0.016357,
		26.573046, 36.738838, 15.528552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331152, 36.538818, 15.687687>,  <26.819687, 36.083828, 15.540002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331152, 36.538818, 15.687687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011662, 36.768845, 15.758501>,  <26.819967, 36.906860, 15.800989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011662, 36.768845, 15.758501>,  <27.331152, 36.538818, 15.687687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011662, 36.768845, 15.758501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362596, 0.225223, 0.904322,
		0.480170, 0.786497, -0.388407,
		-0.798724, 0.575063, 0.177035,
		26.772045, 36.941364, 15.811611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611446, 37.060959, 16.133841>,  <27.331152, 36.538818, 15.687687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611446, 37.060959, 16.133841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216030, 37.079193, 16.191406>,  <26.978781, 37.090134, 16.225946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216030, 37.079193, 16.191406>,  <27.611446, 37.060959, 16.133841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216030, 37.079193, 16.191406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149060, 0.143887, 0.978303,
		0.023891, 0.988544, -0.149033,
		-0.988539, 0.045588, 0.143915,
		26.919468, 37.092869, 16.234581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527924, 37.452972, 16.670029>,  <27.611446, 37.060959, 16.133841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527924, 37.452972, 16.670029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169546, 37.275497, 16.661779>,  <26.954519, 37.169010, 16.656830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.169546, 37.275497, 16.661779>,  <27.527924, 37.452972, 16.670029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169546, 37.275497, 16.661779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005842, -0.034651, 0.999382,
		-0.444130, 0.895510, 0.028454,
		-0.895943, -0.443690, -0.020622,
		26.900763, 37.142391, 16.655594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117605, 37.819443, 17.159271>,  <27.527924, 37.452972, 16.670029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117605, 37.819443, 17.159271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963942, 37.452984, 17.113504>,  <26.871744, 37.233109, 17.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963942, 37.452984, 17.113504>,  <27.117605, 37.819443, 17.159271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963942, 37.452984, 17.113504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031653, -0.136924, 0.990076,
		-0.922725, 0.376723, 0.081599,
		-0.384157, -0.916150, -0.114419,
		26.848694, 37.178139, 17.079180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556112, 37.714214, 17.606604>,  <27.117605, 37.819443, 17.159271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556112, 37.714214, 17.606604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665125, 37.334675, 17.542843>,  <26.730534, 37.106949, 17.504587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665125, 37.334675, 17.542843>,  <26.556112, 37.714214, 17.606604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665125, 37.334675, 17.542843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019464, -0.171074, 0.985066,
		-0.961949, -0.265361, -0.065092,
		0.272533, -0.948851, -0.159400,
		26.746885, 37.050018, 17.495024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034779, 37.267040, 18.078547>,  <26.556112, 37.714214, 17.606604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034779, 37.267040, 18.078547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317673, 37.002865, 17.977642>,  <26.487410, 36.844360, 17.917099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317673, 37.002865, 17.977642>,  <26.034779, 37.267040, 18.078547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317673, 37.002865, 17.977642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097506, -0.444529, 0.890442,
		-0.700220, -0.605156, -0.378784,
		0.707237, -0.660439, -0.252262,
		26.529844, 36.804733, 17.901964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728800, 36.459476, 18.235371>,  <26.034779, 37.267040, 18.078547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728800, 36.459476, 18.235371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126490, 36.425518, 18.209097>,  <26.365103, 36.405144, 18.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126490, 36.425518, 18.209097>,  <25.728800, 36.459476, 18.235371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126490, 36.425518, 18.209097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017330, -0.476938, 0.878766,
		-0.105932, -0.874827, -0.472711,
		0.994222, -0.084897, -0.065684,
		26.424757, 36.400047, 18.189392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906574, 35.700752, 18.431973>,  <25.728800, 36.459476, 18.235371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906574, 35.700752, 18.431973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242479, 35.915981, 18.461020>,  <26.444023, 36.045120, 18.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242479, 35.915981, 18.461020>,  <25.906574, 35.700752, 18.431973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242479, 35.915981, 18.461020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264954, -0.522850, 0.810202,
		0.473916, -0.661139, -0.581635,
		0.839764, 0.538074, 0.072616,
		26.494408, 36.077404, 18.482803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451973, 35.237450, 18.602354>,  <25.906574, 35.700752, 18.431973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451973, 35.237450, 18.602354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602982, 35.585423, 18.729290>,  <26.693586, 35.794205, 18.805452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602982, 35.585423, 18.729290>,  <26.451973, 35.237450, 18.602354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602982, 35.585423, 18.729290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235835, -0.421723, 0.875518,
		0.895467, -0.255686, -0.364369,
		0.377520, 0.869928, 0.317340,
		26.716238, 35.846401, 18.824492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066601, 35.159405, 18.930229>,  <26.451973, 35.237450, 18.602354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066601, 35.159405, 18.930229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981417, 35.517311, 19.087223>,  <26.930305, 35.732056, 19.181419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981417, 35.517311, 19.087223>,  <27.066601, 35.159405, 18.930229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981417, 35.517311, 19.087223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429549, -0.275058, 0.860134,
		0.877574, 0.351766, -0.325768,
		-0.212961, 0.894765, 0.392484,
		26.917528, 35.785740, 19.204967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676771, 35.333359, 19.341522>,  <27.066601, 35.159405, 18.930229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676771, 35.333359, 19.341522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380259, 35.568085, 19.471842>,  <27.202351, 35.708920, 19.550034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380259, 35.568085, 19.471842>,  <27.676771, 35.333359, 19.341522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380259, 35.568085, 19.471842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265038, -0.190038, 0.945326,
		0.616647, 0.787103, -0.014657,
		-0.741284, 0.586817, 0.325798,
		27.157873, 35.744129, 19.569582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947733, 35.761818, 19.929449>,  <27.676771, 35.333359, 19.341522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947733, 35.761818, 19.929449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554119, 35.783005, 19.997410>,  <27.317951, 35.795715, 20.038187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554119, 35.783005, 19.997410>,  <27.947733, 35.761818, 19.929449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554119, 35.783005, 19.997410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158813, -0.169487, 0.972652,
		0.080316, 0.984108, 0.158369,
		-0.984037, 0.052968, 0.169902,
		27.258907, 35.798897, 20.048380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865570, 36.075481, 20.600330>,  <27.947733, 35.761818, 19.929449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865570, 36.075481, 20.600330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493547, 35.946552, 20.529783>,  <27.270334, 35.869194, 20.487455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493547, 35.946552, 20.529783>,  <27.865570, 36.075481, 20.600330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493547, 35.946552, 20.529783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179432, -0.020440, 0.983558,
		-0.320628, 0.946409, -0.038825,
		-0.930055, -0.322323, -0.176370,
		27.214531, 35.849857, 20.476871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429287, 36.364353, 21.031593>,  <27.865570, 36.075481, 20.600330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429287, 36.364353, 21.031593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235355, 36.033222, 20.918707>,  <27.118996, 35.834545, 20.850975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235355, 36.033222, 20.918707>,  <27.429287, 36.364353, 21.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235355, 36.033222, 20.918707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207895, -0.204346, 0.956568,
		-0.849542, 0.522442, -0.073028,
		-0.484829, -0.827826, -0.282214,
		27.089907, 35.784874, 20.834044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960083, 36.328320, 21.540173>,  <27.429287, 36.364353, 21.031593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960083, 36.328320, 21.540173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938192, 35.972805, 21.358154>,  <26.925058, 35.759499, 21.248943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938192, 35.972805, 21.358154>,  <26.960083, 36.328320, 21.540173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938192, 35.972805, 21.358154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243878, -0.430029, 0.869252,
		-0.968260, 0.158548, -0.193221,
		-0.054728, -0.888784, -0.455047,
		26.921774, 35.706169, 21.221640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251387, 35.999378, 21.529314>,  <26.960083, 36.328320, 21.540173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251387, 35.999378, 21.529314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503443, 35.690224, 21.499464>,  <26.654676, 35.504730, 21.481554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503443, 35.690224, 21.499464>,  <26.251387, 35.999378, 21.529314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503443, 35.690224, 21.499464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391699, -0.399388, 0.828892,
		-0.670444, -0.493088, -0.554410,
		0.630140, -0.772887, -0.074625,
		26.692486, 35.458359, 21.477077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872841, 35.367527, 21.627407>,  <26.251387, 35.999378, 21.529314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872841, 35.367527, 21.627407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249802, 35.259678, 21.706587>,  <26.475979, 35.194969, 21.754095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249802, 35.259678, 21.706587>,  <25.872841, 35.367527, 21.627407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249802, 35.259678, 21.706587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305695, -0.454081, 0.836876,
		-0.135754, -0.849185, -0.510349,
		0.942402, -0.269620, 0.197948,
		26.532522, 35.178791, 21.765972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797693, 34.750740, 21.963371>,  <25.872841, 35.367527, 21.627407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797693, 34.750740, 21.963371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186689, 34.826965, 22.016968>,  <26.420086, 34.872700, 22.049126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186689, 34.826965, 22.016968>,  <25.797693, 34.750740, 21.963371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186689, 34.826965, 22.016968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019306, -0.639137, 0.768850,
		0.232150, -0.745111, -0.625232,
		0.972488, 0.190560, 0.133990,
		26.478436, 34.884132, 22.057165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136221, 34.193424, 21.977528>,  <25.797693, 34.750740, 21.963371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136221, 34.193424, 21.977528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334377, 34.450249, 22.211569>,  <26.453270, 34.604343, 22.351994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334377, 34.450249, 22.211569>,  <26.136221, 34.193424, 21.977528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334377, 34.450249, 22.211569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164086, -0.592271, 0.788854,
		0.853033, -0.486798, -0.188051,
		0.495390, 0.642062, 0.585103,
		26.482994, 34.642868, 22.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569792, 33.774895, 22.387012>,  <26.136221, 34.193424, 21.977528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569792, 33.774895, 22.387012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552195, 34.126423, 22.577059>,  <26.541636, 34.337341, 22.691088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552195, 34.126423, 22.577059>,  <26.569792, 33.774895, 22.387012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552195, 34.126423, 22.577059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023241, -0.474550, 0.879922,
		0.998761, 0.049752, 0.000452,
		-0.043993, 0.878822, 0.475118,
		26.538998, 34.390068, 22.719595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110270, 33.673271, 22.968126>,  <26.569792, 33.774895, 22.387012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110270, 33.673271, 22.968126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880962, 33.985222, 23.068655>,  <26.743378, 34.172390, 23.128973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880962, 33.985222, 23.068655>,  <27.110270, 33.673271, 22.968126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880962, 33.985222, 23.068655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050856, -0.272270, 0.960876,
		0.817789, 0.563620, 0.116422,
		-0.573267, 0.779873, 0.251323,
		26.708982, 34.219185, 23.144053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443094, 33.908409, 23.552179>,  <27.110270, 33.673271, 22.968126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443094, 33.908409, 23.552179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068430, 34.046555, 23.575455>,  <26.843632, 34.129440, 23.589420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068430, 34.046555, 23.575455>,  <27.443094, 33.908409, 23.552179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068430, 34.046555, 23.575455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046381, -0.042367, 0.998025,
		0.347148, 0.937512, 0.023666,
		-0.936663, 0.345365, 0.058190,
		26.787432, 34.150166, 23.592913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501513, 34.494389, 24.096083>,  <27.443094, 33.908409, 23.552179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501513, 34.494389, 24.096083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126177, 34.363220, 24.052290>,  <26.900976, 34.284519, 24.026014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126177, 34.363220, 24.052290>,  <27.501513, 34.494389, 24.096083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126177, 34.363220, 24.052290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023834, -0.254563, 0.966762,
		-0.344893, 0.909761, 0.231051,
		-0.938339, -0.327923, -0.109480,
		26.844675, 34.264843, 24.019445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078611, 34.834087, 24.663385>,  <27.501513, 34.494389, 24.096083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078611, 34.834087, 24.663385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860861, 34.513634, 24.563921>,  <26.730209, 34.321362, 24.504242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860861, 34.513634, 24.563921>,  <27.078611, 34.834087, 24.663385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860861, 34.513634, 24.563921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107921, -0.227083, 0.967877,
		-0.831869, 0.553727, 0.037159,
		-0.544378, -0.801136, -0.248662,
		26.697548, 34.273293, 24.489323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601088, 34.895729, 25.079237>,  <27.078611, 34.834087, 24.663385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601088, 34.895729, 25.079237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568888, 34.517921, 24.951860>,  <26.549568, 34.291237, 24.875435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568888, 34.517921, 24.951860>,  <26.601088, 34.895729, 25.079237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568888, 34.517921, 24.951860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200451, -0.297610, 0.933407,
		-0.976391, 0.138969, -0.165372,
		-0.080498, -0.944519, -0.318440,
		26.544739, 34.234566, 24.856329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975204, 34.534874, 25.493124>,  <26.601088, 34.895729, 25.079237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975204, 34.534874, 25.493124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236313, 34.256310, 25.373861>,  <26.392977, 34.089169, 25.302303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236313, 34.256310, 25.373861>,  <25.975204, 34.534874, 25.493124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236313, 34.256310, 25.373861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039325, -0.361896, 0.931388,
		-0.756536, -0.619706, -0.208848,
		0.652769, -0.696416, -0.298158,
		26.432144, 34.047386, 25.284414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756714, 33.907478, 25.749098>,  <25.975204, 34.534874, 25.493124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756714, 33.907478, 25.749098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135477, 33.812416, 25.662489>,  <26.362736, 33.755379, 25.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135477, 33.812416, 25.662489>,  <25.756714, 33.907478, 25.749098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135477, 33.812416, 25.662489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071869, -0.499963, 0.863060,
		-0.313364, -0.832801, -0.456339,
		0.946909, -0.237655, -0.216522,
		26.419550, 33.741119, 25.597532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795424, 33.131622, 26.066406>,  <25.756714, 33.907478, 25.749098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795424, 33.131622, 26.066406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161121, 33.285488, 26.015509>,  <26.380539, 33.377808, 25.984970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161121, 33.285488, 26.015509>,  <25.795424, 33.131622, 26.066406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161121, 33.285488, 26.015509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230299, -0.234989, 0.944321,
		0.333348, -0.892644, -0.303425,
		0.914244, 0.384666, -0.127242,
		26.435394, 33.400887, 25.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246593, 32.737602, 26.482470>,  <25.795424, 33.131622, 26.066406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246593, 32.737602, 26.482470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418457, 33.095982, 26.437449>,  <26.521576, 33.311008, 26.410437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418457, 33.095982, 26.437449>,  <26.246593, 32.737602, 26.482470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418457, 33.095982, 26.437449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338854, -0.044440, 0.939789,
		0.837001, -0.441929, -0.322690,
		0.429660, 0.895949, -0.112553,
		26.547356, 33.364765, 26.403683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861925, 32.723114, 26.762577>,  <26.246593, 32.737602, 26.482470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861925, 32.723114, 26.762577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801380, 33.118504, 26.762541>,  <26.765053, 33.355740, 26.762520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801380, 33.118504, 26.762541>,  <26.861925, 32.723114, 26.762577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801380, 33.118504, 26.762541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336364, 0.051592, 0.940318,
		0.929488, 0.142299, -0.340298,
		-0.151363, 0.988478, -0.000090,
		26.755972, 33.415047, 26.762514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428619, 32.938068, 27.059414>,  <26.861925, 32.723114, 26.762577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428619, 32.938068, 27.059414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179379, 33.249863, 27.085146>,  <27.029833, 33.436939, 27.100584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179379, 33.249863, 27.085146>,  <27.428619, 32.938068, 27.059414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179379, 33.249863, 27.085146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339685, 0.195614, 0.919972,
		0.704525, 0.595089, -0.386669,
		-0.623103, 0.779490, 0.064328,
		26.992447, 33.483711, 27.104445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857130, 33.478722, 27.288597>,  <27.428619, 32.938068, 27.059414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857130, 33.478722, 27.288597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483231, 33.572231, 27.395622>,  <27.258890, 33.628338, 27.459837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483231, 33.572231, 27.395622>,  <27.857130, 33.478722, 27.288597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483231, 33.572231, 27.395622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286025, 0.048363, 0.957001,
		0.210786, 0.971087, -0.112074,
		-0.934751, 0.233778, 0.267561,
		27.202805, 33.642365, 27.475891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941265, 34.097794, 27.829317>,  <27.857130, 33.478722, 27.288597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941265, 34.097794, 27.829317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583769, 33.920391, 27.856251>,  <27.369272, 33.813950, 27.872412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583769, 33.920391, 27.856251>,  <27.941265, 34.097794, 27.829317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583769, 33.920391, 27.856251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002149, 0.154335, 0.988016,
		-0.448581, 0.882884, -0.138888,
		-0.893739, -0.443504, 0.067334,
		27.315647, 33.787338, 27.876451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649796, 34.034012, 27.610096>,  <27.941265, 34.097794, 27.829317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649796, 34.034012, 27.610096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885872, 33.733967, 27.729427>,  <29.027517, 33.553940, 27.801027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885872, 33.733967, 27.729427>,  <28.649796, 34.034012, 27.610096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885872, 33.733967, 27.729427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687328, 0.273112, -0.673045,
		0.423383, 0.602277, 0.676764,
		0.590192, -0.750115, 0.298330,
		29.062929, 33.508934, 27.818926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231991, 34.360790, 27.633133>,  <28.649796, 34.034012, 27.610096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231991, 34.360790, 27.633133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334602, 33.975044, 27.607241>,  <29.396170, 33.743595, 27.591705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334602, 33.975044, 27.607241>,  <29.231991, 34.360790, 27.633133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334602, 33.975044, 27.607241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628031, 0.217220, -0.747256,
		0.734690, 0.151039, 0.661376,
		0.256529, -0.964367, -0.064732,
		29.411562, 33.685734, 27.587822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001476, 34.234821, 27.674891>,  <29.231991, 34.360790, 27.633133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001476, 34.234821, 27.674891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847595, 33.940662, 27.451750>,  <29.755266, 33.764168, 27.317865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847595, 33.940662, 27.451750>,  <30.001476, 34.234821, 27.674891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847595, 33.940662, 27.451750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537742, 0.312656, -0.782994,
		0.750225, -0.601200, 0.275173,
		-0.384702, -0.735394, -0.557853,
		29.732185, 33.720043, 27.284393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537045, 33.906525, 27.394335>,  <30.001476, 34.234821, 27.674891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537045, 33.906525, 27.394335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227907, 33.842808, 27.148624>,  <30.042425, 33.804577, 27.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227907, 33.842808, 27.148624>,  <30.537045, 33.906525, 27.394335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227907, 33.842808, 27.148624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558317, 0.289452, -0.777496,
		0.301658, -0.943844, -0.134762,
		-0.772843, -0.159298, -0.614280,
		29.996054, 33.795021, 26.964340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884813, 33.809460, 26.668335>,  <30.537045, 33.906525, 27.394335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884813, 33.809460, 26.668335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494501, 33.838902, 26.585932>,  <30.260315, 33.856567, 26.536489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494501, 33.838902, 26.585932>,  <30.884813, 33.809460, 26.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494501, 33.838902, 26.585932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218759, 0.323318, -0.920658,
		-0.001162, -0.943423, -0.331589,
		-0.975778, 0.073608, -0.206006,
		30.201767, 33.860985, 26.524130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832838, 33.598301, 25.936033>,  <30.884813, 33.809460, 26.668335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832838, 33.598301, 25.936033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485527, 33.781944, 26.011200>,  <30.277140, 33.892132, 26.056301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485527, 33.781944, 26.011200>,  <30.832838, 33.598301, 25.936033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485527, 33.781944, 26.011200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022941, 0.341240, -0.939696,
		-0.495548, -0.820228, -0.285758,
		-0.868277, 0.459109, 0.187918,
		30.225044, 33.919678, 26.067575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156929, 33.223251, 25.671949>,  <30.832838, 33.598301, 25.936033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156929, 33.223251, 25.671949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096380, 33.617798, 25.697800>,  <30.060051, 33.854527, 25.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096380, 33.617798, 25.697800>,  <30.156929, 33.223251, 25.671949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096380, 33.617798, 25.697800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108893, 0.048342, -0.992877,
		-0.982460, -0.157333, 0.100090,
		-0.151374, 0.986362, 0.064627,
		30.050968, 33.913708, 25.717188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769590, 33.379234, 25.124077>,  <30.156929, 33.223251, 25.671949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769590, 33.379234, 25.124077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859417, 33.755341, 25.226429>,  <29.913313, 33.981003, 25.287840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859417, 33.755341, 25.226429>,  <29.769590, 33.379234, 25.124077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859417, 33.755341, 25.226429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112641, 0.285876, -0.951623,
		-0.967927, 0.184879, 0.170110,
		0.224565, 0.940263, 0.255882,
		29.926786, 34.037418, 25.303194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330614, 33.842766, 24.687176>,  <29.769590, 33.379234, 25.124077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330614, 33.842766, 24.687176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602011, 34.106293, 24.817169>,  <29.764849, 34.264408, 24.895164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602011, 34.106293, 24.817169>,  <29.330614, 33.842766, 24.687176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602011, 34.106293, 24.817169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015420, 0.455063, -0.890326,
		-0.734448, 0.599065, 0.318914,
		0.678489, 0.658816, 0.324982,
		29.805557, 34.303936, 24.914663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080597, 34.462917, 24.540348>,  <29.330614, 33.842766, 24.687176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080597, 34.462917, 24.540348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478773, 34.488445, 24.568712>,  <29.717678, 34.503761, 24.585730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478773, 34.488445, 24.568712>,  <29.080597, 34.462917, 24.540348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478773, 34.488445, 24.568712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047187, 0.316630, -0.947375,
		-0.082911, 0.946400, 0.312174,
		0.995439, 0.063817, 0.070909,
		29.777405, 34.507591, 24.589985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232315, 35.124920, 24.243612>,  <29.080597, 34.462917, 24.540348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232315, 35.124920, 24.243612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581757, 34.930393, 24.250679>,  <29.791422, 34.813679, 24.254919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581757, 34.930393, 24.250679>,  <29.232315, 35.124920, 24.243612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581757, 34.930393, 24.250679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170099, 0.271146, -0.947389,
		0.455941, 0.830648, 0.319596,
		0.873604, -0.486316, 0.017665,
		29.843838, 34.784500, 24.255980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811073, 35.638145, 24.115313>,  <29.232315, 35.124920, 24.243612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811073, 35.638145, 24.115313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955641, 35.274166, 24.033949>,  <30.042381, 35.055779, 23.985130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955641, 35.274166, 24.033949>,  <29.811073, 35.638145, 24.115313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955641, 35.274166, 24.033949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350951, 0.334873, -0.874467,
		0.863834, 0.244663, 0.440376,
		0.361420, -0.909945, -0.203410,
		30.064068, 35.001183, 23.972925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530891, 35.776218, 23.959328>,  <29.811073, 35.638145, 24.115313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530891, 35.776218, 23.959328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404419, 35.455997, 23.755703>,  <30.328535, 35.263866, 23.633528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404419, 35.455997, 23.755703>,  <30.530891, 35.776218, 23.959328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404419, 35.455997, 23.755703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217663, 0.461061, -0.860259,
		0.923391, -0.382803, 0.028471,
		-0.316182, -0.800553, -0.509062,
		30.309565, 35.215832, 23.602985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817686, 35.869495, 23.325407>,  <30.530891, 35.776218, 23.959328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817686, 35.869495, 23.325407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603918, 35.540546, 23.247330>,  <30.475658, 35.343178, 23.200483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603918, 35.540546, 23.247330>,  <30.817686, 35.869495, 23.325407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603918, 35.540546, 23.247330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149726, 0.135177, -0.979443,
		0.831853, -0.552657, 0.050889,
		-0.534417, -0.822373, -0.195195,
		30.443592, 35.293835, 23.188772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107931, 35.527428, 22.776566>,  <30.817686, 35.869495, 23.325407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107931, 35.527428, 22.776566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732487, 35.390091, 22.763124>,  <30.507219, 35.307690, 22.755060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732487, 35.390091, 22.763124>,  <31.107931, 35.527428, 22.776566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732487, 35.390091, 22.763124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020468, 0.041807, -0.998916,
		0.344371, -0.938281, -0.032213,
		-0.938611, -0.343338, -0.033602,
		30.450903, 35.287090, 22.753044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049286, 35.086407, 22.088671>,  <31.107931, 35.527428, 22.776566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049286, 35.086407, 22.088671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678097, 35.174541, 22.208881>,  <30.455383, 35.227421, 22.281008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678097, 35.174541, 22.208881>,  <31.049286, 35.086407, 22.088671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678097, 35.174541, 22.208881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248370, 0.235525, -0.939596,
		-0.277810, -0.946562, -0.163836,
		-0.927973, 0.220337, 0.300528,
		30.399704, 35.240643, 22.299040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539457, 34.650375, 21.628275>,  <31.049286, 35.086407, 22.088671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539457, 34.650375, 21.628275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329048, 34.954403, 21.780901>,  <30.202803, 35.136818, 21.872477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329048, 34.954403, 21.780901>,  <30.539457, 34.650375, 21.628275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329048, 34.954403, 21.780901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381271, 0.190290, -0.904667,
		-0.760218, -0.621357, 0.189695,
		-0.526024, 0.760069, 0.381567,
		30.171242, 35.182423, 21.895370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788416, 34.498436, 21.453764>,  <30.539457, 34.650375, 21.628275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788416, 34.498436, 21.453764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819628, 34.888008, 21.538973>,  <29.838356, 35.121750, 21.590097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819628, 34.888008, 21.538973>,  <29.788416, 34.498436, 21.453764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819628, 34.888008, 21.538973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591357, 0.217241, -0.776597,
		-0.802626, -0.065373, 0.592890,
		0.078031, 0.973927, 0.213022,
		29.843037, 35.180187, 21.602879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112488, 34.842255, 21.261219>,  <29.788416, 34.498436, 21.453764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112488, 34.842255, 21.261219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367208, 35.150269, 21.276819>,  <29.520041, 35.335079, 21.286179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.367208, 35.150269, 21.276819>,  <29.112488, 34.842255, 21.261219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367208, 35.150269, 21.276819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289568, 0.285730, -0.913514,
		-0.714585, 0.570436, 0.404933,
		0.636803, 0.770039, 0.038999,
		29.558250, 35.381279, 21.288519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780167, 35.452446, 21.022566>,  <29.112488, 34.842255, 21.261219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780167, 35.452446, 21.022566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162975, 35.563042, 20.987553>,  <29.392660, 35.629398, 20.966545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162975, 35.563042, 20.987553>,  <28.780167, 35.452446, 21.022566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162975, 35.563042, 20.987553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200259, 0.411706, -0.889041,
		-0.209777, 0.868360, 0.449382,
		0.957021, 0.276493, -0.087531,
		29.450081, 35.645988, 20.961294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803957, 36.162449, 20.767038>,  <28.780167, 35.452446, 21.022566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803957, 36.162449, 20.767038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162729, 36.026768, 20.653578>,  <29.377993, 35.945358, 20.585501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162729, 36.026768, 20.653578>,  <28.803957, 36.162449, 20.767038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162729, 36.026768, 20.653578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143656, 0.383153, -0.912445,
		0.418189, 0.859147, 0.294932,
		0.896929, -0.339206, -0.283652,
		29.431808, 35.925007, 20.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020451, 36.675076, 20.370321>,  <28.803957, 36.162449, 20.767038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020451, 36.675076, 20.370321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235910, 36.352047, 20.274244>,  <29.365187, 36.158230, 20.216599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235910, 36.352047, 20.274244>,  <29.020451, 36.675076, 20.370321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235910, 36.352047, 20.274244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069596, 0.241460, -0.967912,
		0.839651, 0.538082, 0.073859,
		0.538650, -0.807567, -0.240191,
		29.397505, 36.109776, 20.202187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405909, 36.898918, 19.923996>,  <29.020451, 36.675076, 20.370321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405909, 36.898918, 19.923996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405045, 36.503765, 19.861931>,  <29.404526, 36.266674, 19.824692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405045, 36.503765, 19.861931>,  <29.405909, 36.898918, 19.923996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405045, 36.503765, 19.861931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028217, 0.155162, -0.987486,
		0.999599, 0.002247, -0.028210,
		-0.002158, -0.987886, -0.155163,
		29.404398, 36.207397, 19.815382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859419, 36.817795, 19.502153>,  <29.405909, 36.898918, 19.923996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859419, 36.817795, 19.502153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655102, 36.479965, 19.437925>,  <29.532511, 36.277267, 19.399389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655102, 36.479965, 19.437925>,  <29.859419, 36.817795, 19.502153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655102, 36.479965, 19.437925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087375, 0.134806, -0.987012,
		0.855253, -0.518188, 0.004937,
		-0.510792, -0.844576, -0.160570,
		29.501863, 36.226593, 19.389755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051691, 36.571350, 18.875927>,  <29.859419, 36.817795, 19.502153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051691, 36.571350, 18.875927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739550, 36.321682, 18.891218>,  <29.552265, 36.171883, 18.900393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739550, 36.321682, 18.891218>,  <30.051691, 36.571350, 18.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739550, 36.321682, 18.891218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042944, -0.007495, -0.999049,
		0.623860, -0.781255, -0.020955,
		-0.780355, -0.624167, 0.038226,
		29.505444, 36.134430, 18.902685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192194, 35.928543, 18.379091>,  <30.051691, 36.571350, 18.875927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192194, 35.928543, 18.379091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799501, 35.980545, 18.434662>,  <29.563885, 36.011745, 18.468004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799501, 35.980545, 18.434662>,  <30.192194, 35.928543, 18.379091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799501, 35.980545, 18.434662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145534, -0.042733, -0.988430,
		-0.122563, -0.990592, 0.060872,
		-0.981732, 0.130004, 0.138927,
		29.504982, 36.019547, 18.476339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813114, 35.331875, 18.127176>,  <30.192194, 35.928543, 18.379091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813114, 35.331875, 18.127176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512745, 35.596016, 18.124424>,  <29.332523, 35.754501, 18.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512745, 35.596016, 18.124424>,  <29.813114, 35.331875, 18.127176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512745, 35.596016, 18.124424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208254, -0.246682, -0.946456,
		-0.626693, -0.709283, 0.322761,
		-0.750924, 0.660354, -0.006882,
		29.287468, 35.794121, 18.122360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299509, 35.026722, 17.715322>,  <29.813114, 35.331875, 18.127176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299509, 35.026722, 17.715322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180532, 35.408619, 17.714499>,  <29.109146, 35.637756, 17.714005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180532, 35.408619, 17.714499>,  <29.299509, 35.026722, 17.715322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180532, 35.408619, 17.714499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089540, -0.030045, -0.995530,
		-0.950532, -0.295927, 0.094424,
		-0.297441, 0.954738, -0.002061,
		29.091301, 35.695042, 17.713881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945171, 35.039330, 17.128536>,  <29.299509, 35.026722, 17.715322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945171, 35.039330, 17.128536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981230, 35.432327, 17.193750>,  <29.002865, 35.668125, 17.232880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981230, 35.432327, 17.193750>,  <28.945171, 35.039330, 17.128536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981230, 35.432327, 17.193750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048986, 0.167879, -0.984590,
		-0.994723, 0.080770, 0.063262,
		0.090146, 0.982493, 0.163037,
		29.008274, 35.727074, 17.242661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418633, 35.402550, 16.814875>,  <28.945171, 35.039330, 17.128536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418633, 35.402550, 16.814875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729013, 35.654579, 16.826916>,  <28.915241, 35.805798, 16.834141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729013, 35.654579, 16.826916>,  <28.418633, 35.402550, 16.814875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729013, 35.654579, 16.826916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105250, 0.176379, -0.978679,
		-0.621951, 0.756238, 0.203177,
		0.775951, 0.630075, 0.030105,
		28.961798, 35.843601, 16.835947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226690, 36.001232, 16.389879>,  <28.418633, 35.402550, 16.814875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226690, 36.001232, 16.389879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625723, 36.028431, 16.384134>,  <28.865143, 36.044750, 16.380688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625723, 36.028431, 16.384134>,  <28.226690, 36.001232, 16.389879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625723, 36.028431, 16.384134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037734, 0.356457, -0.933549,
		-0.058357, 0.931834, 0.358161,
		0.997582, 0.067994, -0.014360,
		28.924997, 36.048828, 16.379826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513943, 36.711376, 16.279791>,  <28.226690, 36.001232, 16.389879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513943, 36.711376, 16.279791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838148, 36.504448, 16.169924>,  <29.032671, 36.380291, 16.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838148, 36.504448, 16.169924>,  <28.513943, 36.711376, 16.279791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838148, 36.504448, 16.169924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071491, 0.552810, -0.830235,
		0.581338, 0.653282, 0.485045,
		0.810516, -0.517323, -0.274666,
		29.081303, 36.349251, 16.087524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954475, 37.266563, 15.915406>,  <28.513943, 36.711376, 16.279791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954475, 37.266563, 15.915406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108110, 36.905766, 15.836535>,  <29.200293, 36.689285, 15.789213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108110, 36.905766, 15.836535>,  <28.954475, 37.266563, 15.915406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108110, 36.905766, 15.836535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481916, 0.378009, -0.790484,
		0.787548, 0.208594, 0.579876,
		0.384089, -0.901996, -0.197176,
		29.223337, 36.635166, 15.777383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664158, 37.462212, 15.710404>,  <28.954475, 37.266563, 15.915406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664158, 37.462212, 15.710404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545578, 37.101688, 15.584065>,  <29.474430, 36.885376, 15.508263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545578, 37.101688, 15.584065>,  <29.664158, 37.462212, 15.710404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545578, 37.101688, 15.584065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308484, 0.222619, -0.924812,
		0.903856, -0.371594, 0.212044,
		-0.296450, -0.901309, -0.315847,
		29.456642, 36.831295, 15.489311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134268, 37.304581, 15.293134>,  <29.664158, 37.462212, 15.710404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134268, 37.304581, 15.293134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826084, 37.067554, 15.199108>,  <29.641174, 36.925339, 15.142693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826084, 37.067554, 15.199108>,  <30.134268, 37.304581, 15.293134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826084, 37.067554, 15.199108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079158, 0.276954, -0.957617,
		0.632555, -0.756413, -0.166475,
		-0.770460, -0.592568, -0.235065,
		29.594946, 36.889786, 15.128589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319263, 36.842136, 14.730155>,  <30.134268, 37.304581, 15.293134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319263, 36.842136, 14.730155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919489, 36.829735, 14.725029>,  <29.679625, 36.822292, 14.721953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919489, 36.829735, 14.725029>,  <30.319263, 36.842136, 14.730155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919489, 36.829735, 14.725029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004408, 0.257298, -0.966322,
		0.033257, -0.965835, -0.257016,
		-0.999437, -0.031004, -0.012815,
		29.619658, 36.820435, 14.721185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095772, 36.449944, 14.096746>,  <30.319263, 36.842136, 14.730155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095772, 36.449944, 14.096746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758810, 36.653305, 14.168166>,  <29.556633, 36.775322, 14.211018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758810, 36.653305, 14.168166>,  <30.095772, 36.449944, 14.096746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758810, 36.653305, 14.168166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004882, 0.338540, -0.940939,
		-0.538827, -0.791778, -0.287669,
		-0.842402, 0.508408, 0.178549,
		29.506090, 36.805828, 14.221731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480091, 36.151749, 13.743054>,  <30.095772, 36.449944, 14.096746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480091, 36.151749, 13.743054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428022, 36.543137, 13.807116>,  <29.396780, 36.777969, 13.845552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428022, 36.543137, 13.807116>,  <29.480091, 36.151749, 13.743054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428022, 36.543137, 13.807116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252065, 0.123562, -0.959789,
		-0.958915, -0.165308, 0.230554,
		-0.130174, 0.978471, 0.160154,
		29.388969, 36.836678, 13.855162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226461, 35.565323, 13.387288>,  <29.480091, 36.151749, 13.743054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226461, 35.565323, 13.387288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433111, 35.253300, 13.246085>,  <29.557100, 35.066086, 13.161364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433111, 35.253300, 13.246085>,  <29.226461, 35.565323, 13.387288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433111, 35.253300, 13.246085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388855, -0.153560, 0.908411,
		-0.762819, -0.606575, 0.223996,
		0.516623, -0.780055, -0.353008,
		29.588099, 35.019283, 13.140182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067707, 35.012295, 13.805023>,  <29.226461, 35.565323, 13.387288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067707, 35.012295, 13.805023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414156, 34.905697, 13.635880>,  <29.622026, 34.841740, 13.534394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414156, 34.905697, 13.635880>,  <29.067707, 35.012295, 13.805023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414156, 34.905697, 13.635880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377157, -0.206703, 0.902788,
		-0.327997, -0.941410, -0.078518,
		0.866124, -0.266498, -0.422857,
		29.673994, 34.825748, 13.509024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213749, 34.298534, 14.083491>,  <29.067707, 35.012295, 13.805023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213749, 34.298534, 14.083491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549028, 34.453514, 13.929970>,  <29.750196, 34.546501, 13.837856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549028, 34.453514, 13.929970>,  <29.213749, 34.298534, 14.083491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549028, 34.453514, 13.929970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454656, -0.107786, 0.884121,
		0.301184, -0.915568, -0.266503,
		0.838198, 0.387451, -0.383805,
		29.800488, 34.569748, 13.814829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724653, 33.803650, 14.385487>,  <29.213749, 34.298534, 14.083491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724653, 33.803650, 14.385487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919231, 34.137154, 14.281016>,  <30.035978, 34.337257, 14.218334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919231, 34.137154, 14.281016>,  <29.724653, 33.803650, 14.385487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919231, 34.137154, 14.281016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503940, -0.023550, 0.863418,
		0.713734, -0.551622, -0.431621,
		0.486445, 0.833762, -0.261176,
		30.065165, 34.387283, 14.202663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396658, 33.589203, 14.372964>,  <29.724653, 33.803650, 14.385487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396658, 33.589203, 14.372964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459280, 33.983891, 14.390295>,  <30.496853, 34.220703, 14.400694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459280, 33.983891, 14.390295>,  <30.396658, 33.589203, 14.372964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459280, 33.983891, 14.390295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677983, -0.139264, 0.721766,
		0.718214, -0.083619, -0.690780,
		0.156554, 0.986719, 0.043329,
		30.506247, 34.279907, 14.403294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062670, 33.775261, 14.179505>,  <30.396658, 33.589203, 14.372964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062670, 33.775261, 14.179505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924988, 34.065781, 14.417500>,  <30.842379, 34.240093, 14.560296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924988, 34.065781, 14.417500>,  <31.062670, 33.775261, 14.179505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924988, 34.065781, 14.417500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712135, -0.211025, 0.669576,
		0.611871, 0.654182, -0.444589,
		-0.344205, 0.726301, 0.594987,
		30.821726, 34.283672, 14.595996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730093, 34.031414, 14.461606>,  <31.062670, 33.775261, 14.179505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730093, 34.031414, 14.461606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445009, 34.204647, 14.682327>,  <31.273958, 34.308586, 14.814760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445009, 34.204647, 14.682327>,  <31.730093, 34.031414, 14.461606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445009, 34.204647, 14.682327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521934, -0.198154, 0.829650,
		0.468647, 0.879305, -0.084813,
		-0.712710, 0.433079, 0.551804,
		31.231195, 34.334572, 14.847868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987759, 34.499161, 14.991537>,  <31.730093, 34.031414, 14.461606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987759, 34.499161, 14.991537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618416, 34.419834, 15.123042>,  <31.396811, 34.372238, 15.201945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618416, 34.419834, 15.123042>,  <31.987759, 34.499161, 14.991537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618416, 34.419834, 15.123042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365273, -0.189949, 0.911315,
		-0.118284, 0.961555, 0.247831,
		-0.923355, -0.198320, 0.328762,
		31.341410, 34.360336, 15.221671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802814, 35.085960, 15.558312>,  <31.987759, 34.499161, 14.991537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802814, 35.085960, 15.558312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593712, 34.747784, 15.602043>,  <31.468250, 34.544876, 15.628282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593712, 34.747784, 15.602043>,  <31.802814, 35.085960, 15.558312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593712, 34.747784, 15.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399169, -0.129440, 0.907695,
		-0.753253, 0.518143, 0.405140,
		-0.522757, -0.845443, 0.109326,
		31.436884, 34.494152, 15.634841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319906, 35.163906, 15.978065>,  <31.802814, 35.085960, 15.558312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319906, 35.163906, 15.978065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354149, 34.766171, 16.003242>,  <31.374695, 34.527531, 16.018349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354149, 34.766171, 16.003242>,  <31.319906, 35.163906, 15.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354149, 34.766171, 16.003242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063423, 0.057611, 0.996322,
		-0.994308, -0.089284, -0.058133,
		0.085607, -0.994339, 0.062946,
		31.379831, 34.467869, 16.022127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018864, 35.048702, 16.659054>,  <31.319906, 35.163906, 15.978065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018864, 35.048702, 16.659054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153049, 34.687210, 16.552668>,  <31.233561, 34.470314, 16.488836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153049, 34.687210, 16.552668>,  <31.018864, 35.048702, 16.659054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153049, 34.687210, 16.552668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096719, -0.247794, 0.963973,
		-0.937075, -0.349101, 0.004282,
		0.335463, -0.903729, -0.265966,
		31.253689, 34.416092, 16.472878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646729, 34.602814, 16.988480>,  <31.018864, 35.048702, 16.659054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646729, 34.602814, 16.988480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986986, 34.409683, 16.905258>,  <31.191141, 34.293804, 16.855326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986986, 34.409683, 16.905258>,  <30.646729, 34.602814, 16.988480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986986, 34.409683, 16.905258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023619, -0.430432, 0.902314,
		-0.525214, -0.762632, -0.377548,
		0.850642, -0.482825, -0.208056,
		31.242180, 34.264835, 16.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504034, 33.877998, 17.055822>,  <30.646729, 34.602814, 16.988480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504034, 33.877998, 17.055822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897736, 33.933628, 17.099461>,  <31.133957, 33.967007, 17.125645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897736, 33.933628, 17.099461>,  <30.504034, 33.877998, 17.055822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897736, 33.933628, 17.099461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059680, -0.319492, 0.945708,
		0.166381, -0.937328, -0.306161,
		0.984254, 0.139076, 0.109097,
		31.193012, 33.975349, 17.132191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797083, 33.243759, 17.214275>,  <30.504034, 33.877998, 17.055822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797083, 33.243759, 17.214275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081240, 33.486046, 17.357635>,  <31.251734, 33.631416, 17.443651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081240, 33.486046, 17.357635>,  <30.797083, 33.243759, 17.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081240, 33.486046, 17.357635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096125, -0.420958, 0.901972,
		0.697209, -0.675207, -0.240822,
		0.710394, 0.605714, 0.358400,
		31.294357, 33.667759, 17.465157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310301, 32.802372, 17.667240>,  <30.797083, 33.243759, 17.214275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310301, 32.802372, 17.667240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387596, 33.181549, 17.768486>,  <31.433973, 33.409054, 17.829233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387596, 33.181549, 17.768486>,  <31.310301, 32.802372, 17.667240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387596, 33.181549, 17.768486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122304, -0.279237, 0.952402,
		0.973499, -0.153084, -0.169896,
		0.193239, 0.947941, 0.253114,
		31.445568, 33.465931, 17.844419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769178, 32.752575, 18.278290>,  <31.310301, 32.802372, 17.667240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769178, 32.752575, 18.278290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617388, 33.121410, 18.308609>,  <31.526314, 33.342712, 18.326799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617388, 33.121410, 18.308609>,  <31.769178, 32.752575, 18.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617388, 33.121410, 18.308609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008487, -0.085390, 0.996311,
		0.925162, 0.377435, 0.040230,
		-0.379478, 0.922091, 0.075797,
		31.503544, 33.398037, 18.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042542, 32.999851, 18.892498>,  <31.769178, 32.752575, 18.278290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042542, 32.999851, 18.892498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739885, 33.256649, 18.842964>,  <31.558292, 33.410728, 18.813244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739885, 33.256649, 18.842964>,  <32.042542, 32.999851, 18.892498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739885, 33.256649, 18.842964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204298, -0.052229, 0.977515,
		0.621095, 0.764925, 0.170677,
		-0.756640, 0.641998, -0.123833,
		31.512894, 33.449249, 18.805815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128475, 33.612980, 19.384275>,  <32.042542, 32.999851, 18.892498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128475, 33.612980, 19.384275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742737, 33.575924, 19.285118>,  <31.511293, 33.553692, 19.225624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742737, 33.575924, 19.285118>,  <32.128475, 33.612980, 19.384275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742737, 33.575924, 19.285118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260552, 0.168448, 0.950651,
		-0.046308, 0.981348, -0.186579,
		-0.964348, -0.092636, -0.247892,
		31.453432, 33.548134, 19.210751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758160, 34.077274, 19.777575>,  <32.128475, 33.612980, 19.384275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758160, 34.077274, 19.777575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463242, 33.837330, 19.653278>,  <31.286291, 33.693363, 19.578701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463242, 33.837330, 19.653278>,  <31.758160, 34.077274, 19.777575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463242, 33.837330, 19.653278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357984, -0.043173, 0.932729,
		-0.572926, 0.798937, -0.182911,
		-0.737295, -0.599864, -0.310741,
		31.242054, 33.657372, 19.560057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140968, 34.355824, 20.024099>,  <31.758160, 34.077274, 19.777575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140968, 34.355824, 20.024099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062529, 33.967335, 19.970030>,  <31.015465, 33.734241, 19.937588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062529, 33.967335, 19.970030>,  <31.140968, 34.355824, 20.024099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062529, 33.967335, 19.970030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322152, -0.066390, 0.944357,
		-0.926155, 0.228734, -0.299862,
		-0.196098, -0.971222, -0.135175,
		31.003698, 33.675968, 19.929478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422806, 34.111862, 20.358606>,  <31.140968, 34.355824, 20.024099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422806, 34.111862, 20.358606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651316, 33.785900, 20.319469>,  <30.788422, 33.590321, 20.295988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651316, 33.785900, 20.319469>,  <30.422806, 34.111862, 20.358606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651316, 33.785900, 20.319469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147464, -0.219177, 0.964477,
		-0.807404, -0.536551, -0.245379,
		0.571273, -0.814907, -0.097842,
		30.822697, 33.541428, 20.290117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049730, 33.612980, 20.698008>,  <30.422806, 34.111862, 20.358606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049730, 33.612980, 20.698008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418961, 33.459618, 20.685801>,  <30.640499, 33.367599, 20.678476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418961, 33.459618, 20.685801>,  <30.049730, 33.612980, 20.698008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418961, 33.459618, 20.685801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059439, -0.220591, 0.973554,
		-0.380001, -0.896849, -0.226411,
		0.923074, -0.383409, -0.030518,
		30.695883, 33.344597, 20.676645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070917, 32.984608, 21.089916>,  <30.049730, 33.612980, 20.698008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070917, 32.984608, 21.089916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463192, 33.044247, 21.039278>,  <30.698557, 33.080029, 21.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463192, 33.044247, 21.039278>,  <30.070917, 32.984608, 21.089916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463192, 33.044247, 21.039278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145004, -0.119847, 0.982146,
		0.131263, -0.981533, -0.139152,
		0.980685, 0.149097, -0.126594,
		30.757397, 33.088974, 21.001299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362143, 32.369137, 21.402716>,  <30.070917, 32.984608, 21.089916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362143, 32.369137, 21.402716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644321, 32.652637, 21.404409>,  <30.813629, 32.822739, 21.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644321, 32.652637, 21.404409>,  <30.362143, 32.369137, 21.402716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644321, 32.652637, 21.404409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217687, -0.222351, 0.950354,
		0.674504, -0.669504, -0.311142,
		0.705449, 0.708749, 0.004234,
		30.855955, 32.865261, 21.405680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856995, 32.084129, 21.689022>,  <30.362143, 32.369137, 21.402716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856995, 32.084129, 21.689022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919958, 32.476681, 21.733053>,  <30.957735, 32.712212, 21.759472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919958, 32.476681, 21.733053>,  <30.856995, 32.084129, 21.689022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919958, 32.476681, 21.733053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268282, -0.149770, 0.951627,
		0.950393, -0.120262, -0.286861,
		0.157408, 0.981380, 0.110077,
		30.967180, 32.771095, 21.766077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493570, 32.107174, 21.857681>,  <30.856995, 32.084129, 21.689022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493570, 32.107174, 21.857681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356150, 32.464554, 21.973417>,  <31.273697, 32.678982, 22.042858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356150, 32.464554, 21.973417>,  <31.493570, 32.107174, 21.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356150, 32.464554, 21.973417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427328, -0.125629, 0.895326,
		0.836279, 0.431234, -0.338637,
		-0.343553, 0.893451, 0.289339,
		31.253084, 32.732590, 22.060219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032219, 32.608879, 21.946550>,  <31.493570, 32.107174, 21.857681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032219, 32.608879, 21.946550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738857, 32.685577, 22.207426>,  <31.562840, 32.731598, 22.363951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738857, 32.685577, 22.207426>,  <32.032219, 32.608879, 21.946550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738857, 32.685577, 22.207426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664188, -0.002246, 0.747562,
		0.144807, 0.981442, -0.125708,
		-0.733407, 0.191746, 0.652187,
		31.518835, 32.743103, 22.403082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423866, 32.890682, 22.473873>,  <32.032219, 32.608879, 21.946550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423866, 32.890682, 22.473873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075344, 32.819897, 22.656961>,  <31.866230, 32.777424, 22.766815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075344, 32.819897, 22.656961>,  <32.423866, 32.890682, 22.473873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075344, 32.819897, 22.656961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480435, -0.117451, 0.869131,
		-0.100045, 0.977184, 0.187355,
		-0.871306, -0.176964, 0.457723,
		31.813951, 32.766808, 22.794279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313625, 33.306339, 23.080465>,  <32.423866, 32.890682, 22.473873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313625, 33.306339, 23.080465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080788, 32.987614, 23.145283>,  <31.941086, 32.796379, 23.184174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080788, 32.987614, 23.145283>,  <32.313625, 33.306339, 23.080465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080788, 32.987614, 23.145283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437138, -0.138624, 0.888647,
		-0.685622, 0.588111, 0.429009,
		-0.582094, -0.796812, 0.162042,
		31.906160, 32.748569, 23.193895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293705, 33.382839, 23.774033>,  <32.313625, 33.306339, 23.080465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293705, 33.382839, 23.774033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157917, 33.018963, 23.678349>,  <32.076447, 32.800636, 23.620939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157917, 33.018963, 23.678349>,  <32.293705, 33.382839, 23.774033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157917, 33.018963, 23.678349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542196, -0.397053, 0.740522,
		-0.768626, 0.121685, 0.628018,
		-0.339467, -0.909693, -0.239208,
		32.056076, 32.746056, 23.606586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032269, 33.155308, 24.390932>,  <32.293705, 33.382839, 23.774033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032269, 33.155308, 24.390932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080917, 32.826794, 24.167969>,  <32.110107, 32.629684, 24.034191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080917, 32.826794, 24.167969>,  <32.032269, 33.155308, 24.390932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080917, 32.826794, 24.167969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508677, -0.430652, 0.745511,
		-0.852324, -0.374209, 0.365392,
		0.121620, -0.821283, -0.557407,
		32.117405, 32.580410, 24.000746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677885, 32.514252, 24.738853>,  <32.032269, 33.155308, 24.390932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677885, 32.514252, 24.738853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972113, 32.398071, 24.494045>,  <32.148651, 32.328362, 24.347160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972113, 32.398071, 24.494045>,  <31.677885, 32.514252, 24.738853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972113, 32.398071, 24.494045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457847, -0.452723, 0.765126,
		-0.499309, -0.843018, -0.200028,
		0.735572, -0.290453, -0.612022,
		32.192783, 32.310936, 24.310438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830484, 31.923925, 25.027649>,  <31.677885, 32.514252, 24.738853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830484, 31.923925, 25.027649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157185, 31.991428, 24.806946>,  <32.353207, 32.031929, 24.674524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157185, 31.991428, 24.806946>,  <31.830484, 31.923925, 25.027649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157185, 31.991428, 24.806946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559436, -0.465695, 0.685682,
		-0.141237, -0.868705, -0.474767,
		0.816752, 0.168758, -0.551758,
		32.402210, 32.042057, 24.641418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293873, 31.255362, 25.099518>,  <31.830484, 31.923925, 25.027649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293873, 31.255362, 25.099518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544117, 31.544903, 24.983141>,  <32.694263, 31.718628, 24.913315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544117, 31.544903, 24.983141>,  <32.293873, 31.255362, 25.099518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544117, 31.544903, 24.983141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675909, -0.316699, 0.665469,
		0.389562, -0.612974, -0.687390,
		0.625611, 0.723854, -0.290940,
		32.731800, 31.762058, 24.895859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952637, 30.859329, 24.968063>,  <32.293873, 31.255362, 25.099518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952637, 30.859329, 24.968063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010376, 31.246861, 25.048597>,  <33.045017, 31.479380, 25.096918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010376, 31.246861, 25.048597>,  <32.952637, 30.859329, 24.968063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010376, 31.246861, 25.048597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812567, -0.232166, 0.534634,
		0.564711, 0.086427, -0.820751,
		0.144344, 0.968829, 0.201334,
		33.053680, 31.537510, 25.108997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635456, 30.865475, 24.936972>,  <32.952637, 30.859329, 24.968063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635456, 30.865475, 24.936972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521122, 31.198036, 25.127579>,  <33.452522, 31.397573, 25.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521122, 31.198036, 25.127579>,  <33.635456, 30.865475, 24.936972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521122, 31.198036, 25.127579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709518, -0.150629, 0.688401,
		0.644116, 0.534865, -0.546841,
		-0.285831, 0.831403, 0.476518,
		33.435371, 31.447456, 25.270535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320969, 31.169209, 25.109398>,  <33.635456, 30.865475, 24.936972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320969, 31.169209, 25.109398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027908, 31.295822, 25.350407>,  <33.852074, 31.371790, 25.495012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027908, 31.295822, 25.350407>,  <34.320969, 31.169209, 25.109398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027908, 31.295822, 25.350407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599113, -0.120109, 0.791604,
		0.322938, 0.940946, -0.101642,
		-0.732649, 0.316534, 0.602521,
		33.808113, 31.390783, 25.531162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673973, 31.624168, 25.414593>,  <34.320969, 31.169209, 25.109398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673973, 31.624168, 25.414593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352119, 31.530834, 25.632996>,  <34.159008, 31.474833, 25.764038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352119, 31.530834, 25.632996>,  <34.673973, 31.624168, 25.414593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352119, 31.530834, 25.632996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566393, -0.025592, 0.823738,
		-0.178235, 0.972059, 0.152752,
		-0.804631, -0.233336, 0.546006,
		34.110729, 31.460833, 25.796797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654884, 32.200779, 25.809782>,  <34.673973, 31.624168, 25.414593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654884, 32.200779, 25.809782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437160, 31.918364, 25.990990>,  <34.306526, 31.748913, 26.099714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437160, 31.918364, 25.990990>,  <34.654884, 32.200779, 25.809782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437160, 31.918364, 25.990990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485203, 0.175561, 0.856596,
		-0.684325, 0.686063, 0.247014,
		-0.544313, -0.706042, 0.453021,
		34.273865, 31.706551, 26.126896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470573, 32.414749, 26.449360>,  <34.654884, 32.200779, 25.809782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470573, 32.414749, 26.449360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429390, 32.020081, 26.499762>,  <34.404678, 31.783279, 26.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429390, 32.020081, 26.499762>,  <34.470573, 32.414749, 26.449360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429390, 32.020081, 26.499762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474988, 0.062532, 0.877768,
		-0.873948, 0.150227, 0.462219,
		-0.102961, -0.986672, 0.126006,
		34.398502, 31.724079, 26.537563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091881, 32.240395, 26.970541>,  <34.470573, 32.414749, 26.449360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091881, 32.240395, 26.970541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345055, 31.932467, 26.937603>,  <34.496960, 31.747711, 26.917839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345055, 31.932467, 26.937603>,  <34.091881, 32.240395, 26.970541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345055, 31.932467, 26.937603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508529, 0.333174, 0.793973,
		-0.583778, -0.544405, 0.602350,
		0.632931, -0.769817, -0.082346,
		34.534935, 31.701521, 26.912899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727440, 32.455082, 27.195379>,  <34.091881, 32.240395, 26.970541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727440, 32.455082, 27.195379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089939, 32.582588, 27.306448>,  <35.307438, 32.659092, 27.373089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089939, 32.582588, 27.306448>,  <34.727440, 32.455082, 27.195379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089939, 32.582588, 27.306448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345978, 0.181807, 0.920459,
		0.242929, -0.930233, 0.275049,
		0.906247, 0.318767, 0.277674,
		35.361813, 32.678219, 27.389750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873680, 32.263828, 27.959316>,  <34.727440, 32.455082, 27.195379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873680, 32.263828, 27.959316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044697, 32.604969, 27.839417>,  <35.147308, 32.809654, 27.767477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044697, 32.604969, 27.839417>,  <34.873680, 32.263828, 27.959316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044697, 32.604969, 27.839417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212286, 0.417031, 0.883754,
		0.878714, -0.314213, 0.359348,
		0.427546, 0.852852, -0.299748,
		35.172962, 32.860825, 27.749493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090424, 32.465328, 28.620251>,  <34.873680, 32.263828, 27.959316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090424, 32.465328, 28.620251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078957, 32.796417, 28.396088>,  <35.072075, 32.995071, 28.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078957, 32.796417, 28.396088>,  <35.090424, 32.465328, 28.620251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078957, 32.796417, 28.396088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297542, 0.528159, 0.795310,
		0.954278, 0.189545, 0.231140,
		-0.028669, 0.827720, -0.560408,
		35.070354, 33.044735, 28.227964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571926, 32.871704, 28.988810>,  <35.090424, 32.465328, 28.620251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571926, 32.871704, 28.988810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254944, 33.024216, 28.798382>,  <35.064754, 33.115723, 28.684126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254944, 33.024216, 28.798382>,  <35.571926, 32.871704, 28.988810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254944, 33.024216, 28.798382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272654, 0.476758, 0.835680,
		0.545594, 0.792043, -0.273854,
		-0.792457, 0.381275, -0.476070,
		35.017208, 33.138599, 28.655561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856850, 33.276470, 28.356009>,  <35.571926, 32.871704, 28.988810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856850, 33.276470, 28.356009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991196, 32.918957, 28.474901>,  <36.071804, 32.704449, 28.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991196, 32.918957, 28.474901>,  <35.856850, 33.276470, 28.356009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991196, 32.918957, 28.474901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934202, 0.356385, 0.016015,
		-0.120244, 0.272297, 0.954670,
		0.335869, -0.893781, 0.297234,
		36.091957, 32.650822, 28.564072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168678, 33.286533, 28.982708>,  <35.856850, 33.276470, 28.356009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168678, 33.286533, 28.982708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336163, 32.977066, 28.792500>,  <36.436653, 32.791386, 28.678375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336163, 32.977066, 28.792500>,  <36.168678, 33.286533, 28.982708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336163, 32.977066, 28.792500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890608, 0.452174, 0.048534,
		0.177469, -0.443824, 0.878365,
		0.418714, -0.773666, -0.475520,
		36.461777, 32.744965, 28.649843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969692, 33.163971, 29.219257>,  <36.168678, 33.286533, 28.982708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969692, 33.163971, 29.219257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929684, 32.973038, 28.870052>,  <36.905678, 32.858479, 28.660530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929684, 32.973038, 28.870052>,  <36.969692, 33.163971, 29.219257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929684, 32.973038, 28.870052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994660, -0.025512, -0.100006,
		0.025463, -0.878352, 0.477335,
		-0.100018, -0.477333, -0.873012,
		36.899677, 32.829838, 28.608149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153919, 32.336838, 29.191120>,  <36.969692, 33.163971, 29.219257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153919, 32.336838, 29.191120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220474, 32.575054, 28.876757>,  <37.260406, 32.717983, 28.688139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220474, 32.575054, 28.876757>,  <37.153919, 32.336838, 29.191120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220474, 32.575054, 28.876757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969332, 0.047400, 0.241139,
		0.180860, -0.801928, -0.569387,
		0.166387, 0.595538, -0.785907,
		37.270390, 32.753716, 28.640984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912926, 32.295799, 28.997692>,  <37.153919, 32.336838, 29.191120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912926, 32.295799, 28.997692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810959, 32.610661, 28.773048>,  <37.749779, 32.799576, 28.638262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810959, 32.610661, 28.773048>,  <37.912926, 32.295799, 28.997692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810959, 32.610661, 28.773048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958762, 0.281237, -0.041007,
		0.125666, -0.548902, -0.826387,
		-0.254920, 0.787154, -0.561608,
		37.734482, 32.846806, 28.604567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419365, 32.354664, 28.378950>,  <37.912926, 32.295799, 28.997692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419365, 32.354664, 28.378950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251030, 32.698330, 28.495388>,  <38.150028, 32.904530, 28.565250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251030, 32.698330, 28.495388>,  <38.419365, 32.354664, 28.378950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251030, 32.698330, 28.495388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897701, 0.440597, -0.002603,
		-0.130492, 0.260220, -0.956691,
		-0.420838, 0.859162, 0.291094,
		38.124779, 32.956078, 28.582716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905998, 32.580101, 27.876722>,  <38.419365, 32.354664, 28.378950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905998, 32.580101, 27.876722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053463, 32.252876, 28.053291>,  <39.141941, 32.056541, 28.159233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053463, 32.252876, 28.053291>,  <38.905998, 32.580101, 27.876722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053463, 32.252876, 28.053291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632859, 0.568709, 0.525413,
		-0.680865, 0.085659, 0.727382,
		0.368663, -0.818066, 0.441425,
		39.164062, 32.007458, 28.185719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442101, 32.788181, 27.297148>,  <38.905998, 32.580101, 27.876722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442101, 32.788181, 27.297148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155399, 32.516949, 27.232058>,  <38.983379, 32.354210, 27.193003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155399, 32.516949, 27.232058>,  <39.442101, 32.788181, 27.297148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155399, 32.516949, 27.232058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563189, -0.425284, -0.708485,
		0.411205, -0.599450, 0.686709,
		-0.716748, -0.678080, -0.162725,
		38.940376, 32.313526, 27.183241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221619, 33.351631, 27.549189>,  <39.442101, 32.788181, 27.297148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221619, 33.351631, 27.549189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368580, 33.383270, 27.178511>,  <39.456757, 33.402252, 26.956104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368580, 33.383270, 27.178511>,  <39.221619, 33.351631, 27.549189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368580, 33.383270, 27.178511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550410, -0.784675, -0.285189,
		-0.749711, 0.614840, -0.244755,
		0.367399, 0.079094, -0.926694,
		39.478798, 33.406998, 26.900503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630905, 33.198536, 27.113329>,  <39.221619, 33.351631, 27.549189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630905, 33.198536, 27.113329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966286, 33.099003, 26.919388>,  <39.167515, 33.039284, 26.803022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966286, 33.099003, 26.919388>,  <38.630905, 33.198536, 27.113329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966286, 33.099003, 26.919388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428308, -0.850986, -0.303932,
		-0.336976, 0.462499, -0.820087,
		0.838451, -0.248831, -0.484854,
		39.217819, 33.024353, 26.773932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349648, 32.825268, 26.593330>,  <38.630905, 33.198536, 27.113329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349648, 32.825268, 26.593330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733231, 32.726913, 26.536858>,  <38.963383, 32.667900, 26.502974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733231, 32.726913, 26.536858>,  <38.349648, 32.825268, 26.593330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733231, 32.726913, 26.536858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280260, -0.746521, -0.603457,
		0.042987, 0.618260, -0.784797,
		0.958961, -0.245888, -0.141182,
		39.020920, 32.653149, 26.494503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437401, 32.765144, 25.799572>,  <38.349648, 32.825268, 26.593330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437401, 32.765144, 25.799572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733624, 32.566509, 25.980671>,  <38.911358, 32.447330, 26.089331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733624, 32.566509, 25.980671>,  <38.437401, 32.765144, 25.799572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733624, 32.566509, 25.980671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223250, -0.817278, -0.531240,
		0.633828, 0.292336, -0.716102,
		0.740555, -0.496585, 0.452750,
		38.955791, 32.417534, 26.116495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754116, 32.201626, 25.302597>,  <38.437401, 32.765144, 25.799572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754116, 32.201626, 25.302597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852211, 32.053238, 25.660868>,  <38.911068, 31.964205, 25.875830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852211, 32.053238, 25.660868>,  <38.754116, 32.201626, 25.302597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852211, 32.053238, 25.660868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246773, -0.917345, -0.312380,
		0.937530, -0.144423, -0.316510,
		0.245234, -0.370972, 0.895678,
		38.925781, 31.941946, 25.929571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093616, 31.563288, 25.153341>,  <38.754116, 32.201626, 25.302597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093616, 31.563288, 25.153341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992573, 31.530813, 25.539003>,  <38.931946, 31.511328, 25.770401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992573, 31.530813, 25.539003>,  <39.093616, 31.563288, 25.153341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992573, 31.530813, 25.539003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307265, -0.938162, -0.159500,
		0.917484, -0.336543, 0.212043,
		-0.252610, -0.081186, 0.964156,
		38.916790, 31.506458, 25.828251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388786, 30.960152, 25.439568>,  <39.093616, 31.563288, 25.153341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388786, 30.960152, 25.439568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060795, 31.056417, 25.647303>,  <38.863998, 31.114178, 25.771944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060795, 31.056417, 25.647303>,  <39.388786, 30.960152, 25.439568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060795, 31.056417, 25.647303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362632, -0.920421, -0.146027,
		0.442865, -0.308068, 0.842001,
		-0.819981, 0.240667, 0.519337,
		38.814800, 31.128618, 25.803104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175945, 30.468658, 25.927555>,  <39.388786, 30.960152, 25.439568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175945, 30.468658, 25.927555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850178, 30.671688, 25.815060>,  <38.654716, 30.793505, 25.747562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850178, 30.671688, 25.815060>,  <39.175945, 30.468658, 25.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850178, 30.671688, 25.815060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437656, -0.855523, -0.276654,
		-0.381029, -0.102225, 0.918894,
		-0.814416, 0.507573, -0.281240,
		38.605854, 30.823959, 25.730688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701107, 30.012997, 26.148941>,  <39.175945, 30.468658, 25.927555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701107, 30.012997, 26.148941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554413, 30.225101, 25.843176>,  <38.466396, 30.352364, 25.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554413, 30.225101, 25.843176>,  <38.701107, 30.012997, 26.148941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554413, 30.225101, 25.843176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414189, -0.828801, -0.376213,
		-0.833036, 0.178639, 0.523583,
		-0.366740, 0.530261, -0.764411,
		38.444389, 30.384180, 25.613852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919189, 29.893717, 26.012180>,  <38.701107, 30.012997, 26.148941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919189, 29.893717, 26.012180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107044, 29.990517, 25.672562>,  <38.219757, 30.048597, 25.468790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107044, 29.990517, 25.672562>,  <37.919189, 29.893717, 26.012180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107044, 29.990517, 25.672562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219675, -0.899422, -0.377867,
		-0.855095, 0.363974, -0.369237,
		0.469634, 0.242000, -0.849047,
		38.247932, 30.063116, 25.417847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692757, 30.479841, 25.671049>,  <37.919189, 29.893717, 26.012180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692757, 30.479841, 25.671049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959000, 30.446318, 25.967682>,  <38.118744, 30.426205, 26.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959000, 30.446318, 25.967682>,  <37.692757, 30.479841, 25.671049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959000, 30.446318, 25.967682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267487, 0.954446, -0.132221,
		-0.696718, 0.286371, 0.657705,
		0.665608, -0.083807, 0.741581,
		38.158684, 30.421175, 26.190157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688461, 31.195126, 26.054466>,  <37.692757, 30.479841, 25.671049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688461, 31.195126, 26.054466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025753, 30.996134, 26.135927>,  <38.228130, 30.876740, 26.184803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025753, 30.996134, 26.135927>,  <37.688461, 31.195126, 26.054466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025753, 30.996134, 26.135927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486152, 0.867422, 0.105995,
		-0.229381, 0.009626, 0.973289,
		0.843232, -0.497480, 0.203650,
		38.278721, 30.846889, 26.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975750, 31.290615, 26.714256>,  <37.688461, 31.195126, 26.054466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975750, 31.290615, 26.714256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285042, 31.221283, 26.470263>,  <38.470615, 31.179684, 26.323866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285042, 31.221283, 26.470263>,  <37.975750, 31.290615, 26.714256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285042, 31.221283, 26.470263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419130, 0.861543, 0.286485,
		0.475870, -0.477180, 0.738814,
		0.773226, -0.173329, -0.609983,
		38.517010, 31.169285, 26.287268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632687, 31.431097, 27.106487>,  <37.975750, 31.290615, 26.714256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632687, 31.431097, 27.106487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730446, 31.454285, 26.719311>,  <38.789101, 31.468197, 26.487005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730446, 31.454285, 26.719311>,  <38.632687, 31.431097, 27.106487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730446, 31.454285, 26.719311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484433, 0.857418, 0.173663,
		0.839997, -0.511345, 0.181469,
		0.244397, 0.057967, -0.967941,
		38.803764, 31.471674, 26.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334038, 31.490601, 27.026751>,  <38.632687, 31.431097, 27.106487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334038, 31.490601, 27.026751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184731, 31.647655, 26.690535>,  <39.095146, 31.741888, 26.488806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184731, 31.647655, 26.690535>,  <39.334038, 31.490601, 27.026751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184731, 31.647655, 26.690535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543441, 0.826846, 0.144907,
		0.751893, -0.402695, -0.522009,
		-0.373268, 0.392636, -0.840540,
		39.072750, 31.765446, 26.438372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861988, 31.814682, 26.897726>,  <39.334038, 31.490601, 27.026751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861988, 31.814682, 26.897726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609470, 31.980625, 26.635622>,  <39.457962, 32.080189, 26.478359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609470, 31.980625, 26.635622>,  <39.861988, 31.814682, 26.897726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609470, 31.980625, 26.635622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507158, 0.860038, 0.055898,
		0.586737, -0.297032, -0.753333,
		-0.631292, 0.414856, -0.655259,
		39.420082, 32.105083, 26.439045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189045, 32.229485, 26.308599>,  <39.861988, 31.814682, 26.897726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189045, 32.229485, 26.308599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823158, 32.385151, 26.352144>,  <39.603626, 32.478550, 26.378271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823158, 32.385151, 26.352144>,  <40.189045, 32.229485, 26.308599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823158, 32.385151, 26.352144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378458, 0.919434, -0.106818,
		-0.141661, -0.056508, -0.988301,
		-0.914714, 0.389163, 0.108863,
		39.548744, 32.501900, 26.384804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117188, 32.789371, 25.855289>,  <40.189045, 32.229485, 26.308599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117188, 32.789371, 25.855289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832394, 32.883934, 26.119770>,  <39.661518, 32.940670, 26.278458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832394, 32.883934, 26.119770>,  <40.117188, 32.789371, 25.855289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832394, 32.883934, 26.119770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361495, 0.930660, 0.056511,
		-0.601992, 0.279256, -0.748079,
		-0.711988, 0.236407, 0.661199,
		39.618797, 32.954857, 26.318130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865555, 33.472221, 25.689608>,  <40.117188, 32.789371, 25.855289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865555, 33.472221, 25.689608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780411, 33.435074, 26.078671>,  <39.729324, 33.412785, 26.312109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780411, 33.435074, 26.078671>,  <39.865555, 33.472221, 25.689608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780411, 33.435074, 26.078671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289788, 0.944683, 0.153613,
		-0.933120, 0.314564, -0.174176,
		-0.212862, -0.092866, 0.972659,
		39.716553, 33.407215, 26.370468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497849, 34.150421, 25.844101>,  <39.865555, 33.472221, 25.689608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497849, 34.150421, 25.844101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672478, 33.955864, 26.146841>,  <39.777256, 33.839130, 26.328485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672478, 33.955864, 26.146841>,  <39.497849, 34.150421, 25.844101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672478, 33.955864, 26.146841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461327, 0.843266, 0.275826,
		-0.772386, 0.228736, 0.592536,
		0.436574, -0.486397, 0.756850,
		39.803452, 33.809944, 26.373896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491829, 34.540707, 26.381596>,  <39.497849, 34.150421, 25.844101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491829, 34.540707, 26.381596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799931, 34.301636, 26.470581>,  <39.984791, 34.158192, 26.523972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799931, 34.301636, 26.470581>,  <39.491829, 34.540707, 26.381596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799931, 34.301636, 26.470581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582438, 0.801359, 0.136346,
		-0.259763, 0.024550, 0.965360,
		0.770253, -0.597680, 0.222462,
		40.031006, 34.122334, 26.537319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863895, 34.884502, 26.893454>,  <39.491829, 34.540707, 26.381596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863895, 34.884502, 26.893454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120136, 34.622021, 26.733942>,  <40.273880, 34.464531, 26.638235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120136, 34.622021, 26.733942>,  <39.863895, 34.884502, 26.893454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120136, 34.622021, 26.733942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691987, 0.718448, -0.070613,
		0.332840, -0.230717, 0.914324,
		0.640602, -0.656203, -0.398781,
		40.312317, 34.425159, 26.614307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157539, 35.566013, 26.871113>,  <39.863895, 34.884502, 26.893454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157539, 35.566013, 26.871113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089203, 35.330444, 27.187082>,  <40.048203, 35.189102, 27.376665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089203, 35.330444, 27.187082>,  <40.157539, 35.566013, 26.871113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089203, 35.330444, 27.187082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125267, 0.808187, 0.575449,
		-0.977304, -0.000643, -0.211841,
		-0.170837, -0.588925, 0.789925,
		40.037952, 35.153767, 27.424061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370583, 35.690693, 27.153156>,  <40.157539, 35.566013, 26.871113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370583, 35.690693, 27.153156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680260, 35.589092, 27.385057>,  <39.866066, 35.528130, 27.524199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680260, 35.589092, 27.385057>,  <39.370583, 35.690693, 27.153156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680260, 35.589092, 27.385057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017889, 0.906801, 0.421180,
		-0.632701, -0.336444, 0.697492,
		0.774190, -0.254003, 0.579752,
		39.912518, 35.512890, 27.558983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239380, 35.601719, 27.878632>,  <39.370583, 35.690693, 27.153156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239380, 35.601719, 27.878632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629604, 35.689098, 27.888069>,  <39.863739, 35.741528, 27.893732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629604, 35.689098, 27.888069>,  <39.239380, 35.601719, 27.878632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629604, 35.689098, 27.888069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189317, 0.781197, 0.594887,
		0.111521, -0.584816, 0.803463,
		0.975563, 0.218451, 0.023595,
		39.922272, 35.754635, 27.895147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476944, 35.643501, 28.545752>,  <39.239380, 35.601719, 27.878632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476944, 35.643501, 28.545752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705814, 35.861267, 28.300402>,  <39.843136, 35.991928, 28.153193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705814, 35.861267, 28.300402>,  <39.476944, 35.643501, 28.545752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705814, 35.861267, 28.300402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024035, 0.758707, 0.650988,
		0.819780, -0.357736, 0.447198,
		0.572174, 0.544416, -0.613375,
		39.877468, 36.024590, 28.116390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939896, 36.267708, 28.817492>,  <39.476944, 35.643501, 28.545752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939896, 36.267708, 28.817492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030247, 35.878983, 28.790501>,  <40.084457, 35.645748, 28.774305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030247, 35.878983, 28.790501>,  <39.939896, 36.267708, 28.817492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030247, 35.878983, 28.790501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929421, 0.235735, -0.283912,
		0.291817, 0.001414, 0.956473,
		0.225875, -0.971816, -0.067477,
		40.098011, 35.587437, 28.770258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515858, 36.044918, 29.324862>,  <39.939896, 36.267708, 28.817492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515858, 36.044918, 29.324862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514061, 35.828663, 28.988363>,  <40.512981, 35.698910, 28.786465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514061, 35.828663, 28.988363>,  <40.515858, 36.044918, 29.324862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514061, 35.828663, 28.988363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981983, 0.156544, -0.105846,
		0.188916, -0.826563, 0.530192,
		-0.004490, -0.540636, -0.841245,
		40.512714, 35.666473, 28.735991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914692, 35.427147, 29.555685>,  <40.515858, 36.044918, 29.324862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914692, 35.427147, 29.555685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939789, 35.544178, 29.174011>,  <40.954845, 35.614395, 28.945007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939789, 35.544178, 29.174011>,  <40.914692, 35.427147, 29.555685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939789, 35.544178, 29.174011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997411, 0.015287, 0.070270,
		0.035146, -0.956121, -0.290858,
		0.062740, 0.292574, -0.954182,
		40.958611, 35.631950, 28.887756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581051, 35.164127, 29.171946>,  <40.914692, 35.427147, 29.555685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581051, 35.164127, 29.171946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450901, 35.515423, 29.031759>,  <41.372810, 35.726200, 28.947647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450901, 35.515423, 29.031759>,  <41.581051, 35.164127, 29.171946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450901, 35.515423, 29.031759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939113, 0.343423, -0.011299,
		0.110435, -0.332802, -0.936508,
		-0.325378, 0.878239, -0.350465,
		41.353287, 35.778893, 28.926620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902996, 35.267799, 28.454466>,  <41.581051, 35.164127, 29.171946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902996, 35.267799, 28.454466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830402, 35.597530, 28.668961>,  <41.786846, 35.795368, 28.797657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830402, 35.597530, 28.668961>,  <41.902996, 35.267799, 28.454466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830402, 35.597530, 28.668961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977428, 0.211179, 0.006166,
		-0.108159, 0.525253, -0.844044,
		-0.181483, 0.824326, 0.536238,
		41.775959, 35.844830, 28.829832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279369, 36.005192, 28.121584>,  <41.902996, 35.267799, 28.454466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279369, 36.005192, 28.121584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225067, 35.960743, 28.515381>,  <42.192486, 35.934074, 28.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225067, 35.960743, 28.515381>,  <42.279369, 36.005192, 28.121584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225067, 35.960743, 28.515381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968055, 0.196554, 0.155679,
		-0.210805, 0.974176, 0.080888,
		-0.135759, -0.111122, 0.984490,
		42.184338, 35.927406, 28.810728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522831, 36.612747, 28.503656>,  <42.279369, 36.005192, 28.121584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522831, 36.612747, 28.503656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534714, 36.257866, 28.687828>,  <42.541843, 36.044937, 28.798330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534714, 36.257866, 28.687828>,  <42.522831, 36.612747, 28.503656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534714, 36.257866, 28.687828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884479, 0.237913, 0.401366,
		-0.465633, 0.395314, 0.791778,
		0.029709, -0.887200, 0.460427,
		42.543625, 35.991707, 28.825956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963795, 36.585571, 29.019032>,  <42.522831, 36.612747, 28.503656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963795, 36.585571, 29.019032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947655, 36.187653, 29.056448>,  <42.937969, 35.948902, 29.078897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947655, 36.187653, 29.056448>,  <42.963795, 36.585571, 29.019032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947655, 36.187653, 29.056448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970654, -0.016815, 0.239893,
		-0.237072, 0.100478, 0.966282,
		-0.040352, -0.994797, 0.093543,
		42.935551, 35.889214, 29.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143124, 36.358467, 29.643446>,  <42.963795, 36.585571, 29.019032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143124, 36.358467, 29.643446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218475, 36.018032, 29.447422>,  <43.263687, 35.813770, 29.329807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218475, 36.018032, 29.447422>,  <43.143124, 36.358467, 29.643446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218475, 36.018032, 29.447422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878112, -0.077502, 0.472136,
		-0.439811, -0.519268, 0.732753,
		0.188376, -0.851090, -0.490062,
		43.274986, 35.762707, 29.300404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617538, 35.968472, 30.060329>,  <43.143124, 36.358467, 29.643446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617538, 35.968472, 30.060329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632439, 35.744633, 29.729160>,  <43.641380, 35.610329, 29.530458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632439, 35.744633, 29.729160>,  <43.617538, 35.968472, 30.060329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632439, 35.744633, 29.729160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894166, -0.351255, 0.277647,
		-0.446184, -0.750644, 0.487292,
		0.037251, -0.559601, -0.827924,
		43.643616, 35.576752, 29.480783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925617, 35.233601, 30.367121>,  <43.617538, 35.968472, 30.060329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925617, 35.233601, 30.367121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902836, 35.327229, 30.755341>,  <43.889168, 35.383404, 30.988274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902836, 35.327229, 30.755341>,  <43.925617, 35.233601, 30.367121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902836, 35.327229, 30.755341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960915, -0.250946, 0.116911,
		0.270920, 0.939276, -0.210626,
		-0.056956, 0.234067, 0.970551,
		43.885750, 35.397449, 31.046505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416279, 35.668556, 30.512651>,  <43.925617, 35.233601, 30.367121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416279, 35.668556, 30.512651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313347, 35.476871, 30.848303>,  <44.251587, 35.361858, 31.049694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313347, 35.476871, 30.848303>,  <44.416279, 35.668556, 30.512651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313347, 35.476871, 30.848303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960829, -0.219350, 0.169388,
		0.102889, 0.849846, 0.516890,
		-0.257334, -0.479215, 0.839126,
		44.236145, 35.333107, 31.100040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841335, 35.874191, 31.061544>,  <44.416279, 35.668556, 30.512651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841335, 35.874191, 31.061544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709736, 35.497829, 31.093700>,  <44.630775, 35.272015, 31.112993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709736, 35.497829, 31.093700>,  <44.841335, 35.874191, 31.061544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709736, 35.497829, 31.093700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943953, -0.330081, -0.000166,
		0.026691, 0.075829, 0.996764,
		-0.329000, -0.940902, 0.080389,
		44.611034, 35.215557, 31.117817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225258, 35.500610, 31.702370>,  <44.841335, 35.874191, 31.061544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225258, 35.500610, 31.702370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117920, 35.312256, 31.366213>,  <45.053516, 35.199242, 31.164518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117920, 35.312256, 31.366213>,  <45.225258, 35.500610, 31.702370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117920, 35.312256, 31.366213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958756, -0.215395, -0.185451,
		-0.093690, -0.855495, 0.509264,
		-0.268346, -0.470885, -0.840392,
		45.037415, 35.170990, 31.114096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815453, 35.169659, 31.373028>,  <45.225258, 35.500610, 31.702370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815453, 35.169659, 31.373028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557648, 35.031754, 31.100046>,  <45.402966, 34.949009, 30.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557648, 35.031754, 31.100046>,  <45.815453, 35.169659, 31.373028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557648, 35.031754, 31.100046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763330, -0.341489, -0.548374,
		-0.043992, -0.874371, 0.483261,
		-0.644510, -0.344763, -0.682456,
		45.364296, 34.928326, 30.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987530, 34.519417, 31.148726>,  <45.815453, 35.169659, 31.373028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987530, 34.519417, 31.148726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768478, 34.643082, 30.837723>,  <45.637047, 34.717281, 30.651121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.768478, 34.643082, 30.837723>,  <45.987530, 34.519417, 31.148726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.768478, 34.643082, 30.837723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602849, -0.498604, -0.622870,
		-0.580234, -0.809824, 0.086677,
		-0.547633, 0.309157, -0.777509,
		45.604187, 34.735828, 30.604469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630283, 34.941593, 31.256561>,  <45.987530, 34.519417, 31.148726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630283, 34.941593, 31.256561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678848, 34.565521, 31.129240>,  <46.707989, 34.339878, 31.052847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678848, 34.565521, 31.129240>,  <46.630283, 34.941593, 31.256561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678848, 34.565521, 31.129240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963979, 0.035230, 0.263635,
		-0.236651, -0.338846, 0.910593,
		0.121411, -0.940182, -0.318303,
		46.715271, 34.283466, 31.033749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533901, 34.460392, 31.771622>,  <46.630283, 34.941593, 31.256561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533901, 34.460392, 31.771622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785973, 34.696220, 31.973724>,  <46.937214, 34.837715, 32.094986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785973, 34.696220, 31.973724>,  <46.533901, 34.460392, 31.771622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785973, 34.696220, 31.973724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331807, -0.792799, 0.511246,
		0.701981, -0.154529, -0.695229,
		0.630179, 0.589567, 0.505256,
		46.975025, 34.873089, 32.125301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152519, 34.007790, 31.863115>,  <46.533901, 34.460392, 31.771622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152519, 34.007790, 31.863115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126534, 34.259010, 32.173298>,  <47.110943, 34.409740, 32.359409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126534, 34.259010, 32.173298>,  <47.152519, 34.007790, 31.863115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126534, 34.259010, 32.173298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392000, -0.698568, 0.598613,
		0.917669, 0.342868, -0.200813,
		-0.064964, 0.628048, 0.775459,
		47.107044, 34.447426, 32.405937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.902618, 33.939014, 32.238731>,  <47.152519, 34.007790, 31.863115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.902618, 33.939014, 32.238731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558624, 34.027626, 32.422623>,  <47.352226, 34.080795, 32.532955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558624, 34.027626, 32.422623>,  <47.902618, 33.939014, 32.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558624, 34.027626, 32.422623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184672, -0.704708, 0.685043,
		0.475731, 0.674025, 0.565128,
		-0.859986, 0.221533, 0.459725,
		47.300629, 34.094086, 32.560539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.027542, 33.334797, 32.597065>,  <47.902618, 33.939014, 32.238731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.027542, 33.334797, 32.597065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812782, 33.126732, 32.862747>,  <47.683926, 33.001892, 33.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812782, 33.126732, 32.862747>,  <48.027542, 33.334797, 32.597065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812782, 33.126732, 32.862747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468780, 0.470628, 0.747499,
		-0.701415, 0.712699, -0.008838,
		-0.536901, -0.520164, 0.664204,
		47.651711, 32.970684, 33.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738651, 33.771114, 33.069454>,  <48.027542, 33.334797, 32.597065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738651, 33.771114, 33.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777042, 33.425713, 33.267502>,  <47.800076, 33.218472, 33.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777042, 33.425713, 33.267502>,  <47.738651, 33.771114, 33.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777042, 33.425713, 33.267502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391453, 0.490077, 0.778838,
		-0.915179, 0.119066, 0.385058,
		0.095975, -0.863509, 0.495117,
		47.805836, 33.166660, 33.416039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051830, 33.622921, 33.092419>,  <47.738651, 33.771114, 33.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051830, 33.622921, 33.092419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976307, 33.547710, 33.477955>,  <46.930992, 33.502583, 33.709278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976307, 33.547710, 33.477955>,  <47.051830, 33.622921, 33.092419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976307, 33.547710, 33.477955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117837, 0.970068, 0.212324,
		-0.974918, 0.153665, -0.161001,
		-0.188809, -0.188027, 0.963845,
		46.919662, 33.491302, 33.767109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876026, 34.238773, 33.283756>,  <47.051830, 33.622921, 33.092419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876026, 34.238773, 33.283756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893696, 34.025154, 33.621475>,  <46.904297, 33.896980, 33.824108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893696, 34.025154, 33.621475>,  <46.876026, 34.238773, 33.283756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893696, 34.025154, 33.621475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257648, 0.822623, 0.506862,
		-0.965228, 0.195139, 0.173939,
		0.044178, -0.534053, 0.844296,
		46.906948, 33.864937, 33.874763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465187, 34.579464, 33.887943>,  <46.876026, 34.238773, 33.283756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465187, 34.579464, 33.887943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767635, 34.353405, 34.019939>,  <46.949104, 34.217770, 34.099136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.767635, 34.353405, 34.019939>,  <46.465187, 34.579464, 33.887943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.767635, 34.353405, 34.019939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314057, 0.755734, 0.574660,
		-0.574151, -0.330876, 0.748913,
		0.756121, -0.565143, 0.329992,
		46.994473, 34.183861, 34.118938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422253, 34.512577, 34.639412>,  <46.465187, 34.579464, 33.887943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422253, 34.512577, 34.639412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777737, 34.521671, 34.456253>,  <46.991028, 34.527126, 34.346359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777737, 34.521671, 34.456253>,  <46.422253, 34.512577, 34.639412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777737, 34.521671, 34.456253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258337, 0.800278, 0.541126,
		0.378746, -0.599198, 0.705346,
		0.888715, 0.022733, -0.457897,
		47.044350, 34.528492, 34.318886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970398, 34.727528, 35.189556>,  <46.422253, 34.512577, 34.639412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970398, 34.727528, 35.189556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104271, 34.790073, 34.817848>,  <47.184593, 34.827602, 34.594826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104271, 34.790073, 34.817848>,  <46.970398, 34.727528, 35.189556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104271, 34.790073, 34.817848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427619, 0.853556, 0.297632,
		0.839720, -0.496984, 0.218806,
		0.334682, 0.156362, -0.929268,
		47.204674, 34.836983, 34.539066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.738625, 34.763786, 35.134167>,  <46.970398, 34.727528, 35.189556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.738625, 34.763786, 35.134167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569916, 34.983204, 34.845387>,  <47.468689, 35.114853, 34.672119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569916, 34.983204, 34.845387>,  <47.738625, 34.763786, 35.134167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569916, 34.983204, 34.845387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437319, 0.820570, 0.367989,
		0.794267, -0.160514, -0.585982,
		-0.421772, 0.548543, -0.721948,
		47.443382, 35.147766, 34.628803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.266279, 31.448868, 19.537161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.899612, 31.304790, 19.467903>,  <28.679611, 31.218344, 19.426348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.899612, 31.304790, 19.467903>,  <29.266279, 31.448868, 19.537161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899612, 31.304790, 19.467903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105569, -0.199616, 0.974171,
		-0.385452, 0.911271, 0.144957,
		-0.916669, -0.360193, -0.173144,
		28.624611, 31.196733, 19.415960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708658, 31.883368, 19.850792>,  <29.266279, 31.448868, 19.537161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708658, 31.883368, 19.850792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.557743, 31.513666, 19.827433>,  <28.467194, 31.291845, 19.813417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.557743, 31.513666, 19.827433>,  <28.708658, 31.883368, 19.850792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557743, 31.513666, 19.827433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086901, -0.027448, 0.995839,
		-0.922010, 0.380793, -0.069963,
		-0.377288, -0.924253, -0.058398,
		28.444557, 31.236391, 19.809914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191807, 31.887318, 20.302984>,  <28.708658, 31.883368, 19.850792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191807, 31.887318, 20.302984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.265263, 31.497097, 20.254692>,  <28.309336, 31.262964, 20.225716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.265263, 31.497097, 20.254692>,  <28.191807, 31.887318, 20.302984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265263, 31.497097, 20.254692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106980, -0.141925, 0.984080,
		-0.977155, -0.167800, -0.130428,
		0.183639, -0.975551, -0.120732,
		28.320354, 31.204432, 20.218473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755596, 31.472704, 20.782478>,  <28.191807, 31.887318, 20.302984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755596, 31.472704, 20.782478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029856, 31.195623, 20.692991>,  <28.194410, 31.029375, 20.639299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029856, 31.195623, 20.692991>,  <27.755596, 31.472704, 20.782478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029856, 31.195623, 20.692991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022704, -0.286836, 0.957711,
		-0.727579, -0.661732, -0.180941,
		0.685648, -0.692702, -0.223720,
		28.235550, 30.987812, 20.625875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508751, 30.870832, 21.050943>,  <27.755596, 31.472704, 20.782478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508751, 30.870832, 21.050943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.889414, 30.773939, 20.975393>,  <28.117811, 30.715803, 20.930063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.889414, 30.773939, 20.975393>,  <27.508751, 30.870832, 21.050943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889414, 30.773939, 20.975393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090391, -0.366823, 0.925889,
		-0.293559, -0.898202, -0.327194,
		0.951658, -0.242228, -0.188873,
		28.174911, 30.701269, 20.918732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644947, 30.072803, 21.153852>,  <27.508751, 30.870832, 21.050943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644947, 30.072803, 21.153852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974846, 30.288000, 21.223547>,  <28.172785, 30.417118, 21.265364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974846, 30.288000, 21.223547>,  <27.644947, 30.072803, 21.153852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974846, 30.288000, 21.223547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028819, -0.347695, 0.937165,
		0.564770, -0.767901, -0.302264,
		0.824745, 0.537994, 0.174237,
		28.222269, 30.449398, 21.275818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909384, 29.681522, 21.659597>,  <27.644947, 30.072803, 21.153852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909384, 29.681522, 21.659597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.117941, 30.021894, 21.685110>,  <28.243076, 30.226118, 21.700417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.117941, 30.021894, 21.685110>,  <27.909384, 29.681522, 21.659597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117941, 30.021894, 21.685110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190927, -0.189184, 0.963201,
		0.831682, -0.490029, -0.261105,
		0.521394, 0.850929, 0.063781,
		28.274359, 30.277174, 21.704245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516869, 29.536142, 21.846058>,  <27.909384, 29.681522, 21.659597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516869, 29.536142, 21.846058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475523, 29.919617, 21.952065>,  <28.450716, 30.149702, 22.015669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.475523, 29.919617, 21.952065>,  <28.516869, 29.536142, 21.846058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475523, 29.919617, 21.952065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218377, -0.238070, 0.946380,
		0.970375, 0.155695, -0.184747,
		-0.103364, 0.958688, 0.265017,
		28.444513, 30.207224, 22.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135323, 29.681362, 22.211052>,  <28.516869, 29.536142, 21.846058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135323, 29.681362, 22.211052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.867414, 29.957365, 22.320816>,  <28.706671, 30.122967, 22.386675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.867414, 29.957365, 22.320816>,  <29.135323, 29.681362, 22.211052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867414, 29.957365, 22.320816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165438, -0.221596, 0.961002,
		0.723906, 0.689048, 0.034265,
		-0.669769, 0.690006, 0.274410,
		28.666483, 30.164368, 22.403139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401770, 29.860903, 22.733538>,  <29.135323, 29.681362, 22.211052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401770, 29.860903, 22.733538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.058149, 30.059521, 22.783295>,  <28.851976, 30.178692, 22.813148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.058149, 30.059521, 22.783295>,  <29.401770, 29.860903, 22.733538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058149, 30.059521, 22.783295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010473, -0.225910, 0.974092,
		0.511782, 0.838098, 0.188868,
		-0.859052, 0.496545, 0.124394,
		28.800434, 30.208485, 22.820612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587822, 30.465025, 23.216936>,  <29.401770, 29.860903, 22.733538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587822, 30.465025, 23.216936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198351, 30.376360, 23.238163>,  <28.964668, 30.323160, 23.250900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.198351, 30.376360, 23.238163>,  <29.587822, 30.465025, 23.216936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198351, 30.376360, 23.238163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122395, -0.312074, 0.942141,
		-0.192276, 0.923837, 0.330990,
		-0.973678, -0.221663, 0.053068,
		28.906248, 30.309860, 23.254084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444630, 30.765068, 23.752100>,  <29.587822, 30.465025, 23.216936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444630, 30.765068, 23.752100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.161968, 30.488783, 23.690708>,  <28.992371, 30.323011, 23.653873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.161968, 30.488783, 23.690708>,  <29.444630, 30.765068, 23.752100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161968, 30.488783, 23.690708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197358, -0.400721, 0.894691,
		-0.679476, 0.601948, 0.419489,
		-0.706656, -0.690711, -0.153481,
		28.949972, 30.281570, 23.644665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936930, 30.815840, 24.308975>,  <29.444630, 30.765068, 23.752100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936930, 30.815840, 24.308975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886936, 30.442774, 24.173616>,  <28.856941, 30.218933, 24.092402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886936, 30.442774, 24.173616>,  <28.936930, 30.815840, 24.308975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886936, 30.442774, 24.173616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215162, -0.358433, 0.908422,
		-0.968548, 0.040726, 0.245472,
		-0.124981, -0.932666, -0.338397,
		28.849442, 30.162973, 24.072098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512897, 30.488560, 24.873436>,  <28.936930, 30.815840, 24.308975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512897, 30.488560, 24.873436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.665428, 30.193079, 24.651117>,  <28.756947, 30.015791, 24.517727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.665428, 30.193079, 24.651117>,  <28.512897, 30.488560, 24.873436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665428, 30.193079, 24.651117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289197, -0.475724, 0.830694,
		-0.878040, -0.477500, 0.032224,
		0.381327, -0.738702, -0.555796,
		28.779827, 29.971468, 24.484379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346788, 29.988350, 25.201038>,  <28.512897, 30.488560, 24.873436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346788, 29.988350, 25.201038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643742, 29.830610, 24.984390>,  <28.821915, 29.735966, 24.854401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643742, 29.830610, 24.984390>,  <28.346788, 29.988350, 25.201038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643742, 29.830610, 24.984390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195364, -0.645867, 0.738030,
		-0.640810, -0.653741, -0.402474,
		0.742426, -0.394308, -0.541595,
		28.866457, 29.712305, 24.821903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266485, 29.181324, 25.173513>,  <28.346788, 29.988350, 25.201038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266485, 29.181324, 25.173513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643841, 29.304743, 25.124830>,  <28.870255, 29.378794, 25.095621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643841, 29.304743, 25.124830>,  <28.266485, 29.181324, 25.173513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643841, 29.304743, 25.124830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312533, -0.704030, 0.637703,
		0.111078, -0.639640, -0.760607,
		0.943390, 0.308549, -0.121706,
		28.926857, 29.397308, 25.088318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728676, 28.520226, 25.138300>,  <28.266485, 29.181324, 25.173513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728676, 28.520226, 25.138300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995874, 28.812952, 25.192297>,  <29.156195, 28.988588, 25.224695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.995874, 28.812952, 25.192297>,  <28.728676, 28.520226, 25.138300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995874, 28.812952, 25.192297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547460, -0.606143, 0.576956,
		0.504051, -0.311503, -0.805542,
		0.667997, 0.731817, 0.134992,
		29.196274, 29.032497, 25.232794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295126, 28.174129, 25.133478>,  <28.728676, 28.520226, 25.138300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295126, 28.174129, 25.133478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.430002, 28.525808, 25.268126>,  <29.510929, 28.736816, 25.348913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.430002, 28.525808, 25.268126>,  <29.295126, 28.174129, 25.133478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430002, 28.525808, 25.268126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588933, -0.475947, 0.653171,
		0.734479, -0.021999, -0.678274,
		0.337192, 0.879199, 0.336618,
		29.531160, 28.789568, 25.369110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958092, 28.119450, 25.109200>,  <29.295126, 28.174129, 25.133478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958092, 28.119450, 25.109200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850897, 28.374706, 25.397907>,  <29.786579, 28.527861, 25.571133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.850897, 28.374706, 25.397907>,  <29.958092, 28.119450, 25.109200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850897, 28.374706, 25.397907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546504, -0.516286, 0.659380,
		0.793420, 0.571158, -0.210389,
		-0.267989, 0.638144, 0.721772,
		29.770500, 28.566149, 25.614439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603924, 28.103254, 25.505236>,  <29.958092, 28.119450, 25.109200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603924, 28.103254, 25.505236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.326157, 28.266146, 25.742537>,  <30.159496, 28.363880, 25.884916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.326157, 28.266146, 25.742537>,  <30.603924, 28.103254, 25.505236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326157, 28.266146, 25.742537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373678, -0.500483, 0.780949,
		0.614936, 0.763991, 0.195373,
		-0.694420, 0.407227, 0.593252,
		30.117830, 28.388313, 25.920511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924530, 28.552387, 26.158600>,  <30.603924, 28.103254, 25.505236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924530, 28.552387, 26.158600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.561687, 28.463684, 26.301695>,  <30.343981, 28.410461, 26.387552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.561687, 28.463684, 26.301695>,  <30.924530, 28.552387, 26.158600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561687, 28.463684, 26.301695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413055, -0.305720, 0.857859,
		-0.080869, 0.925937, 0.368919,
		-0.907109, -0.221758, 0.357739,
		30.289555, 28.397158, 26.409018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905388, 28.882235, 26.797094>,  <30.924530, 28.552387, 26.158600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905388, 28.882235, 26.797094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649487, 28.574940, 26.806269>,  <30.495945, 28.390564, 26.811773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649487, 28.574940, 26.806269>,  <30.905388, 28.882235, 26.797094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649487, 28.574940, 26.806269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389398, -0.298257, 0.871442,
		-0.662633, 0.566441, 0.489961,
		-0.639756, -0.768236, 0.022936,
		30.457560, 28.344469, 26.813150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736652, 29.150867, 26.928938>,  <30.905388, 28.882235, 26.797094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736652, 29.150867, 26.928938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.134735, 29.162218, 26.891495>,  <32.373585, 29.169029, 26.869030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.134735, 29.162218, 26.891495>,  <31.736652, 29.150867, 26.928938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134735, 29.162218, 26.891495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097165, 0.176794, -0.979440,
		-0.011246, 0.983838, 0.178704,
		0.995205, 0.028379, -0.093606,
		32.433296, 29.170732, 26.863413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916183, 29.780087, 26.508490>,  <31.736652, 29.150867, 26.928938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916183, 29.780087, 26.508490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.194145, 29.494450, 26.474594>,  <32.360924, 29.323069, 26.454256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.194145, 29.494450, 26.474594>,  <31.916183, 29.780087, 26.508490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194145, 29.494450, 26.474594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002442, 0.115498, -0.993305,
		0.719096, 0.690461, 0.078517,
		0.694906, -0.714090, -0.084740,
		32.402618, 29.280222, 26.449173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169785, 30.022905, 25.886517>,  <31.916183, 29.780087, 26.508490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169785, 30.022905, 25.886517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.337715, 29.660360, 25.905478>,  <32.438473, 29.442833, 25.916855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.337715, 29.660360, 25.905478>,  <32.169785, 30.022905, 25.886517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337715, 29.660360, 25.905478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100247, -0.005602, -0.994947,
		0.902050, 0.422460, 0.088508,
		0.419829, -0.906364, 0.047403,
		32.463665, 29.388451, 25.919699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713985, 30.082497, 25.429890>,  <32.169785, 30.022905, 25.886517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713985, 30.082497, 25.429890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633255, 29.695576, 25.491325>,  <32.584816, 29.463423, 25.528187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633255, 29.695576, 25.491325>,  <32.713985, 30.082497, 25.429890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633255, 29.695576, 25.491325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050485, -0.166880, -0.984684,
		0.978119, -0.190984, 0.082515,
		-0.201829, -0.967303, 0.153587,
		32.572704, 29.405384, 25.537401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292374, 29.739941, 25.031660>,  <32.713985, 30.082497, 25.429890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292374, 29.739941, 25.031660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967152, 29.507433, 25.044758>,  <32.772018, 29.367928, 25.052616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967152, 29.507433, 25.044758>,  <33.292374, 29.739941, 25.031660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967152, 29.507433, 25.044758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078017, 0.053045, -0.995540,
		0.576940, -0.811980, -0.088477,
		-0.813052, -0.581270, 0.032745,
		32.723236, 29.333052, 25.054581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307850, 29.470520, 24.374971>,  <33.292374, 29.739941, 25.031660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307850, 29.470520, 24.374971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.942982, 29.359526, 24.495604>,  <32.724060, 29.292929, 24.567982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.942982, 29.359526, 24.495604>,  <33.307850, 29.470520, 24.374971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942982, 29.359526, 24.495604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306468, -0.026678, -0.951507,
		0.272074, -0.960360, -0.060705,
		-0.912169, -0.277485, 0.301578,
		32.669331, 29.276281, 24.586077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090950, 28.862320, 23.950981>,  <33.307850, 29.470520, 24.374971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090950, 28.862320, 23.950981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 29.023317, 24.081039>,  <32.543282, 29.119917, 24.159075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 29.023317, 24.081039>,  <33.090950, 28.862320, 23.950981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748657, 29.023317, 24.081039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342806, 0.029664, -0.938938,
		-0.387563, -0.914941, 0.112594,
		-0.855733, 0.402496, 0.325144,
		32.491936, 29.144066, 24.178583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517323, 28.400455, 23.650076>,  <33.090950, 28.862320, 23.950981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517323, 28.400455, 23.650076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390991, 28.764980, 23.755726>,  <32.315193, 28.983696, 23.819117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.390991, 28.764980, 23.755726>,  <32.517323, 28.400455, 23.650076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390991, 28.764980, 23.755726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435231, 0.108213, -0.893792,
		-0.843106, -0.397239, 0.362455,
		-0.315826, 0.911313, 0.264126,
		32.296242, 29.038374, 23.834963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885994, 28.402422, 23.363180>,  <32.517323, 28.400455, 23.650076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885994, 28.402422, 23.363180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962292, 28.791142, 23.418648>,  <32.008068, 29.024372, 23.451927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962292, 28.791142, 23.418648>,  <31.885994, 28.402422, 23.363180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962292, 28.791142, 23.418648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286399, 0.190207, -0.939041,
		-0.938932, 0.139401, 0.314602,
		0.190742, 0.971797, 0.138667,
		32.019516, 29.082680, 23.460247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331713, 28.744238, 22.967747>,  <31.885994, 28.402422, 23.363180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331713, 28.744238, 22.967747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.623434, 29.014481, 23.010962>,  <31.798468, 29.176626, 23.036890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.623434, 29.014481, 23.010962>,  <31.331713, 28.744238, 22.967747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623434, 29.014481, 23.010962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249720, 0.409859, -0.877300,
		-0.636990, 0.612839, 0.467624,
		0.729304, 0.675607, 0.108037,
		31.842226, 29.217163, 23.043373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098354, 29.495970, 22.672615>,  <31.331713, 28.744238, 22.967747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098354, 29.495970, 22.672615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.498066, 29.507456, 22.682529>,  <31.737894, 29.514347, 22.688478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.498066, 29.507456, 22.682529>,  <31.098354, 29.495970, 22.672615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498066, 29.507456, 22.682529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013682, 0.336600, -0.941548,
		-0.035379, 0.941210, 0.335965,
		0.999280, 0.028715, 0.024786,
		31.797850, 29.516069, 22.689966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382561, 30.131243, 22.370598>,  <31.098354, 29.495970, 22.672615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382561, 30.131243, 22.370598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.673222, 29.859768, 22.327965>,  <31.847618, 29.696882, 22.302385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.673222, 29.859768, 22.327965>,  <31.382561, 30.131243, 22.370598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673222, 29.859768, 22.327965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095621, 0.253546, -0.962585,
		0.680319, 0.689272, 0.249137,
		0.726651, -0.678688, -0.106583,
		31.891216, 29.656162, 22.295990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059090, 30.416597, 22.169872>,  <31.382561, 30.131243, 22.370598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059090, 30.416597, 22.169872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044056, 30.036972, 22.044737>,  <32.035034, 29.809196, 21.969656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044056, 30.036972, 22.044737>,  <32.059090, 30.416597, 22.169872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044056, 30.036972, 22.044737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118202, 0.315085, -0.941674,
		0.992278, 0.001583, -0.124024,
		-0.037587, -0.949062, -0.312839,
		32.032780, 29.752253, 21.950886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412350, 30.453981, 21.538668>,  <32.059090, 30.416597, 22.169872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412350, 30.453981, 21.538668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.189388, 30.122707, 21.515306>,  <32.055611, 29.923943, 21.501289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.189388, 30.122707, 21.515306>,  <32.412350, 30.453981, 21.538668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189388, 30.122707, 21.515306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040025, 0.097070, -0.994472,
		0.829275, -0.551987, -0.087255,
		-0.557405, -0.828184, -0.058404,
		32.022167, 29.874252, 21.497786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670681, 30.022032, 20.896622>,  <32.412350, 30.453981, 21.538668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670681, 30.022032, 20.896622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306751, 29.868347, 20.959366>,  <32.088394, 29.776136, 20.997013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306751, 29.868347, 20.959366>,  <32.670681, 30.022032, 20.896622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306751, 29.868347, 20.959366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191249, 0.052725, -0.980125,
		0.368305, -0.921738, -0.121450,
		-0.909822, -0.384212, 0.156862,
		32.033806, 29.753084, 21.006424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529270, 29.592159, 20.341675>,  <32.670681, 30.022032, 20.896622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529270, 29.592159, 20.341675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168789, 29.683981, 20.488716>,  <31.952499, 29.739075, 20.576941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.168789, 29.683981, 20.488716>,  <32.529270, 29.592159, 20.341675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168789, 29.683981, 20.488716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372824, 0.021849, -0.927645,
		-0.220978, -0.973050, 0.065893,
		-0.901205, 0.229556, 0.367604,
		31.898428, 29.752848, 20.598997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062180, 29.183329, 20.032188>,  <32.529270, 29.592159, 20.341675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062180, 29.183329, 20.032188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830740, 29.485443, 20.155325>,  <31.691875, 29.666712, 20.229206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.830740, 29.485443, 20.155325>,  <32.062180, 29.183329, 20.032188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830740, 29.485443, 20.155325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457016, 0.012388, -0.889372,
		-0.675544, -0.655278, 0.338011,
		-0.578599, 0.755286, 0.307841,
		31.657160, 29.712029, 20.247677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377209, 29.071356, 19.678087>,  <32.062180, 29.183329, 20.032188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377209, 29.071356, 19.678087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384201, 29.454315, 19.793381>,  <31.388397, 29.684092, 19.862556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384201, 29.454315, 19.793381>,  <31.377209, 29.071356, 19.678087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384201, 29.454315, 19.793381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543056, 0.251142, -0.801260,
		-0.839515, -0.142520, 0.524312,
		0.017481, 0.957401, 0.288234,
		31.389446, 29.741535, 19.879850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.556065, 29.395632, 19.551638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809828, 29.704512, 19.565680>,  <30.962086, 29.889839, 19.574104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809828, 29.704512, 19.565680>,  <30.556065, 29.395632, 19.551638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809828, 29.704512, 19.565680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448243, 0.404497, -0.797158,
		-0.629767, 0.489987, 0.602749,
		0.634407, 0.772202, 0.035105,
		31.000151, 29.936172, 19.576212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172945, 29.943285, 19.575720>,  <30.556065, 29.395632, 19.551638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172945, 29.943285, 19.575720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527176, 30.066225, 19.436415>,  <30.739716, 30.139988, 19.352833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527176, 30.066225, 19.436415>,  <30.172945, 29.943285, 19.575720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527176, 30.066225, 19.436415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463067, 0.525577, -0.713679,
		-0.036311, 0.793288, 0.607763,
		0.885579, 0.307349, -0.348261,
		30.792850, 30.158430, 19.331936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954197, 30.555607, 19.395866>,  <30.172945, 29.943285, 19.575720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954197, 30.555607, 19.395866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310543, 30.534224, 19.215422>,  <30.524351, 30.521393, 19.107155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.310543, 30.534224, 19.215422>,  <29.954197, 30.555607, 19.395866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310543, 30.534224, 19.215422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326939, 0.614003, -0.718408,
		0.315389, 0.787491, 0.529517,
		0.890865, -0.053458, -0.451111,
		30.577803, 30.518187, 19.080088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164465, 31.178255, 19.249886>,  <29.954197, 30.555607, 19.395866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164465, 31.178255, 19.249886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362379, 30.954153, 18.984165>,  <30.481129, 30.819691, 18.824732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362379, 30.954153, 18.984165>,  <30.164465, 31.178255, 19.249886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362379, 30.954153, 18.984165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261699, 0.632884, -0.728678,
		0.828673, 0.534388, 0.166524,
		0.494787, -0.560257, -0.664303,
		30.510815, 30.786076, 18.784874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267288, 31.582930, 18.639587>,  <30.164465, 31.178255, 19.249886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267288, 31.582930, 18.639587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356962, 31.231413, 18.471081>,  <30.410767, 31.020502, 18.369978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.356962, 31.231413, 18.471081>,  <30.267288, 31.582930, 18.639587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356962, 31.231413, 18.471081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211383, 0.378128, -0.901297,
		0.951345, 0.291108, -0.100990,
		0.224188, -0.878792, -0.421265,
		30.424219, 30.967775, 18.344702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726833, 31.815815, 18.105574>,  <30.267288, 31.582930, 18.639587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726833, 31.815815, 18.105574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560175, 31.468874, 17.996681>,  <30.460180, 31.260710, 17.931347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.560175, 31.468874, 17.996681>,  <30.726833, 31.815815, 18.105574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560175, 31.468874, 17.996681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018024, 0.307283, -0.951447,
		0.908890, -0.391510, -0.143662,
		-0.416646, -0.867351, -0.272230,
		30.435181, 31.208670, 17.915012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009655, 31.649265, 17.435484>,  <30.726833, 31.815815, 18.105574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009655, 31.649265, 17.435484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666378, 31.446753, 17.469381>,  <30.460411, 31.325245, 17.489719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666378, 31.446753, 17.469381>,  <31.009655, 31.649265, 17.435484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666378, 31.446753, 17.469381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159861, 0.106718, -0.981354,
		0.487801, -0.855738, -0.172519,
		-0.858193, -0.506285, 0.084742,
		30.408920, 31.294867, 17.494804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976889, 31.295879, 16.792545>,  <31.009655, 31.649265, 17.435484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976889, 31.295879, 16.792545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600250, 31.285828, 16.926868>,  <30.374268, 31.279797, 17.007463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.600250, 31.285828, 16.926868>,  <30.976889, 31.295879, 16.792545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600250, 31.285828, 16.926868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336552, 0.104336, -0.935867,
		-0.011519, -0.994225, -0.106700,
		-0.941594, -0.025130, 0.335810,
		30.317772, 31.278288, 17.027611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606470, 30.825634, 16.269033>,  <30.976889, 31.295879, 16.792545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606470, 30.825634, 16.269033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333605, 31.051815, 16.454470>,  <30.169886, 31.187523, 16.565731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333605, 31.051815, 16.454470>,  <30.606470, 30.825634, 16.269033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333605, 31.051815, 16.454470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547252, 0.025663, -0.836574,
		-0.484940, -0.824382, 0.291938,
		-0.682165, 0.565452, 0.463590,
		30.128956, 31.221451, 16.593546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884314, 30.493410, 16.081224>,  <30.606470, 30.825634, 16.269033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884314, 30.493410, 16.081224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873165, 30.878645, 16.188322>,  <29.866476, 31.109785, 16.252581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.873165, 30.878645, 16.188322>,  <29.884314, 30.493410, 16.081224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873165, 30.878645, 16.188322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314563, 0.245789, -0.916863,
		-0.948827, -0.109774, 0.296102,
		-0.027869, 0.963087, 0.267742,
		29.864805, 31.167572, 16.268644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351067, 30.786882, 15.651573>,  <29.884314, 30.493410, 16.081224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351067, 30.786882, 15.651573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531235, 31.118063, 15.785210>,  <29.639336, 31.316771, 15.865392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531235, 31.118063, 15.785210>,  <29.351067, 30.786882, 15.651573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531235, 31.118063, 15.785210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246447, 0.474959, -0.844795,
		-0.858128, 0.298179, 0.417978,
		0.450422, 0.827952, 0.334090,
		29.666361, 31.366449, 15.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797634, 31.262047, 15.534662>,  <29.351067, 30.786882, 15.651573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797634, 31.262047, 15.534662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.157972, 31.435547, 15.541990>,  <29.374176, 31.539648, 15.546387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.157972, 31.435547, 15.541990>,  <28.797634, 31.262047, 15.534662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157972, 31.435547, 15.541990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229902, 0.512424, -0.827385,
		-0.368267, 0.741135, 0.561336,
		0.900846, 0.433751, 0.018320,
		29.428226, 31.565672, 15.547486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597273, 31.730659, 15.154986>,  <28.797634, 31.262047, 15.534662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597273, 31.730659, 15.154986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995178, 31.768404, 15.139295>,  <29.233921, 31.791050, 15.129879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.995178, 31.768404, 15.139295>,  <28.597273, 31.730659, 15.154986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995178, 31.768404, 15.139295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079131, 0.468350, -0.879992,
		-0.064664, 0.878489, 0.473365,
		0.994765, 0.094361, -0.039230,
		29.293608, 31.796713, 15.127525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708458, 32.411781, 15.051504>,  <28.597273, 31.730659, 15.154986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708458, 32.411781, 15.051504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.033474, 32.212536, 14.930402>,  <29.228483, 32.092991, 14.857740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.033474, 32.212536, 14.930402>,  <28.708458, 32.411781, 15.051504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033474, 32.212536, 14.930402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066874, 0.436306, -0.897310,
		0.579054, 0.749348, 0.321206,
		0.812542, -0.498110, -0.302757,
		29.277237, 32.063103, 14.839575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169930, 32.911900, 14.833227>,  <28.708458, 32.411781, 15.051504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169930, 32.911900, 14.833227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264109, 32.570549, 14.647188>,  <29.320616, 32.365738, 14.535564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264109, 32.570549, 14.647188>,  <29.169930, 32.911900, 14.833227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264109, 32.570549, 14.647188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065611, 0.491416, -0.868450,
		0.969670, 0.173957, 0.171693,
		0.235446, -0.853375, -0.465098,
		29.334742, 32.314537, 14.507659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744659, 33.067860, 14.345368>,  <29.169930, 32.911900, 14.833227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744659, 33.067860, 14.345368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542189, 32.749096, 14.213478>,  <29.420706, 32.557838, 14.134344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542189, 32.749096, 14.213478>,  <29.744659, 33.067860, 14.345368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542189, 32.749096, 14.213478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002891, 0.380751, -0.924673,
		0.862425, -0.469001, -0.190423,
		-0.506176, -0.796911, -0.329725,
		29.390335, 32.510021, 14.114560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818693, 33.103218, 13.666047>,  <29.744659, 33.067860, 14.345368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818693, 33.103218, 13.666047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604706, 32.765324, 13.659974>,  <29.476315, 32.562588, 13.656330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.604706, 32.765324, 13.659974>,  <29.818693, 33.103218, 13.666047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604706, 32.765324, 13.659974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148455, 0.111675, -0.982593,
		0.831728, -0.523402, -0.185148,
		-0.534967, -0.844736, -0.015182,
		29.444216, 32.511902, 13.655419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055534, 32.780762, 13.102585>,  <29.818693, 33.103218, 13.666047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055534, 32.780762, 13.102585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694902, 32.620125, 13.166936>,  <29.478523, 32.523743, 13.205546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694902, 32.620125, 13.166936>,  <30.055534, 32.780762, 13.102585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694902, 32.620125, 13.166936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199080, 0.054971, -0.978440,
		0.384087, -0.914169, -0.129509,
		-0.901579, -0.401589, 0.160879,
		29.424429, 32.499649, 13.215199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954775, 32.360035, 12.668083>,  <30.055534, 32.780762, 13.102585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954775, 32.360035, 12.668083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569033, 32.397465, 12.767089>,  <29.337587, 32.419922, 12.826492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569033, 32.397465, 12.767089>,  <29.954775, 32.360035, 12.668083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569033, 32.397465, 12.767089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252843, -0.049994, -0.966215,
		-0.078042, -0.994356, 0.071873,
		-0.964355, 0.093577, 0.247514,
		29.279726, 32.425537, 12.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595814, 31.911711, 12.205523>,  <29.954775, 32.360035, 12.668083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595814, 31.911711, 12.205523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309343, 32.151058, 12.349216>,  <29.137461, 32.294666, 12.435432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309343, 32.151058, 12.349216>,  <29.595814, 31.911711, 12.205523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309343, 32.151058, 12.349216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432601, 0.023321, -0.901284,
		-0.547679, -0.800881, 0.242154,
		-0.716173, 0.598370, 0.359234,
		29.094492, 32.330570, 12.456986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964294, 31.747297, 11.798359>,  <29.595814, 31.911711, 12.205523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964294, 31.747297, 11.798359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855536, 32.103683, 11.943824>,  <28.790281, 32.317516, 12.031102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.855536, 32.103683, 11.943824>,  <28.964294, 31.747297, 11.798359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855536, 32.103683, 11.943824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588391, 0.145115, -0.795448,
		-0.761491, -0.430254, 0.484781,
		-0.271896, 0.890968, 0.363661,
		28.773966, 32.370975, 12.052922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195963, 31.787333, 11.898683>,  <28.964294, 31.747297, 11.798359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195963, 31.787333, 11.898683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356102, 32.149113, 11.839766>,  <28.452185, 32.366180, 11.804415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.356102, 32.149113, 11.839766>,  <28.195963, 31.787333, 11.898683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356102, 32.149113, 11.839766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527829, 0.096208, -0.843884,
		-0.749079, 0.415592, 0.515911,
		0.400346, 0.904449, -0.147294,
		28.476206, 32.420448, 11.795577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672728, 31.992891, 11.554117>,  <28.195963, 31.787333, 11.898683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672728, 31.992891, 11.554117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963858, 32.265484, 11.523512>,  <28.138535, 32.429039, 11.505149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.963858, 32.265484, 11.523512>,  <27.672728, 31.992891, 11.554117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963858, 32.265484, 11.523512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510965, 0.464505, -0.723291,
		-0.457370, 0.565524, 0.686291,
		0.727824, 0.681482, -0.076512,
		28.182205, 32.469929, 11.500558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430651, 32.672852, 11.674265>,  <27.672728, 31.992891, 11.554117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430651, 32.672852, 11.674265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.751184, 32.677135, 11.435017>,  <27.943504, 32.679707, 11.291468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.751184, 32.677135, 11.435017>,  <27.430651, 32.672852, 11.674265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751184, 32.677135, 11.435017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539090, 0.446347, -0.714252,
		0.259318, 0.894796, 0.363448,
		0.801334, 0.010713, -0.598122,
		27.991585, 32.680347, 11.255580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753700, 32.788445, 11.864494>,  <27.430651, 32.672852, 11.674265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753700, 32.788445, 11.864494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671602, 32.530228, 12.158745>,  <26.622343, 32.375298, 12.335296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671602, 32.530228, 12.158745>,  <26.753700, 32.788445, 11.864494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671602, 32.530228, 12.158745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290896, 0.757898, 0.583927,
		-0.934481, -0.094144, -0.343339,
		-0.205243, -0.645545, 0.735627,
		26.610029, 32.336563, 12.379433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175362, 32.546165, 12.160172>,  <26.753700, 32.788445, 11.864494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175362, 32.546165, 12.160172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.988054, 32.222328, 12.301752>,  <25.875669, 32.028027, 12.386700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.988054, 32.222328, 12.301752>,  <26.175362, 32.546165, 12.160172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988054, 32.222328, 12.301752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275124, 0.247072, 0.929119,
		-0.839662, 0.532456, 0.107043,
		-0.468268, -0.809596, 0.353948,
		25.847574, 31.979450, 12.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657410, 32.712692, 12.690513>,  <26.175362, 32.546165, 12.160172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657410, 32.712692, 12.690513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.782095, 32.341301, 12.771280>,  <25.856907, 32.118465, 12.819740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.782095, 32.341301, 12.771280>,  <25.657410, 32.712692, 12.690513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782095, 32.341301, 12.771280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100296, 0.243470, 0.964709,
		-0.944868, -0.280460, 0.169015,
		0.311712, -0.928474, 0.201918,
		25.875608, 32.062759, 12.831856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331451, 32.603706, 13.357640>,  <25.657410, 32.712692, 12.690513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331451, 32.603706, 13.357640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.588987, 32.298744, 13.331685>,  <25.743509, 32.115768, 13.316112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.588987, 32.298744, 13.331685>,  <25.331451, 32.603706, 13.357640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588987, 32.298744, 13.331685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040473, -0.118617, 0.992115,
		-0.764091, -0.636135, -0.107227,
		0.643838, -0.762406, -0.064888,
		25.782139, 32.070023, 13.312219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098267, 32.081516, 13.766468>,  <25.331451, 32.603706, 13.357640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098267, 32.081516, 13.766468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491762, 32.014202, 13.741356>,  <25.727859, 31.973814, 13.726289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.491762, 32.014202, 13.741356>,  <25.098267, 32.081516, 13.766468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491762, 32.014202, 13.741356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071901, 0.048652, 0.996225,
		-0.164594, -0.984537, 0.059960,
		0.983737, -0.168284, -0.062781,
		25.786884, 31.963717, 13.722522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265442, 31.473583, 14.090837>,  <25.098267, 32.081516, 13.766468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265442, 31.473583, 14.090837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.608694, 31.678776, 14.082191>,  <25.814646, 31.801891, 14.077004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.608694, 31.678776, 14.082191>,  <25.265442, 31.473583, 14.090837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608694, 31.678776, 14.082191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087708, -0.104987, 0.990598,
		0.505888, -0.851956, -0.135085,
		0.858128, 0.512980, -0.021612,
		25.866133, 31.832670, 14.075708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676100, 31.197475, 14.590635>,  <25.265442, 31.473583, 14.090837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676100, 31.197475, 14.590635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.926012, 31.501925, 14.520961>,  <26.075960, 31.684593, 14.479156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.926012, 31.501925, 14.520961>,  <25.676100, 31.197475, 14.590635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926012, 31.501925, 14.520961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198029, 0.061327, 0.978276,
		0.755270, -0.645702, -0.112409,
		0.624781, 0.761122, -0.174186,
		26.113447, 31.730261, 14.468705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392971, 31.043310, 14.763329>,  <25.676100, 31.197475, 14.590635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392971, 31.043310, 14.763329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.330620, 31.437973, 14.782127>,  <26.293209, 31.674770, 14.793406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.330620, 31.437973, 14.782127>,  <26.392971, 31.043310, 14.763329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330620, 31.437973, 14.782127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366353, 0.013562, 0.930377,
		0.917326, 0.162245, -0.363579,
		-0.155880, 0.986657, 0.046998,
		26.283855, 31.733971, 14.796227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984646, 31.292774, 15.032123>,  <26.392971, 31.043310, 14.763329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984646, 31.292774, 15.032123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725540, 31.594957, 15.071482>,  <26.570076, 31.776268, 15.095097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.725540, 31.594957, 15.071482>,  <26.984646, 31.292774, 15.032123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725540, 31.594957, 15.071482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276494, 0.112773, 0.954376,
		0.709897, 0.645417, -0.281930,
		-0.647764, 0.755460, 0.098397,
		26.531212, 31.821596, 15.101001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313644, 31.895084, 15.089522>,  <26.984646, 31.292774, 15.032123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313644, 31.895084, 15.089522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.954954, 31.934017, 15.262224>,  <26.739740, 31.957376, 15.365846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.954954, 31.934017, 15.262224>,  <27.313644, 31.895084, 15.089522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954954, 31.934017, 15.262224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431600, -0.023739, 0.901753,
		0.098020, 0.994969, -0.020721,
		-0.896724, 0.097333, 0.431755,
		26.685938, 31.963217, 15.391751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316486, 32.472401, 15.516091>,  <27.313644, 31.895084, 15.089522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316486, 32.472401, 15.516091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.030712, 32.241188, 15.673803>,  <26.859247, 32.102459, 15.768431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.030712, 32.241188, 15.673803>,  <27.316486, 32.472401, 15.516091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030712, 32.241188, 15.673803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453573, 0.046472, 0.890007,
		-0.532776, 0.814690, 0.228978,
		-0.714438, -0.578032, 0.394280,
		26.816381, 32.067780, 15.792088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128607, 32.717663, 16.276190>,  <27.316486, 32.472401, 15.516091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128607, 32.717663, 16.276190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.003958, 32.339138, 16.241821>,  <26.929169, 32.112022, 16.221201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.003958, 32.339138, 16.241821>,  <27.128607, 32.717663, 16.276190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003958, 32.339138, 16.241821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402856, -0.213473, 0.890021,
		-0.860580, 0.242739, 0.447751,
		-0.311625, -0.946313, -0.085921,
		26.910471, 32.055244, 16.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121807, 32.569839, 16.885824>,  <27.128607, 32.717663, 16.276190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121807, 32.569839, 16.885824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.066471, 32.197861, 16.749550>,  <27.033270, 31.974674, 16.667786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.066471, 32.197861, 16.749550>,  <27.121807, 32.569839, 16.885824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066471, 32.197861, 16.749550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333691, -0.367645, 0.868037,
		-0.932477, 0.006399, 0.361173,
		-0.138338, -0.929944, -0.340685,
		27.024969, 31.918877, 16.647345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701954, 32.266068, 17.342201>,  <27.121807, 32.569839, 16.885824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701954, 32.266068, 17.342201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.911257, 31.982933, 17.152393>,  <27.036839, 31.813053, 17.038507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.911257, 31.982933, 17.152393>,  <26.701954, 32.266068, 17.342201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911257, 31.982933, 17.152393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369227, -0.313539, 0.874851,
		-0.768032, -0.632979, 0.097290,
		0.523258, -0.707835, -0.474521,
		27.068233, 31.770582, 17.010036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743771, 31.740877, 17.857395>,  <26.701954, 32.266068, 17.342201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743771, 31.740877, 17.857395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016083, 31.643534, 17.581043>,  <27.179470, 31.585127, 17.415232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016083, 31.643534, 17.581043>,  <26.743771, 31.740877, 17.857395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016083, 31.643534, 17.581043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592047, -0.372551, 0.714623,
		-0.431300, -0.895534, -0.109543,
		0.680780, -0.243362, -0.690880,
		27.220318, 31.570526, 17.373779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860909, 31.111423, 18.125265>,  <26.743771, 31.740877, 17.857395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860909, 31.111423, 18.125265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162693, 31.176857, 17.871012>,  <27.343763, 31.216118, 17.718460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.162693, 31.176857, 17.871012>,  <26.860909, 31.111423, 18.125265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162693, 31.176857, 17.871012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628419, -0.459522, 0.627638,
		-0.189416, -0.872972, -0.449490,
		0.754461, 0.163583, -0.635633,
		27.389030, 31.225931, 17.680323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125963, 30.469707, 17.884663>,  <26.860909, 31.111423, 18.125265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125963, 30.469707, 17.884663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.397045, 30.763762, 17.891493>,  <27.559694, 30.940193, 17.895592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.397045, 30.763762, 17.891493>,  <27.125963, 30.469707, 17.884663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397045, 30.763762, 17.891493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487273, -0.466356, 0.738293,
		0.550708, -0.492026, -0.674264,
		0.677707, 0.735134, 0.017075,
		27.600357, 30.984303, 17.896616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715263, 30.122656, 18.142511>,  <27.125963, 30.469707, 17.884663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715263, 30.122656, 18.142511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.824657, 30.503763, 18.195332>,  <27.890295, 30.732428, 18.227024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.824657, 30.503763, 18.195332>,  <27.715263, 30.122656, 18.142511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824657, 30.503763, 18.195332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573213, -0.271680, 0.773057,
		0.772419, -0.135728, -0.620440,
		0.273487, 0.952769, 0.132049,
		27.906704, 30.789595, 18.234947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428221, 30.130808, 18.152803>,  <27.715263, 30.122656, 18.142511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428221, 30.130808, 18.152803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319063, 30.481226, 18.311838>,  <28.253569, 30.691477, 18.407259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319063, 30.481226, 18.311838>,  <28.428221, 30.130808, 18.152803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319063, 30.481226, 18.311838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382393, -0.280450, 0.880411,
		0.882782, 0.392294, -0.258459,
		-0.272895, 0.876044, 0.397587,
		28.237194, 30.744040, 18.431114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073437, 30.399853, 18.537825>,  <28.428221, 30.130808, 18.152803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073437, 30.399853, 18.537825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746527, 30.585844, 18.673977>,  <28.550381, 30.697439, 18.755669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.746527, 30.585844, 18.673977>,  <29.073437, 30.399853, 18.537825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746527, 30.585844, 18.673977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285086, -0.187075, 0.940068,
		0.500788, 0.865331, 0.020333,
		-0.817274, 0.464978, 0.340379,
		28.501345, 30.725338, 18.776091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.947445, 28.990072, 22.203697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.605522, 29.195724, 22.231922>,  <32.400368, 29.319115, 22.248857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.605522, 29.195724, 22.231922>,  <32.947445, 28.990072, 22.203697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605522, 29.195724, 22.231922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092755, 0.017582, 0.995534,
		0.510592, 0.857532, -0.062717,
		-0.854805, 0.514129, 0.070563,
		32.349079, 29.349964, 22.253092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142582, 29.444960, 22.641216>,  <32.947445, 28.990072, 22.203697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142582, 29.444960, 22.641216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.743893, 29.465111, 22.666534>,  <32.504681, 29.477201, 22.681725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.743893, 29.465111, 22.666534>,  <33.142582, 29.444960, 22.641216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743893, 29.465111, 22.666534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064601, 0.024702, 0.997606,
		0.048692, 0.998425, -0.027875,
		-0.996723, 0.050377, 0.063296,
		32.444878, 29.480225, 22.685524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916645, 29.938812, 23.219105>,  <33.142582, 29.444960, 22.641216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916645, 29.938812, 23.219105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573902, 29.739874, 23.164776>,  <32.368256, 29.620512, 23.132177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573902, 29.739874, 23.164776>,  <32.916645, 29.938812, 23.219105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573902, 29.739874, 23.164776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137412, -0.033610, 0.989944,
		-0.496908, 0.866902, -0.039542,
		-0.856855, -0.497344, -0.135824,
		32.316845, 29.590672, 23.124029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317711, 30.292130, 23.665085>,  <32.916645, 29.938812, 23.219105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317711, 30.292130, 23.665085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.224174, 29.906965, 23.611237>,  <32.168053, 29.675867, 23.578928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.224174, 29.906965, 23.611237>,  <32.317711, 30.292130, 23.665085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224174, 29.906965, 23.611237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155320, -0.099688, 0.982822,
		-0.959790, 0.250730, -0.126249,
		-0.233837, -0.962911, -0.134623,
		32.154022, 29.618092, 23.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683113, 30.185633, 24.096525>,  <32.317711, 30.292130, 23.665085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683113, 30.185633, 24.096525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.872715, 29.843437, 24.013138>,  <31.986477, 29.638121, 23.963106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.872715, 29.843437, 24.013138>,  <31.683113, 30.185633, 24.096525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872715, 29.843437, 24.013138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050599, -0.262827, 0.963515,
		-0.879067, -0.446162, -0.167868,
		0.474005, -0.855489, -0.208467,
		32.014915, 29.586790, 23.950598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346884, 29.702436, 24.452389>,  <31.683113, 30.185633, 24.096525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346884, 29.702436, 24.452389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713423, 29.554838, 24.390224>,  <31.933346, 29.466280, 24.352926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713423, 29.554838, 24.390224>,  <31.346884, 29.702436, 24.452389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713423, 29.554838, 24.390224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064312, -0.247467, 0.966760,
		-0.395190, -0.895881, -0.203034,
		0.916346, -0.368996, -0.155413,
		31.988327, 29.444139, 24.343601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466385, 28.984426, 24.813374>,  <31.346884, 29.702436, 24.452389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466385, 28.984426, 24.813374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848442, 29.087873, 24.755653>,  <32.077675, 29.149940, 24.721022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848442, 29.087873, 24.755653>,  <31.466385, 28.984426, 24.813374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848442, 29.087873, 24.755653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241763, -0.399500, 0.884280,
		0.171042, -0.879499, -0.444103,
		0.955141, 0.258616, -0.144299,
		32.134983, 29.165459, 24.712364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764317, 28.466219, 25.120464>,  <31.466385, 28.984426, 24.813374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764317, 28.466219, 25.120464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.045311, 28.750807, 25.113272>,  <32.213909, 28.921560, 25.108955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.045311, 28.750807, 25.113272>,  <31.764317, 28.466219, 25.120464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045311, 28.750807, 25.113272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121894, -0.095386, 0.987949,
		0.701183, -0.696211, -0.153731,
		0.702485, 0.711472, -0.017981,
		32.256058, 28.964249, 25.107878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353680, 28.176268, 25.539797>,  <31.764317, 28.466219, 25.120464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353680, 28.176268, 25.539797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475540, 28.556499, 25.515823>,  <32.548656, 28.784637, 25.501440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.475540, 28.556499, 25.515823>,  <32.353680, 28.176268, 25.539797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475540, 28.556499, 25.515823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219167, -0.008728, 0.975648,
		0.926906, -0.310364, -0.210995,
		0.304648, 0.950578, -0.059931,
		32.566936, 28.841673, 25.497845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012173, 28.179113, 25.961071>,  <32.353680, 28.176268, 25.539797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012173, 28.179113, 25.961071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855415, 28.547091, 25.956608>,  <32.761360, 28.767878, 25.953930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.855415, 28.547091, 25.956608>,  <33.012173, 28.179113, 25.961071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855415, 28.547091, 25.956608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278156, 0.130038, 0.951693,
		0.876955, 0.369857, -0.306849,
		-0.391892, 0.919944, -0.011159,
		32.737846, 28.823074, 25.953260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448658, 28.529802, 26.258127>,  <33.012173, 28.179113, 25.961071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448658, 28.529802, 26.258127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.114182, 28.741573, 26.315374>,  <32.913494, 28.868635, 26.349724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.114182, 28.741573, 26.315374>,  <33.448658, 28.529802, 26.258127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114182, 28.741573, 26.315374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197870, 0.047853, 0.979060,
		0.511492, 0.847004, -0.144772,
		-0.836196, 0.529428, 0.143120,
		32.863323, 28.900402, 26.358311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666569, 28.928400, 26.717518>,  <33.448658, 28.529802, 26.258127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666569, 28.928400, 26.717518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269775, 28.960855, 26.756271>,  <33.031700, 28.980328, 26.779524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269775, 28.960855, 26.756271>,  <33.666569, 28.928400, 26.717518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269775, 28.960855, 26.756271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100321, 0.039396, 0.994175,
		0.076847, 0.995924, -0.047220,
		-0.991983, 0.081136, 0.096884,
		32.972179, 28.985197, 26.785337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480652, 29.421257, 27.221973>,  <33.666569, 28.928400, 26.717518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480652, 29.421257, 27.221973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.190891, 29.147287, 27.190687>,  <33.017036, 28.982904, 27.171915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.190891, 29.147287, 27.190687>,  <33.480652, 29.421257, 27.221973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190891, 29.147287, 27.190687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016484, -0.130634, 0.991294,
		-0.689181, 0.716806, 0.105922,
		-0.724402, -0.684926, -0.078214,
		32.973572, 28.941809, 27.167223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883888, 30.060823, 27.280586>,  <33.480652, 29.421257, 27.221973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883888, 30.060823, 27.280586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.490322, 30.064505, 27.351948>,  <33.254181, 30.066713, 27.394764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.490322, 30.064505, 27.351948>,  <33.883888, 30.060823, 27.280586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490322, 30.064505, 27.351948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111425, 0.812205, 0.572632,
		-0.139630, 0.583299, -0.800166,
		-0.983915, 0.009202, 0.178402,
		33.195148, 30.067265, 27.405468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197201, 30.494686, 26.790827>,  <33.883888, 30.060823, 27.280586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197201, 30.494686, 26.790827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231750, 30.889437, 26.736261>,  <34.252480, 31.126287, 26.703522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231750, 30.889437, 26.736261>,  <34.197201, 30.494686, 26.790827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231750, 30.889437, 26.736261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832510, -0.003712, -0.553997,
		-0.547234, 0.161421, 0.821266,
		0.086378, 0.986879, -0.136415,
		34.257664, 31.185501, 26.695337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486362, 30.846333, 26.812431>,  <34.197201, 30.494686, 26.790827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486362, 30.846333, 26.812431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.731316, 31.089148, 26.609850>,  <33.878288, 31.234837, 26.488302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.731316, 31.089148, 26.609850>,  <33.486362, 30.846333, 26.812431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731316, 31.089148, 26.609850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691509, 0.100822, -0.715298,
		-0.383152, 0.788250, 0.481514,
		0.612381, 0.607039, -0.506452,
		33.915031, 31.271259, 26.457914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041473, 31.396473, 26.530293>,  <33.486362, 30.846333, 26.812431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041473, 31.396473, 26.530293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.368801, 31.421850, 26.301794>,  <33.565197, 31.437077, 26.164694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.368801, 31.421850, 26.301794>,  <33.041473, 31.396473, 26.530293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368801, 31.421850, 26.301794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574039, 0.139963, -0.806777,
		0.028767, 0.988122, 0.150955,
		0.818322, 0.063445, -0.571247,
		33.614296, 31.440884, 26.130421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835884, 31.937988, 26.221254>,  <33.041473, 31.396473, 26.530293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835884, 31.937988, 26.221254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.156326, 31.801504, 26.024563>,  <33.348591, 31.719614, 25.906548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.156326, 31.801504, 26.024563>,  <32.835884, 31.937988, 26.221254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156326, 31.801504, 26.024563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406991, 0.291832, -0.865559,
		0.438841, 0.893537, 0.094919,
		0.801110, -0.341212, -0.491729,
		33.396660, 31.699141, 25.877045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084526, 32.546188, 25.890284>,  <32.835884, 31.937988, 26.221254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084526, 32.546188, 25.890284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.181335, 32.207718, 25.700377>,  <33.239422, 32.004635, 25.586432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.181335, 32.207718, 25.700377>,  <33.084526, 32.546188, 25.890284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181335, 32.207718, 25.700377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506038, 0.307413, -0.805868,
		0.827858, 0.435293, -0.353796,
		0.242028, -0.846178, -0.474769,
		33.253944, 31.953865, 25.557945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347885, 32.776955, 25.194981>,  <33.084526, 32.546188, 25.890284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347885, 32.776955, 25.194981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.249779, 32.390530, 25.162554>,  <33.190914, 32.158676, 25.143099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.249779, 32.390530, 25.162554>,  <33.347885, 32.776955, 25.194981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249779, 32.390530, 25.162554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412097, 0.179579, -0.893268,
		0.877509, -0.185678, -0.442155,
		-0.245262, -0.966062, -0.081065,
		33.176201, 32.100712, 25.138235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573498, 32.618950, 24.435781>,  <33.347885, 32.776955, 25.194981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573498, 32.618950, 24.435781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316551, 32.341084, 24.565271>,  <33.162384, 32.174362, 24.642965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.316551, 32.341084, 24.565271>,  <33.573498, 32.618950, 24.435781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316551, 32.341084, 24.565271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536608, 0.106091, -0.837136,
		0.547186, -0.711466, -0.440913,
		-0.642371, -0.694666, 0.323726,
		33.123840, 32.132683, 24.662390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339031, 32.306625, 23.831524>,  <33.573498, 32.618950, 24.435781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339031, 32.306625, 23.831524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059563, 32.199291, 24.096809>,  <32.891880, 32.134892, 24.255981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.059563, 32.199291, 24.096809>,  <33.339031, 32.306625, 23.831524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059563, 32.199291, 24.096809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710395, 0.150260, -0.687576,
		0.084847, -0.951534, -0.295608,
		-0.698670, -0.268337, 0.663216,
		32.849960, 32.118790, 24.295774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008446, 31.746714, 23.518602>,  <33.339031, 32.306625, 23.831524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008446, 31.746714, 23.518602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766911, 31.940104, 23.772100>,  <32.621990, 32.056137, 23.924200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766911, 31.940104, 23.772100>,  <33.008446, 31.746714, 23.518602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766911, 31.940104, 23.772100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641711, 0.176786, -0.746294,
		-0.472850, -0.857322, 0.203500,
		-0.603838, 0.483473, 0.633746,
		32.585758, 32.085144, 23.962225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374828, 31.515511, 23.259066>,  <33.008446, 31.746714, 23.518602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374828, 31.515511, 23.259066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281654, 31.814507, 23.507904>,  <32.225750, 31.993904, 23.657207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.281654, 31.814507, 23.507904>,  <32.374828, 31.515511, 23.259066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281654, 31.814507, 23.507904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800371, 0.216012, -0.559236,
		-0.552403, -0.628172, 0.547952,
		-0.232932, 0.747489, 0.622096,
		32.211773, 32.038754, 23.694532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670252, 31.487551, 23.367302>,  <32.374828, 31.515511, 23.259066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670252, 31.487551, 23.367302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776941, 31.868305, 23.427664>,  <31.840956, 32.096756, 23.463881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776941, 31.868305, 23.427664>,  <31.670252, 31.487551, 23.367302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776941, 31.868305, 23.427664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722377, 0.301101, -0.622503,
		-0.637989, 0.057026, 0.767931,
		0.266724, 0.951886, 0.150905,
		31.856958, 32.153870, 23.472935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030167, 31.859287, 23.376881>,  <31.670252, 31.487551, 23.367302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030167, 31.859287, 23.376881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.319084, 32.129826, 23.319132>,  <31.492435, 32.292149, 23.284483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.319084, 32.129826, 23.319132>,  <31.030167, 31.859287, 23.376881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319084, 32.129826, 23.319132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568720, 0.462107, -0.680452,
		-0.393505, 0.573595, 0.718430,
		0.722295, 0.676347, -0.144374,
		31.535772, 32.332729, 23.275820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662596, 32.482315, 23.359280>,  <31.030167, 31.859287, 23.376881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662596, 32.482315, 23.359280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.011003, 32.579185, 23.188316>,  <31.220047, 32.637310, 23.085739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.011003, 32.579185, 23.188316>,  <30.662596, 32.482315, 23.359280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011003, 32.579185, 23.188316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486657, 0.544098, -0.683463,
		0.067031, 0.803309, 0.591778,
		0.871018, 0.242180, -0.427408,
		31.272308, 32.651840, 23.060095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701986, 33.314903, 23.194950>,  <30.662596, 32.482315, 23.359280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701986, 33.314903, 23.194950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932289, 33.095448, 22.952465>,  <31.070471, 32.963772, 22.806974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.932289, 33.095448, 22.952465>,  <30.701986, 33.314903, 23.194950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932289, 33.095448, 22.952465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492061, 0.359624, -0.792810,
		0.652977, 0.754761, -0.062909,
		0.575758, -0.548641, -0.606214,
		31.105017, 32.930855, 22.770601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633488, 33.907219, 23.710405>,  <30.701986, 33.314903, 23.194950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633488, 33.907219, 23.710405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.434067, 34.246044, 23.784088>,  <30.314415, 34.449341, 23.828299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.434067, 34.246044, 23.784088>,  <30.633488, 33.907219, 23.710405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434067, 34.246044, 23.784088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008863, -0.217471, 0.976026,
		0.866815, 0.484967, 0.115928,
		-0.498552, 0.847062, 0.184209,
		30.284502, 34.500164, 23.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994095, 34.160614, 24.220167>,  <30.633488, 33.907219, 23.710405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994095, 34.160614, 24.220167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.646753, 34.357689, 24.242849>,  <30.438349, 34.475933, 24.256458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.646753, 34.357689, 24.242849>,  <30.994095, 34.160614, 24.220167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646753, 34.357689, 24.242849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118917, 0.095841, 0.988268,
		0.481474, 0.864911, -0.141813,
		-0.868356, 0.492689, 0.056707,
		30.386246, 34.505497, 24.259861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056051, 34.701561, 24.700056>,  <30.994095, 34.160614, 24.220167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056051, 34.701561, 24.700056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.660154, 34.648689, 24.678364>,  <30.422617, 34.616966, 24.665348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.660154, 34.648689, 24.678364>,  <31.056051, 34.701561, 24.700056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660154, 34.648689, 24.678364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058406, 0.027934, 0.997902,
		-0.130386, 0.990832, -0.035367,
		-0.989742, -0.132178, -0.054228,
		30.363232, 34.609035, 24.662096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752493, 35.168350, 25.149559>,  <31.056051, 34.701561, 24.700056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752493, 35.168350, 25.149559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.468235, 34.890511, 25.104815>,  <30.297680, 34.723808, 25.077967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.468235, 34.890511, 25.104815>,  <30.752493, 35.168350, 25.149559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468235, 34.890511, 25.104815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178304, 0.024004, 0.983683,
		-0.680580, 0.718996, -0.140909,
		-0.710646, -0.694600, -0.111863,
		30.255041, 34.682129, 25.071255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271465, 35.217442, 25.669922>,  <30.752493, 35.168350, 25.149559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271465, 35.217442, 25.669922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.179928, 34.852982, 25.532845>,  <30.125006, 34.634304, 25.450598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.179928, 34.852982, 25.532845>,  <30.271465, 35.217442, 25.669922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179928, 34.852982, 25.532845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088572, -0.331086, 0.939435,
		-0.969425, 0.245336, -0.004936,
		-0.228843, -0.911149, -0.342693,
		30.111275, 34.579636, 25.430037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648434, 35.114105, 25.990664>,  <30.271465, 35.217442, 25.669922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648434, 35.114105, 25.990664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.815100, 34.762535, 25.897816>,  <29.915100, 34.551594, 25.842108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.815100, 34.762535, 25.897816>,  <29.648434, 35.114105, 25.990664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815100, 34.762535, 25.897816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279299, -0.366762, 0.887399,
		-0.865091, -0.304917, -0.398300,
		0.416665, -0.878926, -0.232119,
		29.940100, 34.498856, 25.828180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263210, 34.649574, 26.405682>,  <29.648434, 35.114105, 25.990664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263210, 34.649574, 26.405682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.534754, 34.396263, 26.257029>,  <29.697680, 34.244278, 26.167837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.534754, 34.396263, 26.257029>,  <29.263210, 34.649574, 26.405682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534754, 34.396263, 26.257029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174284, -0.630636, 0.756256,
		-0.713286, -0.448621, -0.538482,
		0.678858, -0.633275, -0.371636,
		29.738413, 34.206280, 26.145538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998131, 34.032974, 26.162695>,  <29.263210, 34.649574, 26.405682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998131, 34.032974, 26.162695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.372601, 33.991154, 26.296947>,  <29.597282, 33.966061, 26.377499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.372601, 33.991154, 26.296947>,  <28.998131, 34.032974, 26.162695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372601, 33.991154, 26.296947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302180, -0.727189, 0.616347,
		0.179627, -0.678428, -0.712369,
		0.936174, -0.104551, 0.335630,
		29.653452, 33.959789, 26.397636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019020, 33.319496, 26.308115>,  <28.998131, 34.032974, 26.162695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019020, 33.319496, 26.308115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.320330, 33.491989, 26.506758>,  <29.501116, 33.595486, 26.625944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.320330, 33.491989, 26.506758>,  <29.019020, 33.319496, 26.308115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320330, 33.491989, 26.506758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211597, -0.556021, 0.803783,
		0.622740, -0.710549, -0.327590,
		0.753274, 0.431231, 0.496607,
		29.546312, 33.621357, 26.655739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432312, 32.669849, 26.624546>,  <29.019020, 33.319496, 26.308115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432312, 32.669849, 26.624546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.501860, 33.005852, 26.830133>,  <29.543589, 33.207451, 26.953485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.501860, 33.005852, 26.830133>,  <29.432312, 32.669849, 26.624546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501860, 33.005852, 26.830133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299344, -0.452138, 0.840217,
		0.938170, -0.299942, 0.172837,
		0.173871, 0.840003, 0.513968,
		29.554022, 33.257854, 26.984324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500925, 32.391464, 27.345278>,  <29.432312, 32.669849, 26.624546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500925, 32.391464, 27.345278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.482975, 32.783699, 27.421625>,  <29.472204, 33.019039, 27.467434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.482975, 32.783699, 27.421625>,  <29.500925, 32.391464, 27.345278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482975, 32.783699, 27.421625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215407, -0.196062, 0.956640,
		0.975493, 0.001815, 0.220024,
		-0.044875, 0.980590, 0.190866,
		29.469513, 33.077877, 27.478886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803627, 32.448261, 27.973392>,  <29.500925, 32.391464, 27.345278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803627, 32.448261, 27.973392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.546858, 32.744247, 27.893005>,  <29.392797, 32.921841, 27.844772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.546858, 32.744247, 27.893005>,  <29.803627, 32.448261, 27.973392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546858, 32.744247, 27.893005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536795, -0.246523, 0.806894,
		0.547529, 0.625842, 0.555458,
		-0.641921, 0.739965, -0.200970,
		29.354282, 32.966236, 27.832714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.585764, 35.496433, 20.228779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220423, 35.624485, 20.329420>,  <30.001217, 35.701317, 20.389805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220423, 35.624485, 20.329420>,  <30.585764, 35.496433, 20.228779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220423, 35.624485, 20.329420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252612, -0.039109, 0.966777,
		0.319330, 0.946567, -0.045147,
		-0.913354, 0.320126, 0.251603,
		29.946417, 35.720524, 20.404902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717775, 35.811783, 20.806957>,  <30.585764, 35.496433, 20.228779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717775, 35.811783, 20.806957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323675, 35.760162, 20.851906>,  <30.087215, 35.729191, 20.878876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323675, 35.760162, 20.851906>,  <30.717775, 35.811783, 20.806957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323675, 35.760162, 20.851906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123909, -0.085139, 0.988634,
		-0.118015, 0.987977, 0.099874,
		-0.985251, -0.129049, 0.112372,
		30.028099, 35.721447, 20.885618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419733, 36.340897, 21.268969>,  <30.717775, 35.811783, 20.806957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419733, 36.340897, 21.268969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163218, 36.034191, 21.280394>,  <30.009308, 35.850166, 21.287249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163218, 36.034191, 21.280394>,  <30.419733, 36.340897, 21.268969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163218, 36.034191, 21.280394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200407, -0.131449, 0.970854,
		-0.740664, 0.628324, 0.237963,
		-0.641291, -0.766766, 0.028561,
		29.970831, 35.804161, 21.288961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053732, 36.401569, 21.896643>,  <30.419733, 36.340897, 21.268969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053732, 36.401569, 21.896643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959951, 36.021198, 21.815880>,  <29.903683, 35.792976, 21.767422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959951, 36.021198, 21.815880>,  <30.053732, 36.401569, 21.896643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959951, 36.021198, 21.815880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121380, -0.234705, 0.964458,
		-0.964520, 0.201613, 0.170451,
		-0.234453, -0.950929, -0.201906,
		29.889616, 35.735920, 21.755308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586363, 36.150772, 22.435242>,  <30.053732, 36.401569, 21.896643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586363, 36.150772, 22.435242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739761, 35.822948, 22.264948>,  <29.831800, 35.626255, 22.162771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739761, 35.822948, 22.264948>,  <29.586363, 36.150772, 22.435242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739761, 35.822948, 22.264948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166362, -0.392137, 0.904739,
		-0.908434, -0.417792, -0.014040,
		0.383498, -0.819560, -0.425735,
		29.854811, 35.577080, 22.137228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224905, 35.598965, 22.661728>,  <29.586363, 36.150772, 22.435242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224905, 35.598965, 22.661728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589333, 35.472553, 22.555836>,  <29.807989, 35.396706, 22.492300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589333, 35.472553, 22.555836>,  <29.224905, 35.598965, 22.661728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589333, 35.472553, 22.555836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147746, -0.349196, 0.925329,
		-0.384876, -0.882149, -0.271448,
		0.911066, -0.316031, -0.264731,
		29.862652, 35.377743, 22.476416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239202, 34.849731, 22.666759>,  <29.224905, 35.598965, 22.661728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239202, 34.849731, 22.666759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600914, 35.012775, 22.717569>,  <29.817940, 35.110603, 22.748056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600914, 35.012775, 22.717569>,  <29.239202, 34.849731, 22.666759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600914, 35.012775, 22.717569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069433, -0.433961, 0.898252,
		0.421263, -0.803449, -0.420722,
		0.904277, 0.407612, 0.127026,
		29.872196, 35.135059, 22.755676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704880, 34.252636, 22.858839>,  <29.239202, 34.849731, 22.666759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704880, 34.252636, 22.858839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924440, 34.571987, 22.957876>,  <30.056177, 34.763599, 23.017298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924440, 34.571987, 22.957876>,  <29.704880, 34.252636, 22.858839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924440, 34.571987, 22.957876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069585, -0.338820, 0.938274,
		0.832987, -0.497790, -0.241534,
		0.548900, 0.798377, 0.247594,
		30.089109, 34.811501, 23.032154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438931, 34.093563, 22.975508>,  <29.704880, 34.252636, 22.858839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438931, 34.093563, 22.975508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334482, 34.409664, 23.197252>,  <30.271814, 34.599323, 23.330299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334482, 34.409664, 23.197252>,  <30.438931, 34.093563, 22.975508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334482, 34.409664, 23.197252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333867, -0.464910, 0.819995,
		0.905732, 0.399200, -0.142442,
		-0.261119, 0.790252, 0.554364,
		30.256147, 34.646740, 23.363562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855537, 33.929192, 22.311071>,  <30.438931, 34.093563, 22.975508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855537, 33.929192, 22.311071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023590, 33.573639, 22.237988>,  <31.124422, 33.360310, 22.194138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023590, 33.573639, 22.237988>,  <30.855537, 33.929192, 22.311071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023590, 33.573639, 22.237988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100498, 0.154528, -0.982864,
		0.901881, 0.431295, -0.024409,
		0.420133, -0.888879, -0.182710,
		31.149630, 33.306976, 22.183174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378675, 34.038082, 21.868324>,  <30.855537, 33.929192, 22.311071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378675, 34.038082, 21.868324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269487, 33.654785, 21.834238>,  <31.203974, 33.424809, 21.813786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269487, 33.654785, 21.834238>,  <31.378675, 34.038082, 21.868324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269487, 33.654785, 21.834238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000655, 0.088766, -0.996052,
		0.962022, -0.271837, -0.024859,
		-0.272971, -0.958241, -0.085217,
		31.187595, 33.367313, 21.808674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753992, 33.821201, 21.281677>,  <31.378675, 34.038082, 21.868324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753992, 33.821201, 21.281677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486734, 33.528843, 21.337353>,  <31.326380, 33.353428, 21.370758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486734, 33.528843, 21.337353>,  <31.753992, 33.821201, 21.281677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486734, 33.528843, 21.337353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167072, -0.034916, -0.985326,
		0.725030, -0.681596, -0.098783,
		-0.668145, -0.730895, 0.139191,
		31.286291, 33.309574, 21.379110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043224, 33.252003, 20.907761>,  <31.753992, 33.821201, 21.281677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043224, 33.252003, 20.907761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646160, 33.213650, 20.937223>,  <31.407921, 33.190639, 20.954901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646160, 33.213650, 20.937223>,  <32.043224, 33.252003, 20.907761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646160, 33.213650, 20.937223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055652, -0.178511, -0.982363,
		0.107340, -0.979255, 0.171866,
		-0.992664, -0.095882, 0.073659,
		31.348362, 33.184887, 20.959322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838753, 32.711628, 20.472727>,  <32.043224, 33.252003, 20.907761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838753, 32.711628, 20.472727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506424, 32.923969, 20.539576>,  <31.307026, 33.051373, 20.579685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506424, 32.923969, 20.539576>,  <31.838753, 32.711628, 20.472727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506424, 32.923969, 20.539576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256092, -0.098051, -0.961667,
		-0.494119, -0.841772, 0.217410,
		-0.830821, 0.530855, 0.167122,
		31.257177, 33.083225, 20.589712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389210, 32.424358, 19.999689>,  <31.838753, 32.711628, 20.472727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389210, 32.424358, 19.999689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239870, 32.784969, 20.087196>,  <31.150267, 33.001335, 20.139700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239870, 32.784969, 20.087196>,  <31.389210, 32.424358, 19.999689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239870, 32.784969, 20.087196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250520, 0.129078, -0.959468,
		-0.893224, -0.413022, 0.177659,
		-0.373350, 0.901528, 0.218766,
		31.127865, 33.055428, 20.152826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803867, 32.389870, 19.595343>,  <31.389210, 32.424358, 19.999689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803867, 32.389870, 19.595343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843021, 32.775436, 19.694363>,  <30.866514, 33.006775, 19.753775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843021, 32.775436, 19.694363>,  <30.803867, 32.389870, 19.595343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843021, 32.775436, 19.694363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082185, 0.240067, -0.967271,
		-0.991798, 0.115029, -0.055720,
		0.097887, 0.963917, 0.247552,
		30.872387, 33.064613, 19.768629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324076, 32.849667, 19.174799>,  <30.803867, 32.389870, 19.595343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324076, 32.849667, 19.174799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612896, 33.101593, 19.289324>,  <30.786188, 33.252750, 19.358040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612896, 33.101593, 19.289324>,  <30.324076, 32.849667, 19.174799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612896, 33.101593, 19.289324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166887, 0.243064, -0.955546,
		-0.671412, 0.737733, 0.070396,
		0.722049, 0.629817, 0.286314,
		30.829510, 33.290539, 19.375217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239689, 33.487354, 18.798672>,  <30.324076, 32.849667, 19.174799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239689, 33.487354, 18.798672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616169, 33.506615, 18.932430>,  <30.842058, 33.518169, 19.012686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616169, 33.506615, 18.932430>,  <30.239689, 33.487354, 18.798672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616169, 33.506615, 18.932430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294594, 0.367567, -0.882104,
		-0.165387, 0.928749, 0.331770,
		0.941202, 0.048151, 0.334395,
		30.898529, 33.521061, 19.032749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456589, 34.145592, 18.505819>,  <30.239689, 33.487354, 18.798672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456589, 34.145592, 18.505819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786055, 33.938061, 18.597378>,  <30.983734, 33.813541, 18.652313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786055, 33.938061, 18.597378>,  <30.456589, 34.145592, 18.505819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786055, 33.938061, 18.597378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440240, 0.330610, -0.834797,
		0.357443, 0.788361, 0.500721,
		0.823664, -0.518830, 0.228894,
		31.033154, 33.782413, 18.666046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129021, 34.615471, 18.469925>,  <30.456589, 34.145592, 18.505819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129021, 34.615471, 18.469925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217577, 34.228363, 18.421911>,  <31.270712, 33.996098, 18.393103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217577, 34.228363, 18.421911>,  <31.129021, 34.615471, 18.469925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217577, 34.228363, 18.421911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484144, 0.215925, -0.847928,
		0.846517, 0.129610, 0.516343,
		0.221392, -0.967769, -0.120034,
		31.283995, 33.938034, 18.385900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782339, 34.705658, 18.198841>,  <31.129021, 34.615471, 18.469925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782339, 34.705658, 18.198841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689455, 34.327450, 18.107561>,  <31.633724, 34.100525, 18.052794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689455, 34.327450, 18.107561>,  <31.782339, 34.705658, 18.198841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689455, 34.327450, 18.107561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389912, 0.124448, -0.912404,
		0.891093, -0.300847, 0.339771,
		-0.232210, -0.945518, -0.228199,
		31.619791, 34.043793, 18.039101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218769, 34.475056, 17.750782>,  <31.782339, 34.705658, 18.198841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218769, 34.475056, 17.750782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930077, 34.210892, 17.667879>,  <31.756861, 34.052391, 17.618137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930077, 34.210892, 17.667879>,  <32.218769, 34.475056, 17.750782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930077, 34.210892, 17.667879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182231, 0.107572, -0.977354,
		0.667753, -0.743156, 0.042709,
		-0.721732, -0.660414, -0.207257,
		31.713556, 34.012768, 17.605701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525528, 34.001637, 17.284241>,  <32.218769, 34.475056, 17.750782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525528, 34.001637, 17.284241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128876, 34.021194, 17.236458>,  <31.890882, 34.032928, 17.207788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128876, 34.021194, 17.236458>,  <32.525528, 34.001637, 17.284241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128876, 34.021194, 17.236458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124766, 0.125879, -0.984169,
		-0.033080, -0.990840, -0.130926,
		-0.991634, 0.048891, -0.119459,
		31.831385, 34.035862, 17.200621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.677019, 32.517052, 19.269749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.049208, 32.613880, 19.159748>,  <25.272520, 32.671978, 19.093748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.049208, 32.613880, 19.159748>,  <24.677019, 32.517052, 19.269749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049208, 32.613880, 19.159748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330837, -0.232716, 0.914544,
		0.157390, -0.941936, -0.296622,
		0.930470, 0.242073, -0.275000,
		25.328348, 32.686501, 19.077248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.983349, 31.925804, 19.362150>,  <24.677019, 32.517052, 19.269749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.983349, 31.925804, 19.362150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.283632, 32.189842, 19.351480>,  <25.463802, 32.348267, 19.345079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.283632, 32.189842, 19.351480>,  <24.983349, 31.925804, 19.362150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283632, 32.189842, 19.351480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406722, -0.429986, 0.806033,
		0.520588, -0.615945, -0.591270,
		0.750710, 0.660094, -0.026673,
		25.508844, 32.387871, 19.343479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551672, 31.659159, 19.719479>,  <24.983349, 31.925804, 19.362150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551672, 31.659159, 19.719479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.699989, 32.030556, 19.727669>,  <25.788979, 32.253395, 19.732582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.699989, 32.030556, 19.727669>,  <25.551672, 31.659159, 19.719479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699989, 32.030556, 19.727669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431476, -0.191749, 0.881511,
		0.822400, -0.318022, -0.471720,
		0.370792, 0.928490, 0.020475,
		25.811228, 32.309101, 19.733810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143896, 31.512690, 20.016174>,  <25.551672, 31.659159, 19.719479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143896, 31.512690, 20.016174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.081785, 31.906519, 20.048429>,  <26.044518, 32.142818, 20.067783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.081785, 31.906519, 20.048429>,  <26.143896, 31.512690, 20.016174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081785, 31.906519, 20.048429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296733, -0.031373, 0.954445,
		0.942252, 0.172134, -0.287284,
		-0.155279, 0.984574, 0.080639,
		26.035202, 32.201893, 20.072620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817785, 31.884209, 20.131279>,  <26.143896, 31.512690, 20.016174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817785, 31.884209, 20.131279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.532059, 32.098167, 20.311785>,  <26.360622, 32.226543, 20.420088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.532059, 32.098167, 20.311785>,  <26.817785, 31.884209, 20.131279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532059, 32.098167, 20.311785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522468, -0.021399, 0.852391,
		0.465597, 0.844647, -0.264180,
		-0.714316, 0.534896, 0.451264,
		26.317764, 32.258636, 20.447165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154335, 32.338913, 20.619949>,  <26.817785, 31.884209, 20.131279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154335, 32.338913, 20.619949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.773266, 32.343353, 20.741468>,  <26.544624, 32.346016, 20.814379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.773266, 32.343353, 20.741468>,  <27.154335, 32.338913, 20.619949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773266, 32.343353, 20.741468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297978, -0.163829, 0.940409,
		0.060205, 0.986426, 0.152769,
		-0.952672, 0.011096, 0.303796,
		26.487465, 32.346684, 20.832607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087223, 32.683296, 21.337896>,  <27.154335, 32.338913, 20.619949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087223, 32.683296, 21.337896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.736002, 32.494160, 21.308369>,  <26.525270, 32.380680, 21.290651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.736002, 32.494160, 21.308369>,  <27.087223, 32.683296, 21.337896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736002, 32.494160, 21.308369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050986, -0.245799, 0.967979,
		-0.475843, 0.846172, 0.239932,
		-0.878051, -0.472839, -0.073819,
		26.472586, 32.352306, 21.286222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696526, 32.899662, 22.003872>,  <27.087223, 32.683296, 21.337896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696526, 32.899662, 22.003872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.525013, 32.577538, 21.840105>,  <26.422106, 32.384262, 21.741844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.525013, 32.577538, 21.840105>,  <26.696526, 32.899662, 22.003872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525013, 32.577538, 21.840105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186670, -0.364436, 0.912327,
		-0.883912, 0.467616, 0.005937,
		-0.428782, -0.805308, -0.409419,
		26.396378, 32.335945, 21.717279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009604, 32.696083, 22.335232>,  <26.696526, 32.899662, 22.003872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009604, 32.696083, 22.335232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.135075, 32.356606, 22.164900>,  <26.210358, 32.152920, 22.062700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.135075, 32.356606, 22.164900>,  <26.009604, 32.696083, 22.335232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135075, 32.356606, 22.164900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217817, -0.500818, 0.837698,
		-0.924209, -0.170013, -0.341954,
		0.313677, -0.848691, -0.425829,
		26.229177, 32.101997, 22.037151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547873, 32.175503, 22.529182>,  <26.009604, 32.696083, 22.335232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547873, 32.175503, 22.529182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.886623, 31.991116, 22.423122>,  <26.089874, 31.880484, 22.359488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.886623, 31.991116, 22.423122>,  <25.547873, 32.175503, 22.529182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886623, 31.991116, 22.423122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003065, -0.494359, 0.869253,
		-0.531780, -0.736963, -0.417248,
		0.846877, -0.460973, -0.265149,
		26.140688, 31.852825, 22.343578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523582, 31.662617, 23.014080>,  <25.547873, 32.175503, 22.529182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523582, 31.662617, 23.014080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.888691, 31.625843, 22.854883>,  <26.107756, 31.603779, 22.759365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.888691, 31.625843, 22.854883>,  <25.523582, 31.662617, 23.014080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888691, 31.625843, 22.854883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299386, -0.512268, 0.804953,
		-0.277881, -0.853891, -0.440060,
		0.912771, -0.091933, -0.397993,
		26.162521, 31.598263, 22.735485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738546, 30.908035, 23.039642>,  <25.523582, 31.662617, 23.014080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738546, 30.908035, 23.039642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.063154, 31.140963, 23.020277>,  <26.257919, 31.280718, 23.008657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.063154, 31.140963, 23.020277>,  <25.738546, 30.908035, 23.039642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063154, 31.140963, 23.020277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395287, -0.486072, 0.779411,
		0.430331, -0.651645, -0.624639,
		0.811519, 0.582317, -0.048415,
		26.306610, 31.315657, 23.005753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433268, 30.469440, 22.944809>,  <25.738546, 30.908035, 23.039642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433268, 30.469440, 22.944809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.506018, 30.833513, 23.093664>,  <26.549667, 31.051958, 23.182978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.506018, 30.833513, 23.093664>,  <26.433268, 30.469440, 22.944809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506018, 30.833513, 23.093664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437174, -0.413838, 0.798509,
		0.880795, 0.017460, -0.473176,
		0.181876, 0.910183, 0.372139,
		26.560581, 31.106567, 23.205305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956158, 30.317688, 23.334435>,  <26.433268, 30.469440, 22.944809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956158, 30.317688, 23.334435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.842077, 30.678303, 23.464596>,  <26.773628, 30.894672, 23.542692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.842077, 30.678303, 23.464596>,  <26.956158, 30.317688, 23.334435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842077, 30.678303, 23.464596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262940, -0.252884, 0.931081,
		0.921695, 0.351108, -0.164928,
		-0.285203, 0.901539, 0.325402,
		26.756517, 30.948765, 23.562216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593948, 30.648409, 23.081062>,  <26.956158, 30.317688, 23.334435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593948, 30.648409, 23.081062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.975969, 30.553555, 23.009907>,  <28.205181, 30.496641, 22.967215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.975969, 30.553555, 23.009907>,  <27.593948, 30.648409, 23.081062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975969, 30.553555, 23.009907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068752, 0.406530, -0.911047,
		0.288358, 0.882327, 0.371953,
		0.955051, -0.237136, -0.177888,
		28.262486, 30.482414, 22.956541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040306, 31.257292, 22.762161>,  <27.593948, 30.648409, 23.081062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040306, 31.257292, 22.762161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210085, 30.911528, 22.654354>,  <28.311953, 30.704069, 22.589670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.210085, 30.911528, 22.654354>,  <28.040306, 31.257292, 22.762161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210085, 30.911528, 22.654354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151515, 0.361270, -0.920069,
		0.892685, 0.349686, 0.284311,
		0.424449, -0.864409, -0.269518,
		28.337420, 30.652205, 22.573498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696224, 31.376493, 22.383249>,  <28.040306, 31.257292, 22.762161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696224, 31.376493, 22.383249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594902, 31.009403, 22.260864>,  <28.534109, 30.789148, 22.187433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.594902, 31.009403, 22.260864>,  <28.696224, 31.376493, 22.383249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594902, 31.009403, 22.260864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320400, 0.218839, -0.921658,
		0.912787, -0.331491, 0.238608,
		-0.253304, -0.917728, -0.305963,
		28.518911, 30.734085, 22.169075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088449, 31.305336, 21.848286>,  <28.696224, 31.376493, 22.383249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088449, 31.305336, 21.848286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.843601, 30.992737, 21.800005>,  <28.696692, 30.805178, 21.771036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.843601, 30.992737, 21.800005>,  <29.088449, 31.305336, 21.848286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843601, 30.992737, 21.800005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172662, 0.016865, -0.984837,
		0.771685, -0.623678, 0.124612,
		-0.612120, -0.781499, -0.120700,
		28.659966, 30.758287, 21.763796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307999, 31.032944, 21.235924>,  <29.088449, 31.305336, 21.848286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307999, 31.032944, 21.235924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.953314, 30.849508, 21.259375>,  <28.740503, 30.739447, 21.273445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.953314, 30.849508, 21.259375>,  <29.307999, 31.032944, 21.235924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953314, 30.849508, 21.259375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123361, 0.112482, -0.985966,
		0.445561, -0.881500, -0.156311,
		-0.886711, -0.458591, 0.058625,
		28.687300, 30.711931, 21.276962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435720, 30.549189, 20.787508>,  <29.307999, 31.032944, 21.235924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435720, 30.549189, 20.787508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038219, 30.567305, 20.828316>,  <28.799719, 30.578175, 20.852800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038219, 30.567305, 20.828316>,  <29.435720, 30.549189, 20.787508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038219, 30.567305, 20.828316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097154, 0.099051, -0.990328,
		-0.054959, -0.994051, -0.094031,
		-0.993751, 0.045292, 0.102020,
		28.740093, 30.580893, 20.858921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010065, 29.976397, 20.355013>,  <29.435720, 30.549189, 20.787508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010065, 29.976397, 20.355013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.784681, 30.301344, 20.415112>,  <28.649450, 30.496311, 20.451170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.784681, 30.301344, 20.415112>,  <29.010065, 29.976397, 20.355013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784681, 30.301344, 20.415112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088813, 0.121246, -0.988641,
		-0.821356, -0.570403, 0.003831,
		-0.563460, 0.812367, 0.150246,
		28.615643, 30.545053, 20.460186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446491, 29.919092, 19.942457>,  <29.010065, 29.976397, 20.355013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446491, 29.919092, 19.942457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420731, 30.310434, 20.021116>,  <28.405273, 30.545240, 20.068312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420731, 30.310434, 20.021116>,  <28.446491, 29.919092, 19.942457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420731, 30.310434, 20.021116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178652, 0.182569, -0.966826,
		-0.981802, -0.097396, 0.163028,
		-0.064401, 0.978357, 0.196647,
		28.401411, 30.603941, 20.080111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894274, 30.117050, 19.580294>,  <28.446491, 29.919092, 19.942457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894274, 30.117050, 19.580294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.092556, 30.455597, 19.658201>,  <28.211525, 30.658726, 19.704947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.092556, 30.455597, 19.658201>,  <27.894274, 30.117050, 19.580294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092556, 30.455597, 19.658201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053311, 0.253493, -0.965867,
		-0.866852, 0.468404, 0.170779,
		0.495707, 0.846368, 0.194770,
		28.241268, 30.709507, 19.716633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385651, 30.685575, 19.345472>,  <27.894274, 30.117050, 19.580294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385651, 30.685575, 19.345472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.767227, 30.804911, 19.358072>,  <27.996174, 30.876511, 19.365633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.767227, 30.804911, 19.358072>,  <27.385651, 30.685575, 19.345472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767227, 30.804911, 19.358072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058813, 0.288950, -0.955536,
		-0.294173, 0.909672, 0.293187,
		0.953941, 0.298336, 0.031501,
		28.053410, 30.894411, 19.367523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470345, 31.428413, 19.165409>,  <27.385651, 30.685575, 19.345472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470345, 31.428413, 19.165409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.793545, 31.217241, 19.060778>,  <27.987465, 31.090538, 18.997999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.793545, 31.217241, 19.060778>,  <27.470345, 31.428413, 19.165409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793545, 31.217241, 19.060778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149738, 0.245388, -0.957791,
		0.569833, 0.813066, 0.119224,
		0.808003, -0.527929, -0.261577,
		28.035946, 31.058863, 18.982304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860863, 31.888838, 18.914013>,  <27.470345, 31.428413, 19.165409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860863, 31.888838, 18.914013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957935, 31.533051, 18.759119>,  <28.016178, 31.319578, 18.666182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.957935, 31.533051, 18.759119>,  <27.860863, 31.888838, 18.914013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957935, 31.533051, 18.759119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049748, 0.410054, -0.910704,
		0.968829, 0.201747, 0.143762,
		0.242682, -0.889468, -0.387236,
		28.030741, 31.266211, 18.642948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133394, 32.096825, 18.353004>,  <27.860863, 31.888838, 18.914013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133394, 32.096825, 18.353004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.090612, 31.704996, 18.284883>,  <28.064943, 31.469900, 18.244011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.090612, 31.704996, 18.284883>,  <28.133394, 32.096825, 18.353004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090612, 31.704996, 18.284883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210044, 0.189681, -0.959116,
		0.971824, -0.066809, -0.226040,
		-0.106953, -0.979570, -0.170304,
		28.058527, 31.411125, 18.233791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613605, 31.853758, 17.779169>,  <28.133394, 32.096825, 18.353004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613605, 31.853758, 17.779169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.304451, 31.603376, 17.820797>,  <28.118958, 31.453148, 17.845774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.304451, 31.603376, 17.820797>,  <28.613605, 31.853758, 17.779169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304451, 31.603376, 17.820797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198581, 0.082831, -0.976578,
		0.602671, -0.775450, -0.188321,
		-0.772886, -0.625952, 0.104070,
		28.072584, 31.415590, 17.852018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127855, 31.264542, 17.447521>,  <28.613605, 31.853758, 17.779169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127855, 31.264542, 17.447521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.501753, 31.281500, 17.306410>,  <29.726091, 31.291676, 17.221743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.501753, 31.281500, 17.306410>,  <29.127855, 31.264542, 17.447521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501753, 31.281500, 17.306410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346409, -0.329679, 0.878244,
		-0.079068, -0.943140, -0.322853,
		0.934745, 0.042398, -0.352779,
		29.782177, 31.294218, 17.200577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350962, 30.554937, 17.504908>,  <29.127855, 31.264542, 17.447521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350962, 30.554937, 17.504908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664873, 30.802280, 17.488136>,  <29.853220, 30.950686, 17.478073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664873, 30.802280, 17.488136>,  <29.350962, 30.554937, 17.504908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664873, 30.802280, 17.488136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330802, -0.360706, 0.872044,
		0.524110, -0.698231, -0.487628,
		0.784779, 0.618356, -0.041927,
		29.900307, 30.987787, 17.475557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871429, 30.067642, 17.580008>,  <29.350962, 30.554937, 17.504908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871429, 30.067642, 17.580008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074261, 30.393787, 17.691761>,  <30.195959, 30.589474, 17.758814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074261, 30.393787, 17.691761>,  <29.871429, 30.067642, 17.580008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074261, 30.393787, 17.691761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251804, -0.450153, 0.856713,
		0.824297, -0.364070, -0.433575,
		0.507078, 0.815362, 0.279385,
		30.226385, 30.638395, 17.775578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518650, 29.900780, 17.698784>,  <29.871429, 30.067642, 17.580008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518650, 29.900780, 17.698784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496265, 30.234327, 17.918432>,  <30.482836, 30.434456, 18.050220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.496265, 30.234327, 17.918432>,  <30.518650, 29.900780, 17.698784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496265, 30.234327, 17.918432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486174, -0.457616, 0.744461,
		0.872068, 0.308627, -0.379797,
		-0.055960, 0.833869, 0.549119,
		30.479477, 30.484488, 18.083168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192696, 30.085840, 17.935951>,  <30.518650, 29.900780, 17.698784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192696, 30.085840, 17.935951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.957809, 30.281891, 18.193619>,  <30.816877, 30.399521, 18.348219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.957809, 30.281891, 18.193619>,  <31.192696, 30.085840, 17.935951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957809, 30.281891, 18.193619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557650, -0.331861, 0.760852,
		0.586688, 0.806005, -0.078445,
		-0.587218, 0.490127, 0.644167,
		30.781645, 30.428928, 18.386869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669546, 30.253706, 18.441570>,  <31.192696, 30.085840, 17.935951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669546, 30.253706, 18.441570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.332735, 30.339191, 18.639687>,  <31.130648, 30.390482, 18.758556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.332735, 30.339191, 18.639687>,  <31.669546, 30.253706, 18.441570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332735, 30.339191, 18.639687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359661, -0.461882, 0.810746,
		0.402033, 0.860809, 0.312054,
		-0.842029, 0.213713, 0.495291,
		31.080126, 30.403305, 18.788275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978525, 30.686739, 18.919218>,  <31.669546, 30.253706, 18.441570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978525, 30.686739, 18.919218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.625248, 30.542965, 19.039732>,  <31.413280, 30.456701, 19.112040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.625248, 30.542965, 19.039732>,  <31.978525, 30.686739, 18.919218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625248, 30.542965, 19.039732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409525, -0.277915, 0.868938,
		-0.228595, 0.890825, 0.392651,
		-0.883195, -0.359435, 0.301285,
		31.360289, 30.435135, 19.130117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829592, 30.931393, 19.563457>,  <31.978525, 30.686739, 18.919218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829592, 30.931393, 19.563457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.568628, 30.628984, 19.584608>,  <31.412050, 30.447540, 19.597298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.568628, 30.628984, 19.584608>,  <31.829592, 30.931393, 19.563457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568628, 30.628984, 19.584608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376820, -0.263062, 0.888147,
		-0.657548, 0.599358, 0.456508,
		-0.652408, -0.756021, 0.052875,
		31.372906, 30.402178, 19.600470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501560, 30.988287, 20.198225>,  <31.829592, 30.931393, 19.563457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501560, 30.988287, 20.198225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440981, 30.604258, 20.104141>,  <31.404634, 30.373840, 20.047691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440981, 30.604258, 20.104141>,  <31.501560, 30.988287, 20.198225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440981, 30.604258, 20.104141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155047, -0.258080, 0.953601,
		-0.976230, 0.107951, 0.187942,
		-0.151447, -0.960074, -0.235208,
		31.395548, 30.316235, 20.033579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985292, 30.676523, 20.672890>,  <31.501560, 30.988287, 20.198225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985292, 30.676523, 20.672890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228378, 30.394489, 20.526716>,  <31.374229, 30.225269, 20.439013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.228378, 30.394489, 20.526716>,  <30.985292, 30.676523, 20.672890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228378, 30.394489, 20.526716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266785, -0.252156, 0.930185,
		-0.748005, -0.662777, 0.034868,
		0.607713, -0.705085, -0.365432,
		31.410692, 30.182964, 20.417086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738220, 29.998135, 20.946661>,  <30.985292, 30.676523, 20.672890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738220, 29.998135, 20.946661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124138, 29.936995, 20.861052>,  <31.355690, 29.900311, 20.809687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124138, 29.936995, 20.861052>,  <30.738220, 29.998135, 20.946661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124138, 29.936995, 20.861052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109008, -0.508175, 0.854328,
		-0.239342, -0.847582, -0.473624,
		0.964797, -0.152847, -0.214021,
		31.413576, 29.891140, 20.796844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844221, 29.359177, 21.158710>,  <30.738220, 29.998135, 20.946661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844221, 29.359177, 21.158710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.222460, 29.486265, 21.130718>,  <31.449404, 29.562519, 21.113924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.222460, 29.486265, 21.130718>,  <30.844221, 29.359177, 21.158710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222460, 29.486265, 21.130718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171515, -0.304062, 0.937086,
		0.276455, -0.898109, -0.342014,
		0.945598, 0.317722, -0.069980,
		31.506140, 29.581581, 21.109724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201899, 28.845264, 21.487118>,  <30.844221, 29.359177, 21.158710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201899, 28.845264, 21.487118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450188, 29.158855, 21.483433>,  <31.599161, 29.347010, 21.481222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.450188, 29.158855, 21.483433>,  <31.201899, 28.845264, 21.487118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450188, 29.158855, 21.483433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253432, -0.189513, 0.948608,
		0.741942, -0.591155, -0.316320,
		0.620721, 0.783977, -0.009210,
		31.636404, 29.394049, 21.480669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754435, 28.542637, 21.699409>,  <31.201899, 28.845264, 21.487118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754435, 28.542637, 21.699409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813162, 28.933193, 21.762793>,  <31.848398, 29.167526, 21.800823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.813162, 28.933193, 21.762793>,  <31.754435, 28.542637, 21.699409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813162, 28.933193, 21.762793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384874, -0.203959, 0.900151,
		0.911217, -0.071174, -0.405732,
		0.146820, 0.976389, 0.158458,
		31.857208, 29.226110, 21.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.343891, 33.605759, 16.614420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999884, 33.799477, 16.678709>,  <31.793480, 33.915707, 16.717283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.999884, 33.799477, 16.678709>,  <32.343891, 33.605759, 16.614420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999884, 33.799477, 16.678709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176130, 0.013879, -0.984269,
		-0.478907, -0.874795, 0.073363,
		-0.860015, 0.484295, 0.160725,
		31.741879, 33.944763, 16.726927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838938, 33.292847, 16.127289>,  <32.343891, 33.605759, 16.614420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838938, 33.292847, 16.127289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687382, 33.647945, 16.231865>,  <31.596447, 33.861004, 16.294611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687382, 33.647945, 16.231865>,  <31.838938, 33.292847, 16.127289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687382, 33.647945, 16.231865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395807, 0.099912, -0.912883,
		-0.836528, -0.449363, 0.313520,
		-0.378891, 0.887745, 0.261440,
		31.573715, 33.914268, 16.310297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168217, 33.133194, 16.012220>,  <31.838938, 33.292847, 16.127289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168217, 33.133194, 16.012220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.231968, 33.527836, 15.998349>,  <31.270218, 33.764622, 15.990026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.231968, 33.527836, 15.998349>,  <31.168217, 33.133194, 16.012220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231968, 33.527836, 15.998349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497089, 0.049853, -0.866266,
		-0.852937, 0.155300, 0.498378,
		0.159376, 0.986609, -0.034676,
		31.279781, 33.823818, 15.987947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598175, 33.491554, 15.886797>,  <31.168217, 33.133194, 16.012220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598175, 33.491554, 15.886797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852055, 33.792374, 15.815718>,  <31.004383, 33.972866, 15.773070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.852055, 33.792374, 15.815718>,  <30.598175, 33.491554, 15.886797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852055, 33.792374, 15.815718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588398, 0.321257, -0.742012,
		-0.500945, 0.575511, 0.646407,
		0.634699, 0.752051, -0.177698,
		31.042465, 34.017990, 15.762408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229202, 34.066422, 15.810782>,  <30.598175, 33.491554, 15.886797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229202, 34.066422, 15.810782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576393, 34.153538, 15.632262>,  <30.784708, 34.205807, 15.525150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576393, 34.153538, 15.632262>,  <30.229202, 34.066422, 15.810782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576393, 34.153538, 15.632262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496505, 0.362761, -0.788598,
		-0.009846, 0.906076, 0.423001,
		0.867978, 0.217787, -0.446300,
		30.836786, 34.218872, 15.498372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257803, 34.731037, 15.589620>,  <30.229202, 34.066422, 15.810782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257803, 34.731037, 15.589620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555151, 34.594116, 15.359756>,  <30.733561, 34.511963, 15.221839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555151, 34.594116, 15.359756>,  <30.257803, 34.731037, 15.589620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555151, 34.594116, 15.359756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317342, 0.575801, -0.753490,
		0.588808, 0.742485, 0.319408,
		0.743371, -0.342299, -0.574658,
		30.778162, 34.491425, 15.187359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483318, 35.288273, 15.300316>,  <30.257803, 34.731037, 15.589620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483318, 35.288273, 15.300316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.582745, 34.976269, 15.070601>,  <30.642401, 34.789066, 14.932772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.582745, 34.976269, 15.070601>,  <30.483318, 35.288273, 15.300316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582745, 34.976269, 15.070601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444641, 0.434850, -0.783071,
		0.860529, 0.449996, -0.238734,
		0.248566, -0.780006, -0.574287,
		30.657314, 34.742268, 14.898314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553495, 35.544857, 14.589556>,  <30.483318, 35.288273, 15.300316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553495, 35.544857, 14.589556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.549282, 35.149754, 14.527307>,  <30.546753, 34.912689, 14.489957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.549282, 35.149754, 14.527307>,  <30.553495, 35.544857, 14.589556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549282, 35.149754, 14.527307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506507, 0.139460, -0.850883,
		0.862171, 0.069861, -0.501777,
		-0.010535, -0.987760, -0.155623,
		30.546122, 34.853424, 14.480619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696388, 35.486233, 13.949456>,  <30.553495, 35.544857, 14.589556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696388, 35.486233, 13.949456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.537045, 35.124020, 14.007866>,  <30.441439, 34.906693, 14.042912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.537045, 35.124020, 14.007866>,  <30.696388, 35.486233, 13.949456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537045, 35.124020, 14.007866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364117, 0.010002, -0.931300,
		0.841861, -0.424161, -0.333704,
		-0.398358, -0.905532, 0.146024,
		30.417538, 34.852360, 14.051673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918953, 35.029663, 13.380625>,  <30.696388, 35.486233, 13.949456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918953, 35.029663, 13.380625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565916, 34.889862, 13.506404>,  <30.354094, 34.805981, 13.581871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565916, 34.889862, 13.506404>,  <30.918953, 35.029663, 13.380625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565916, 34.889862, 13.506404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326060, -0.026796, -0.944969,
		0.338698, -0.936551, -0.090309,
		-0.882592, -0.349505, 0.314447,
		30.301138, 34.785011, 13.600739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808397, 34.443645, 12.939624>,  <30.918953, 35.029663, 13.380625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808397, 34.443645, 12.939624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466333, 34.563923, 13.108520>,  <30.261095, 34.636089, 13.209857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466333, 34.563923, 13.108520>,  <30.808397, 34.443645, 12.939624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466333, 34.563923, 13.108520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431069, 0.039872, -0.901438,
		-0.287892, -0.952887, 0.095523,
		-0.855160, 0.300693, 0.422239,
		30.209785, 34.654129, 13.235191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222475, 34.000725, 12.583905>,  <30.808397, 34.443645, 12.939624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222475, 34.000725, 12.583905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069677, 34.338024, 12.735170>,  <29.977999, 34.540405, 12.825930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.069677, 34.338024, 12.735170>,  <30.222475, 34.000725, 12.583905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069677, 34.338024, 12.735170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712663, -0.008265, -0.701457,
		-0.588379, -0.537457, 0.604111,
		-0.381996, 0.843250, 0.378163,
		29.955078, 34.591000, 12.848619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782915, 33.362801, 12.625840>,  <30.222475, 34.000725, 12.583905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782915, 33.362801, 12.625840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.851093, 33.484859, 13.000611>,  <29.892000, 33.558094, 13.225474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.851093, 33.484859, 13.000611>,  <29.782915, 33.362801, 12.625840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851093, 33.484859, 13.000611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734373, 0.673315, -0.085692,
		-0.656996, -0.673449, 0.338854,
		0.170446, 0.305145, 0.936928,
		29.902227, 33.576405, 13.281690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762014, 33.272247, 11.769762>,  <29.782915, 33.362801, 12.625840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762014, 33.272247, 11.769762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103565, 33.129261, 11.921084>,  <30.308496, 33.043468, 12.011878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.103565, 33.129261, 11.921084>,  <29.762014, 33.272247, 11.769762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103565, 33.129261, 11.921084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361161, 0.930313, 0.063875,
		-0.374776, 0.082088, 0.923474,
		0.853877, -0.357461, 0.378307,
		30.359728, 33.022022, 12.034576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033619, 33.561615, 11.735783>,  <29.762014, 33.272247, 11.769762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033619, 33.561615, 11.735783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858278, 33.202213, 11.745016>,  <28.753075, 32.986572, 11.750556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.858278, 33.202213, 11.745016>,  <29.033619, 33.561615, 11.735783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858278, 33.202213, 11.745016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226208, -0.085430, 0.970325,
		-0.869872, 0.430566, 0.240698,
		-0.438352, -0.898507, 0.023084,
		28.726772, 32.932663, 11.751942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535662, 33.594395, 12.352663>,  <29.033619, 33.561615, 11.735783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535662, 33.594395, 12.352663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.643467, 33.217331, 12.273913>,  <28.708151, 32.991093, 12.226664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.643467, 33.217331, 12.273913>,  <28.535662, 33.594395, 12.352663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643467, 33.217331, 12.273913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362064, -0.090248, 0.927774,
		-0.892341, -0.321327, 0.316979,
		0.269512, -0.942658, -0.196873,
		28.724321, 32.934532, 12.214851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311300, 33.283012, 12.972470>,  <28.535662, 33.594395, 12.352663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311300, 33.283012, 12.972470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535557, 32.996872, 12.805638>,  <28.670111, 32.825188, 12.705540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.535557, 32.996872, 12.805638>,  <28.311300, 33.283012, 12.972470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535557, 32.996872, 12.805638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023360, -0.489820, 0.871511,
		-0.827729, -0.498348, -0.257903,
		0.560642, -0.715350, -0.417080,
		28.703749, 32.782269, 12.680514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065708, 32.569206, 13.246787>,  <28.311300, 33.283012, 12.972470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065708, 32.569206, 13.246787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.442259, 32.525993, 13.118951>,  <28.668190, 32.500065, 13.042249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.442259, 32.525993, 13.118951>,  <28.065708, 32.569206, 13.246787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442259, 32.525993, 13.118951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251969, -0.404771, 0.879018,
		-0.224324, -0.908014, -0.353821,
		0.941377, -0.108033, -0.319591,
		28.724672, 32.493584, 13.023073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264498, 32.035759, 13.563027>,  <28.065708, 32.569206, 13.246787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264498, 32.035759, 13.563027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.620455, 32.172497, 13.442207>,  <28.834030, 32.254539, 13.369715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.620455, 32.172497, 13.442207>,  <28.264498, 32.035759, 13.563027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620455, 32.172497, 13.442207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424845, -0.379943, 0.821675,
		0.166119, -0.859528, -0.483338,
		0.889894, 0.341840, -0.302051,
		28.887423, 32.275047, 13.351592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632092, 31.513725, 13.767321>,  <28.264498, 32.035759, 13.563027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632092, 31.513725, 13.767321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.886557, 31.818476, 13.718591>,  <29.039236, 32.001328, 13.689353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.886557, 31.818476, 13.718591>,  <28.632092, 31.513725, 13.767321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886557, 31.818476, 13.718591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544836, -0.331794, 0.770108,
		0.546307, -0.556288, -0.626173,
		0.636163, 0.761877, -0.121824,
		29.077406, 32.047039, 13.682043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270069, 31.185472, 13.744762>,  <28.632092, 31.513725, 13.767321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270069, 31.185472, 13.744762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.314175, 31.570568, 13.843536>,  <29.340637, 31.801626, 13.902801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.314175, 31.570568, 13.843536>,  <29.270069, 31.185472, 13.744762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314175, 31.570568, 13.843536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427305, -0.270235, 0.862777,
		0.897358, 0.010384, -0.441180,
		0.110264, 0.962738, 0.246934,
		29.347254, 31.859390, 13.917617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909599, 31.280491, 14.007153>,  <29.270069, 31.185472, 13.744762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909599, 31.280491, 14.007153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702650, 31.579855, 14.173145>,  <29.578480, 31.759474, 14.272740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702650, 31.579855, 14.173145>,  <29.909599, 31.280491, 14.007153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702650, 31.579855, 14.173145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453940, -0.171065, 0.874457,
		0.725440, 0.640798, -0.251228,
		-0.517374, 0.748408, 0.414981,
		29.547438, 31.804377, 14.297640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385805, 31.542425, 14.417301>,  <29.909599, 31.280491, 14.007153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385805, 31.542425, 14.417301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048153, 31.705669, 14.556378>,  <29.845562, 31.803616, 14.639825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.048153, 31.705669, 14.556378>,  <30.385805, 31.542425, 14.417301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048153, 31.705669, 14.556378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299555, -0.178833, 0.937169,
		0.444649, 0.895245, 0.028706,
		-0.844129, 0.408112, 0.347693,
		29.794914, 31.828102, 14.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564199, 31.972382, 15.030609>,  <30.385805, 31.542425, 14.417301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564199, 31.972382, 15.030609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.171471, 31.915216, 15.080579>,  <29.935833, 31.880919, 15.110560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.171471, 31.915216, 15.080579>,  <30.564199, 31.972382, 15.030609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171471, 31.915216, 15.080579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157892, -0.249609, 0.955388,
		-0.105354, 0.957743, 0.267635,
		-0.981820, -0.142912, 0.124923,
		29.876925, 31.872343, 15.118055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526152, 32.218018, 15.654764>,  <30.564199, 31.972382, 15.030609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526152, 32.218018, 15.654764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188156, 32.006947, 15.620015>,  <29.985359, 31.880304, 15.599166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.188156, 32.006947, 15.620015>,  <30.526152, 32.218018, 15.654764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188156, 32.006947, 15.620015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103968, -0.321441, 0.941205,
		-0.524577, 0.786277, 0.326476,
		-0.844991, -0.527678, -0.086873,
		29.934658, 31.848642, 15.593953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195650, 32.451206, 16.226357>,  <30.526152, 32.218018, 15.654764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195650, 32.451206, 16.226357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057144, 32.092651, 16.115652>,  <29.974041, 31.877520, 16.049231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.057144, 32.092651, 16.115652>,  <30.195650, 32.451206, 16.226357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057144, 32.092651, 16.115652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116845, -0.333921, 0.935331,
		-0.930832, 0.291534, 0.220363,
		-0.346265, -0.896384, -0.276760,
		29.953264, 31.823736, 16.032623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662495, 32.419548, 16.677938>,  <30.195650, 32.451206, 16.226357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662495, 32.419548, 16.677938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.750393, 32.046612, 16.563080>,  <29.803131, 31.822849, 16.494165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.750393, 32.046612, 16.563080>,  <29.662495, 32.419548, 16.677938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750393, 32.046612, 16.563080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089183, -0.273907, 0.957612,
		-0.971473, -0.236038, 0.022960,
		0.219744, -0.932341, -0.287144,
		29.816317, 31.766909, 16.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241089, 31.923306, 17.110853>,  <29.662495, 32.419548, 16.677938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241089, 31.923306, 17.110853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556065, 31.722115, 16.968330>,  <29.745050, 31.601400, 16.882816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556065, 31.722115, 16.968330>,  <29.241089, 31.923306, 17.110853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556065, 31.722115, 16.968330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211025, -0.323142, 0.922523,
		-0.579146, -0.801619, -0.148313,
		0.787438, -0.502977, -0.356308,
		29.792295, 31.571222, 16.861439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498053, 31.580908, 17.079235>,  <29.241089, 31.923306, 17.110853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498053, 31.580908, 17.079235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.158497, 31.460361, 17.252930>,  <27.954763, 31.388033, 17.357147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.158497, 31.460361, 17.252930>,  <28.498053, 31.580908, 17.079235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158497, 31.460361, 17.252930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477963, 0.086881, -0.874073,
		0.225687, -0.949543, -0.217793,
		-0.848891, -0.301364, 0.434239,
		27.903830, 31.369951, 17.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164663, 31.312073, 16.535391>,  <28.498053, 31.580908, 17.079235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164663, 31.312073, 16.535391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.870411, 31.349611, 16.803732>,  <27.693859, 31.372135, 16.964737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.870411, 31.349611, 16.803732>,  <28.164663, 31.312073, 16.535391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870411, 31.349611, 16.803732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659643, 0.125932, -0.740953,
		-0.154018, -0.987590, -0.030733,
		-0.735628, 0.093847, 0.670853,
		27.649723, 31.377766, 17.004988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643219, 30.786860, 16.399248>,  <28.164663, 31.312073, 16.535391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643219, 30.786860, 16.399248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.474144, 31.095467, 16.589447>,  <27.372700, 31.280630, 16.703568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.474144, 31.095467, 16.589447>,  <27.643219, 30.786860, 16.399248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474144, 31.095467, 16.589447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652836, 0.104711, -0.750227,
		-0.628602, -0.627534, 0.459413,
		-0.422687, 0.771516, 0.475499,
		27.347338, 31.326921, 16.732096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079493, 30.765842, 16.090063>,  <27.643219, 30.786860, 16.399248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079493, 30.765842, 16.090063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.057758, 31.129269, 16.255741>,  <27.044718, 31.347324, 16.355148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.057758, 31.129269, 16.255741>,  <27.079493, 30.765842, 16.090063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057758, 31.129269, 16.255741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603470, 0.300600, -0.738555,
		-0.795533, -0.290083, 0.531959,
		-0.054335, 0.908566, 0.414193,
		27.041458, 31.401838, 16.379999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418945, 30.872244, 16.031534>,  <27.079493, 30.765842, 16.090063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418945, 30.872244, 16.031534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.538225, 31.244629, 16.115808>,  <26.609793, 31.468060, 16.166374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.538225, 31.244629, 16.115808>,  <26.418945, 30.872244, 16.031534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538225, 31.244629, 16.115808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477651, 0.336649, -0.811491,
		-0.826393, 0.141352, 0.545063,
		0.298201, 0.930960, 0.210687,
		26.627686, 31.523916, 16.179014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841099, 31.270126, 16.073420>,  <26.418945, 30.872244, 16.031534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841099, 31.270126, 16.073420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.132483, 31.538658, 16.018768>,  <26.307312, 31.699778, 15.985978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.132483, 31.538658, 16.018768>,  <25.841099, 31.270126, 16.073420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132483, 31.538658, 16.018768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418747, 0.278471, -0.864352,
		-0.542217, 0.686857, 0.483971,
		0.728458, 0.671328, -0.136627,
		26.351021, 31.740057, 15.977780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513115, 31.927328, 15.992747>,  <25.841099, 31.270126, 16.073420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513115, 31.927328, 15.992747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.868494, 31.946198, 15.810127>,  <26.081720, 31.957520, 15.700556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.868494, 31.946198, 15.810127>,  <25.513115, 31.927328, 15.992747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868494, 31.946198, 15.810127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457625, 0.167430, -0.873239,
		0.035246, 0.984755, 0.170340,
		0.888447, 0.047174, -0.456549,
		26.135029, 31.960350, 15.673162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855505, 32.584484, 16.111609>,  <25.513115, 31.927328, 15.992747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855505, 32.584484, 16.111609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.666636, 32.925022, 16.203053>,  <25.553314, 33.129345, 16.257919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.666636, 32.925022, 16.203053>,  <25.855505, 32.584484, 16.111609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666636, 32.925022, 16.203053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164229, -0.169839, 0.971691,
		0.866071, 0.496353, -0.059622,
		-0.472175, 0.851345, 0.228608,
		25.524982, 33.180428, 16.271635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298409, 32.857075, 16.571367>,  <25.855505, 32.584484, 16.111609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298409, 32.857075, 16.571367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.947079, 33.035233, 16.640844>,  <25.736280, 33.142128, 16.682529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.947079, 33.035233, 16.640844>,  <26.298409, 32.857075, 16.571367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947079, 33.035233, 16.640844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174049, -0.040468, 0.983905,
		0.445255, 0.894419, -0.041977,
		-0.878325, 0.445394, 0.173691,
		25.683580, 33.168850, 16.692951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410877, 33.309559, 17.206482>,  <26.298409, 32.857075, 16.571367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410877, 33.309559, 17.206482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.012659, 33.290585, 17.173880>,  <25.773729, 33.279202, 17.154318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.012659, 33.290585, 17.173880>,  <26.410877, 33.309559, 17.206482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012659, 33.290585, 17.173880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077397, -0.082839, 0.993553,
		-0.053883, 0.995433, 0.078798,
		-0.995543, -0.047437, -0.081507,
		25.713997, 33.276352, 17.149427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104712, 33.904446, 17.683920>,  <26.410877, 33.309559, 17.206482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104712, 33.904446, 17.683920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.875185, 33.585041, 17.611135>,  <25.737469, 33.393398, 17.567465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.875185, 33.585041, 17.611135>,  <26.104712, 33.904446, 17.683920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875185, 33.585041, 17.611135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156234, -0.111372, 0.981421,
		-0.803944, 0.591584, -0.060848,
		-0.573817, -0.798514, -0.181962,
		25.703039, 33.345486, 17.556547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569126, 34.068504, 18.172514>,  <26.104712, 33.904446, 17.683920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569126, 34.068504, 18.172514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.509884, 33.685425, 18.073818>,  <25.474339, 33.455578, 18.014601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.509884, 33.685425, 18.073818>,  <25.569126, 34.068504, 18.172514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509884, 33.685425, 18.073818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065333, -0.239470, 0.968703,
		-0.986811, 0.159592, -0.027102,
		-0.148107, -0.957698, -0.246738,
		25.465452, 33.398117, 17.999796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045494, 33.900337, 18.580999>,  <25.569126, 34.068504, 18.172514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045494, 33.900337, 18.580999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.197855, 33.551250, 18.458832>,  <25.289270, 33.341797, 18.385530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.197855, 33.551250, 18.458832>,  <25.045494, 33.900337, 18.580999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197855, 33.551250, 18.458832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075907, -0.299690, 0.951012,
		-0.921495, -0.385425, -0.047907,
		0.380901, -0.872716, -0.305419,
		25.312126, 33.289436, 18.367207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692055, 33.354603, 18.900898>,  <25.045494, 33.900337, 18.580999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692055, 33.354603, 18.900898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.047455, 33.203186, 18.797153>,  <25.260695, 33.112335, 18.734907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.047455, 33.203186, 18.797153>,  <24.692055, 33.354603, 18.900898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047455, 33.203186, 18.797153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065886, -0.454118, 0.888502,
		-0.454118, -0.806524, -0.378544,
		-0.888502, 0.378544, 0.259362,
		25.314005, 33.089622, 18.719345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.976797, 38.079067, 14.191595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087013, 37.711502, 14.078692>,  <29.153143, 37.490963, 14.010951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087013, 37.711502, 14.078692>,  <28.976797, 38.079067, 14.191595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087013, 37.711502, 14.078692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000316, -0.293709, 0.955895,
		-0.961290, -0.263298, -0.081219,
		0.275540, -0.918917, -0.282257,
		29.169676, 37.435825, 13.994016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458633, 37.534008, 14.402941>,  <28.976797, 38.079067, 14.191595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458633, 37.534008, 14.402941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779261, 37.300236, 14.352456>,  <28.971638, 37.159973, 14.322165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779261, 37.300236, 14.352456>,  <28.458633, 37.534008, 14.402941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779261, 37.300236, 14.352456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142821, -0.392136, 0.908753,
		-0.580597, -0.710400, -0.397792,
		0.801567, -0.584432, -0.126213,
		29.019732, 37.124905, 14.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305700, 36.800068, 14.566427>,  <28.458633, 37.534008, 14.402941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305700, 36.800068, 14.566427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699579, 36.827904, 14.630341>,  <28.935905, 36.844604, 14.668689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699579, 36.827904, 14.630341>,  <28.305700, 36.800068, 14.566427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699579, 36.827904, 14.630341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107543, -0.478825, 0.871299,
		0.137143, -0.875148, -0.464013,
		0.984696, 0.069591, 0.159783,
		28.994987, 36.848782, 14.678275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526976, 36.161499, 14.810852>,  <28.305700, 36.800068, 14.566427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526976, 36.161499, 14.810852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842449, 36.389217, 14.903702>,  <29.031734, 36.525848, 14.959412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842449, 36.389217, 14.903702>,  <28.526976, 36.161499, 14.810852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842449, 36.389217, 14.903702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143464, -0.537556, 0.830934,
		0.597825, -0.622044, -0.505635,
		0.788685, 0.569293, 0.232124,
		29.079054, 36.560005, 14.973339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965487, 35.707813, 14.978063>,  <28.526976, 36.161499, 14.810852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965487, 35.707813, 14.978063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113085, 36.043030, 15.138828>,  <29.201643, 36.244160, 15.235288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.113085, 36.043030, 15.138828>,  <28.965487, 35.707813, 14.978063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113085, 36.043030, 15.138828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130573, -0.474882, 0.870309,
		0.920214, -0.268660, -0.284654,
		0.368994, 0.838039, 0.401913,
		29.223783, 36.294441, 15.259402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501600, 35.438435, 15.415341>,  <28.965487, 35.707813, 14.978063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501600, 35.438435, 15.415341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438782, 35.819839, 15.518222>,  <29.401091, 36.048683, 15.579950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438782, 35.819839, 15.518222>,  <29.501600, 35.438435, 15.415341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438782, 35.819839, 15.518222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017166, -0.263030, 0.964635,
		0.987442, 0.147075, 0.057676,
		-0.157044, 0.953512, 0.257202,
		29.391668, 36.105892, 15.595383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074711, 35.567493, 15.930101>,  <29.501600, 35.438435, 15.415341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074711, 35.567493, 15.930101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750980, 35.798489, 15.972986>,  <29.556742, 35.937088, 15.998717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750980, 35.798489, 15.972986>,  <30.074711, 35.567493, 15.930101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750980, 35.798489, 15.972986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026302, -0.217982, 0.975598,
		0.586770, 0.786758, 0.191608,
		-0.809327, 0.577491, 0.107212,
		29.508183, 35.971737, 16.005150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218189, 36.059349, 16.486622>,  <30.074711, 35.567493, 15.930101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218189, 36.059349, 16.486622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819220, 36.070904, 16.460354>,  <29.579838, 36.077839, 16.444593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.819220, 36.070904, 16.460354>,  <30.218189, 36.059349, 16.486622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819220, 36.070904, 16.460354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062938, 0.086997, 0.994218,
		0.034435, 0.995790, -0.084955,
		-0.997423, 0.028889, -0.065669,
		29.519993, 36.079571, 16.440653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033794, 36.507687, 17.008034>,  <30.218189, 36.059349, 16.486622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033794, 36.507687, 17.008034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685030, 36.321270, 16.947931>,  <29.475771, 36.209419, 16.911869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.685030, 36.321270, 16.947931>,  <30.033794, 36.507687, 17.008034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685030, 36.321270, 16.947931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121244, -0.091828, 0.988366,
		-0.474420, 0.879983, 0.023560,
		-0.871909, -0.466044, -0.150258,
		29.423458, 36.181458, 16.902853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441265, 36.963921, 17.337801>,  <30.033794, 36.507687, 17.008034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441265, 36.963921, 17.337801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324396, 36.582355, 17.310431>,  <29.254274, 36.353416, 17.294008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324396, 36.582355, 17.310431>,  <29.441265, 36.963921, 17.337801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324396, 36.582355, 17.310431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205515, -0.007250, 0.978627,
		-0.934023, 0.299989, -0.193925,
		-0.292172, -0.953915, -0.068424,
		29.236744, 36.296181, 17.289904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865875, 37.002171, 17.751303>,  <29.441265, 36.963921, 17.337801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865875, 37.002171, 17.751303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.922602, 36.606541, 17.735229>,  <28.956636, 36.369164, 17.725586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.922602, 36.606541, 17.735229>,  <28.865875, 37.002171, 17.751303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922602, 36.606541, 17.735229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231751, -0.072640, 0.970059,
		-0.962383, -0.128256, -0.239521,
		0.141815, -0.989077, -0.040185,
		28.965147, 36.309818, 17.723175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294838, 36.704617, 18.123993>,  <28.865875, 37.002171, 17.751303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294838, 36.704617, 18.123993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589169, 36.433750, 18.122677>,  <28.765766, 36.271233, 18.121887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589169, 36.433750, 18.122677>,  <28.294838, 36.704617, 18.123993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589169, 36.433750, 18.122677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011209, -0.017035, 0.999792,
		-0.677077, -0.735636, -0.020125,
		0.735826, -0.677162, -0.003288,
		28.809917, 36.230602, 18.121691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729822, 36.357704, 18.063765>,  <28.294838, 36.704617, 18.123993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729822, 36.357704, 18.063765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335110, 36.393780, 18.117622>,  <27.098282, 36.415424, 18.149937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.335110, 36.393780, 18.117622>,  <27.729822, 36.357704, 18.063765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335110, 36.393780, 18.117622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112069, 0.220384, -0.968954,
		-0.117057, -0.971235, -0.207364,
		-0.986782, 0.090184, 0.134643,
		27.039076, 36.420834, 18.158014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480051, 35.993073, 17.539162>,  <27.729822, 36.357704, 18.063765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480051, 35.993073, 17.539162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175846, 36.225605, 17.654865>,  <26.993322, 36.365124, 17.724287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175846, 36.225605, 17.654865>,  <27.480051, 35.993073, 17.539162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175846, 36.225605, 17.654865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293426, 0.089710, -0.951763,
		-0.579242, -0.808704, 0.102353,
		-0.760513, 0.581334, 0.289258,
		26.947693, 36.400005, 17.741642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979382, 35.848450, 17.141903>,  <27.480051, 35.993073, 17.539162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979382, 35.848450, 17.141903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881649, 36.221542, 17.247969>,  <26.823009, 36.445396, 17.311607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881649, 36.221542, 17.247969>,  <26.979382, 35.848450, 17.141903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881649, 36.221542, 17.247969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239646, 0.206886, -0.948561,
		-0.939613, -0.295308, 0.172977,
		-0.244331, 0.932733, 0.265162,
		26.808350, 36.501362, 17.327517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298517, 36.000805, 16.956675>,  <26.979382, 35.848450, 17.141903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298517, 36.000805, 16.956675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484301, 36.354927, 16.965658>,  <26.595770, 36.567402, 16.971048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484301, 36.354927, 16.965658>,  <26.298517, 36.000805, 16.956675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484301, 36.354927, 16.965658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288959, 0.175473, -0.941123,
		-0.837126, 0.430622, 0.337319,
		0.464459, 0.885310, 0.022461,
		26.623638, 36.620522, 16.972397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821001, 36.380028, 16.738686>,  <26.298517, 36.000805, 16.956675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821001, 36.380028, 16.738686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154648, 36.599049, 16.712029>,  <26.354836, 36.730461, 16.696035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.154648, 36.599049, 16.712029>,  <25.821001, 36.380028, 16.738686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154648, 36.599049, 16.712029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240168, 0.251760, -0.937516,
		-0.496559, 0.798002, 0.341501,
		0.834116, 0.547549, -0.066640,
		26.404882, 36.763313, 16.692036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603632, 37.053089, 16.450500>,  <25.821001, 36.380028, 16.738686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603632, 37.053089, 16.450500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998009, 37.062428, 16.384317>,  <26.234634, 37.068031, 16.344608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998009, 37.062428, 16.384317>,  <25.603632, 37.053089, 16.450500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998009, 37.062428, 16.384317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163643, 0.335149, -0.927845,
		0.033794, 0.941876, 0.334257,
		0.985941, 0.023343, -0.165458,
		26.293791, 37.069431, 16.334681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823460, 37.788586, 16.167048>,  <25.603632, 37.053089, 16.450500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823460, 37.788586, 16.167048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085278, 37.512684, 16.043230>,  <26.242369, 37.347145, 15.968940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085278, 37.512684, 16.043230>,  <25.823460, 37.788586, 16.167048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085278, 37.512684, 16.043230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002771, 0.411619, -0.911352,
		0.756020, 0.595661, 0.271334,
		0.654543, -0.689752, -0.309542,
		26.281641, 37.305759, 15.950368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168112, 38.011330, 15.573709>,  <25.823460, 37.788586, 16.167048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168112, 38.011330, 15.573709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.273754, 37.626305, 15.549320>,  <26.337139, 37.395290, 15.534686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.273754, 37.626305, 15.549320>,  <26.168112, 38.011330, 15.573709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273754, 37.626305, 15.549320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087000, 0.086737, -0.992425,
		0.960562, 0.256799, 0.106651,
		0.264104, -0.962565, -0.060974,
		26.352985, 37.337536, 15.531028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662472, 38.010323, 15.039711>,  <26.168112, 38.011330, 15.573709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662472, 38.010323, 15.039711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548721, 37.627556, 15.063208>,  <26.480471, 37.397896, 15.077306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548721, 37.627556, 15.063208>,  <26.662472, 38.010323, 15.039711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548721, 37.627556, 15.063208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095998, -0.089385, -0.991360,
		0.953895, -0.276278, 0.117281,
		-0.284374, -0.956912, 0.058742,
		26.463409, 37.340481, 15.080831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092581, 37.616982, 14.595867>,  <26.662472, 38.010323, 15.039711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092581, 37.616982, 14.595867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780085, 37.375107, 14.657858>,  <26.592587, 37.229980, 14.695052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780085, 37.375107, 14.657858>,  <27.092581, 37.616982, 14.595867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780085, 37.375107, 14.657858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031922, -0.286646, -0.957504,
		0.623413, -0.743095, 0.243243,
		-0.781241, -0.604685, 0.154978,
		26.545712, 37.193703, 14.704351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288750, 36.979515, 14.322456>,  <27.092581, 37.616982, 14.595867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288750, 36.979515, 14.322456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.891094, 36.969269, 14.364470>,  <26.652500, 36.963120, 14.389679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.891094, 36.969269, 14.364470>,  <27.288750, 36.979515, 14.322456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891094, 36.969269, 14.364470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078122, -0.501393, -0.861685,
		0.074737, -0.864840, 0.496453,
		-0.994138, -0.025616, 0.105035,
		26.592854, 36.961582, 14.395981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176018, 36.340122, 14.172212>,  <27.288750, 36.979515, 14.322456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176018, 36.340122, 14.172212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829094, 36.533066, 14.123060>,  <26.620939, 36.648834, 14.093569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829094, 36.533066, 14.123060>,  <27.176018, 36.340122, 14.172212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829094, 36.533066, 14.123060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044948, -0.321746, -0.945758,
		-0.495735, -0.814742, 0.300735,
		-0.867310, 0.482363, -0.122879,
		26.568901, 36.677776, 14.086196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648737, 35.858269, 13.951512>,  <27.176018, 36.340122, 14.172212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648737, 35.858269, 13.951512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510696, 36.213039, 13.828696>,  <26.427872, 36.425900, 13.755007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.510696, 36.213039, 13.828696>,  <26.648737, 35.858269, 13.951512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510696, 36.213039, 13.828696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068700, -0.350130, -0.934179,
		-0.936048, -0.301292, 0.181762,
		-0.345101, 0.886923, -0.307039,
		26.407166, 36.479115, 13.736585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415386, 35.012428, 13.835414>,  <26.648737, 35.858269, 13.951512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415386, 35.012428, 13.835414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025578, 35.004440, 13.746053>,  <25.791693, 34.999649, 13.692436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025578, 35.004440, 13.746053>,  <26.415386, 35.012428, 13.835414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025578, 35.004440, 13.746053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191612, -0.443616, 0.875494,
		-0.116586, 0.895994, 0.428488,
		-0.974522, -0.019967, -0.223403,
		25.733221, 34.998451, 13.679032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000504, 35.274044, 14.433495>,  <26.415386, 35.012428, 13.835414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000504, 35.274044, 14.433495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776449, 35.042259, 14.196693>,  <25.642017, 34.903187, 14.054613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.776449, 35.042259, 14.196693>,  <26.000504, 35.274044, 14.433495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776449, 35.042259, 14.196693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241919, -0.569060, 0.785904,
		-0.792289, 0.583430, 0.178568,
		-0.560137, -0.579465, -0.592003,
		25.608408, 34.868420, 14.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245125, 35.320580, 14.617086>,  <26.000504, 35.274044, 14.433495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245125, 35.320580, 14.617086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.325499, 34.964962, 14.452537>,  <25.373722, 34.751591, 14.353806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.325499, 34.964962, 14.452537>,  <25.245125, 35.320580, 14.617086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325499, 34.964962, 14.452537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192718, -0.447608, 0.873216,
		-0.960461, -0.096178, -0.261274,
		0.200932, -0.889043, -0.411375,
		25.385778, 34.698250, 14.329124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902159, 34.943531, 15.044880>,  <25.245125, 35.320580, 14.617086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902159, 34.943531, 15.044880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.056753, 34.646469, 14.826123>,  <25.149509, 34.468231, 14.694869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.056753, 34.646469, 14.826123>,  <24.902159, 34.943531, 15.044880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.056753, 34.646469, 14.826123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146997, -0.634990, 0.758406,
		-0.910505, -0.212723, -0.354584,
		0.386488, -0.742655, -0.546892,
		25.172699, 34.423672, 14.662056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396656, 34.284885, 14.857199>,  <24.902159, 34.943531, 15.044880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396656, 34.284885, 14.857199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.770344, 34.143005, 14.842099>,  <24.994556, 34.057877, 14.833039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.770344, 34.143005, 14.842099>,  <24.396656, 34.284885, 14.857199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770344, 34.143005, 14.842099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163922, -0.520892, 0.837736,
		-0.316809, -0.776440, -0.544770,
		0.934217, -0.354701, -0.037748,
		25.050610, 34.036594, 14.830775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370781, 33.523014, 15.003964>,  <24.396656, 34.284885, 14.857199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370781, 33.523014, 15.003964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.743166, 33.633747, 15.099189>,  <24.966597, 33.700188, 15.156323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.743166, 33.633747, 15.099189>,  <24.370781, 33.523014, 15.003964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743166, 33.633747, 15.099189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117624, -0.389859, 0.913332,
		0.345651, -0.878279, -0.330381,
		0.930962, 0.276833, 0.238062,
		25.022455, 33.716797, 15.170608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629333, 32.942669, 15.310057>,  <24.370781, 33.523014, 15.003964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629333, 32.942669, 15.310057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.907698, 33.220032, 15.384784>,  <25.074717, 33.386448, 15.429620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.907698, 33.220032, 15.384784>,  <24.629333, 32.942669, 15.310057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907698, 33.220032, 15.384784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136830, -0.383410, 0.913386,
		0.704975, -0.610071, -0.361697,
		0.695908, 0.693405, 0.186818,
		25.116470, 33.428055, 15.440829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130470, 32.546227, 15.699764>,  <24.629333, 32.942669, 15.310057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130470, 32.546227, 15.699764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.209925, 32.926991, 15.793071>,  <25.257597, 33.155449, 15.849054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.209925, 32.926991, 15.793071>,  <25.130470, 32.546227, 15.699764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209925, 32.926991, 15.793071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126022, -0.260841, 0.957121,
		0.971937, -0.160721, -0.171774,
		0.198635, 0.951909, 0.233267,
		25.269516, 33.212563, 15.863050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616375, 32.715042, 15.247664>,  <25.130470, 32.546227, 15.699764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616375, 32.715042, 15.247664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.914543, 32.449772, 15.220689>,  <26.093443, 32.290611, 15.204504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.914543, 32.449772, 15.220689>,  <25.616375, 32.715042, 15.247664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914543, 32.449772, 15.220689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081766, 0.009439, -0.996607,
		0.661563, 0.748404, -0.047190,
		0.745419, -0.663176, -0.067438,
		26.138168, 32.250820, 15.200458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059578, 33.013199, 14.714408>,  <25.616375, 32.715042, 15.247664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059578, 33.013199, 14.714408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161730, 32.627274, 14.739428>,  <26.223021, 32.395718, 14.754439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161730, 32.627274, 14.739428>,  <26.059578, 33.013199, 14.714408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161730, 32.627274, 14.739428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016829, -0.060250, -0.998042,
		0.966694, 0.255933, 0.000850,
		0.255380, -0.964815, 0.062550,
		26.238344, 32.337830, 14.758192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641424, 32.919029, 14.302831>,  <26.059578, 33.013199, 14.714408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641424, 32.919029, 14.302831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459255, 32.568897, 14.367811>,  <26.349953, 32.358818, 14.406799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459255, 32.568897, 14.367811>,  <26.641424, 32.919029, 14.302831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459255, 32.568897, 14.367811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002001, -0.181467, -0.983395,
		0.890272, -0.448187, 0.080893,
		-0.455424, -0.875328, 0.162452,
		26.322628, 32.306297, 14.416547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939573, 32.557201, 13.763944>,  <26.641424, 32.919029, 14.302831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939573, 32.557201, 13.763944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629238, 32.337452, 13.888050>,  <26.443037, 32.205601, 13.962514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629238, 32.337452, 13.888050>,  <26.939573, 32.557201, 13.763944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629238, 32.337452, 13.888050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172091, -0.288851, -0.941780,
		0.607011, -0.784062, 0.129559,
		-0.775837, -0.549375, 0.310266,
		26.396486, 32.172638, 13.981130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095417, 31.773491, 13.679638>,  <26.939573, 32.557201, 13.763944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095417, 31.773491, 13.679638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702810, 31.846823, 13.701615>,  <26.467247, 31.890821, 13.714802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702810, 31.846823, 13.701615>,  <27.095417, 31.773491, 13.679638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702810, 31.846823, 13.701615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096460, -0.225909, -0.969361,
		-0.165303, -0.956742, 0.239417,
		-0.981514, 0.183332, 0.054944,
		26.408356, 31.901821, 13.718099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694677, 31.150879, 13.278833>,  <27.095417, 31.773491, 13.679638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694677, 31.150879, 13.278833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411135, 31.432238, 13.299822>,  <26.241009, 31.601053, 13.312415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411135, 31.432238, 13.299822>,  <26.694677, 31.150879, 13.278833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411135, 31.432238, 13.299822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266796, -0.198514, -0.943086,
		-0.652949, -0.682512, 0.328382,
		-0.708856, 0.703398, 0.052472,
		26.198477, 31.643257, 13.315563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127266, 30.796051, 13.040190>,  <26.694677, 31.150879, 13.278833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127266, 30.796051, 13.040190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058504, 31.186710, 12.988637>,  <26.017248, 31.421106, 12.957705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058504, 31.186710, 12.988637>,  <26.127266, 30.796051, 13.040190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058504, 31.186710, 12.988637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428215, -0.191905, -0.883065,
		-0.887176, -0.096612, 0.451204,
		-0.171903, 0.976646, -0.128883,
		26.006933, 31.479704, 12.949972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368408, 30.887335, 12.992547>,  <26.127266, 30.796051, 13.040190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368408, 30.887335, 12.992547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521992, 31.215033, 12.822177>,  <25.614141, 31.411652, 12.719954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.521992, 31.215033, 12.822177>,  <25.368408, 30.887335, 12.992547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521992, 31.215033, 12.822177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401288, -0.267388, -0.876055,
		-0.831592, 0.507286, 0.226089,
		0.383957, 0.819247, -0.425925,
		25.637178, 31.460806, 12.694400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789560, 31.399881, 12.776637>,  <25.368408, 30.887335, 12.992547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789560, 31.399881, 12.776637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109064, 31.420324, 12.536846>,  <25.300766, 31.432590, 12.392971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.109064, 31.420324, 12.536846>,  <24.789560, 31.399881, 12.776637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109064, 31.420324, 12.536846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581438, -0.190541, -0.790964,
		-0.154647, 0.980348, -0.122482,
		0.798758, 0.051105, -0.599478,
		25.348692, 31.435656, 12.357003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.487438, 27.563663, 26.701881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793846, 27.812386, 26.767086>,  <29.977690, 27.961618, 26.806210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793846, 27.812386, 26.767086>,  <29.487438, 27.563663, 26.701881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793846, 27.812386, 26.767086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367967, 0.632087, -0.681957,
		-0.527083, 0.462409, 0.712995,
		0.766018, 0.621807, 0.163011,
		30.023651, 27.998928, 26.815989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145227, 28.235300, 26.955263>,  <29.487438, 27.563663, 26.701881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145227, 28.235300, 26.955263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.496815, 28.262302, 26.766432>,  <29.707767, 28.278503, 26.653133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.496815, 28.262302, 26.766432>,  <29.145227, 28.235300, 26.955263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496815, 28.262302, 26.766432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378840, 0.700098, -0.605262,
		0.289642, 0.710848, 0.640939,
		0.878969, 0.067504, -0.472076,
		29.760506, 28.282553, 26.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272161, 28.835239, 26.801353>,  <29.145227, 28.235300, 26.955263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272161, 28.835239, 26.801353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543945, 28.713259, 26.534418>,  <29.707016, 28.640070, 26.374256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543945, 28.713259, 26.534418>,  <29.272161, 28.835239, 26.801353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543945, 28.713259, 26.534418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380378, 0.631357, -0.675796,
		0.627415, 0.713016, 0.312983,
		0.679457, -0.304953, -0.667339,
		29.747782, 28.621773, 26.334217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583725, 29.442434, 26.543613>,  <29.272161, 28.835239, 26.801353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583725, 29.442434, 26.543613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642946, 29.167353, 26.259319>,  <29.678478, 29.002304, 26.088743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.642946, 29.167353, 26.259319>,  <29.583725, 29.442434, 26.543613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642946, 29.167353, 26.259319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201830, 0.682521, -0.702446,
		0.968166, 0.247446, -0.037750,
		0.148052, -0.687703, -0.710735,
		29.687363, 28.961042, 26.046099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744743, 29.862261, 26.043699>,  <29.583725, 29.442434, 26.543613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744743, 29.862261, 26.043699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704519, 29.528519, 25.826906>,  <29.680386, 29.328274, 25.696831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704519, 29.528519, 25.826906>,  <29.744743, 29.862261, 26.043699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704519, 29.528519, 25.826906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290121, 0.545658, -0.786186,
		0.951692, 0.078182, -0.296934,
		-0.100558, -0.834353, -0.541980,
		29.674351, 29.278214, 25.664312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136320, 29.891224, 25.421734>,  <29.744743, 29.862261, 26.043699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136320, 29.891224, 25.421734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853565, 29.619360, 25.343380>,  <29.683912, 29.456242, 25.296368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.853565, 29.619360, 25.343380>,  <30.136320, 29.891224, 25.421734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853565, 29.619360, 25.343380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345485, 0.573421, -0.742851,
		0.617217, -0.457432, -0.640156,
		-0.706883, -0.679664, -0.195889,
		29.641499, 29.415461, 25.284615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158709, 29.453964, 24.718815>,  <30.136320, 29.891224, 25.421734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158709, 29.453964, 24.718815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776537, 29.441629, 24.836256>,  <29.547234, 29.434229, 24.906721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.776537, 29.441629, 24.836256>,  <30.158709, 29.453964, 24.718815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776537, 29.441629, 24.836256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262379, 0.544553, -0.796630,
		-0.135316, -0.838159, -0.528374,
		-0.955430, -0.030838, 0.293602,
		29.489908, 29.432379, 24.924337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819563, 29.310999, 24.117405>,  <30.158709, 29.453964, 24.718815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819563, 29.310999, 24.117405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513292, 29.439936, 24.340055>,  <29.329529, 29.517298, 24.473646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513292, 29.439936, 24.340055>,  <29.819563, 29.310999, 24.117405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513292, 29.439936, 24.340055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390588, 0.454551, -0.800516,
		-0.511055, -0.830348, -0.222136,
		-0.765679, 0.322344, 0.556624,
		29.283588, 29.536638, 24.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229258, 29.002251, 23.747139>,  <29.819563, 29.310999, 24.117405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229258, 29.002251, 23.747139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117138, 29.307110, 23.980570>,  <29.049866, 29.490026, 24.120628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.117138, 29.307110, 23.980570>,  <29.229258, 29.002251, 23.747139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117138, 29.307110, 23.980570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510255, 0.396644, -0.763095,
		-0.813064, -0.511667, 0.277713,
		-0.280297, 0.762149, 0.583578,
		29.033049, 29.535755, 24.155643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554361, 29.003645, 23.595882>,  <29.229258, 29.002251, 23.747139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554361, 29.003645, 23.595882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675978, 29.359919, 23.731079>,  <28.748947, 29.573683, 23.812197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675978, 29.359919, 23.731079>,  <28.554361, 29.003645, 23.595882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675978, 29.359919, 23.731079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460083, 0.447954, -0.766590,
		-0.834196, 0.077568, 0.545985,
		0.304039, 0.890685, 0.337993,
		28.767189, 29.627125, 23.832478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037016, 29.392481, 23.321093>,  <28.554361, 29.003645, 23.595882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037016, 29.392481, 23.321093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.307030, 29.659380, 23.447018>,  <28.469038, 29.819519, 23.522572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.307030, 29.659380, 23.447018>,  <28.037016, 29.392481, 23.321093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307030, 29.659380, 23.447018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133137, 0.529859, -0.837570,
		-0.725674, 0.523476, 0.446509,
		0.675035, 0.667249, 0.314811,
		28.509541, 29.859554, 23.541462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698736, 29.987278, 23.469835>,  <28.037016, 29.392481, 23.321093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698736, 29.987278, 23.469835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.075008, 30.074162, 23.365578>,  <28.300772, 30.126291, 23.303022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.075008, 30.074162, 23.365578>,  <27.698736, 29.987278, 23.469835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075008, 30.074162, 23.365578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332016, 0.431107, -0.838995,
		-0.069872, 0.875766, 0.477652,
		0.940682, 0.217211, -0.260646,
		28.357214, 30.139324, 23.287384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608774, 30.564093, 23.954727>,  <27.698736, 29.987278, 23.469835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608774, 30.564093, 23.954727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.252129, 30.745186, 23.957811>,  <27.038141, 30.853842, 23.959661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.252129, 30.745186, 23.957811>,  <27.608774, 30.564093, 23.954727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252129, 30.745186, 23.957811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073544, 0.127989, 0.989045,
		0.446786, 0.882413, -0.147412,
		-0.891613, 0.452733, 0.007712,
		26.984644, 30.881006, 23.960125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634026, 31.183823, 24.328690>,  <27.608774, 30.564093, 23.954727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634026, 31.183823, 24.328690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.236700, 31.138266, 24.336197>,  <26.998304, 31.110931, 24.340702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.236700, 31.138266, 24.336197>,  <27.634026, 31.183823, 24.328690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236700, 31.138266, 24.336197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004408, 0.125054, 0.992140,
		-0.115345, 0.985591, -0.123716,
		-0.993316, -0.113893, 0.018769,
		26.938705, 31.104097, 24.341827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369360, 31.740879, 24.741514>,  <27.634026, 31.183823, 24.328690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369360, 31.740879, 24.741514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.109179, 31.437862, 24.763557>,  <26.953070, 31.256052, 24.776783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.109179, 31.437862, 24.763557>,  <27.369360, 31.740879, 24.741514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109179, 31.437862, 24.763557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024206, 0.051841, 0.998362,
		-0.759160, 0.650723, -0.015383,
		-0.650454, -0.757544, 0.055107,
		26.914042, 31.210600, 24.780090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878757, 32.015671, 25.179253>,  <27.369360, 31.740879, 24.741514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878757, 32.015671, 25.179253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.848814, 31.616802, 25.181990>,  <26.830849, 31.377481, 25.183632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.848814, 31.616802, 25.181990>,  <26.878757, 32.015671, 25.179253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848814, 31.616802, 25.181990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094599, -0.000269, 0.995516,
		-0.992697, 0.075171, 0.094351,
		-0.074859, -0.997171, 0.006844,
		26.826357, 31.317652, 25.184044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410065, 31.932240, 25.658796>,  <26.878757, 32.015671, 25.179253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410065, 31.932240, 25.658796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.594725, 31.578846, 25.626961>,  <26.705521, 31.366810, 25.607859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.594725, 31.578846, 25.626961>,  <26.410065, 31.932240, 25.658796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594725, 31.578846, 25.626961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065096, -0.055741, 0.996321,
		-0.884669, -0.465135, 0.031778,
		0.461652, -0.883483, -0.079591,
		26.733221, 31.313801, 25.603083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044947, 31.438204, 26.143173>,  <26.410065, 31.932240, 25.658796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044947, 31.438204, 26.143173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413004, 31.294397, 26.081100>,  <26.633839, 31.208113, 26.043856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.413004, 31.294397, 26.081100>,  <26.044947, 31.438204, 26.143173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413004, 31.294397, 26.081100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163402, -0.007623, 0.986530,
		-0.355856, -0.933108, 0.051731,
		0.920144, -0.359516, -0.155184,
		26.689047, 31.186543, 26.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016140, 30.805246, 26.556490>,  <26.044947, 31.438204, 26.143173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016140, 30.805246, 26.556490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.399338, 30.897520, 26.488333>,  <26.629255, 30.952885, 26.447439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.399338, 30.897520, 26.488333>,  <26.016140, 30.805246, 26.556490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399338, 30.897520, 26.488333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215952, -0.189278, 0.957882,
		0.188718, -0.954441, -0.231144,
		0.957993, 0.230685, -0.170393,
		26.686735, 30.966726, 26.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378801, 30.436296, 27.001673>,  <26.016140, 30.805246, 26.556490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378801, 30.436296, 27.001673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.678631, 30.679628, 26.897310>,  <26.858528, 30.825628, 26.834694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.678631, 30.679628, 26.897310>,  <26.378801, 30.436296, 27.001673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678631, 30.679628, 26.897310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381526, -0.074971, 0.921313,
		0.540903, -0.790134, -0.288291,
		0.749574, 0.608332, -0.260905,
		26.903503, 30.862127, 26.819038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042570, 30.109085, 27.164457>,  <26.378801, 30.436296, 27.001673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042570, 30.109085, 27.164457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.119942, 30.501207, 27.148520>,  <27.166365, 30.736481, 27.138958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.119942, 30.501207, 27.148520>,  <27.042570, 30.109085, 27.164457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119942, 30.501207, 27.148520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454343, -0.053507, 0.889218,
		0.869573, -0.190103, -0.455745,
		0.193428, 0.980305, -0.039843,
		27.177971, 30.795300, 27.136566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668829, 30.101049, 27.465981>,  <27.042570, 30.109085, 27.164457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668829, 30.101049, 27.465981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.527031, 30.474590, 27.484970>,  <27.441952, 30.698715, 27.496363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.527031, 30.474590, 27.484970>,  <27.668829, 30.101049, 27.465981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527031, 30.474590, 27.484970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470435, 0.134243, 0.872164,
		0.808099, 0.331510, -0.486906,
		-0.354494, 0.933852, 0.047472,
		27.420683, 30.754745, 27.499212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180132, 30.387365, 27.799618>,  <27.668829, 30.101049, 27.465981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180132, 30.387365, 27.799618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.892597, 30.665203, 27.811005>,  <27.720076, 30.831905, 27.817837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.892597, 30.665203, 27.811005>,  <28.180132, 30.387365, 27.799618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892597, 30.665203, 27.811005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408323, 0.388723, 0.825934,
		0.562623, 0.605336, -0.563048,
		-0.718838, 0.694595, 0.028468,
		27.676947, 30.873581, 27.819546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438402, 31.022715, 28.074800>,  <28.180132, 30.387365, 27.799618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438402, 31.022715, 28.074800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.049572, 31.110624, 28.107706>,  <27.816275, 31.163370, 28.127449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.049572, 31.110624, 28.107706>,  <28.438402, 31.022715, 28.074800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049572, 31.110624, 28.107706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217712, 0.713773, 0.665679,
		0.087581, 0.665000, -0.741690,
		-0.972075, 0.219776, 0.082266,
		27.757950, 31.176558, 28.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429541, 31.709883, 28.094141>,  <28.438402, 31.022715, 28.074800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429541, 31.709883, 28.094141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.103230, 31.570578, 28.278845>,  <27.907444, 31.486994, 28.389668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.103230, 31.570578, 28.278845>,  <28.429541, 31.709883, 28.094141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103230, 31.570578, 28.278845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267612, 0.480486, 0.835175,
		-0.512730, 0.804888, -0.298769,
		-0.815777, -0.348264, 0.461757,
		27.858496, 31.466099, 28.417372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035280, 32.348026, 28.480145>,  <28.429541, 31.709883, 28.094141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035280, 32.348026, 28.480145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.928373, 32.012318, 28.669542>,  <27.864229, 31.810894, 28.783182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.928373, 32.012318, 28.669542>,  <28.035280, 32.348026, 28.480145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928373, 32.012318, 28.669542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376488, 0.361369, 0.853035,
		-0.887031, 0.406256, 0.219391,
		-0.267269, -0.839267, 0.473496,
		27.848192, 31.760538, 28.811590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292425, 32.706711, 28.539431>,  <28.035280, 32.348026, 28.480145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292425, 32.706711, 28.539431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.136747, 33.070755, 28.596325>,  <27.043341, 33.289181, 28.630463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.136747, 33.070755, 28.596325>,  <27.292425, 32.706711, 28.539431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136747, 33.070755, 28.596325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297065, 0.022154, -0.954600,
		-0.871939, -0.413780, 0.261739,
		-0.389196, 0.910107, 0.142237,
		27.019989, 33.343788, 28.638996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550356, 32.773201, 28.306589>,  <27.292425, 32.706711, 28.539431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550356, 32.773201, 28.306589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.718857, 33.135868, 28.297562>,  <26.819958, 33.353466, 28.292145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.718857, 33.135868, 28.297562>,  <26.550356, 32.773201, 28.306589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718857, 33.135868, 28.297562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351657, 0.140348, -0.925548,
		-0.835994, 0.397824, 0.377956,
		0.421250, 0.906663, -0.022568,
		26.845232, 33.407867, 28.290791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066677, 33.291485, 28.078201>,  <26.550356, 32.773201, 28.306589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066677, 33.291485, 28.078201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.434706, 33.430859, 28.006575>,  <26.655523, 33.514481, 27.963598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.434706, 33.430859, 28.006575>,  <26.066677, 33.291485, 28.078201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434706, 33.430859, 28.006575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323370, 0.417461, -0.849211,
		-0.221139, 0.839239, 0.496766,
		0.920071, 0.348432, -0.179068,
		26.710728, 33.535389, 27.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926104, 33.955654, 27.815672>,  <26.066677, 33.291485, 28.078201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926104, 33.955654, 27.815672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.298990, 33.859230, 27.707701>,  <26.522722, 33.801376, 27.642918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.298990, 33.859230, 27.707701>,  <25.926104, 33.955654, 27.815672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298990, 33.859230, 27.707701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218382, 0.220058, -0.950728,
		0.288580, 0.945233, 0.152499,
		0.932218, -0.241058, -0.269926,
		26.578655, 33.786911, 27.626722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127317, 34.425919, 27.244593>,  <25.926104, 33.955654, 27.815672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127317, 34.425919, 27.244593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.388783, 34.123791, 27.225763>,  <26.545662, 33.942513, 27.214466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.388783, 34.123791, 27.225763>,  <26.127317, 34.425919, 27.244593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388783, 34.123791, 27.225763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053054, 0.107785, -0.992758,
		0.754923, 0.646433, 0.110528,
		0.653664, -0.755319, -0.047073,
		26.584883, 33.897194, 27.211641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557913, 34.675167, 26.707134>,  <26.127317, 34.425919, 27.244593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557913, 34.675167, 26.707134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.625462, 34.281528, 26.729204>,  <26.665991, 34.045345, 26.742447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.625462, 34.281528, 26.729204>,  <26.557913, 34.675167, 26.707134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625462, 34.281528, 26.729204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073498, -0.068398, -0.994947,
		0.982894, 0.163962, -0.083880,
		0.168870, -0.984093, 0.055177,
		26.676123, 33.986301, 26.745758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189587, 34.479523, 26.315378>,  <26.557913, 34.675167, 26.707134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189587, 34.479523, 26.315378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.980570, 34.138481, 26.316761>,  <26.855160, 33.933857, 26.317591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.980570, 34.138481, 26.316761>,  <27.189587, 34.479523, 26.315378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980570, 34.138481, 26.316761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193366, -0.122458, -0.973454,
		0.830398, -0.508001, 0.228855,
		-0.522541, -0.852607, 0.003459,
		26.823807, 33.882698, 26.317799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571993, 33.971485, 25.814123>,  <27.189587, 34.479523, 26.315378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571993, 33.971485, 25.814123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.231522, 33.766544, 25.859718>,  <27.027239, 33.643581, 25.887075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.231522, 33.766544, 25.859718>,  <27.571993, 33.971485, 25.814123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231522, 33.766544, 25.859718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095868, -0.061762, -0.993476,
		0.516047, -0.856553, 0.003453,
		-0.851179, -0.512349, 0.113988,
		26.976168, 33.612839, 25.893915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617104, 33.409492, 25.286821>,  <27.571993, 33.971485, 25.814123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617104, 33.409492, 25.286821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.233553, 33.475559, 25.379152>,  <27.003424, 33.515198, 25.434551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.233553, 33.475559, 25.379152>,  <27.617104, 33.409492, 25.286821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233553, 33.475559, 25.379152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187565, 0.241645, -0.952065,
		-0.213025, -0.956205, -0.200728,
		-0.958874, 0.165164, 0.230827,
		26.945890, 33.525108, 25.448400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094688, 33.018837, 24.760015>,  <27.617104, 33.409492, 25.286821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094688, 33.018837, 24.760015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.910196, 33.336483, 24.918331>,  <26.799501, 33.527069, 25.013321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.910196, 33.336483, 24.918331>,  <27.094688, 33.018837, 24.760015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910196, 33.336483, 24.918331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176626, 0.354966, -0.918043,
		-0.869523, -0.493335, -0.023459,
		-0.461229, 0.794116, 0.395787,
		26.771828, 33.574718, 25.037067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556381, 32.996883, 24.390335>,  <27.094688, 33.018837, 24.760015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556381, 32.996883, 24.390335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.545656, 33.365047, 24.546347>,  <26.539221, 33.585945, 24.639954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.545656, 33.365047, 24.546347>,  <26.556381, 32.996883, 24.390335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545656, 33.365047, 24.546347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341482, 0.358264, -0.868929,
		-0.939506, -0.156486, 0.304698,
		-0.026813, 0.920412, 0.390028,
		26.537613, 33.641171, 24.663355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927843, 33.258953, 24.236217>,  <26.556381, 32.996883, 24.390335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927843, 33.258953, 24.236217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.174448, 33.571281, 24.276682>,  <26.322411, 33.758678, 24.300961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.174448, 33.571281, 24.276682>,  <25.927843, 33.258953, 24.236217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174448, 33.571281, 24.276682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218266, 0.292941, -0.930884,
		-0.756486, 0.551823, 0.351028,
		0.616514, 0.780818, 0.101162,
		26.359402, 33.805527, 24.307030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603298, 33.856850, 23.831787>,  <25.927843, 33.258953, 24.236217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603298, 33.856850, 23.831787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.971607, 33.994247, 23.905743>,  <26.192593, 34.076687, 23.950115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.971607, 33.994247, 23.905743>,  <25.603298, 33.856850, 23.831787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971607, 33.994247, 23.905743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074371, 0.619842, -0.781195,
		-0.382940, 0.705554, 0.596281,
		0.920775, 0.343496, 0.184889,
		26.247839, 34.097298, 23.961210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599672, 34.601284, 23.647165>,  <25.603298, 33.856850, 23.831787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599672, 34.601284, 23.647165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.979418, 34.476883, 23.629320>,  <26.207264, 34.402241, 23.618614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.979418, 34.476883, 23.629320>,  <25.599672, 34.601284, 23.647165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979418, 34.476883, 23.629320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145038, 0.559769, -0.815857,
		0.278705, 0.768073, 0.576530,
		0.949362, -0.311002, -0.044611,
		26.264227, 34.383583, 23.615936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967804, 35.190010, 23.603418>,  <25.599672, 34.601284, 23.647165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967804, 35.190010, 23.603418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.187759, 34.891880, 23.452627>,  <26.319733, 34.713001, 23.362152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.187759, 34.891880, 23.452627>,  <25.967804, 35.190010, 23.603418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187759, 34.891880, 23.452627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129571, 0.522002, -0.843045,
		0.825125, 0.414737, 0.383616,
		0.549891, -0.745323, -0.376980,
		26.352726, 34.668282, 23.339533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532209, 35.549065, 23.228130>,  <25.967804, 35.190010, 23.603418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532209, 35.549065, 23.228130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.547932, 35.177483, 23.080894>,  <26.557365, 34.954533, 22.992554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.547932, 35.177483, 23.080894>,  <26.532209, 35.549065, 23.228130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547932, 35.177483, 23.080894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293270, 0.362875, -0.884486,
		0.955221, -0.073183, 0.286699,
		0.039307, -0.928960, -0.368088,
		26.559723, 34.898796, 22.970469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287745, 35.381824, 23.088621>,  <26.532209, 35.549065, 23.228130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287745, 35.381824, 23.088621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.048172, 35.163010, 22.854687>,  <26.904428, 35.031719, 22.714327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.048172, 35.163010, 22.854687>,  <27.287745, 35.381824, 23.088621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048172, 35.163010, 22.854687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486799, 0.331172, -0.808302,
		0.635854, -0.768812, 0.067950,
		-0.598929, -0.547040, -0.584834,
		26.868494, 34.998898, 22.679237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651882, 35.131618, 22.511656>,  <27.287745, 35.381824, 23.088621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651882, 35.131618, 22.511656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.288321, 35.074223, 22.355038>,  <27.070185, 35.039783, 22.261066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.288321, 35.074223, 22.355038>,  <27.651882, 35.131618, 22.511656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288321, 35.074223, 22.355038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380088, 0.101197, -0.919398,
		0.171549, -0.984464, -0.037439,
		-0.908903, -0.143492, -0.391543,
		27.015650, 35.031174, 22.237576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717867, 34.699974, 21.953817>,  <27.651882, 35.131618, 22.511656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717867, 34.699974, 21.953817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.348576, 34.838814, 21.887884>,  <27.127001, 34.922119, 21.848324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.348576, 34.838814, 21.887884>,  <27.717867, 34.699974, 21.953817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348576, 34.838814, 21.887884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193619, 0.049699, -0.979817,
		-0.331902, -0.936510, -0.113088,
		-0.923230, 0.347099, -0.164831,
		27.071608, 34.942944, 21.838434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532295, 34.440872, 21.262424>,  <27.717867, 34.699974, 21.953817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532295, 34.440872, 21.262424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.276913, 34.739002, 21.339224>,  <27.123682, 34.917881, 21.385303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.276913, 34.739002, 21.339224>,  <27.532295, 34.440872, 21.262424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276913, 34.739002, 21.339224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036319, 0.220009, -0.974821,
		-0.768800, -0.629355, -0.113397,
		-0.638457, 0.745324, 0.192001,
		27.085375, 34.962601, 21.396824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068510, 34.502991, 20.684542>,  <27.532295, 34.440872, 21.262424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068510, 34.502991, 20.684542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024839, 34.862309, 20.854786>,  <26.998636, 35.077900, 20.956932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024839, 34.862309, 20.854786>,  <27.068510, 34.502991, 20.684542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024839, 34.862309, 20.854786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090044, 0.435346, -0.895749,
		-0.989935, -0.059472, -0.128417,
		-0.109178, 0.898297, 0.425609,
		26.992086, 35.131798, 20.982470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400215, 34.768631, 20.437538>,  <27.068510, 34.502991, 20.684542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400215, 34.768631, 20.437538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.610014, 35.081863, 20.571220>,  <26.735893, 35.269802, 20.651430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.610014, 35.081863, 20.571220>,  <26.400215, 34.768631, 20.437538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610014, 35.081863, 20.571220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170314, 0.481094, -0.859966,
		-0.834204, 0.394130, 0.385701,
		0.524497, 0.783077, 0.334205,
		26.767363, 35.316788, 20.671482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053942, 35.372959, 20.347692>,  <26.400215, 34.768631, 20.437538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053942, 35.372959, 20.347692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.428341, 35.511707, 20.371674>,  <26.652981, 35.594955, 20.386063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.428341, 35.511707, 20.371674>,  <26.053942, 35.372959, 20.347692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428341, 35.511707, 20.371674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166478, 0.586264, -0.792830,
		-0.310155, 0.732105, 0.606487,
		0.935996, 0.346867, 0.059953,
		26.709141, 35.615768, 20.389660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010521, 36.038933, 20.361181>,  <26.053942, 35.372959, 20.347692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010521, 36.038933, 20.361181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.390198, 35.975918, 20.252214>,  <26.618004, 35.938110, 20.186834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.390198, 35.975918, 20.252214>,  <26.010521, 36.038933, 20.361181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390198, 35.975918, 20.252214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147234, 0.542759, -0.826883,
		0.278124, 0.824981, 0.491989,
		0.949194, -0.157538, -0.272419,
		26.674955, 35.928658, 20.170488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253391, 36.621464, 20.078157>,  <26.010521, 36.038933, 20.361181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253391, 36.621464, 20.078157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.503881, 36.348808, 19.926786>,  <26.654175, 36.185215, 19.835964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.503881, 36.348808, 19.926786>,  <26.253391, 36.621464, 20.078157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503881, 36.348808, 19.926786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167491, 0.356432, -0.919186,
		0.761440, 0.639000, 0.109037,
		0.626224, -0.681642, -0.378428,
		26.691750, 36.144318, 19.813257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798338, 37.011410, 19.680210>,  <26.253391, 36.621464, 20.078157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798338, 37.011410, 19.680210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796345, 36.631359, 19.555481>,  <26.795149, 36.403328, 19.480644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796345, 36.631359, 19.555481>,  <26.798338, 37.011410, 19.680210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796345, 36.631359, 19.555481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125363, 0.309958, -0.942449,
		0.992098, 0.034393, -0.120656,
		-0.004984, -0.950128, -0.311821,
		26.794849, 36.346321, 19.461935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236647, 37.053291, 19.228142>,  <26.798338, 37.011410, 19.680210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236647, 37.053291, 19.228142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096249, 36.700520, 19.102287>,  <27.012011, 36.488857, 19.026775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.096249, 36.700520, 19.102287>,  <27.236647, 37.053291, 19.228142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096249, 36.700520, 19.102287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026015, 0.326699, -0.944771,
		0.936016, -0.339795, -0.091726,
		-0.350995, -0.881934, -0.314635,
		26.990950, 36.435940, 19.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629213, 36.781090, 18.691748>,  <27.236647, 37.053291, 19.228142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629213, 36.781090, 18.691748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.275427, 36.602428, 18.637756>,  <27.063154, 36.495232, 18.605362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.275427, 36.602428, 18.637756>,  <27.629213, 36.781090, 18.691748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275427, 36.602428, 18.637756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072034, 0.155106, -0.985268,
		0.461012, -0.881159, -0.105011,
		-0.884465, -0.446656, -0.134979,
		27.010088, 36.468433, 18.597263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180626, 36.173332, 18.701561>,  <27.629213, 36.781090, 18.691748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180626, 36.173332, 18.701561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568359, 36.108650, 18.627537>,  <28.800999, 36.069839, 18.583122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.568359, 36.108650, 18.627537>,  <28.180626, 36.173332, 18.701561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568359, 36.108650, 18.627537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178978, -0.051526, 0.982503,
		-0.168413, -0.985493, -0.021004,
		0.969332, -0.161707, -0.185059,
		28.859159, 36.060139, 18.572020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386648, 35.548210, 19.004837>,  <28.180626, 36.173332, 18.701561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386648, 35.548210, 19.004837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745913, 35.719482, 18.964891>,  <28.961472, 35.822247, 18.940924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745913, 35.719482, 18.964891>,  <28.386648, 35.548210, 19.004837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745913, 35.719482, 18.964891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211875, -0.222481, 0.951636,
		0.385253, -0.875879, -0.290544,
		0.898159, 0.428180, -0.099865,
		29.015360, 35.847935, 18.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030727, 35.056824, 19.104631>,  <28.386648, 35.548210, 19.004837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030727, 35.056824, 19.104631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133965, 35.421989, 19.231104>,  <29.195908, 35.641090, 19.306988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133965, 35.421989, 19.231104>,  <29.030727, 35.056824, 19.104631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133965, 35.421989, 19.231104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400027, -0.398879, 0.825151,
		0.879413, -0.086484, -0.468139,
		0.258093, 0.912916, 0.316183,
		29.211393, 35.695866, 19.325958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474808, 34.970821, 19.596401>,  <29.030727, 35.056824, 19.104631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474808, 34.970821, 19.596401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451742, 35.366982, 19.646645>,  <29.437902, 35.604679, 19.676790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.451742, 35.366982, 19.646645>,  <29.474808, 34.970821, 19.596401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451742, 35.366982, 19.646645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391845, -0.093266, 0.915292,
		0.918222, 0.102000, -0.382706,
		-0.057666, 0.990403, 0.125607,
		29.434443, 35.664101, 19.684326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131481, 35.111641, 19.825012>,  <29.474808, 34.970821, 19.596401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131481, 35.111641, 19.825012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903255, 35.416290, 19.947901>,  <29.766319, 35.599079, 20.021633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.903255, 35.416290, 19.947901>,  <30.131481, 35.111641, 19.825012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903255, 35.416290, 19.947901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375597, -0.090671, 0.922337,
		0.730330, 0.641644, -0.234330,
		-0.570565, 0.761624, 0.307220,
		29.732086, 35.644779, 20.040066>
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
